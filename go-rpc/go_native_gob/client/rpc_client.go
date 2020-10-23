package main

import (
	"fmt"
	"log"
	"net/rpc"
	"net/rpc/jsonrpc"
	"time"

	"github.com/rancher/machine/libmachine/drivers"
)

// 算数运算请求结构体
type ArithRequest struct {
	A int
	B int
}

// 算数运算响应结构体
type ArithResponse struct {
	Pro int // 乘积
	Quo int // 商
	Rem int // 余数
}


// docker-machine-driver 提供的 远程接口
type RPCServerDriver struct {
	ActualDriver drivers.Driver
	CloseCh      chan bool
	HeartbeatCh  chan bool
}

func main()  {

	//native_rpc_client()

	docker_machine_rpc_client()
}


func native_rpc_client()  {
	conn, err := rpc.DialHTTP("tcp", "127.0.0.1:8095")

	if err != nil {
		log.Fatalln("dailing error: ", err)
	}

	req := ArithRequest{9, 2}
	var res ArithResponse

	err = conn.Call("Arith.Multiply", req, &res)
	if err != nil {
		log.Fatalln("arith error: ", err)
	}
	fmt.Printf("%d * %d = %d\n", req.A, req.B, res.Pro)

	err = conn.Call("Arith.Divide", req, &res)
	if err != nil {
		log.Fatalln("arith error: ", err)
	}
	fmt.Printf("%d / %d, quo is %d, rem is %d\n", req.A, req.B, res.Quo, res.Rem)
}


// 基于json编解码的 跨语言的rpc调用
func json_rpc_client()  {
	conn, err := jsonrpc.Dial("tcp", "127.0.0.1:8096")
	if err != nil {
		log.Fatalln("dailing error: ", err)
	}

	req := ArithRequest{9, 2}
	var res ArithResponse

	err = conn.Call("Arith.Multiply", req, &res) // 乘法运算
	if err != nil {
		log.Fatalln("arith error: ", err)
	}
	fmt.Printf("%d * %d = %d\n", req.A, req.B, res.Pro)

	err = conn.Call("Arith.Divide", req, &res)
	if err != nil {
		log.Fatalln("arith error: ", err)
	}
	fmt.Printf("%d / %d, quo is %d, rem is %d\n", req.A, req.B, res.Quo, res.Rem)
}


func docker_machine_rpc_client()  {
	conn, err := rpc.DialHTTP("tcp", "127.0.0.1:37277")

	if err != nil {
		log.Fatalln("dailing error: ", err)
	}

	// 以下测试的是 腾讯的远程RPC驱动
	for {
		select {
		case <-time.After(1*time.Second):
			log.Println("send heartbeat")
			// TODO: Add heartbeat retry logic
			err = conn.Call("RpcServerDriver.Heartbeat", &struct {}{}, &struct {}{})
			if err != nil {
				log.Fatalln("RPCServerDriver error: ", err)
			}
		}
	}

	time.Sleep(100 * time.Second)
}
