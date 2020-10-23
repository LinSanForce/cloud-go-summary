package nodepool

import (
	"encoding/json"
	"fmt"
	"github.com/rancher/norman/httperror"
	"github.com/rancher/norman/types"
	"github.com/rancher/rancher/pkg/encryptedstore"
	"github.com/rancher/rancher/pkg/nodeconfig"
	v1 "github.com/rancher/types/apis/core/v1"
	v3 "github.com/rancher/types/apis/management.cattle.io/v3"
	"github.com/rancher/types/config"
	"github.com/sirupsen/logrus"
	"k8s.io/apimachinery/pkg/labels"

	"strings"
)

const (
	defaultNamespace = "cattle-system"
	prefix = "mc-"
	driverKey         = "driverConfig"

	Amazonec2driver    = "amazonec2"
	Azuredriver        = "azure"
	DigitalOceandriver = "digitalocean"
	ExoscaleDriver     = "exoscale"
	Linodedriver       = "linode"
	OTCDriver          = "otc"
	OpenstackDriver    = "openstack"
	PacketDriver       = "packet"
	RackspaceDriver    = "rackspace"
	SoftLayerDriver    = "softlayer"
	Vmwaredriver       = "vmwarevsphere"
	VirtualboxDriver   = "virtualbox"
	HuaweiDriver       = "huaweiecs"
	TencentDriver      = "tencent"
	UcloudDriver       = "ucloud"
	AliyunDriver       = "aliyunecs"
)


type nodePoolStore struct {
	types.Store
	nodePoolLister      	v3.NodePoolLister
	nodeTemplateLister  	v3.NodeTemplateLister
	nodeDriverLister   		v3.NodeDriverLister
	dynamicSchemaLister     v3.DynamicSchemaLister
	nodeLister              v3.NodeLister
	secretStore             *encryptedstore.GenericEncryptedStore
	secretLister			v1.SecretLister
	//roleTemplateLister v3.RoleTemplateLister
	scaledContext      		*config.ScaledContext
}


func SetNodePoolStore(schema *types.Schema, mgmt *config.ScaledContext) {
	management, _ := mgmt.NewManagementContext()
	secretStoreComm, _ := nodeconfig.NewStore(management.Core.Namespaces(""), management.Core)

	store := &nodePoolStore{
		Store:               schema.Store,
		nodePoolLister:      mgmt.Management.NodePools("").Controller().Lister(),
		nodeTemplateLister:  mgmt.Management.NodeTemplates("").Controller().Lister(),
		nodeDriverLister:    mgmt.Management.NodeDrivers("").Controller().Lister(),
		dynamicSchemaLister:     mgmt.Management.DynamicSchemas("").Controller().Lister(),
		nodeLister:          mgmt.Management.Nodes("").Controller().Lister(),
		secretStore:         secretStoreComm,
		secretLister:        mgmt.Core.Secrets("").Controller().Lister(),
		scaledContext:       mgmt,
	}
	schema.Store = store
}


func (s *nodePoolStore) Delete(apiContext *types.APIContext, schema *types.Schema, id string) (map[string]interface{}, error) {
	parts := strings.Split(id, ":")

	logrus.Infof("hi ----------------------------------  %v",parts)
	nodepool, err := s.nodePoolLister.Get(parts[0], parts[len(parts)-1])
	if err != nil {
		return nil, err
	}
	logrus.Infof("hi ---------------------------- %v", nodepool)
	// 取出 NodePool 中 spec: nodeTemplateName 主机模板
	logrus.Infoln(nodepool.Spec.NodeTemplateName)

	nodeSelectTemplateParts := strings.Split(nodepool.Spec.NodeTemplateName, ":")

	// 取得 对应 "namespace:node" 采用的主机模板-CRD
	nodeTemplate, err := s.nodeTemplateLister.Get(nodeSelectTemplateParts[0], nodeSelectTemplateParts[1])

	if err != nil {
		return nil, err
	}
	logrus.Infof("hi ---------------------------- %v", nodeTemplate)

	nodes, err := s.nodeLister.List(parts[0], labels.NewSelector())
	var deleteNode *v3.Node = nil
	for _, value := range nodes{
		if value.Spec.NodePoolName == id{
			deleteNode = value
			break
		}
	}
	// 找到与 nodepool对应的node
	if deleteNode == nil{
		return nil, err
	}

	// 为什么通过 这种方法取不出来？？  目前发现 controller的 running以及synced是否为 True
	//s.secretStore.SetNamespace("cattle-system")
	//hello, err := s.secretStore.Get(deleteNode.ObjectMeta.Name)
	secret, err := s.secretLister.Get(defaultNamespace, prefix + deleteNode.ObjectMeta.Name)
	if err != nil {
		return nil, err
	}

	var nodeDriverInfo map[string]interface{}
	err = json.Unmarshal(secret.Data[driverKey], &nodeDriverInfo)

	if err != nil {
		return nil, &httperror.APIError{
			Message: fmt.Sprintf("transfer %s of secret Error", driverKey),
		}
	}

	if canDeleteDirect(nodeTemplate.Spec.Driver, nodeDriverInfo){
		//return s.Store.Delete(apiContext, schema, id)
		return nil, httperror.NewAPIError(httperror.Conflict, "this cluster node can not be deleted")
	}

	// 获取 驱动相关信息
	//nodeDriver, err := s.nodeDriverLister.List("", labels.NewSelector())
	//nodeDriver, err := s.nodeDriverLister.Get("", nodeTemplate.Spec.Driver)
	//if err != nil {
	//	return nil, err
	//}
	//
	//logrus.Infof("hi ---------------------------- %v", nodeDriver)

	//nodeDriverUuid := nodeDriver.ObjectMeta.UID

	// 获取 驱动代表的参数定义
	//dynamicSchema, err := s.dynamicSchemaLister.List("", labels.NewSelector())
	//dynamicSchema, err := s.dynamicSchemaLister.Get("", nodeDriver.Spec.DisplayName + "config")
	//if err != nil {
	//	return nil, err
	//}
	//
	//logrus.Infof("hi ---------------------------- %v", dynamicSchema)

	//if proj.Labels["authz.management.cattle.io/system-project"] == "true" {
	//	return nil, httperror.NewAPIError(httperror.MethodNotAllowed, "System Project cannot be deleted")
	//}
	return nil, httperror.NewAPIError(httperror.Conflict, "this cluster node can not be deleted")
	//return s.Store.Delete(apiContext, schema, id)
}


// 根据不同云环境主机,判断是否能够直接删除机器
func canDeleteDirect(nodeDriverType string, nodeDriverInfo map[string]interface{}) bool{

	switch nodeDriverType {
	case TencentDriver:
		if elem, ok := nodeDriverInfo["chargeType"]; ok{
			// 计费方式按小时 可以删除
			if elem == "POSTPAID_BY_HOUR"{
				return true
			}
		}else {
			logrus.Errorf("%s has no fit key chargeType", TencentDriver)
		}
	case AliyunDriver:
		if elem, ok := nodeDriverInfo["huaweiecs-charge-mode"]; ok{
			// 计费方式按小时 可以删除
			if elem == "POSTPAID_BY_HOUR"{
				return true
			}
		}else {
			logrus.Errorf("%s has no fit key chargeType", TencentDriver)
		}
	case HuaweiDriver:
		if elem, ok := nodeDriverInfo["huaweiecs-charge-mode"]; ok{
			// 计费方式按小时 可以删除
			if elem == "postPaid"{
				return true
			}
		}else {
			logrus.Errorf("%s has no fit key chargeMode", HuaweiDriver)
		}
	case UcloudDriver:
		if elem, ok := nodeDriverInfo["huaweiecs-charge-mode"]; ok{
			// 计费方式按小时 可以删除
			if elem == "postPaid"{
				return true
			}
		}else {
			logrus.Errorf("%s has no fit key chargeMode", HuaweiDriver)
		}
	default:
		return true
	}
	return false
}