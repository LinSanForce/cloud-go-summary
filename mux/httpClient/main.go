package main

import (
	"fmt"
	"net/http"
)

func main()  {

	myClient := http.Client{
		CheckRedirect: func(req *http.Request, via []*http.Request) error {
			return http.ErrUseLastResponse
		},
	}
	// client不采用重定向方式
	respWithNoRedirect, err := myClient.Get("http://blog.calabash.top")
	// client自动进行重定向
	respWithRedirect, _ := http.Get("http://blog.calabash.top")


	if err != nil{
		fmt.Println(err)
		fmt.Println(err.Error())
	}else {
		fmt.Println(respWithNoRedirect.StatusCode) // 301
	}

	fmt.Println(respWithRedirect.StatusCode)   // 200
}
