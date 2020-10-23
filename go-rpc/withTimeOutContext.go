package main

import (
	"context"
	"fmt"
	"time"
)

// 模拟一个最小执行时间的阻塞函数
func inc(a int) int {
	res := a + 1
	time.Sleep(5 * time.Second)   // 模拟阻塞
	return res
}

// 向外部提供的阻塞接口
// 计算 a + b, 注意 a, b 均不能为负
// 如果计算被中断, 则返回 -1
func Add(ctx context.Context, a, b int) int {
	res := 0
	for i := 0; i < a; i++ {
		res = inc(res)
		select {
		case <-ctx.Done():
			return -1
		default:
			fmt.Println("in it ", a)
		}
	}
	for i := 0; i < b; i++ {
		res = inc(res)
		select {
		case <-ctx.Done():
			return -1
		default:
			fmt.Println("in it ", b)
		}
	}
	return res
}

func main() {
	// 使用开放的 API 计算 a+b
	a := 1
	b := 2
	timeout := 5 * time.Second
	ctx, _ := context.WithTimeout(context.Background(), timeout)
	res := Add(ctx, 1, 2)
	fmt.Printf("Compute: %d+%d, result: %d\n", a, b, res)
}