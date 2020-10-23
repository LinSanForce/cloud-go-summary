package main

import (
	"fmt"
	"io"
	"os"
)

type nodePoolStore struct {

	secretStore             *GenericEncryptedStore

}

type GenericEncryptedStore struct {
	prefix       string
	namespace    string
}

func NewStore() (*GenericEncryptedStore, error) {
	return &GenericEncryptedStore{
		prefix: "a-",
		namespace: "kube-system",
	}, nil
}

func main()  {
	//secretStore, _ := NewStore()
	//secretStore.namespace = ""


	tty, _ := os.OpenFile("/dev/tty", os.O_RDWR, 0)

	var r io.Reader

	// 接口变量r的pair中将记录如下信息：(tty, *os.File)
	r = tty

	var w io.Writer
	// 连续复制过程中值不变。  接口变量w的pair与r的pair相同，都是:(tty, *os.File)
	w = r.(io.Writer)

    fmt.Println(w)

}