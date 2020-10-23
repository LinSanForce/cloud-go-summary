package main

import (
	"bufio"
	"fmt"
	"io"
	"net/http"
	"os"
)

func DownloadFile() {
	url :="http://xxx/somebigfile"
	resp ,err := http.Get(url)
	if err != nil {
		fmt.Fprint(os.Stderr ,"get url error" , err)
	}
	defer resp.Body.Close()
	out, err := os.Create("/tmp/xxx_file")
	// 很重要：初始化一个 io.Writer
	wt :=bufio.NewWriter(out)

	defer out.Close()

	// 它是将源复制到目标，并且是按默认的缓冲区 32k 循环操作的，不会将内容一次性全写入内存中
	_, err = io.Copy(wt, resp.Body)
	if err != nil {
		panic(err)
	}
	wt.Flush()
}