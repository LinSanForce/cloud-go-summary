package main

import (
	"context"
	//"encoding/json"
	"fmt"
	"time"
)


func main() {
	//closeChannel()
	//c := make(chan int)
	//timeout := time.After(time.Second * 2) //
	//t1 := time.NewTimer(time.Second * 3)   // 效果相同 只执行一次
	//var i int
	//go func() {
	//	for {
	//		select {
	//		case <-c:
	//			fmt.Println("channel sign")
	//			return
	//		case <-t1.C:      // 代码段2
	//			fmt.Println("3s定时任务")
	//			t1.Reset(time.Second * 3)
	//		case <-timeout:   // 代码段1
	//			i++
	//			fmt.Println(i, "2s定时输出")
	//		case <-time.After(time.Second * 4):    // 代码段3, 只在本次select生效, 再次进入select从当前时间开始+4触发
	//			fmt.Println("4s timeout。。。。")
	//		default:                               // 代码段4
	//			fmt.Println("default")
	//			time.Sleep(time.Second * 1)
	//		}
	//	}
	//}()
	//time.Sleep(time.Second * 6)
	//close(c)
	////time.Sleep(time.Second * 2)
	//fmt.Println("main退出")

	//testTimeTick()

	testTimer()
}

// 以下２个定时器的差别
func testTimeTick()  {
	ctx := context.Background()
	for range Context(ctx, 5 * time.Second) {
		fmt.Println("-------------------------- pipeline sync ----------------------------")
	}
}

func testTimer()  {
	d := time.Duration(time.Second*2)

	t := time.NewTimer(d)
	defer t.Stop()

	go func() {
		for {
			<- t.C

			fmt.Println("timeout...")
			// Reset命令保证定时触发
			t.Reset(time.Second*2)
		}
		fmt.Println(" timer end")
	}()

	time.Sleep(time.Second * 16)
}