/*
   遵循 channel closing principle的方案
 */
package channel_close

import (
	"fmt"
	"log"
	"math/rand"
	"strconv"
	"sync"
	"time"
)

func main() {

	oneSenderMultiReceiver()

	//oneReceiverMultiSender()

	//signalChannel()

	//closeChannel()
}

func closeChannel()  {
	ch := make(chan int, 3)
	go func() {
		ch <- 1
		ch <- 2
		ch <- 3
		ch <- 4 // 会阻塞写不入, 除非ch已接收
		close(ch) // 关闭后不能再写入, 并且缓冲区内为空时则返回零值
	}()
	fmt.Println("buffer channel int",
		<-ch,
		<-ch,
		<-ch,
		<-ch,
		<-ch,
		//再次从一个已经被关闭的的channel中接收。得到返回chan type的零值
		<-ch)
}

// M个receivers，一个sender
func oneSenderMultiReceiver()  {
	rand.Seed(time.Now().UnixNano())
	log.SetFlags(0)

	// ...
	const MaxRandomNumber = 100000
	const NumReceivers = 10

	wgReceivers := sync.WaitGroup{}
	wgReceivers.Add(NumReceivers)

	// ...
	dataCh := make(chan int, 100)

	// the sender
	go func() {
		for {
			if value := rand.Intn(MaxRandomNumber); value == 0 {
				// the only sender can close the channel safely.
				close(dataCh)
				return
			} else {
				dataCh <- value
			}
		}
	}()

	// receivers
	for i := 0; i < NumReceivers; i++ {
		go func() {
			defer wgReceivers.Done()

			// receive values until dataCh is closed and
			// the value buffer queue of dataCh is empty.
			//for value := range dataCh {
			//	log.Println(value)
			//}
			for{
				select {
				case value, ok := <-dataCh:

					// 收到退出通知
					if ok{

					}else {
						fmt.Println("----Exit: ", value)
						fmt.Println("After close ",
							<-dataCh,
							<-dataCh)
						return

					}
				}
			}

		}()
	}

	wgReceivers.Wait()
	fmt.Println("----------- END ---------")
}

// 一个receiver，N个sender，receiver通过关闭一个额外的signal channel说“请停止发送”
func oneReceiverMultiSender()  {
	rand.Seed(time.Now().UnixNano())
	log.SetFlags(0)

	// ...
	const MaxRandomNumber = 100000
	const NumSenders = 10

	wgReceivers := sync.WaitGroup{}
	wgReceivers.Add(1)

	wgSenders := sync.WaitGroup{}
	wgSenders.Add(NumSenders)

	// ...
	dataCh := make(chan int, 100)
	stopCh := make(chan string)
	// stopCh is an additional signal channel.
	// Its sender is the receiver of channel dataCh.
	// Its reveivers are the senders of channel dataCh.

	// senders
	for i := 0; i < NumSenders; i++ {
		go func() {
			defer wgSenders.Done()

			for {
				value := rand.Intn(MaxRandomNumber)

				select {
				case stop := <- stopCh:
					fmt.Println("----- ", stop)
					return
				case dataCh <- value:
				}
			}
		}()
	}

	// the receiver
	go func() {
		defer wgReceivers.Done()

		for value := range dataCh {
			if value == MaxRandomNumber-1 {
				// the receiver of the dataCh channel is
				// also the sender of the stopCh cahnnel.
				// It is safe to close the stop channel here.
				close(stopCh)
				return
			}

			//log.Println(value)
		}
	}()

	// ...
	wgReceivers.Wait()
	wgSenders.Wait()

	fmt.Println("----------- END ---------")
}


// M个receiver，N个sender，它们当中任意一个通过
// 通知一个moderator（仲裁者）关闭额外的signal channel
func signalChannel()  {

	rand.Seed(time.Now().UnixNano())
	log.SetFlags(0)

	// ...
	const MaxRandomNumber = 100000
	const NumReceivers = 10
	const NumSenders = 1000

	wgReceivers := sync.WaitGroup{}
	wgReceivers.Add(NumReceivers)

	// ...
	dataCh := make(chan int, 100)
	stopCh := make(chan struct{})
	// stopCh is an additional signal channel.
	// Its sender is the moderator goroutine shown below.
	// Its reveivers are all senders and receivers of dataCh.
	toStop := make(chan string, 1)
	// the channel toStop is used to notify the moderator
	// to close the additional signal channel (stopCh).
	// Its senders are any senders and receivers of dataCh.
	// Its reveiver is the moderator goroutine shown below.

	var stoppedBy string

	// moderator
	go func() {
		stoppedBy = <- toStop // part of the trick used to notify the moderator
		// to close the additional signal channel.
		close(stopCh)
	}()

	// senders
	for i := 0; i < NumSenders; i++ {
		go func(id string) {
			for {
				value := rand.Intn(MaxRandomNumber)
				if value == 0 {
					// here, a trick is used to notify the moderator
					// to close the additional signal channel.
					select {
					case toStop <- "sender#" + id:
					default:
					}
					return
				}

				// the first select here is to try to exit the
				// goroutine as early as possible.
				select {
				case <- stopCh:
					return
				default:
				}

				select {
				case <- stopCh:
					return
				case dataCh <- value:
				}
			}
		}(strconv.Itoa(i))
	}

	// receivers
	for i := 0; i < NumReceivers; i++ {
		go func(id string) {
			defer wgReceivers.Done()

			for {
				// same as senders, the first select here is to
				// try to exit the goroutine as early as possible.
				select {
				case <- stopCh:
					return
				default:
				}

				select {
				case <- stopCh:
					return
				case value := <-dataCh:
					//if value == MaxRandomNumber-1 {
					//	// the same trick is used to notify the moderator
					//	// to close the additional signal channel.
					//	select {
					//	case toStop <- "receiver#" + id:
					//	default:
					//	}
					//	return
					//}

					log.Println(value)
				}
			}
		}(strconv.Itoa(i))
	}

	// ...
	wgReceivers.Wait()
	log.Println("stopped by", stoppedBy)
}