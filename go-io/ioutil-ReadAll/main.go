package main

import (
	"fmt"
	"io/ioutil"
	"net/http"
	"os"
)

func DownloadFile() error {
	url :="http://xxx/somebigfile"
	resp ,err := http.Get(url)
	if err != nil {
		fmt.Fprint(os.Stderr ,"get url error" , err)
	}

	defer resp.Body.Close()

	// 一次性写入内存
	// 如果是大文件，会出现内存不足的问题，因为它是需要先把请求内容全部读取到内存中
	data ,err := ioutil.ReadAll(resp.Body)
	if err != nil {
		panic(err)
	}

	return ioutil.WriteFile("/tmp/xxx_file", data, 0755)
}