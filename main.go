package main

import (
	"flag"
	"fmt"
	"github.com/gorilla/mux"
	"net/http"
)

func main()  {

	var dir string
	flag.StringVar(&dir, "dir", ".", "the directory to serve files from. Defaults to the current dir")
	flag.Parse()
	// 初始化Router
	r := mux.NewRouter()
	// 静态文件路由
	r.PathPrefix("/static/").Handler(http.StripPrefix("/static/", http.FileServer(http.Dir(dir))))
	// 普通路由
	r.HandleFunc("/", HomeHandler)
	// 指定host
	r.HandleFunc("/host", HostHandler).Host("localhost")
	// 带变量的url路由
	r.HandleFunc("/users/{id}", GetUserHandler).Methods("Get").Name("user")

	r.Path("/v1-telemetry").Handler(http.HandlerFunc(index))

	// 得到别名为user的路由，可以进行别名替换
	//url, _ := r.Get("user").URL("id", "5")
	//fmt.Println("user url: ", url.String())

	// 遍历已注册的路由
	//r.Walk(func(route *mux.Route, router *mux.Router, ancestors []*mux.Route) error{
	//	pathTemplate, err := route.GetPathTemplate()
	//
	//	if err == nil {
	//		fmt.Println("ROUTE:", pathTemplate)
	//	}
	//	pathRegexp, err := route.GetPathRegexp()
	//	if err == nil {
	//		fmt.Println("Path regexp:", pathRegexp)
	//	}
	//	queriesTemplates, err := route.GetQueriesTemplates()
	//	if err == nil {
	//		fmt.Println("Queries templates:", strings.Join(queriesTemplates, ","))
	//	}
	//	queriesRegexps, err := route.GetQueriesRegexp()
	//	if err == nil {
	//		fmt.Println("Queries regexps:", strings.Join(queriesRegexps, ","))
	//	}
	//	methods, err := route.GetMethods()
	//	if err == nil {
	//		fmt.Println("Methods:", strings.Join(methods, ","))
	//	}
	//	fmt.Println()
	//	return nil
	//})


	//r.Use(TestMiddleware)
	//http.ListenAndServe(":3000", r)

	// 测试对 nil的强制类型装换
	a := NewSelector()

	fmt.Printf("%T\n", a)
	if a != nil{
		fmt.Println(" wrapper nil is not nil ")
	}

	//var b map[string]string
	//b := map[string]string{}
	//if b == nil {
	//	fmt.Println("map is nil")
	//}
 	//b["hello"] = "ll"
	//
 	//fmt.Println(b)

 	var value interface{}
	value = "jj"


	switch v := value.(type) {
	case map[string]interface{}:
		fmt.Println(v)
	case string:
		fmt.Printf("%T", v)
	}

}


func HomeHandler(w http.ResponseWriter, r *http.Request) {
	w.WriteHeader(http.StatusOK)
	fmt.Fprintf(w, "this is home")
}

func HostHandler(w http.ResponseWriter, r *http.Request){
	w.WriteHeader(http.StatusOK)
	fmt.Fprintf(w, "the host is localhost")
}

func GetUserHandler(w http.ResponseWriter, r *http.Request){
	vars := mux.Vars(r)
	w.WriteHeader(http.StatusOK)

	fmt.Fprint(w, "this is get user, and the user id is ", vars["id"])
}


func TestMiddleware(next http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		// Do stuff here
		fmt.Println("middleware print: ", r.RequestURI)
		// Call the next handler, which can be another middleware in the chain, or the final handler.
		next.ServeHTTP(w, r)
	})
}


func index(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "text/html")

	html := `<doctype html>
        <html>
        <head>
          <title>Hello World</title>
        </head>
        <body>
        <p>
          <a href="/welcome">Welcome</a> |  <a href="/message">Message</a>
        </p>
        </body>
</html>`
	fmt.Fprintln(w, html)
}

type Selector interface {
	hello()
}

type internalSelector []int

func (internalSelector) hello() {
	fmt.Println("implement me")
}

func NewSelector() Selector{
	return internalSelector(nil)
}