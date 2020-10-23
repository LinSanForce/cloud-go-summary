package main

import (
	"net/http"
	_ "net/http/pprof"
)

func root(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("Hello World!"))
}

func main()  {

	http.HandleFunc("/", root)
	//err := http.ListenAndServe(":8080", nil)
	//if err != nil {
	//	log.Fatal("err:", err)
	//}
	http.ListenAndServe(":8080", nil)
}