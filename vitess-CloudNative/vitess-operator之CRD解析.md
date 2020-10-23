# Vitess-Operator CRD解释。

## etcdlockservers.planetscale.com
   这一个CRD对象是维护了一套Etcd集群，用于存储元数据，包括分片信息，分库分表信息，各个数据表的路由规则信息。

## vitessbackups.planetscale.com


## vitessbackupstorages.planetscale.com


## vitesscells.planetscale.com


## vitessclusters.planetscale.com
1,在初始化vitess集群时通过此CRD对象创建一个 VitessCluster资源来初始化集群。

2，关注以下几个VitessCluster对象的属性含义。

- spec.images.mysqld: 是一个key-value类型，可选key值包括: "mariadb103Compatible","mariadbCompatible","mysql56Compatible","mysql80Compatible"；
  value值是相关docker镜像的地址。 (可以使用harbor库中的harbor.yzf.best:1180/vitess/lite:v6.0.20-20200429，这个镜像融合了多个组件的能力)
  
- spec.images.vtbackup: mysql备份功能的组件
  
  spec.images.vtctld: 提供了GUI界面对vitess集群进行管理的组件。
  
  spec.images.vtgate: 作为分库分表proxy架构的 proxy，所有流量的网关入口。
  
  spec.images.vttablet: 执行具体sql的组件，每一个vttablet组件与一个Mysql实例通过 tablet-id进行唯一绑定。

- spec.backup.engine: 用于后端备份的组件，string类型两个可选值， builtin以及xtrabackup。

- spec.backup.locations: 这是一个数组，用于指定vitess备份数据的持久化存储。可选值包括 “azblob”、“gcs”、“name”、“s3”、“volume”。
  **要求必须至少选定一个其中的后端存储。**

- spec.keyspaces: 一个vitess集群中，默认由一主一备一从组成一个集群，并且进行水平拆分后也是这样的架构，这些关联的集群组成一个 keyspace。
  
  spec.keyspaces.partitionings:  数组，由以下两个属性组成，至少包含一个，最多包含2个。 代表切分键的范围。
    spec.keyspaces.partitionings.custom: 自定义keyspace中的各个“mysql-vttablets实例”的属性。
    spec.keyspaces.partitionings.equal:  均衡“mysql-vttablets实例”的属性。
  
- spec.cells: vitess中区域的概念，多个keyspace属于一个cell。

- spec.vitessDashboard: 指定 vtctld GUI组件相关属性。

- spec.globalLockserver: 指定vitess集群元数据存储。默认采用Etcd。

  


## vitesskeyspaces.planetscale.com


## vitessshards.planetscale.com

