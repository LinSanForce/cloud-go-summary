package main

import (
	"fmt"
	"html/template"
	"os"
)

type Person struct {
	Name string
	Age    int
}

func main() {
	//p := Person{"longshuai", 23}
	//
	////  template.New()函数创建了一个空Template实例
	////  Parse()方法用来解析、评估模板中需要执行的action
	////  其中需要评估的部分都使用{{}}包围, 并将评估后(解析后)的结果赋值给tmpl
	//tmpl, err := template.New("test").Parse("Name: {{.Name}}, Age: {{.Age}} hello ")
	//if err != nil {
	//	panic(err)
	//}
	//
	//// 对需要评估的数据进行操作  无需评估的数据进行合并
	//err = tmpl.Execute(os.Stdout, p)
	//if err != nil {
	//	panic(err)
	//}
	//fmt.Println(tmpl)

	//defineTest()

	parseFileTest()
}


func defineTest(){
	t1 := template.New("test1")
	tmpl,_ := t1.Parse(
		`{{define "T1"}}ONE{{end}}
			{{define "T2"}}TWO{{end}}
			{{define "T3"}}{{template "T1"}} {{template "T2"}}{{end}}
			{{template "T3"}}`)
	fmt.Println(t1)
	fmt.Println(tmpl)
	fmt.Println(t1.Lookup("test1"))  // 使用关联名称t1检索test1模板
	fmt.Println(t1.Lookup("T1"))
	fmt.Println(tmpl.Lookup("T2")) // 使用关联名称tmpl检索T2模板
	fmt.Println(tmpl.Lookup("T3"))

	fmt.Println(tmpl.DefinedTemplates())
}

func parseFileTest()  {

	t, _ := template.ParseFiles("t1.html")
	t.Execute(os.Stdout, "Hello World!")
	fmt.Println(t)
}