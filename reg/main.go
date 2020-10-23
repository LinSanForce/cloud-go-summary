package main

import (
	"fmt"
	"regexp"
	"strings"
)
func main() {
	str1 := "test/zwp-pipeline:v0.0.${CICD_EXECUTION_SEQUENCE}-${CICD_GIT_BRANCH}-${CICD_GIT_COMMIT}"

	//解析正则表达式，如果成功返回解释器
	reg1 := regexp.MustCompile(`\${(?s:(.*?))}`)
	if reg1 == nil { //解释失败，返回nil
		fmt.Println("regexp err")
		return
	}
	//根据规则提取关键信息
	result1 := reg1.FindAllStringSubmatch(str1, -1)
	fmt.Println("result1 = ", result1)

	// 原生字符串
	buf := `
    
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>C语言中文网 | Go语言入门教程</title>
</head>
<body>
    <div>Go语言简介</div>
    <div>Go语言基本语法
    Go语言变量的声明
    Go语言教程简明版
    </div>
    <div>Go语言容器</div>
    <div>Go语言函数</div>
</body>
</html>
    `
	//解释正则表达式
	reg := regexp.MustCompile(`<div>(?s:(.*?))</div>`)
	if reg == nil {
		fmt.Println("MustCompile err")
		return
	}
	//提取关键信息
	result := reg.FindAllStringSubmatch(buf, -1)
	fmt.Println("result = ", result)
	fmt.Println("")
	//过滤<></>
	for _, text := range result {
		fmt.Println("text[1] = ", text[1])
	}

	m := map[string]string{}
	m["CICD_GIT_COMM"] = "fsdafsd"

	str2 := "fdaf:fd:341"
	result_str := substituteEnvVar(m, str2)
	fmt.Println(result_str)
}

func substituteEnvVar(envvar map[string]string, raw string) string {
	result := raw
	for k, v := range envvar {
		result = strings.Replace(result, "${"+k+"}", v, -1)
	}
	return result
}

