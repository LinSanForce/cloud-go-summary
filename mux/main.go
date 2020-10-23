package main

import (
	"encoding/json"
	"fmt"
	"github.com/gorilla/mux"
	"io"
	"io/ioutil"
	"net/http"
	"runtime/debug"
	"sync"

	_ "net/http/pprof"
)

type APIVersion struct {
	Group            string `json:"group,omitempty"`
	Version          string `json:"version,omitempty"`
	Path             string `json:"path,omitempty"`
	SubContext       bool   `json:"subContext,omitempty"`
	SubContextSchema string `json:"filterField,omitempty"`
}


var(
	Version = APIVersion{
		Version: "v3",
		Group:   "management.cattle.io",
		Path:    "/v3",
	}
)

type ResponseWriter interface {
	//Write(apiContext *types.APIContext, code int, obj interface{})
}

type EncodingResponseWriter struct {
	ContentType string
	Encoder     func(io.Writer, interface{}) error
}

// 截取出 rancher-norman的 Server对象, 其实现了 ServerHttp方法, 因此可以作为handler函数
type Server struct {
	initBuiltin                 sync.Once
	IgnoreBuiltin               bool
	//Parser                      Parser
	//Resolver                    parse.ResolverFunc
	//SubContextAttributeProvider types.SubContextAttributeProvider
	ResponseWriters             map[string]ResponseWriter
	//Schemas                     *types.Schemas
	//QueryFilter                 types.QueryFilter
	//StoreWrapper                StoreWrapper
	//URLParser                   parse.URLParser
	//Defaults                    Defaults
	//AccessControl               types.AccessControl
}

func (s *Server) ServeHTTP(rw http.ResponseWriter, req *http.Request) {
	defer func() {
		if err := recover(); err != nil && err != http.ErrAbortHandler {
			fmt.Println("Panic serving api request: \n" + string(debug.Stack()))
			rw.WriteHeader(http.StatusInternalServerError)
		}
	}()

	//if apiResponse, err := s.handle(rw, req); err != nil {
	//	s.handleError(apiResponse, err)
	//}
	fmt.Fprintf(rw, "the host is localhost")
}


func GetUserHandler(w http.ResponseWriter, r *http.Request){
	vars := mux.Vars(r)
	w.WriteHeader(http.StatusOK)

	fmt.Fprint(w, "你好，this is get user, and the user id is ", vars["var"])
}

func CustomHandler(w http.ResponseWriter, r *http.Request){
	w.WriteHeader(http.StatusOK)

	fmt.Fprint(w, "I am customer")
}

func HandleITSM(w http.ResponseWriter, r *http.Request)  {
	s, _ := ioutil.ReadAll(r.Body)
	fmt.Println(string(s))

	//time.Sleep(10 * time.Second)
	w.WriteHeader(http.StatusOK)

	resp := map[string]string{}
	resp["message"] = "ok"
	resp["code"] = "200"

	data, _ := json.Marshal(resp)
	w.Write(data)
}

func main()  {
	authed := mux.NewRouter()

	managementAPI, _ := New()
	//authed.UseEncodedPath()
	//  路由绑定会按照顺序你匹配下去
	authed.HandleFunc("/v3/hello", CustomHandler)
	authed.HandleFunc("/v3/{var}", GetUserHandler)

	// PathPrefix将不匹配的都流转到这里
	authed.PathPrefix(Version.Path).Handler(managementAPI)

	authed.HandleFunc("/release/querystate", HandleITSM)

	http.ListenAndServe(":3000", authed)

}

func New() (http.Handler, error) {
	return &Server{

	}, nil
}

type mcache struct {
	tiny uintptr
}
