package main

import (
	"context"
	"encoding/json"
	"fmt"
	"github.com/bugsnag/bugsnag-go/errors"
	"io"
	"io/ioutil"
	"log"
	"net/http"
	"strings"
	"time"
)
func main() {
	//mux := http.NewServeMux()
	//
	//http.HandleFunc("/hijack", func(w http.ResponseWriter, r *http.Request) {
	//	hj, ok := w.(http.Hijacker)
	//	if !ok {
	//		http.Error(w, "webserver doesn't support hijacking", http.StatusInternalServerError)
	//		return
	//	}
	//	conn, bufrw, err := hj.Hijack()
	//	if err != nil {
	//		http.Error(w, err.Error(), http.StatusInternalServerError)
	//		return
	//	}
	//	// Don't forget to close the connection:
	//	defer conn.Close()
	//
	//	conn.SetWriteDeadline(time.Now().Add(10 * time.Second))
	//	bufrw.WriteString("Now we're speaking raw TCP. Say hi: ")
	//	bufrw.Flush()
	//	s, err := bufrw.ReadString('\n')
	//	if err != nil {
	//		log.Printf("error reading string: %v", err)
	//		return
	//	}
	//	fmt.Fprintf(bufrw, "You said: %q\nBye.\n", s)
	//	bufrw.Flush()
	//})
	//
	//http.ListenAndServe(":3000", mux)

	//contextCancelAfterTimeout()

	fmt.Sprintf("hellooooo")

	err := testITSM("hello","pipe-1", "v1.0.0", "v1.0.2")
	fmt.Println("++++++++++++++++  call testITSM ")
	fmt.Println("================", err)

	//payloadMapper := map[string]string{}
	//payloadMapper["pipeline_id"] = "v2322"
	//payloadMapper["release_id"] = ""
	//payloadMapper["version"] = "v1.2.3"
	//payloadMapper["image"] = "v1.2.3"
	//
	//data, _ := json.Marshal(payloadMapper)
	//fmt.Println(string(data))
	//
	//if payloadMapper["hello"] == ""{
	//	fmt.Println("hello")
	//}else {
	//	fmt.Println(payloadMapper["hello"])
	//	fmt.Println("no")
	//}

	//webhookDefer()
}

// 通过使用 context来设置超时进行有效流处理
func contextCancelAfterTimeout(){
	ctx, cancel := context.WithCancel(context.TODO())

	// 为Do方法执行阶段设置5秒的超时
	//   只会计时结束后触发一次自定义函数调用
	timer := time.AfterFunc(5*time.Second, func() {
		fmt.Println("------ trigger timeAfterFunc")
		cancel()
	})

	req, err := http.NewRequest("GET", "http://httpbin.org/range/2048?duration=8&chunk_size=256", nil)

	if err != nil {
		log.Fatal(err)
	}
	req = req.WithContext(ctx)

	log.Println("Sending request...")
	resp, err := http.DefaultClient.Do(req)
	if err != nil {
		log.Fatal(err)
	}
	defer resp.Body.Close()
	log.Println("Reading body...")
	for {
		fmt.Println("------ cycle")
		timer.Reset(4 * time.Second)
		// Try instead: timer.Reset(50 * time.Millisecond)
		// 如果超过两秒我们没有从服务器读取到数据， io.CopyN会返回net/http: request canceled错误
		_, err = io.CopyN(ioutil.Discard, resp.Body, 256)
		if err == io.EOF {
			break
		} else if err != nil {
			log.Fatal(err)
		}
	}
}

func testITSM(projectId, pipelineId, version, imageTag string) error{

	defer func() {
		if err := recover(); err != nil {
			fmt.Println("捕获异常:", fmt.Errorf("%v", err).Error())
		}
	}()

	webhookAddr := "http://127.0.0.1:3000/release/querystate"

	payload := strings.NewReader("{\"pipeline_id\":\"" + pipelineId + "\",\"release_id\":\"\"" + ",\"version\":\"" + version + "\",\"image\":\"" + imageTag + "\"}")
	fmt.Println(payload)

	req, err := http.NewRequest("POST", webhookAddr, payload)

	if err != nil {
		return err
	}

	ctx, cancel := context.WithCancel(context.TODO())
	time.AfterFunc(5*time.Second, func()  {
		cancel()
		fmt.Println("call pipeline webhook Error: time out beyond 5 seconds")
	})


	//var cancelFn context.CancelFunc
	//ctx, cancelFn := context.WithTimeout(context.TODO(), 5*time.Second)

	req = req.WithContext(ctx)
	res, err := http.DefaultClient.Do(req)
	defer func() {
		if res == nil {
			fmt.Println("get no response")
		}else {
			res.Body.Close()
		}
		fmt.Println("get no response")
	}()

	//defer cancelFn()
	//
	//select {
	//case <-time.After(1 * time.Second):
	//	fmt.Println("overslept")
	//case <-ctx.Done():
	//	fmt.Println("call pipeline webhook Error: time out beyond 5 seconds")
	//	fmt.Println(ctx.Err()) // prints "context deadline exceeded"
	//}

	if err != nil{
		fmt.Println(" call http.client.Do fun error")
		return err
	}

	fmt.Println("--------------  read body")
	body, err := ioutil.ReadAll(res.Body)

	if err != nil{
		return err
	}

	resMap := map[string]string{}
	err = json.Unmarshal(body, &resMap)
	if err != nil{
		return err
	}else {
		if resMap["code"] == "200"{
			fmt.Println("call pipeline webhook successful")

			return nil
		}else {
			return errors.Errorf("call pipeline webhook Error: get webhook response code: %s", resMap["code"])
		}
	}
}

func webhookDefer(){

	// Pass a context with a timeout to tell a blocking function that it
	// should abandon its work after the timeout elapses.
	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()

	select {
	case <-ctx.Done():
		fmt.Println(ctx.Err()) // prints "context deadline exceeded"
	}

	fmt.Println("--------------------")

}