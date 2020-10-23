package main

import (
	"fmt"
	"reflect"
)


type Student struct {
	Name string
	Age  int
}


type Monster struct {
	Name  string `json:"name"`
	Age   int    `json:"age"`
	Score float32
	Sex   string
}

func (s Monster) Print() {
	fmt.Println("-----start-------")
	fmt.Println(s)
	fmt.Println("-----end-------")
}
func (s Monster) GetSum(n1, n2 int) int {
	return n1 + n2
}
func (s Monster) Set(name string, age int, score float32, sex string) {
	s.Name = name
	s.Age = age
	s.Score = score
	s.Sex = sex
}

func TestStruct(a interface{}) {
	rType := reflect.TypeOf(a)
	rVal := reflect.ValueOf(a)
	kd := rVal.Kind()
	// 判断是否是结构体类型
	if kd != reflect.Struct {
		fmt.Println("expect struct")
		return
	}

	// 获取结构体属性
	num := rVal.NumField()
	fmt.Println("struct fields:", num)
	//变量结构体的所有字段
	for i := 0; i < num; i++ {
		fmt.Printf("field %d: 值为:%v\n", i, rVal.Field(i))
		tagVal := rType.Field(i).Tag.Get("json")
		if tagVal != "" {
			fmt.Printf("field %d: tag=%v\n", i, tagVal)
		}
	}

	//结构体的方法操作
	numOfMethod := rVal.NumMethod()
	fmt.Printf("struct has %d methods\n", numOfMethod)

	//var params []reflect.Value

	fmt.Println(rVal.Method(1))
	rVal.Method(1).Call(nil)

	//调用结构体的第1个方法Method(0)
	var params []reflect.Value
	params = append(params, reflect.ValueOf(10))
	params = append(params, reflect.ValueOf(40))
	res := rVal.Method(0).Call(params)
	fmt.Println("res = ", res[0].Int())


}

func reflectTest01(b interface{}){
	//1.先获取到reflect.Type
	rType := reflect.TypeOf(b)
	fmt.Println("rType = ", rType)

	//2.获取到reflect.Value
	rVal := reflect.ValueOf(b)
	n2 := 2 + rVal.Int()

	fmt.Println("n2 = ", n2)
	fmt.Printf("rVal = %v,  rVal type=%T\n", rVal, rVal)

	//下面我们将rVal转换成interface。 从“反射类型对象”reflect.Value 获取真实类型
	// “强制转换”，但是需要注意的时候，转换的时候，如果转换的类型不完全符合，则直接panic
	iv := rVal.Interface()
	//将interface通过断言转换成需要的类型
	num2 := iv.(int)
	fmt.Println("num2 = ", num2)
}


//复杂类型的反射 (可以认为在 不知道 具体实际接口变量)
func reflectTest02(b interface{}) {
	//通过反射获取到传入变量的type  kind值
	//reflect.TypeOf()是获取pair中的type，
	rType := reflect.TypeOf(b)
	fmt.Println("rType =", rType)

	//获取到reflectValue
	// reflect.ValueOf()获取pair中的value, 得到relfect.Value变量
	rVal := reflect.ValueOf(b)

	//获取变量对应的kind
	typeKind := rType.Kind()
	valKind := rVal.Kind()
	fmt.Printf("reflect.TypeOf() = %v\n", rType)
	fmt.Printf("rVal.Type() = %v\n", rVal.Type())
	fmt.Printf("typeKind = %v, valKind = %v\n", typeKind, valKind)
	fmt.Printf("rVal.FieldByName(\"Name\") = %v\n", rVal.FieldByName("Name").String())
	fmt.Println(rVal.FieldByName("Name").String() == "tom")

	//将rVal转换为interface{}, 通过它本身的Interface()方法获得接口变量的真实内容
	iv := rVal.Interface()
	fmt.Println(rVal)
	fmt.Printf("iv = %v is type =%T\n", iv, iv)
	//把interface{}通过断言转换成需要的类型, 这种情况是 已知原有类型
	stu, ok := iv.(Student)
	if ok {
		fmt.Println("stu.Name = ", stu.Name)
	}

	// 获取方法字段
	// 1. 先获取interface的reflect.Type，然后通过NumField进行遍历
	// 2. 再通过reflect.Type的Field获取其Field
	// 3. 最后通过Field的Interface()得到对应的value
	for i := 0; i < rType.NumField(); i++ {
		field := rType.Field(i)
		value := rVal.Field(i).Interface()
		fmt.Printf("%s: %v = %v\n", field.Name, field.Type, value)
	}

	// 获取方法
	// 1. 先获取interface的reflect.Type，然后通过.NumMethod进行遍历
	for i := 0; i < rType.NumMethod(); i++ {
		m := rType.Method(i)
		fmt.Printf("%s: %v\n", m.Name, m.Type)
	}
}


func getFieldValue(v reflect.Value, name ...string) reflect.Value {
	field := v.FieldByName(name[0])
	if len(name) == 1 {
		return field
	}
	return getFieldValue(field, name[1:]...)
}



// 通过反射改变 传入的值
// 仅仅当传入指针的时候，才可以通过reflec.Value修改实际变量X的值
func changeValue(b interface{}) {
	// 这里需要传入指针
	rVal := reflect.ValueOf(b)
	fmt.Printf("rVal kind =%v\n", rVal.Kind())
	fmt.Printf("Elem() func: %v\n", rVal.Elem())
	fmt.Printf("is addressable: %v\n", rVal.Elem().CanSet())
	// 重新赋值
	//rVal.Elem().SetInt(1)

	field := rVal.Elem().FieldByName("Age")
	fmt.Println(field)
}


func main() {
	var b int = 10
	reflectTest01(b)
	fmt.Println("-------------")

	stu := Student{
		Name: "tom",
		Age:  12,
	}
	reflectTest02(stu)
	//fmt.Println("-------------")

	//var c = 100
	changeValue(&stu)
	//fmt.Println(c)

	//var a Monster = Monster{
	//	Name:  "tom",
	//	Age:   100,
	//	Score: 30.1,
	//	Sex:   "男",
	//}
	//TestStruct(a)
	//
	//b := a
	//b.Age = 800
	//a.Set("p", 300, 80.8, "nan")  // 值方法对改变无效
	//fmt.Println(b)
	//fmt.Println(a)


}