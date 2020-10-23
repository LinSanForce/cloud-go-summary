package main

import (
	"fmt"
	"unsafe"
)

/*
    go 指针
	*类型, 普通指针类型 不能进行指针偏移计算 一般用于传递
	unsafe.Pointer: 通用指针 用于转换不同类型指针; 不能进行指针运算, 不能读取内存值
	uintptr: 用于指针计算  GC不把uintptr当做指针。

	unsafe.Pointer  是桥梁，可以让任意类型的指针实现相互转换，
					也可以将任意类型的指针转换为 uintptr 进行指针运算。
 */

type SizeOfA struct {
	A int
}

type SizeOfC struct {
	A byte  // 1字节
	C int32 // 4字节
}

type SizeOfH struct {
	// 结构体中第一个成员的地址就是结构体的地址, 偏移量0
	A byte
	// 注意这里的内存填充规律
	C int16
	B int64
	D int32
}

// go内存对齐
func memoryAlign()  {
	fmt.Println(unsafe.Sizeof(int64(0)))

	// 这里将得到 8字节
	// 为什么这里多了3个字节 需要看unsafe.Alignof对齐倍数
	//  这个对齐倍数 参考结构体中基本类型的大小,最大为8字节
	fmt.Println(unsafe.Sizeof(SizeOfC{0, 0}))
	fmt.Println(unsafe.Alignof(SizeOfC{0, 0}))
	fmt.Println(unsafe.Alignof(SizeOfH{}))

	// 查看结构体中每个元素的偏移量
	fmt.Println("偏移量")
	fmt.Println(unsafe.Offsetof(SizeOfH{}.A)) // 0
	fmt.Println(unsafe.Offsetof(SizeOfH{}.C)) // 2
	fmt.Println(unsafe.Offsetof(SizeOfH{}.B)) // 8
	fmt.Println(unsafe.Offsetof(SizeOfH{}.D)) // 16
}

func main()  {
	//memoryAlign()
	//pointerToComm()

	a, b := 1, 2
	_ = add1(a, b)
	_ = add2(a, b)
}


// 以下测试 unsafe.Pointer 与 普通指针的互换规则
// 下面也就是 通过unsafe包实现对V的成员赋值
type V struct {
	i int32
	j int64
}

func (this V) PutI() {
	fmt.Printf("i=%d\n", this.i)
}

func (this V) PutJ() {
	fmt.Printf("j=%d\n", this.j)
}

func pointerToComm(){
	// 分配一段内存 按照类型零值清零; 因此 v就是 V结构体的指针
	var v *V = new(V)
	// 这里进行类型转换 通过unsafe.Pointer这个中间类型承载
	var i  = (*int32)(unsafe.Pointer(v))

	// 这一步对 v结构私有成员进行赋值
	*i = int32(98)

	fmt.Println( uintptr(unsafe.Pointer(v)) )
	fmt.Printf("uintptr-int32: %d\n", uintptr(unsafe.Sizeof(int32(0))) )
	fmt.Println( unsafe.Offsetof(v.j) )

	// 为了给 v结构体的j成员赋值 那么需要得到在内存中的 代指地址; 再加上一个偏移量
	var j *int64 = (*int64)( unsafe.Pointer( uintptr(unsafe.Pointer(v))+
		uintptr(unsafe.Offsetof(v.j)) ) )
	*j = int64(763)

	v.PutI()
	v.PutJ()
}


func add1(x, y int) int {
	return x + y
}

func add2(x, y int) int {
	_ = make([]byte, 200)
	return x + y
}