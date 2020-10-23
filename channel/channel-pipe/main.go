package main

import (
	"fmt"
)

/*
    某个通道函数的输入输出参数都是channel类型
	此函数可以自己调用自己，然后形成调用链，形成管道
 */

//入参和返回值一致的 chan函数
// 作用是将接受的chan里面的数值+1
func chain(in chan int) chan int{
	out := make(chan int)
	go func() {
		for v := range in{
			out <- 1+v
		}
		close(out)
	}()
	return out
}

func main()  {
	in := make(chan int)

	//初始化输入参数
	go func() {
		for i := 0; i < 10; i++{
			in <- i
		}
		close(in)
	}()

	out := chain(chain(chain(in)))

	for v := range out{
		fmt.Println(v)
	}
}
