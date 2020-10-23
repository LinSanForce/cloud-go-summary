package main

import (
	"context"
	"errors"
	"fmt"
	"sync"
)

type Group struct {
	cancel func()

	wg sync.WaitGroup

	errOnce sync.Once
	err     error
}

func NewContext(ctx context.Context)  (*Group, context.Context){
	ctx, cancel := context.WithCancel(ctx)
	// 将cancel函数 赋值过来
	return &Group{cancel: cancel}, ctx
}

func (g *Group) Go(f func() error) {
	g.wg.Add(1)

	go func() {
		defer g.wg.Done()

		if err := f(); err != nil{
			g.errOnce.Do(func() {
				g.err = err
				fmt.Printf("--- %v\n", g.err)
				if g.cancel != nil {
					g.cancel()
				}
			})
		}
	}()
}

// 针对 wg的包装
func (g *Group) Wait() error  {
	g.wg.Wait()
	if g.cancel != nil{
		g.cancel()
	}
	return g.err
}

type Starter interface {
	Sync() error
}

type starter1 struct {

}

func (s1 starter1)  Sync() error {
	fmt.Println("I am starter1")
	return nil
}

type starter2 struct {

}

func (s2 starter2)  Sync() error {
	fmt.Println("I am starter2")
	return errors.New("starter2 error")
}

func test()  {
	eg, _ := NewContext(context.Background())

	st1 := starter1{}
	st2 := starter2{}

	// 两个协程
	func(starter Starter){
		eg.Go(func() error {
			return st1.Sync()
		})
	}(st1)

	func(starter Starter){
		eg.Go(func() error {
			return st2.Sync()
		})
	}(st2)

	_ = eg.Wait()
}

func main()  {
	test()

}