
package main

import (
	"bufio"
	"bytes"
	"encoding/json"
	"fmt"
	"io"
	"log"
	"os/exec"
	"time"
)

// Mail _
type Mail struct {
	Value string
}

// UnmarshalJSON _
func (m *Mail) UnmarshalJSON(data []byte) error {
	// 这里简单演示一下，简单判断即可
	if bytes.Contains(data, []byte("@")) {
		return fmt.Errorf("mail format error")
	}
	m.Value = string(data)
	return nil
}

// UnmarshalJSON _
func (m *Mail) MarshalJSON() (data []byte, err error) {
	if m != nil {
		data = []byte(m.Value)
	}
	return
}


//// UnmarshalJSON _
//func (p *Phone) UnmarshalJSON(data []byte) error {
//	// 这里简单演示一下，简单判断即可
//	if len(data) != 11 {
//		return fmt.Errorf("phone format error")
//	}
//	p.Value = string(data)
//	return nil
//}
//
//// UnmarshalJSON _
//func (p *Phone) MarshalJSON() (data []byte, err error) {
//	if p != nil {
//		data = []byte(p.Value)
//	}
//	return
//}


type ConfigStruct struct {
	Host              string   `json:"host"`
	Port              int      `json:"port"`
	AnalyticsFile     string   `json:"analytics_file"`
	StaticFileVersion int      `json:"static_file_version"`
	StaticDir         string   `json:"static_dir"`
	TemplatesDir      string   `json:"templates_dir"`
	SerTcpSocketHost  string   `json:"serTcpSocketHost"`
	SerTcpSocketPort  int      `json:"serTcpSocketPort"`
	Fruits            []string `json:"fruits"`
}

type Other struct {
	SerTcpSocketHost string   `json:"serTcpSocketHost"`
	SerTcpSocketPort int      `json:"serTcpSocketPort"`
	Fruits           []string `json:"fruits"`
}

func main() {


	//jsonStr := `{"host": "http://localhost:9090","port": 9090,"analytics_file": "","static_file_version": 1,"static_dir": "E:/Project/goTest/src/","templates_dir": "E:/Project/goTest/src/templates/","serTcpSocketHost": ":12340","serTcpSocketPort": 12340,"fruits": ["apple", "peach"]}`

	//json str 转map
	//var dat map[string]interface{}
	//if err := json.Unmarshal([]byte(jsonStr), &dat); err == nil {
	//	fmt.Println("==============json str 转map=======================")
	//	fmt.Println(dat)
	//	fmt.Println(dat["host"])
	//}

	//json str 转struct,  反序列化动作
	//var config ConfigStruct
	//if err := json.Unmarshal([]byte(jsonStr), &config); err == nil {
	//	fmt.Println("================json str 转struct==")
	//	fmt.Println(config)
	//	fmt.Println(config.Host)
	//}
	//
	//
	////json str 转struct(部份字段)
	//var part Other
	//if err := json.Unmarshal([]byte(jsonStr), &part); err == nil {
	//	fmt.Println("================json str 转struct==")
	//	fmt.Println(part)
	//	fmt.Println(part.SerTcpSocketPort)
	//}
	//
	//
	////array 到 json str, 序列化
	//arr := []string{"hello", "apple", "python", "golang", "base", "peach", "pear"}
	//lang, err := json.Marshal(arr)
	//if err == nil {
	//	fmt.Println("================array 到 json str==")
	//	fmt.Println(string(lang))
	//}
	//
	////json 到 []string, 反序列化
	//var wo []string
	//if err := json.Unmarshal(lang, &wo); err == nil {
	//	fmt.Println("================json 到 []string==")
	//	fmt.Println(wo)
	//}
	//
	//fmt.Println("")
	//json_handle()
	//
	//stream_cmd()

	cmd_pipe()
}


// 序列化 嵌套处理
type Detail struct {
	Time string `json:"time"`
	Ops  string `json:"ops"`
}

type Version struct {
	Last   string   `json:"last"`
	Max    int      `json:"max"`
	Detail []Detail `json:"detail"`
}

type Desc struct {
	Date    string  `json:"date"`
	Content string  `json:"content"`
	Brief   string  `json:"brief"`
	Keyword string  `json:"keyword"`
	Version Version `json:"version"`
}

type Response struct {
	Url     string   `json:"url"`
	Title   string   `json:"title"`
	Email   string   `json:"email"`
	Admin   string   `json:"admin"`
	Address []string `json:"address"`
	Article []Desc   `json:"article"`
}


func json_handle()  {
	body := `
		  {
			  "url": "http://xiaorui.cc",
			  "title": "golang and python",
			  "admin": "fengyun",
			  "email": "rfyiamcool@163.com",
			  "address": [
				  "beijing",
				  "qingdao"
			  ],
			  "article": [
				  {
					  "date": "2014",
					  "content": "golang json push to redis server",
					  "brief": "golang json",
					  "keyword": "json",
					  "version": {
						  "max": 3,
						  "last": "2016-03-11",
						  "detail": [
							  {
								  "time": "2016-03-12",
								  "ops": "add my email"
							  }
							 ]
						  }
				  }
			  ]
		  }
		  `

	var r Response
	err := json.Unmarshal([]byte(body), &r)
	if err != nil {
		fmt.Printf("err was %v", err)
	}

	fmt.Println(r.Article[0].Version.Max)
	fmt.Println(r.Article[0].Version.Detail[0].Ops)
}


// json NewDecoder 从stream读取对象
func stream_cmd()  {
	cmd := exec.Command("echo", "-n", `{"Name": "Bob", "Age": 32}`)
	stdout, err := cmd.StdoutPipe()
	if err != nil {
		log.Fatal(err)
	}
	if err := cmd.Start(); err != nil {
		log.Fatal(err)
	}
	var person struct {
		Name string
		Age  int
	}
	if err := json.NewDecoder(stdout).Decode(&person); err != nil {
		log.Fatal(err)
	}

	//cmd.Start 与 cmd.Wait 必须一起使用。
	//cmd.Start 不用等命令执行完成，就结束
	//cmd.Wait 等待命令结束

	if err := cmd.Wait(); err != nil {
		log.Fatal(err)
	}
	fmt.Printf("%s is %d years old\n", person.Name, person.Age)
}


// cmd逐行实时输出
func cmd_pipe() bool{
	command := "ls"
	params := []string{"-l"}

	cmd := exec.Command(command, params...)

	//显示运行的命令
	fmt.Println(cmd.Args)

	// 将结果存放在stream中
	stdout, err := cmd.StdoutPipe()

	if err != nil {
		fmt.Println(err)
		return false
	}

	// 异步开始
	cmd.Start()

	fmt.Println("cmd have started")

	//reader := bufio.NewScanner(stdout)
	reader := bufio.NewReader(stdout)
	//实时循环读取输出流中的一行内容
	for{
		line, err2 := reader.ReadString('\n')
		// 验证 cmd 执行并发控制
		time.Sleep(1*time.Second)
		if err2 != nil || io.EOF == err2{
			break
		}
		fmt.Print(line)
	}
	//for reader.Scan(){
	//	msg := reader.Text()
	//	fmt.Printf("msg: %s\n", msg)
	//}

	fmt.Println(" cmd is starting")
	// 与sync.WaitGroup一样, 必须等待输出完成
	//defer cmd.Wait()
	//if err := cmd.Wait(); err != nil {
	//	fmt.Printf("wait for docker-machine over error, %v\n", err)
	//}
	fmt.Println("cmd is finished")
	return true
}
