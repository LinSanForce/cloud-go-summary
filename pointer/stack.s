"".memoryAlign STEXT size=1066 args=0x0 locals=0x168
    // 栈大小48
	0x0000 00000 (main.go:37)	TEXT	"".memoryAlign(SB), ABIInternal, $360-0
	// 通过thread local storage获取当前g(g为goroutine的的数据结构)
	0x0000 00000 (main.go:37)	MOVQ	(TLS), CX
	// 比较SP和g.stackguard0
	0x0009 00009 (main.go:37)	LEAQ	-232(SP), AX
	0x0011 00017 (main.go:37)	CMPQ	AX, 16(CX)
	// 小于g.stackguard0，jump到1056执行栈的扩容
	0x0015 00021 (main.go:37)	JLS	1056
	// 继续执行
	0x001b 00027 (main.go:37)	SUBQ	$360, SP
	0x0022 00034 (main.go:37)	MOVQ	BP, 352(SP)
	0x002a 00042 (main.go:37)	LEAQ	352(SP), BP

	// 用于垃圾回收
	0x0032 00050 (main.go:37)	FUNCDATA	$0, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x0032 00050 (main.go:37)	FUNCDATA	$1, gclocals·9ba39cf7fd4d1ece0848d41db9851eb9(SB)
	0x0032 00050 (main.go:37)	FUNCDATA	$2, gclocals·bfec7e55b3f043d1941c093912808913(SB)
	0x0032 00050 (main.go:37)	FUNCDATA	$3, "".memoryAlign.stkobj(SB)
	0x0032 00050 (main.go:38)	PCDATA	$0, $0
	0x0032 00050 (main.go:38)	PCDATA	$1, $1
	0x0032 00050 (main.go:38)	XORPS	X0, X0
	0x0035 00053 (main.go:38)	MOVUPS	X0, ""..autotmp_0+120(SP)
	0x003a 00058 (main.go:38)	PCDATA	$0, $1
	0x003a 00058 (main.go:38)	PCDATA	$1, $0
	0x003a 00058 (main.go:38)	LEAQ	""..autotmp_0+120(SP), AX
	0x003f 00063 (main.go:38)	MOVQ	AX, ""..autotmp_2+72(SP)
	0x0044 00068 (main.go:38)	TESTB	AL, (AX)
	0x0046 00070 (main.go:38)	PCDATA	$0, $2
	0x0046 00070 (main.go:38)	LEAQ	type.uintptr(SB), CX
	0x004d 00077 (main.go:38)	PCDATA	$0, $1
	0x004d 00077 (main.go:38)	MOVQ	CX, ""..autotmp_0+120(SP)
	0x0052 00082 (main.go:38)	PCDATA	$0, $2
	0x0052 00082 (main.go:38)	LEAQ	""..stmp_0(SB), CX
	0x0059 00089 (main.go:38)	PCDATA	$0, $1
	0x0059 00089 (main.go:38)	MOVQ	CX, ""..autotmp_0+128(SP)
	0x0061 00097 (main.go:38)	TESTB	AL, (AX)
	0x0063 00099 (main.go:38)	JMP	101
	0x0065 00101 (main.go:38)	MOVQ	AX, ""..autotmp_1+328(SP)
	0x006d 00109 (main.go:38)	MOVQ	$1, ""..autotmp_1+336(SP)
	0x0079 00121 (main.go:38)	MOVQ	$1, ""..autotmp_1+344(SP)
	0x0085 00133 (main.go:38)	PCDATA	$0, $0
	0x0085 00133 (main.go:38)	MOVQ	AX, (SP)
	0x0089 00137 (main.go:38)	MOVQ	$1, 8(SP)
	0x0092 00146 (main.go:38)	MOVQ	$1, 16(SP)
	0x009b 00155 (main.go:38)	CALL	fmt.Println(SB)
	0x00a0 00160 (main.go:43)	PCDATA	$1, $1
	0x00a0 00160 (main.go:43)	XORPS	X0, X0
	0x00a3 00163 (main.go:43)	MOVUPS	X0, ""..autotmp_0+120(SP)
	0x00a8 00168 (main.go:43)	PCDATA	$0, $1
	0x00a8 00168 (main.go:43)	PCDATA	$1, $0
	0x00a8 00168 (main.go:43)	LEAQ	""..autotmp_0+120(SP), AX
	0x00ad 00173 (main.go:43)	MOVQ	AX, ""..autotmp_4+64(SP)
	0x00b2 00178 (main.go:43)	TESTB	AL, (AX)
	0x00b4 00180 (main.go:43)	PCDATA	$0, $2
	0x00b4 00180 (main.go:43)	LEAQ	type.uintptr(SB), CX
	0x00bb 00187 (main.go:43)	PCDATA	$0, $1
	0x00bb 00187 (main.go:43)	MOVQ	CX, ""..autotmp_0+120(SP)
	0x00c0 00192 (main.go:43)	PCDATA	$0, $2
	0x00c0 00192 (main.go:43)	LEAQ	""..stmp_1(SB), CX
	0x00c7 00199 (main.go:43)	PCDATA	$0, $1
	0x00c7 00199 (main.go:43)	MOVQ	CX, ""..autotmp_0+128(SP)
	0x00cf 00207 (main.go:43)	TESTB	AL, (AX)
	0x00d1 00209 (main.go:43)	JMP	211
	0x00d3 00211 (main.go:43)	MOVQ	AX, ""..autotmp_3+208(SP)
	0x00db 00219 (main.go:43)	MOVQ	$1, ""..autotmp_3+216(SP)
	0x00e7 00231 (main.go:43)	MOVQ	$1, ""..autotmp_3+224(SP)
	0x00f3 00243 (main.go:43)	PCDATA	$0, $0
	0x00f3 00243 (main.go:43)	MOVQ	AX, (SP)
	0x00f7 00247 (main.go:43)	MOVQ	$1, 8(SP)
	0x0100 00256 (main.go:43)	MOVQ	$1, 16(SP)
	0x0109 00265 (main.go:43)	CALL	fmt.Println(SB)
	0x010e 00270 (main.go:44)	PCDATA	$1, $1
	0x010e 00270 (main.go:44)	XORPS	X0, X0
	0x0111 00273 (main.go:44)	MOVUPS	X0, ""..autotmp_0+120(SP)
	0x0116 00278 (main.go:44)	PCDATA	$0, $1
	0x0116 00278 (main.go:44)	PCDATA	$1, $0
	0x0116 00278 (main.go:44)	LEAQ	""..autotmp_0+120(SP), AX
	0x011b 00283 (main.go:44)	MOVQ	AX, ""..autotmp_6+56(SP)
	0x0120 00288 (main.go:44)	TESTB	AL, (AX)
	0x0122 00290 (main.go:44)	PCDATA	$0, $2
	0x0122 00290 (main.go:44)	LEAQ	type.uintptr(SB), CX
	0x0129 00297 (main.go:44)	PCDATA	$0, $1
	0x0129 00297 (main.go:44)	MOVQ	CX, ""..autotmp_0+120(SP)
	0x012e 00302 (main.go:44)	PCDATA	$0, $2
	0x012e 00302 (main.go:44)	LEAQ	""..stmp_2(SB), CX
	0x0135 00309 (main.go:44)	PCDATA	$0, $1
	0x0135 00309 (main.go:44)	MOVQ	CX, ""..autotmp_0+128(SP)
	0x013d 00317 (main.go:44)	TESTB	AL, (AX)
	0x013f 00319 (main.go:44)	JMP	321
	0x0141 00321 (main.go:44)	MOVQ	AX, ""..autotmp_5+184(SP)
	0x0149 00329 (main.go:44)	MOVQ	$1, ""..autotmp_5+192(SP)
	0x0155 00341 (main.go:44)	MOVQ	$1, ""..autotmp_5+200(SP)
	0x0161 00353 (main.go:44)	PCDATA	$0, $0
	0x0161 00353 (main.go:44)	MOVQ	AX, (SP)
	0x0165 00357 (main.go:44)	MOVQ	$1, 8(SP)
	0x016e 00366 (main.go:44)	MOVQ	$1, 16(SP)
	0x0177 00375 (main.go:44)	CALL	fmt.Println(SB)
	0x017c 00380 (main.go:45)	PCDATA	$1, $1
	0x017c 00380 (main.go:45)	XORPS	X0, X0
	0x017f 00383 (main.go:45)	MOVUPS	X0, ""..autotmp_0+120(SP)
	0x0184 00388 (main.go:45)	PCDATA	$0, $1
	0x0184 00388 (main.go:45)	PCDATA	$1, $0
	0x0184 00388 (main.go:45)	LEAQ	""..autotmp_0+120(SP), AX
	0x0189 00393 (main.go:45)	MOVQ	AX, ""..autotmp_8+48(SP)
	0x018e 00398 (main.go:45)	TESTB	AL, (AX)
	0x0190 00400 (main.go:45)	PCDATA	$0, $2
	0x0190 00400 (main.go:45)	LEAQ	type.uintptr(SB), CX
	0x0197 00407 (main.go:45)	PCDATA	$0, $1
	0x0197 00407 (main.go:45)	MOVQ	CX, ""..autotmp_0+120(SP)
	0x019c 00412 (main.go:45)	PCDATA	$0, $2
	0x019c 00412 (main.go:45)	LEAQ	""..stmp_3(SB), CX
	0x01a3 00419 (main.go:45)	PCDATA	$0, $1
	0x01a3 00419 (main.go:45)	MOVQ	CX, ""..autotmp_0+128(SP)
	0x01ab 00427 (main.go:45)	TESTB	AL, (AX)
	0x01ad 00429 (main.go:45)	JMP	431
	0x01af 00431 (main.go:45)	MOVQ	AX, ""..autotmp_7+160(SP)
	0x01b7 00439 (main.go:45)	MOVQ	$1, ""..autotmp_7+168(SP)
	0x01c3 00451 (main.go:45)	MOVQ	$1, ""..autotmp_7+176(SP)
	0x01cf 00463 (main.go:45)	PCDATA	$0, $0
	0x01cf 00463 (main.go:45)	MOVQ	AX, (SP)
	0x01d3 00467 (main.go:45)	MOVQ	$1, 8(SP)
	0x01dc 00476 (main.go:45)	MOVQ	$1, 16(SP)
	0x01e5 00485 (main.go:45)	CALL	fmt.Println(SB)
	0x01ea 00490 (main.go:48)	PCDATA	$1, $1
	0x01ea 00490 (main.go:48)	XORPS	X0, X0
	0x01ed 00493 (main.go:48)	MOVUPS	X0, ""..autotmp_0+120(SP)
	0x01f2 00498 (main.go:48)	PCDATA	$0, $1
	0x01f2 00498 (main.go:48)	PCDATA	$1, $0
	0x01f2 00498 (main.go:48)	LEAQ	""..autotmp_0+120(SP), AX
	0x01f7 00503 (main.go:48)	MOVQ	AX, ""..autotmp_10+112(SP)
	0x01fc 00508 (main.go:48)	TESTB	AL, (AX)
	0x01fe 00510 (main.go:48)	PCDATA	$0, $2
	0x01fe 00510 (main.go:48)	LEAQ	type.string(SB), CX
	0x0205 00517 (main.go:48)	PCDATA	$0, $1
	0x0205 00517 (main.go:48)	MOVQ	CX, ""..autotmp_0+120(SP)
	0x020a 00522 (main.go:48)	PCDATA	$0, $2
	0x020a 00522 (main.go:48)	LEAQ	""..stmp_4(SB), CX
	0x0211 00529 (main.go:48)	PCDATA	$0, $1
	0x0211 00529 (main.go:48)	MOVQ	CX, ""..autotmp_0+128(SP)
	0x0219 00537 (main.go:48)	TESTB	AL, (AX)
	0x021b 00539 (main.go:48)	JMP	541
	0x021d 00541 (main.go:48)	MOVQ	AX, ""..autotmp_9+136(SP)
	0x0225 00549 (main.go:48)	MOVQ	$1, ""..autotmp_9+144(SP)
	0x0231 00561 (main.go:48)	MOVQ	$1, ""..autotmp_9+152(SP)
	0x023d 00573 (main.go:48)	PCDATA	$0, $0
	0x023d 00573 (main.go:48)	MOVQ	AX, (SP)
	0x0241 00577 (main.go:48)	MOVQ	$1, 8(SP)
	0x024a 00586 (main.go:48)	MOVQ	$1, 16(SP)
	0x0253 00595 (main.go:48)	CALL	fmt.Println(SB)
	0x0258 00600 (main.go:49)	PCDATA	$1, $1
	0x0258 00600 (main.go:49)	XORPS	X0, X0
	0x025b 00603 (main.go:49)	MOVUPS	X0, ""..autotmp_0+120(SP)
	0x0260 00608 (main.go:49)	PCDATA	$0, $1
	0x0260 00608 (main.go:49)	PCDATA	$1, $0
	0x0260 00608 (main.go:49)	LEAQ	""..autotmp_0+120(SP), AX
	0x0265 00613 (main.go:49)	MOVQ	AX, ""..autotmp_12+104(SP)
	0x026a 00618 (main.go:49)	TESTB	AL, (AX)
	0x026c 00620 (main.go:49)	PCDATA	$0, $2
	0x026c 00620 (main.go:49)	LEAQ	type.uintptr(SB), CX
	0x0273 00627 (main.go:49)	PCDATA	$0, $1
	0x0273 00627 (main.go:49)	MOVQ	CX, ""..autotmp_0+120(SP)
	0x0278 00632 (main.go:49)	PCDATA	$0, $2
	0x0278 00632 (main.go:49)	LEAQ	""..stmp_5(SB), CX
	0x027f 00639 (main.go:49)	PCDATA	$0, $1
	0x027f 00639 (main.go:49)	MOVQ	CX, ""..autotmp_0+128(SP)
	0x0287 00647 (main.go:49)	TESTB	AL, (AX)
	0x0289 00649 (main.go:49)	JMP	651
	0x028b 00651 (main.go:49)	MOVQ	AX, ""..autotmp_11+304(SP)
	0x0293 00659 (main.go:49)	MOVQ	$1, ""..autotmp_11+312(SP)
	0x029f 00671 (main.go:49)	MOVQ	$1, ""..autotmp_11+320(SP)
	0x02ab 00683 (main.go:49)	PCDATA	$0, $0
	0x02ab 00683 (main.go:49)	MOVQ	AX, (SP)
	0x02af 00687 (main.go:49)	MOVQ	$1, 8(SP)
	0x02b8 00696 (main.go:49)	MOVQ	$1, 16(SP)
	0x02c1 00705 (main.go:49)	CALL	fmt.Println(SB)
	0x02c6 00710 (main.go:50)	PCDATA	$1, $1
	0x02c6 00710 (main.go:50)	XORPS	X0, X0
	0x02c9 00713 (main.go:50)	MOVUPS	X0, ""..autotmp_0+120(SP)
	0x02ce 00718 (main.go:50)	PCDATA	$0, $1
	0x02ce 00718 (main.go:50)	PCDATA	$1, $0
	0x02ce 00718 (main.go:50)	LEAQ	""..autotmp_0+120(SP), AX
	0x02d3 00723 (main.go:50)	MOVQ	AX, ""..autotmp_14+96(SP)
	0x02d8 00728 (main.go:50)	TESTB	AL, (AX)
	0x02da 00730 (main.go:50)	PCDATA	$0, $2
	0x02da 00730 (main.go:50)	LEAQ	type.uintptr(SB), CX
	0x02e1 00737 (main.go:50)	PCDATA	$0, $1
	0x02e1 00737 (main.go:50)	MOVQ	CX, ""..autotmp_0+120(SP)
	0x02e6 00742 (main.go:50)	PCDATA	$0, $2
	0x02e6 00742 (main.go:50)	LEAQ	""..stmp_6(SB), CX
	0x02ed 00749 (main.go:50)	PCDATA	$0, $1
	0x02ed 00749 (main.go:50)	MOVQ	CX, ""..autotmp_0+128(SP)
	0x02f5 00757 (main.go:50)	TESTB	AL, (AX)
	0x02f7 00759 (main.go:50)	JMP	761
	0x02f9 00761 (main.go:50)	MOVQ	AX, ""..autotmp_13+280(SP)
	0x0301 00769 (main.go:50)	MOVQ	$1, ""..autotmp_13+288(SP)
	0x030d 00781 (main.go:50)	MOVQ	$1, ""..autotmp_13+296(SP)
	0x0319 00793 (main.go:50)	PCDATA	$0, $0
	0x0319 00793 (main.go:50)	MOVQ	AX, (SP)
	0x031d 00797 (main.go:50)	MOVQ	$1, 8(SP)
	0x0326 00806 (main.go:50)	MOVQ	$1, 16(SP)
	0x032f 00815 (main.go:50)	CALL	fmt.Println(SB)
	0x0334 00820 (main.go:51)	PCDATA	$1, $1
	0x0334 00820 (main.go:51)	XORPS	X0, X0
	0x0337 00823 (main.go:51)	MOVUPS	X0, ""..autotmp_0+120(SP)
	0x033c 00828 (main.go:51)	PCDATA	$0, $1
	0x033c 00828 (main.go:51)	PCDATA	$1, $0
	0x033c 00828 (main.go:51)	LEAQ	""..autotmp_0+120(SP), AX
	0x0341 00833 (main.go:51)	MOVQ	AX, ""..autotmp_16+88(SP)
	0x0346 00838 (main.go:51)	TESTB	AL, (AX)
	0x0348 00840 (main.go:51)	PCDATA	$0, $2
	0x0348 00840 (main.go:51)	LEAQ	type.uintptr(SB), CX
	0x034f 00847 (main.go:51)	PCDATA	$0, $1
	0x034f 00847 (main.go:51)	MOVQ	CX, ""..autotmp_0+120(SP)
	0x0354 00852 (main.go:51)	PCDATA	$0, $2
	0x0354 00852 (main.go:51)	LEAQ	""..stmp_7(SB), CX
	0x035b 00859 (main.go:51)	PCDATA	$0, $1
	0x035b 00859 (main.go:51)	MOVQ	CX, ""..autotmp_0+128(SP)
	0x0363 00867 (main.go:51)	TESTB	AL, (AX)
	0x0365 00869 (main.go:51)	JMP	871
	0x0367 00871 (main.go:51)	MOVQ	AX, ""..autotmp_15+256(SP)
	0x036f 00879 (main.go:51)	MOVQ	$1, ""..autotmp_15+264(SP)
	0x037b 00891 (main.go:51)	MOVQ	$1, ""..autotmp_15+272(SP)
	0x0387 00903 (main.go:51)	PCDATA	$0, $0
	0x0387 00903 (main.go:51)	MOVQ	AX, (SP)
	0x038b 00907 (main.go:51)	MOVQ	$1, 8(SP)
	0x0394 00916 (main.go:51)	MOVQ	$1, 16(SP)
	0x039d 00925 (main.go:51)	CALL	fmt.Println(SB)
	0x03a2 00930 (main.go:52)	PCDATA	$1, $1
	0x03a2 00930 (main.go:52)	XORPS	X0, X0
	0x03a5 00933 (main.go:52)	MOVUPS	X0, ""..autotmp_0+120(SP)
	0x03aa 00938 (main.go:52)	PCDATA	$0, $1
	0x03aa 00938 (main.go:52)	PCDATA	$1, $0
	0x03aa 00938 (main.go:52)	LEAQ	""..autotmp_0+120(SP), AX
	0x03af 00943 (main.go:52)	MOVQ	AX, ""..autotmp_18+80(SP)
	0x03b4 00948 (main.go:52)	TESTB	AL, (AX)
	0x03b6 00950 (main.go:52)	PCDATA	$0, $2
	0x03b6 00950 (main.go:52)	LEAQ	type.uintptr(SB), CX
	0x03bd 00957 (main.go:52)	PCDATA	$0, $1
	0x03bd 00957 (main.go:52)	MOVQ	CX, ""..autotmp_0+120(SP)
	0x03c2 00962 (main.go:52)	PCDATA	$0, $2
	0x03c2 00962 (main.go:52)	LEAQ	""..stmp_8(SB), CX
	0x03c9 00969 (main.go:52)	PCDATA	$0, $1
	0x03c9 00969 (main.go:52)	MOVQ	CX, ""..autotmp_0+128(SP)
	0x03d1 00977 (main.go:52)	TESTB	AL, (AX)
	0x03d3 00979 (main.go:52)	JMP	981
	0x03d5 00981 (main.go:52)	MOVQ	AX, ""..autotmp_17+232(SP)
	0x03dd 00989 (main.go:52)	MOVQ	$1, ""..autotmp_17+240(SP)
	0x03e9 01001 (main.go:52)	MOVQ	$1, ""..autotmp_17+248(SP)
	0x03f5 01013 (main.go:52)	PCDATA	$0, $0
	0x03f5 01013 (main.go:52)	MOVQ	AX, (SP)
	0x03f9 01017 (main.go:52)	MOVQ	$1, 8(SP)
	0x0402 01026 (main.go:52)	MOVQ	$1, 16(SP)
	0x040b 01035 (main.go:52)	CALL	fmt.Println(SB)
	0x0410 01040 (main.go:53)	MOVQ	352(SP), BP
	0x0418 01048 (main.go:53)	ADDQ	$360, SP
	0x041f 01055 (main.go:53)	RET
	0x0420 01056 (main.go:53)	NOP
	0x0420 01056 (main.go:37)	PCDATA	$1, $-1
	0x0420 01056 (main.go:37)	PCDATA	$0, $-1
	0x0420 01056 (main.go:37)	CALL	runtime.morestack_noctxt(SB)
	0x0425 01061 (main.go:37)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 8d 84 24 18 ff ff  dH..%....H..$...
	0x0010 ff 48 3b 41 10 0f 86 05 04 00 00 48 81 ec 68 01  .H;A.......H..h.
	0x0020 00 00 48 89 ac 24 60 01 00 00 48 8d ac 24 60 01  ..H..$`...H..$`.
	0x0030 00 00 0f 57 c0 0f 11 44 24 78 48 8d 44 24 78 48  ...W...D$xH.D$xH
	0x0040 89 44 24 48 84 00 48 8d 0d 00 00 00 00 48 89 4c  .D$H..H......H.L
	0x0050 24 78 48 8d 0d 00 00 00 00 48 89 8c 24 80 00 00  $xH......H..$...
	0x0060 00 84 00 eb 00 48 89 84 24 48 01 00 00 48 c7 84  .....H..$H...H..
	0x0070 24 50 01 00 00 01 00 00 00 48 c7 84 24 58 01 00  $P.......H..$X..
	0x0080 00 01 00 00 00 48 89 04 24 48 c7 44 24 08 01 00  .....H..$H.D$...
	0x0090 00 00 48 c7 44 24 10 01 00 00 00 e8 00 00 00 00  ..H.D$..........
	0x00a0 0f 57 c0 0f 11 44 24 78 48 8d 44 24 78 48 89 44  .W...D$xH.D$xH.D
	0x00b0 24 40 84 00 48 8d 0d 00 00 00 00 48 89 4c 24 78  $@..H......H.L$x
	0x00c0 48 8d 0d 00 00 00 00 48 89 8c 24 80 00 00 00 84  H......H..$.....
	0x00d0 00 eb 00 48 89 84 24 d0 00 00 00 48 c7 84 24 d8  ...H..$....H..$.
	0x00e0 00 00 00 01 00 00 00 48 c7 84 24 e0 00 00 00 01  .......H..$.....
	0x00f0 00 00 00 48 89 04 24 48 c7 44 24 08 01 00 00 00  ...H..$H.D$.....
	0x0100 48 c7 44 24 10 01 00 00 00 e8 00 00 00 00 0f 57  H.D$...........W
	0x0110 c0 0f 11 44 24 78 48 8d 44 24 78 48 89 44 24 38  ...D$xH.D$xH.D$8
	0x0120 84 00 48 8d 0d 00 00 00 00 48 89 4c 24 78 48 8d  ..H......H.L$xH.
	0x0130 0d 00 00 00 00 48 89 8c 24 80 00 00 00 84 00 eb  .....H..$.......
	0x0140 00 48 89 84 24 b8 00 00 00 48 c7 84 24 c0 00 00  .H..$....H..$...
	0x0150 00 01 00 00 00 48 c7 84 24 c8 00 00 00 01 00 00  .....H..$.......
	0x0160 00 48 89 04 24 48 c7 44 24 08 01 00 00 00 48 c7  .H..$H.D$.....H.
	0x0170 44 24 10 01 00 00 00 e8 00 00 00 00 0f 57 c0 0f  D$...........W..
	0x0180 11 44 24 78 48 8d 44 24 78 48 89 44 24 30 84 00  .D$xH.D$xH.D$0..
	0x0190 48 8d 0d 00 00 00 00 48 89 4c 24 78 48 8d 0d 00  H......H.L$xH...
	0x01a0 00 00 00 48 89 8c 24 80 00 00 00 84 00 eb 00 48  ...H..$........H
	0x01b0 89 84 24 a0 00 00 00 48 c7 84 24 a8 00 00 00 01  ..$....H..$.....
	0x01c0 00 00 00 48 c7 84 24 b0 00 00 00 01 00 00 00 48  ...H..$........H
	0x01d0 89 04 24 48 c7 44 24 08 01 00 00 00 48 c7 44 24  ..$H.D$.....H.D$
	0x01e0 10 01 00 00 00 e8 00 00 00 00 0f 57 c0 0f 11 44  ...........W...D
	0x01f0 24 78 48 8d 44 24 78 48 89 44 24 70 84 00 48 8d  $xH.D$xH.D$p..H.
	0x0200 0d 00 00 00 00 48 89 4c 24 78 48 8d 0d 00 00 00  .....H.L$xH.....
	0x0210 00 48 89 8c 24 80 00 00 00 84 00 eb 00 48 89 84  .H..$........H..
	0x0220 24 88 00 00 00 48 c7 84 24 90 00 00 00 01 00 00  $....H..$.......
	0x0230 00 48 c7 84 24 98 00 00 00 01 00 00 00 48 89 04  .H..$........H..
	0x0240 24 48 c7 44 24 08 01 00 00 00 48 c7 44 24 10 01  $H.D$.....H.D$..
	0x0250 00 00 00 e8 00 00 00 00 0f 57 c0 0f 11 44 24 78  .........W...D$x
	0x0260 48 8d 44 24 78 48 89 44 24 68 84 00 48 8d 0d 00  H.D$xH.D$h..H...
	0x0270 00 00 00 48 89 4c 24 78 48 8d 0d 00 00 00 00 48  ...H.L$xH......H
	0x0280 89 8c 24 80 00 00 00 84 00 eb 00 48 89 84 24 30  ..$........H..$0
	0x0290 01 00 00 48 c7 84 24 38 01 00 00 01 00 00 00 48  ...H..$8.......H
	0x02a0 c7 84 24 40 01 00 00 01 00 00 00 48 89 04 24 48  ..$@.......H..$H
	0x02b0 c7 44 24 08 01 00 00 00 48 c7 44 24 10 01 00 00  .D$.....H.D$....
	0x02c0 00 e8 00 00 00 00 0f 57 c0 0f 11 44 24 78 48 8d  .......W...D$xH.
	0x02d0 44 24 78 48 89 44 24 60 84 00 48 8d 0d 00 00 00  D$xH.D$`..H.....
	0x02e0 00 48 89 4c 24 78 48 8d 0d 00 00 00 00 48 89 8c  .H.L$xH......H..
	0x02f0 24 80 00 00 00 84 00 eb 00 48 89 84 24 18 01 00  $........H..$...
	0x0300 00 48 c7 84 24 20 01 00 00 01 00 00 00 48 c7 84  .H..$ .......H..
	0x0310 24 28 01 00 00 01 00 00 00 48 89 04 24 48 c7 44  $(.......H..$H.D
	0x0320 24 08 01 00 00 00 48 c7 44 24 10 01 00 00 00 e8  $.....H.D$......
	0x0330 00 00 00 00 0f 57 c0 0f 11 44 24 78 48 8d 44 24  .....W...D$xH.D$
	0x0340 78 48 89 44 24 58 84 00 48 8d 0d 00 00 00 00 48  xH.D$X..H......H
	0x0350 89 4c 24 78 48 8d 0d 00 00 00 00 48 89 8c 24 80  .L$xH......H..$.
	0x0360 00 00 00 84 00 eb 00 48 89 84 24 00 01 00 00 48  .......H..$....H
	0x0370 c7 84 24 08 01 00 00 01 00 00 00 48 c7 84 24 10  ..$........H..$.
	0x0380 01 00 00 01 00 00 00 48 89 04 24 48 c7 44 24 08  .......H..$H.D$.
	0x0390 01 00 00 00 48 c7 44 24 10 01 00 00 00 e8 00 00  ....H.D$........
	0x03a0 00 00 0f 57 c0 0f 11 44 24 78 48 8d 44 24 78 48  ...W...D$xH.D$xH
	0x03b0 89 44 24 50 84 00 48 8d 0d 00 00 00 00 48 89 4c  .D$P..H......H.L
	0x03c0 24 78 48 8d 0d 00 00 00 00 48 89 8c 24 80 00 00  $xH......H..$...
	0x03d0 00 84 00 eb 00 48 89 84 24 e8 00 00 00 48 c7 84  .....H..$....H..
	0x03e0 24 f0 00 00 00 01 00 00 00 48 c7 84 24 f8 00 00  $........H..$...
	0x03f0 00 01 00 00 00 48 89 04 24 48 c7 44 24 08 01 00  .....H..$H.D$...
	0x0400 00 00 48 c7 44 24 10 01 00 00 00 e8 00 00 00 00  ..H.D$..........
	0x0410 48 8b ac 24 60 01 00 00 48 81 c4 68 01 00 00 c3  H..$`...H..h....
	0x0420 e8 00 00 00 00 e9 d6 fb ff ff                    ..........
	rel 5+4 t=16 TLS+0
	rel 73+4 t=15 type.uintptr+0
	rel 85+4 t=15 ""..stmp_0+0
	rel 156+4 t=8 fmt.Println+0
	rel 183+4 t=15 type.uintptr+0
	rel 195+4 t=15 ""..stmp_1+0
	rel 266+4 t=8 fmt.Println+0
	rel 293+4 t=15 type.uintptr+0
	rel 305+4 t=15 ""..stmp_2+0
	rel 376+4 t=8 fmt.Println+0
	rel 403+4 t=15 type.uintptr+0
	rel 415+4 t=15 ""..stmp_3+0
	rel 486+4 t=8 fmt.Println+0
	rel 513+4 t=15 type.string+0
	rel 525+4 t=15 ""..stmp_4+0
	rel 596+4 t=8 fmt.Println+0
	rel 623+4 t=15 type.uintptr+0
	rel 635+4 t=15 ""..stmp_5+0
	rel 706+4 t=8 fmt.Println+0
	rel 733+4 t=15 type.uintptr+0
	rel 745+4 t=15 ""..stmp_6+0
	rel 816+4 t=8 fmt.Println+0
	rel 843+4 t=15 type.uintptr+0
	rel 855+4 t=15 ""..stmp_7+0
	rel 926+4 t=8 fmt.Println+0
	rel 953+4 t=15 type.uintptr+0
	rel 965+4 t=15 ""..stmp_8+0
	rel 1036+4 t=8 fmt.Println+0
	rel 1057+4 t=8 runtime.morestack_noctxt+0
"".main STEXT size=111 args=0x0 locals=0x30
	0x0000 00000 (main.go:55)	TEXT	"".main(SB), ABIInternal, $48-0
	0x0000 00000 (main.go:55)	MOVQ	(TLS), CX
	0x0009 00009 (main.go:55)	CMPQ	SP, 16(CX)
	0x000d 00013 (main.go:55)	JLS	104
	0x000f 00015 (main.go:55)	SUBQ	$48, SP
	0x0013 00019 (main.go:55)	MOVQ	BP, 40(SP)
	0x0018 00024 (main.go:55)	LEAQ	40(SP), BP
	0x001d 00029 (main.go:55)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (main.go:55)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (main.go:55)	FUNCDATA	$2, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (main.go:59)	PCDATA	$0, $0
	0x001d 00029 (main.go:59)	PCDATA	$1, $0
	0x001d 00029 (main.go:59)	MOVQ	$1, "".a+32(SP)
	0x0026 00038 (main.go:59)	MOVQ	$2, "".b+24(SP)
	0x002f 00047 (main.go:60)	MOVQ	"".a+32(SP), AX
	0x0034 00052 (main.go:60)	MOVQ	AX, (SP)
	0x0038 00056 (main.go:60)	MOVQ	$2, 8(SP)
	0x0041 00065 (main.go:60)	CALL	"".add1(SB)
	0x0046 00070 (main.go:61)	MOVQ	"".a+32(SP), AX
	0x004b 00075 (main.go:61)	MOVQ	AX, (SP)
	0x004f 00079 (main.go:61)	MOVQ	"".b+24(SP), AX
	0x0054 00084 (main.go:61)	MOVQ	AX, 8(SP)
	0x0059 00089 (main.go:61)	CALL	"".add2(SB)
	0x005e 00094 (main.go:62)	MOVQ	40(SP), BP
	0x0063 00099 (main.go:62)	ADDQ	$48, SP
	0x0067 00103 (main.go:62)	RET
	0x0068 00104 (main.go:62)	NOP
	0x0068 00104 (main.go:55)	PCDATA	$1, $-1
	0x0068 00104 (main.go:55)	PCDATA	$0, $-1
	0x0068 00104 (main.go:55)	CALL	runtime.morestack_noctxt(SB)
	0x006d 00109 (main.go:55)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 59 48  dH..%....H;a.vYH
	0x0010 83 ec 30 48 89 6c 24 28 48 8d 6c 24 28 48 c7 44  ..0H.l$(H.l$(H.D
	0x0020 24 20 01 00 00 00 48 c7 44 24 18 02 00 00 00 48  $ ....H.D$.....H
	0x0030 8b 44 24 20 48 89 04 24 48 c7 44 24 08 02 00 00  .D$ H..$H.D$....
	0x0040 00 e8 00 00 00 00 48 8b 44 24 20 48 89 04 24 48  ......H.D$ H..$H
	0x0050 8b 44 24 18 48 89 44 24 08 e8 00 00 00 00 48 8b  .D$.H.D$......H.
	0x0060 6c 24 28 48 83 c4 30 c3 e8 00 00 00 00 eb 91     l$(H..0........
	rel 5+4 t=16 TLS+0
	rel 66+4 t=8 "".add1+0
	rel 90+4 t=8 "".add2+0
	rel 105+4 t=8 runtime.morestack_noctxt+0
"".V.PutI STEXT size=200 args=0x10 locals=0x80
	0x0000 00000 (main.go:72)	TEXT	"".V.PutI(SB), ABIInternal, $128-16
	0x0000 00000 (main.go:72)	MOVQ	(TLS), CX
	0x0009 00009 (main.go:72)	CMPQ	SP, 16(CX)
	0x000d 00013 (main.go:72)	JLS	190
	0x0013 00019 (main.go:72)	ADDQ	$-128, SP
	0x0017 00023 (main.go:72)	MOVQ	BP, 120(SP)
	0x001c 00028 (main.go:72)	LEAQ	120(SP), BP
	0x0021 00033 (main.go:72)	FUNCDATA	$0, gclocals·f6bd6b3389b872033d462029172c8612(SB)
	0x0021 00033 (main.go:72)	FUNCDATA	$1, gclocals·21ac5cb560c4179d5f078a79b4f35106(SB)
	0x0021 00033 (main.go:72)	FUNCDATA	$2, gclocals·f6aec3988379d2bd21c69c093370a150(SB)
	0x0021 00033 (main.go:72)	FUNCDATA	$3, "".V.PutI.stkobj(SB)
	0x0021 00033 (main.go:73)	PCDATA	$0, $0
	0x0021 00033 (main.go:73)	PCDATA	$1, $0
	0x0021 00033 (main.go:73)	MOVL	"".this+136(SP), AX
	0x0028 00040 (main.go:73)	MOVL	AX, (SP)
	0x002b 00043 (main.go:73)	CALL	runtime.convT32(SB)
	0x0030 00048 (main.go:73)	PCDATA	$0, $1
	0x0030 00048 (main.go:73)	MOVQ	8(SP), AX
	0x0035 00053 (main.go:73)	PCDATA	$0, $0
	0x0035 00053 (main.go:73)	PCDATA	$1, $1
	0x0035 00053 (main.go:73)	MOVQ	AX, ""..autotmp_2+72(SP)
	0x003a 00058 (main.go:73)	PCDATA	$1, $2
	0x003a 00058 (main.go:73)	XORPS	X0, X0
	0x003d 00061 (main.go:73)	MOVUPS	X0, ""..autotmp_1+80(SP)
	0x0042 00066 (main.go:73)	PCDATA	$0, $1
	0x0042 00066 (main.go:73)	PCDATA	$1, $1
	0x0042 00066 (main.go:73)	LEAQ	""..autotmp_1+80(SP), AX
	0x0047 00071 (main.go:73)	MOVQ	AX, ""..autotmp_4+64(SP)
	0x004c 00076 (main.go:73)	TESTB	AL, (AX)
	0x004e 00078 (main.go:73)	PCDATA	$0, $2
	0x004e 00078 (main.go:73)	PCDATA	$1, $0
	0x004e 00078 (main.go:73)	MOVQ	""..autotmp_2+72(SP), CX
	0x0053 00083 (main.go:73)	PCDATA	$0, $3
	0x0053 00083 (main.go:73)	LEAQ	type.int32(SB), DX
	0x005a 00090 (main.go:73)	PCDATA	$0, $2
	0x005a 00090 (main.go:73)	MOVQ	DX, ""..autotmp_1+80(SP)
	0x005f 00095 (main.go:73)	PCDATA	$0, $1
	0x005f 00095 (main.go:73)	MOVQ	CX, ""..autotmp_1+88(SP)
	0x0064 00100 (main.go:73)	TESTB	AL, (AX)
	0x0066 00102 (main.go:73)	JMP	104
	0x0068 00104 (main.go:73)	PCDATA	$0, $0
	0x0068 00104 (main.go:73)	PCDATA	$1, $3
	0x0068 00104 (main.go:73)	MOVQ	AX, ""..autotmp_3+96(SP)
	0x006d 00109 (main.go:73)	MOVQ	$1, ""..autotmp_3+104(SP)
	0x0076 00118 (main.go:73)	MOVQ	$1, ""..autotmp_3+112(SP)
	0x007f 00127 (main.go:73)	PCDATA	$0, $1
	0x007f 00127 (main.go:73)	LEAQ	go.string."i=%d\n"(SB), AX
	0x0086 00134 (main.go:73)	PCDATA	$0, $0
	0x0086 00134 (main.go:73)	MOVQ	AX, (SP)
	0x008a 00138 (main.go:73)	MOVQ	$5, 8(SP)
	0x0093 00147 (main.go:73)	PCDATA	$0, $1
	0x0093 00147 (main.go:73)	PCDATA	$1, $0
	0x0093 00147 (main.go:73)	MOVQ	""..autotmp_3+96(SP), AX
	0x0098 00152 (main.go:73)	PCDATA	$0, $0
	0x0098 00152 (main.go:73)	MOVQ	AX, 16(SP)
	0x009d 00157 (main.go:73)	MOVQ	$1, 24(SP)
	0x00a6 00166 (main.go:73)	MOVQ	$1, 32(SP)
	0x00af 00175 (main.go:73)	CALL	fmt.Printf(SB)
	0x00b4 00180 (main.go:74)	MOVQ	120(SP), BP
	0x00b9 00185 (main.go:74)	SUBQ	$-128, SP
	0x00bd 00189 (main.go:74)	RET
	0x00be 00190 (main.go:74)	NOP
	0x00be 00190 (main.go:72)	PCDATA	$1, $-1
	0x00be 00190 (main.go:72)	PCDATA	$0, $-1
	0x00be 00190 (main.go:72)	CALL	runtime.morestack_noctxt(SB)
	0x00c3 00195 (main.go:72)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 ab  dH..%....H;a....
	0x0010 00 00 00 48 83 c4 80 48 89 6c 24 78 48 8d 6c 24  ...H...H.l$xH.l$
	0x0020 78 8b 84 24 88 00 00 00 89 04 24 e8 00 00 00 00  x..$......$.....
	0x0030 48 8b 44 24 08 48 89 44 24 48 0f 57 c0 0f 11 44  H.D$.H.D$H.W...D
	0x0040 24 50 48 8d 44 24 50 48 89 44 24 40 84 00 48 8b  $PH.D$PH.D$@..H.
	0x0050 4c 24 48 48 8d 15 00 00 00 00 48 89 54 24 50 48  L$HH......H.T$PH
	0x0060 89 4c 24 58 84 00 eb 00 48 89 44 24 60 48 c7 44  .L$X....H.D$`H.D
	0x0070 24 68 01 00 00 00 48 c7 44 24 70 01 00 00 00 48  $h....H.D$p....H
	0x0080 8d 05 00 00 00 00 48 89 04 24 48 c7 44 24 08 05  ......H..$H.D$..
	0x0090 00 00 00 48 8b 44 24 60 48 89 44 24 10 48 c7 44  ...H.D$`H.D$.H.D
	0x00a0 24 18 01 00 00 00 48 c7 44 24 20 01 00 00 00 e8  $.....H.D$ .....
	0x00b0 00 00 00 00 48 8b 6c 24 78 48 83 ec 80 c3 e8 00  ....H.l$xH......
	0x00c0 00 00 00 e9 38 ff ff ff                          ....8...
	rel 5+4 t=16 TLS+0
	rel 44+4 t=8 runtime.convT32+0
	rel 86+4 t=15 type.int32+0
	rel 130+4 t=15 go.string."i=%d\n"+0
	rel 176+4 t=8 fmt.Printf+0
	rel 191+4 t=8 runtime.morestack_noctxt+0
"".V.PutJ STEXT size=202 args=0x10 locals=0x80
	0x0000 00000 (main.go:76)	TEXT	"".V.PutJ(SB), ABIInternal, $128-16
	0x0000 00000 (main.go:76)	MOVQ	(TLS), CX
	0x0009 00009 (main.go:76)	CMPQ	SP, 16(CX)
	0x000d 00013 (main.go:76)	JLS	192
	0x0013 00019 (main.go:76)	ADDQ	$-128, SP
	0x0017 00023 (main.go:76)	MOVQ	BP, 120(SP)
	0x001c 00028 (main.go:76)	LEAQ	120(SP), BP
	0x0021 00033 (main.go:76)	FUNCDATA	$0, gclocals·f6bd6b3389b872033d462029172c8612(SB)
	0x0021 00033 (main.go:76)	FUNCDATA	$1, gclocals·21ac5cb560c4179d5f078a79b4f35106(SB)
	0x0021 00033 (main.go:76)	FUNCDATA	$2, gclocals·f6aec3988379d2bd21c69c093370a150(SB)
	0x0021 00033 (main.go:76)	FUNCDATA	$3, "".V.PutJ.stkobj(SB)
	0x0021 00033 (main.go:77)	PCDATA	$0, $0
	0x0021 00033 (main.go:77)	PCDATA	$1, $0
	0x0021 00033 (main.go:77)	MOVQ	"".this+144(SP), AX
	0x0029 00041 (main.go:77)	MOVQ	AX, (SP)
	0x002d 00045 (main.go:77)	CALL	runtime.convT64(SB)
	0x0032 00050 (main.go:77)	PCDATA	$0, $1
	0x0032 00050 (main.go:77)	MOVQ	8(SP), AX
	0x0037 00055 (main.go:77)	PCDATA	$0, $0
	0x0037 00055 (main.go:77)	PCDATA	$1, $1
	0x0037 00055 (main.go:77)	MOVQ	AX, ""..autotmp_2+72(SP)
	0x003c 00060 (main.go:77)	PCDATA	$1, $2
	0x003c 00060 (main.go:77)	XORPS	X0, X0
	0x003f 00063 (main.go:77)	MOVUPS	X0, ""..autotmp_1+80(SP)
	0x0044 00068 (main.go:77)	PCDATA	$0, $1
	0x0044 00068 (main.go:77)	PCDATA	$1, $1
	0x0044 00068 (main.go:77)	LEAQ	""..autotmp_1+80(SP), AX
	0x0049 00073 (main.go:77)	MOVQ	AX, ""..autotmp_4+64(SP)
	0x004e 00078 (main.go:77)	TESTB	AL, (AX)
	0x0050 00080 (main.go:77)	PCDATA	$0, $2
	0x0050 00080 (main.go:77)	PCDATA	$1, $0
	0x0050 00080 (main.go:77)	MOVQ	""..autotmp_2+72(SP), CX
	0x0055 00085 (main.go:77)	PCDATA	$0, $3
	0x0055 00085 (main.go:77)	LEAQ	type.int64(SB), DX
	0x005c 00092 (main.go:77)	PCDATA	$0, $2
	0x005c 00092 (main.go:77)	MOVQ	DX, ""..autotmp_1+80(SP)
	0x0061 00097 (main.go:77)	PCDATA	$0, $1
	0x0061 00097 (main.go:77)	MOVQ	CX, ""..autotmp_1+88(SP)
	0x0066 00102 (main.go:77)	TESTB	AL, (AX)
	0x0068 00104 (main.go:77)	JMP	106
	0x006a 00106 (main.go:77)	PCDATA	$0, $0
	0x006a 00106 (main.go:77)	PCDATA	$1, $3
	0x006a 00106 (main.go:77)	MOVQ	AX, ""..autotmp_3+96(SP)
	0x006f 00111 (main.go:77)	MOVQ	$1, ""..autotmp_3+104(SP)
	0x0078 00120 (main.go:77)	MOVQ	$1, ""..autotmp_3+112(SP)
	0x0081 00129 (main.go:77)	PCDATA	$0, $1
	0x0081 00129 (main.go:77)	LEAQ	go.string."j=%d\n"(SB), AX
	0x0088 00136 (main.go:77)	PCDATA	$0, $0
	0x0088 00136 (main.go:77)	MOVQ	AX, (SP)
	0x008c 00140 (main.go:77)	MOVQ	$5, 8(SP)
	0x0095 00149 (main.go:77)	PCDATA	$0, $1
	0x0095 00149 (main.go:77)	PCDATA	$1, $0
	0x0095 00149 (main.go:77)	MOVQ	""..autotmp_3+96(SP), AX
	0x009a 00154 (main.go:77)	PCDATA	$0, $0
	0x009a 00154 (main.go:77)	MOVQ	AX, 16(SP)
	0x009f 00159 (main.go:77)	MOVQ	$1, 24(SP)
	0x00a8 00168 (main.go:77)	MOVQ	$1, 32(SP)
	0x00b1 00177 (main.go:77)	CALL	fmt.Printf(SB)
	0x00b6 00182 (main.go:78)	MOVQ	120(SP), BP
	0x00bb 00187 (main.go:78)	SUBQ	$-128, SP
	0x00bf 00191 (main.go:78)	RET
	0x00c0 00192 (main.go:78)	NOP
	0x00c0 00192 (main.go:76)	PCDATA	$1, $-1
	0x00c0 00192 (main.go:76)	PCDATA	$0, $-1
	0x00c0 00192 (main.go:76)	CALL	runtime.morestack_noctxt(SB)
	0x00c5 00197 (main.go:76)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 ad  dH..%....H;a....
	0x0010 00 00 00 48 83 c4 80 48 89 6c 24 78 48 8d 6c 24  ...H...H.l$xH.l$
	0x0020 78 48 8b 84 24 90 00 00 00 48 89 04 24 e8 00 00  xH..$....H..$...
	0x0030 00 00 48 8b 44 24 08 48 89 44 24 48 0f 57 c0 0f  ..H.D$.H.D$H.W..
	0x0040 11 44 24 50 48 8d 44 24 50 48 89 44 24 40 84 00  .D$PH.D$PH.D$@..
	0x0050 48 8b 4c 24 48 48 8d 15 00 00 00 00 48 89 54 24  H.L$HH......H.T$
	0x0060 50 48 89 4c 24 58 84 00 eb 00 48 89 44 24 60 48  PH.L$X....H.D$`H
	0x0070 c7 44 24 68 01 00 00 00 48 c7 44 24 70 01 00 00  .D$h....H.D$p...
	0x0080 00 48 8d 05 00 00 00 00 48 89 04 24 48 c7 44 24  .H......H..$H.D$
	0x0090 08 05 00 00 00 48 8b 44 24 60 48 89 44 24 10 48  .....H.D$`H.D$.H
	0x00a0 c7 44 24 18 01 00 00 00 48 c7 44 24 20 01 00 00  .D$.....H.D$ ...
	0x00b0 00 e8 00 00 00 00 48 8b 6c 24 78 48 83 ec 80 c3  ......H.l$xH....
	0x00c0 e8 00 00 00 00 e9 36 ff ff ff                    ......6...
	rel 5+4 t=16 TLS+0
	rel 46+4 t=8 runtime.convT64+0
	rel 88+4 t=15 type.int64+0
	rel 132+4 t=15 go.string."j=%d\n"+0
	rel 178+4 t=8 fmt.Printf+0
	rel 193+4 t=8 runtime.morestack_noctxt+0
"".pointerToComm STEXT size=646 args=0x0 locals=0x108
	0x0000 00000 (main.go:80)	TEXT	"".pointerToComm(SB), ABIInternal, $264-0
	0x0000 00000 (main.go:80)	MOVQ	(TLS), CX
	0x0009 00009 (main.go:80)	LEAQ	-136(SP), AX
	0x0011 00017 (main.go:80)	CMPQ	AX, 16(CX)
	0x0015 00021 (main.go:80)	JLS	636
	0x001b 00027 (main.go:80)	SUBQ	$264, SP
	0x0022 00034 (main.go:80)	MOVQ	BP, 256(SP)
	0x002a 00042 (main.go:80)	LEAQ	256(SP), BP
	0x0032 00050 (main.go:80)	FUNCDATA	$0, gclocals·f14a5bc6d08bc46424827f54d2e3f8ed(SB)
	0x0032 00050 (main.go:80)	FUNCDATA	$1, gclocals·3a46307a051a5dde0f2f979c8313dcc4(SB)
	0x0032 00050 (main.go:80)	FUNCDATA	$2, gclocals·f6aec3988379d2bd21c69c093370a150(SB)
	0x0032 00050 (main.go:80)	FUNCDATA	$3, "".pointerToComm.stkobj(SB)
	0x0032 00050 (main.go:82)	PCDATA	$0, $0
	0x0032 00050 (main.go:82)	PCDATA	$1, $0
	0x0032 00050 (main.go:82)	MOVL	$0, ""..autotmp_4+64(SP)
	0x003a 00058 (main.go:82)	MOVQ	$0, ""..autotmp_4+72(SP)
	0x0043 00067 (main.go:82)	PCDATA	$0, $1
	0x0043 00067 (main.go:82)	LEAQ	""..autotmp_4+64(SP), AX
	0x0048 00072 (main.go:82)	PCDATA	$1, $1
	0x0048 00072 (main.go:82)	MOVQ	AX, "".v+112(SP)
	0x004d 00077 (main.go:84)	MOVQ	AX, "".i+128(SP)
	0x0055 00085 (main.go:87)	PCDATA	$0, $0
	0x0055 00085 (main.go:87)	TESTB	AL, (AX)
	0x0057 00087 (main.go:87)	MOVL	$98, ""..autotmp_4+64(SP)
	0x005f 00095 (main.go:89)	PCDATA	$0, $1
	0x005f 00095 (main.go:89)	MOVQ	"".v+112(SP), AX
	0x0064 00100 (main.go:89)	PCDATA	$0, $0
	0x0064 00100 (main.go:89)	MOVQ	AX, (SP)
	0x0068 00104 (main.go:89)	CALL	runtime.convT64(SB)
	0x006d 00109 (main.go:89)	PCDATA	$0, $1
	0x006d 00109 (main.go:89)	MOVQ	8(SP), AX
	0x0072 00114 (main.go:89)	PCDATA	$0, $0
	0x0072 00114 (main.go:89)	PCDATA	$1, $2
	0x0072 00114 (main.go:89)	MOVQ	AX, ""..autotmp_5+152(SP)
	0x007a 00122 (main.go:89)	PCDATA	$1, $3
	0x007a 00122 (main.go:89)	XORPS	X0, X0
	0x007d 00125 (main.go:89)	MOVUPS	X0, ""..autotmp_3+168(SP)
	0x0085 00133 (main.go:89)	PCDATA	$0, $1
	0x0085 00133 (main.go:89)	PCDATA	$1, $2
	0x0085 00133 (main.go:89)	LEAQ	""..autotmp_3+168(SP), AX
	0x008d 00141 (main.go:89)	MOVQ	AX, ""..autotmp_7+144(SP)
	0x0095 00149 (main.go:89)	TESTB	AL, (AX)
	0x0097 00151 (main.go:89)	PCDATA	$0, $2
	0x0097 00151 (main.go:89)	PCDATA	$1, $1
	0x0097 00151 (main.go:89)	MOVQ	""..autotmp_5+152(SP), CX
	0x009f 00159 (main.go:89)	PCDATA	$0, $3
	0x009f 00159 (main.go:89)	LEAQ	type.uintptr(SB), DX
	0x00a6 00166 (main.go:89)	PCDATA	$0, $2
	0x00a6 00166 (main.go:89)	MOVQ	DX, ""..autotmp_3+168(SP)
	0x00ae 00174 (main.go:89)	PCDATA	$0, $1
	0x00ae 00174 (main.go:89)	MOVQ	CX, ""..autotmp_3+176(SP)
	0x00b6 00182 (main.go:89)	TESTB	AL, (AX)
	0x00b8 00184 (main.go:89)	JMP	186
	0x00ba 00186 (main.go:89)	MOVQ	AX, ""..autotmp_6+208(SP)
	0x00c2 00194 (main.go:89)	MOVQ	$1, ""..autotmp_6+216(SP)
	0x00ce 00206 (main.go:89)	MOVQ	$1, ""..autotmp_6+224(SP)
	0x00da 00218 (main.go:89)	PCDATA	$0, $0
	0x00da 00218 (main.go:89)	MOVQ	AX, (SP)
	0x00de 00222 (main.go:89)	MOVQ	$1, 8(SP)
	0x00e7 00231 (main.go:89)	MOVQ	$1, 16(SP)
	0x00f0 00240 (main.go:89)	CALL	fmt.Println(SB)
	0x00f5 00245 (main.go:90)	PCDATA	$1, $4
	0x00f5 00245 (main.go:90)	XORPS	X0, X0
	0x00f8 00248 (main.go:90)	MOVUPS	X0, ""..autotmp_3+168(SP)
	0x0100 00256 (main.go:90)	PCDATA	$0, $1
	0x0100 00256 (main.go:90)	PCDATA	$1, $1
	0x0100 00256 (main.go:90)	LEAQ	""..autotmp_3+168(SP), AX
	0x0108 00264 (main.go:90)	MOVQ	AX, ""..autotmp_9+136(SP)
	0x0110 00272 (main.go:90)	TESTB	AL, (AX)
	0x0112 00274 (main.go:90)	PCDATA	$0, $2
	0x0112 00274 (main.go:90)	LEAQ	type.uintptr(SB), CX
	0x0119 00281 (main.go:90)	PCDATA	$0, $1
	0x0119 00281 (main.go:90)	MOVQ	CX, ""..autotmp_3+168(SP)
	0x0121 00289 (main.go:90)	PCDATA	$0, $2
	0x0121 00289 (main.go:90)	LEAQ	""..stmp_9(SB), CX
	0x0128 00296 (main.go:90)	PCDATA	$0, $1
	0x0128 00296 (main.go:90)	MOVQ	CX, ""..autotmp_3+176(SP)
	0x0130 00304 (main.go:90)	TESTB	AL, (AX)
	0x0132 00306 (main.go:90)	JMP	308
	0x0134 00308 (main.go:90)	PCDATA	$0, $0
	0x0134 00308 (main.go:90)	PCDATA	$1, $5
	0x0134 00308 (main.go:90)	MOVQ	AX, ""..autotmp_8+184(SP)
	0x013c 00316 (main.go:90)	MOVQ	$1, ""..autotmp_8+192(SP)
	0x0148 00328 (main.go:90)	MOVQ	$1, ""..autotmp_8+200(SP)
	0x0154 00340 (main.go:90)	PCDATA	$0, $1
	0x0154 00340 (main.go:90)	LEAQ	go.string."uintptr-int32: %d\n"(SB), AX
	0x015b 00347 (main.go:90)	PCDATA	$0, $0
	0x015b 00347 (main.go:90)	MOVQ	AX, (SP)
	0x015f 00351 (main.go:90)	MOVQ	$18, 8(SP)
	0x0168 00360 (main.go:90)	PCDATA	$0, $1
	0x0168 00360 (main.go:90)	PCDATA	$1, $1
	0x0168 00360 (main.go:90)	MOVQ	""..autotmp_8+184(SP), AX
	0x0170 00368 (main.go:90)	PCDATA	$0, $0
	0x0170 00368 (main.go:90)	MOVQ	AX, 16(SP)
	0x0175 00373 (main.go:90)	MOVQ	$1, 24(SP)
	0x017e 00382 (main.go:90)	MOVQ	$1, 32(SP)
	0x0187 00391 (main.go:90)	CALL	fmt.Printf(SB)
	0x018c 00396 (main.go:91)	PCDATA	$1, $4
	0x018c 00396 (main.go:91)	XORPS	X0, X0
	0x018f 00399 (main.go:91)	MOVUPS	X0, ""..autotmp_3+168(SP)
	0x0197 00407 (main.go:91)	PCDATA	$0, $1
	0x0197 00407 (main.go:91)	PCDATA	$1, $1
	0x0197 00407 (main.go:91)	LEAQ	""..autotmp_3+168(SP), AX
	0x019f 00415 (main.go:91)	MOVQ	AX, ""..autotmp_11+160(SP)
	0x01a7 00423 (main.go:91)	TESTB	AL, (AX)
	0x01a9 00425 (main.go:91)	PCDATA	$0, $2
	0x01a9 00425 (main.go:91)	LEAQ	type.uintptr(SB), CX
	0x01b0 00432 (main.go:91)	PCDATA	$0, $1
	0x01b0 00432 (main.go:91)	MOVQ	CX, ""..autotmp_3+168(SP)
	0x01b8 00440 (main.go:91)	PCDATA	$0, $2
	0x01b8 00440 (main.go:91)	LEAQ	""..stmp_10(SB), CX
	0x01bf 00447 (main.go:91)	PCDATA	$0, $1
	0x01bf 00447 (main.go:91)	MOVQ	CX, ""..autotmp_3+176(SP)
	0x01c7 00455 (main.go:91)	TESTB	AL, (AX)
	0x01c9 00457 (main.go:91)	JMP	459
	0x01cb 00459 (main.go:91)	MOVQ	AX, ""..autotmp_10+232(SP)
	0x01d3 00467 (main.go:91)	MOVQ	$1, ""..autotmp_10+240(SP)
	0x01df 00479 (main.go:91)	MOVQ	$1, ""..autotmp_10+248(SP)
	0x01eb 00491 (main.go:91)	PCDATA	$0, $0
	0x01eb 00491 (main.go:91)	MOVQ	AX, (SP)
	0x01ef 00495 (main.go:91)	MOVQ	$1, 8(SP)
	0x01f8 00504 (main.go:91)	MOVQ	$1, 16(SP)
	0x0201 00513 (main.go:91)	CALL	fmt.Println(SB)
	0x0206 00518 (main.go:94)	PCDATA	$0, $1
	0x0206 00518 (main.go:94)	MOVQ	"".v+112(SP), AX
	0x020b 00523 (main.go:94)	PCDATA	$0, $2
	0x020b 00523 (main.go:94)	LEAQ	8(AX), CX
	0x020f 00527 (main.go:94)	MOVQ	CX, "".j+120(SP)
	0x0214 00532 (main.go:96)	PCDATA	$0, $1
	0x0214 00532 (main.go:96)	TESTB	AL, (CX)
	0x0216 00534 (main.go:96)	PCDATA	$0, $0
	0x0216 00534 (main.go:96)	MOVQ	$763, 8(AX)
	0x021e 00542 (main.go:98)	PCDATA	$0, $1
	0x021e 00542 (main.go:98)	MOVQ	"".v+112(SP), AX
	0x0223 00547 (main.go:98)	TESTB	AL, (AX)
	0x0225 00549 (main.go:98)	MOVL	(AX), CX
	0x0227 00551 (main.go:98)	PCDATA	$0, $0
	0x0227 00551 (main.go:98)	MOVQ	8(AX), AX
	0x022b 00555 (main.go:98)	MOVL	CX, ""..autotmp_12+96(SP)
	0x022f 00559 (main.go:98)	MOVQ	AX, ""..autotmp_12+104(SP)
	0x0234 00564 (main.go:98)	MOVL	""..autotmp_12+96(SP), CX
	0x0238 00568 (main.go:98)	MOVL	CX, (SP)
	0x023b 00571 (main.go:98)	MOVQ	AX, 8(SP)
	0x0240 00576 (main.go:98)	CALL	"".V.PutI(SB)
	0x0245 00581 (main.go:99)	PCDATA	$0, $1
	0x0245 00581 (main.go:99)	PCDATA	$1, $0
	0x0245 00581 (main.go:99)	MOVQ	"".v+112(SP), AX
	0x024a 00586 (main.go:99)	TESTB	AL, (AX)
	0x024c 00588 (main.go:99)	MOVL	(AX), CX
	0x024e 00590 (main.go:99)	PCDATA	$0, $0
	0x024e 00590 (main.go:99)	MOVQ	8(AX), AX
	0x0252 00594 (main.go:99)	MOVL	CX, ""..autotmp_13+80(SP)
	0x0256 00598 (main.go:99)	MOVQ	AX, ""..autotmp_13+88(SP)
	0x025b 00603 (main.go:99)	MOVL	""..autotmp_13+80(SP), CX
	0x025f 00607 (main.go:99)	MOVL	CX, (SP)
	0x0262 00610 (main.go:99)	MOVQ	AX, 8(SP)
	0x0267 00615 (main.go:99)	CALL	"".V.PutJ(SB)
	0x026c 00620 (main.go:100)	MOVQ	256(SP), BP
	0x0274 00628 (main.go:100)	ADDQ	$264, SP
	0x027b 00635 (main.go:100)	RET
	0x027c 00636 (main.go:100)	NOP
	0x027c 00636 (main.go:80)	PCDATA	$1, $-1
	0x027c 00636 (main.go:80)	PCDATA	$0, $-1
	0x027c 00636 (main.go:80)	CALL	runtime.morestack_noctxt(SB)
	0x0281 00641 (main.go:80)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 8d 84 24 78 ff ff  dH..%....H..$x..
	0x0010 ff 48 3b 41 10 0f 86 61 02 00 00 48 81 ec 08 01  .H;A...a...H....
	0x0020 00 00 48 89 ac 24 00 01 00 00 48 8d ac 24 00 01  ..H..$....H..$..
	0x0030 00 00 c7 44 24 40 00 00 00 00 48 c7 44 24 48 00  ...D$@....H.D$H.
	0x0040 00 00 00 48 8d 44 24 40 48 89 44 24 70 48 89 84  ...H.D$@H.D$pH..
	0x0050 24 80 00 00 00 84 00 c7 44 24 40 62 00 00 00 48  $.......D$@b...H
	0x0060 8b 44 24 70 48 89 04 24 e8 00 00 00 00 48 8b 44  .D$pH..$.....H.D
	0x0070 24 08 48 89 84 24 98 00 00 00 0f 57 c0 0f 11 84  $.H..$.....W....
	0x0080 24 a8 00 00 00 48 8d 84 24 a8 00 00 00 48 89 84  $....H..$....H..
	0x0090 24 90 00 00 00 84 00 48 8b 8c 24 98 00 00 00 48  $......H..$....H
	0x00a0 8d 15 00 00 00 00 48 89 94 24 a8 00 00 00 48 89  ......H..$....H.
	0x00b0 8c 24 b0 00 00 00 84 00 eb 00 48 89 84 24 d0 00  .$........H..$..
	0x00c0 00 00 48 c7 84 24 d8 00 00 00 01 00 00 00 48 c7  ..H..$........H.
	0x00d0 84 24 e0 00 00 00 01 00 00 00 48 89 04 24 48 c7  .$........H..$H.
	0x00e0 44 24 08 01 00 00 00 48 c7 44 24 10 01 00 00 00  D$.....H.D$.....
	0x00f0 e8 00 00 00 00 0f 57 c0 0f 11 84 24 a8 00 00 00  ......W....$....
	0x0100 48 8d 84 24 a8 00 00 00 48 89 84 24 88 00 00 00  H..$....H..$....
	0x0110 84 00 48 8d 0d 00 00 00 00 48 89 8c 24 a8 00 00  ..H......H..$...
	0x0120 00 48 8d 0d 00 00 00 00 48 89 8c 24 b0 00 00 00  .H......H..$....
	0x0130 84 00 eb 00 48 89 84 24 b8 00 00 00 48 c7 84 24  ....H..$....H..$
	0x0140 c0 00 00 00 01 00 00 00 48 c7 84 24 c8 00 00 00  ........H..$....
	0x0150 01 00 00 00 48 8d 05 00 00 00 00 48 89 04 24 48  ....H......H..$H
	0x0160 c7 44 24 08 12 00 00 00 48 8b 84 24 b8 00 00 00  .D$.....H..$....
	0x0170 48 89 44 24 10 48 c7 44 24 18 01 00 00 00 48 c7  H.D$.H.D$.....H.
	0x0180 44 24 20 01 00 00 00 e8 00 00 00 00 0f 57 c0 0f  D$ ..........W..
	0x0190 11 84 24 a8 00 00 00 48 8d 84 24 a8 00 00 00 48  ..$....H..$....H
	0x01a0 89 84 24 a0 00 00 00 84 00 48 8d 0d 00 00 00 00  ..$......H......
	0x01b0 48 89 8c 24 a8 00 00 00 48 8d 0d 00 00 00 00 48  H..$....H......H
	0x01c0 89 8c 24 b0 00 00 00 84 00 eb 00 48 89 84 24 e8  ..$........H..$.
	0x01d0 00 00 00 48 c7 84 24 f0 00 00 00 01 00 00 00 48  ...H..$........H
	0x01e0 c7 84 24 f8 00 00 00 01 00 00 00 48 89 04 24 48  ..$........H..$H
	0x01f0 c7 44 24 08 01 00 00 00 48 c7 44 24 10 01 00 00  .D$.....H.D$....
	0x0200 00 e8 00 00 00 00 48 8b 44 24 70 48 8d 48 08 48  ......H.D$pH.H.H
	0x0210 89 4c 24 78 84 01 48 c7 40 08 fb 02 00 00 48 8b  .L$x..H.@.....H.
	0x0220 44 24 70 84 00 8b 08 48 8b 40 08 89 4c 24 60 48  D$p....H.@..L$`H
	0x0230 89 44 24 68 8b 4c 24 60 89 0c 24 48 89 44 24 08  .D$h.L$`..$H.D$.
	0x0240 e8 00 00 00 00 48 8b 44 24 70 84 00 8b 08 48 8b  .....H.D$p....H.
	0x0250 40 08 89 4c 24 50 48 89 44 24 58 8b 4c 24 50 89  @..L$PH.D$X.L$P.
	0x0260 0c 24 48 89 44 24 08 e8 00 00 00 00 48 8b ac 24  .$H.D$......H..$
	0x0270 00 01 00 00 48 81 c4 08 01 00 00 c3 e8 00 00 00  ....H...........
	0x0280 00 e9 7a fd ff ff                                ..z...
	rel 5+4 t=16 TLS+0
	rel 105+4 t=8 runtime.convT64+0
	rel 162+4 t=15 type.uintptr+0
	rel 241+4 t=8 fmt.Println+0
	rel 277+4 t=15 type.uintptr+0
	rel 292+4 t=15 ""..stmp_9+0
	rel 343+4 t=15 go.string."uintptr-int32: %d\n"+0
	rel 392+4 t=8 fmt.Printf+0
	rel 428+4 t=15 type.uintptr+0
	rel 443+4 t=15 ""..stmp_10+0
	rel 514+4 t=8 fmt.Println+0
	rel 577+4 t=8 "".V.PutI+0
	rel 616+4 t=8 "".V.PutJ+0
	rel 637+4 t=8 runtime.morestack_noctxt+0
"".add1 STEXT nosplit size=25 args=0x18 locals=0x0
	0x0000 00000 (main.go:103)	TEXT	"".add1(SB), NOSPLIT|ABIInternal, $0-24
	0x0000 00000 (main.go:103)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (main.go:103)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (main.go:103)	FUNCDATA	$2, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (main.go:103)	PCDATA	$0, $0
	0x0000 00000 (main.go:103)	PCDATA	$1, $0
	0x0000 00000 (main.go:103)	MOVQ	$0, "".~r2+24(SP)
	0x0009 00009 (main.go:104)	MOVQ	"".x+8(SP), AX
	0x000e 00014 (main.go:104)	ADDQ	"".y+16(SP), AX
	0x0013 00019 (main.go:104)	MOVQ	AX, "".~r2+24(SP)
	0x0018 00024 (main.go:104)	RET
	0x0000 48 c7 44 24 18 00 00 00 00 48 8b 44 24 08 48 03  H.D$.....H.D$.H.
	0x0010 44 24 10 48 89 44 24 18 c3                       D$.H.D$..
"".add2 STEXT size=148 args=0x18 locals=0xd0
	0x0000 00000 (main.go:107)	TEXT	"".add2(SB), ABIInternal, $208-24
	0x0000 00000 (main.go:107)	MOVQ	(TLS), CX
	0x0009 00009 (main.go:107)	LEAQ	-80(SP), AX
	0x000e 00014 (main.go:107)	CMPQ	AX, 16(CX)
	0x0012 00018 (main.go:107)	JLS	138
	0x0014 00020 (main.go:107)	SUBQ	$208, SP
	0x001b 00027 (main.go:107)	MOVQ	BP, 200(SP)
	0x0023 00035 (main.go:107)	LEAQ	200(SP), BP
	0x002b 00043 (main.go:107)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x002b 00043 (main.go:107)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x002b 00043 (main.go:107)	FUNCDATA	$2, gclocals·cd666f9a7f09fcd2aca7dadbf3522159(SB)
	0x002b 00043 (main.go:107)	PCDATA	$0, $0
	0x002b 00043 (main.go:107)	PCDATA	$1, $0
	0x002b 00043 (main.go:107)	MOVQ	$0, "".~r2+232(SP)
	0x0037 00055 (main.go:108)	MOVQ	$0, ""..autotmp_3(SP)
	0x003f 00063 (main.go:108)	PCDATA	$0, $1
	0x003f 00063 (main.go:108)	LEAQ	""..autotmp_3+8(SP), DI
	0x0044 00068 (main.go:108)	XORPS	X0, X0
	0x0047 00071 (main.go:108)	PCDATA	$0, $0
	0x0047 00071 (main.go:108)	DUFFZERO	$247
	0x005a 00090 (main.go:108)	PCDATA	$0, $2
	0x005a 00090 (main.go:108)	LEAQ	""..autotmp_3(SP), AX
	0x005e 00094 (main.go:108)	PCDATA	$0, $0
	0x005e 00094 (main.go:108)	TESTB	AL, (AX)
	0x0060 00096 (main.go:108)	JMP	98
	0x0062 00098 (main.go:109)	MOVQ	"".x+216(SP), AX
	0x006a 00106 (main.go:109)	ADDQ	"".y+224(SP), AX
	0x0072 00114 (main.go:109)	MOVQ	AX, "".~r2+232(SP)
	0x007a 00122 (main.go:109)	MOVQ	200(SP), BP
	0x0082 00130 (main.go:109)	ADDQ	$208, SP
	0x0089 00137 (main.go:109)	RET
	0x008a 00138 (main.go:109)	NOP
	0x008a 00138 (main.go:107)	PCDATA	$1, $-1
	0x008a 00138 (main.go:107)	PCDATA	$0, $-1
	0x008a 00138 (main.go:107)	CALL	runtime.morestack_noctxt(SB)
	0x008f 00143 (main.go:107)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 8d 44 24 b0 48 3b  dH..%....H.D$.H;
	0x0010 41 10 76 76 48 81 ec d0 00 00 00 48 89 ac 24 c8  A.vvH......H..$.
	0x0020 00 00 00 48 8d ac 24 c8 00 00 00 48 c7 84 24 e8  ...H..$....H..$.
	0x0030 00 00 00 00 00 00 00 48 c7 04 24 00 00 00 00 48  .......H..$....H
	0x0040 8d 7c 24 08 0f 57 c0 48 89 6c 24 f0 48 8d 6c 24  .|$..W.H.l$.H.l$
	0x0050 f0 e8 00 00 00 00 48 8b 6d 00 48 8d 04 24 84 00  ......H.m.H..$..
	0x0060 eb 00 48 8b 84 24 d8 00 00 00 48 03 84 24 e0 00  ..H..$....H..$..
	0x0070 00 00 48 89 84 24 e8 00 00 00 48 8b ac 24 c8 00  ..H..$....H..$..
	0x0080 00 00 48 81 c4 d0 00 00 00 c3 e8 00 00 00 00 e9  ..H.............
	0x0090 6c ff ff ff                                      l...
	rel 5+4 t=16 TLS+0
	rel 82+4 t=8 runtime.duffzero+247
	rel 139+4 t=8 runtime.morestack_noctxt+0
type..hash."".SizeOfC STEXT dupok size=167 args=0x18 locals=0x38
	0x0000 00000 (<autogenerated>:1)	TEXT	type..hash."".SizeOfC(SB), DUPOK|ABIInternal, $56-24
	0x0000 00000 (<autogenerated>:1)	MOVQ	(TLS), CX
	0x0009 00009 (<autogenerated>:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (<autogenerated>:1)	JLS	157
	0x0013 00019 (<autogenerated>:1)	SUBQ	$56, SP
	0x0017 00023 (<autogenerated>:1)	MOVQ	BP, 48(SP)
	0x001c 00028 (<autogenerated>:1)	LEAQ	48(SP), BP
	0x0021 00033 (<autogenerated>:1)	FUNCDATA	$0, gclocals·1a65e721a2ccc325b382662e7ffee780(SB)
	0x0021 00033 (<autogenerated>:1)	FUNCDATA	$1, gclocals·2589ca35330fc0fce83503f4569854a0(SB)
	0x0021 00033 (<autogenerated>:1)	FUNCDATA	$2, gclocals·9fb7f0986f647f17cb53dda1484e0f7a(SB)
	0x0021 00033 (<autogenerated>:1)	PCDATA	$0, $0
	0x0021 00033 (<autogenerated>:1)	PCDATA	$1, $0
	0x0021 00033 (<autogenerated>:1)	MOVQ	$0, "".~r2+80(SP)
	0x002a 00042 (<autogenerated>:1)	PCDATA	$0, $1
	0x002a 00042 (<autogenerated>:1)	MOVQ	"".p+64(SP), AX
	0x002f 00047 (<autogenerated>:1)	MOVQ	AX, ""..autotmp_3+40(SP)
	0x0034 00052 (<autogenerated>:1)	PCDATA	$0, $0
	0x0034 00052 (<autogenerated>:1)	MOVQ	AX, (SP)
	0x0038 00056 (<autogenerated>:1)	MOVQ	"".h+72(SP), AX
	0x003d 00061 (<autogenerated>:1)	MOVQ	AX, 8(SP)
	0x0042 00066 (<autogenerated>:1)	MOVQ	$1, 16(SP)
	0x004b 00075 (<autogenerated>:1)	CALL	runtime.memhash(SB)
	0x0050 00080 (<autogenerated>:1)	MOVQ	24(SP), AX
	0x0055 00085 (<autogenerated>:1)	MOVQ	AX, "".h+72(SP)
	0x005a 00090 (<autogenerated>:1)	PCDATA	$0, $1
	0x005a 00090 (<autogenerated>:1)	PCDATA	$1, $1
	0x005a 00090 (<autogenerated>:1)	MOVQ	"".p+64(SP), AX
	0x005f 00095 (<autogenerated>:1)	ADDQ	$4, AX
	0x0063 00099 (<autogenerated>:1)	MOVQ	AX, ""..autotmp_4+32(SP)
	0x0068 00104 (<autogenerated>:1)	PCDATA	$0, $0
	0x0068 00104 (<autogenerated>:1)	MOVQ	AX, (SP)
	0x006c 00108 (<autogenerated>:1)	MOVQ	"".h+72(SP), AX
	0x0071 00113 (<autogenerated>:1)	MOVQ	AX, 8(SP)
	0x0076 00118 (<autogenerated>:1)	MOVQ	$4, 16(SP)
	0x007f 00127 (<autogenerated>:1)	CALL	runtime.memhash(SB)
	0x0084 00132 (<autogenerated>:1)	MOVQ	24(SP), AX
	0x0089 00137 (<autogenerated>:1)	MOVQ	AX, "".h+72(SP)
	0x008e 00142 (<autogenerated>:1)	MOVQ	AX, "".~r2+80(SP)
	0x0093 00147 (<autogenerated>:1)	MOVQ	48(SP), BP
	0x0098 00152 (<autogenerated>:1)	ADDQ	$56, SP
	0x009c 00156 (<autogenerated>:1)	RET
	0x009d 00157 (<autogenerated>:1)	NOP
	0x009d 00157 (<autogenerated>:1)	PCDATA	$1, $-1
	0x009d 00157 (<autogenerated>:1)	PCDATA	$0, $-1
	0x009d 00157 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x00a2 00162 (<autogenerated>:1)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 8a  dH..%....H;a....
	0x0010 00 00 00 48 83 ec 38 48 89 6c 24 30 48 8d 6c 24  ...H..8H.l$0H.l$
	0x0020 30 48 c7 44 24 50 00 00 00 00 48 8b 44 24 40 48  0H.D$P....H.D$@H
	0x0030 89 44 24 28 48 89 04 24 48 8b 44 24 48 48 89 44  .D$(H..$H.D$HH.D
	0x0040 24 08 48 c7 44 24 10 01 00 00 00 e8 00 00 00 00  $.H.D$..........
	0x0050 48 8b 44 24 18 48 89 44 24 48 48 8b 44 24 40 48  H.D$.H.D$HH.D$@H
	0x0060 83 c0 04 48 89 44 24 20 48 89 04 24 48 8b 44 24  ...H.D$ H..$H.D$
	0x0070 48 48 89 44 24 08 48 c7 44 24 10 04 00 00 00 e8  HH.D$.H.D$......
	0x0080 00 00 00 00 48 8b 44 24 18 48 89 44 24 48 48 89  ....H.D$.H.D$HH.
	0x0090 44 24 50 48 8b 6c 24 30 48 83 c4 38 c3 e8 00 00  D$PH.l$0H..8....
	0x00a0 00 00 e9 59 ff ff ff                             ...Y...
	rel 5+4 t=16 TLS+0
	rel 76+4 t=8 runtime.memhash+0
	rel 128+4 t=8 runtime.memhash+0
	rel 158+4 t=8 runtime.morestack_noctxt+0
type..eq."".SizeOfC STEXT dupok nosplit size=89 args=0x18 locals=0x10
	0x0000 00000 (<autogenerated>:1)	TEXT	type..eq."".SizeOfC(SB), DUPOK|NOSPLIT|ABIInternal, $16-24
	0x0000 00000 (<autogenerated>:1)	SUBQ	$16, SP
	0x0004 00004 (<autogenerated>:1)	MOVQ	BP, 8(SP)
	0x0009 00009 (<autogenerated>:1)	LEAQ	8(SP), BP
	0x000e 00014 (<autogenerated>:1)	FUNCDATA	$0, gclocals·fdbf1f5761f6d17e8ae3f0aaecb6a3c5(SB)
	0x000e 00014 (<autogenerated>:1)	FUNCDATA	$1, gclocals·7d2d5fca80364273fb07d5820a76fef4(SB)
	0x000e 00014 (<autogenerated>:1)	FUNCDATA	$2, gclocals·bfec7e55b3f043d1941c093912808913(SB)
	0x000e 00014 (<autogenerated>:1)	PCDATA	$0, $0
	0x000e 00014 (<autogenerated>:1)	PCDATA	$1, $0
	0x000e 00014 (<autogenerated>:1)	MOVB	$0, "".~r2+40(SP)
	0x0013 00019 (<autogenerated>:1)	PCDATA	$0, $1
	0x0013 00019 (<autogenerated>:1)	MOVQ	"".p+24(SP), AX
	0x0018 00024 (<autogenerated>:1)	PCDATA	$0, $2
	0x0018 00024 (<autogenerated>:1)	MOVQ	"".q+32(SP), CX
	0x001d 00029 (<autogenerated>:1)	PCDATA	$0, $1
	0x001d 00029 (<autogenerated>:1)	MOVBLZX	(CX), CX
	0x0020 00032 (<autogenerated>:1)	PCDATA	$0, $0
	0x0020 00032 (<autogenerated>:1)	CMPB	(AX), CL
	0x0022 00034 (<autogenerated>:1)	SETEQ	AL
	0x0025 00037 (<autogenerated>:1)	MOVB	AL, ""..autotmp_3+7(SP)
	0x0029 00041 (<autogenerated>:1)	JEQ	45
	0x002b 00043 (<autogenerated>:1)	JMP	87
	0x002d 00045 (<autogenerated>:1)	PCDATA	$0, $1
	0x002d 00045 (<autogenerated>:1)	PCDATA	$1, $1
	0x002d 00045 (<autogenerated>:1)	MOVQ	"".p+24(SP), AX
	0x0032 00050 (<autogenerated>:1)	PCDATA	$0, $2
	0x0032 00050 (<autogenerated>:1)	PCDATA	$1, $2
	0x0032 00050 (<autogenerated>:1)	MOVQ	"".q+32(SP), CX
	0x0037 00055 (<autogenerated>:1)	PCDATA	$0, $1
	0x0037 00055 (<autogenerated>:1)	MOVL	4(CX), CX
	0x003a 00058 (<autogenerated>:1)	PCDATA	$0, $0
	0x003a 00058 (<autogenerated>:1)	CMPL	4(AX), CX
	0x003d 00061 (<autogenerated>:1)	SETEQ	""..autotmp_3+7(SP)
	0x0042 00066 (<autogenerated>:1)	JMP	68
	0x0044 00068 (<autogenerated>:1)	MOVBLZX	""..autotmp_3+7(SP), AX
	0x0049 00073 (<autogenerated>:1)	MOVB	AL, "".~r2+40(SP)
	0x004d 00077 (<autogenerated>:1)	MOVQ	8(SP), BP
	0x0052 00082 (<autogenerated>:1)	ADDQ	$16, SP
	0x0056 00086 (<autogenerated>:1)	RET
	0x0057 00087 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0057 00087 (<autogenerated>:1)	PCDATA	$1, $-2
	0x0057 00087 (<autogenerated>:1)	JMP	68
	0x0000 48 83 ec 10 48 89 6c 24 08 48 8d 6c 24 08 c6 44  H...H.l$.H.l$..D
	0x0010 24 28 00 48 8b 44 24 18 48 8b 4c 24 20 0f b6 09  $(.H.D$.H.L$ ...
	0x0020 38 08 0f 94 c0 88 44 24 07 74 02 eb 2a 48 8b 44  8.....D$.t..*H.D
	0x0030 24 18 48 8b 4c 24 20 8b 49 04 39 48 04 0f 94 44  $.H.L$ .I.9H...D
	0x0040 24 07 eb 00 0f b6 44 24 07 88 44 24 28 48 8b 6c  $.....D$..D$(H.l
	0x0050 24 08 48 83 c4 10 c3 eb eb                       $.H......
type..hash."".SizeOfH STEXT dupok size=219 args=0x18 locals=0x40
	0x0000 00000 (<autogenerated>:1)	TEXT	type..hash."".SizeOfH(SB), DUPOK|ABIInternal, $64-24
	0x0000 00000 (<autogenerated>:1)	MOVQ	(TLS), CX
	0x0009 00009 (<autogenerated>:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (<autogenerated>:1)	JLS	209
	0x0013 00019 (<autogenerated>:1)	SUBQ	$64, SP
	0x0017 00023 (<autogenerated>:1)	MOVQ	BP, 56(SP)
	0x001c 00028 (<autogenerated>:1)	LEAQ	56(SP), BP
	0x0021 00033 (<autogenerated>:1)	FUNCDATA	$0, gclocals·1a65e721a2ccc325b382662e7ffee780(SB)
	0x0021 00033 (<autogenerated>:1)	FUNCDATA	$1, gclocals·15b76348caca8a511afecadf603e9401(SB)
	0x0021 00033 (<autogenerated>:1)	FUNCDATA	$2, gclocals·9fb7f0986f647f17cb53dda1484e0f7a(SB)
	0x0021 00033 (<autogenerated>:1)	PCDATA	$0, $0
	0x0021 00033 (<autogenerated>:1)	PCDATA	$1, $0
	0x0021 00033 (<autogenerated>:1)	MOVQ	$0, "".~r2+88(SP)
	0x002a 00042 (<autogenerated>:1)	PCDATA	$0, $1
	0x002a 00042 (<autogenerated>:1)	MOVQ	"".p+72(SP), AX
	0x002f 00047 (<autogenerated>:1)	MOVQ	AX, ""..autotmp_3+48(SP)
	0x0034 00052 (<autogenerated>:1)	PCDATA	$0, $0
	0x0034 00052 (<autogenerated>:1)	MOVQ	AX, (SP)
	0x0038 00056 (<autogenerated>:1)	MOVQ	"".h+80(SP), AX
	0x003d 00061 (<autogenerated>:1)	MOVQ	AX, 8(SP)
	0x0042 00066 (<autogenerated>:1)	MOVQ	$1, 16(SP)
	0x004b 00075 (<autogenerated>:1)	CALL	runtime.memhash(SB)
	0x0050 00080 (<autogenerated>:1)	MOVQ	24(SP), AX
	0x0055 00085 (<autogenerated>:1)	MOVQ	AX, "".h+80(SP)
	0x005a 00090 (<autogenerated>:1)	PCDATA	$0, $1
	0x005a 00090 (<autogenerated>:1)	MOVQ	"".p+72(SP), AX
	0x005f 00095 (<autogenerated>:1)	ADDQ	$2, AX
	0x0063 00099 (<autogenerated>:1)	MOVQ	AX, ""..autotmp_4+40(SP)
	0x0068 00104 (<autogenerated>:1)	PCDATA	$0, $0
	0x0068 00104 (<autogenerated>:1)	MOVQ	AX, (SP)
	0x006c 00108 (<autogenerated>:1)	MOVQ	"".h+80(SP), AX
	0x0071 00113 (<autogenerated>:1)	MOVQ	AX, 8(SP)
	0x0076 00118 (<autogenerated>:1)	MOVQ	$2, 16(SP)
	0x007f 00127 (<autogenerated>:1)	CALL	runtime.memhash(SB)
	0x0084 00132 (<autogenerated>:1)	MOVQ	24(SP), AX
	0x0089 00137 (<autogenerated>:1)	MOVQ	AX, "".h+80(SP)
	0x008e 00142 (<autogenerated>:1)	PCDATA	$0, $1
	0x008e 00142 (<autogenerated>:1)	PCDATA	$1, $1
	0x008e 00142 (<autogenerated>:1)	MOVQ	"".p+72(SP), AX
	0x0093 00147 (<autogenerated>:1)	ADDQ	$8, AX
	0x0097 00151 (<autogenerated>:1)	MOVQ	AX, ""..autotmp_5+32(SP)
	0x009c 00156 (<autogenerated>:1)	PCDATA	$0, $0
	0x009c 00156 (<autogenerated>:1)	MOVQ	AX, (SP)
	0x00a0 00160 (<autogenerated>:1)	MOVQ	"".h+80(SP), AX
	0x00a5 00165 (<autogenerated>:1)	MOVQ	AX, 8(SP)
	0x00aa 00170 (<autogenerated>:1)	MOVQ	$12, 16(SP)
	0x00b3 00179 (<autogenerated>:1)	CALL	runtime.memhash(SB)
	0x00b8 00184 (<autogenerated>:1)	MOVQ	24(SP), AX
	0x00bd 00189 (<autogenerated>:1)	MOVQ	AX, "".h+80(SP)
	0x00c2 00194 (<autogenerated>:1)	MOVQ	AX, "".~r2+88(SP)
	0x00c7 00199 (<autogenerated>:1)	MOVQ	56(SP), BP
	0x00cc 00204 (<autogenerated>:1)	ADDQ	$64, SP
	0x00d0 00208 (<autogenerated>:1)	RET
	0x00d1 00209 (<autogenerated>:1)	NOP
	0x00d1 00209 (<autogenerated>:1)	PCDATA	$1, $-1
	0x00d1 00209 (<autogenerated>:1)	PCDATA	$0, $-1
	0x00d1 00209 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x00d6 00214 (<autogenerated>:1)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 be  dH..%....H;a....
	0x0010 00 00 00 48 83 ec 40 48 89 6c 24 38 48 8d 6c 24  ...H..@H.l$8H.l$
	0x0020 38 48 c7 44 24 58 00 00 00 00 48 8b 44 24 48 48  8H.D$X....H.D$HH
	0x0030 89 44 24 30 48 89 04 24 48 8b 44 24 50 48 89 44  .D$0H..$H.D$PH.D
	0x0040 24 08 48 c7 44 24 10 01 00 00 00 e8 00 00 00 00  $.H.D$..........
	0x0050 48 8b 44 24 18 48 89 44 24 50 48 8b 44 24 48 48  H.D$.H.D$PH.D$HH
	0x0060 83 c0 02 48 89 44 24 28 48 89 04 24 48 8b 44 24  ...H.D$(H..$H.D$
	0x0070 50 48 89 44 24 08 48 c7 44 24 10 02 00 00 00 e8  PH.D$.H.D$......
	0x0080 00 00 00 00 48 8b 44 24 18 48 89 44 24 50 48 8b  ....H.D$.H.D$PH.
	0x0090 44 24 48 48 83 c0 08 48 89 44 24 20 48 89 04 24  D$HH...H.D$ H..$
	0x00a0 48 8b 44 24 50 48 89 44 24 08 48 c7 44 24 10 0c  H.D$PH.D$.H.D$..
	0x00b0 00 00 00 e8 00 00 00 00 48 8b 44 24 18 48 89 44  ........H.D$.H.D
	0x00c0 24 50 48 89 44 24 58 48 8b 6c 24 38 48 83 c4 40  $PH.D$XH.l$8H..@
	0x00d0 c3 e8 00 00 00 00 e9 25 ff ff ff                 .......%...
	rel 5+4 t=16 TLS+0
	rel 76+4 t=8 runtime.memhash+0
	rel 128+4 t=8 runtime.memhash+0
	rel 180+4 t=8 runtime.memhash+0
	rel 210+4 t=8 runtime.morestack_noctxt+0
type..eq."".SizeOfH STEXT dupok nosplit size=173 args=0x18 locals=0x10
	0x0000 00000 (<autogenerated>:1)	TEXT	type..eq."".SizeOfH(SB), DUPOK|NOSPLIT|ABIInternal, $16-24
	0x0000 00000 (<autogenerated>:1)	SUBQ	$16, SP
	0x0004 00004 (<autogenerated>:1)	MOVQ	BP, 8(SP)
	0x0009 00009 (<autogenerated>:1)	LEAQ	8(SP), BP
	0x000e 00014 (<autogenerated>:1)	FUNCDATA	$0, gclocals·fdbf1f5761f6d17e8ae3f0aaecb6a3c5(SB)
	0x000e 00014 (<autogenerated>:1)	FUNCDATA	$1, gclocals·7d2d5fca80364273fb07d5820a76fef4(SB)
	0x000e 00014 (<autogenerated>:1)	FUNCDATA	$2, gclocals·bfec7e55b3f043d1941c093912808913(SB)
	0x000e 00014 (<autogenerated>:1)	PCDATA	$0, $0
	0x000e 00014 (<autogenerated>:1)	PCDATA	$1, $0
	0x000e 00014 (<autogenerated>:1)	MOVB	$0, "".~r2+40(SP)
	0x0013 00019 (<autogenerated>:1)	PCDATA	$0, $1
	0x0013 00019 (<autogenerated>:1)	MOVQ	"".p+24(SP), AX
	0x0018 00024 (<autogenerated>:1)	PCDATA	$0, $2
	0x0018 00024 (<autogenerated>:1)	MOVQ	"".q+32(SP), CX
	0x001d 00029 (<autogenerated>:1)	PCDATA	$0, $1
	0x001d 00029 (<autogenerated>:1)	MOVBLZX	(CX), CX
	0x0020 00032 (<autogenerated>:1)	PCDATA	$0, $0
	0x0020 00032 (<autogenerated>:1)	CMPB	(AX), CL
	0x0022 00034 (<autogenerated>:1)	SETEQ	AL
	0x0025 00037 (<autogenerated>:1)	MOVB	AL, ""..autotmp_5+5(SP)
	0x0029 00041 (<autogenerated>:1)	JEQ	45
	0x002b 00043 (<autogenerated>:1)	JMP	171
	0x002d 00045 (<autogenerated>:1)	PCDATA	$0, $1
	0x002d 00045 (<autogenerated>:1)	MOVQ	"".p+24(SP), AX
	0x0032 00050 (<autogenerated>:1)	PCDATA	$0, $2
	0x0032 00050 (<autogenerated>:1)	MOVQ	"".q+32(SP), CX
	0x0037 00055 (<autogenerated>:1)	PCDATA	$0, $1
	0x0037 00055 (<autogenerated>:1)	MOVWLZX	2(CX), CX
	0x003b 00059 (<autogenerated>:1)	PCDATA	$0, $0
	0x003b 00059 (<autogenerated>:1)	CMPW	2(AX), CX
	0x003f 00063 (<autogenerated>:1)	SETEQ	""..autotmp_5+5(SP)
	0x0044 00068 (<autogenerated>:1)	JMP	70
	0x0046 00070 (<autogenerated>:1)	MOVBLZX	""..autotmp_5+5(SP), AX
	0x004b 00075 (<autogenerated>:1)	MOVB	AL, ""..autotmp_4+6(SP)
	0x004f 00079 (<autogenerated>:1)	TESTB	AL, AL
	0x0051 00081 (<autogenerated>:1)	JNE	85
	0x0053 00083 (<autogenerated>:1)	JMP	169
	0x0055 00085 (<autogenerated>:1)	PCDATA	$0, $1
	0x0055 00085 (<autogenerated>:1)	MOVQ	"".p+24(SP), AX
	0x005a 00090 (<autogenerated>:1)	PCDATA	$0, $2
	0x005a 00090 (<autogenerated>:1)	MOVQ	"".q+32(SP), CX
	0x005f 00095 (<autogenerated>:1)	PCDATA	$0, $1
	0x005f 00095 (<autogenerated>:1)	MOVQ	8(CX), CX
	0x0063 00099 (<autogenerated>:1)	PCDATA	$0, $0
	0x0063 00099 (<autogenerated>:1)	CMPQ	8(AX), CX
	0x0067 00103 (<autogenerated>:1)	SETEQ	""..autotmp_4+6(SP)
	0x006c 00108 (<autogenerated>:1)	JMP	110
	0x006e 00110 (<autogenerated>:1)	MOVBLZX	""..autotmp_4+6(SP), AX
	0x0073 00115 (<autogenerated>:1)	MOVB	AL, ""..autotmp_3+7(SP)
	0x0077 00119 (<autogenerated>:1)	TESTB	AL, AL
	0x0079 00121 (<autogenerated>:1)	JNE	125
	0x007b 00123 (<autogenerated>:1)	JMP	167
	0x007d 00125 (<autogenerated>:1)	PCDATA	$0, $1
	0x007d 00125 (<autogenerated>:1)	PCDATA	$1, $1
	0x007d 00125 (<autogenerated>:1)	MOVQ	"".p+24(SP), AX
	0x0082 00130 (<autogenerated>:1)	PCDATA	$0, $2
	0x0082 00130 (<autogenerated>:1)	PCDATA	$1, $2
	0x0082 00130 (<autogenerated>:1)	MOVQ	"".q+32(SP), CX
	0x0087 00135 (<autogenerated>:1)	PCDATA	$0, $1
	0x0087 00135 (<autogenerated>:1)	MOVL	16(CX), CX
	0x008a 00138 (<autogenerated>:1)	PCDATA	$0, $0
	0x008a 00138 (<autogenerated>:1)	CMPL	16(AX), CX
	0x008d 00141 (<autogenerated>:1)	SETEQ	""..autotmp_3+7(SP)
	0x0092 00146 (<autogenerated>:1)	JMP	148
	0x0094 00148 (<autogenerated>:1)	MOVBLZX	""..autotmp_3+7(SP), AX
	0x0099 00153 (<autogenerated>:1)	MOVB	AL, "".~r2+40(SP)
	0x009d 00157 (<autogenerated>:1)	MOVQ	8(SP), BP
	0x00a2 00162 (<autogenerated>:1)	ADDQ	$16, SP
	0x00a6 00166 (<autogenerated>:1)	RET
	0x00a7 00167 (<autogenerated>:1)	PCDATA	$0, $-2
	0x00a7 00167 (<autogenerated>:1)	PCDATA	$1, $-2
	0x00a7 00167 (<autogenerated>:1)	JMP	148
	0x00a9 00169 (<autogenerated>:1)	JMP	110
	0x00ab 00171 (<autogenerated>:1)	JMP	70
	0x0000 48 83 ec 10 48 89 6c 24 08 48 8d 6c 24 08 c6 44  H...H.l$.H.l$..D
	0x0010 24 28 00 48 8b 44 24 18 48 8b 4c 24 20 0f b6 09  $(.H.D$.H.L$ ...
	0x0020 38 08 0f 94 c0 88 44 24 05 74 02 eb 7e 48 8b 44  8.....D$.t..~H.D
	0x0030 24 18 48 8b 4c 24 20 0f b7 49 02 66 39 48 02 0f  $.H.L$ ..I.f9H..
	0x0040 94 44 24 05 eb 00 0f b6 44 24 05 88 44 24 06 84  .D$.....D$..D$..
	0x0050 c0 75 02 eb 54 48 8b 44 24 18 48 8b 4c 24 20 48  .u..TH.D$.H.L$ H
	0x0060 8b 49 08 48 39 48 08 0f 94 44 24 06 eb 00 0f b6  .I.H9H...D$.....
	0x0070 44 24 06 88 44 24 07 84 c0 75 02 eb 2a 48 8b 44  D$..D$...u..*H.D
	0x0080 24 18 48 8b 4c 24 20 8b 49 10 39 48 10 0f 94 44  $.H.L$ .I.9H...D
	0x0090 24 07 eb 00 0f b6 44 24 07 88 44 24 28 48 8b 6c  $.....D$..D$(H.l
	0x00a0 24 08 48 83 c4 10 c3 eb eb eb c3 eb 99           $.H..........
type..hash."".V STEXT dupok size=167 args=0x18 locals=0x38
	0x0000 00000 (<autogenerated>:1)	TEXT	type..hash."".V(SB), DUPOK|ABIInternal, $56-24
	0x0000 00000 (<autogenerated>:1)	MOVQ	(TLS), CX
	0x0009 00009 (<autogenerated>:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (<autogenerated>:1)	JLS	157
	0x0013 00019 (<autogenerated>:1)	SUBQ	$56, SP
	0x0017 00023 (<autogenerated>:1)	MOVQ	BP, 48(SP)
	0x001c 00028 (<autogenerated>:1)	LEAQ	48(SP), BP
	0x0021 00033 (<autogenerated>:1)	FUNCDATA	$0, gclocals·1a65e721a2ccc325b382662e7ffee780(SB)
	0x0021 00033 (<autogenerated>:1)	FUNCDATA	$1, gclocals·2589ca35330fc0fce83503f4569854a0(SB)
	0x0021 00033 (<autogenerated>:1)	FUNCDATA	$2, gclocals·9fb7f0986f647f17cb53dda1484e0f7a(SB)
	0x0021 00033 (<autogenerated>:1)	PCDATA	$0, $0
	0x0021 00033 (<autogenerated>:1)	PCDATA	$1, $0
	0x0021 00033 (<autogenerated>:1)	MOVQ	$0, "".~r2+80(SP)
	0x002a 00042 (<autogenerated>:1)	PCDATA	$0, $1
	0x002a 00042 (<autogenerated>:1)	MOVQ	"".p+64(SP), AX
	0x002f 00047 (<autogenerated>:1)	MOVQ	AX, ""..autotmp_3+40(SP)
	0x0034 00052 (<autogenerated>:1)	PCDATA	$0, $0
	0x0034 00052 (<autogenerated>:1)	MOVQ	AX, (SP)
	0x0038 00056 (<autogenerated>:1)	MOVQ	"".h+72(SP), AX
	0x003d 00061 (<autogenerated>:1)	MOVQ	AX, 8(SP)
	0x0042 00066 (<autogenerated>:1)	MOVQ	$4, 16(SP)
	0x004b 00075 (<autogenerated>:1)	CALL	runtime.memhash(SB)
	0x0050 00080 (<autogenerated>:1)	MOVQ	24(SP), AX
	0x0055 00085 (<autogenerated>:1)	MOVQ	AX, "".h+72(SP)
	0x005a 00090 (<autogenerated>:1)	PCDATA	$0, $1
	0x005a 00090 (<autogenerated>:1)	PCDATA	$1, $1
	0x005a 00090 (<autogenerated>:1)	MOVQ	"".p+64(SP), AX
	0x005f 00095 (<autogenerated>:1)	ADDQ	$8, AX
	0x0063 00099 (<autogenerated>:1)	MOVQ	AX, ""..autotmp_4+32(SP)
	0x0068 00104 (<autogenerated>:1)	PCDATA	$0, $0
	0x0068 00104 (<autogenerated>:1)	MOVQ	AX, (SP)
	0x006c 00108 (<autogenerated>:1)	MOVQ	"".h+72(SP), AX
	0x0071 00113 (<autogenerated>:1)	MOVQ	AX, 8(SP)
	0x0076 00118 (<autogenerated>:1)	MOVQ	$8, 16(SP)
	0x007f 00127 (<autogenerated>:1)	CALL	runtime.memhash(SB)
	0x0084 00132 (<autogenerated>:1)	MOVQ	24(SP), AX
	0x0089 00137 (<autogenerated>:1)	MOVQ	AX, "".h+72(SP)
	0x008e 00142 (<autogenerated>:1)	MOVQ	AX, "".~r2+80(SP)
	0x0093 00147 (<autogenerated>:1)	MOVQ	48(SP), BP
	0x0098 00152 (<autogenerated>:1)	ADDQ	$56, SP
	0x009c 00156 (<autogenerated>:1)	RET
	0x009d 00157 (<autogenerated>:1)	NOP
	0x009d 00157 (<autogenerated>:1)	PCDATA	$1, $-1
	0x009d 00157 (<autogenerated>:1)	PCDATA	$0, $-1
	0x009d 00157 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x00a2 00162 (<autogenerated>:1)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 8a  dH..%....H;a....
	0x0010 00 00 00 48 83 ec 38 48 89 6c 24 30 48 8d 6c 24  ...H..8H.l$0H.l$
	0x0020 30 48 c7 44 24 50 00 00 00 00 48 8b 44 24 40 48  0H.D$P....H.D$@H
	0x0030 89 44 24 28 48 89 04 24 48 8b 44 24 48 48 89 44  .D$(H..$H.D$HH.D
	0x0040 24 08 48 c7 44 24 10 04 00 00 00 e8 00 00 00 00  $.H.D$..........
	0x0050 48 8b 44 24 18 48 89 44 24 48 48 8b 44 24 40 48  H.D$.H.D$HH.D$@H
	0x0060 83 c0 08 48 89 44 24 20 48 89 04 24 48 8b 44 24  ...H.D$ H..$H.D$
	0x0070 48 48 89 44 24 08 48 c7 44 24 10 08 00 00 00 e8  HH.D$.H.D$......
	0x0080 00 00 00 00 48 8b 44 24 18 48 89 44 24 48 48 89  ....H.D$.H.D$HH.
	0x0090 44 24 50 48 8b 6c 24 30 48 83 c4 38 c3 e8 00 00  D$PH.l$0H..8....
	0x00a0 00 00 e9 59 ff ff ff                             ...Y...
	rel 5+4 t=16 TLS+0
	rel 76+4 t=8 runtime.memhash+0
	rel 128+4 t=8 runtime.memhash+0
	rel 158+4 t=8 runtime.morestack_noctxt+0
type..eq."".V STEXT dupok nosplit size=90 args=0x18 locals=0x10
	0x0000 00000 (<autogenerated>:1)	TEXT	type..eq."".V(SB), DUPOK|NOSPLIT|ABIInternal, $16-24
	0x0000 00000 (<autogenerated>:1)	SUBQ	$16, SP
	0x0004 00004 (<autogenerated>:1)	MOVQ	BP, 8(SP)
	0x0009 00009 (<autogenerated>:1)	LEAQ	8(SP), BP
	0x000e 00014 (<autogenerated>:1)	FUNCDATA	$0, gclocals·fdbf1f5761f6d17e8ae3f0aaecb6a3c5(SB)
	0x000e 00014 (<autogenerated>:1)	FUNCDATA	$1, gclocals·7d2d5fca80364273fb07d5820a76fef4(SB)
	0x000e 00014 (<autogenerated>:1)	FUNCDATA	$2, gclocals·bfec7e55b3f043d1941c093912808913(SB)
	0x000e 00014 (<autogenerated>:1)	PCDATA	$0, $0
	0x000e 00014 (<autogenerated>:1)	PCDATA	$1, $0
	0x000e 00014 (<autogenerated>:1)	MOVB	$0, "".~r2+40(SP)
	0x0013 00019 (<autogenerated>:1)	PCDATA	$0, $1
	0x0013 00019 (<autogenerated>:1)	MOVQ	"".p+24(SP), AX
	0x0018 00024 (<autogenerated>:1)	PCDATA	$0, $2
	0x0018 00024 (<autogenerated>:1)	MOVQ	"".q+32(SP), CX
	0x001d 00029 (<autogenerated>:1)	PCDATA	$0, $1
	0x001d 00029 (<autogenerated>:1)	MOVL	(CX), CX
	0x001f 00031 (<autogenerated>:1)	PCDATA	$0, $0
	0x001f 00031 (<autogenerated>:1)	CMPL	(AX), CX
	0x0021 00033 (<autogenerated>:1)	SETEQ	AL
	0x0024 00036 (<autogenerated>:1)	MOVB	AL, ""..autotmp_3+7(SP)
	0x0028 00040 (<autogenerated>:1)	JEQ	44
	0x002a 00042 (<autogenerated>:1)	JMP	88
	0x002c 00044 (<autogenerated>:1)	PCDATA	$0, $1
	0x002c 00044 (<autogenerated>:1)	PCDATA	$1, $1
	0x002c 00044 (<autogenerated>:1)	MOVQ	"".p+24(SP), AX
	0x0031 00049 (<autogenerated>:1)	PCDATA	$0, $2
	0x0031 00049 (<autogenerated>:1)	PCDATA	$1, $2
	0x0031 00049 (<autogenerated>:1)	MOVQ	"".q+32(SP), CX
	0x0036 00054 (<autogenerated>:1)	PCDATA	$0, $1
	0x0036 00054 (<autogenerated>:1)	MOVQ	8(CX), CX
	0x003a 00058 (<autogenerated>:1)	PCDATA	$0, $0
	0x003a 00058 (<autogenerated>:1)	CMPQ	8(AX), CX
	0x003e 00062 (<autogenerated>:1)	SETEQ	""..autotmp_3+7(SP)
	0x0043 00067 (<autogenerated>:1)	JMP	69
	0x0045 00069 (<autogenerated>:1)	MOVBLZX	""..autotmp_3+7(SP), AX
	0x004a 00074 (<autogenerated>:1)	MOVB	AL, "".~r2+40(SP)
	0x004e 00078 (<autogenerated>:1)	MOVQ	8(SP), BP
	0x0053 00083 (<autogenerated>:1)	ADDQ	$16, SP
	0x0057 00087 (<autogenerated>:1)	RET
	0x0058 00088 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0058 00088 (<autogenerated>:1)	PCDATA	$1, $-2
	0x0058 00088 (<autogenerated>:1)	JMP	69
	0x0000 48 83 ec 10 48 89 6c 24 08 48 8d 6c 24 08 c6 44  H...H.l$.H.l$..D
	0x0010 24 28 00 48 8b 44 24 18 48 8b 4c 24 20 8b 09 39  $(.H.D$.H.L$ ..9
	0x0020 08 0f 94 c0 88 44 24 07 74 02 eb 2c 48 8b 44 24  .....D$.t..,H.D$
	0x0030 18 48 8b 4c 24 20 48 8b 49 08 48 39 48 08 0f 94  .H.L$ H.I.H9H...
	0x0040 44 24 07 eb 00 0f b6 44 24 07 88 44 24 28 48 8b  D$.....D$..D$(H.
	0x0050 6c 24 08 48 83 c4 10 c3 eb eb                    l$.H......
"".(*V).PutI STEXT dupok size=125 args=0x8 locals=0x28
	0x0000 00000 (<autogenerated>:1)	TEXT	"".(*V).PutI(SB), DUPOK|WRAPPER|ABIInternal, $40-8
	0x0000 00000 (<autogenerated>:1)	MOVQ	(TLS), CX
	0x0009 00009 (<autogenerated>:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (<autogenerated>:1)	JLS	103
	0x000f 00015 (<autogenerated>:1)	SUBQ	$40, SP
	0x0013 00019 (<autogenerated>:1)	MOVQ	BP, 32(SP)
	0x0018 00024 (<autogenerated>:1)	LEAQ	32(SP), BP
	0x001d 00029 (<autogenerated>:1)	MOVQ	32(CX), BX
	0x0021 00033 (<autogenerated>:1)	TESTQ	BX, BX
	0x0024 00036 (<autogenerated>:1)	JNE	110
	0x0026 00038 (<autogenerated>:1)	NOP
	0x0026 00038 (<autogenerated>:1)	FUNCDATA	$0, gclocals·1a65e721a2ccc325b382662e7ffee780(SB)
	0x0026 00038 (<autogenerated>:1)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x0026 00038 (<autogenerated>:1)	FUNCDATA	$2, gclocals·9fb7f0986f647f17cb53dda1484e0f7a(SB)
	0x0026 00038 (<autogenerated>:1)	PCDATA	$0, $0
	0x0026 00038 (<autogenerated>:1)	PCDATA	$1, $0
	0x0026 00038 (<autogenerated>:1)	CMPQ	""..this+48(SP), $0
	0x002c 00044 (<autogenerated>:1)	JNE	48
	0x002e 00046 (<autogenerated>:1)	JMP	97
	0x0030 00048 (<autogenerated>:1)	PCDATA	$0, $1
	0x0030 00048 (<autogenerated>:1)	PCDATA	$1, $1
	0x0030 00048 (<autogenerated>:1)	MOVQ	""..this+48(SP), AX
	0x0035 00053 (<autogenerated>:1)	TESTB	AL, (AX)
	0x0037 00055 (<autogenerated>:1)	MOVL	(AX), CX
	0x0039 00057 (<autogenerated>:1)	PCDATA	$0, $0
	0x0039 00057 (<autogenerated>:1)	MOVQ	8(AX), AX
	0x003d 00061 (<autogenerated>:1)	MOVL	CX, ""..autotmp_1+16(SP)
	0x0041 00065 (<autogenerated>:1)	MOVQ	AX, ""..autotmp_1+24(SP)
	0x0046 00070 (<autogenerated>:1)	MOVL	""..autotmp_1+16(SP), CX
	0x004a 00074 (<autogenerated>:1)	MOVL	CX, (SP)
	0x004d 00077 (<autogenerated>:1)	MOVQ	AX, 8(SP)
	0x0052 00082 (<autogenerated>:1)	CALL	"".V.PutI(SB)
	0x0057 00087 (<autogenerated>:1)	MOVQ	32(SP), BP
	0x005c 00092 (<autogenerated>:1)	ADDQ	$40, SP
	0x0060 00096 (<autogenerated>:1)	RET
	0x0061 00097 (<autogenerated>:1)	CALL	runtime.panicwrap(SB)
	0x0066 00102 (<autogenerated>:1)	XCHGL	AX, AX
	0x0067 00103 (<autogenerated>:1)	NOP
	0x0067 00103 (<autogenerated>:1)	PCDATA	$1, $-1
	0x0067 00103 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0067 00103 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x006c 00108 (<autogenerated>:1)	JMP	0
	0x006e 00110 (<autogenerated>:1)	LEAQ	48(SP), DI
	0x0073 00115 (<autogenerated>:1)	CMPQ	(BX), DI
	0x0076 00118 (<autogenerated>:1)	JNE	38
	0x0078 00120 (<autogenerated>:1)	MOVQ	SP, (BX)
	0x007b 00123 (<autogenerated>:1)	JMP	38
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 58 48  dH..%....H;a.vXH
	0x0010 83 ec 28 48 89 6c 24 20 48 8d 6c 24 20 48 8b 59  ..(H.l$ H.l$ H.Y
	0x0020 20 48 85 db 75 48 48 83 7c 24 30 00 75 02 eb 31   H..uHH.|$0.u..1
	0x0030 48 8b 44 24 30 84 00 8b 08 48 8b 40 08 89 4c 24  H.D$0....H.@..L$
	0x0040 10 48 89 44 24 18 8b 4c 24 10 89 0c 24 48 89 44  .H.D$..L$...$H.D
	0x0050 24 08 e8 00 00 00 00 48 8b 6c 24 20 48 83 c4 28  $......H.l$ H..(
	0x0060 c3 e8 00 00 00 00 90 e8 00 00 00 00 eb 92 48 8d  ..............H.
	0x0070 7c 24 30 48 39 3b 75 ae 48 89 23 eb a9           |$0H9;u.H.#..
	rel 5+4 t=16 TLS+0
	rel 83+4 t=8 "".V.PutI+0
	rel 98+4 t=8 runtime.panicwrap+0
	rel 104+4 t=8 runtime.morestack_noctxt+0
"".(*V).PutJ STEXT dupok size=125 args=0x8 locals=0x28
	0x0000 00000 (<autogenerated>:1)	TEXT	"".(*V).PutJ(SB), DUPOK|WRAPPER|ABIInternal, $40-8
	0x0000 00000 (<autogenerated>:1)	MOVQ	(TLS), CX
	0x0009 00009 (<autogenerated>:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (<autogenerated>:1)	JLS	103
	0x000f 00015 (<autogenerated>:1)	SUBQ	$40, SP
	0x0013 00019 (<autogenerated>:1)	MOVQ	BP, 32(SP)
	0x0018 00024 (<autogenerated>:1)	LEAQ	32(SP), BP
	0x001d 00029 (<autogenerated>:1)	MOVQ	32(CX), BX
	0x0021 00033 (<autogenerated>:1)	TESTQ	BX, BX
	0x0024 00036 (<autogenerated>:1)	JNE	110
	0x0026 00038 (<autogenerated>:1)	NOP
	0x0026 00038 (<autogenerated>:1)	FUNCDATA	$0, gclocals·1a65e721a2ccc325b382662e7ffee780(SB)
	0x0026 00038 (<autogenerated>:1)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x0026 00038 (<autogenerated>:1)	FUNCDATA	$2, gclocals·9fb7f0986f647f17cb53dda1484e0f7a(SB)
	0x0026 00038 (<autogenerated>:1)	PCDATA	$0, $0
	0x0026 00038 (<autogenerated>:1)	PCDATA	$1, $0
	0x0026 00038 (<autogenerated>:1)	CMPQ	""..this+48(SP), $0
	0x002c 00044 (<autogenerated>:1)	JNE	48
	0x002e 00046 (<autogenerated>:1)	JMP	97
	0x0030 00048 (<autogenerated>:1)	PCDATA	$0, $1
	0x0030 00048 (<autogenerated>:1)	PCDATA	$1, $1
	0x0030 00048 (<autogenerated>:1)	MOVQ	""..this+48(SP), AX
	0x0035 00053 (<autogenerated>:1)	TESTB	AL, (AX)
	0x0037 00055 (<autogenerated>:1)	MOVL	(AX), CX
	0x0039 00057 (<autogenerated>:1)	PCDATA	$0, $0
	0x0039 00057 (<autogenerated>:1)	MOVQ	8(AX), AX
	0x003d 00061 (<autogenerated>:1)	MOVL	CX, ""..autotmp_1+16(SP)
	0x0041 00065 (<autogenerated>:1)	MOVQ	AX, ""..autotmp_1+24(SP)
	0x0046 00070 (<autogenerated>:1)	MOVL	""..autotmp_1+16(SP), CX
	0x004a 00074 (<autogenerated>:1)	MOVL	CX, (SP)
	0x004d 00077 (<autogenerated>:1)	MOVQ	AX, 8(SP)
	0x0052 00082 (<autogenerated>:1)	CALL	"".V.PutJ(SB)
	0x0057 00087 (<autogenerated>:1)	MOVQ	32(SP), BP
	0x005c 00092 (<autogenerated>:1)	ADDQ	$40, SP
	0x0060 00096 (<autogenerated>:1)	RET
	0x0061 00097 (<autogenerated>:1)	CALL	runtime.panicwrap(SB)
	0x0066 00102 (<autogenerated>:1)	XCHGL	AX, AX
	0x0067 00103 (<autogenerated>:1)	NOP
	0x0067 00103 (<autogenerated>:1)	PCDATA	$1, $-1
	0x0067 00103 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0067 00103 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x006c 00108 (<autogenerated>:1)	JMP	0
	0x006e 00110 (<autogenerated>:1)	LEAQ	48(SP), DI
	0x0073 00115 (<autogenerated>:1)	CMPQ	(BX), DI
	0x0076 00118 (<autogenerated>:1)	JNE	38
	0x0078 00120 (<autogenerated>:1)	MOVQ	SP, (BX)
	0x007b 00123 (<autogenerated>:1)	JMP	38
	0x0000 64 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 58 48  dH..%....H;a.vXH
	0x0010 83 ec 28 48 89 6c 24 20 48 8d 6c 24 20 48 8b 59  ..(H.l$ H.l$ H.Y
	0x0020 20 48 85 db 75 48 48 83 7c 24 30 00 75 02 eb 31   H..uHH.|$0.u..1
	0x0030 48 8b 44 24 30 84 00 8b 08 48 8b 40 08 89 4c 24  H.D$0....H.@..L$
	0x0040 10 48 89 44 24 18 8b 4c 24 10 89 0c 24 48 89 44  .H.D$..L$...$H.D
	0x0050 24 08 e8 00 00 00 00 48 8b 6c 24 20 48 83 c4 28  $......H.l$ H..(
	0x0060 c3 e8 00 00 00 00 90 e8 00 00 00 00 eb 92 48 8d  ..............H.
	0x0070 7c 24 30 48 39 3b 75 ae 48 89 23 eb a9           |$0H9;u.H.#..
	rel 5+4 t=16 TLS+0
	rel 83+4 t=8 "".V.PutJ+0
	rel 98+4 t=8 runtime.panicwrap+0
	rel 104+4 t=8 runtime.morestack_noctxt+0
go.cuinfo.packagename. SDWARFINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
go.string."偏移量" SRODATA dupok size=9
	0x0000 e5 81 8f e7 a7 bb e9 87 8f                       .........
go.loc."".memoryAlign SDWARFLOC size=0
go.info."".memoryAlign SDWARFINFO size=40
	0x0000 03 22 22 2e 6d 65 6d 6f 72 79 41 6c 69 67 6e 00  ."".memoryAlign.
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0020 01 9c 00 00 00 00 01 00                          ........
	rel 16+8 t=1 "".memoryAlign+0
	rel 24+8 t=1 "".memoryAlign+1066
	rel 34+4 t=29 gofile../home/yzf/goproject/cloud-pass-rebuild/pointer/main.go+0
go.range."".memoryAlign SDWARFRANGE size=0
go.isstmt."".memoryAlign SDWARFMISC size=0
	0x0000 04 1b 04 17 03 03 01 66 02 08 01 66 02 08 01 66  .......f...f...f
	0x0010 02 08 01 66 02 08 01 66 02 08 01 66 02 08 01 66  ...f...f...f...f
	0x0020 02 08 01 66 02 08 01 66 02 1f 00                 ...f...f...
runtime.gcbits.01 SRODATA dupok size=1
	0x0000 01                                               .
type..namedata.*interface {}- SRODATA dupok size=16
	0x0000 00 00 0d 2a 69 6e 74 65 72 66 61 63 65 20 7b 7d  ...*interface {}
type.*interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 4f 0f 96 9d 00 08 08 36 00 00 00 00 00 00 00 00  O......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*interface {}-+0
	rel 48+8 t=1 type.interface {}+0
runtime.gcbits.02 SRODATA dupok size=1
	0x0000 02                                               .
type.interface {} SRODATA dupok size=80
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 e7 57 a0 18 02 08 08 14 00 00 00 00 00 00 00 00  .W..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.algarray+144
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*interface {}-+0
	rel 44+4 t=6 type.*interface {}+0
	rel 56+8 t=1 type.interface {}+80
type..namedata.*[]interface {}- SRODATA dupok size=18
	0x0000 00 00 0f 2a 5b 5d 69 6e 74 65 72 66 61 63 65 20  ...*[]interface 
	0x0010 7b 7d                                            {}
type.*[]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 f3 04 9a e7 00 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]interface {}-+0
	rel 48+8 t=1 type.[]interface {}+0
type.[]interface {} SRODATA dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 70 93 ea 2f 02 08 08 17 00 00 00 00 00 00 00 00  p../............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]interface {}-+0
	rel 44+4 t=6 type.*[]interface {}+0
	rel 48+8 t=1 type.interface {}+0
type..namedata.*[1]interface {}- SRODATA dupok size=19
	0x0000 00 00 10 2a 5b 31 5d 69 6e 74 65 72 66 61 63 65  ...*[1]interface
	0x0010 20 7b 7d                                          {}
type.*[1]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 bf 03 a8 35 00 08 08 36 00 00 00 00 00 00 00 00  ...5...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[1]interface {}-+0
	rel 48+8 t=1 type.[1]interface {}+0
type.[1]interface {} SRODATA dupok size=72
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 50 91 5b fa 02 08 08 11 00 00 00 00 00 00 00 00  P.[.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 01 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+144
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*[1]interface {}-+0
	rel 44+4 t=6 type.*[1]interface {}+0
	rel 48+8 t=1 type.interface {}+0
	rel 56+8 t=1 type.[]interface {}+0
go.loc."".main SDWARFLOC size=0
go.info."".main SDWARFINFO size=55
	0x0000 03 22 22 2e 6d 61 69 6e 00 00 00 00 00 00 00 00  ."".main........
	0x0010 00 00 00 00 00 00 00 00 00 01 9c 00 00 00 00 01  ................
	0x0020 0a 62 00 3b 00 00 00 00 02 91 60 0a 61 00 3b 00  .b.;......`.a.;.
	0x0030 00 00 00 02 91 68 00                             .....h.
	rel 9+8 t=1 "".main+0
	rel 17+8 t=1 "".main+111
	rel 27+4 t=29 gofile../home/yzf/goproject/cloud-pass-rebuild/pointer/main.go+0
	rel 36+4 t=28 go.info.int+0
	rel 47+4 t=28 go.info.int+0
go.range."".main SDWARFRANGE size=0
go.isstmt."".main SDWARFMISC size=0
	0x0000 04 0f 04 0e 03 09 01 09 02 05 01 0d 02 0a 01 0e  ................
	0x0010 02 16 00                                         ...
go.string."i=%d\n" SRODATA dupok size=5
	0x0000 69 3d 25 64 0a                                   i=%d.
go.loc."".V.PutI SDWARFLOC size=0
go.info."".V.PutI SDWARFINFO size=49
	0x0000 03 22 22 2e 56 2e 50 75 74 49 00 00 00 00 00 00  ."".V.PutI......
	0x0010 00 00 00 00 00 00 00 00 00 00 00 01 9c 00 00 00  ................
	0x0020 00 01 0f 74 68 69 73 00 00 48 00 00 00 00 01 9c  ...this..H......
	0x0030 00                                               .
	rel 11+8 t=1 "".V.PutI+0
	rel 19+8 t=1 "".V.PutI+200
	rel 29+4 t=29 gofile../home/yzf/goproject/cloud-pass-rebuild/pointer/main.go+0
	rel 42+4 t=28 go.info."".V+0
go.range."".V.PutI SDWARFRANGE size=0
go.isstmt."".V.PutI SDWARFMISC size=0
	0x0000 04 13 04 0e 03 07 01 03 02 05 01 7f 02 19 00     ...............
go.string."j=%d\n" SRODATA dupok size=5
	0x0000 6a 3d 25 64 0a                                   j=%d.
go.loc."".V.PutJ SDWARFLOC size=0
go.info."".V.PutJ SDWARFINFO size=49
	0x0000 03 22 22 2e 56 2e 50 75 74 4a 00 00 00 00 00 00  ."".V.PutJ......
	0x0010 00 00 00 00 00 00 00 00 00 00 00 01 9c 00 00 00  ................
	0x0020 00 01 0f 74 68 69 73 00 00 4c 00 00 00 00 01 9c  ...this..L......
	0x0030 00                                               .
	rel 11+8 t=1 "".V.PutJ+0
	rel 19+8 t=1 "".V.PutJ+202
	rel 29+4 t=29 gofile../home/yzf/goproject/cloud-pass-rebuild/pointer/main.go+0
	rel 42+4 t=28 go.info."".V+0
go.range."".V.PutJ SDWARFRANGE size=0
go.isstmt."".V.PutJ SDWARFMISC size=0
	0x0000 04 13 04 0e 03 08 01 04 02 05 01 7f 02 19 00     ...............
go.string."uintptr-int32: %d\n" SRODATA dupok size=18
	0x0000 75 69 6e 74 70 74 72 2d 69 6e 74 33 32 3a 20 25  uintptr-int32: %
	0x0010 64 0a                                            d.
go.loc."".pointerToComm SDWARFLOC size=0
go.info."".pointerToComm SDWARFINFO size=78
	0x0000 03 22 22 2e 70 6f 69 6e 74 65 72 54 6f 43 6f 6d  ."".pointerToCom
	0x0010 6d 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  m...............
	0x0020 00 00 01 9c 00 00 00 00 01 0a 76 00 52 00 00 00  ..........v.R...
	0x0030 00 03 91 e0 7e 0a 6a 00 5e 00 00 00 00 03 91 e8  ....~.j.^.......
	0x0040 7e 0a 69 00 54 00 00 00 00 03 91 f0 7e 00        ~.i.T.......~.
	rel 18+8 t=1 "".pointerToComm+0
	rel 26+8 t=1 "".pointerToComm+646
	rel 36+4 t=29 gofile../home/yzf/goproject/cloud-pass-rebuild/pointer/main.go+0
	rel 45+4 t=28 go.info.*"".V+0
	rel 57+4 t=28 go.info.*int64+0
	rel 69+4 t=28 go.info.*int32+0
go.range."".pointerToComm SDWARFRANGE size=0
go.isstmt."".pointerToComm SDWARFMISC size=0
	0x0000 04 1b 04 17 03 08 01 13 02 0a 01 08 02 05 01 04  ................
	0x0010 02 05 01 83 01 02 08 01 8f 01 02 08 01 72 02 0a  .............r..
	0x0020 01 09 02 02 01 08 02 05 01 1d 02 0a 01 1d 02 1f  ................
	0x0030 00                                               .
go.loc."".add1 SDWARFLOC size=0
go.info."".add1 SDWARFINFO size=70
	0x0000 03 22 22 2e 61 64 64 31 00 00 00 00 00 00 00 00  ."".add1........
	0x0010 00 00 00 00 00 00 00 00 00 01 9c 00 00 00 00 01  ................
	0x0020 0f 78 00 00 67 00 00 00 00 01 9c 0f 79 00 00 67  .x..g.......y..g
	0x0030 00 00 00 00 02 91 08 0f 7e 72 32 00 01 67 00 00  ........~r2..g..
	0x0040 00 00 02 91 10 00                                ......
	rel 9+8 t=1 "".add1+0
	rel 17+8 t=1 "".add1+25
	rel 27+4 t=29 gofile../home/yzf/goproject/cloud-pass-rebuild/pointer/main.go+0
	rel 37+4 t=28 go.info.int+0
	rel 48+4 t=28 go.info.int+0
	rel 62+4 t=28 go.info.int+0
go.range."".add1 SDWARFRANGE size=0
go.isstmt."".add1 SDWARFMISC size=0
	0x0000 04 0e 01 0b 00                                   .....
go.loc."".add2 SDWARFLOC size=0
go.info."".add2 SDWARFINFO size=70
	0x0000 03 22 22 2e 61 64 64 32 00 00 00 00 00 00 00 00  ."".add2........
	0x0010 00 00 00 00 00 00 00 00 00 01 9c 00 00 00 00 01  ................
	0x0020 0f 78 00 00 6b 00 00 00 00 01 9c 0f 79 00 00 6b  .x..k.......y..k
	0x0030 00 00 00 00 02 91 08 0f 7e 72 32 00 01 6b 00 00  ........~r2..k..
	0x0040 00 00 02 91 10 00                                ......
	rel 9+8 t=1 "".add2+0
	rel 17+8 t=1 "".add2+148
	rel 27+4 t=29 gofile../home/yzf/goproject/cloud-pass-rebuild/pointer/main.go+0
	rel 37+4 t=28 go.info.int+0
	rel 48+4 t=28 go.info.int+0
	rel 62+4 t=28 go.info.int+0
go.range."".add2 SDWARFRANGE size=0
go.isstmt."".add2 SDWARFMISC size=0
	0x0000 04 14 04 17 03 14 01 23 02 08 01 20 02 0a 00     .......#... ...
""..inittask SNOPTRDATA size=32
	0x0000 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 fmt..inittask+0
""..stmp_0 SRODATA size=8
	0x0000 08 00 00 00 00 00 00 00                          ........
""..stmp_1 SRODATA size=8
	0x0000 08 00 00 00 00 00 00 00                          ........
""..stmp_2 SRODATA size=8
	0x0000 04 00 00 00 00 00 00 00                          ........
""..stmp_3 SRODATA size=8
	0x0000 08 00 00 00 00 00 00 00                          ........
""..stmp_4 SRODATA size=16
	0x0000 00 00 00 00 00 00 00 00 09 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."偏移量"+0
""..stmp_5 SRODATA size=8
""..stmp_6 SRODATA size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
""..stmp_7 SRODATA size=8
	0x0000 08 00 00 00 00 00 00 00                          ........
""..stmp_8 SRODATA size=8
	0x0000 10 00 00 00 00 00 00 00                          ........
""..stmp_9 SRODATA size=8
	0x0000 04 00 00 00 00 00 00 00                          ........
""..stmp_10 SRODATA size=8
	0x0000 08 00 00 00 00 00 00 00                          ........
type..namedata.*main.SizeOfA. SRODATA dupok size=16
	0x0000 01 00 0d 2a 6d 61 69 6e 2e 53 69 7a 65 4f 66 41  ...*main.SizeOfA
type.*"".SizeOfA SRODATA size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 ed 7b 52 ab 00 08 08 36 00 00 00 00 00 00 00 00  .{R....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*main.SizeOfA.+0
	rel 48+8 t=1 type."".SizeOfA+0
runtime.gcbits. SRODATA dupok size=0
type..namedata.A. SRODATA dupok size=4
	0x0000 01 00 01 41                                      ...A
type."".SizeOfA SRODATA size=120
	0x0000 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 d1 ad d5 a7 07 08 08 19 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 01 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 28 00 00 00 00 00 00 00  ........(.......
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type..namedata.*main.SizeOfA.+0
	rel 44+4 t=5 type.*"".SizeOfA+0
	rel 56+8 t=1 type."".SizeOfA+96
	rel 80+4 t=5 type..importpath."".+0
	rel 96+8 t=1 type..namedata.A.+0
	rel 104+8 t=1 type.int+0
go.loc.type..hash."".SizeOfC SDWARFLOC dupok size=0
go.info.type..hash."".SizeOfC SDWARFINFO dupok size=84
	0x0000 03 74 79 70 65 2e 2e 68 61 73 68 2e 22 22 2e 53  .type..hash."".S
	0x0010 69 7a 65 4f 66 43 00 00 00 00 00 00 00 00 00 00  izeOfC..........
	0x0020 00 00 00 00 00 00 00 01 9c 00 00 00 00 01 0f 70  ...............p
	0x0030 00 00 01 00 00 00 00 01 9c 0f 68 00 00 01 00 00  ..........h.....
	0x0040 00 00 02 91 08 0f 7e 72 32 00 01 01 00 00 00 00  ......~r2.......
	0x0050 02 91 10 00                                      ....
	rel 23+8 t=1 type..hash."".SizeOfC+0
	rel 31+8 t=1 type..hash."".SizeOfC+167
	rel 41+4 t=29 gofile..<autogenerated>+0
	rel 51+4 t=28 go.info.*"".SizeOfC+0
	rel 62+4 t=28 go.info.uintptr+0
	rel 76+4 t=28 go.info.uintptr+0
go.range.type..hash."".SizeOfC SDWARFRANGE dupok size=0
go.isstmt.type..hash."".SizeOfC SDWARFMISC dupok size=0
	0x0000 04 13 04 0e 03 09 01 21 02 05 01 2f 02 05 01 19  .......!.../....
	0x0010 02 0a 00                                         ...
go.loc.type..eq."".SizeOfC SDWARFLOC dupok size=0
go.info.type..eq."".SizeOfC SDWARFINFO dupok size=82
	0x0000 03 74 79 70 65 2e 2e 65 71 2e 22 22 2e 53 69 7a  .type..eq."".Siz
	0x0010 65 4f 66 43 00 00 00 00 00 00 00 00 00 00 00 00  eOfC............
	0x0020 00 00 00 00 00 01 9c 00 00 00 00 01 0f 70 00 00  .............p..
	0x0030 01 00 00 00 00 01 9c 0f 71 00 00 01 00 00 00 00  ........q.......
	0x0040 02 91 08 0f 7e 72 32 00 01 01 00 00 00 00 02 91  ....~r2.........
	0x0050 10 00                                            ..
	rel 21+8 t=1 type..eq."".SizeOfC+0
	rel 29+8 t=1 type..eq."".SizeOfC+89
	rel 39+4 t=29 gofile..<autogenerated>+0
	rel 49+4 t=28 go.info.*"".SizeOfC+0
	rel 60+4 t=28 go.info.*"".SizeOfC+0
	rel 74+4 t=28 go.info.bool+0
go.range.type..eq."".SizeOfC SDWARFRANGE dupok size=0
go.isstmt.type..eq."".SizeOfC SDWARFMISC dupok size=0
	0x0000 08 0e 03 05 01 31 02 05 01 10 00                 .....1.....
type..hashfunc."".SizeOfC SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type..hash."".SizeOfC+0
type..eqfunc."".SizeOfC SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type..eq."".SizeOfC+0
type..alg."".SizeOfC SRODATA dupok size=16
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 type..hashfunc."".SizeOfC+0
	rel 8+8 t=1 type..eqfunc."".SizeOfC+0
type..namedata.*main.SizeOfC. SRODATA dupok size=16
	0x0000 01 00 0d 2a 6d 61 69 6e 2e 53 69 7a 65 4f 66 43  ...*main.SizeOfC
type.*"".SizeOfC SRODATA size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 a5 71 f2 4e 00 08 08 36 00 00 00 00 00 00 00 00  .q.N...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*main.SizeOfC.+0
	rel 48+8 t=1 type."".SizeOfC+0
type..namedata.C. SRODATA dupok size=4
	0x0000 01 00 01 43                                      ...C
type."".SizeOfC SRODATA size=144
	0x0000 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 54 19 3b e8 07 04 04 19 00 00 00 00 00 00 00 00  T.;.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 02 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 40 00 00 00 00 00 00 00  ........@.......
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 type..alg."".SizeOfC+0
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type..namedata.*main.SizeOfC.+0
	rel 44+4 t=5 type.*"".SizeOfC+0
	rel 56+8 t=1 type."".SizeOfC+96
	rel 80+4 t=5 type..importpath."".+0
	rel 96+8 t=1 type..namedata.A.+0
	rel 104+8 t=1 type.uint8+0
	rel 120+8 t=1 type..namedata.C.+0
	rel 128+8 t=1 type.int32+0
go.loc.type..hash."".SizeOfH SDWARFLOC dupok size=0
go.info.type..hash."".SizeOfH SDWARFINFO dupok size=84
	0x0000 03 74 79 70 65 2e 2e 68 61 73 68 2e 22 22 2e 53  .type..hash."".S
	0x0010 69 7a 65 4f 66 48 00 00 00 00 00 00 00 00 00 00  izeOfH..........
	0x0020 00 00 00 00 00 00 00 01 9c 00 00 00 00 01 0f 70  ...............p
	0x0030 00 00 01 00 00 00 00 01 9c 0f 68 00 00 01 00 00  ..........h.....
	0x0040 00 00 02 91 08 0f 7e 72 32 00 01 01 00 00 00 00  ......~r2.......
	0x0050 02 91 10 00                                      ....
	rel 23+8 t=1 type..hash."".SizeOfH+0
	rel 31+8 t=1 type..hash."".SizeOfH+219
	rel 41+4 t=29 gofile..<autogenerated>+0
	rel 51+4 t=28 go.info.*"".SizeOfH+0
	rel 62+4 t=28 go.info.uintptr+0
	rel 76+4 t=28 go.info.uintptr+0
go.range.type..hash."".SizeOfH SDWARFRANGE dupok size=0
go.isstmt.type..hash."".SizeOfH SDWARFMISC dupok size=0
	0x0000 04 13 04 0e 03 09 01 21 02 05 01 2f 02 05 01 2f  .......!.../.../
	0x0010 02 05 01 19 02 0a 00                             .......
go.loc.type..eq."".SizeOfH SDWARFLOC dupok size=0
go.info.type..eq."".SizeOfH SDWARFINFO dupok size=82
	0x0000 03 74 79 70 65 2e 2e 65 71 2e 22 22 2e 53 69 7a  .type..eq."".Siz
	0x0010 65 4f 66 48 00 00 00 00 00 00 00 00 00 00 00 00  eOfH............
	0x0020 00 00 00 00 00 01 9c 00 00 00 00 01 0f 70 00 00  .............p..
	0x0030 01 00 00 00 00 01 9c 0f 71 00 00 01 00 00 00 00  ........q.......
	0x0040 02 91 08 0f 7e 72 32 00 01 01 00 00 00 00 02 91  ....~r2.........
	0x0050 10 00                                            ..
	rel 21+8 t=1 type..eq."".SizeOfH+0
	rel 29+8 t=1 type..eq."".SizeOfH+173
	rel 39+4 t=29 gofile..<autogenerated>+0
	rel 49+4 t=28 go.info.*"".SizeOfH+0
	rel 60+4 t=28 go.info.*"".SizeOfH+0
	rel 74+4 t=28 go.info.bool+0
go.range.type..eq."".SizeOfH SDWARFRANGE dupok size=0
go.isstmt.type..eq."".SizeOfH SDWARFMISC dupok size=0
	0x0000 08 0e 03 05 01 81 01 02 05 01 14 00              ............
type..hashfunc."".SizeOfH SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type..hash."".SizeOfH+0
type..eqfunc."".SizeOfH SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type..eq."".SizeOfH+0
type..alg."".SizeOfH SRODATA dupok size=16
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 type..hashfunc."".SizeOfH+0
	rel 8+8 t=1 type..eqfunc."".SizeOfH+0
type..namedata.*main.SizeOfH. SRODATA dupok size=16
	0x0000 01 00 0d 2a 6d 61 69 6e 2e 53 69 7a 65 4f 66 48  ...*main.SizeOfH
type.*"".SizeOfH SRODATA size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 7a 96 05 21 00 08 08 36 00 00 00 00 00 00 00 00  z..!...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*main.SizeOfH.+0
	rel 48+8 t=1 type."".SizeOfH+0
type..namedata.B. SRODATA dupok size=4
	0x0000 01 00 01 42                                      ...B
type..namedata.D. SRODATA dupok size=4
	0x0000 01 00 01 44                                      ...D
type."".SizeOfH SRODATA size=192
	0x0000 18 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 87 c0 93 68 07 08 08 19 00 00 00 00 00 00 00 00  ...h............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 04 00 00 00 00 00 00 00 04 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 70 00 00 00 00 00 00 00  ........p.......
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 04 00 00 00 00 00 00 00  ................
	0x0090 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00a0 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00b0 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00  ........ .......
	rel 24+8 t=1 type..alg."".SizeOfH+0
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type..namedata.*main.SizeOfH.+0
	rel 44+4 t=5 type.*"".SizeOfH+0
	rel 56+8 t=1 type."".SizeOfH+96
	rel 80+4 t=5 type..importpath."".+0
	rel 96+8 t=1 type..namedata.A.+0
	rel 104+8 t=1 type.uint8+0
	rel 120+8 t=1 type..namedata.C.+0
	rel 128+8 t=1 type.int16+0
	rel 144+8 t=1 type..namedata.B.+0
	rel 152+8 t=1 type.int64+0
	rel 168+8 t=1 type..namedata.D.+0
	rel 176+8 t=1 type.int32+0
go.loc.type..hash."".V SDWARFLOC dupok size=0
go.info.type..hash."".V SDWARFINFO dupok size=78
	0x0000 03 74 79 70 65 2e 2e 68 61 73 68 2e 22 22 2e 56  .type..hash."".V
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0020 00 01 9c 00 00 00 00 01 0f 70 00 00 01 00 00 00  .........p......
	0x0030 00 01 9c 0f 68 00 00 01 00 00 00 00 02 91 08 0f  ....h...........
	0x0040 7e 72 32 00 01 01 00 00 00 00 02 91 10 00        ~r2...........
	rel 17+8 t=1 type..hash."".V+0
	rel 25+8 t=1 type..hash."".V+167
	rel 35+4 t=29 gofile..<autogenerated>+0
	rel 45+4 t=28 go.info.*"".V+0
	rel 56+4 t=28 go.info.uintptr+0
	rel 70+4 t=28 go.info.uintptr+0
go.range.type..hash."".V SDWARFRANGE dupok size=0
go.isstmt.type..hash."".V SDWARFMISC dupok size=0
	0x0000 04 13 04 0e 03 09 01 21 02 05 01 2f 02 05 01 19  .......!.../....
	0x0010 02 0a 00                                         ...
go.loc.type..eq."".V SDWARFLOC dupok size=0
go.info.type..eq."".V SDWARFINFO dupok size=76
	0x0000 03 74 79 70 65 2e 2e 65 71 2e 22 22 2e 56 00 00  .type..eq."".V..
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01  ................
	0x0020 9c 00 00 00 00 01 0f 70 00 00 01 00 00 00 00 01  .......p........
	0x0030 9c 0f 71 00 00 01 00 00 00 00 02 91 08 0f 7e 72  ..q...........~r
	0x0040 32 00 01 01 00 00 00 00 02 91 10 00              2...........
	rel 15+8 t=1 type..eq."".V+0
	rel 23+8 t=1 type..eq."".V+90
	rel 33+4 t=29 gofile..<autogenerated>+0
	rel 43+4 t=28 go.info.*"".V+0
	rel 54+4 t=28 go.info.*"".V+0
	rel 68+4 t=28 go.info.bool+0
go.range.type..eq."".V SDWARFRANGE dupok size=0
go.isstmt.type..eq."".V SDWARFMISC dupok size=0
	0x0000 08 0e 03 05 01 32 02 05 01 10 00                 .....2.....
type..hashfunc."".V SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type..hash."".V+0
type..eqfunc."".V SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type..eq."".V+0
type..alg."".V SRODATA dupok size=16
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 type..hashfunc."".V+0
	rel 8+8 t=1 type..eqfunc."".V+0
go.loc."".(*V).PutI SDWARFLOC dupok size=0
go.info."".(*V).PutI SDWARFINFO dupok size=53
	0x0000 03 22 22 2e 28 2a 56 29 2e 50 75 74 49 00 00 00  ."".(*V).PutI...
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 9c  ................
	0x0020 00 00 00 00 01 0f 2e 74 68 69 73 00 00 01 00 00  .......this.....
	0x0030 00 00 01 9c 00                                   .....
	rel 14+8 t=1 "".(*V).PutI+0
	rel 22+8 t=1 "".(*V).PutI+125
	rel 32+4 t=29 gofile..<autogenerated>+0
	rel 46+4 t=28 go.info.*"".V+0
go.range."".(*V).PutI SDWARFRANGE dupok size=0
go.isstmt."".(*V).PutI SDWARFMISC dupok size=0
	0x0000 04 0f 04 17 03 06 01 26 02 2b 00                 .......&.+.
go.loc."".(*V).PutJ SDWARFLOC dupok size=0
go.info."".(*V).PutJ SDWARFINFO dupok size=53
	0x0000 03 22 22 2e 28 2a 56 29 2e 50 75 74 4a 00 00 00  ."".(*V).PutJ...
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 9c  ................
	0x0020 00 00 00 00 01 0f 2e 74 68 69 73 00 00 01 00 00  .......this.....
	0x0030 00 00 01 9c 00                                   .....
	rel 14+8 t=1 "".(*V).PutJ+0
	rel 22+8 t=1 "".(*V).PutJ+125
	rel 32+4 t=29 gofile..<autogenerated>+0
	rel 46+4 t=28 go.info.*"".V+0
go.range."".(*V).PutJ SDWARFRANGE dupok size=0
go.isstmt."".(*V).PutJ SDWARFMISC dupok size=0
	0x0000 04 0f 04 17 03 06 01 26 02 2b 00                 .......&.+.
type..namedata.*main.V. SRODATA dupok size=10
	0x0000 01 00 07 2a 6d 61 69 6e 2e 56                    ...*main.V
type..namedata.*func(*main.V)- SRODATA dupok size=17
	0x0000 00 00 0e 2a 66 75 6e 63 28 2a 6d 61 69 6e 2e 56  ...*func(*main.V
	0x0010 29                                               )
type.*func(*"".V) SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 97 26 95 53 00 08 08 36 00 00 00 00 00 00 00 00  .&.S...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(*main.V)-+0
	rel 48+8 t=1 type.func(*"".V)+0
type.func(*"".V) SRODATA dupok size=64
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 70 7b e7 cd 02 08 08 33 00 00 00 00 00 00 00 00  p{.....3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(*main.V)-+0
	rel 44+4 t=6 type.*func(*"".V)+0
	rel 56+8 t=1 type.*"".V+0
type..namedata.PutI. SRODATA dupok size=7
	0x0000 01 00 04 50 75 74 49                             ...PutI
type..namedata.*func()- SRODATA dupok size=10
	0x0000 00 00 07 2a 66 75 6e 63 28 29                    ...*func()
type.*func() SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 9b 90 75 1b 00 08 08 36 00 00 00 00 00 00 00 00  ..u....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func()-+0
	rel 48+8 t=1 type.func()+0
type.func() SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 f6 bc 82 f6 02 08 08 33 00 00 00 00 00 00 00 00  .......3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00                                      ....
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func()-+0
	rel 44+4 t=6 type.*func()+0
type..namedata.PutJ. SRODATA dupok size=7
	0x0000 01 00 04 50 75 74 4a                             ...PutJ
type.*"".V SRODATA size=104
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 00 7d 6b 3e 01 08 08 36 00 00 00 00 00 00 00 00  .}k>...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 02 00 02 00  ................
	0x0040 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*main.V.+0
	rel 48+8 t=1 type."".V+0
	rel 56+4 t=5 type..importpath."".+0
	rel 72+4 t=5 type..namedata.PutI.+0
	rel 76+4 t=24 type.func()+0
	rel 80+4 t=24 "".(*V).PutI+0
	rel 84+4 t=24 "".(*V).PutI+0
	rel 88+4 t=5 type..namedata.PutJ.+0
	rel 92+4 t=24 type.func()+0
	rel 96+4 t=24 "".(*V).PutJ+0
	rel 100+4 t=24 "".(*V).PutJ+0
type..namedata.*func(main.V)- SRODATA dupok size=16
	0x0000 00 00 0d 2a 66 75 6e 63 28 6d 61 69 6e 2e 56 29  ...*func(main.V)
type.*func("".V) SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 0d ec 00 20 00 08 08 36 00 00 00 00 00 00 00 00  ... ...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(main.V)-+0
	rel 48+8 t=1 type.func("".V)+0
type.func("".V) SRODATA dupok size=64
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 81 56 43 2c 02 08 08 33 00 00 00 00 00 00 00 00  .VC,...3........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*func(main.V)-+0
	rel 44+4 t=6 type.*func("".V)+0
	rel 56+8 t=1 type."".V+0
type..namedata.i- SRODATA dupok size=4
	0x0000 00 00 01 69                                      ...i
type..namedata.j- SRODATA dupok size=4
	0x0000 00 00 01 6a                                      ...j
type."".V SRODATA size=176
	0x0000 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 4a a1 ad b8 07 08 08 19 00 00 00 00 00 00 00 00  J...............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 02 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 02 00 02 00 40 00 00 00 00 00 00 00  ........@.......
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0090 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00a0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 type..alg."".V+0
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type..namedata.*main.V.+0
	rel 44+4 t=5 type.*"".V+0
	rel 48+8 t=1 type..importpath."".+0
	rel 56+8 t=1 type."".V+96
	rel 80+4 t=5 type..importpath."".+0
	rel 96+8 t=1 type..namedata.i-+0
	rel 104+8 t=1 type.int32+0
	rel 120+8 t=1 type..namedata.j-+0
	rel 128+8 t=1 type.int64+0
	rel 144+4 t=5 type..namedata.PutI.+0
	rel 148+4 t=24 type.func()+0
	rel 152+4 t=24 "".(*V).PutI+0
	rel 156+4 t=24 "".V.PutI+0
	rel 160+4 t=5 type..namedata.PutJ.+0
	rel 164+4 t=24 type.func()+0
	rel 168+4 t=24 "".(*V).PutJ+0
	rel 172+4 t=24 "".V.PutJ+0
type..namedata.*[]uint8- SRODATA dupok size=11
	0x0000 00 00 08 2a 5b 5d 75 69 6e 74 38                 ...*[]uint8
type.*[]uint8 SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 a5 8e d0 69 00 08 08 36 00 00 00 00 00 00 00 00  ...i...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]uint8-+0
	rel 48+8 t=1 type.[]uint8+0
type.[]uint8 SRODATA dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 df 7e 2e 38 02 08 08 17 00 00 00 00 00 00 00 00  .~.8............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]uint8-+0
	rel 44+4 t=6 type.*[]uint8+0
	rel 48+8 t=1 type.uint8+0
type..hashfunc200 SRODATA dupok size=16
	0x0000 00 00 00 00 00 00 00 00 c8 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 runtime.memhash_varlen+0
type..eqfunc200 SRODATA dupok size=16
	0x0000 00 00 00 00 00 00 00 00 c8 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 runtime.memequal_varlen+0
type..alg200 SRODATA dupok size=16
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 type..hashfunc200+0
	rel 8+8 t=1 type..eqfunc200+0
type..namedata.*[200]uint8- SRODATA dupok size=14
	0x0000 00 00 0b 2a 5b 32 30 30 5d 75 69 6e 74 38        ...*[200]uint8
type.*[200]uint8 SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 78 7a 36 47 00 08 08 36 00 00 00 00 00 00 00 00  xz6G...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[200]uint8-+0
	rel 48+8 t=1 type.[200]uint8+0
type.[200]uint8 SRODATA dupok size=72
	0x0000 c8 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 a3 66 90 a8 02 01 01 11 00 00 00 00 00 00 00 00  .f..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 c8 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 type..alg200+0
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type..namedata.*[200]uint8-+0
	rel 44+4 t=6 type.*[200]uint8+0
	rel 48+8 t=1 type.uint8+0
	rel 56+8 t=1 type.[]uint8+0
type..importpath.fmt. SRODATA dupok size=6
	0x0000 00 00 03 66 6d 74                                ...fmt
type..importpath.unsafe. SRODATA dupok size=9
	0x0000 00 00 06 75 6e 73 61 66 65                       ...unsafe
gclocals·69c1753bd5f81501d95132d08af04464 SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·9ba39cf7fd4d1ece0848d41db9851eb9 SRODATA dupok size=18
	0x0000 02 00 00 00 26 00 00 00 00 00 00 00 00 00 04 00  ....&...........
	0x0010 00 00                                            ..
gclocals·bfec7e55b3f043d1941c093912808913 SRODATA dupok size=11
	0x0000 03 00 00 00 02 00 00 00 00 01 03                 ...........
"".memoryAlign.stkobj SRODATA dupok size=24
	0x0000 01 00 00 00 00 00 00 00 18 ff ff ff ff ff ff ff  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
	rel 16+8 t=1 type.[1]interface {}+0
gclocals·33cdeccccebe80329f1fdbee7f5874cb SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·f6bd6b3389b872033d462029172c8612 SRODATA dupok size=8
	0x0000 04 00 00 00 00 00 00 00                          ........
gclocals·21ac5cb560c4179d5f078a79b4f35106 SRODATA dupok size=12
	0x0000 04 00 00 00 07 00 00 00 00 02 0a 10              ............
gclocals·f6aec3988379d2bd21c69c093370a150 SRODATA dupok size=12
	0x0000 04 00 00 00 03 00 00 00 00 01 03 07              ............
"".V.PutI.stkobj SRODATA dupok size=24
	0x0000 01 00 00 00 00 00 00 00 d8 ff ff ff ff ff ff ff  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
	rel 16+8 t=1 type.[1]interface {}+0
"".V.PutJ.stkobj SRODATA dupok size=24
	0x0000 01 00 00 00 00 00 00 00 d8 ff ff ff ff ff ff ff  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
	rel 16+8 t=1 type.[1]interface {}+0
gclocals·f14a5bc6d08bc46424827f54d2e3f8ed SRODATA dupok size=8
	0x0000 06 00 00 00 00 00 00 00                          ........
gclocals·3a46307a051a5dde0f2f979c8313dcc4 SRODATA dupok size=26
	0x0000 06 00 00 00 12 00 00 00 00 00 00 01 00 00 21 00  ..............!.
	0x0010 00 21 01 00 01 01 00 01 02 00                    .!........
"".pointerToComm.stkobj SRODATA dupok size=24
	0x0000 01 00 00 00 00 00 00 00 a8 ff ff ff ff ff ff ff  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
	rel 16+8 t=1 type.[1]interface {}+0
gclocals·cd666f9a7f09fcd2aca7dadbf3522159 SRODATA dupok size=11
	0x0000 03 00 00 00 07 00 00 00 00 40 01                 .........@.
gclocals·1a65e721a2ccc325b382662e7ffee780 SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 01 00                    ..........
gclocals·2589ca35330fc0fce83503f4569854a0 SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 00 00                    ..........
gclocals·9fb7f0986f647f17cb53dda1484e0f7a SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 00 01                    ..........
gclocals·fdbf1f5761f6d17e8ae3f0aaecb6a3c5 SRODATA dupok size=11
	0x0000 03 00 00 00 02 00 00 00 03 02 00                 ...........
gclocals·7d2d5fca80364273fb07d5820a76fef4 SRODATA dupok size=8
	0x0000 03 00 00 00 00 00 00 00                          ........
gclocals·15b76348caca8a511afecadf603e9401 SRODATA dupok size=10
	0x0000 02 00 00 00 03 00 00 00 00 00                    ..........
