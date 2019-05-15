
build/oled_display.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             000023ac  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00002644  0800246c  0800246c  0001246c  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08004ab0  08004ab0  00014ab0  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08004ab8  08004ab8  00014ab8  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             0000080c  20000000  08004abc  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000498  2000080c  080052c8  0002080c  2**2  ALLOC
  7 ._user_heap_stack 00000604  20000ca4  080052c8  00020ca4  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  0002080c  2**0  CONTENTS, READONLY
  9 .debug_info       000094b3  00000000  00000000  00020834  2**0  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev     000012ca  00000000  00000000  00029ce7  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_loc        0000771e  00000000  00000000  0002afb1  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges    00000248  00000000  00000000  000326cf  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges     00001ca8  00000000  00000000  00032917  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_line       00005eb7  00000000  00000000  000345bf  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_str        0000130c  00000000  00000000  0003a476  2**0  CONTENTS, READONLY, DEBUGGING
 16 .comment          00000075  00000000  00000000  0003b782  2**0  CONTENTS, READONLY
 17 .debug_frame      000008b8  00000000  00000000  0003b7f8  2**2  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

080000c0 <__do_global_dtors_aux>:
 80000c0:	b510      	push	{r4, lr}
 80000c2:	4c06      	ldr	r4, [pc, #24]	; (80000dc <__do_global_dtors_aux+0x1c>)
 80000c4:	7823      	ldrb	r3, [r4, #0]
 80000c6:	2b00      	cmp	r3, #0
 80000c8:	d107      	bne.n	80000da <__do_global_dtors_aux+0x1a>
 80000ca:	4b05      	ldr	r3, [pc, #20]	; (80000e0 <__do_global_dtors_aux+0x20>)
 80000cc:	2b00      	cmp	r3, #0
 80000ce:	d002      	beq.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d0:	4804      	ldr	r0, [pc, #16]	; (80000e4 <__do_global_dtors_aux+0x24>)
 80000d2:	e000      	b.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d4:	bf00      	nop
 80000d6:	2301      	movs	r3, #1
 80000d8:	7023      	strb	r3, [r4, #0]
 80000da:	bd10      	pop	{r4, pc}
 80000dc:	2000080c 	.word	0x2000080c
 80000e0:	00000000 	.word	0x00000000
 80000e4:	08002454 	.word	0x08002454

080000e8 <frame_dummy>:
 80000e8:	4b04      	ldr	r3, [pc, #16]	; (80000fc <frame_dummy+0x14>)
 80000ea:	b510      	push	{r4, lr}
 80000ec:	2b00      	cmp	r3, #0
 80000ee:	d003      	beq.n	80000f8 <frame_dummy+0x10>
 80000f0:	4903      	ldr	r1, [pc, #12]	; (8000100 <frame_dummy+0x18>)
 80000f2:	4804      	ldr	r0, [pc, #16]	; (8000104 <frame_dummy+0x1c>)
 80000f4:	e000      	b.n	80000f8 <frame_dummy+0x10>
 80000f6:	bf00      	nop
 80000f8:	bd10      	pop	{r4, pc}
 80000fa:	46c0      	nop			; (mov r8, r8)
 80000fc:	00000000 	.word	0x00000000
 8000100:	20000810 	.word	0x20000810
 8000104:	08002454 	.word	0x08002454

08000108 <__udivsi3>:
 8000108:	2200      	movs	r2, #0
 800010a:	0843      	lsrs	r3, r0, #1
 800010c:	428b      	cmp	r3, r1
 800010e:	d374      	bcc.n	80001fa <__udivsi3+0xf2>
 8000110:	0903      	lsrs	r3, r0, #4
 8000112:	428b      	cmp	r3, r1
 8000114:	d35f      	bcc.n	80001d6 <__udivsi3+0xce>
 8000116:	0a03      	lsrs	r3, r0, #8
 8000118:	428b      	cmp	r3, r1
 800011a:	d344      	bcc.n	80001a6 <__udivsi3+0x9e>
 800011c:	0b03      	lsrs	r3, r0, #12
 800011e:	428b      	cmp	r3, r1
 8000120:	d328      	bcc.n	8000174 <__udivsi3+0x6c>
 8000122:	0c03      	lsrs	r3, r0, #16
 8000124:	428b      	cmp	r3, r1
 8000126:	d30d      	bcc.n	8000144 <__udivsi3+0x3c>
 8000128:	22ff      	movs	r2, #255	; 0xff
 800012a:	0209      	lsls	r1, r1, #8
 800012c:	ba12      	rev	r2, r2
 800012e:	0c03      	lsrs	r3, r0, #16
 8000130:	428b      	cmp	r3, r1
 8000132:	d302      	bcc.n	800013a <__udivsi3+0x32>
 8000134:	1212      	asrs	r2, r2, #8
 8000136:	0209      	lsls	r1, r1, #8
 8000138:	d065      	beq.n	8000206 <__udivsi3+0xfe>
 800013a:	0b03      	lsrs	r3, r0, #12
 800013c:	428b      	cmp	r3, r1
 800013e:	d319      	bcc.n	8000174 <__udivsi3+0x6c>
 8000140:	e000      	b.n	8000144 <__udivsi3+0x3c>
 8000142:	0a09      	lsrs	r1, r1, #8
 8000144:	0bc3      	lsrs	r3, r0, #15
 8000146:	428b      	cmp	r3, r1
 8000148:	d301      	bcc.n	800014e <__udivsi3+0x46>
 800014a:	03cb      	lsls	r3, r1, #15
 800014c:	1ac0      	subs	r0, r0, r3
 800014e:	4152      	adcs	r2, r2
 8000150:	0b83      	lsrs	r3, r0, #14
 8000152:	428b      	cmp	r3, r1
 8000154:	d301      	bcc.n	800015a <__udivsi3+0x52>
 8000156:	038b      	lsls	r3, r1, #14
 8000158:	1ac0      	subs	r0, r0, r3
 800015a:	4152      	adcs	r2, r2
 800015c:	0b43      	lsrs	r3, r0, #13
 800015e:	428b      	cmp	r3, r1
 8000160:	d301      	bcc.n	8000166 <__udivsi3+0x5e>
 8000162:	034b      	lsls	r3, r1, #13
 8000164:	1ac0      	subs	r0, r0, r3
 8000166:	4152      	adcs	r2, r2
 8000168:	0b03      	lsrs	r3, r0, #12
 800016a:	428b      	cmp	r3, r1
 800016c:	d301      	bcc.n	8000172 <__udivsi3+0x6a>
 800016e:	030b      	lsls	r3, r1, #12
 8000170:	1ac0      	subs	r0, r0, r3
 8000172:	4152      	adcs	r2, r2
 8000174:	0ac3      	lsrs	r3, r0, #11
 8000176:	428b      	cmp	r3, r1
 8000178:	d301      	bcc.n	800017e <__udivsi3+0x76>
 800017a:	02cb      	lsls	r3, r1, #11
 800017c:	1ac0      	subs	r0, r0, r3
 800017e:	4152      	adcs	r2, r2
 8000180:	0a83      	lsrs	r3, r0, #10
 8000182:	428b      	cmp	r3, r1
 8000184:	d301      	bcc.n	800018a <__udivsi3+0x82>
 8000186:	028b      	lsls	r3, r1, #10
 8000188:	1ac0      	subs	r0, r0, r3
 800018a:	4152      	adcs	r2, r2
 800018c:	0a43      	lsrs	r3, r0, #9
 800018e:	428b      	cmp	r3, r1
 8000190:	d301      	bcc.n	8000196 <__udivsi3+0x8e>
 8000192:	024b      	lsls	r3, r1, #9
 8000194:	1ac0      	subs	r0, r0, r3
 8000196:	4152      	adcs	r2, r2
 8000198:	0a03      	lsrs	r3, r0, #8
 800019a:	428b      	cmp	r3, r1
 800019c:	d301      	bcc.n	80001a2 <__udivsi3+0x9a>
 800019e:	020b      	lsls	r3, r1, #8
 80001a0:	1ac0      	subs	r0, r0, r3
 80001a2:	4152      	adcs	r2, r2
 80001a4:	d2cd      	bcs.n	8000142 <__udivsi3+0x3a>
 80001a6:	09c3      	lsrs	r3, r0, #7
 80001a8:	428b      	cmp	r3, r1
 80001aa:	d301      	bcc.n	80001b0 <__udivsi3+0xa8>
 80001ac:	01cb      	lsls	r3, r1, #7
 80001ae:	1ac0      	subs	r0, r0, r3
 80001b0:	4152      	adcs	r2, r2
 80001b2:	0983      	lsrs	r3, r0, #6
 80001b4:	428b      	cmp	r3, r1
 80001b6:	d301      	bcc.n	80001bc <__udivsi3+0xb4>
 80001b8:	018b      	lsls	r3, r1, #6
 80001ba:	1ac0      	subs	r0, r0, r3
 80001bc:	4152      	adcs	r2, r2
 80001be:	0943      	lsrs	r3, r0, #5
 80001c0:	428b      	cmp	r3, r1
 80001c2:	d301      	bcc.n	80001c8 <__udivsi3+0xc0>
 80001c4:	014b      	lsls	r3, r1, #5
 80001c6:	1ac0      	subs	r0, r0, r3
 80001c8:	4152      	adcs	r2, r2
 80001ca:	0903      	lsrs	r3, r0, #4
 80001cc:	428b      	cmp	r3, r1
 80001ce:	d301      	bcc.n	80001d4 <__udivsi3+0xcc>
 80001d0:	010b      	lsls	r3, r1, #4
 80001d2:	1ac0      	subs	r0, r0, r3
 80001d4:	4152      	adcs	r2, r2
 80001d6:	08c3      	lsrs	r3, r0, #3
 80001d8:	428b      	cmp	r3, r1
 80001da:	d301      	bcc.n	80001e0 <__udivsi3+0xd8>
 80001dc:	00cb      	lsls	r3, r1, #3
 80001de:	1ac0      	subs	r0, r0, r3
 80001e0:	4152      	adcs	r2, r2
 80001e2:	0883      	lsrs	r3, r0, #2
 80001e4:	428b      	cmp	r3, r1
 80001e6:	d301      	bcc.n	80001ec <__udivsi3+0xe4>
 80001e8:	008b      	lsls	r3, r1, #2
 80001ea:	1ac0      	subs	r0, r0, r3
 80001ec:	4152      	adcs	r2, r2
 80001ee:	0843      	lsrs	r3, r0, #1
 80001f0:	428b      	cmp	r3, r1
 80001f2:	d301      	bcc.n	80001f8 <__udivsi3+0xf0>
 80001f4:	004b      	lsls	r3, r1, #1
 80001f6:	1ac0      	subs	r0, r0, r3
 80001f8:	4152      	adcs	r2, r2
 80001fa:	1a41      	subs	r1, r0, r1
 80001fc:	d200      	bcs.n	8000200 <__udivsi3+0xf8>
 80001fe:	4601      	mov	r1, r0
 8000200:	4152      	adcs	r2, r2
 8000202:	4610      	mov	r0, r2
 8000204:	4770      	bx	lr
 8000206:	e7ff      	b.n	8000208 <__udivsi3+0x100>
 8000208:	b501      	push	{r0, lr}
 800020a:	2000      	movs	r0, #0
 800020c:	f000 f806 	bl	800021c <__aeabi_idiv0>
 8000210:	bd02      	pop	{r1, pc}
 8000212:	46c0      	nop			; (mov r8, r8)

08000214 <__aeabi_uidivmod>:
 8000214:	2900      	cmp	r1, #0
 8000216:	d0f7      	beq.n	8000208 <__udivsi3+0x100>
 8000218:	e776      	b.n	8000108 <__udivsi3>
 800021a:	4770      	bx	lr

0800021c <__aeabi_idiv0>:
 800021c:	4770      	bx	lr
 800021e:	46c0      	nop			; (mov r8, r8)

08000220 <Reset_Handler>:
 8000220:	480d      	ldr	r0, [pc, #52]	; (8000258 <LoopForever+0x2>)
 8000222:	4685      	mov	sp, r0
 8000224:	480d      	ldr	r0, [pc, #52]	; (800025c <LoopForever+0x6>)
 8000226:	490e      	ldr	r1, [pc, #56]	; (8000260 <LoopForever+0xa>)
 8000228:	4a0e      	ldr	r2, [pc, #56]	; (8000264 <LoopForever+0xe>)
 800022a:	2300      	movs	r3, #0
 800022c:	e002      	b.n	8000234 <LoopCopyDataInit>

0800022e <CopyDataInit>:
 800022e:	58d4      	ldr	r4, [r2, r3]
 8000230:	50c4      	str	r4, [r0, r3]
 8000232:	3304      	adds	r3, #4

08000234 <LoopCopyDataInit>:
 8000234:	18c4      	adds	r4, r0, r3
 8000236:	428c      	cmp	r4, r1
 8000238:	d3f9      	bcc.n	800022e <CopyDataInit>
 800023a:	4a0b      	ldr	r2, [pc, #44]	; (8000268 <LoopForever+0x12>)
 800023c:	4c0b      	ldr	r4, [pc, #44]	; (800026c <LoopForever+0x16>)
 800023e:	2300      	movs	r3, #0
 8000240:	e001      	b.n	8000246 <LoopFillZerobss>

08000242 <FillZerobss>:
 8000242:	6013      	str	r3, [r2, #0]
 8000244:	3204      	adds	r2, #4

08000246 <LoopFillZerobss>:
 8000246:	42a2      	cmp	r2, r4
 8000248:	d3fb      	bcc.n	8000242 <FillZerobss>
 800024a:	f000 f833 	bl	80002b4 <SystemInit>
 800024e:	f001 ffff 	bl	8002250 <__libc_init_array>
 8000252:	f000 f80f 	bl	8000274 <main>

08000256 <LoopForever>:
 8000256:	e7fe      	b.n	8000256 <LoopForever>
 8000258:	20002000 	.word	0x20002000
 800025c:	20000000 	.word	0x20000000
 8000260:	2000080c 	.word	0x2000080c
 8000264:	08004abc 	.word	0x08004abc
 8000268:	2000080c 	.word	0x2000080c
 800026c:	20000ca4 	.word	0x20000ca4

08000270 <ADC1_COMP_IRQHandler>:
 8000270:	e7fe      	b.n	8000270 <ADC1_COMP_IRQHandler>
	...

08000274 <main>:
 8000274:	b510      	push	{r4, lr}
 8000276:	f000 fd7d 	bl	8000d74 <rcc_config>
 800027a:	f000 fdc3 	bl	8000e04 <gpio_config>
 800027e:	f001 fb15 	bl	80018ac <oled_config>
 8000282:	f000 fdef 	bl	8000e64 <printf_config>
 8000286:	f000 fb95 	bl	80009b4 <timers_config>
 800028a:	f000 fa8f 	bl	80007ac <exti_config>
 800028e:	f000 fb49 	bl	8000924 <systick_config>
 8000292:	2200      	movs	r2, #0
 8000294:	4b06      	ldr	r3, [pc, #24]	; (80002b0 <main+0x3c>)
 8000296:	701a      	strb	r2, [r3, #0]
 8000298:	f000 fa0a 	bl	80006b0 <startScreen>
 800029c:	f000 f8b8 	bl	8000410 <initModels>
 80002a0:	f000 fa2e 	bl	8000700 <countdown>
 80002a4:	f000 f92e 	bl	8000504 <game>
 80002a8:	f000 fa54 	bl	8000754 <endGame>
 80002ac:	e7f6      	b.n	800029c <main+0x28>
 80002ae:	46c0      	nop			; (mov r8, r8)
 80002b0:	20000c3c 	.word	0x20000c3c

080002b4 <SystemInit>:
 80002b4:	2101      	movs	r1, #1
 80002b6:	4b11      	ldr	r3, [pc, #68]	; (80002fc <SystemInit+0x48>)
 80002b8:	4811      	ldr	r0, [pc, #68]	; (8000300 <SystemInit+0x4c>)
 80002ba:	681a      	ldr	r2, [r3, #0]
 80002bc:	430a      	orrs	r2, r1
 80002be:	601a      	str	r2, [r3, #0]
 80002c0:	685a      	ldr	r2, [r3, #4]
 80002c2:	4002      	ands	r2, r0
 80002c4:	605a      	str	r2, [r3, #4]
 80002c6:	681a      	ldr	r2, [r3, #0]
 80002c8:	480e      	ldr	r0, [pc, #56]	; (8000304 <SystemInit+0x50>)
 80002ca:	4002      	ands	r2, r0
 80002cc:	601a      	str	r2, [r3, #0]
 80002ce:	681a      	ldr	r2, [r3, #0]
 80002d0:	480d      	ldr	r0, [pc, #52]	; (8000308 <SystemInit+0x54>)
 80002d2:	4002      	ands	r2, r0
 80002d4:	601a      	str	r2, [r3, #0]
 80002d6:	685a      	ldr	r2, [r3, #4]
 80002d8:	480c      	ldr	r0, [pc, #48]	; (800030c <SystemInit+0x58>)
 80002da:	4002      	ands	r2, r0
 80002dc:	200f      	movs	r0, #15
 80002de:	605a      	str	r2, [r3, #4]
 80002e0:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80002e2:	4382      	bics	r2, r0
 80002e4:	62da      	str	r2, [r3, #44]	; 0x2c
 80002e6:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 80002e8:	4809      	ldr	r0, [pc, #36]	; (8000310 <SystemInit+0x5c>)
 80002ea:	4002      	ands	r2, r0
 80002ec:	631a      	str	r2, [r3, #48]	; 0x30
 80002ee:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 80002f0:	438a      	bics	r2, r1
 80002f2:	635a      	str	r2, [r3, #52]	; 0x34
 80002f4:	2200      	movs	r2, #0
 80002f6:	609a      	str	r2, [r3, #8]
 80002f8:	4770      	bx	lr
 80002fa:	46c0      	nop			; (mov r8, r8)
 80002fc:	40021000 	.word	0x40021000
 8000300:	f8ffb80c 	.word	0xf8ffb80c
 8000304:	fef6ffff 	.word	0xfef6ffff
 8000308:	fffbffff 	.word	0xfffbffff
 800030c:	ffc0ffff 	.word	0xffc0ffff
 8000310:	fffffeac 	.word	0xfffffeac

08000314 <get_pix>:
 8000314:	0083      	lsls	r3, r0, #2
 8000316:	181b      	adds	r3, r3, r0
 8000318:	4803      	ldr	r0, [pc, #12]	; (8000328 <get_pix+0x14>)
 800031a:	18c0      	adds	r0, r0, r3
 800031c:	5c43      	ldrb	r3, [r0, r1]
 800031e:	2001      	movs	r0, #1
 8000320:	4113      	asrs	r3, r2
 8000322:	4018      	ands	r0, r3
 8000324:	4770      	bx	lr
 8000326:	46c0      	nop			; (mov r8, r8)
 8000328:	0800246c 	.word	0x0800246c

0800032c <checkCrash>:
 800032c:	4b36      	ldr	r3, [pc, #216]	; (8000408 <checkCrash+0xdc>)
 800032e:	8801      	ldrh	r1, [r0, #0]
 8000330:	881a      	ldrh	r2, [r3, #0]
 8000332:	b209      	sxth	r1, r1
 8000334:	b212      	sxth	r2, r2
 8000336:	4291      	cmp	r1, r2
 8000338:	db17      	blt.n	800036a <checkCrash+0x3e>
 800033a:	8801      	ldrh	r1, [r0, #0]
 800033c:	881a      	ldrh	r2, [r3, #0]
 800033e:	b209      	sxth	r1, r1
 8000340:	b212      	sxth	r2, r2
 8000342:	321d      	adds	r2, #29
 8000344:	4291      	cmp	r1, r2
 8000346:	dc10      	bgt.n	800036a <checkCrash+0x3e>
 8000348:	8841      	ldrh	r1, [r0, #2]
 800034a:	885a      	ldrh	r2, [r3, #2]
 800034c:	b209      	sxth	r1, r1
 800034e:	b212      	sxth	r2, r2
 8000350:	4291      	cmp	r1, r2
 8000352:	db0a      	blt.n	800036a <checkCrash+0x3e>
 8000354:	8841      	ldrh	r1, [r0, #2]
 8000356:	885a      	ldrh	r2, [r3, #2]
 8000358:	b209      	sxth	r1, r1
 800035a:	b212      	sxth	r2, r2
 800035c:	320e      	adds	r2, #14
 800035e:	4291      	cmp	r1, r2
 8000360:	dc03      	bgt.n	800036a <checkCrash+0x3e>
 8000362:	2204      	movs	r2, #4
 8000364:	4b29      	ldr	r3, [pc, #164]	; (800040c <checkCrash+0xe0>)
 8000366:	701a      	strb	r2, [r3, #0]
 8000368:	4770      	bx	lr
 800036a:	8802      	ldrh	r2, [r0, #0]
 800036c:	8819      	ldrh	r1, [r3, #0]
 800036e:	b212      	sxth	r2, r2
 8000370:	b209      	sxth	r1, r1
 8000372:	321d      	adds	r2, #29
 8000374:	428a      	cmp	r2, r1
 8000376:	db12      	blt.n	800039e <checkCrash+0x72>
 8000378:	8801      	ldrh	r1, [r0, #0]
 800037a:	881a      	ldrh	r2, [r3, #0]
 800037c:	b209      	sxth	r1, r1
 800037e:	b212      	sxth	r2, r2
 8000380:	4291      	cmp	r1, r2
 8000382:	dc0c      	bgt.n	800039e <checkCrash+0x72>
 8000384:	8841      	ldrh	r1, [r0, #2]
 8000386:	885a      	ldrh	r2, [r3, #2]
 8000388:	b209      	sxth	r1, r1
 800038a:	b212      	sxth	r2, r2
 800038c:	4291      	cmp	r1, r2
 800038e:	db06      	blt.n	800039e <checkCrash+0x72>
 8000390:	8841      	ldrh	r1, [r0, #2]
 8000392:	885a      	ldrh	r2, [r3, #2]
 8000394:	b209      	sxth	r1, r1
 8000396:	b212      	sxth	r2, r2
 8000398:	320e      	adds	r2, #14
 800039a:	4291      	cmp	r1, r2
 800039c:	dde1      	ble.n	8000362 <checkCrash+0x36>
 800039e:	8802      	ldrh	r2, [r0, #0]
 80003a0:	8819      	ldrh	r1, [r3, #0]
 80003a2:	b212      	sxth	r2, r2
 80003a4:	b209      	sxth	r1, r1
 80003a6:	321d      	adds	r2, #29
 80003a8:	428a      	cmp	r2, r1
 80003aa:	db12      	blt.n	80003d2 <checkCrash+0xa6>
 80003ac:	8801      	ldrh	r1, [r0, #0]
 80003ae:	881a      	ldrh	r2, [r3, #0]
 80003b0:	b209      	sxth	r1, r1
 80003b2:	b212      	sxth	r2, r2
 80003b4:	4291      	cmp	r1, r2
 80003b6:	dc0c      	bgt.n	80003d2 <checkCrash+0xa6>
 80003b8:	8842      	ldrh	r2, [r0, #2]
 80003ba:	8859      	ldrh	r1, [r3, #2]
 80003bc:	b212      	sxth	r2, r2
 80003be:	b209      	sxth	r1, r1
 80003c0:	320e      	adds	r2, #14
 80003c2:	428a      	cmp	r2, r1
 80003c4:	db05      	blt.n	80003d2 <checkCrash+0xa6>
 80003c6:	8841      	ldrh	r1, [r0, #2]
 80003c8:	885a      	ldrh	r2, [r3, #2]
 80003ca:	b209      	sxth	r1, r1
 80003cc:	b212      	sxth	r2, r2
 80003ce:	4291      	cmp	r1, r2
 80003d0:	ddc7      	ble.n	8000362 <checkCrash+0x36>
 80003d2:	8801      	ldrh	r1, [r0, #0]
 80003d4:	881a      	ldrh	r2, [r3, #0]
 80003d6:	b209      	sxth	r1, r1
 80003d8:	b212      	sxth	r2, r2
 80003da:	4291      	cmp	r1, r2
 80003dc:	dbc4      	blt.n	8000368 <checkCrash+0x3c>
 80003de:	8801      	ldrh	r1, [r0, #0]
 80003e0:	881a      	ldrh	r2, [r3, #0]
 80003e2:	b209      	sxth	r1, r1
 80003e4:	b212      	sxth	r2, r2
 80003e6:	321d      	adds	r2, #29
 80003e8:	4291      	cmp	r1, r2
 80003ea:	dcbd      	bgt.n	8000368 <checkCrash+0x3c>
 80003ec:	8842      	ldrh	r2, [r0, #2]
 80003ee:	8859      	ldrh	r1, [r3, #2]
 80003f0:	b212      	sxth	r2, r2
 80003f2:	b209      	sxth	r1, r1
 80003f4:	320e      	adds	r2, #14
 80003f6:	428a      	cmp	r2, r1
 80003f8:	dbb6      	blt.n	8000368 <checkCrash+0x3c>
 80003fa:	8842      	ldrh	r2, [r0, #2]
 80003fc:	885b      	ldrh	r3, [r3, #2]
 80003fe:	b212      	sxth	r2, r2
 8000400:	b21b      	sxth	r3, r3
 8000402:	429a      	cmp	r2, r3
 8000404:	dcb0      	bgt.n	8000368 <checkCrash+0x3c>
 8000406:	e7ac      	b.n	8000362 <checkCrash+0x36>
 8000408:	20000c70 	.word	0x20000c70
 800040c:	20000c3c 	.word	0x20000c3c

08000410 <initModels>:
 8000410:	b510      	push	{r4, lr}
 8000412:	2000      	movs	r0, #0
 8000414:	2480      	movs	r4, #128	; 0x80
 8000416:	21e6      	movs	r1, #230	; 0xe6
 8000418:	4b0c      	ldr	r3, [pc, #48]	; (800044c <initModels+0x3c>)
 800041a:	4a0d      	ldr	r2, [pc, #52]	; (8000450 <initModels+0x40>)
 800041c:	801c      	strh	r4, [r3, #0]
 800041e:	8058      	strh	r0, [r3, #2]
 8000420:	8099      	strh	r1, [r3, #4]
 8000422:	609a      	str	r2, [r3, #8]
 8000424:	819c      	strh	r4, [r3, #12]
 8000426:	81d8      	strh	r0, [r3, #14]
 8000428:	8219      	strh	r1, [r3, #16]
 800042a:	615a      	str	r2, [r3, #20]
 800042c:	831c      	strh	r4, [r3, #24]
 800042e:	8358      	strh	r0, [r3, #26]
 8000430:	8399      	strh	r1, [r3, #28]
 8000432:	621a      	str	r2, [r3, #32]
 8000434:	849c      	strh	r4, [r3, #36]	; 0x24
 8000436:	84d8      	strh	r0, [r3, #38]	; 0x26
 8000438:	8519      	strh	r1, [r3, #40]	; 0x28
 800043a:	62da      	str	r2, [r3, #44]	; 0x2c
 800043c:	225f      	movs	r2, #95	; 0x5f
 800043e:	4b05      	ldr	r3, [pc, #20]	; (8000454 <initModels+0x44>)
 8000440:	801a      	strh	r2, [r3, #0]
 8000442:	3a46      	subs	r2, #70	; 0x46
 8000444:	805a      	strh	r2, [r3, #2]
 8000446:	4a04      	ldr	r2, [pc, #16]	; (8000458 <initModels+0x48>)
 8000448:	605a      	str	r2, [r3, #4]
 800044a:	bd10      	pop	{r4, pc}
 800044c:	20000c40 	.word	0x20000c40
 8000450:	20000210 	.word	0x20000210
 8000454:	20000c70 	.word	0x20000c70
 8000458:	20000078 	.word	0x20000078

0800045c <pauseGame>:
 800045c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800045e:	46c6      	mov	lr, r8
 8000460:	b500      	push	{lr}
 8000462:	2103      	movs	r1, #3
 8000464:	b082      	sub	sp, #8
 8000466:	2004      	movs	r0, #4
 8000468:	f001 f8bc 	bl	80015e4 <oled_set_cursor>
 800046c:	2303      	movs	r3, #3
 800046e:	2500      	movs	r5, #0
 8000470:	4c1f      	ldr	r4, [pc, #124]	; (80004f0 <pauseGame+0x94>)
 8000472:	223c      	movs	r2, #60	; 0x3c
 8000474:	7023      	strb	r3, [r4, #0]
 8000476:	33fc      	adds	r3, #252	; 0xfc
 8000478:	2105      	movs	r1, #5
 800047a:	9300      	str	r3, [sp, #0]
 800047c:	201c      	movs	r0, #28
 800047e:	3bc5      	subs	r3, #197	; 0xc5
 8000480:	9501      	str	r5, [sp, #4]
 8000482:	f000 fcf7 	bl	8000e74 <drawRec>
 8000486:	481b      	ldr	r0, [pc, #108]	; (80004f4 <pauseGame+0x98>)
 8000488:	f001 fed6 	bl	8002238 <xprintf>
 800048c:	2102      	movs	r1, #2
 800048e:	2005      	movs	r0, #5
 8000490:	f001 f8a8 	bl	80015e4 <oled_set_cursor>
 8000494:	4818      	ldr	r0, [pc, #96]	; (80004f8 <pauseGame+0x9c>)
 8000496:	f001 fecf 	bl	8002238 <xprintf>
 800049a:	f001 f813 	bl	80014c4 <oledUpdate>
 800049e:	7025      	strb	r5, [r4, #0]
 80004a0:	4c16      	ldr	r4, [pc, #88]	; (80004fc <pauseGame+0xa0>)
 80004a2:	7823      	ldrb	r3, [r4, #0]
 80004a4:	2b03      	cmp	r3, #3
 80004a6:	d0fc      	beq.n	80004a2 <pauseGame+0x46>
 80004a8:	2300      	movs	r3, #0
 80004aa:	2503      	movs	r5, #3
 80004ac:	4698      	mov	r8, r3
 80004ae:	27ff      	movs	r7, #255	; 0xff
 80004b0:	4e13      	ldr	r6, [pc, #76]	; (8000500 <pauseGame+0xa4>)
 80004b2:	7823      	ldrb	r3, [r4, #0]
 80004b4:	2b01      	cmp	r3, #1
 80004b6:	d115      	bne.n	80004e4 <pauseGame+0x88>
 80004b8:	4643      	mov	r3, r8
 80004ba:	223c      	movs	r2, #60	; 0x3c
 80004bc:	9301      	str	r3, [sp, #4]
 80004be:	2105      	movs	r1, #5
 80004c0:	233a      	movs	r3, #58	; 0x3a
 80004c2:	201c      	movs	r0, #28
 80004c4:	9700      	str	r7, [sp, #0]
 80004c6:	f000 fcd5 	bl	8000e74 <drawRec>
 80004ca:	2105      	movs	r1, #5
 80004cc:	2004      	movs	r0, #4
 80004ce:	f001 f889 	bl	80015e4 <oled_set_cursor>
 80004d2:	0029      	movs	r1, r5
 80004d4:	0030      	movs	r0, r6
 80004d6:	3d01      	subs	r5, #1
 80004d8:	f001 feae 	bl	8002238 <xprintf>
 80004dc:	f000 fff2 	bl	80014c4 <oledUpdate>
 80004e0:	2d00      	cmp	r5, #0
 80004e2:	d1e6      	bne.n	80004b2 <pauseGame+0x56>
 80004e4:	2302      	movs	r3, #2
 80004e6:	7023      	strb	r3, [r4, #0]
 80004e8:	b002      	add	sp, #8
 80004ea:	bc04      	pop	{r2}
 80004ec:	4690      	mov	r8, r2
 80004ee:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80004f0:	20000831 	.word	0x20000831
 80004f4:	080049b0 	.word	0x080049b0
 80004f8:	080049b8 	.word	0x080049b8
 80004fc:	20000c3c 	.word	0x20000c3c
 8000500:	080049c0 	.word	0x080049c0

08000504 <game>:
 8000504:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000506:	2303      	movs	r3, #3
 8000508:	46de      	mov	lr, fp
 800050a:	4657      	mov	r7, sl
 800050c:	464e      	mov	r6, r9
 800050e:	4645      	mov	r5, r8
 8000510:	4a62      	ldr	r2, [pc, #392]	; (800069c <game+0x198>)
 8000512:	b5e0      	push	{r5, r6, r7, lr}
 8000514:	7013      	strb	r3, [r2, #0]
 8000516:	4b62      	ldr	r3, [pc, #392]	; (80006a0 <game+0x19c>)
 8000518:	b085      	sub	sp, #20
 800051a:	469b      	mov	fp, r3
 800051c:	2300      	movs	r3, #0
 800051e:	465a      	mov	r2, fp
 8000520:	6013      	str	r3, [r2, #0]
 8000522:	4b60      	ldr	r3, [pc, #384]	; (80006a4 <game+0x1a0>)
 8000524:	781b      	ldrb	r3, [r3, #0]
 8000526:	2b04      	cmp	r3, #4
 8000528:	d100      	bne.n	800052c <game+0x28>
 800052a:	e093      	b.n	8000654 <game+0x150>
 800052c:	2301      	movs	r3, #1
 800052e:	9303      	str	r3, [sp, #12]
 8000530:	4b5d      	ldr	r3, [pc, #372]	; (80006a8 <game+0x1a4>)
 8000532:	4f5e      	ldr	r7, [pc, #376]	; (80006ac <game+0x1a8>)
 8000534:	469a      	mov	sl, r3
 8000536:	2300      	movs	r3, #0
 8000538:	4699      	mov	r9, r3
 800053a:	4b5a      	ldr	r3, [pc, #360]	; (80006a4 <game+0x1a0>)
 800053c:	781b      	ldrb	r3, [r3, #0]
 800053e:	2b03      	cmp	r3, #3
 8000540:	d100      	bne.n	8000544 <game+0x40>
 8000542:	e0a7      	b.n	8000694 <game+0x190>
 8000544:	21fa      	movs	r1, #250	; 0xfa
 8000546:	9b03      	ldr	r3, [sp, #12]
 8000548:	0049      	lsls	r1, r1, #1
 800054a:	3301      	adds	r3, #1
 800054c:	0018      	movs	r0, r3
 800054e:	9303      	str	r3, [sp, #12]
 8000550:	f7ff fe60 	bl	8000214 <__aeabi_uidivmod>
 8000554:	2900      	cmp	r1, #0
 8000556:	d108      	bne.n	800056a <game+0x66>
 8000558:	4b50      	ldr	r3, [pc, #320]	; (800069c <game+0x198>)
 800055a:	781b      	ldrb	r3, [r3, #0]
 800055c:	2b09      	cmp	r3, #9
 800055e:	d804      	bhi.n	800056a <game+0x66>
 8000560:	4a4e      	ldr	r2, [pc, #312]	; (800069c <game+0x198>)
 8000562:	3301      	adds	r3, #1
 8000564:	7013      	strb	r3, [r2, #0]
 8000566:	2301      	movs	r3, #1
 8000568:	9303      	str	r3, [sp, #12]
 800056a:	f000 fefb 	bl	8001364 <oledFrame2>
 800056e:	2300      	movs	r3, #0
 8000570:	4698      	mov	r8, r3
 8000572:	4643      	mov	r3, r8
 8000574:	005d      	lsls	r5, r3, #1
 8000576:	18eb      	adds	r3, r5, r3
 8000578:	4948      	ldr	r1, [pc, #288]	; (800069c <game+0x198>)
 800057a:	009b      	lsls	r3, r3, #2
 800057c:	5af8      	ldrh	r0, [r7, r3]
 800057e:	7809      	ldrb	r1, [r1, #0]
 8000580:	5afa      	ldrh	r2, [r7, r3]
 8000582:	1852      	adds	r2, r2, r1
 8000584:	b212      	sxth	r2, r2
 8000586:	52fa      	strh	r2, [r7, r3]
 8000588:	287f      	cmp	r0, #127	; 0x7f
 800058a:	d80c      	bhi.n	80005a6 <game+0xa2>
 800058c:	5afb      	ldrh	r3, [r7, r3]
 800058e:	b21b      	sxth	r3, r3
 8000590:	2b7f      	cmp	r3, #127	; 0x7f
 8000592:	dd08      	ble.n	80005a6 <game+0xa2>
 8000594:	008b      	lsls	r3, r1, #2
 8000596:	1859      	adds	r1, r3, r1
 8000598:	465b      	mov	r3, fp
 800059a:	681b      	ldr	r3, [r3, #0]
 800059c:	0049      	lsls	r1, r1, #1
 800059e:	469c      	mov	ip, r3
 80005a0:	465b      	mov	r3, fp
 80005a2:	4461      	add	r1, ip
 80005a4:	6019      	str	r1, [r3, #0]
 80005a6:	4643      	mov	r3, r8
 80005a8:	18eb      	adds	r3, r5, r3
 80005aa:	009b      	lsls	r3, r3, #2
 80005ac:	5afa      	ldrh	r2, [r7, r3]
 80005ae:	b212      	sxth	r2, r2
 80005b0:	2a80      	cmp	r2, #128	; 0x80
 80005b2:	dc15      	bgt.n	80005e0 <game+0xdc>
 80005b4:	18fe      	adds	r6, r7, r3
 80005b6:	88b2      	ldrh	r2, [r6, #4]
 80005b8:	2400      	movs	r4, #0
 80005ba:	2a00      	cmp	r2, #0
 80005bc:	d010      	beq.n	80005e0 <game+0xdc>
 80005be:	9301      	str	r3, [sp, #4]
 80005c0:	1cb3      	adds	r3, r6, #2
 80005c2:	9302      	str	r3, [sp, #8]
 80005c4:	9b01      	ldr	r3, [sp, #4]
 80005c6:	0062      	lsls	r2, r4, #1
 80005c8:	5af8      	ldrh	r0, [r7, r3]
 80005ca:	68b3      	ldr	r3, [r6, #8]
 80005cc:	5c9b      	ldrb	r3, [r3, r2]
 80005ce:	18c0      	adds	r0, r0, r3
 80005d0:	b200      	sxth	r0, r0
 80005d2:	2800      	cmp	r0, #0
 80005d4:	da45      	bge.n	8000662 <game+0x15e>
 80005d6:	3401      	adds	r4, #1
 80005d8:	88b3      	ldrh	r3, [r6, #4]
 80005da:	b2a4      	uxth	r4, r4
 80005dc:	429c      	cmp	r4, r3
 80005de:	d3f1      	bcc.n	80005c4 <game+0xc0>
 80005e0:	4445      	add	r5, r8
 80005e2:	00ad      	lsls	r5, r5, #2
 80005e4:	5b7b      	ldrh	r3, [r7, r5]
 80005e6:	b21b      	sxth	r3, r3
 80005e8:	2b41      	cmp	r3, #65	; 0x41
 80005ea:	dc4f      	bgt.n	800068c <game+0x188>
 80005ec:	2301      	movs	r3, #1
 80005ee:	469c      	mov	ip, r3
 80005f0:	44e0      	add	r8, ip
 80005f2:	4643      	mov	r3, r8
 80005f4:	2b04      	cmp	r3, #4
 80005f6:	d1bc      	bne.n	8000572 <game+0x6e>
 80005f8:	2400      	movs	r4, #0
 80005fa:	2500      	movs	r5, #0
 80005fc:	b2a0      	uxth	r0, r4
 80005fe:	210e      	movs	r1, #14
 8000600:	f7ff fe08 	bl	8000214 <__aeabi_uidivmod>
 8000604:	b28b      	uxth	r3, r1
 8000606:	2b00      	cmp	r3, #0
 8000608:	d103      	bne.n	8000612 <game+0x10e>
 800060a:	2c00      	cmp	r4, #0
 800060c:	d001      	beq.n	8000612 <game+0x10e>
 800060e:	3501      	adds	r5, #1
 8000610:	b2ad      	uxth	r5, r5
 8000612:	4652      	mov	r2, sl
 8000614:	8812      	ldrh	r2, [r2, #0]
 8000616:	2077      	movs	r0, #119	; 0x77
 8000618:	4694      	mov	ip, r2
 800061a:	4652      	mov	r2, sl
 800061c:	8852      	ldrh	r2, [r2, #2]
 800061e:	464e      	mov	r6, r9
 8000620:	4690      	mov	r8, r2
 8000622:	4652      	mov	r2, sl
 8000624:	6852      	ldr	r2, [r2, #4]
 8000626:	4443      	add	r3, r8
 8000628:	5d12      	ldrb	r2, [r2, r4]
 800062a:	b219      	sxth	r1, r3
 800062c:	4663      	mov	r3, ip
 800062e:	4290      	cmp	r0, r2
 8000630:	4176      	adcs	r6, r6
 8000632:	1958      	adds	r0, r3, r5
 8000634:	b2f2      	uxtb	r2, r6
 8000636:	b200      	sxth	r0, r0
 8000638:	f000 ffb8 	bl	80015ac <oledSetPix>
 800063c:	23cb      	movs	r3, #203	; 0xcb
 800063e:	3401      	adds	r4, #1
 8000640:	005b      	lsls	r3, r3, #1
 8000642:	429c      	cmp	r4, r3
 8000644:	d1da      	bne.n	80005fc <game+0xf8>
 8000646:	f000 ff3d 	bl	80014c4 <oledUpdate>
 800064a:	4b16      	ldr	r3, [pc, #88]	; (80006a4 <game+0x1a0>)
 800064c:	781b      	ldrb	r3, [r3, #0]
 800064e:	2b04      	cmp	r3, #4
 8000650:	d000      	beq.n	8000654 <game+0x150>
 8000652:	e772      	b.n	800053a <game+0x36>
 8000654:	b005      	add	sp, #20
 8000656:	bc3c      	pop	{r2, r3, r4, r5}
 8000658:	4690      	mov	r8, r2
 800065a:	4699      	mov	r9, r3
 800065c:	46a2      	mov	sl, r4
 800065e:	46ab      	mov	fp, r5
 8000660:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000662:	9b02      	ldr	r3, [sp, #8]
 8000664:	3401      	adds	r4, #1
 8000666:	8819      	ldrh	r1, [r3, #0]
 8000668:	68b3      	ldr	r3, [r6, #8]
 800066a:	b2a4      	uxth	r4, r4
 800066c:	189b      	adds	r3, r3, r2
 800066e:	785b      	ldrb	r3, [r3, #1]
 8000670:	22ff      	movs	r2, #255	; 0xff
 8000672:	18c9      	adds	r1, r1, r3
 8000674:	b209      	sxth	r1, r1
 8000676:	f000 ff99 	bl	80015ac <oledSetPix>
 800067a:	88b3      	ldrh	r3, [r6, #4]
 800067c:	42a3      	cmp	r3, r4
 800067e:	d8a1      	bhi.n	80005c4 <game+0xc0>
 8000680:	4445      	add	r5, r8
 8000682:	00ad      	lsls	r5, r5, #2
 8000684:	5b7b      	ldrh	r3, [r7, r5]
 8000686:	b21b      	sxth	r3, r3
 8000688:	2b41      	cmp	r3, #65	; 0x41
 800068a:	ddaf      	ble.n	80005ec <game+0xe8>
 800068c:	1978      	adds	r0, r7, r5
 800068e:	f7ff fe4d 	bl	800032c <checkCrash>
 8000692:	e7ab      	b.n	80005ec <game+0xe8>
 8000694:	f7ff fee2 	bl	800045c <pauseGame>
 8000698:	e754      	b.n	8000544 <game+0x40>
 800069a:	46c0      	nop			; (mov r8, r8)
 800069c:	200003dd 	.word	0x200003dd
 80006a0:	20000828 	.word	0x20000828
 80006a4:	20000c3c 	.word	0x20000c3c
 80006a8:	20000c70 	.word	0x20000c70
 80006ac:	20000c40 	.word	0x20000c40

080006b0 <startScreen>:
 80006b0:	b510      	push	{r4, lr}
 80006b2:	2178      	movs	r1, #120	; 0x78
 80006b4:	480d      	ldr	r0, [pc, #52]	; (80006ec <startScreen+0x3c>)
 80006b6:	f001 f831 	bl	800171c <oledPic>
 80006ba:	2103      	movs	r1, #3
 80006bc:	2006      	movs	r0, #6
 80006be:	f000 ff91 	bl	80015e4 <oled_set_cursor>
 80006c2:	23ff      	movs	r3, #255	; 0xff
 80006c4:	4c0a      	ldr	r4, [pc, #40]	; (80006f0 <startScreen+0x40>)
 80006c6:	480b      	ldr	r0, [pc, #44]	; (80006f4 <startScreen+0x44>)
 80006c8:	7023      	strb	r3, [r4, #0]
 80006ca:	f001 fdb5 	bl	8002238 <xprintf>
 80006ce:	2302      	movs	r3, #2
 80006d0:	4809      	ldr	r0, [pc, #36]	; (80006f8 <startScreen+0x48>)
 80006d2:	7023      	strb	r3, [r4, #0]
 80006d4:	f001 fdb0 	bl	8002238 <xprintf>
 80006d8:	2300      	movs	r3, #0
 80006da:	7023      	strb	r3, [r4, #0]
 80006dc:	f000 fef2 	bl	80014c4 <oledUpdate>
 80006e0:	4a06      	ldr	r2, [pc, #24]	; (80006fc <startScreen+0x4c>)
 80006e2:	7813      	ldrb	r3, [r2, #0]
 80006e4:	2b00      	cmp	r3, #0
 80006e6:	d0fc      	beq.n	80006e2 <startScreen+0x32>
 80006e8:	bd10      	pop	{r4, pc}
 80006ea:	46c0      	nop			; (mov r8, r8)
 80006ec:	080029b0 	.word	0x080029b0
 80006f0:	20000831 	.word	0x20000831
 80006f4:	080049c4 	.word	0x080049c4
 80006f8:	080049cc 	.word	0x080049cc
 80006fc:	20000c3c 	.word	0x20000c3c

08000700 <countdown>:
 8000700:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000702:	2403      	movs	r4, #3
 8000704:	4d10      	ldr	r5, [pc, #64]	; (8000748 <countdown+0x48>)
 8000706:	4f11      	ldr	r7, [pc, #68]	; (800074c <countdown+0x4c>)
 8000708:	4e11      	ldr	r6, [pc, #68]	; (8000750 <countdown+0x50>)
 800070a:	b083      	sub	sp, #12
 800070c:	782b      	ldrb	r3, [r5, #0]
 800070e:	2b01      	cmp	r3, #1
 8000710:	d115      	bne.n	800073e <countdown+0x3e>
 8000712:	2000      	movs	r0, #0
 8000714:	f000 fe1c 	bl	8001350 <oledColor>
 8000718:	2105      	movs	r1, #5
 800071a:	2004      	movs	r0, #4
 800071c:	f000 ff62 	bl	80015e4 <oled_set_cursor>
 8000720:	0021      	movs	r1, r4
 8000722:	0038      	movs	r0, r7
 8000724:	f001 fd88 	bl	8002238 <xprintf>
 8000728:	f000 fecc 	bl	80014c4 <oledUpdate>
 800072c:	9601      	str	r6, [sp, #4]
 800072e:	9b01      	ldr	r3, [sp, #4]
 8000730:	1e5a      	subs	r2, r3, #1
 8000732:	9201      	str	r2, [sp, #4]
 8000734:	2b00      	cmp	r3, #0
 8000736:	d1fa      	bne.n	800072e <countdown+0x2e>
 8000738:	3c01      	subs	r4, #1
 800073a:	2c00      	cmp	r4, #0
 800073c:	d1e6      	bne.n	800070c <countdown+0xc>
 800073e:	2302      	movs	r3, #2
 8000740:	702b      	strb	r3, [r5, #0]
 8000742:	b003      	add	sp, #12
 8000744:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000746:	46c0      	nop			; (mov r8, r8)
 8000748:	20000c3c 	.word	0x20000c3c
 800074c:	080049c0 	.word	0x080049c0
 8000750:	001e8480 	.word	0x001e8480

08000754 <endGame>:
 8000754:	b510      	push	{r4, lr}
 8000756:	2000      	movs	r0, #0
 8000758:	f000 fdfa 	bl	8001350 <oledColor>
 800075c:	2103      	movs	r1, #3
 800075e:	2003      	movs	r0, #3
 8000760:	f000 ff40 	bl	80015e4 <oled_set_cursor>
 8000764:	2303      	movs	r3, #3
 8000766:	4c0b      	ldr	r4, [pc, #44]	; (8000794 <endGame+0x40>)
 8000768:	480b      	ldr	r0, [pc, #44]	; (8000798 <endGame+0x44>)
 800076a:	7023      	strb	r3, [r4, #0]
 800076c:	f001 fd64 	bl	8002238 <xprintf>
 8000770:	480a      	ldr	r0, [pc, #40]	; (800079c <endGame+0x48>)
 8000772:	f001 fd61 	bl	8002238 <xprintf>
 8000776:	4b0a      	ldr	r3, [pc, #40]	; (80007a0 <endGame+0x4c>)
 8000778:	480a      	ldr	r0, [pc, #40]	; (80007a4 <endGame+0x50>)
 800077a:	6819      	ldr	r1, [r3, #0]
 800077c:	f001 fd5c 	bl	8002238 <xprintf>
 8000780:	f000 fea0 	bl	80014c4 <oledUpdate>
 8000784:	2300      	movs	r3, #0
 8000786:	4a08      	ldr	r2, [pc, #32]	; (80007a8 <endGame+0x54>)
 8000788:	7023      	strb	r3, [r4, #0]
 800078a:	7813      	ldrb	r3, [r2, #0]
 800078c:	2b04      	cmp	r3, #4
 800078e:	d0fc      	beq.n	800078a <endGame+0x36>
 8000790:	bd10      	pop	{r4, pc}
 8000792:	46c0      	nop			; (mov r8, r8)
 8000794:	20000831 	.word	0x20000831
 8000798:	08002988 	.word	0x08002988
 800079c:	08002998 	.word	0x08002998
 80007a0:	20000828 	.word	0x20000828
 80007a4:	080029a8 	.word	0x080029a8
 80007a8:	20000c3c 	.word	0x20000c3c

080007ac <exti_config>:
 80007ac:	2201      	movs	r2, #1
 80007ae:	4b23      	ldr	r3, [pc, #140]	; (800083c <exti_config+0x90>)
 80007b0:	b530      	push	{r4, r5, lr}
 80007b2:	6999      	ldr	r1, [r3, #24]
 80007b4:	b083      	sub	sp, #12
 80007b6:	4311      	orrs	r1, r2
 80007b8:	6199      	str	r1, [r3, #24]
 80007ba:	699b      	ldr	r3, [r3, #24]
 80007bc:	4820      	ldr	r0, [pc, #128]	; (8000840 <exti_config+0x94>)
 80007be:	4013      	ands	r3, r2
 80007c0:	9301      	str	r3, [sp, #4]
 80007c2:	9b01      	ldr	r3, [sp, #4]
 80007c4:	4b1f      	ldr	r3, [pc, #124]	; (8000844 <exti_config+0x98>)
 80007c6:	2504      	movs	r5, #4
 80007c8:	6899      	ldr	r1, [r3, #8]
 80007ca:	4008      	ands	r0, r1
 80007cc:	2180      	movs	r1, #128	; 0x80
 80007ce:	0049      	lsls	r1, r1, #1
 80007d0:	4301      	orrs	r1, r0
 80007d2:	20f0      	movs	r0, #240	; 0xf0
 80007d4:	6099      	str	r1, [r3, #8]
 80007d6:	6899      	ldr	r1, [r3, #8]
 80007d8:	4381      	bics	r1, r0
 80007da:	6099      	str	r1, [r3, #8]
 80007dc:	6899      	ldr	r1, [r3, #8]
 80007de:	38e1      	subs	r0, #225	; 0xe1
 80007e0:	4381      	bics	r1, r0
 80007e2:	6099      	str	r1, [r3, #8]
 80007e4:	4b18      	ldr	r3, [pc, #96]	; (8000848 <exti_config+0x9c>)
 80007e6:	6818      	ldr	r0, [r3, #0]
 80007e8:	4328      	orrs	r0, r5
 80007ea:	6018      	str	r0, [r3, #0]
 80007ec:	2002      	movs	r0, #2
 80007ee:	681c      	ldr	r4, [r3, #0]
 80007f0:	4304      	orrs	r4, r0
 80007f2:	601c      	str	r4, [r3, #0]
 80007f4:	681c      	ldr	r4, [r3, #0]
 80007f6:	4314      	orrs	r4, r2
 80007f8:	601c      	str	r4, [r3, #0]
 80007fa:	6899      	ldr	r1, [r3, #8]
 80007fc:	4329      	orrs	r1, r5
 80007fe:	6099      	str	r1, [r3, #8]
 8000800:	68d9      	ldr	r1, [r3, #12]
 8000802:	4301      	orrs	r1, r0
 8000804:	60d9      	str	r1, [r3, #12]
 8000806:	6899      	ldr	r1, [r3, #8]
 8000808:	4301      	orrs	r1, r0
 800080a:	6099      	str	r1, [r3, #8]
 800080c:	68d9      	ldr	r1, [r3, #12]
 800080e:	480f      	ldr	r0, [pc, #60]	; (800084c <exti_config+0xa0>)
 8000810:	4311      	orrs	r1, r2
 8000812:	60d9      	str	r1, [r3, #12]
 8000814:	6899      	ldr	r1, [r3, #8]
 8000816:	430a      	orrs	r2, r1
 8000818:	609a      	str	r2, [r3, #8]
 800081a:	2220      	movs	r2, #32
 800081c:	4b0c      	ldr	r3, [pc, #48]	; (8000850 <exti_config+0xa4>)
 800081e:	601a      	str	r2, [r3, #0]
 8000820:	22c1      	movs	r2, #193	; 0xc1
 8000822:	0092      	lsls	r2, r2, #2
 8000824:	5899      	ldr	r1, [r3, r2]
 8000826:	4001      	ands	r1, r0
 8000828:	5099      	str	r1, [r3, r2]
 800082a:	2140      	movs	r1, #64	; 0x40
 800082c:	6019      	str	r1, [r3, #0]
 800082e:	5899      	ldr	r1, [r3, r2]
 8000830:	4808      	ldr	r0, [pc, #32]	; (8000854 <exti_config+0xa8>)
 8000832:	4001      	ands	r1, r0
 8000834:	5099      	str	r1, [r3, r2]
 8000836:	b003      	add	sp, #12
 8000838:	bd30      	pop	{r4, r5, pc}
 800083a:	46c0      	nop			; (mov r8, r8)
 800083c:	40021000 	.word	0x40021000
 8000840:	fffff0ff 	.word	0xfffff0ff
 8000844:	40010000 	.word	0x40010000
 8000848:	40010400 	.word	0x40010400
 800084c:	ffff00ff 	.word	0xffff00ff
 8000850:	e000e100 	.word	0xe000e100
 8000854:	ff00ffff 	.word	0xff00ffff

08000858 <EXTI0_1_IRQHandler>:
 8000858:	4b23      	ldr	r3, [pc, #140]	; (80008e8 <EXTI0_1_IRQHandler+0x90>)
 800085a:	b570      	push	{r4, r5, r6, lr}
 800085c:	781b      	ldrb	r3, [r3, #0]
 800085e:	2b02      	cmp	r3, #2
 8000860:	d116      	bne.n	8000890 <EXTI0_1_IRQHandler+0x38>
 8000862:	2390      	movs	r3, #144	; 0x90
 8000864:	05db      	lsls	r3, r3, #23
 8000866:	691c      	ldr	r4, [r3, #16]
 8000868:	2203      	movs	r2, #3
 800086a:	230c      	movs	r3, #12
 800086c:	481f      	ldr	r0, [pc, #124]	; (80008ec <EXTI0_1_IRQHandler+0x94>)
 800086e:	4022      	ands	r2, r4
 8000870:	7801      	ldrb	r1, [r0, #0]
 8000872:	4c1f      	ldr	r4, [pc, #124]	; (80008f0 <EXTI0_1_IRQHandler+0x98>)
 8000874:	0089      	lsls	r1, r1, #2
 8000876:	400b      	ands	r3, r1
 8000878:	4313      	orrs	r3, r2
 800087a:	4a1e      	ldr	r2, [pc, #120]	; (80008f4 <EXTI0_1_IRQHandler+0x9c>)
 800087c:	7003      	strb	r3, [r0, #0]
 800087e:	5cd3      	ldrb	r3, [r2, r3]
 8000880:	7822      	ldrb	r2, [r4, #0]
 8000882:	189b      	adds	r3, r3, r2
 8000884:	b25b      	sxtb	r3, r3
 8000886:	7023      	strb	r3, [r4, #0]
 8000888:	2b03      	cmp	r3, #3
 800088a:	d007      	beq.n	800089c <EXTI0_1_IRQHandler+0x44>
 800088c:	3303      	adds	r3, #3
 800088e:	d019      	beq.n	80008c4 <EXTI0_1_IRQHandler+0x6c>
 8000890:	2202      	movs	r2, #2
 8000892:	4b19      	ldr	r3, [pc, #100]	; (80008f8 <EXTI0_1_IRQHandler+0xa0>)
 8000894:	615a      	str	r2, [r3, #20]
 8000896:	3a01      	subs	r2, #1
 8000898:	615a      	str	r2, [r3, #20]
 800089a:	bd70      	pop	{r4, r5, r6, pc}
 800089c:	4d17      	ldr	r5, [pc, #92]	; (80008fc <EXTI0_1_IRQHandler+0xa4>)
 800089e:	886b      	ldrh	r3, [r5, #2]
 80008a0:	b21b      	sxth	r3, r3
 80008a2:	2b2f      	cmp	r3, #47	; 0x2f
 80008a4:	dc0b      	bgt.n	80008be <EXTI0_1_IRQHandler+0x66>
 80008a6:	4b16      	ldr	r3, [pc, #88]	; (8000900 <EXTI0_1_IRQHandler+0xa8>)
 80008a8:	2103      	movs	r1, #3
 80008aa:	7818      	ldrb	r0, [r3, #0]
 80008ac:	f7ff fc2c 	bl	8000108 <__udivsi3>
 80008b0:	886e      	ldrh	r6, [r5, #2]
 80008b2:	b2c3      	uxtb	r3, r0
 80008b4:	b236      	sxth	r6, r6
 80008b6:	3602      	adds	r6, #2
 80008b8:	199b      	adds	r3, r3, r6
 80008ba:	b21b      	sxth	r3, r3
 80008bc:	806b      	strh	r3, [r5, #2]
 80008be:	2300      	movs	r3, #0
 80008c0:	7023      	strb	r3, [r4, #0]
 80008c2:	e7e5      	b.n	8000890 <EXTI0_1_IRQHandler+0x38>
 80008c4:	4e0d      	ldr	r6, [pc, #52]	; (80008fc <EXTI0_1_IRQHandler+0xa4>)
 80008c6:	8873      	ldrh	r3, [r6, #2]
 80008c8:	b21b      	sxth	r3, r3
 80008ca:	2b02      	cmp	r3, #2
 80008cc:	ddf7      	ble.n	80008be <EXTI0_1_IRQHandler+0x66>
 80008ce:	4b0c      	ldr	r3, [pc, #48]	; (8000900 <EXTI0_1_IRQHandler+0xa8>)
 80008d0:	2103      	movs	r1, #3
 80008d2:	7818      	ldrb	r0, [r3, #0]
 80008d4:	f7ff fc18 	bl	8000108 <__udivsi3>
 80008d8:	8875      	ldrh	r5, [r6, #2]
 80008da:	b2c0      	uxtb	r0, r0
 80008dc:	b22d      	sxth	r5, r5
 80008de:	3d02      	subs	r5, #2
 80008e0:	1a2d      	subs	r5, r5, r0
 80008e2:	b22d      	sxth	r5, r5
 80008e4:	8075      	strh	r5, [r6, #2]
 80008e6:	e7ea      	b.n	80008be <EXTI0_1_IRQHandler+0x66>
 80008e8:	20000c3c 	.word	0x20000c3c
 80008ec:	2000082d 	.word	0x2000082d
 80008f0:	2000082c 	.word	0x2000082c
 80008f4:	080049e4 	.word	0x080049e4
 80008f8:	40010400 	.word	0x40010400
 80008fc:	20000c70 	.word	0x20000c70
 8000900:	200003dd 	.word	0x200003dd

08000904 <EXTI2_3_IRQHandler>:
 8000904:	4b05      	ldr	r3, [pc, #20]	; (800091c <EXTI2_3_IRQHandler+0x18>)
 8000906:	695b      	ldr	r3, [r3, #20]
 8000908:	075b      	lsls	r3, r3, #29
 800090a:	d502      	bpl.n	8000912 <EXTI2_3_IRQHandler+0xe>
 800090c:	2200      	movs	r2, #0
 800090e:	4b04      	ldr	r3, [pc, #16]	; (8000920 <EXTI2_3_IRQHandler+0x1c>)
 8000910:	601a      	str	r2, [r3, #0]
 8000912:	2204      	movs	r2, #4
 8000914:	4b01      	ldr	r3, [pc, #4]	; (800091c <EXTI2_3_IRQHandler+0x18>)
 8000916:	615a      	str	r2, [r3, #20]
 8000918:	4770      	bx	lr
 800091a:	46c0      	nop			; (mov r8, r8)
 800091c:	40010400 	.word	0x40010400
 8000920:	20000074 	.word	0x20000074

08000924 <systick_config>:
 8000924:	4b08      	ldr	r3, [pc, #32]	; (8000948 <systick_config+0x24>)
 8000926:	4a09      	ldr	r2, [pc, #36]	; (800094c <systick_config+0x28>)
 8000928:	2102      	movs	r1, #2
 800092a:	605a      	str	r2, [r3, #4]
 800092c:	2200      	movs	r2, #0
 800092e:	609a      	str	r2, [r3, #8]
 8000930:	3205      	adds	r2, #5
 8000932:	601a      	str	r2, [r3, #0]
 8000934:	681a      	ldr	r2, [r3, #0]
 8000936:	430a      	orrs	r2, r1
 8000938:	601a      	str	r2, [r3, #0]
 800093a:	4a05      	ldr	r2, [pc, #20]	; (8000950 <systick_config+0x2c>)
 800093c:	6a13      	ldr	r3, [r2, #32]
 800093e:	021b      	lsls	r3, r3, #8
 8000940:	0a1b      	lsrs	r3, r3, #8
 8000942:	6213      	str	r3, [r2, #32]
 8000944:	4770      	bx	lr
 8000946:	46c0      	nop			; (mov r8, r8)
 8000948:	e000e010 	.word	0xe000e010
 800094c:	0000bb7f 	.word	0x0000bb7f
 8000950:	e000ed00 	.word	0xe000ed00

08000954 <SysTick_Handler>:
 8000954:	4a13      	ldr	r2, [pc, #76]	; (80009a4 <SysTick_Handler+0x50>)
 8000956:	b510      	push	{r4, lr}
 8000958:	6813      	ldr	r3, [r2, #0]
 800095a:	3301      	adds	r3, #1
 800095c:	6013      	str	r3, [r2, #0]
 800095e:	2bc8      	cmp	r3, #200	; 0xc8
 8000960:	d000      	beq.n	8000964 <SysTick_Handler+0x10>
 8000962:	bd10      	pop	{r4, pc}
 8000964:	4b10      	ldr	r3, [pc, #64]	; (80009a8 <SysTick_Handler+0x54>)
 8000966:	781a      	ldrb	r2, [r3, #0]
 8000968:	b2d2      	uxtb	r2, r2
 800096a:	2a04      	cmp	r2, #4
 800096c:	d80c      	bhi.n	8000988 <SysTick_Handler+0x34>
 800096e:	490f      	ldr	r1, [pc, #60]	; (80009ac <SysTick_Handler+0x58>)
 8000970:	0092      	lsls	r2, r2, #2
 8000972:	588a      	ldr	r2, [r1, r2]
 8000974:	4697      	mov	pc, r2
 8000976:	2201      	movs	r2, #1
 8000978:	701a      	strb	r2, [r3, #0]
 800097a:	e7f2      	b.n	8000962 <SysTick_Handler+0xe>
 800097c:	2202      	movs	r2, #2
 800097e:	701a      	strb	r2, [r3, #0]
 8000980:	e7ef      	b.n	8000962 <SysTick_Handler+0xe>
 8000982:	2203      	movs	r2, #3
 8000984:	701a      	strb	r2, [r3, #0]
 8000986:	e7ec      	b.n	8000962 <SysTick_Handler+0xe>
 8000988:	2000      	movs	r0, #0
 800098a:	f000 fce1 	bl	8001350 <oledColor>
 800098e:	2102      	movs	r1, #2
 8000990:	2002      	movs	r0, #2
 8000992:	f000 fe27 	bl	80015e4 <oled_set_cursor>
 8000996:	4806      	ldr	r0, [pc, #24]	; (80009b0 <SysTick_Handler+0x5c>)
 8000998:	f001 fc4e 	bl	8002238 <xprintf>
 800099c:	f000 fd92 	bl	80014c4 <oledUpdate>
 80009a0:	e7fe      	b.n	80009a0 <SysTick_Handler+0x4c>
 80009a2:	46c0      	nop			; (mov r8, r8)
 80009a4:	20000074 	.word	0x20000074
 80009a8:	20000c3c 	.word	0x20000c3c
 80009ac:	08002968 	.word	0x08002968
 80009b0:	0800297c 	.word	0x0800297c

080009b4 <timers_config>:
 80009b4:	2201      	movs	r2, #1
 80009b6:	4b13      	ldr	r3, [pc, #76]	; (8000a04 <timers_config+0x50>)
 80009b8:	b082      	sub	sp, #8
 80009ba:	69d9      	ldr	r1, [r3, #28]
 80009bc:	2070      	movs	r0, #112	; 0x70
 80009be:	4311      	orrs	r1, r2
 80009c0:	61d9      	str	r1, [r3, #28]
 80009c2:	69db      	ldr	r3, [r3, #28]
 80009c4:	4910      	ldr	r1, [pc, #64]	; (8000a08 <timers_config+0x54>)
 80009c6:	4013      	ands	r3, r2
 80009c8:	9301      	str	r3, [sp, #4]
 80009ca:	9b01      	ldr	r3, [sp, #4]
 80009cc:	2380      	movs	r3, #128	; 0x80
 80009ce:	05db      	lsls	r3, r3, #23
 80009d0:	6299      	str	r1, [r3, #40]	; 0x28
 80009d2:	21fa      	movs	r1, #250	; 0xfa
 80009d4:	0089      	lsls	r1, r1, #2
 80009d6:	62d9      	str	r1, [r3, #44]	; 0x2c
 80009d8:	6819      	ldr	r1, [r3, #0]
 80009da:	4381      	bics	r1, r0
 80009dc:	6019      	str	r1, [r3, #0]
 80009de:	68d9      	ldr	r1, [r3, #12]
 80009e0:	4311      	orrs	r1, r2
 80009e2:	60d9      	str	r1, [r3, #12]
 80009e4:	6819      	ldr	r1, [r3, #0]
 80009e6:	430a      	orrs	r2, r1
 80009e8:	601a      	str	r2, [r3, #0]
 80009ea:	2380      	movs	r3, #128	; 0x80
 80009ec:	21c3      	movs	r1, #195	; 0xc3
 80009ee:	4a07      	ldr	r2, [pc, #28]	; (8000a0c <timers_config+0x58>)
 80009f0:	021b      	lsls	r3, r3, #8
 80009f2:	6013      	str	r3, [r2, #0]
 80009f4:	0089      	lsls	r1, r1, #2
 80009f6:	5853      	ldr	r3, [r2, r1]
 80009f8:	021b      	lsls	r3, r3, #8
 80009fa:	0a1b      	lsrs	r3, r3, #8
 80009fc:	5053      	str	r3, [r2, r1]
 80009fe:	b002      	add	sp, #8
 8000a00:	4770      	bx	lr
 8000a02:	46c0      	nop			; (mov r8, r8)
 8000a04:	40021000 	.word	0x40021000
 8000a08:	0000bb7f 	.word	0x0000bb7f
 8000a0c:	e000e100 	.word	0xe000e100

08000a10 <TIM2_IRQHandler>:
 8000a10:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000a12:	4645      	mov	r5, r8
 8000a14:	46de      	mov	lr, fp
 8000a16:	4657      	mov	r7, sl
 8000a18:	464e      	mov	r6, r9
 8000a1a:	b5e0      	push	{r5, r6, r7, lr}
 8000a1c:	4bcf      	ldr	r3, [pc, #828]	; (8000d5c <TIM2_IRQHandler+0x34c>)
 8000a1e:	b083      	sub	sp, #12
 8000a20:	4698      	mov	r8, r3
 8000a22:	781b      	ldrb	r3, [r3, #0]
 8000a24:	2b63      	cmp	r3, #99	; 0x63
 8000a26:	d100      	bne.n	8000a2a <TIM2_IRQHandler+0x1a>
 8000a28:	e0ae      	b.n	8000b88 <TIM2_IRQHandler+0x178>
 8000a2a:	4642      	mov	r2, r8
 8000a2c:	1c59      	adds	r1, r3, #1
 8000a2e:	b2c9      	uxtb	r1, r1
 8000a30:	7011      	strb	r1, [r2, #0]
 8000a32:	001a      	movs	r2, r3
 8000a34:	3b36      	subs	r3, #54	; 0x36
 8000a36:	3a17      	subs	r2, #23
 8000a38:	b25d      	sxtb	r5, r3
 8000a3a:	b252      	sxtb	r2, r2
 8000a3c:	002e      	movs	r6, r5
 8000a3e:	0008      	movs	r0, r1
 8000a40:	2a00      	cmp	r2, #0
 8000a42:	da00      	bge.n	8000a46 <TIM2_IRQHandler+0x36>
 8000a44:	e172      	b.n	8000d2c <TIM2_IRQHandler+0x31c>
 8000a46:	4cc6      	ldr	r4, [pc, #792]	; (8000d60 <TIM2_IRQHandler+0x350>)
 8000a48:	5ca3      	ldrb	r3, [r4, r2]
 8000a4a:	469c      	mov	ip, r3
 8000a4c:	2d00      	cmp	r5, #0
 8000a4e:	da00      	bge.n	8000a52 <TIM2_IRQHandler+0x42>
 8000a50:	e0a5      	b.n	8000b9e <TIM2_IRQHandler+0x18e>
 8000a52:	4fc4      	ldr	r7, [pc, #784]	; (8000d64 <TIM2_IRQHandler+0x354>)
 8000a54:	5da2      	ldrb	r2, [r4, r6]
 8000a56:	887b      	ldrh	r3, [r7, #2]
 8000a58:	4462      	add	r2, ip
 8000a5a:	b21b      	sxth	r3, r3
 8000a5c:	18d2      	adds	r2, r2, r3
 8000a5e:	233f      	movs	r3, #63	; 0x3f
 8000a60:	17d5      	asrs	r5, r2, #31
 8000a62:	0ead      	lsrs	r5, r5, #26
 8000a64:	1952      	adds	r2, r2, r5
 8000a66:	4013      	ands	r3, r2
 8000a68:	2201      	movs	r2, #1
 8000a6a:	1b5b      	subs	r3, r3, r5
 8000a6c:	3378      	adds	r3, #120	; 0x78
 8000a6e:	b2db      	uxtb	r3, r3
 8000a70:	401a      	ands	r2, r3
 8000a72:	5423      	strb	r3, [r4, r0]
 8000a74:	4bbc      	ldr	r3, [pc, #752]	; (8000d68 <TIM2_IRQHandler+0x358>)
 8000a76:	9201      	str	r2, [sp, #4]
 8000a78:	469a      	mov	sl, r3
 8000a7a:	781b      	ldrb	r3, [r3, #0]
 8000a7c:	9300      	str	r3, [sp, #0]
 8000a7e:	2963      	cmp	r1, #99	; 0x63
 8000a80:	d100      	bne.n	8000a84 <TIM2_IRQHandler+0x74>
 8000a82:	e08e      	b.n	8000ba2 <TIM2_IRQHandler+0x192>
 8000a84:	000b      	movs	r3, r1
 8000a86:	1c4a      	adds	r2, r1, #1
 8000a88:	3b17      	subs	r3, #23
 8000a8a:	3936      	subs	r1, #54	; 0x36
 8000a8c:	b2d2      	uxtb	r2, r2
 8000a8e:	b24d      	sxtb	r5, r1
 8000a90:	b25b      	sxtb	r3, r3
 8000a92:	002e      	movs	r6, r5
 8000a94:	0010      	movs	r0, r2
 8000a96:	2b00      	cmp	r3, #0
 8000a98:	da00      	bge.n	8000a9c <TIM2_IRQHandler+0x8c>
 8000a9a:	e149      	b.n	8000d30 <TIM2_IRQHandler+0x320>
 8000a9c:	5ce1      	ldrb	r1, [r4, r3]
 8000a9e:	2d00      	cmp	r5, #0
 8000aa0:	da00      	bge.n	8000aa4 <TIM2_IRQHandler+0x94>
 8000aa2:	e084      	b.n	8000bae <TIM2_IRQHandler+0x19e>
 8000aa4:	887b      	ldrh	r3, [r7, #2]
 8000aa6:	5da5      	ldrb	r5, [r4, r6]
 8000aa8:	b21b      	sxth	r3, r3
 8000aaa:	186d      	adds	r5, r5, r1
 8000aac:	18eb      	adds	r3, r5, r3
 8000aae:	253f      	movs	r5, #63	; 0x3f
 8000ab0:	17d9      	asrs	r1, r3, #31
 8000ab2:	0e89      	lsrs	r1, r1, #26
 8000ab4:	185b      	adds	r3, r3, r1
 8000ab6:	401d      	ands	r5, r3
 8000ab8:	1a6d      	subs	r5, r5, r1
 8000aba:	3578      	adds	r5, #120	; 0x78
 8000abc:	b2eb      	uxtb	r3, r5
 8000abe:	2503      	movs	r5, #3
 8000ac0:	5423      	strb	r3, [r4, r0]
 8000ac2:	401d      	ands	r5, r3
 8000ac4:	4ba9      	ldr	r3, [pc, #676]	; (8000d6c <TIM2_IRQHandler+0x35c>)
 8000ac6:	4699      	mov	r9, r3
 8000ac8:	4649      	mov	r1, r9
 8000aca:	006b      	lsls	r3, r5, #1
 8000acc:	469b      	mov	fp, r3
 8000ace:	195b      	adds	r3, r3, r5
 8000ad0:	009b      	lsls	r3, r3, #2
 8000ad2:	5ac9      	ldrh	r1, [r1, r3]
 8000ad4:	b209      	sxth	r1, r1
 8000ad6:	2980      	cmp	r1, #128	; 0x80
 8000ad8:	dc6b      	bgt.n	8000bb2 <TIM2_IRQHandler+0x1a2>
 8000ada:	9b01      	ldr	r3, [sp, #4]
 8000adc:	2b00      	cmp	r3, #0
 8000ade:	d040      	beq.n	8000b62 <TIM2_IRQHandler+0x152>
 8000ae0:	2000      	movs	r0, #0
 8000ae2:	9b00      	ldr	r3, [sp, #0]
 8000ae4:	9301      	str	r3, [sp, #4]
 8000ae6:	2a63      	cmp	r2, #99	; 0x63
 8000ae8:	d100      	bne.n	8000aec <TIM2_IRQHandler+0xdc>
 8000aea:	e0c8      	b.n	8000c7e <TIM2_IRQHandler+0x26e>
 8000aec:	0015      	movs	r5, r2
 8000aee:	1c51      	adds	r1, r2, #1
 8000af0:	3d17      	subs	r5, #23
 8000af2:	3a36      	subs	r2, #54	; 0x36
 8000af4:	b253      	sxtb	r3, r2
 8000af6:	b26a      	sxtb	r2, r5
 8000af8:	4694      	mov	ip, r2
 8000afa:	4666      	mov	r6, ip
 8000afc:	b2c9      	uxtb	r1, r1
 8000afe:	001d      	movs	r5, r3
 8000b00:	000a      	movs	r2, r1
 8000b02:	2e00      	cmp	r6, #0
 8000b04:	da00      	bge.n	8000b08 <TIM2_IRQHandler+0xf8>
 8000b06:	e11f      	b.n	8000d48 <TIM2_IRQHandler+0x338>
 8000b08:	4666      	mov	r6, ip
 8000b0a:	5da6      	ldrb	r6, [r4, r6]
 8000b0c:	46b4      	mov	ip, r6
 8000b0e:	2b00      	cmp	r3, #0
 8000b10:	da00      	bge.n	8000b14 <TIM2_IRQHandler+0x104>
 8000b12:	e0bb      	b.n	8000c8c <TIM2_IRQHandler+0x27c>
 8000b14:	887b      	ldrh	r3, [r7, #2]
 8000b16:	5d65      	ldrb	r5, [r4, r5]
 8000b18:	b21b      	sxth	r3, r3
 8000b1a:	4465      	add	r5, ip
 8000b1c:	18ed      	adds	r5, r5, r3
 8000b1e:	46ac      	mov	ip, r5
 8000b20:	17eb      	asrs	r3, r5, #31
 8000b22:	0e9b      	lsrs	r3, r3, #26
 8000b24:	449c      	add	ip, r3
 8000b26:	253f      	movs	r5, #63	; 0x3f
 8000b28:	4666      	mov	r6, ip
 8000b2a:	4035      	ands	r5, r6
 8000b2c:	1aed      	subs	r5, r5, r3
 8000b2e:	3578      	adds	r5, #120	; 0x78
 8000b30:	b2eb      	uxtb	r3, r5
 8000b32:	2503      	movs	r5, #3
 8000b34:	54a3      	strb	r3, [r4, r2]
 8000b36:	464a      	mov	r2, r9
 8000b38:	401d      	ands	r5, r3
 8000b3a:	006b      	lsls	r3, r5, #1
 8000b3c:	469b      	mov	fp, r3
 8000b3e:	195b      	adds	r3, r3, r5
 8000b40:	009b      	lsls	r3, r3, #2
 8000b42:	5ad2      	ldrh	r2, [r2, r3]
 8000b44:	b212      	sxth	r2, r2
 8000b46:	2a80      	cmp	r2, #128	; 0x80
 8000b48:	dd00      	ble.n	8000b4c <TIM2_IRQHandler+0x13c>
 8000b4a:	e0b3      	b.n	8000cb4 <TIM2_IRQHandler+0x2a4>
 8000b4c:	4643      	mov	r3, r8
 8000b4e:	7019      	strb	r1, [r3, #0]
 8000b50:	2800      	cmp	r0, #0
 8000b52:	d100      	bne.n	8000b56 <TIM2_IRQHandler+0x146>
 8000b54:	e100      	b.n	8000d58 <TIM2_IRQHandler+0x348>
 8000b56:	4653      	mov	r3, sl
 8000b58:	9801      	ldr	r0, [sp, #4]
 8000b5a:	000a      	movs	r2, r1
 8000b5c:	7018      	strb	r0, [r3, #0]
 8000b5e:	9000      	str	r0, [sp, #0]
 8000b60:	e001      	b.n	8000b66 <TIM2_IRQHandler+0x156>
 8000b62:	4643      	mov	r3, r8
 8000b64:	701a      	strb	r2, [r3, #0]
 8000b66:	9b00      	ldr	r3, [sp, #0]
 8000b68:	2b00      	cmp	r3, #0
 8000b6a:	d000      	beq.n	8000b6e <TIM2_IRQHandler+0x15e>
 8000b6c:	e0dc      	b.n	8000d28 <TIM2_IRQHandler+0x318>
 8000b6e:	2380      	movs	r3, #128	; 0x80
 8000b70:	2264      	movs	r2, #100	; 0x64
 8000b72:	05db      	lsls	r3, r3, #23
 8000b74:	62da      	str	r2, [r3, #44]	; 0x2c
 8000b76:	3a66      	subs	r2, #102	; 0x66
 8000b78:	611a      	str	r2, [r3, #16]
 8000b7a:	b003      	add	sp, #12
 8000b7c:	bc3c      	pop	{r2, r3, r4, r5}
 8000b7e:	4690      	mov	r8, r2
 8000b80:	4699      	mov	r9, r3
 8000b82:	46a2      	mov	sl, r4
 8000b84:	46ab      	mov	fp, r5
 8000b86:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000b88:	2300      	movs	r3, #0
 8000b8a:	4642      	mov	r2, r8
 8000b8c:	4c74      	ldr	r4, [pc, #464]	; (8000d60 <TIM2_IRQHandler+0x350>)
 8000b8e:	7013      	strb	r3, [r2, #0]
 8000b90:	334c      	adds	r3, #76	; 0x4c
 8000b92:	5ce3      	ldrb	r3, [r4, r3]
 8000b94:	2637      	movs	r6, #55	; 0x37
 8000b96:	469c      	mov	ip, r3
 8000b98:	2000      	movs	r0, #0
 8000b9a:	2100      	movs	r1, #0
 8000b9c:	4276      	negs	r6, r6
 8000b9e:	3664      	adds	r6, #100	; 0x64
 8000ba0:	e757      	b.n	8000a52 <TIM2_IRQHandler+0x42>
 8000ba2:	234c      	movs	r3, #76	; 0x4c
 8000ba4:	2637      	movs	r6, #55	; 0x37
 8000ba6:	2200      	movs	r2, #0
 8000ba8:	2000      	movs	r0, #0
 8000baa:	5ce1      	ldrb	r1, [r4, r3]
 8000bac:	4276      	negs	r6, r6
 8000bae:	3664      	adds	r6, #100	; 0x64
 8000bb0:	e778      	b.n	8000aa4 <TIM2_IRQHandler+0x94>
 8000bb2:	211d      	movs	r1, #29
 8000bb4:	4648      	mov	r0, r9
 8000bb6:	4249      	negs	r1, r1
 8000bb8:	52c1      	strh	r1, [r0, r3]
 8000bba:	2a63      	cmp	r2, #99	; 0x63
 8000bbc:	d072      	beq.n	8000ca4 <TIM2_IRQHandler+0x294>
 8000bbe:	0011      	movs	r1, r2
 8000bc0:	1c56      	adds	r6, r2, #1
 8000bc2:	3917      	subs	r1, #23
 8000bc4:	3a36      	subs	r2, #54	; 0x36
 8000bc6:	b2f6      	uxtb	r6, r6
 8000bc8:	b250      	sxtb	r0, r2
 8000bca:	b249      	sxtb	r1, r1
 8000bcc:	0002      	movs	r2, r0
 8000bce:	0033      	movs	r3, r6
 8000bd0:	2900      	cmp	r1, #0
 8000bd2:	da00      	bge.n	8000bd6 <TIM2_IRQHandler+0x1c6>
 8000bd4:	e0b6      	b.n	8000d44 <TIM2_IRQHandler+0x334>
 8000bd6:	5c61      	ldrb	r1, [r4, r1]
 8000bd8:	2800      	cmp	r0, #0
 8000bda:	db69      	blt.n	8000cb0 <TIM2_IRQHandler+0x2a0>
 8000bdc:	8878      	ldrh	r0, [r7, #2]
 8000bde:	5ca2      	ldrb	r2, [r4, r2]
 8000be0:	b200      	sxth	r0, r0
 8000be2:	1852      	adds	r2, r2, r1
 8000be4:	1812      	adds	r2, r2, r0
 8000be6:	203f      	movs	r0, #63	; 0x3f
 8000be8:	17d1      	asrs	r1, r2, #31
 8000bea:	0e89      	lsrs	r1, r1, #26
 8000bec:	1852      	adds	r2, r2, r1
 8000bee:	4010      	ands	r0, r2
 8000bf0:	1a40      	subs	r0, r0, r1
 8000bf2:	3078      	adds	r0, #120	; 0x78
 8000bf4:	b2c0      	uxtb	r0, r0
 8000bf6:	54e0      	strb	r0, [r4, r3]
 8000bf8:	2103      	movs	r1, #3
 8000bfa:	f7ff fb0b 	bl	8000214 <__aeabi_uidivmod>
 8000bfe:	b2cb      	uxtb	r3, r1
 8000c00:	0059      	lsls	r1, r3, #1
 8000c02:	1859      	adds	r1, r3, r1
 8000c04:	00cb      	lsls	r3, r1, #3
 8000c06:	1a5b      	subs	r3, r3, r1
 8000c08:	445d      	add	r5, fp
 8000c0a:	3304      	adds	r3, #4
 8000c0c:	00ad      	lsls	r5, r5, #2
 8000c0e:	b21b      	sxth	r3, r3
 8000c10:	444d      	add	r5, r9
 8000c12:	806b      	strh	r3, [r5, #2]
 8000c14:	9b01      	ldr	r3, [sp, #4]
 8000c16:	2b00      	cmp	r3, #0
 8000c18:	d000      	beq.n	8000c1c <TIM2_IRQHandler+0x20c>
 8000c1a:	e080      	b.n	8000d1e <TIM2_IRQHandler+0x30e>
 8000c1c:	2301      	movs	r3, #1
 8000c1e:	4652      	mov	r2, sl
 8000c20:	7013      	strb	r3, [r2, #0]
 8000c22:	2e63      	cmp	r6, #99	; 0x63
 8000c24:	d034      	beq.n	8000c90 <TIM2_IRQHandler+0x280>
 8000c26:	4643      	mov	r3, r8
 8000c28:	1c71      	adds	r1, r6, #1
 8000c2a:	b2c9      	uxtb	r1, r1
 8000c2c:	7019      	strb	r1, [r3, #0]
 8000c2e:	0033      	movs	r3, r6
 8000c30:	3e36      	subs	r6, #54	; 0x36
 8000c32:	3b17      	subs	r3, #23
 8000c34:	b276      	sxtb	r6, r6
 8000c36:	b25b      	sxtb	r3, r3
 8000c38:	0030      	movs	r0, r6
 8000c3a:	2b00      	cmp	r3, #0
 8000c3c:	da00      	bge.n	8000c40 <TIM2_IRQHandler+0x230>
 8000c3e:	e087      	b.n	8000d50 <TIM2_IRQHandler+0x340>
 8000c40:	5ce5      	ldrb	r5, [r4, r3]
 8000c42:	2e00      	cmp	r6, #0
 8000c44:	db2c      	blt.n	8000ca0 <TIM2_IRQHandler+0x290>
 8000c46:	5c22      	ldrb	r2, [r4, r0]
 8000c48:	887b      	ldrh	r3, [r7, #2]
 8000c4a:	1952      	adds	r2, r2, r5
 8000c4c:	b21b      	sxth	r3, r3
 8000c4e:	18d2      	adds	r2, r2, r3
 8000c50:	233f      	movs	r3, #63	; 0x3f
 8000c52:	17d0      	asrs	r0, r2, #31
 8000c54:	0e80      	lsrs	r0, r0, #26
 8000c56:	1812      	adds	r2, r2, r0
 8000c58:	4013      	ands	r3, r2
 8000c5a:	4a45      	ldr	r2, [pc, #276]	; (8000d70 <TIM2_IRQHandler+0x360>)
 8000c5c:	1a1b      	subs	r3, r3, r0
 8000c5e:	7812      	ldrb	r2, [r2, #0]
 8000c60:	3378      	adds	r3, #120	; 0x78
 8000c62:	b2db      	uxtb	r3, r3
 8000c64:	5463      	strb	r3, [r4, r1]
 8000c66:	0111      	lsls	r1, r2, #4
 8000c68:	1a52      	subs	r2, r2, r1
 8000c6a:	0092      	lsls	r2, r2, #2
 8000c6c:	00db      	lsls	r3, r3, #3
 8000c6e:	18d3      	adds	r3, r2, r3
 8000c70:	2280      	movs	r2, #128	; 0x80
 8000c72:	05d2      	lsls	r2, r2, #23
 8000c74:	62d3      	str	r3, [r2, #44]	; 0x2c
 8000c76:	2302      	movs	r3, #2
 8000c78:	425b      	negs	r3, r3
 8000c7a:	6113      	str	r3, [r2, #16]
 8000c7c:	e77d      	b.n	8000b7a <TIM2_IRQHandler+0x16a>
 8000c7e:	234c      	movs	r3, #76	; 0x4c
 8000c80:	5ce3      	ldrb	r3, [r4, r3]
 8000c82:	2537      	movs	r5, #55	; 0x37
 8000c84:	469c      	mov	ip, r3
 8000c86:	2200      	movs	r2, #0
 8000c88:	2100      	movs	r1, #0
 8000c8a:	426d      	negs	r5, r5
 8000c8c:	3564      	adds	r5, #100	; 0x64
 8000c8e:	e741      	b.n	8000b14 <TIM2_IRQHandler+0x104>
 8000c90:	2300      	movs	r3, #0
 8000c92:	4642      	mov	r2, r8
 8000c94:	2037      	movs	r0, #55	; 0x37
 8000c96:	2100      	movs	r1, #0
 8000c98:	7013      	strb	r3, [r2, #0]
 8000c9a:	334c      	adds	r3, #76	; 0x4c
 8000c9c:	5ce5      	ldrb	r5, [r4, r3]
 8000c9e:	4240      	negs	r0, r0
 8000ca0:	3064      	adds	r0, #100	; 0x64
 8000ca2:	e7d0      	b.n	8000c46 <TIM2_IRQHandler+0x236>
 8000ca4:	234c      	movs	r3, #76	; 0x4c
 8000ca6:	2237      	movs	r2, #55	; 0x37
 8000ca8:	5ce1      	ldrb	r1, [r4, r3]
 8000caa:	2600      	movs	r6, #0
 8000cac:	2300      	movs	r3, #0
 8000cae:	4252      	negs	r2, r2
 8000cb0:	3264      	adds	r2, #100	; 0x64
 8000cb2:	e793      	b.n	8000bdc <TIM2_IRQHandler+0x1cc>
 8000cb4:	221d      	movs	r2, #29
 8000cb6:	4648      	mov	r0, r9
 8000cb8:	4252      	negs	r2, r2
 8000cba:	52c2      	strh	r2, [r0, r3]
 8000cbc:	2963      	cmp	r1, #99	; 0x63
 8000cbe:	d039      	beq.n	8000d34 <TIM2_IRQHandler+0x324>
 8000cc0:	000a      	movs	r2, r1
 8000cc2:	1c4e      	adds	r6, r1, #1
 8000cc4:	3a17      	subs	r2, #23
 8000cc6:	3936      	subs	r1, #54	; 0x36
 8000cc8:	b2f6      	uxtb	r6, r6
 8000cca:	b248      	sxtb	r0, r1
 8000ccc:	b252      	sxtb	r2, r2
 8000cce:	0001      	movs	r1, r0
 8000cd0:	0033      	movs	r3, r6
 8000cd2:	2a00      	cmp	r2, #0
 8000cd4:	db3e      	blt.n	8000d54 <TIM2_IRQHandler+0x344>
 8000cd6:	5ca2      	ldrb	r2, [r4, r2]
 8000cd8:	4694      	mov	ip, r2
 8000cda:	2800      	cmp	r0, #0
 8000cdc:	db30      	blt.n	8000d40 <TIM2_IRQHandler+0x330>
 8000cde:	8878      	ldrh	r0, [r7, #2]
 8000ce0:	5c62      	ldrb	r2, [r4, r1]
 8000ce2:	b200      	sxth	r0, r0
 8000ce4:	4462      	add	r2, ip
 8000ce6:	1812      	adds	r2, r2, r0
 8000ce8:	203f      	movs	r0, #63	; 0x3f
 8000cea:	17d1      	asrs	r1, r2, #31
 8000cec:	0e89      	lsrs	r1, r1, #26
 8000cee:	1852      	adds	r2, r2, r1
 8000cf0:	4010      	ands	r0, r2
 8000cf2:	1a40      	subs	r0, r0, r1
 8000cf4:	3078      	adds	r0, #120	; 0x78
 8000cf6:	b2c0      	uxtb	r0, r0
 8000cf8:	54e0      	strb	r0, [r4, r3]
 8000cfa:	2103      	movs	r1, #3
 8000cfc:	f7ff fa8a 	bl	8000214 <__aeabi_uidivmod>
 8000d00:	b2cb      	uxtb	r3, r1
 8000d02:	0059      	lsls	r1, r3, #1
 8000d04:	1859      	adds	r1, r3, r1
 8000d06:	00cb      	lsls	r3, r1, #3
 8000d08:	1a5b      	subs	r3, r3, r1
 8000d0a:	445d      	add	r5, fp
 8000d0c:	3304      	adds	r3, #4
 8000d0e:	00ad      	lsls	r5, r5, #2
 8000d10:	b21b      	sxth	r3, r3
 8000d12:	444d      	add	r5, r9
 8000d14:	806b      	strh	r3, [r5, #2]
 8000d16:	4652      	mov	r2, sl
 8000d18:	2301      	movs	r3, #1
 8000d1a:	7013      	strb	r3, [r2, #0]
 8000d1c:	e781      	b.n	8000c22 <TIM2_IRQHandler+0x212>
 8000d1e:	2301      	movs	r3, #1
 8000d20:	0032      	movs	r2, r6
 8000d22:	9301      	str	r3, [sp, #4]
 8000d24:	2001      	movs	r0, #1
 8000d26:	e6de      	b.n	8000ae6 <TIM2_IRQHandler+0xd6>
 8000d28:	0016      	movs	r6, r2
 8000d2a:	e77a      	b.n	8000c22 <TIM2_IRQHandler+0x212>
 8000d2c:	3264      	adds	r2, #100	; 0x64
 8000d2e:	e68a      	b.n	8000a46 <TIM2_IRQHandler+0x36>
 8000d30:	3364      	adds	r3, #100	; 0x64
 8000d32:	e6b3      	b.n	8000a9c <TIM2_IRQHandler+0x8c>
 8000d34:	234c      	movs	r3, #76	; 0x4c
 8000d36:	5ce3      	ldrb	r3, [r4, r3]
 8000d38:	2600      	movs	r6, #0
 8000d3a:	469c      	mov	ip, r3
 8000d3c:	2300      	movs	r3, #0
 8000d3e:	399a      	subs	r1, #154	; 0x9a
 8000d40:	3164      	adds	r1, #100	; 0x64
 8000d42:	e7cc      	b.n	8000cde <TIM2_IRQHandler+0x2ce>
 8000d44:	3164      	adds	r1, #100	; 0x64
 8000d46:	e746      	b.n	8000bd6 <TIM2_IRQHandler+0x1c6>
 8000d48:	2664      	movs	r6, #100	; 0x64
 8000d4a:	46b3      	mov	fp, r6
 8000d4c:	44dc      	add	ip, fp
 8000d4e:	e6db      	b.n	8000b08 <TIM2_IRQHandler+0xf8>
 8000d50:	3364      	adds	r3, #100	; 0x64
 8000d52:	e775      	b.n	8000c40 <TIM2_IRQHandler+0x230>
 8000d54:	3264      	adds	r2, #100	; 0x64
 8000d56:	e7be      	b.n	8000cd6 <TIM2_IRQHandler+0x2c6>
 8000d58:	000a      	movs	r2, r1
 8000d5a:	e704      	b.n	8000b66 <TIM2_IRQHandler+0x156>
 8000d5c:	200003dc 	.word	0x200003dc
 8000d60:	20000010 	.word	0x20000010
 8000d64:	20000c70 	.word	0x20000c70
 8000d68:	2000082e 	.word	0x2000082e
 8000d6c:	20000c40 	.word	0x20000c40
 8000d70:	200003dd 	.word	0x200003dd

08000d74 <rcc_config>:
 8000d74:	2101      	movs	r1, #1
 8000d76:	4a1d      	ldr	r2, [pc, #116]	; (8000dec <rcc_config+0x78>)
 8000d78:	6813      	ldr	r3, [r2, #0]
 8000d7a:	438b      	bics	r3, r1
 8000d7c:	430b      	orrs	r3, r1
 8000d7e:	6013      	str	r3, [r2, #0]
 8000d80:	4b1b      	ldr	r3, [pc, #108]	; (8000df0 <rcc_config+0x7c>)
 8000d82:	681a      	ldr	r2, [r3, #0]
 8000d84:	430a      	orrs	r2, r1
 8000d86:	601a      	str	r2, [r3, #0]
 8000d88:	3101      	adds	r1, #1
 8000d8a:	681a      	ldr	r2, [r3, #0]
 8000d8c:	4211      	tst	r1, r2
 8000d8e:	d0fc      	beq.n	8000d8a <rcc_config+0x16>
 8000d90:	685a      	ldr	r2, [r3, #4]
 8000d92:	4918      	ldr	r1, [pc, #96]	; (8000df4 <rcc_config+0x80>)
 8000d94:	4011      	ands	r1, r2
 8000d96:	22a0      	movs	r2, #160	; 0xa0
 8000d98:	0392      	lsls	r2, r2, #14
 8000d9a:	430a      	orrs	r2, r1
 8000d9c:	210f      	movs	r1, #15
 8000d9e:	605a      	str	r2, [r3, #4]
 8000da0:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000da2:	438a      	bics	r2, r1
 8000da4:	62da      	str	r2, [r3, #44]	; 0x2c
 8000da6:	2280      	movs	r2, #128	; 0x80
 8000da8:	6819      	ldr	r1, [r3, #0]
 8000daa:	0452      	lsls	r2, r2, #17
 8000dac:	430a      	orrs	r2, r1
 8000dae:	2180      	movs	r1, #128	; 0x80
 8000db0:	601a      	str	r2, [r3, #0]
 8000db2:	4a0f      	ldr	r2, [pc, #60]	; (8000df0 <rcc_config+0x7c>)
 8000db4:	0489      	lsls	r1, r1, #18
 8000db6:	6813      	ldr	r3, [r2, #0]
 8000db8:	420b      	tst	r3, r1
 8000dba:	d0fc      	beq.n	8000db6 <rcc_config+0x42>
 8000dbc:	21f0      	movs	r1, #240	; 0xf0
 8000dbe:	6853      	ldr	r3, [r2, #4]
 8000dc0:	438b      	bics	r3, r1
 8000dc2:	6053      	str	r3, [r2, #4]
 8000dc4:	6853      	ldr	r3, [r2, #4]
 8000dc6:	39ed      	subs	r1, #237	; 0xed
 8000dc8:	438b      	bics	r3, r1
 8000dca:	3901      	subs	r1, #1
 8000dcc:	430b      	orrs	r3, r1
 8000dce:	6053      	str	r3, [r2, #4]
 8000dd0:	4a07      	ldr	r2, [pc, #28]	; (8000df0 <rcc_config+0x7c>)
 8000dd2:	310a      	adds	r1, #10
 8000dd4:	6853      	ldr	r3, [r2, #4]
 8000dd6:	400b      	ands	r3, r1
 8000dd8:	2b08      	cmp	r3, #8
 8000dda:	d1fb      	bne.n	8000dd4 <rcc_config+0x60>
 8000ddc:	6853      	ldr	r3, [r2, #4]
 8000dde:	4906      	ldr	r1, [pc, #24]	; (8000df8 <rcc_config+0x84>)
 8000de0:	400b      	ands	r3, r1
 8000de2:	6053      	str	r3, [r2, #4]
 8000de4:	4b05      	ldr	r3, [pc, #20]	; (8000dfc <rcc_config+0x88>)
 8000de6:	4a06      	ldr	r2, [pc, #24]	; (8000e00 <rcc_config+0x8c>)
 8000de8:	601a      	str	r2, [r3, #0]
 8000dea:	4770      	bx	lr
 8000dec:	40022000 	.word	0x40022000
 8000df0:	40021000 	.word	0x40021000
 8000df4:	ffc2ffff 	.word	0xffc2ffff
 8000df8:	fffff8ff 	.word	0xfffff8ff
 8000dfc:	20000000 	.word	0x20000000
 8000e00:	02dc6c00 	.word	0x02dc6c00

08000e04 <gpio_config>:
 8000e04:	2080      	movs	r0, #128	; 0x80
 8000e06:	4b15      	ldr	r3, [pc, #84]	; (8000e5c <gpio_config+0x58>)
 8000e08:	0280      	lsls	r0, r0, #10
 8000e0a:	6959      	ldr	r1, [r3, #20]
 8000e0c:	b082      	sub	sp, #8
 8000e0e:	4301      	orrs	r1, r0
 8000e10:	6159      	str	r1, [r3, #20]
 8000e12:	2180      	movs	r1, #128	; 0x80
 8000e14:	695a      	ldr	r2, [r3, #20]
 8000e16:	02c9      	lsls	r1, r1, #11
 8000e18:	4002      	ands	r2, r0
 8000e1a:	9201      	str	r2, [sp, #4]
 8000e1c:	9a01      	ldr	r2, [sp, #4]
 8000e1e:	695a      	ldr	r2, [r3, #20]
 8000e20:	430a      	orrs	r2, r1
 8000e22:	615a      	str	r2, [r3, #20]
 8000e24:	2290      	movs	r2, #144	; 0x90
 8000e26:	695b      	ldr	r3, [r3, #20]
 8000e28:	05d2      	lsls	r2, r2, #23
 8000e2a:	400b      	ands	r3, r1
 8000e2c:	210c      	movs	r1, #12
 8000e2e:	9300      	str	r3, [sp, #0]
 8000e30:	9b00      	ldr	r3, [sp, #0]
 8000e32:	68d3      	ldr	r3, [r2, #12]
 8000e34:	438b      	bics	r3, r1
 8000e36:	3904      	subs	r1, #4
 8000e38:	430b      	orrs	r3, r1
 8000e3a:	60d3      	str	r3, [r2, #12]
 8000e3c:	68d3      	ldr	r3, [r2, #12]
 8000e3e:	3905      	subs	r1, #5
 8000e40:	438b      	bics	r3, r1
 8000e42:	3901      	subs	r1, #1
 8000e44:	430b      	orrs	r3, r1
 8000e46:	60d3      	str	r3, [r2, #12]
 8000e48:	4a05      	ldr	r2, [pc, #20]	; (8000e60 <gpio_config+0x5c>)
 8000e4a:	312e      	adds	r1, #46	; 0x2e
 8000e4c:	68d3      	ldr	r3, [r2, #12]
 8000e4e:	438b      	bics	r3, r1
 8000e50:	3910      	subs	r1, #16
 8000e52:	430b      	orrs	r3, r1
 8000e54:	60d3      	str	r3, [r2, #12]
 8000e56:	b002      	add	sp, #8
 8000e58:	4770      	bx	lr
 8000e5a:	46c0      	nop			; (mov r8, r8)
 8000e5c:	40021000 	.word	0x40021000
 8000e60:	48000400 	.word	0x48000400

08000e64 <printf_config>:
 8000e64:	4b01      	ldr	r3, [pc, #4]	; (8000e6c <printf_config+0x8>)
 8000e66:	4a02      	ldr	r2, [pc, #8]	; (8000e70 <printf_config+0xc>)
 8000e68:	601a      	str	r2, [r3, #0]
 8000e6a:	4770      	bx	lr
 8000e6c:	20000c7c 	.word	0x20000c7c
 8000e70:	080015f9 	.word	0x080015f9

08000e74 <drawRec>:
 8000e74:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000e76:	46de      	mov	lr, fp
 8000e78:	4657      	mov	r7, sl
 8000e7a:	464e      	mov	r6, r9
 8000e7c:	4645      	mov	r5, r8
 8000e7e:	b5e0      	push	{r5, r6, r7, lr}
 8000e80:	b091      	sub	sp, #68	; 0x44
 8000e82:	469b      	mov	fp, r3
 8000e84:	ab1a      	add	r3, sp, #104	; 0x68
 8000e86:	9105      	str	r1, [sp, #20]
 8000e88:	7819      	ldrb	r1, [r3, #0]
 8000e8a:	ab1b      	add	r3, sp, #108	; 0x6c
 8000e8c:	9101      	str	r1, [sp, #4]
 8000e8e:	7819      	ldrb	r1, [r3, #0]
 8000e90:	900a      	str	r0, [sp, #40]	; 0x28
 8000e92:	9209      	str	r2, [sp, #36]	; 0x24
 8000e94:	910f      	str	r1, [sp, #60]	; 0x3c
 8000e96:	0003      	movs	r3, r0
 8000e98:	4293      	cmp	r3, r2
 8000e9a:	d901      	bls.n	8000ea0 <drawRec+0x2c>
 8000e9c:	920a      	str	r2, [sp, #40]	; 0x28
 8000e9e:	9309      	str	r3, [sp, #36]	; 0x24
 8000ea0:	9b05      	ldr	r3, [sp, #20]
 8000ea2:	455b      	cmp	r3, fp
 8000ea4:	d902      	bls.n	8000eac <drawRec+0x38>
 8000ea6:	465a      	mov	r2, fp
 8000ea8:	469b      	mov	fp, r3
 8000eaa:	9205      	str	r2, [sp, #20]
 8000eac:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8000eae:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8000eb0:	1a9a      	subs	r2, r3, r2
 8000eb2:	0fd3      	lsrs	r3, r2, #31
 8000eb4:	189b      	adds	r3, r3, r2
 8000eb6:	105b      	asrs	r3, r3, #1
 8000eb8:	3301      	adds	r3, #1
 8000eba:	9308      	str	r3, [sp, #32]
 8000ebc:	d500      	bpl.n	8000ec0 <drawRec+0x4c>
 8000ebe:	e08e      	b.n	8000fde <drawRec+0x16a>
 8000ec0:	9905      	ldr	r1, [sp, #20]
 8000ec2:	2207      	movs	r2, #7
 8000ec4:	b20c      	sxth	r4, r1
 8000ec6:	10e3      	asrs	r3, r4, #3
 8000ec8:	01db      	lsls	r3, r3, #7
 8000eca:	9306      	str	r3, [sp, #24]
 8000ecc:	2301      	movs	r3, #1
 8000ece:	0018      	movs	r0, r3
 8000ed0:	4011      	ands	r1, r2
 8000ed2:	4088      	lsls	r0, r1
 8000ed4:	b241      	sxtb	r1, r0
 8000ed6:	910b      	str	r1, [sp, #44]	; 0x2c
 8000ed8:	43c9      	mvns	r1, r1
 8000eda:	910c      	str	r1, [sp, #48]	; 0x30
 8000edc:	4659      	mov	r1, fp
 8000ede:	b20d      	sxth	r5, r1
 8000ee0:	10e9      	asrs	r1, r5, #3
 8000ee2:	01c9      	lsls	r1, r1, #7
 8000ee4:	9107      	str	r1, [sp, #28]
 8000ee6:	4659      	mov	r1, fp
 8000ee8:	400a      	ands	r2, r1
 8000eea:	4093      	lsls	r3, r2
 8000eec:	b25b      	sxtb	r3, r3
 8000eee:	930d      	str	r3, [sp, #52]	; 0x34
 8000ef0:	43db      	mvns	r3, r3
 8000ef2:	930e      	str	r3, [sp, #56]	; 0x38
 8000ef4:	466b      	mov	r3, sp
 8000ef6:	8d1f      	ldrh	r7, [r3, #40]	; 0x28
 8000ef8:	8c9e      	ldrh	r6, [r3, #36]	; 0x24
 8000efa:	4b9a      	ldr	r3, [pc, #616]	; (8001164 <drawRec+0x2f0>)
 8000efc:	2200      	movs	r2, #0
 8000efe:	4698      	mov	r8, r3
 8000f00:	469a      	mov	sl, r3
 8000f02:	9502      	str	r5, [sp, #8]
 8000f04:	9603      	str	r6, [sp, #12]
 8000f06:	9704      	str	r7, [sp, #16]
 8000f08:	e043      	b.n	8000f92 <drawRec+0x11e>
 8000f0a:	9806      	ldr	r0, [sp, #24]
 8000f0c:	4681      	mov	r9, r0
 8000f0e:	4489      	add	r9, r1
 8000f10:	4640      	mov	r0, r8
 8000f12:	464f      	mov	r7, r9
 8000f14:	57c6      	ldrsb	r6, [r0, r7]
 8000f16:	46b4      	mov	ip, r6
 8000f18:	9e01      	ldr	r6, [sp, #4]
 8000f1a:	2e00      	cmp	r6, #0
 8000f1c:	d100      	bne.n	8000f20 <drawRec+0xac>
 8000f1e:	e1fc      	b.n	800131a <drawRec+0x4a6>
 8000f20:	4666      	mov	r6, ip
 8000f22:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8000f24:	433e      	orrs	r6, r7
 8000f26:	46b4      	mov	ip, r6
 8000f28:	464f      	mov	r7, r9
 8000f2a:	4665      	mov	r5, ip
 8000f2c:	55c5      	strb	r5, [r0, r7]
 8000f2e:	9d02      	ldr	r5, [sp, #8]
 8000f30:	2d3f      	cmp	r5, #63	; 0x3f
 8000f32:	dc08      	bgt.n	8000f46 <drawRec+0xd2>
 8000f34:	9d07      	ldr	r5, [sp, #28]
 8000f36:	46ac      	mov	ip, r5
 8000f38:	448c      	add	ip, r1
 8000f3a:	4661      	mov	r1, ip
 8000f3c:	9d0d      	ldr	r5, [sp, #52]	; 0x34
 8000f3e:	5c41      	ldrb	r1, [r0, r1]
 8000f40:	4329      	orrs	r1, r5
 8000f42:	4665      	mov	r5, ip
 8000f44:	5541      	strb	r1, [r0, r5]
 8000f46:	9903      	ldr	r1, [sp, #12]
 8000f48:	1acb      	subs	r3, r1, r3
 8000f4a:	b21b      	sxth	r3, r3
 8000f4c:	2b7f      	cmp	r3, #127	; 0x7f
 8000f4e:	dc1b      	bgt.n	8000f88 <drawRec+0x114>
 8000f50:	2c3f      	cmp	r4, #63	; 0x3f
 8000f52:	dc2f      	bgt.n	8000fb4 <drawRec+0x140>
 8000f54:	2b00      	cmp	r3, #0
 8000f56:	db17      	blt.n	8000f88 <drawRec+0x114>
 8000f58:	9906      	ldr	r1, [sp, #24]
 8000f5a:	4650      	mov	r0, sl
 8000f5c:	468c      	mov	ip, r1
 8000f5e:	449c      	add	ip, r3
 8000f60:	4666      	mov	r6, ip
 8000f62:	5781      	ldrsb	r1, [r0, r6]
 8000f64:	9e01      	ldr	r6, [sp, #4]
 8000f66:	2e00      	cmp	r6, #0
 8000f68:	d100      	bne.n	8000f6c <drawRec+0xf8>
 8000f6a:	e1c6      	b.n	80012fa <drawRec+0x486>
 8000f6c:	4666      	mov	r6, ip
 8000f6e:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
 8000f70:	4329      	orrs	r1, r5
 8000f72:	5581      	strb	r1, [r0, r6]
 8000f74:	9902      	ldr	r1, [sp, #8]
 8000f76:	293f      	cmp	r1, #63	; 0x3f
 8000f78:	dc06      	bgt.n	8000f88 <drawRec+0x114>
 8000f7a:	9907      	ldr	r1, [sp, #28]
 8000f7c:	9d0d      	ldr	r5, [sp, #52]	; 0x34
 8000f7e:	468c      	mov	ip, r1
 8000f80:	4463      	add	r3, ip
 8000f82:	5cc1      	ldrb	r1, [r0, r3]
 8000f84:	4329      	orrs	r1, r5
 8000f86:	54c1      	strb	r1, [r0, r3]
 8000f88:	3201      	adds	r2, #1
 8000f8a:	9b08      	ldr	r3, [sp, #32]
 8000f8c:	b2d2      	uxtb	r2, r2
 8000f8e:	429a      	cmp	r2, r3
 8000f90:	dc25      	bgt.n	8000fde <drawRec+0x16a>
 8000f92:	9904      	ldr	r1, [sp, #16]
 8000f94:	b293      	uxth	r3, r2
 8000f96:	1859      	adds	r1, r3, r1
 8000f98:	b289      	uxth	r1, r1
 8000f9a:	297f      	cmp	r1, #127	; 0x7f
 8000f9c:	d8d3      	bhi.n	8000f46 <drawRec+0xd2>
 8000f9e:	2c3f      	cmp	r4, #63	; 0x3f
 8000fa0:	ddb3      	ble.n	8000f0a <drawRec+0x96>
 8000fa2:	9802      	ldr	r0, [sp, #8]
 8000fa4:	283f      	cmp	r0, #63	; 0x3f
 8000fa6:	dcce      	bgt.n	8000f46 <drawRec+0xd2>
 8000fa8:	9801      	ldr	r0, [sp, #4]
 8000faa:	2800      	cmp	r0, #0
 8000fac:	d100      	bne.n	8000fb0 <drawRec+0x13c>
 8000fae:	e1cb      	b.n	8001348 <drawRec+0x4d4>
 8000fb0:	486c      	ldr	r0, [pc, #432]	; (8001164 <drawRec+0x2f0>)
 8000fb2:	e7bf      	b.n	8000f34 <drawRec+0xc0>
 8000fb4:	9902      	ldr	r1, [sp, #8]
 8000fb6:	293f      	cmp	r1, #63	; 0x3f
 8000fb8:	dce6      	bgt.n	8000f88 <drawRec+0x114>
 8000fba:	2b00      	cmp	r3, #0
 8000fbc:	dbe4      	blt.n	8000f88 <drawRec+0x114>
 8000fbe:	9901      	ldr	r1, [sp, #4]
 8000fc0:	4868      	ldr	r0, [pc, #416]	; (8001164 <drawRec+0x2f0>)
 8000fc2:	2900      	cmp	r1, #0
 8000fc4:	d1d9      	bne.n	8000f7a <drawRec+0x106>
 8000fc6:	9907      	ldr	r1, [sp, #28]
 8000fc8:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8000fca:	468c      	mov	ip, r1
 8000fcc:	4463      	add	r3, ip
 8000fce:	5cc1      	ldrb	r1, [r0, r3]
 8000fd0:	4029      	ands	r1, r5
 8000fd2:	54c1      	strb	r1, [r0, r3]
 8000fd4:	3201      	adds	r2, #1
 8000fd6:	9b08      	ldr	r3, [sp, #32]
 8000fd8:	b2d2      	uxtb	r2, r2
 8000fda:	429a      	cmp	r2, r3
 8000fdc:	ddd9      	ble.n	8000f92 <drawRec+0x11e>
 8000fde:	465b      	mov	r3, fp
 8000fe0:	9a05      	ldr	r2, [sp, #20]
 8000fe2:	1a9a      	subs	r2, r3, r2
 8000fe4:	0fd3      	lsrs	r3, r2, #31
 8000fe6:	189b      	adds	r3, r3, r2
 8000fe8:	105b      	asrs	r3, r3, #1
 8000fea:	3301      	adds	r3, #1
 8000fec:	4699      	mov	r9, r3
 8000fee:	d500      	bpl.n	8000ff2 <drawRec+0x17e>
 8000ff0:	e095      	b.n	800111e <drawRec+0x2aa>
 8000ff2:	466b      	mov	r3, sp
 8000ff4:	2528      	movs	r5, #40	; 0x28
 8000ff6:	5f5d      	ldrsh	r5, [r3, r5]
 8000ff8:	466b      	mov	r3, sp
 8000ffa:	2224      	movs	r2, #36	; 0x24
 8000ffc:	5e9b      	ldrsh	r3, [r3, r2]
 8000ffe:	2200      	movs	r2, #0
 8001000:	9303      	str	r3, [sp, #12]
 8001002:	466b      	mov	r3, sp
 8001004:	8a9b      	ldrh	r3, [r3, #20]
 8001006:	469a      	mov	sl, r3
 8001008:	4b56      	ldr	r3, [pc, #344]	; (8001164 <drawRec+0x2f0>)
 800100a:	9304      	str	r3, [sp, #16]
 800100c:	469c      	mov	ip, r3
 800100e:	464b      	mov	r3, r9
 8001010:	9302      	str	r3, [sp, #8]
 8001012:	e04c      	b.n	80010ae <drawRec+0x23a>
 8001014:	465c      	mov	r4, fp
 8001016:	1ae3      	subs	r3, r4, r3
 8001018:	b21b      	sxth	r3, r3
 800101a:	293f      	cmp	r1, #63	; 0x3f
 800101c:	d824      	bhi.n	8001068 <drawRec+0x1f4>
 800101e:	10c1      	asrs	r1, r0, #3
 8001020:	9c0a      	ldr	r4, [sp, #40]	; 0x28
 8001022:	01c9      	lsls	r1, r1, #7
 8001024:	4688      	mov	r8, r1
 8001026:	46a1      	mov	r9, r4
 8001028:	44c1      	add	r9, r8
 800102a:	464f      	mov	r7, r9
 800102c:	4666      	mov	r6, ip
 800102e:	57f4      	ldrsb	r4, [r6, r7]
 8001030:	2707      	movs	r7, #7
 8001032:	0021      	movs	r1, r4
 8001034:	2401      	movs	r4, #1
 8001036:	4038      	ands	r0, r7
 8001038:	4084      	lsls	r4, r0
 800103a:	9f01      	ldr	r7, [sp, #4]
 800103c:	b264      	sxtb	r4, r4
 800103e:	2f00      	cmp	r7, #0
 8001040:	d100      	bne.n	8001044 <drawRec+0x1d0>
 8001042:	e14a      	b.n	80012da <drawRec+0x466>
 8001044:	0008      	movs	r0, r1
 8001046:	4649      	mov	r1, r9
 8001048:	4320      	orrs	r0, r4
 800104a:	5470      	strb	r0, [r6, r1]
 800104c:	9903      	ldr	r1, [sp, #12]
 800104e:	297f      	cmp	r1, #127	; 0x7f
 8001050:	dc0a      	bgt.n	8001068 <drawRec+0x1f4>
 8001052:	9909      	ldr	r1, [sp, #36]	; 0x24
 8001054:	4689      	mov	r9, r1
 8001056:	4641      	mov	r1, r8
 8001058:	4449      	add	r1, r9
 800105a:	5670      	ldrsb	r0, [r6, r1]
 800105c:	4681      	mov	r9, r0
 800105e:	4648      	mov	r0, r9
 8001060:	4304      	orrs	r4, r0
 8001062:	5474      	strb	r4, [r6, r1]
 8001064:	2d7f      	cmp	r5, #127	; 0x7f
 8001066:	dc47      	bgt.n	80010f8 <drawRec+0x284>
 8001068:	2b3f      	cmp	r3, #63	; 0x3f
 800106a:	dc1b      	bgt.n	80010a4 <drawRec+0x230>
 800106c:	2b00      	cmp	r3, #0
 800106e:	db19      	blt.n	80010a4 <drawRec+0x230>
 8001070:	2707      	movs	r7, #7
 8001072:	10d9      	asrs	r1, r3, #3
 8001074:	403b      	ands	r3, r7
 8001076:	3f06      	subs	r7, #6
 8001078:	409f      	lsls	r7, r3
 800107a:	980a      	ldr	r0, [sp, #40]	; 0x28
 800107c:	01c9      	lsls	r1, r1, #7
 800107e:	4e39      	ldr	r6, [pc, #228]	; (8001164 <drawRec+0x2f0>)
 8001080:	b27b      	sxtb	r3, r7
 8001082:	9f01      	ldr	r7, [sp, #4]
 8001084:	1844      	adds	r4, r0, r1
 8001086:	5730      	ldrsb	r0, [r6, r4]
 8001088:	2f00      	cmp	r7, #0
 800108a:	d100      	bne.n	800108e <drawRec+0x21a>
 800108c:	e117      	b.n	80012be <drawRec+0x44a>
 800108e:	4318      	orrs	r0, r3
 8001090:	5530      	strb	r0, [r6, r4]
 8001092:	9803      	ldr	r0, [sp, #12]
 8001094:	287f      	cmp	r0, #127	; 0x7f
 8001096:	dc05      	bgt.n	80010a4 <drawRec+0x230>
 8001098:	9809      	ldr	r0, [sp, #36]	; 0x24
 800109a:	4681      	mov	r9, r0
 800109c:	4449      	add	r1, r9
 800109e:	5c70      	ldrb	r0, [r6, r1]
 80010a0:	4303      	orrs	r3, r0
 80010a2:	5473      	strb	r3, [r6, r1]
 80010a4:	3201      	adds	r2, #1
 80010a6:	9b02      	ldr	r3, [sp, #8]
 80010a8:	b2d2      	uxtb	r2, r2
 80010aa:	429a      	cmp	r2, r3
 80010ac:	dc36      	bgt.n	800111c <drawRec+0x2a8>
 80010ae:	4651      	mov	r1, sl
 80010b0:	b293      	uxth	r3, r2
 80010b2:	1859      	adds	r1, r3, r1
 80010b4:	b289      	uxth	r1, r1
 80010b6:	b208      	sxth	r0, r1
 80010b8:	2d7f      	cmp	r5, #127	; 0x7f
 80010ba:	ddab      	ble.n	8001014 <drawRec+0x1a0>
 80010bc:	9c03      	ldr	r4, [sp, #12]
 80010be:	2c7f      	cmp	r4, #127	; 0x7f
 80010c0:	dcf0      	bgt.n	80010a4 <drawRec+0x230>
 80010c2:	465c      	mov	r4, fp
 80010c4:	1ae3      	subs	r3, r4, r3
 80010c6:	b21b      	sxth	r3, r3
 80010c8:	293f      	cmp	r1, #63	; 0x3f
 80010ca:	d815      	bhi.n	80010f8 <drawRec+0x284>
 80010cc:	2107      	movs	r1, #7
 80010ce:	2401      	movs	r4, #1
 80010d0:	4001      	ands	r1, r0
 80010d2:	408c      	lsls	r4, r1
 80010d4:	10c1      	asrs	r1, r0, #3
 80010d6:	9809      	ldr	r0, [sp, #36]	; 0x24
 80010d8:	01c9      	lsls	r1, r1, #7
 80010da:	4681      	mov	r9, r0
 80010dc:	9e04      	ldr	r6, [sp, #16]
 80010de:	4449      	add	r1, r9
 80010e0:	5670      	ldrsb	r0, [r6, r1]
 80010e2:	b264      	sxtb	r4, r4
 80010e4:	4681      	mov	r9, r0
 80010e6:	9801      	ldr	r0, [sp, #4]
 80010e8:	2800      	cmp	r0, #0
 80010ea:	d1b8      	bne.n	800105e <drawRec+0x1ea>
 80010ec:	43e0      	mvns	r0, r4
 80010ee:	464c      	mov	r4, r9
 80010f0:	4020      	ands	r0, r4
 80010f2:	5470      	strb	r0, [r6, r1]
 80010f4:	2d7f      	cmp	r5, #127	; 0x7f
 80010f6:	ddb7      	ble.n	8001068 <drawRec+0x1f4>
 80010f8:	2b3f      	cmp	r3, #63	; 0x3f
 80010fa:	dcd3      	bgt.n	80010a4 <drawRec+0x230>
 80010fc:	2b00      	cmp	r3, #0
 80010fe:	dbd1      	blt.n	80010a4 <drawRec+0x230>
 8001100:	2007      	movs	r0, #7
 8001102:	10d9      	asrs	r1, r3, #3
 8001104:	4003      	ands	r3, r0
 8001106:	3806      	subs	r0, #6
 8001108:	4098      	lsls	r0, r3
 800110a:	b243      	sxtb	r3, r0
 800110c:	9801      	ldr	r0, [sp, #4]
 800110e:	01c9      	lsls	r1, r1, #7
 8001110:	2800      	cmp	r0, #0
 8001112:	d000      	beq.n	8001116 <drawRec+0x2a2>
 8001114:	e116      	b.n	8001344 <drawRec+0x4d0>
 8001116:	43db      	mvns	r3, r3
 8001118:	4e12      	ldr	r6, [pc, #72]	; (8001164 <drawRec+0x2f0>)
 800111a:	e0d7      	b.n	80012cc <drawRec+0x458>
 800111c:	4699      	mov	r9, r3
 800111e:	9b08      	ldr	r3, [sp, #32]
 8001120:	2b00      	cmp	r3, #0
 8001122:	dc00      	bgt.n	8001126 <drawRec+0x2b2>
 8001124:	e0ae      	b.n	8001284 <drawRec+0x410>
 8001126:	464b      	mov	r3, r9
 8001128:	2b00      	cmp	r3, #0
 800112a:	dc00      	bgt.n	800112e <drawRec+0x2ba>
 800112c:	e0aa      	b.n	8001284 <drawRec+0x410>
 800112e:	2301      	movs	r3, #1
 8001130:	9307      	str	r3, [sp, #28]
 8001132:	466b      	mov	r3, sp
 8001134:	8a9b      	ldrh	r3, [r3, #20]
 8001136:	464e      	mov	r6, r9
 8001138:	001f      	movs	r7, r3
 800113a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800113c:	469a      	mov	sl, r3
 800113e:	466b      	mov	r3, sp
 8001140:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8001142:	8b9b      	ldrh	r3, [r3, #28]
 8001144:	46d0      	mov	r8, sl
 8001146:	1898      	adds	r0, r3, r2
 8001148:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800114a:	46da      	mov	sl, fp
 800114c:	1ad3      	subs	r3, r2, r3
 800114e:	b29b      	uxth	r3, r3
 8001150:	9305      	str	r3, [sp, #20]
 8001152:	b219      	sxth	r1, r3
 8001154:	2307      	movs	r3, #7
 8001156:	4699      	mov	r9, r3
 8001158:	4b02      	ldr	r3, [pc, #8]	; (8001164 <drawRec+0x2f0>)
 800115a:	2201      	movs	r2, #1
 800115c:	469c      	mov	ip, r3
 800115e:	46b3      	mov	fp, r6
 8001160:	9701      	str	r7, [sp, #4]
 8001162:	e056      	b.n	8001212 <drawRec+0x39e>
 8001164:	20000834 	.word	0x20000834
 8001168:	4655      	mov	r5, sl
 800116a:	1aeb      	subs	r3, r5, r3
 800116c:	b21b      	sxth	r3, r3
 800116e:	2c3f      	cmp	r4, #63	; 0x3f
 8001170:	d821      	bhi.n	80011b6 <drawRec+0x342>
 8001172:	464f      	mov	r7, r9
 8001174:	10f5      	asrs	r5, r6, #3
 8001176:	01ec      	lsls	r4, r5, #7
 8001178:	9404      	str	r4, [sp, #16]
 800117a:	1904      	adds	r4, r0, r4
 800117c:	0025      	movs	r5, r4
 800117e:	403e      	ands	r6, r7
 8001180:	2401      	movs	r4, #1
 8001182:	4667      	mov	r7, ip
 8001184:	40b4      	lsls	r4, r6
 8001186:	9702      	str	r7, [sp, #8]
 8001188:	577e      	ldrsb	r6, [r7, r5]
 800118a:	4647      	mov	r7, r8
 800118c:	b264      	sxtb	r4, r4
 800118e:	9503      	str	r5, [sp, #12]
 8001190:	2f00      	cmp	r7, #0
 8001192:	d100      	bne.n	8001196 <drawRec+0x322>
 8001194:	e085      	b.n	80012a2 <drawRec+0x42e>
 8001196:	002f      	movs	r7, r5
 8001198:	4665      	mov	r5, ip
 800119a:	4326      	orrs	r6, r4
 800119c:	55ee      	strb	r6, [r5, r7]
 800119e:	9d05      	ldr	r5, [sp, #20]
 80011a0:	2d7f      	cmp	r5, #127	; 0x7f
 80011a2:	d808      	bhi.n	80011b6 <drawRec+0x342>
 80011a4:	4666      	mov	r6, ip
 80011a6:	9d04      	ldr	r5, [sp, #16]
 80011a8:	194d      	adds	r5, r1, r5
 80011aa:	5776      	ldrsb	r6, [r6, r5]
 80011ac:	4334      	orrs	r4, r6
 80011ae:	9e02      	ldr	r6, [sp, #8]
 80011b0:	5574      	strb	r4, [r6, r5]
 80011b2:	287f      	cmp	r0, #127	; 0x7f
 80011b4:	d854      	bhi.n	8001260 <drawRec+0x3ec>
 80011b6:	2b3f      	cmp	r3, #63	; 0x3f
 80011b8:	dc27      	bgt.n	800120a <drawRec+0x396>
 80011ba:	2b00      	cmp	r3, #0
 80011bc:	db0f      	blt.n	80011de <drawRec+0x36a>
 80011be:	10dc      	asrs	r4, r3, #3
 80011c0:	4d62      	ldr	r5, [pc, #392]	; (800134c <drawRec+0x4d8>)
 80011c2:	01e4      	lsls	r4, r4, #7
 80011c4:	1824      	adds	r4, r4, r0
 80011c6:	572e      	ldrsb	r6, [r5, r4]
 80011c8:	464d      	mov	r5, r9
 80011ca:	2701      	movs	r7, #1
 80011cc:	401d      	ands	r5, r3
 80011ce:	40af      	lsls	r7, r5
 80011d0:	b27d      	sxtb	r5, r7
 80011d2:	4647      	mov	r7, r8
 80011d4:	2f00      	cmp	r7, #0
 80011d6:	d05c      	beq.n	8001292 <drawRec+0x41e>
 80011d8:	4335      	orrs	r5, r6
 80011da:	4e5c      	ldr	r6, [pc, #368]	; (800134c <drawRec+0x4d8>)
 80011dc:	5535      	strb	r5, [r6, r4]
 80011de:	297f      	cmp	r1, #127	; 0x7f
 80011e0:	dc13      	bgt.n	800120a <drawRec+0x396>
 80011e2:	2900      	cmp	r1, #0
 80011e4:	db11      	blt.n	800120a <drawRec+0x396>
 80011e6:	2b00      	cmp	r3, #0
 80011e8:	db0f      	blt.n	800120a <drawRec+0x396>
 80011ea:	464c      	mov	r4, r9
 80011ec:	2501      	movs	r5, #1
 80011ee:	401c      	ands	r4, r3
 80011f0:	40a5      	lsls	r5, r4
 80011f2:	4646      	mov	r6, r8
 80011f4:	10db      	asrs	r3, r3, #3
 80011f6:	b26c      	sxtb	r4, r5
 80011f8:	01db      	lsls	r3, r3, #7
 80011fa:	4d54      	ldr	r5, [pc, #336]	; (800134c <drawRec+0x4d8>)
 80011fc:	185b      	adds	r3, r3, r1
 80011fe:	56ed      	ldrsb	r5, [r5, r3]
 8001200:	2e00      	cmp	r6, #0
 8001202:	d04a      	beq.n	800129a <drawRec+0x426>
 8001204:	432c      	orrs	r4, r5
 8001206:	4d51      	ldr	r5, [pc, #324]	; (800134c <drawRec+0x4d8>)
 8001208:	54ec      	strb	r4, [r5, r3]
 800120a:	3201      	adds	r2, #1
 800120c:	b2d2      	uxtb	r2, r2
 800120e:	455a      	cmp	r2, fp
 8001210:	dc2c      	bgt.n	800126c <drawRec+0x3f8>
 8001212:	9c01      	ldr	r4, [sp, #4]
 8001214:	b293      	uxth	r3, r2
 8001216:	191c      	adds	r4, r3, r4
 8001218:	b2a4      	uxth	r4, r4
 800121a:	b226      	sxth	r6, r4
 800121c:	287f      	cmp	r0, #127	; 0x7f
 800121e:	d9a3      	bls.n	8001168 <drawRec+0x2f4>
 8001220:	297f      	cmp	r1, #127	; 0x7f
 8001222:	dcf2      	bgt.n	800120a <drawRec+0x396>
 8001224:	4655      	mov	r5, sl
 8001226:	1aeb      	subs	r3, r5, r3
 8001228:	b21b      	sxth	r3, r3
 800122a:	2c3f      	cmp	r4, #63	; 0x3f
 800122c:	d818      	bhi.n	8001260 <drawRec+0x3ec>
 800122e:	2900      	cmp	r1, #0
 8001230:	db16      	blt.n	8001260 <drawRec+0x3ec>
 8001232:	464c      	mov	r4, r9
 8001234:	2501      	movs	r5, #1
 8001236:	4034      	ands	r4, r6
 8001238:	40a5      	lsls	r5, r4
 800123a:	b26c      	sxtb	r4, r5
 800123c:	43e7      	mvns	r7, r4
 800123e:	9706      	str	r7, [sp, #24]
 8001240:	4647      	mov	r7, r8
 8001242:	10f5      	asrs	r5, r6, #3
 8001244:	01ed      	lsls	r5, r5, #7
 8001246:	4e41      	ldr	r6, [pc, #260]	; (800134c <drawRec+0x4d8>)
 8001248:	186d      	adds	r5, r5, r1
 800124a:	9602      	str	r6, [sp, #8]
 800124c:	5776      	ldrsb	r6, [r6, r5]
 800124e:	2f00      	cmp	r7, #0
 8001250:	d1ac      	bne.n	80011ac <drawRec+0x338>
 8001252:	9c06      	ldr	r4, [sp, #24]
 8001254:	4034      	ands	r4, r6
 8001256:	0026      	movs	r6, r4
 8001258:	9c02      	ldr	r4, [sp, #8]
 800125a:	5566      	strb	r6, [r4, r5]
 800125c:	287f      	cmp	r0, #127	; 0x7f
 800125e:	d9aa      	bls.n	80011b6 <drawRec+0x342>
 8001260:	2b3f      	cmp	r3, #63	; 0x3f
 8001262:	ddbe      	ble.n	80011e2 <drawRec+0x36e>
 8001264:	3201      	adds	r2, #1
 8001266:	b2d2      	uxtb	r2, r2
 8001268:	455a      	cmp	r2, fp
 800126a:	ddd2      	ble.n	8001212 <drawRec+0x39e>
 800126c:	9b07      	ldr	r3, [sp, #28]
 800126e:	9a08      	ldr	r2, [sp, #32]
 8001270:	3301      	adds	r3, #1
 8001272:	b2db      	uxtb	r3, r3
 8001274:	465e      	mov	r6, fp
 8001276:	9f01      	ldr	r7, [sp, #4]
 8001278:	46d3      	mov	fp, sl
 800127a:	9307      	str	r3, [sp, #28]
 800127c:	46c2      	mov	sl, r8
 800127e:	4293      	cmp	r3, r2
 8001280:	dc00      	bgt.n	8001284 <drawRec+0x410>
 8001282:	e75c      	b.n	800113e <drawRec+0x2ca>
 8001284:	b011      	add	sp, #68	; 0x44
 8001286:	bc3c      	pop	{r2, r3, r4, r5}
 8001288:	4690      	mov	r8, r2
 800128a:	4699      	mov	r9, r3
 800128c:	46a2      	mov	sl, r4
 800128e:	46ab      	mov	fp, r5
 8001290:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001292:	43ae      	bics	r6, r5
 8001294:	4d2d      	ldr	r5, [pc, #180]	; (800134c <drawRec+0x4d8>)
 8001296:	552e      	strb	r6, [r5, r4]
 8001298:	e7a1      	b.n	80011de <drawRec+0x36a>
 800129a:	43a5      	bics	r5, r4
 800129c:	4c2b      	ldr	r4, [pc, #172]	; (800134c <drawRec+0x4d8>)
 800129e:	54e5      	strb	r5, [r4, r3]
 80012a0:	e7b3      	b.n	800120a <drawRec+0x396>
 80012a2:	43e4      	mvns	r4, r4
 80012a4:	4026      	ands	r6, r4
 80012a6:	9406      	str	r4, [sp, #24]
 80012a8:	4664      	mov	r4, ip
 80012aa:	5566      	strb	r6, [r4, r5]
 80012ac:	9c05      	ldr	r4, [sp, #20]
 80012ae:	2c7f      	cmp	r4, #127	; 0x7f
 80012b0:	d900      	bls.n	80012b4 <drawRec+0x440>
 80012b2:	e780      	b.n	80011b6 <drawRec+0x342>
 80012b4:	9c04      	ldr	r4, [sp, #16]
 80012b6:	190d      	adds	r5, r1, r4
 80012b8:	4664      	mov	r4, ip
 80012ba:	5766      	ldrsb	r6, [r4, r5]
 80012bc:	e7c9      	b.n	8001252 <drawRec+0x3de>
 80012be:	43db      	mvns	r3, r3
 80012c0:	4018      	ands	r0, r3
 80012c2:	5530      	strb	r0, [r6, r4]
 80012c4:	9803      	ldr	r0, [sp, #12]
 80012c6:	287f      	cmp	r0, #127	; 0x7f
 80012c8:	dd00      	ble.n	80012cc <drawRec+0x458>
 80012ca:	e6eb      	b.n	80010a4 <drawRec+0x230>
 80012cc:	9809      	ldr	r0, [sp, #36]	; 0x24
 80012ce:	4681      	mov	r9, r0
 80012d0:	4449      	add	r1, r9
 80012d2:	5c70      	ldrb	r0, [r6, r1]
 80012d4:	4003      	ands	r3, r0
 80012d6:	5473      	strb	r3, [r6, r1]
 80012d8:	e6e4      	b.n	80010a4 <drawRec+0x230>
 80012da:	43e0      	mvns	r0, r4
 80012dc:	000c      	movs	r4, r1
 80012de:	464f      	mov	r7, r9
 80012e0:	9903      	ldr	r1, [sp, #12]
 80012e2:	4004      	ands	r4, r0
 80012e4:	55f4      	strb	r4, [r6, r7]
 80012e6:	297f      	cmp	r1, #127	; 0x7f
 80012e8:	dd00      	ble.n	80012ec <drawRec+0x478>
 80012ea:	e6bd      	b.n	8001068 <drawRec+0x1f4>
 80012ec:	9909      	ldr	r1, [sp, #36]	; 0x24
 80012ee:	4689      	mov	r9, r1
 80012f0:	4641      	mov	r1, r8
 80012f2:	4449      	add	r1, r9
 80012f4:	5674      	ldrsb	r4, [r6, r1]
 80012f6:	46a1      	mov	r9, r4
 80012f8:	e6f9      	b.n	80010ee <drawRec+0x27a>
 80012fa:	4666      	mov	r6, ip
 80012fc:	9d0c      	ldr	r5, [sp, #48]	; 0x30
 80012fe:	4029      	ands	r1, r5
 8001300:	5581      	strb	r1, [r0, r6]
 8001302:	9902      	ldr	r1, [sp, #8]
 8001304:	293f      	cmp	r1, #63	; 0x3f
 8001306:	dd00      	ble.n	800130a <drawRec+0x496>
 8001308:	e63e      	b.n	8000f88 <drawRec+0x114>
 800130a:	9907      	ldr	r1, [sp, #28]
 800130c:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 800130e:	468c      	mov	ip, r1
 8001310:	4463      	add	r3, ip
 8001312:	5cc1      	ldrb	r1, [r0, r3]
 8001314:	4029      	ands	r1, r5
 8001316:	54c1      	strb	r1, [r0, r3]
 8001318:	e65c      	b.n	8000fd4 <drawRec+0x160>
 800131a:	4666      	mov	r6, ip
 800131c:	9d0c      	ldr	r5, [sp, #48]	; 0x30
 800131e:	402e      	ands	r6, r5
 8001320:	46b4      	mov	ip, r6
 8001322:	464e      	mov	r6, r9
 8001324:	4667      	mov	r7, ip
 8001326:	9d02      	ldr	r5, [sp, #8]
 8001328:	5587      	strb	r7, [r0, r6]
 800132a:	2d3f      	cmp	r5, #63	; 0x3f
 800132c:	dd00      	ble.n	8001330 <drawRec+0x4bc>
 800132e:	e60a      	b.n	8000f46 <drawRec+0xd2>
 8001330:	9d07      	ldr	r5, [sp, #28]
 8001332:	46ac      	mov	ip, r5
 8001334:	448c      	add	ip, r1
 8001336:	4661      	mov	r1, ip
 8001338:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 800133a:	5c41      	ldrb	r1, [r0, r1]
 800133c:	4029      	ands	r1, r5
 800133e:	4665      	mov	r5, ip
 8001340:	5541      	strb	r1, [r0, r5]
 8001342:	e600      	b.n	8000f46 <drawRec+0xd2>
 8001344:	4e01      	ldr	r6, [pc, #4]	; (800134c <drawRec+0x4d8>)
 8001346:	e6a7      	b.n	8001098 <drawRec+0x224>
 8001348:	4800      	ldr	r0, [pc, #0]	; (800134c <drawRec+0x4d8>)
 800134a:	e7f1      	b.n	8001330 <drawRec+0x4bc>
 800134c:	20000834 	.word	0x20000834

08001350 <oledColor>:
 8001350:	2280      	movs	r2, #128	; 0x80
 8001352:	b510      	push	{r4, lr}
 8001354:	0001      	movs	r1, r0
 8001356:	00d2      	lsls	r2, r2, #3
 8001358:	4801      	ldr	r0, [pc, #4]	; (8001360 <oledColor+0x10>)
 800135a:	f000 ff9b 	bl	8002294 <memset>
 800135e:	bd10      	pop	{r4, pc}
 8001360:	20000834 	.word	0x20000834

08001364 <oledFrame2>:
 8001364:	b570      	push	{r4, r5, r6, lr}
 8001366:	4b52      	ldr	r3, [pc, #328]	; (80014b0 <oledFrame2+0x14c>)
 8001368:	4d52      	ldr	r5, [pc, #328]	; (80014b4 <oledFrame2+0x150>)
 800136a:	781b      	ldrb	r3, [r3, #0]
 800136c:	7828      	ldrb	r0, [r5, #0]
 800136e:	2109      	movs	r1, #9
 8001370:	18c0      	adds	r0, r0, r3
 8001372:	b2c0      	uxtb	r0, r0
 8001374:	f7fe ff4e 	bl	8000214 <__aeabi_uidivmod>
 8001378:	b2cc      	uxtb	r4, r1
 800137a:	702c      	strb	r4, [r5, #0]
 800137c:	4d4e      	ldr	r5, [pc, #312]	; (80014b8 <oledFrame2+0x154>)
 800137e:	2280      	movs	r2, #128	; 0x80
 8001380:	2101      	movs	r1, #1
 8001382:	0028      	movs	r0, r5
 8001384:	f000 ff86 	bl	8002294 <memset>
 8001388:	0028      	movs	r0, r5
 800138a:	2280      	movs	r2, #128	; 0x80
 800138c:	2100      	movs	r1, #0
 800138e:	3080      	adds	r0, #128	; 0x80
 8001390:	f000 ff80 	bl	8002294 <memset>
 8001394:	0028      	movs	r0, r5
 8001396:	2280      	movs	r2, #128	; 0x80
 8001398:	3081      	adds	r0, #129	; 0x81
 800139a:	0052      	lsls	r2, r2, #1
 800139c:	2100      	movs	r1, #0
 800139e:	30ff      	adds	r0, #255	; 0xff
 80013a0:	f000 ff78 	bl	8002294 <memset>
 80013a4:	23c0      	movs	r3, #192	; 0xc0
 80013a6:	009b      	lsls	r3, r3, #2
 80013a8:	18e8      	adds	r0, r5, r3
 80013aa:	2280      	movs	r2, #128	; 0x80
 80013ac:	2100      	movs	r1, #0
 80013ae:	f000 ff71 	bl	8002294 <memset>
 80013b2:	23e0      	movs	r3, #224	; 0xe0
 80013b4:	009b      	lsls	r3, r3, #2
 80013b6:	18e8      	adds	r0, r5, r3
 80013b8:	2280      	movs	r2, #128	; 0x80
 80013ba:	2180      	movs	r1, #128	; 0x80
 80013bc:	f000 ff6a 	bl	8002294 <memset>
 80013c0:	2c04      	cmp	r4, #4
 80013c2:	d846      	bhi.n	8001452 <oledFrame2+0xee>
 80013c4:	1c68      	adds	r0, r5, #1
 80013c6:	0022      	movs	r2, r4
 80013c8:	2100      	movs	r1, #0
 80013ca:	30ff      	adds	r0, #255	; 0xff
 80013cc:	f000 ff62 	bl	8002294 <memset>
 80013d0:	23a0      	movs	r3, #160	; 0xa0
 80013d2:	009b      	lsls	r3, r3, #2
 80013d4:	18e8      	adds	r0, r5, r3
 80013d6:	0022      	movs	r2, r4
 80013d8:	2100      	movs	r1, #0
 80013da:	f000 ff5b 	bl	8002294 <memset>
 80013de:	4e37      	ldr	r6, [pc, #220]	; (80014bc <oledFrame2+0x158>)
 80013e0:	b2a4      	uxth	r4, r4
 80013e2:	1c60      	adds	r0, r4, #1
 80013e4:	30ff      	adds	r0, #255	; 0xff
 80013e6:	2205      	movs	r2, #5
 80013e8:	2120      	movs	r1, #32
 80013ea:	1828      	adds	r0, r5, r0
 80013ec:	f000 ff52 	bl	8002294 <memset>
 80013f0:	1da0      	adds	r0, r4, #6
 80013f2:	30ff      	adds	r0, #255	; 0xff
 80013f4:	2204      	movs	r2, #4
 80013f6:	2100      	movs	r1, #0
 80013f8:	1828      	adds	r0, r5, r0
 80013fa:	f000 ff4b 	bl	8002294 <memset>
 80013fe:	23a0      	movs	r3, #160	; 0xa0
 8001400:	009b      	lsls	r3, r3, #2
 8001402:	18e0      	adds	r0, r4, r3
 8001404:	2205      	movs	r2, #5
 8001406:	2104      	movs	r1, #4
 8001408:	1828      	adds	r0, r5, r0
 800140a:	f000 ff43 	bl	8002294 <memset>
 800140e:	4b2c      	ldr	r3, [pc, #176]	; (80014c0 <oledFrame2+0x15c>)
 8001410:	2204      	movs	r2, #4
 8001412:	18e0      	adds	r0, r4, r3
 8001414:	3409      	adds	r4, #9
 8001416:	1828      	adds	r0, r5, r0
 8001418:	2100      	movs	r1, #0
 800141a:	b2a4      	uxth	r4, r4
 800141c:	f000 ff3a 	bl	8002294 <memset>
 8001420:	8034      	strh	r4, [r6, #0]
 8001422:	2c77      	cmp	r4, #119	; 0x77
 8001424:	d9dd      	bls.n	80013e2 <oledFrame2+0x7e>
 8001426:	2680      	movs	r6, #128	; 0x80
 8001428:	1c60      	adds	r0, r4, #1
 800142a:	1b36      	subs	r6, r6, r4
 800142c:	30ff      	adds	r0, #255	; 0xff
 800142e:	0032      	movs	r2, r6
 8001430:	2120      	movs	r1, #32
 8001432:	1828      	adds	r0, r5, r0
 8001434:	f000 ff2e 	bl	8002294 <memset>
 8001438:	23a0      	movs	r3, #160	; 0xa0
 800143a:	0032      	movs	r2, r6
 800143c:	267b      	movs	r6, #123	; 0x7b
 800143e:	009b      	lsls	r3, r3, #2
 8001440:	18e0      	adds	r0, r4, r3
 8001442:	1828      	adds	r0, r5, r0
 8001444:	2104      	movs	r1, #4
 8001446:	f000 ff25 	bl	8002294 <memset>
 800144a:	1b36      	subs	r6, r6, r4
 800144c:	2e00      	cmp	r6, #0
 800144e:	dc1e      	bgt.n	800148e <oledFrame2+0x12a>
 8001450:	bd70      	pop	{r4, r5, r6, pc}
 8001452:	1f26      	subs	r6, r4, #4
 8001454:	1c68      	adds	r0, r5, #1
 8001456:	0032      	movs	r2, r6
 8001458:	2120      	movs	r1, #32
 800145a:	30ff      	adds	r0, #255	; 0xff
 800145c:	f000 ff1a 	bl	8002294 <memset>
 8001460:	0020      	movs	r0, r4
 8001462:	30fc      	adds	r0, #252	; 0xfc
 8001464:	1828      	adds	r0, r5, r0
 8001466:	2204      	movs	r2, #4
 8001468:	2100      	movs	r1, #0
 800146a:	f000 ff13 	bl	8002294 <memset>
 800146e:	23a0      	movs	r3, #160	; 0xa0
 8001470:	009b      	lsls	r3, r3, #2
 8001472:	18e8      	adds	r0, r5, r3
 8001474:	0032      	movs	r2, r6
 8001476:	2104      	movs	r1, #4
 8001478:	f000 ff0c 	bl	8002294 <memset>
 800147c:	239f      	movs	r3, #159	; 0x9f
 800147e:	009b      	lsls	r3, r3, #2
 8001480:	18e0      	adds	r0, r4, r3
 8001482:	1828      	adds	r0, r5, r0
 8001484:	2204      	movs	r2, #4
 8001486:	2100      	movs	r1, #0
 8001488:	f000 ff04 	bl	8002294 <memset>
 800148c:	e7a7      	b.n	80013de <oledFrame2+0x7a>
 800148e:	1da0      	adds	r0, r4, #6
 8001490:	30ff      	adds	r0, #255	; 0xff
 8001492:	0032      	movs	r2, r6
 8001494:	1828      	adds	r0, r5, r0
 8001496:	2100      	movs	r1, #0
 8001498:	f000 fefc 	bl	8002294 <memset>
 800149c:	4b08      	ldr	r3, [pc, #32]	; (80014c0 <oledFrame2+0x15c>)
 800149e:	0032      	movs	r2, r6
 80014a0:	469c      	mov	ip, r3
 80014a2:	4464      	add	r4, ip
 80014a4:	1928      	adds	r0, r5, r4
 80014a6:	2100      	movs	r1, #0
 80014a8:	f000 fef4 	bl	8002294 <memset>
 80014ac:	e7d0      	b.n	8001450 <oledFrame2+0xec>
 80014ae:	46c0      	nop			; (mov r8, r8)
 80014b0:	200003dd 	.word	0x200003dd
 80014b4:	20000c36 	.word	0x20000c36
 80014b8:	20000834 	.word	0x20000834
 80014bc:	20000c34 	.word	0x20000c34
 80014c0:	00000285 	.word	0x00000285

080014c4 <oledUpdate>:
 80014c4:	2010      	movs	r0, #16
 80014c6:	b5f0      	push	{r4, r5, r6, r7, lr}
 80014c8:	464e      	mov	r6, r9
 80014ca:	4645      	mov	r5, r8
 80014cc:	46de      	mov	lr, fp
 80014ce:	4657      	mov	r7, sl
 80014d0:	23b0      	movs	r3, #176	; 0xb0
 80014d2:	4a31      	ldr	r2, [pc, #196]	; (8001598 <oledUpdate+0xd4>)
 80014d4:	4681      	mov	r9, r0
 80014d6:	4831      	ldr	r0, [pc, #196]	; (800159c <oledUpdate+0xd8>)
 80014d8:	b5e0      	push	{r5, r6, r7, lr}
 80014da:	4694      	mov	ip, r2
 80014dc:	2500      	movs	r5, #0
 80014de:	2202      	movs	r2, #2
 80014e0:	2440      	movs	r4, #64	; 0x40
 80014e2:	4680      	mov	r8, r0
 80014e4:	469b      	mov	fp, r3
 80014e6:	492e      	ldr	r1, [pc, #184]	; (80015a0 <oledUpdate+0xdc>)
 80014e8:	4b2e      	ldr	r3, [pc, #184]	; (80015a4 <oledUpdate+0xe0>)
 80014ea:	4e2f      	ldr	r6, [pc, #188]	; (80015a8 <oledUpdate+0xe4>)
 80014ec:	4667      	mov	r7, ip
 80014ee:	6858      	ldr	r0, [r3, #4]
 80014f0:	4030      	ands	r0, r6
 80014f2:	4338      	orrs	r0, r7
 80014f4:	6058      	str	r0, [r3, #4]
 80014f6:	6998      	ldr	r0, [r3, #24]
 80014f8:	4202      	tst	r2, r0
 80014fa:	d0fc      	beq.n	80014f6 <oledUpdate+0x32>
 80014fc:	629d      	str	r5, [r3, #40]	; 0x28
 80014fe:	6998      	ldr	r0, [r3, #24]
 8001500:	4202      	tst	r2, r0
 8001502:	d0fc      	beq.n	80014fe <oledUpdate+0x3a>
 8001504:	4658      	mov	r0, fp
 8001506:	6298      	str	r0, [r3, #40]	; 0x28
 8001508:	6998      	ldr	r0, [r3, #24]
 800150a:	4204      	tst	r4, r0
 800150c:	d1fc      	bne.n	8001508 <oledUpdate+0x44>
 800150e:	4667      	mov	r7, ip
 8001510:	6858      	ldr	r0, [r3, #4]
 8001512:	4030      	ands	r0, r6
 8001514:	4338      	orrs	r0, r7
 8001516:	6058      	str	r0, [r3, #4]
 8001518:	6998      	ldr	r0, [r3, #24]
 800151a:	4202      	tst	r2, r0
 800151c:	d0fc      	beq.n	8001518 <oledUpdate+0x54>
 800151e:	629d      	str	r5, [r3, #40]	; 0x28
 8001520:	6998      	ldr	r0, [r3, #24]
 8001522:	4202      	tst	r2, r0
 8001524:	d0fc      	beq.n	8001520 <oledUpdate+0x5c>
 8001526:	629d      	str	r5, [r3, #40]	; 0x28
 8001528:	6998      	ldr	r0, [r3, #24]
 800152a:	4204      	tst	r4, r0
 800152c:	d1fc      	bne.n	8001528 <oledUpdate+0x64>
 800152e:	4667      	mov	r7, ip
 8001530:	6858      	ldr	r0, [r3, #4]
 8001532:	4030      	ands	r0, r6
 8001534:	4338      	orrs	r0, r7
 8001536:	6058      	str	r0, [r3, #4]
 8001538:	6998      	ldr	r0, [r3, #24]
 800153a:	4202      	tst	r2, r0
 800153c:	d0fc      	beq.n	8001538 <oledUpdate+0x74>
 800153e:	629d      	str	r5, [r3, #40]	; 0x28
 8001540:	6998      	ldr	r0, [r3, #24]
 8001542:	4202      	tst	r2, r0
 8001544:	d0fc      	beq.n	8001540 <oledUpdate+0x7c>
 8001546:	4648      	mov	r0, r9
 8001548:	6298      	str	r0, [r3, #40]	; 0x28
 800154a:	6998      	ldr	r0, [r3, #24]
 800154c:	4204      	tst	r4, r0
 800154e:	d1fc      	bne.n	800154a <oledUpdate+0x86>
 8001550:	4647      	mov	r7, r8
 8001552:	6858      	ldr	r0, [r3, #4]
 8001554:	4030      	ands	r0, r6
 8001556:	4338      	orrs	r0, r7
 8001558:	6058      	str	r0, [r3, #4]
 800155a:	6998      	ldr	r0, [r3, #24]
 800155c:	4202      	tst	r2, r0
 800155e:	d0fc      	beq.n	800155a <oledUpdate+0x96>
 8001560:	0008      	movs	r0, r1
 8001562:	629c      	str	r4, [r3, #40]	; 0x28
 8001564:	3080      	adds	r0, #128	; 0x80
 8001566:	699f      	ldr	r7, [r3, #24]
 8001568:	423a      	tst	r2, r7
 800156a:	d0fc      	beq.n	8001566 <oledUpdate+0xa2>
 800156c:	780f      	ldrb	r7, [r1, #0]
 800156e:	3101      	adds	r1, #1
 8001570:	629f      	str	r7, [r3, #40]	; 0x28
 8001572:	4281      	cmp	r1, r0
 8001574:	d1f7      	bne.n	8001566 <oledUpdate+0xa2>
 8001576:	6999      	ldr	r1, [r3, #24]
 8001578:	420c      	tst	r4, r1
 800157a:	d1fc      	bne.n	8001576 <oledUpdate+0xb2>
 800157c:	2101      	movs	r1, #1
 800157e:	468a      	mov	sl, r1
 8001580:	44d3      	add	fp, sl
 8001582:	0001      	movs	r1, r0
 8001584:	4658      	mov	r0, fp
 8001586:	28b8      	cmp	r0, #184	; 0xb8
 8001588:	d1b0      	bne.n	80014ec <oledUpdate+0x28>
 800158a:	bc3c      	pop	{r2, r3, r4, r5}
 800158c:	4690      	mov	r8, r2
 800158e:	4699      	mov	r9, r3
 8001590:	46a2      	mov	sl, r4
 8001592:	46ab      	mov	fp, r5
 8001594:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001596:	46c0      	nop			; (mov r8, r8)
 8001598:	02022078 	.word	0x02022078
 800159c:	02812078 	.word	0x02812078
 80015a0:	20000834 	.word	0x20000834
 80015a4:	40005800 	.word	0x40005800
 80015a8:	fc008000 	.word	0xfc008000

080015ac <oledSetPix>:
 80015ac:	b283      	uxth	r3, r0
 80015ae:	b530      	push	{r4, r5, lr}
 80015b0:	2b7f      	cmp	r3, #127	; 0x7f
 80015b2:	d810      	bhi.n	80015d6 <oledSetPix+0x2a>
 80015b4:	b28b      	uxth	r3, r1
 80015b6:	2b3f      	cmp	r3, #63	; 0x3f
 80015b8:	d80d      	bhi.n	80015d6 <oledSetPix+0x2a>
 80015ba:	10cb      	asrs	r3, r1, #3
 80015bc:	01db      	lsls	r3, r3, #7
 80015be:	1818      	adds	r0, r3, r0
 80015c0:	2307      	movs	r3, #7
 80015c2:	4019      	ands	r1, r3
 80015c4:	3b06      	subs	r3, #6
 80015c6:	408b      	lsls	r3, r1
 80015c8:	4d05      	ldr	r5, [pc, #20]	; (80015e0 <oledSetPix+0x34>)
 80015ca:	b25b      	sxtb	r3, r3
 80015cc:	562c      	ldrsb	r4, [r5, r0]
 80015ce:	2a00      	cmp	r2, #0
 80015d0:	d002      	beq.n	80015d8 <oledSetPix+0x2c>
 80015d2:	4323      	orrs	r3, r4
 80015d4:	542b      	strb	r3, [r5, r0]
 80015d6:	bd30      	pop	{r4, r5, pc}
 80015d8:	439c      	bics	r4, r3
 80015da:	542c      	strb	r4, [r5, r0]
 80015dc:	e7fb      	b.n	80015d6 <oledSetPix+0x2a>
 80015de:	46c0      	nop			; (mov r8, r8)
 80015e0:	20000834 	.word	0x20000834

080015e4 <oled_set_cursor>:
 80015e4:	4b02      	ldr	r3, [pc, #8]	; (80015f0 <oled_set_cursor+0xc>)
 80015e6:	7018      	strb	r0, [r3, #0]
 80015e8:	4b02      	ldr	r3, [pc, #8]	; (80015f4 <oled_set_cursor+0x10>)
 80015ea:	7019      	strb	r1, [r3, #0]
 80015ec:	4770      	bx	lr
 80015ee:	46c0      	nop			; (mov r8, r8)
 80015f0:	2000082f 	.word	0x2000082f
 80015f4:	20000830 	.word	0x20000830

080015f8 <oled_putc>:
 80015f8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80015fa:	46de      	mov	lr, fp
 80015fc:	4657      	mov	r7, sl
 80015fe:	464e      	mov	r6, r9
 8001600:	4645      	mov	r5, r8
 8001602:	b5e0      	push	{r5, r6, r7, lr}
 8001604:	b085      	sub	sp, #20
 8001606:	280a      	cmp	r0, #10
 8001608:	d100      	bne.n	800160c <oled_putc+0x14>
 800160a:	e071      	b.n	80016f0 <oled_putc+0xf8>
 800160c:	280d      	cmp	r0, #13
 800160e:	d100      	bne.n	8001612 <oled_putc+0x1a>
 8001610:	e073      	b.n	80016fa <oled_putc+0x102>
 8001612:	4d3d      	ldr	r5, [pc, #244]	; (8001708 <oled_putc+0x110>)
 8001614:	796a      	ldrb	r2, [r5, #5]
 8001616:	2a00      	cmp	r2, #0
 8001618:	d100      	bne.n	800161c <oled_putc+0x24>
 800161a:	e072      	b.n	8001702 <oled_putc+0x10a>
 800161c:	4b3b      	ldr	r3, [pc, #236]	; (800170c <oled_putc+0x114>)
 800161e:	7929      	ldrb	r1, [r5, #4]
 8001620:	9303      	str	r3, [sp, #12]
 8001622:	4b3b      	ldr	r3, [pc, #236]	; (8001710 <oled_putc+0x118>)
 8001624:	2600      	movs	r6, #0
 8001626:	469b      	mov	fp, r3
 8001628:	4b3a      	ldr	r3, [pc, #232]	; (8001714 <oled_putc+0x11c>)
 800162a:	4682      	mov	sl, r0
 800162c:	4699      	mov	r9, r3
 800162e:	2900      	cmp	r1, #0
 8001630:	d059      	beq.n	80016e6 <oled_putc+0xee>
 8001632:	4652      	mov	r2, sl
 8001634:	b2b3      	uxth	r3, r6
 8001636:	2400      	movs	r4, #0
 8001638:	9601      	str	r6, [sp, #4]
 800163a:	9202      	str	r2, [sp, #8]
 800163c:	469a      	mov	sl, r3
 800163e:	e009      	b.n	8001654 <oled_putc+0x5c>
 8001640:	003e      	movs	r6, r7
 8001642:	431e      	orrs	r6, r3
 8001644:	0033      	movs	r3, r6
 8001646:	4648      	mov	r0, r9
 8001648:	4666      	mov	r6, ip
 800164a:	5583      	strb	r3, [r0, r6]
 800164c:	3401      	adds	r4, #1
 800164e:	b2e4      	uxtb	r4, r4
 8001650:	42a1      	cmp	r1, r4
 8001652:	d936      	bls.n	80016c2 <oled_putc+0xca>
 8001654:	9a01      	ldr	r2, [sp, #4]
 8001656:	0021      	movs	r1, r4
 8001658:	68ab      	ldr	r3, [r5, #8]
 800165a:	9802      	ldr	r0, [sp, #8]
 800165c:	4798      	blx	r3
 800165e:	465b      	mov	r3, fp
 8001660:	796a      	ldrb	r2, [r5, #5]
 8001662:	781b      	ldrb	r3, [r3, #0]
 8001664:	1c91      	adds	r1, r2, #2
 8001666:	434b      	muls	r3, r1
 8001668:	4453      	add	r3, sl
 800166a:	b29b      	uxth	r3, r3
 800166c:	4698      	mov	r8, r3
 800166e:	7929      	ldrb	r1, [r5, #4]
 8001670:	2b7f      	cmp	r3, #127	; 0x7f
 8001672:	d8eb      	bhi.n	800164c <oled_putc+0x54>
 8001674:	9b03      	ldr	r3, [sp, #12]
 8001676:	1c4e      	adds	r6, r1, #1
 8001678:	781b      	ldrb	r3, [r3, #0]
 800167a:	435e      	muls	r6, r3
 800167c:	46b4      	mov	ip, r6
 800167e:	4b26      	ldr	r3, [pc, #152]	; (8001718 <oled_putc+0x120>)
 8001680:	781b      	ldrb	r3, [r3, #0]
 8001682:	b25b      	sxtb	r3, r3
 8001684:	4463      	add	r3, ip
 8001686:	191b      	adds	r3, r3, r4
 8001688:	b29b      	uxth	r3, r3
 800168a:	2b3f      	cmp	r3, #63	; 0x3f
 800168c:	d8de      	bhi.n	800164c <oled_putc+0x54>
 800168e:	b21b      	sxth	r3, r3
 8001690:	10de      	asrs	r6, r3, #3
 8001692:	01f6      	lsls	r6, r6, #7
 8001694:	46b4      	mov	ip, r6
 8001696:	44c4      	add	ip, r8
 8001698:	4667      	mov	r7, ip
 800169a:	464e      	mov	r6, r9
 800169c:	57f6      	ldrsb	r6, [r6, r7]
 800169e:	0037      	movs	r7, r6
 80016a0:	2607      	movs	r6, #7
 80016a2:	4033      	ands	r3, r6
 80016a4:	3e06      	subs	r6, #6
 80016a6:	409e      	lsls	r6, r3
 80016a8:	b273      	sxtb	r3, r6
 80016aa:	2800      	cmp	r0, #0
 80016ac:	d1c8      	bne.n	8001640 <oled_putc+0x48>
 80016ae:	0038      	movs	r0, r7
 80016b0:	4398      	bics	r0, r3
 80016b2:	0003      	movs	r3, r0
 80016b4:	4666      	mov	r6, ip
 80016b6:	4648      	mov	r0, r9
 80016b8:	3401      	adds	r4, #1
 80016ba:	b2e4      	uxtb	r4, r4
 80016bc:	5583      	strb	r3, [r0, r6]
 80016be:	42a1      	cmp	r1, r4
 80016c0:	d8c8      	bhi.n	8001654 <oled_putc+0x5c>
 80016c2:	9b02      	ldr	r3, [sp, #8]
 80016c4:	9e01      	ldr	r6, [sp, #4]
 80016c6:	469a      	mov	sl, r3
 80016c8:	3601      	adds	r6, #1
 80016ca:	b2f6      	uxtb	r6, r6
 80016cc:	4296      	cmp	r6, r2
 80016ce:	d3ae      	bcc.n	800162e <oled_putc+0x36>
 80016d0:	9a03      	ldr	r2, [sp, #12]
 80016d2:	7813      	ldrb	r3, [r2, #0]
 80016d4:	3301      	adds	r3, #1
 80016d6:	7013      	strb	r3, [r2, #0]
 80016d8:	b005      	add	sp, #20
 80016da:	bc3c      	pop	{r2, r3, r4, r5}
 80016dc:	4690      	mov	r8, r2
 80016de:	4699      	mov	r9, r3
 80016e0:	46a2      	mov	sl, r4
 80016e2:	46ab      	mov	fp, r5
 80016e4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80016e6:	3601      	adds	r6, #1
 80016e8:	b2f6      	uxtb	r6, r6
 80016ea:	42b2      	cmp	r2, r6
 80016ec:	d8ec      	bhi.n	80016c8 <oled_putc+0xd0>
 80016ee:	e7ef      	b.n	80016d0 <oled_putc+0xd8>
 80016f0:	4a07      	ldr	r2, [pc, #28]	; (8001710 <oled_putc+0x118>)
 80016f2:	7813      	ldrb	r3, [r2, #0]
 80016f4:	3301      	adds	r3, #1
 80016f6:	7013      	strb	r3, [r2, #0]
 80016f8:	e7ee      	b.n	80016d8 <oled_putc+0xe0>
 80016fa:	2200      	movs	r2, #0
 80016fc:	4b03      	ldr	r3, [pc, #12]	; (800170c <oled_putc+0x114>)
 80016fe:	701a      	strb	r2, [r3, #0]
 8001700:	e7ea      	b.n	80016d8 <oled_putc+0xe0>
 8001702:	4b02      	ldr	r3, [pc, #8]	; (800170c <oled_putc+0x114>)
 8001704:	9303      	str	r3, [sp, #12]
 8001706:	e7e3      	b.n	80016d0 <oled_putc+0xd8>
 8001708:	20000004 	.word	0x20000004
 800170c:	20000830 	.word	0x20000830
 8001710:	2000082f 	.word	0x2000082f
 8001714:	20000834 	.word	0x20000834
 8001718:	20000831 	.word	0x20000831

0800171c <oledPic>:
 800171c:	2300      	movs	r3, #0
 800171e:	469c      	mov	ip, r3
 8001720:	4b1c      	ldr	r3, [pc, #112]	; (8001794 <oledPic+0x78>)
 8001722:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001724:	4657      	mov	r7, sl
 8001726:	469a      	mov	sl, r3
 8001728:	2307      	movs	r3, #7
 800172a:	464e      	mov	r6, r9
 800172c:	4645      	mov	r5, r8
 800172e:	46de      	mov	lr, fp
 8001730:	4699      	mov	r9, r3
 8001732:	3b06      	subs	r3, #6
 8001734:	4698      	mov	r8, r3
 8001736:	b5e0      	push	{r5, r6, r7, lr}
 8001738:	3080      	adds	r0, #128	; 0x80
 800173a:	4662      	mov	r2, ip
 800173c:	464b      	mov	r3, r9
 800173e:	4646      	mov	r6, r8
 8001740:	4013      	ands	r3, r2
 8001742:	409e      	lsls	r6, r3
 8001744:	0003      	movs	r3, r0
 8001746:	b212      	sxth	r2, r2
 8001748:	10d2      	asrs	r2, r2, #3
 800174a:	b276      	sxtb	r6, r6
 800174c:	01d2      	lsls	r2, r2, #7
 800174e:	43f7      	mvns	r7, r6
 8001750:	3b80      	subs	r3, #128	; 0x80
 8001752:	4452      	add	r2, sl
 8001754:	e005      	b.n	8001762 <oledPic+0x46>
 8001756:	403d      	ands	r5, r7
 8001758:	3301      	adds	r3, #1
 800175a:	7015      	strb	r5, [r2, #0]
 800175c:	3201      	adds	r2, #1
 800175e:	4283      	cmp	r3, r0
 8001760:	d00a      	beq.n	8001778 <oledPic+0x5c>
 8001762:	2500      	movs	r5, #0
 8001764:	781c      	ldrb	r4, [r3, #0]
 8001766:	5755      	ldrsb	r5, [r2, r5]
 8001768:	428c      	cmp	r4, r1
 800176a:	d9f4      	bls.n	8001756 <oledPic+0x3a>
 800176c:	4335      	orrs	r5, r6
 800176e:	3301      	adds	r3, #1
 8001770:	7015      	strb	r5, [r2, #0]
 8001772:	3201      	adds	r2, #1
 8001774:	4283      	cmp	r3, r0
 8001776:	d1f4      	bne.n	8001762 <oledPic+0x46>
 8001778:	2201      	movs	r2, #1
 800177a:	4693      	mov	fp, r2
 800177c:	3380      	adds	r3, #128	; 0x80
 800177e:	44dc      	add	ip, fp
 8001780:	0018      	movs	r0, r3
 8001782:	4663      	mov	r3, ip
 8001784:	2b40      	cmp	r3, #64	; 0x40
 8001786:	d1d8      	bne.n	800173a <oledPic+0x1e>
 8001788:	bc3c      	pop	{r2, r3, r4, r5}
 800178a:	4690      	mov	r8, r2
 800178c:	4699      	mov	r9, r3
 800178e:	46a2      	mov	sl, r4
 8001790:	46ab      	mov	fp, r5
 8001792:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001794:	20000834 	.word	0x20000834

08001798 <oled_hw_config>:
 8001798:	2080      	movs	r0, #128	; 0x80
 800179a:	b5f0      	push	{r4, r5, r6, r7, lr}
 800179c:	46ce      	mov	lr, r9
 800179e:	4647      	mov	r7, r8
 80017a0:	4a39      	ldr	r2, [pc, #228]	; (8001888 <oled_hw_config+0xf0>)
 80017a2:	02c0      	lsls	r0, r0, #11
 80017a4:	6951      	ldr	r1, [r2, #20]
 80017a6:	b580      	push	{r7, lr}
 80017a8:	4301      	orrs	r1, r0
 80017aa:	6151      	str	r1, [r2, #20]
 80017ac:	2180      	movs	r1, #128	; 0x80
 80017ae:	6953      	ldr	r3, [r2, #20]
 80017b0:	b083      	sub	sp, #12
 80017b2:	4003      	ands	r3, r0
 80017b4:	9301      	str	r3, [sp, #4]
 80017b6:	9b01      	ldr	r3, [sp, #4]
 80017b8:	4b34      	ldr	r3, [pc, #208]	; (800188c <oled_hw_config+0xf4>)
 80017ba:	4d35      	ldr	r5, [pc, #212]	; (8001890 <oled_hw_config+0xf8>)
 80017bc:	6818      	ldr	r0, [r3, #0]
 80017be:	0389      	lsls	r1, r1, #14
 80017c0:	4028      	ands	r0, r5
 80017c2:	4301      	orrs	r1, r0
 80017c4:	2080      	movs	r0, #128	; 0x80
 80017c6:	6019      	str	r1, [r3, #0]
 80017c8:	6859      	ldr	r1, [r3, #4]
 80017ca:	00c0      	lsls	r0, r0, #3
 80017cc:	4301      	orrs	r1, r0
 80017ce:	2080      	movs	r0, #128	; 0x80
 80017d0:	6059      	str	r1, [r3, #4]
 80017d2:	6a59      	ldr	r1, [r3, #36]	; 0x24
 80017d4:	4e2f      	ldr	r6, [pc, #188]	; (8001894 <oled_hw_config+0xfc>)
 80017d6:	0040      	lsls	r0, r0, #1
 80017d8:	4031      	ands	r1, r6
 80017da:	4301      	orrs	r1, r0
 80017dc:	6259      	str	r1, [r3, #36]	; 0x24
 80017de:	21c0      	movs	r1, #192	; 0xc0
 80017e0:	689c      	ldr	r4, [r3, #8]
 80017e2:	0389      	lsls	r1, r1, #14
 80017e4:	402c      	ands	r4, r5
 80017e6:	4321      	orrs	r1, r4
 80017e8:	6099      	str	r1, [r3, #8]
 80017ea:	681c      	ldr	r4, [r3, #0]
 80017ec:	492a      	ldr	r1, [pc, #168]	; (8001898 <oled_hw_config+0x100>)
 80017ee:	4f2b      	ldr	r7, [pc, #172]	; (800189c <oled_hw_config+0x104>)
 80017f0:	468c      	mov	ip, r1
 80017f2:	400c      	ands	r4, r1
 80017f4:	2180      	movs	r1, #128	; 0x80
 80017f6:	0409      	lsls	r1, r1, #16
 80017f8:	4321      	orrs	r1, r4
 80017fa:	2480      	movs	r4, #128	; 0x80
 80017fc:	6019      	str	r1, [r3, #0]
 80017fe:	6859      	ldr	r1, [r3, #4]
 8001800:	0124      	lsls	r4, r4, #4
 8001802:	4039      	ands	r1, r7
 8001804:	430c      	orrs	r4, r1
 8001806:	605c      	str	r4, [r3, #4]
 8001808:	6a59      	ldr	r1, [r3, #36]	; 0x24
 800180a:	4c25      	ldr	r4, [pc, #148]	; (80018a0 <oled_hw_config+0x108>)
 800180c:	4681      	mov	r9, r0
 800180e:	4021      	ands	r1, r4
 8001810:	2480      	movs	r4, #128	; 0x80
 8001812:	4660      	mov	r0, ip
 8001814:	0164      	lsls	r4, r4, #5
 8001816:	4321      	orrs	r1, r4
 8001818:	6259      	str	r1, [r3, #36]	; 0x24
 800181a:	6899      	ldr	r1, [r3, #8]
 800181c:	4008      	ands	r0, r1
 800181e:	21c0      	movs	r1, #192	; 0xc0
 8001820:	0409      	lsls	r1, r1, #16
 8001822:	4301      	orrs	r1, r0
 8001824:	6099      	str	r1, [r3, #8]
 8001826:	2110      	movs	r1, #16
 8001828:	2001      	movs	r0, #1
 800182a:	6b13      	ldr	r3, [r2, #48]	; 0x30
 800182c:	4684      	mov	ip, r0
 800182e:	430b      	orrs	r3, r1
 8001830:	6313      	str	r3, [r2, #48]	; 0x30
 8001832:	4b1c      	ldr	r3, [pc, #112]	; (80018a4 <oled_hw_config+0x10c>)
 8001834:	6819      	ldr	r1, [r3, #0]
 8001836:	4381      	bics	r1, r0
 8001838:	2080      	movs	r0, #128	; 0x80
 800183a:	6019      	str	r1, [r3, #0]
 800183c:	69d1      	ldr	r1, [r2, #28]
 800183e:	03c0      	lsls	r0, r0, #15
 8001840:	4301      	orrs	r1, r0
 8001842:	61d1      	str	r1, [r2, #28]
 8001844:	69d2      	ldr	r2, [r2, #28]
 8001846:	4002      	ands	r2, r0
 8001848:	4648      	mov	r0, r9
 800184a:	9200      	str	r2, [sp, #0]
 800184c:	9a00      	ldr	r2, [sp, #0]
 800184e:	681a      	ldr	r2, [r3, #0]
 8001850:	4314      	orrs	r4, r2
 8001852:	601c      	str	r4, [r3, #0]
 8001854:	681a      	ldr	r2, [r3, #0]
 8001856:	4016      	ands	r6, r2
 8001858:	4a13      	ldr	r2, [pc, #76]	; (80018a8 <oled_hw_config+0x110>)
 800185a:	4330      	orrs	r0, r6
 800185c:	6018      	str	r0, [r3, #0]
 800185e:	611a      	str	r2, [r3, #16]
 8001860:	2280      	movs	r2, #128	; 0x80
 8001862:	6819      	ldr	r1, [r3, #0]
 8001864:	0292      	lsls	r2, r2, #10
 8001866:	430a      	orrs	r2, r1
 8001868:	601a      	str	r2, [r3, #0]
 800186a:	685a      	ldr	r2, [r3, #4]
 800186c:	4017      	ands	r7, r2
 800186e:	605f      	str	r7, [r3, #4]
 8001870:	6819      	ldr	r1, [r3, #0]
 8001872:	400d      	ands	r5, r1
 8001874:	4661      	mov	r1, ip
 8001876:	601d      	str	r5, [r3, #0]
 8001878:	681a      	ldr	r2, [r3, #0]
 800187a:	430a      	orrs	r2, r1
 800187c:	601a      	str	r2, [r3, #0]
 800187e:	b003      	add	sp, #12
 8001880:	bc0c      	pop	{r2, r3}
 8001882:	4690      	mov	r8, r2
 8001884:	4699      	mov	r9, r3
 8001886:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001888:	40021000 	.word	0x40021000
 800188c:	48000400 	.word	0x48000400
 8001890:	ffcfffff 	.word	0xffcfffff
 8001894:	fffff0ff 	.word	0xfffff0ff
 8001898:	ff3fffff 	.word	0xff3fffff
 800189c:	fffff7ff 	.word	0xfffff7ff
 80018a0:	ffff0fff 	.word	0xffff0fff
 80018a4:	40005800 	.word	0x40005800
 80018a8:	50330309 	.word	0x50330309

080018ac <oled_config>:
 80018ac:	b510      	push	{r4, lr}
 80018ae:	f7ff ff73 	bl	8001798 <oled_hw_config>
 80018b2:	4bcc      	ldr	r3, [pc, #816]	; (8001be4 <oled_config+0x338>)
 80018b4:	49cc      	ldr	r1, [pc, #816]	; (8001be8 <oled_config+0x33c>)
 80018b6:	685a      	ldr	r2, [r3, #4]
 80018b8:	4011      	ands	r1, r2
 80018ba:	4acc      	ldr	r2, [pc, #816]	; (8001bec <oled_config+0x340>)
 80018bc:	430a      	orrs	r2, r1
 80018be:	605a      	str	r2, [r3, #4]
 80018c0:	2202      	movs	r2, #2
 80018c2:	6999      	ldr	r1, [r3, #24]
 80018c4:	420a      	tst	r2, r1
 80018c6:	d0fc      	beq.n	80018c2 <oled_config+0x16>
 80018c8:	2200      	movs	r2, #0
 80018ca:	629a      	str	r2, [r3, #40]	; 0x28
 80018cc:	4bc5      	ldr	r3, [pc, #788]	; (8001be4 <oled_config+0x338>)
 80018ce:	3202      	adds	r2, #2
 80018d0:	6999      	ldr	r1, [r3, #24]
 80018d2:	420a      	tst	r2, r1
 80018d4:	d0fc      	beq.n	80018d0 <oled_config+0x24>
 80018d6:	22ae      	movs	r2, #174	; 0xae
 80018d8:	629a      	str	r2, [r3, #40]	; 0x28
 80018da:	4bc2      	ldr	r3, [pc, #776]	; (8001be4 <oled_config+0x338>)
 80018dc:	3a6e      	subs	r2, #110	; 0x6e
 80018de:	6999      	ldr	r1, [r3, #24]
 80018e0:	420a      	tst	r2, r1
 80018e2:	d1fc      	bne.n	80018de <oled_config+0x32>
 80018e4:	685a      	ldr	r2, [r3, #4]
 80018e6:	49c0      	ldr	r1, [pc, #768]	; (8001be8 <oled_config+0x33c>)
 80018e8:	4011      	ands	r1, r2
 80018ea:	4ac0      	ldr	r2, [pc, #768]	; (8001bec <oled_config+0x340>)
 80018ec:	430a      	orrs	r2, r1
 80018ee:	605a      	str	r2, [r3, #4]
 80018f0:	2202      	movs	r2, #2
 80018f2:	4bbc      	ldr	r3, [pc, #752]	; (8001be4 <oled_config+0x338>)
 80018f4:	6999      	ldr	r1, [r3, #24]
 80018f6:	420a      	tst	r2, r1
 80018f8:	d0fc      	beq.n	80018f4 <oled_config+0x48>
 80018fa:	2200      	movs	r2, #0
 80018fc:	629a      	str	r2, [r3, #40]	; 0x28
 80018fe:	4bb9      	ldr	r3, [pc, #740]	; (8001be4 <oled_config+0x338>)
 8001900:	3202      	adds	r2, #2
 8001902:	6999      	ldr	r1, [r3, #24]
 8001904:	420a      	tst	r2, r1
 8001906:	d0fc      	beq.n	8001902 <oled_config+0x56>
 8001908:	2220      	movs	r2, #32
 800190a:	629a      	str	r2, [r3, #40]	; 0x28
 800190c:	4bb5      	ldr	r3, [pc, #724]	; (8001be4 <oled_config+0x338>)
 800190e:	3220      	adds	r2, #32
 8001910:	6999      	ldr	r1, [r3, #24]
 8001912:	420a      	tst	r2, r1
 8001914:	d1fc      	bne.n	8001910 <oled_config+0x64>
 8001916:	685a      	ldr	r2, [r3, #4]
 8001918:	49b3      	ldr	r1, [pc, #716]	; (8001be8 <oled_config+0x33c>)
 800191a:	4011      	ands	r1, r2
 800191c:	4ab3      	ldr	r2, [pc, #716]	; (8001bec <oled_config+0x340>)
 800191e:	430a      	orrs	r2, r1
 8001920:	605a      	str	r2, [r3, #4]
 8001922:	2202      	movs	r2, #2
 8001924:	4baf      	ldr	r3, [pc, #700]	; (8001be4 <oled_config+0x338>)
 8001926:	6999      	ldr	r1, [r3, #24]
 8001928:	420a      	tst	r2, r1
 800192a:	d0fc      	beq.n	8001926 <oled_config+0x7a>
 800192c:	2200      	movs	r2, #0
 800192e:	629a      	str	r2, [r3, #40]	; 0x28
 8001930:	4bac      	ldr	r3, [pc, #688]	; (8001be4 <oled_config+0x338>)
 8001932:	3202      	adds	r2, #2
 8001934:	6999      	ldr	r1, [r3, #24]
 8001936:	420a      	tst	r2, r1
 8001938:	d0fc      	beq.n	8001934 <oled_config+0x88>
 800193a:	2210      	movs	r2, #16
 800193c:	629a      	str	r2, [r3, #40]	; 0x28
 800193e:	4ba9      	ldr	r3, [pc, #676]	; (8001be4 <oled_config+0x338>)
 8001940:	3230      	adds	r2, #48	; 0x30
 8001942:	6999      	ldr	r1, [r3, #24]
 8001944:	420a      	tst	r2, r1
 8001946:	d1fc      	bne.n	8001942 <oled_config+0x96>
 8001948:	685a      	ldr	r2, [r3, #4]
 800194a:	49a7      	ldr	r1, [pc, #668]	; (8001be8 <oled_config+0x33c>)
 800194c:	4011      	ands	r1, r2
 800194e:	4aa7      	ldr	r2, [pc, #668]	; (8001bec <oled_config+0x340>)
 8001950:	430a      	orrs	r2, r1
 8001952:	605a      	str	r2, [r3, #4]
 8001954:	2202      	movs	r2, #2
 8001956:	4ba3      	ldr	r3, [pc, #652]	; (8001be4 <oled_config+0x338>)
 8001958:	6999      	ldr	r1, [r3, #24]
 800195a:	420a      	tst	r2, r1
 800195c:	d0fc      	beq.n	8001958 <oled_config+0xac>
 800195e:	2200      	movs	r2, #0
 8001960:	629a      	str	r2, [r3, #40]	; 0x28
 8001962:	4ba0      	ldr	r3, [pc, #640]	; (8001be4 <oled_config+0x338>)
 8001964:	3202      	adds	r2, #2
 8001966:	6999      	ldr	r1, [r3, #24]
 8001968:	420a      	tst	r2, r1
 800196a:	d0fc      	beq.n	8001966 <oled_config+0xba>
 800196c:	22c8      	movs	r2, #200	; 0xc8
 800196e:	629a      	str	r2, [r3, #40]	; 0x28
 8001970:	4b9c      	ldr	r3, [pc, #624]	; (8001be4 <oled_config+0x338>)
 8001972:	3a88      	subs	r2, #136	; 0x88
 8001974:	6999      	ldr	r1, [r3, #24]
 8001976:	420a      	tst	r2, r1
 8001978:	d1fc      	bne.n	8001974 <oled_config+0xc8>
 800197a:	685a      	ldr	r2, [r3, #4]
 800197c:	499a      	ldr	r1, [pc, #616]	; (8001be8 <oled_config+0x33c>)
 800197e:	4011      	ands	r1, r2
 8001980:	4a9a      	ldr	r2, [pc, #616]	; (8001bec <oled_config+0x340>)
 8001982:	430a      	orrs	r2, r1
 8001984:	605a      	str	r2, [r3, #4]
 8001986:	2202      	movs	r2, #2
 8001988:	4b96      	ldr	r3, [pc, #600]	; (8001be4 <oled_config+0x338>)
 800198a:	6999      	ldr	r1, [r3, #24]
 800198c:	420a      	tst	r2, r1
 800198e:	d0fc      	beq.n	800198a <oled_config+0xde>
 8001990:	2200      	movs	r2, #0
 8001992:	629a      	str	r2, [r3, #40]	; 0x28
 8001994:	4b93      	ldr	r3, [pc, #588]	; (8001be4 <oled_config+0x338>)
 8001996:	3202      	adds	r2, #2
 8001998:	6999      	ldr	r1, [r3, #24]
 800199a:	420a      	tst	r2, r1
 800199c:	d0fc      	beq.n	8001998 <oled_config+0xec>
 800199e:	2240      	movs	r2, #64	; 0x40
 80019a0:	629a      	str	r2, [r3, #40]	; 0x28
 80019a2:	4b90      	ldr	r3, [pc, #576]	; (8001be4 <oled_config+0x338>)
 80019a4:	6999      	ldr	r1, [r3, #24]
 80019a6:	420a      	tst	r2, r1
 80019a8:	d1fc      	bne.n	80019a4 <oled_config+0xf8>
 80019aa:	685a      	ldr	r2, [r3, #4]
 80019ac:	498e      	ldr	r1, [pc, #568]	; (8001be8 <oled_config+0x33c>)
 80019ae:	4011      	ands	r1, r2
 80019b0:	4a8e      	ldr	r2, [pc, #568]	; (8001bec <oled_config+0x340>)
 80019b2:	430a      	orrs	r2, r1
 80019b4:	605a      	str	r2, [r3, #4]
 80019b6:	2202      	movs	r2, #2
 80019b8:	4b8a      	ldr	r3, [pc, #552]	; (8001be4 <oled_config+0x338>)
 80019ba:	6999      	ldr	r1, [r3, #24]
 80019bc:	420a      	tst	r2, r1
 80019be:	d0fc      	beq.n	80019ba <oled_config+0x10e>
 80019c0:	2200      	movs	r2, #0
 80019c2:	629a      	str	r2, [r3, #40]	; 0x28
 80019c4:	4b87      	ldr	r3, [pc, #540]	; (8001be4 <oled_config+0x338>)
 80019c6:	3202      	adds	r2, #2
 80019c8:	6999      	ldr	r1, [r3, #24]
 80019ca:	420a      	tst	r2, r1
 80019cc:	d0fc      	beq.n	80019c8 <oled_config+0x11c>
 80019ce:	2281      	movs	r2, #129	; 0x81
 80019d0:	629a      	str	r2, [r3, #40]	; 0x28
 80019d2:	4b84      	ldr	r3, [pc, #528]	; (8001be4 <oled_config+0x338>)
 80019d4:	3a41      	subs	r2, #65	; 0x41
 80019d6:	6999      	ldr	r1, [r3, #24]
 80019d8:	420a      	tst	r2, r1
 80019da:	d1fc      	bne.n	80019d6 <oled_config+0x12a>
 80019dc:	685a      	ldr	r2, [r3, #4]
 80019de:	4982      	ldr	r1, [pc, #520]	; (8001be8 <oled_config+0x33c>)
 80019e0:	4011      	ands	r1, r2
 80019e2:	4a82      	ldr	r2, [pc, #520]	; (8001bec <oled_config+0x340>)
 80019e4:	430a      	orrs	r2, r1
 80019e6:	605a      	str	r2, [r3, #4]
 80019e8:	2202      	movs	r2, #2
 80019ea:	4b7e      	ldr	r3, [pc, #504]	; (8001be4 <oled_config+0x338>)
 80019ec:	6999      	ldr	r1, [r3, #24]
 80019ee:	420a      	tst	r2, r1
 80019f0:	d0fc      	beq.n	80019ec <oled_config+0x140>
 80019f2:	2200      	movs	r2, #0
 80019f4:	629a      	str	r2, [r3, #40]	; 0x28
 80019f6:	4b7b      	ldr	r3, [pc, #492]	; (8001be4 <oled_config+0x338>)
 80019f8:	3202      	adds	r2, #2
 80019fa:	6999      	ldr	r1, [r3, #24]
 80019fc:	420a      	tst	r2, r1
 80019fe:	d0fc      	beq.n	80019fa <oled_config+0x14e>
 8001a00:	22ff      	movs	r2, #255	; 0xff
 8001a02:	629a      	str	r2, [r3, #40]	; 0x28
 8001a04:	4b77      	ldr	r3, [pc, #476]	; (8001be4 <oled_config+0x338>)
 8001a06:	3abf      	subs	r2, #191	; 0xbf
 8001a08:	6999      	ldr	r1, [r3, #24]
 8001a0a:	420a      	tst	r2, r1
 8001a0c:	d1fc      	bne.n	8001a08 <oled_config+0x15c>
 8001a0e:	685a      	ldr	r2, [r3, #4]
 8001a10:	4975      	ldr	r1, [pc, #468]	; (8001be8 <oled_config+0x33c>)
 8001a12:	4011      	ands	r1, r2
 8001a14:	4a75      	ldr	r2, [pc, #468]	; (8001bec <oled_config+0x340>)
 8001a16:	430a      	orrs	r2, r1
 8001a18:	605a      	str	r2, [r3, #4]
 8001a1a:	2202      	movs	r2, #2
 8001a1c:	4b71      	ldr	r3, [pc, #452]	; (8001be4 <oled_config+0x338>)
 8001a1e:	6999      	ldr	r1, [r3, #24]
 8001a20:	420a      	tst	r2, r1
 8001a22:	d0fc      	beq.n	8001a1e <oled_config+0x172>
 8001a24:	2200      	movs	r2, #0
 8001a26:	629a      	str	r2, [r3, #40]	; 0x28
 8001a28:	4b6e      	ldr	r3, [pc, #440]	; (8001be4 <oled_config+0x338>)
 8001a2a:	3202      	adds	r2, #2
 8001a2c:	6999      	ldr	r1, [r3, #24]
 8001a2e:	420a      	tst	r2, r1
 8001a30:	d0fc      	beq.n	8001a2c <oled_config+0x180>
 8001a32:	22a0      	movs	r2, #160	; 0xa0
 8001a34:	629a      	str	r2, [r3, #40]	; 0x28
 8001a36:	4b6b      	ldr	r3, [pc, #428]	; (8001be4 <oled_config+0x338>)
 8001a38:	3a60      	subs	r2, #96	; 0x60
 8001a3a:	6999      	ldr	r1, [r3, #24]
 8001a3c:	420a      	tst	r2, r1
 8001a3e:	d1fc      	bne.n	8001a3a <oled_config+0x18e>
 8001a40:	685a      	ldr	r2, [r3, #4]
 8001a42:	4969      	ldr	r1, [pc, #420]	; (8001be8 <oled_config+0x33c>)
 8001a44:	4011      	ands	r1, r2
 8001a46:	4a69      	ldr	r2, [pc, #420]	; (8001bec <oled_config+0x340>)
 8001a48:	430a      	orrs	r2, r1
 8001a4a:	605a      	str	r2, [r3, #4]
 8001a4c:	2202      	movs	r2, #2
 8001a4e:	4b65      	ldr	r3, [pc, #404]	; (8001be4 <oled_config+0x338>)
 8001a50:	6999      	ldr	r1, [r3, #24]
 8001a52:	420a      	tst	r2, r1
 8001a54:	d0fc      	beq.n	8001a50 <oled_config+0x1a4>
 8001a56:	2200      	movs	r2, #0
 8001a58:	629a      	str	r2, [r3, #40]	; 0x28
 8001a5a:	4b62      	ldr	r3, [pc, #392]	; (8001be4 <oled_config+0x338>)
 8001a5c:	3202      	adds	r2, #2
 8001a5e:	6999      	ldr	r1, [r3, #24]
 8001a60:	420a      	tst	r2, r1
 8001a62:	d0fc      	beq.n	8001a5e <oled_config+0x1b2>
 8001a64:	22a6      	movs	r2, #166	; 0xa6
 8001a66:	629a      	str	r2, [r3, #40]	; 0x28
 8001a68:	4b5e      	ldr	r3, [pc, #376]	; (8001be4 <oled_config+0x338>)
 8001a6a:	3a66      	subs	r2, #102	; 0x66
 8001a6c:	6999      	ldr	r1, [r3, #24]
 8001a6e:	420a      	tst	r2, r1
 8001a70:	d1fc      	bne.n	8001a6c <oled_config+0x1c0>
 8001a72:	685a      	ldr	r2, [r3, #4]
 8001a74:	495c      	ldr	r1, [pc, #368]	; (8001be8 <oled_config+0x33c>)
 8001a76:	4011      	ands	r1, r2
 8001a78:	4a5c      	ldr	r2, [pc, #368]	; (8001bec <oled_config+0x340>)
 8001a7a:	430a      	orrs	r2, r1
 8001a7c:	605a      	str	r2, [r3, #4]
 8001a7e:	2202      	movs	r2, #2
 8001a80:	4b58      	ldr	r3, [pc, #352]	; (8001be4 <oled_config+0x338>)
 8001a82:	6999      	ldr	r1, [r3, #24]
 8001a84:	420a      	tst	r2, r1
 8001a86:	d0fc      	beq.n	8001a82 <oled_config+0x1d6>
 8001a88:	2200      	movs	r2, #0
 8001a8a:	629a      	str	r2, [r3, #40]	; 0x28
 8001a8c:	4b55      	ldr	r3, [pc, #340]	; (8001be4 <oled_config+0x338>)
 8001a8e:	3202      	adds	r2, #2
 8001a90:	6999      	ldr	r1, [r3, #24]
 8001a92:	420a      	tst	r2, r1
 8001a94:	d0fc      	beq.n	8001a90 <oled_config+0x1e4>
 8001a96:	22a8      	movs	r2, #168	; 0xa8
 8001a98:	629a      	str	r2, [r3, #40]	; 0x28
 8001a9a:	4b52      	ldr	r3, [pc, #328]	; (8001be4 <oled_config+0x338>)
 8001a9c:	3a68      	subs	r2, #104	; 0x68
 8001a9e:	6999      	ldr	r1, [r3, #24]
 8001aa0:	420a      	tst	r2, r1
 8001aa2:	d1fc      	bne.n	8001a9e <oled_config+0x1f2>
 8001aa4:	685a      	ldr	r2, [r3, #4]
 8001aa6:	4950      	ldr	r1, [pc, #320]	; (8001be8 <oled_config+0x33c>)
 8001aa8:	4011      	ands	r1, r2
 8001aaa:	4a50      	ldr	r2, [pc, #320]	; (8001bec <oled_config+0x340>)
 8001aac:	430a      	orrs	r2, r1
 8001aae:	605a      	str	r2, [r3, #4]
 8001ab0:	2202      	movs	r2, #2
 8001ab2:	4b4c      	ldr	r3, [pc, #304]	; (8001be4 <oled_config+0x338>)
 8001ab4:	6999      	ldr	r1, [r3, #24]
 8001ab6:	420a      	tst	r2, r1
 8001ab8:	d0fc      	beq.n	8001ab4 <oled_config+0x208>
 8001aba:	2200      	movs	r2, #0
 8001abc:	629a      	str	r2, [r3, #40]	; 0x28
 8001abe:	4b49      	ldr	r3, [pc, #292]	; (8001be4 <oled_config+0x338>)
 8001ac0:	3202      	adds	r2, #2
 8001ac2:	6999      	ldr	r1, [r3, #24]
 8001ac4:	420a      	tst	r2, r1
 8001ac6:	d0fc      	beq.n	8001ac2 <oled_config+0x216>
 8001ac8:	223f      	movs	r2, #63	; 0x3f
 8001aca:	629a      	str	r2, [r3, #40]	; 0x28
 8001acc:	4b45      	ldr	r3, [pc, #276]	; (8001be4 <oled_config+0x338>)
 8001ace:	3201      	adds	r2, #1
 8001ad0:	6999      	ldr	r1, [r3, #24]
 8001ad2:	420a      	tst	r2, r1
 8001ad4:	d1fc      	bne.n	8001ad0 <oled_config+0x224>
 8001ad6:	685a      	ldr	r2, [r3, #4]
 8001ad8:	4943      	ldr	r1, [pc, #268]	; (8001be8 <oled_config+0x33c>)
 8001ada:	4011      	ands	r1, r2
 8001adc:	4a43      	ldr	r2, [pc, #268]	; (8001bec <oled_config+0x340>)
 8001ade:	430a      	orrs	r2, r1
 8001ae0:	605a      	str	r2, [r3, #4]
 8001ae2:	2202      	movs	r2, #2
 8001ae4:	4b3f      	ldr	r3, [pc, #252]	; (8001be4 <oled_config+0x338>)
 8001ae6:	6999      	ldr	r1, [r3, #24]
 8001ae8:	420a      	tst	r2, r1
 8001aea:	d0fc      	beq.n	8001ae6 <oled_config+0x23a>
 8001aec:	2200      	movs	r2, #0
 8001aee:	629a      	str	r2, [r3, #40]	; 0x28
 8001af0:	4b3c      	ldr	r3, [pc, #240]	; (8001be4 <oled_config+0x338>)
 8001af2:	3202      	adds	r2, #2
 8001af4:	6999      	ldr	r1, [r3, #24]
 8001af6:	420a      	tst	r2, r1
 8001af8:	d0fc      	beq.n	8001af4 <oled_config+0x248>
 8001afa:	22a4      	movs	r2, #164	; 0xa4
 8001afc:	629a      	str	r2, [r3, #40]	; 0x28
 8001afe:	4b39      	ldr	r3, [pc, #228]	; (8001be4 <oled_config+0x338>)
 8001b00:	3a64      	subs	r2, #100	; 0x64
 8001b02:	6999      	ldr	r1, [r3, #24]
 8001b04:	420a      	tst	r2, r1
 8001b06:	d1fc      	bne.n	8001b02 <oled_config+0x256>
 8001b08:	685a      	ldr	r2, [r3, #4]
 8001b0a:	4937      	ldr	r1, [pc, #220]	; (8001be8 <oled_config+0x33c>)
 8001b0c:	4011      	ands	r1, r2
 8001b0e:	4a37      	ldr	r2, [pc, #220]	; (8001bec <oled_config+0x340>)
 8001b10:	430a      	orrs	r2, r1
 8001b12:	605a      	str	r2, [r3, #4]
 8001b14:	2202      	movs	r2, #2
 8001b16:	4b33      	ldr	r3, [pc, #204]	; (8001be4 <oled_config+0x338>)
 8001b18:	6999      	ldr	r1, [r3, #24]
 8001b1a:	420a      	tst	r2, r1
 8001b1c:	d0fc      	beq.n	8001b18 <oled_config+0x26c>
 8001b1e:	2200      	movs	r2, #0
 8001b20:	629a      	str	r2, [r3, #40]	; 0x28
 8001b22:	4b30      	ldr	r3, [pc, #192]	; (8001be4 <oled_config+0x338>)
 8001b24:	3202      	adds	r2, #2
 8001b26:	6999      	ldr	r1, [r3, #24]
 8001b28:	420a      	tst	r2, r1
 8001b2a:	d0fc      	beq.n	8001b26 <oled_config+0x27a>
 8001b2c:	22d3      	movs	r2, #211	; 0xd3
 8001b2e:	629a      	str	r2, [r3, #40]	; 0x28
 8001b30:	4b2c      	ldr	r3, [pc, #176]	; (8001be4 <oled_config+0x338>)
 8001b32:	3a93      	subs	r2, #147	; 0x93
 8001b34:	6999      	ldr	r1, [r3, #24]
 8001b36:	420a      	tst	r2, r1
 8001b38:	d1fc      	bne.n	8001b34 <oled_config+0x288>
 8001b3a:	685a      	ldr	r2, [r3, #4]
 8001b3c:	492a      	ldr	r1, [pc, #168]	; (8001be8 <oled_config+0x33c>)
 8001b3e:	4011      	ands	r1, r2
 8001b40:	4a2a      	ldr	r2, [pc, #168]	; (8001bec <oled_config+0x340>)
 8001b42:	430a      	orrs	r2, r1
 8001b44:	605a      	str	r2, [r3, #4]
 8001b46:	2202      	movs	r2, #2
 8001b48:	4b26      	ldr	r3, [pc, #152]	; (8001be4 <oled_config+0x338>)
 8001b4a:	6999      	ldr	r1, [r3, #24]
 8001b4c:	420a      	tst	r2, r1
 8001b4e:	d0fc      	beq.n	8001b4a <oled_config+0x29e>
 8001b50:	2200      	movs	r2, #0
 8001b52:	629a      	str	r2, [r3, #40]	; 0x28
 8001b54:	4b23      	ldr	r3, [pc, #140]	; (8001be4 <oled_config+0x338>)
 8001b56:	3202      	adds	r2, #2
 8001b58:	6999      	ldr	r1, [r3, #24]
 8001b5a:	420a      	tst	r2, r1
 8001b5c:	d0fc      	beq.n	8001b58 <oled_config+0x2ac>
 8001b5e:	2200      	movs	r2, #0
 8001b60:	629a      	str	r2, [r3, #40]	; 0x28
 8001b62:	4b20      	ldr	r3, [pc, #128]	; (8001be4 <oled_config+0x338>)
 8001b64:	3240      	adds	r2, #64	; 0x40
 8001b66:	6999      	ldr	r1, [r3, #24]
 8001b68:	420a      	tst	r2, r1
 8001b6a:	d1fc      	bne.n	8001b66 <oled_config+0x2ba>
 8001b6c:	685a      	ldr	r2, [r3, #4]
 8001b6e:	491e      	ldr	r1, [pc, #120]	; (8001be8 <oled_config+0x33c>)
 8001b70:	4011      	ands	r1, r2
 8001b72:	4a1e      	ldr	r2, [pc, #120]	; (8001bec <oled_config+0x340>)
 8001b74:	430a      	orrs	r2, r1
 8001b76:	605a      	str	r2, [r3, #4]
 8001b78:	2202      	movs	r2, #2
 8001b7a:	4b1a      	ldr	r3, [pc, #104]	; (8001be4 <oled_config+0x338>)
 8001b7c:	6999      	ldr	r1, [r3, #24]
 8001b7e:	420a      	tst	r2, r1
 8001b80:	d0fc      	beq.n	8001b7c <oled_config+0x2d0>
 8001b82:	2200      	movs	r2, #0
 8001b84:	629a      	str	r2, [r3, #40]	; 0x28
 8001b86:	4b17      	ldr	r3, [pc, #92]	; (8001be4 <oled_config+0x338>)
 8001b88:	3202      	adds	r2, #2
 8001b8a:	6999      	ldr	r1, [r3, #24]
 8001b8c:	420a      	tst	r2, r1
 8001b8e:	d0fc      	beq.n	8001b8a <oled_config+0x2de>
 8001b90:	22d5      	movs	r2, #213	; 0xd5
 8001b92:	629a      	str	r2, [r3, #40]	; 0x28
 8001b94:	4b13      	ldr	r3, [pc, #76]	; (8001be4 <oled_config+0x338>)
 8001b96:	3a95      	subs	r2, #149	; 0x95
 8001b98:	6999      	ldr	r1, [r3, #24]
 8001b9a:	420a      	tst	r2, r1
 8001b9c:	d1fc      	bne.n	8001b98 <oled_config+0x2ec>
 8001b9e:	685a      	ldr	r2, [r3, #4]
 8001ba0:	4911      	ldr	r1, [pc, #68]	; (8001be8 <oled_config+0x33c>)
 8001ba2:	4011      	ands	r1, r2
 8001ba4:	4a11      	ldr	r2, [pc, #68]	; (8001bec <oled_config+0x340>)
 8001ba6:	430a      	orrs	r2, r1
 8001ba8:	605a      	str	r2, [r3, #4]
 8001baa:	2202      	movs	r2, #2
 8001bac:	4b0d      	ldr	r3, [pc, #52]	; (8001be4 <oled_config+0x338>)
 8001bae:	6999      	ldr	r1, [r3, #24]
 8001bb0:	420a      	tst	r2, r1
 8001bb2:	d0fc      	beq.n	8001bae <oled_config+0x302>
 8001bb4:	2200      	movs	r2, #0
 8001bb6:	629a      	str	r2, [r3, #40]	; 0x28
 8001bb8:	4b0a      	ldr	r3, [pc, #40]	; (8001be4 <oled_config+0x338>)
 8001bba:	3202      	adds	r2, #2
 8001bbc:	6999      	ldr	r1, [r3, #24]
 8001bbe:	420a      	tst	r2, r1
 8001bc0:	d0fc      	beq.n	8001bbc <oled_config+0x310>
 8001bc2:	22f0      	movs	r2, #240	; 0xf0
 8001bc4:	629a      	str	r2, [r3, #40]	; 0x28
 8001bc6:	4b07      	ldr	r3, [pc, #28]	; (8001be4 <oled_config+0x338>)
 8001bc8:	3ab0      	subs	r2, #176	; 0xb0
 8001bca:	6999      	ldr	r1, [r3, #24]
 8001bcc:	420a      	tst	r2, r1
 8001bce:	d1fc      	bne.n	8001bca <oled_config+0x31e>
 8001bd0:	685a      	ldr	r2, [r3, #4]
 8001bd2:	4905      	ldr	r1, [pc, #20]	; (8001be8 <oled_config+0x33c>)
 8001bd4:	4011      	ands	r1, r2
 8001bd6:	4a05      	ldr	r2, [pc, #20]	; (8001bec <oled_config+0x340>)
 8001bd8:	430a      	orrs	r2, r1
 8001bda:	605a      	str	r2, [r3, #4]
 8001bdc:	2202      	movs	r2, #2
 8001bde:	4b01      	ldr	r3, [pc, #4]	; (8001be4 <oled_config+0x338>)
 8001be0:	e006      	b.n	8001bf0 <oled_config+0x344>
 8001be2:	46c0      	nop			; (mov r8, r8)
 8001be4:	40005800 	.word	0x40005800
 8001be8:	fc008000 	.word	0xfc008000
 8001bec:	02022078 	.word	0x02022078
 8001bf0:	6999      	ldr	r1, [r3, #24]
 8001bf2:	420a      	tst	r2, r1
 8001bf4:	d0fc      	beq.n	8001bf0 <oled_config+0x344>
 8001bf6:	2200      	movs	r2, #0
 8001bf8:	629a      	str	r2, [r3, #40]	; 0x28
 8001bfa:	4b3c      	ldr	r3, [pc, #240]	; (8001cec <oled_config+0x440>)
 8001bfc:	3202      	adds	r2, #2
 8001bfe:	6999      	ldr	r1, [r3, #24]
 8001c00:	420a      	tst	r2, r1
 8001c02:	d0fc      	beq.n	8001bfe <oled_config+0x352>
 8001c04:	22da      	movs	r2, #218	; 0xda
 8001c06:	629a      	str	r2, [r3, #40]	; 0x28
 8001c08:	4b38      	ldr	r3, [pc, #224]	; (8001cec <oled_config+0x440>)
 8001c0a:	3a9a      	subs	r2, #154	; 0x9a
 8001c0c:	6999      	ldr	r1, [r3, #24]
 8001c0e:	420a      	tst	r2, r1
 8001c10:	d1fc      	bne.n	8001c0c <oled_config+0x360>
 8001c12:	685a      	ldr	r2, [r3, #4]
 8001c14:	4936      	ldr	r1, [pc, #216]	; (8001cf0 <oled_config+0x444>)
 8001c16:	4011      	ands	r1, r2
 8001c18:	4a36      	ldr	r2, [pc, #216]	; (8001cf4 <oled_config+0x448>)
 8001c1a:	430a      	orrs	r2, r1
 8001c1c:	605a      	str	r2, [r3, #4]
 8001c1e:	2202      	movs	r2, #2
 8001c20:	4b32      	ldr	r3, [pc, #200]	; (8001cec <oled_config+0x440>)
 8001c22:	6999      	ldr	r1, [r3, #24]
 8001c24:	420a      	tst	r2, r1
 8001c26:	d0fc      	beq.n	8001c22 <oled_config+0x376>
 8001c28:	2200      	movs	r2, #0
 8001c2a:	629a      	str	r2, [r3, #40]	; 0x28
 8001c2c:	4b2f      	ldr	r3, [pc, #188]	; (8001cec <oled_config+0x440>)
 8001c2e:	3202      	adds	r2, #2
 8001c30:	6999      	ldr	r1, [r3, #24]
 8001c32:	420a      	tst	r2, r1
 8001c34:	d0fc      	beq.n	8001c30 <oled_config+0x384>
 8001c36:	2212      	movs	r2, #18
 8001c38:	629a      	str	r2, [r3, #40]	; 0x28
 8001c3a:	4b2c      	ldr	r3, [pc, #176]	; (8001cec <oled_config+0x440>)
 8001c3c:	322e      	adds	r2, #46	; 0x2e
 8001c3e:	6999      	ldr	r1, [r3, #24]
 8001c40:	420a      	tst	r2, r1
 8001c42:	d1fc      	bne.n	8001c3e <oled_config+0x392>
 8001c44:	685a      	ldr	r2, [r3, #4]
 8001c46:	492a      	ldr	r1, [pc, #168]	; (8001cf0 <oled_config+0x444>)
 8001c48:	4011      	ands	r1, r2
 8001c4a:	4a2a      	ldr	r2, [pc, #168]	; (8001cf4 <oled_config+0x448>)
 8001c4c:	430a      	orrs	r2, r1
 8001c4e:	605a      	str	r2, [r3, #4]
 8001c50:	2202      	movs	r2, #2
 8001c52:	4b26      	ldr	r3, [pc, #152]	; (8001cec <oled_config+0x440>)
 8001c54:	6999      	ldr	r1, [r3, #24]
 8001c56:	420a      	tst	r2, r1
 8001c58:	d0fc      	beq.n	8001c54 <oled_config+0x3a8>
 8001c5a:	2200      	movs	r2, #0
 8001c5c:	629a      	str	r2, [r3, #40]	; 0x28
 8001c5e:	4b23      	ldr	r3, [pc, #140]	; (8001cec <oled_config+0x440>)
 8001c60:	3202      	adds	r2, #2
 8001c62:	6999      	ldr	r1, [r3, #24]
 8001c64:	420a      	tst	r2, r1
 8001c66:	d0fc      	beq.n	8001c62 <oled_config+0x3b6>
 8001c68:	228d      	movs	r2, #141	; 0x8d
 8001c6a:	629a      	str	r2, [r3, #40]	; 0x28
 8001c6c:	4b1f      	ldr	r3, [pc, #124]	; (8001cec <oled_config+0x440>)
 8001c6e:	3a4d      	subs	r2, #77	; 0x4d
 8001c70:	6999      	ldr	r1, [r3, #24]
 8001c72:	420a      	tst	r2, r1
 8001c74:	d1fc      	bne.n	8001c70 <oled_config+0x3c4>
 8001c76:	685a      	ldr	r2, [r3, #4]
 8001c78:	491d      	ldr	r1, [pc, #116]	; (8001cf0 <oled_config+0x444>)
 8001c7a:	4011      	ands	r1, r2
 8001c7c:	4a1d      	ldr	r2, [pc, #116]	; (8001cf4 <oled_config+0x448>)
 8001c7e:	430a      	orrs	r2, r1
 8001c80:	605a      	str	r2, [r3, #4]
 8001c82:	2202      	movs	r2, #2
 8001c84:	4b19      	ldr	r3, [pc, #100]	; (8001cec <oled_config+0x440>)
 8001c86:	6999      	ldr	r1, [r3, #24]
 8001c88:	420a      	tst	r2, r1
 8001c8a:	d0fc      	beq.n	8001c86 <oled_config+0x3da>
 8001c8c:	2200      	movs	r2, #0
 8001c8e:	629a      	str	r2, [r3, #40]	; 0x28
 8001c90:	4b16      	ldr	r3, [pc, #88]	; (8001cec <oled_config+0x440>)
 8001c92:	3202      	adds	r2, #2
 8001c94:	6999      	ldr	r1, [r3, #24]
 8001c96:	420a      	tst	r2, r1
 8001c98:	d0fc      	beq.n	8001c94 <oled_config+0x3e8>
 8001c9a:	2214      	movs	r2, #20
 8001c9c:	629a      	str	r2, [r3, #40]	; 0x28
 8001c9e:	4b13      	ldr	r3, [pc, #76]	; (8001cec <oled_config+0x440>)
 8001ca0:	322c      	adds	r2, #44	; 0x2c
 8001ca2:	6999      	ldr	r1, [r3, #24]
 8001ca4:	420a      	tst	r2, r1
 8001ca6:	d1fc      	bne.n	8001ca2 <oled_config+0x3f6>
 8001ca8:	685a      	ldr	r2, [r3, #4]
 8001caa:	4911      	ldr	r1, [pc, #68]	; (8001cf0 <oled_config+0x444>)
 8001cac:	4011      	ands	r1, r2
 8001cae:	4a11      	ldr	r2, [pc, #68]	; (8001cf4 <oled_config+0x448>)
 8001cb0:	430a      	orrs	r2, r1
 8001cb2:	605a      	str	r2, [r3, #4]
 8001cb4:	2202      	movs	r2, #2
 8001cb6:	4b0d      	ldr	r3, [pc, #52]	; (8001cec <oled_config+0x440>)
 8001cb8:	6999      	ldr	r1, [r3, #24]
 8001cba:	420a      	tst	r2, r1
 8001cbc:	d0fc      	beq.n	8001cb8 <oled_config+0x40c>
 8001cbe:	2200      	movs	r2, #0
 8001cc0:	629a      	str	r2, [r3, #40]	; 0x28
 8001cc2:	4b0a      	ldr	r3, [pc, #40]	; (8001cec <oled_config+0x440>)
 8001cc4:	3202      	adds	r2, #2
 8001cc6:	6999      	ldr	r1, [r3, #24]
 8001cc8:	420a      	tst	r2, r1
 8001cca:	d0fc      	beq.n	8001cc6 <oled_config+0x41a>
 8001ccc:	22af      	movs	r2, #175	; 0xaf
 8001cce:	629a      	str	r2, [r3, #40]	; 0x28
 8001cd0:	2340      	movs	r3, #64	; 0x40
 8001cd2:	4a06      	ldr	r2, [pc, #24]	; (8001cec <oled_config+0x440>)
 8001cd4:	6991      	ldr	r1, [r2, #24]
 8001cd6:	420b      	tst	r3, r1
 8001cd8:	d1fc      	bne.n	8001cd4 <oled_config+0x428>
 8001cda:	2280      	movs	r2, #128	; 0x80
 8001cdc:	2100      	movs	r1, #0
 8001cde:	00d2      	lsls	r2, r2, #3
 8001ce0:	4805      	ldr	r0, [pc, #20]	; (8001cf8 <oled_config+0x44c>)
 8001ce2:	f000 fad7 	bl	8002294 <memset>
 8001ce6:	f7ff fbed 	bl	80014c4 <oledUpdate>
 8001cea:	bd10      	pop	{r4, pc}
 8001cec:	40005800 	.word	0x40005800
 8001cf0:	fc008000 	.word	0xfc008000
 8001cf4:	02022078 	.word	0x02022078
 8001cf8:	20000834 	.word	0x20000834

08001cfc <NMI_Handler>:
 8001cfc:	4770      	bx	lr
 8001cfe:	46c0      	nop			; (mov r8, r8)

08001d00 <HardFault_Handler>:
 8001d00:	e7fe      	b.n	8001d00 <HardFault_Handler>
 8001d02:	46c0      	nop			; (mov r8, r8)

08001d04 <SVC_Handler>:
 8001d04:	4770      	bx	lr
 8001d06:	46c0      	nop			; (mov r8, r8)

08001d08 <PendSV_Handler>:
 8001d08:	4770      	bx	lr
 8001d0a:	46c0      	nop			; (mov r8, r8)

08001d0c <xvprintf>:
 8001d0c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001d0e:	4657      	mov	r7, sl
 8001d10:	464e      	mov	r6, r9
 8001d12:	46de      	mov	lr, fp
 8001d14:	4645      	mov	r5, r8
 8001d16:	4bbb      	ldr	r3, [pc, #748]	; (8002004 <xvprintf+0x2f8>)
 8001d18:	b5e0      	push	{r5, r6, r7, lr}
 8001d1a:	469a      	mov	sl, r3
 8001d1c:	0006      	movs	r6, r0
 8001d1e:	b08b      	sub	sp, #44	; 0x2c
 8001d20:	9101      	str	r1, [sp, #4]
 8001d22:	7834      	ldrb	r4, [r6, #0]
 8001d24:	1c75      	adds	r5, r6, #1
 8001d26:	2c00      	cmp	r4, #0
 8001d28:	d011      	beq.n	8001d4e <xvprintf+0x42>
 8001d2a:	2c25      	cmp	r4, #37	; 0x25
 8001d2c:	d016      	beq.n	8001d5c <xvprintf+0x50>
 8001d2e:	4fb5      	ldr	r7, [pc, #724]	; (8002004 <xvprintf+0x2f8>)
 8001d30:	683b      	ldr	r3, [r7, #0]
 8001d32:	2c0a      	cmp	r4, #10
 8001d34:	d100      	bne.n	8001d38 <xvprintf+0x2c>
 8001d36:	e1be      	b.n	80020b6 <xvprintf+0x3aa>
 8001d38:	2b00      	cmp	r3, #0
 8001d3a:	d100      	bne.n	8001d3e <xvprintf+0x32>
 8001d3c:	e19a      	b.n	8002074 <xvprintf+0x368>
 8001d3e:	1c5a      	adds	r2, r3, #1
 8001d40:	603a      	str	r2, [r7, #0]
 8001d42:	701c      	strb	r4, [r3, #0]
 8001d44:	002e      	movs	r6, r5
 8001d46:	7834      	ldrb	r4, [r6, #0]
 8001d48:	1c75      	adds	r5, r6, #1
 8001d4a:	2c00      	cmp	r4, #0
 8001d4c:	d1ed      	bne.n	8001d2a <xvprintf+0x1e>
 8001d4e:	b00b      	add	sp, #44	; 0x2c
 8001d50:	bc3c      	pop	{r2, r3, r4, r5}
 8001d52:	4690      	mov	r8, r2
 8001d54:	4699      	mov	r9, r3
 8001d56:	46a2      	mov	sl, r4
 8001d58:	46ab      	mov	fp, r5
 8001d5a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001d5c:	7874      	ldrb	r4, [r6, #1]
 8001d5e:	2c30      	cmp	r4, #48	; 0x30
 8001d60:	d100      	bne.n	8001d64 <xvprintf+0x58>
 8001d62:	e199      	b.n	8002098 <xvprintf+0x38c>
 8001d64:	2c2d      	cmp	r4, #45	; 0x2d
 8001d66:	d100      	bne.n	8001d6a <xvprintf+0x5e>
 8001d68:	e1c6      	b.n	80020f8 <xvprintf+0x3ec>
 8001d6a:	2300      	movs	r3, #0
 8001d6c:	2104      	movs	r1, #4
 8001d6e:	1cb2      	adds	r2, r6, #2
 8001d70:	9302      	str	r3, [sp, #8]
 8001d72:	9300      	str	r3, [sp, #0]
 8001d74:	0023      	movs	r3, r4
 8001d76:	3b30      	subs	r3, #48	; 0x30
 8001d78:	2b09      	cmp	r3, #9
 8001d7a:	d900      	bls.n	8001d7e <xvprintf+0x72>
 8001d7c:	e198      	b.n	80020b0 <xvprintf+0x3a4>
 8001d7e:	2500      	movs	r5, #0
 8001d80:	0023      	movs	r3, r4
 8001d82:	00ac      	lsls	r4, r5, #2
 8001d84:	1964      	adds	r4, r4, r5
 8001d86:	0064      	lsls	r4, r4, #1
 8001d88:	18e4      	adds	r4, r4, r3
 8001d8a:	7813      	ldrb	r3, [r2, #0]
 8001d8c:	3c30      	subs	r4, #48	; 0x30
 8001d8e:	0018      	movs	r0, r3
 8001d90:	1c56      	adds	r6, r2, #1
 8001d92:	3830      	subs	r0, #48	; 0x30
 8001d94:	0025      	movs	r5, r4
 8001d96:	0032      	movs	r2, r6
 8001d98:	2809      	cmp	r0, #9
 8001d9a:	d9f2      	bls.n	8001d82 <xvprintf+0x76>
 8001d9c:	001c      	movs	r4, r3
 8001d9e:	2320      	movs	r3, #32
 8001da0:	0022      	movs	r2, r4
 8001da2:	439a      	bics	r2, r3
 8001da4:	0013      	movs	r3, r2
 8001da6:	2200      	movs	r2, #0
 8001da8:	2b4c      	cmp	r3, #76	; 0x4c
 8001daa:	d103      	bne.n	8001db4 <xvprintf+0xa8>
 8001dac:	7834      	ldrb	r4, [r6, #0]
 8001dae:	9100      	str	r1, [sp, #0]
 8001db0:	3601      	adds	r6, #1
 8001db2:	3204      	adds	r2, #4
 8001db4:	2c00      	cmp	r4, #0
 8001db6:	d0ca      	beq.n	8001d4e <xvprintf+0x42>
 8001db8:	2c60      	cmp	r4, #96	; 0x60
 8001dba:	d800      	bhi.n	8001dbe <xvprintf+0xb2>
 8001dbc:	e163      	b.n	8002086 <xvprintf+0x37a>
 8001dbe:	0021      	movs	r1, r4
 8001dc0:	3920      	subs	r1, #32
 8001dc2:	b2c9      	uxtb	r1, r1
 8001dc4:	000b      	movs	r3, r1
 8001dc6:	3b42      	subs	r3, #66	; 0x42
 8001dc8:	b2db      	uxtb	r3, r3
 8001dca:	2b16      	cmp	r3, #22
 8001dcc:	d900      	bls.n	8001dd0 <xvprintf+0xc4>
 8001dce:	e1dc      	b.n	800218a <xvprintf+0x47e>
 8001dd0:	488d      	ldr	r0, [pc, #564]	; (8002008 <xvprintf+0x2fc>)
 8001dd2:	009b      	lsls	r3, r3, #2
 8001dd4:	58c3      	ldr	r3, [r0, r3]
 8001dd6:	469f      	mov	pc, r3
 8001dd8:	9b01      	ldr	r3, [sp, #4]
 8001dda:	1d18      	adds	r0, r3, #4
 8001ddc:	2310      	movs	r3, #16
 8001dde:	4699      	mov	r9, r3
 8001de0:	9b01      	ldr	r3, [sp, #4]
 8001de2:	681f      	ldr	r7, [r3, #0]
 8001de4:	2300      	movs	r3, #0
 8001de6:	9001      	str	r0, [sp, #4]
 8001de8:	9303      	str	r3, [sp, #12]
 8001dea:	2307      	movs	r3, #7
 8001dec:	2c78      	cmp	r4, #120	; 0x78
 8001dee:	d100      	bne.n	8001df2 <xvprintf+0xe6>
 8001df0:	2327      	movs	r3, #39	; 0x27
 8001df2:	b2db      	uxtb	r3, r3
 8001df4:	4698      	mov	r8, r3
 8001df6:	2300      	movs	r3, #0
 8001df8:	464c      	mov	r4, r9
 8001dfa:	46b1      	mov	r9, r6
 8001dfc:	4646      	mov	r6, r8
 8001dfe:	46a8      	mov	r8, r5
 8001e00:	001d      	movs	r5, r3
 8001e02:	e004      	b.n	8001e0e <xvprintf+0x102>
 8001e04:	0007      	movs	r7, r0
 8001e06:	2a18      	cmp	r2, #24
 8001e08:	d100      	bne.n	8001e0c <xvprintf+0x100>
 8001e0a:	e16f      	b.n	80020ec <xvprintf+0x3e0>
 8001e0c:	0015      	movs	r5, r2
 8001e0e:	0021      	movs	r1, r4
 8001e10:	0038      	movs	r0, r7
 8001e12:	f7fe f9ff 	bl	8000214 <__aeabi_uidivmod>
 8001e16:	b2cb      	uxtb	r3, r1
 8001e18:	2909      	cmp	r1, #9
 8001e1a:	d901      	bls.n	8001e20 <xvprintf+0x114>
 8001e1c:	18f3      	adds	r3, r6, r3
 8001e1e:	b2db      	uxtb	r3, r3
 8001e20:	a904      	add	r1, sp, #16
 8001e22:	1c6a      	adds	r2, r5, #1
 8001e24:	3330      	adds	r3, #48	; 0x30
 8001e26:	3901      	subs	r1, #1
 8001e28:	548b      	strb	r3, [r1, r2]
 8001e2a:	42a7      	cmp	r7, r4
 8001e2c:	d2ea      	bcs.n	8001e04 <xvprintf+0xf8>
 8001e2e:	46ab      	mov	fp, r5
 8001e30:	0014      	movs	r4, r2
 8001e32:	4645      	mov	r5, r8
 8001e34:	464e      	mov	r6, r9
 8001e36:	ab04      	add	r3, sp, #16
 8001e38:	4698      	mov	r8, r3
 8001e3a:	9b03      	ldr	r3, [sp, #12]
 8001e3c:	2b00      	cmp	r3, #0
 8001e3e:	d004      	beq.n	8001e4a <xvprintf+0x13e>
 8001e40:	232d      	movs	r3, #45	; 0x2d
 8001e42:	4642      	mov	r2, r8
 8001e44:	5513      	strb	r3, [r2, r4]
 8001e46:	465c      	mov	r4, fp
 8001e48:	3402      	adds	r4, #2
 8001e4a:	2301      	movs	r3, #1
 8001e4c:	9a00      	ldr	r2, [sp, #0]
 8001e4e:	4013      	ands	r3, r2
 8001e50:	220f      	movs	r2, #15
 8001e52:	3b01      	subs	r3, #1
 8001e54:	4393      	bics	r3, r2
 8001e56:	4699      	mov	r9, r3
 8001e58:	2330      	movs	r3, #48	; 0x30
 8001e5a:	469c      	mov	ip, r3
 8001e5c:	4653      	mov	r3, sl
 8001e5e:	9a02      	ldr	r2, [sp, #8]
 8001e60:	44e1      	add	r9, ip
 8001e62:	681b      	ldr	r3, [r3, #0]
 8001e64:	2a00      	cmp	r2, #0
 8001e66:	d000      	beq.n	8001e6a <xvprintf+0x15e>
 8001e68:	e1af      	b.n	80021ca <xvprintf+0x4be>
 8001e6a:	1c67      	adds	r7, r4, #1
 8001e6c:	42ac      	cmp	r4, r5
 8001e6e:	d300      	bcc.n	8001e72 <xvprintf+0x166>
 8001e70:	e1ad      	b.n	80021ce <xvprintf+0x4c2>
 8001e72:	1c6a      	adds	r2, r5, #1
 8001e74:	9200      	str	r2, [sp, #0]
 8001e76:	4a65      	ldr	r2, [pc, #404]	; (800200c <xvprintf+0x300>)
 8001e78:	4693      	mov	fp, r2
 8001e7a:	0022      	movs	r2, r4
 8001e7c:	464c      	mov	r4, r9
 8001e7e:	4691      	mov	r9, r2
 8001e80:	e008      	b.n	8001e94 <xvprintf+0x188>
 8001e82:	4652      	mov	r2, sl
 8001e84:	1c59      	adds	r1, r3, #1
 8001e86:	6011      	str	r1, [r2, #0]
 8001e88:	701c      	strb	r4, [r3, #0]
 8001e8a:	003a      	movs	r2, r7
 8001e8c:	000b      	movs	r3, r1
 8001e8e:	3701      	adds	r7, #1
 8001e90:	4295      	cmp	r5, r2
 8001e92:	d00e      	beq.n	8001eb2 <xvprintf+0x1a6>
 8001e94:	2b00      	cmp	r3, #0
 8001e96:	d1f4      	bne.n	8001e82 <xvprintf+0x176>
 8001e98:	465a      	mov	r2, fp
 8001e9a:	6812      	ldr	r2, [r2, #0]
 8001e9c:	2a00      	cmp	r2, #0
 8001e9e:	d100      	bne.n	8001ea2 <xvprintf+0x196>
 8001ea0:	e0e2      	b.n	8002068 <xvprintf+0x35c>
 8001ea2:	0020      	movs	r0, r4
 8001ea4:	4790      	blx	r2
 8001ea6:	4653      	mov	r3, sl
 8001ea8:	003a      	movs	r2, r7
 8001eaa:	681b      	ldr	r3, [r3, #0]
 8001eac:	3701      	adds	r7, #1
 8001eae:	4295      	cmp	r5, r2
 8001eb0:	d1f0      	bne.n	8001e94 <xvprintf+0x188>
 8001eb2:	464c      	mov	r4, r9
 8001eb4:	3c01      	subs	r4, #1
 8001eb6:	4444      	add	r4, r8
 8001eb8:	e009      	b.n	8001ece <xvprintf+0x1c2>
 8001eba:	4651      	mov	r1, sl
 8001ebc:	1c5a      	adds	r2, r3, #1
 8001ebe:	600a      	str	r2, [r1, #0]
 8001ec0:	701f      	strb	r7, [r3, #0]
 8001ec2:	1e62      	subs	r2, r4, #1
 8001ec4:	45a0      	cmp	r8, r4
 8001ec6:	d011      	beq.n	8001eec <xvprintf+0x1e0>
 8001ec8:	4653      	mov	r3, sl
 8001eca:	0014      	movs	r4, r2
 8001ecc:	681b      	ldr	r3, [r3, #0]
 8001ece:	7827      	ldrb	r7, [r4, #0]
 8001ed0:	2f0a      	cmp	r7, #10
 8001ed2:	d100      	bne.n	8001ed6 <xvprintf+0x1ca>
 8001ed4:	e0f7      	b.n	80020c6 <xvprintf+0x3ba>
 8001ed6:	2b00      	cmp	r3, #0
 8001ed8:	d1ef      	bne.n	8001eba <xvprintf+0x1ae>
 8001eda:	4b4c      	ldr	r3, [pc, #304]	; (800200c <xvprintf+0x300>)
 8001edc:	681b      	ldr	r3, [r3, #0]
 8001ede:	2b00      	cmp	r3, #0
 8001ee0:	d0ef      	beq.n	8001ec2 <xvprintf+0x1b6>
 8001ee2:	0038      	movs	r0, r7
 8001ee4:	4798      	blx	r3
 8001ee6:	1e62      	subs	r2, r4, #1
 8001ee8:	45a0      	cmp	r8, r4
 8001eea:	d1ed      	bne.n	8001ec8 <xvprintf+0x1bc>
 8001eec:	9b00      	ldr	r3, [sp, #0]
 8001eee:	1c5c      	adds	r4, r3, #1
 8001ef0:	42ab      	cmp	r3, r5
 8001ef2:	d30a      	bcc.n	8001f0a <xvprintf+0x1fe>
 8001ef4:	e715      	b.n	8001d22 <xvprintf+0x16>
 8001ef6:	4651      	mov	r1, sl
 8001ef8:	1c5a      	adds	r2, r3, #1
 8001efa:	600a      	str	r2, [r1, #0]
 8001efc:	2220      	movs	r2, #32
 8001efe:	701a      	strb	r2, [r3, #0]
 8001f00:	1c63      	adds	r3, r4, #1
 8001f02:	42ac      	cmp	r4, r5
 8001f04:	d100      	bne.n	8001f08 <xvprintf+0x1fc>
 8001f06:	e70c      	b.n	8001d22 <xvprintf+0x16>
 8001f08:	001c      	movs	r4, r3
 8001f0a:	4653      	mov	r3, sl
 8001f0c:	681b      	ldr	r3, [r3, #0]
 8001f0e:	2b00      	cmp	r3, #0
 8001f10:	d1f1      	bne.n	8001ef6 <xvprintf+0x1ea>
 8001f12:	4b3e      	ldr	r3, [pc, #248]	; (800200c <xvprintf+0x300>)
 8001f14:	681b      	ldr	r3, [r3, #0]
 8001f16:	2b00      	cmp	r3, #0
 8001f18:	d0f2      	beq.n	8001f00 <xvprintf+0x1f4>
 8001f1a:	2020      	movs	r0, #32
 8001f1c:	4798      	blx	r3
 8001f1e:	e7ef      	b.n	8001f00 <xvprintf+0x1f4>
 8001f20:	0021      	movs	r1, r4
 8001f22:	9b01      	ldr	r3, [sp, #4]
 8001f24:	1d18      	adds	r0, r3, #4
 8001f26:	2a00      	cmp	r2, #0
 8001f28:	d100      	bne.n	8001f2c <xvprintf+0x220>
 8001f2a:	e121      	b.n	8002170 <xvprintf+0x464>
 8001f2c:	220a      	movs	r2, #10
 8001f2e:	681b      	ldr	r3, [r3, #0]
 8001f30:	9001      	str	r0, [sp, #4]
 8001f32:	4691      	mov	r9, r2
 8001f34:	2944      	cmp	r1, #68	; 0x44
 8001f36:	d102      	bne.n	8001f3e <xvprintf+0x232>
 8001f38:	2b00      	cmp	r3, #0
 8001f3a:	da00      	bge.n	8001f3e <xvprintf+0x232>
 8001f3c:	e0fc      	b.n	8002138 <xvprintf+0x42c>
 8001f3e:	001f      	movs	r7, r3
 8001f40:	2300      	movs	r3, #0
 8001f42:	9303      	str	r3, [sp, #12]
 8001f44:	e751      	b.n	8001dea <xvprintf+0xde>
 8001f46:	9b01      	ldr	r3, [sp, #4]
 8001f48:	cb04      	ldmia	r3!, {r2}
 8001f4a:	4690      	mov	r8, r2
 8001f4c:	9300      	str	r3, [sp, #0]
 8001f4e:	7813      	ldrb	r3, [r2, #0]
 8001f50:	2200      	movs	r2, #0
 8001f52:	4691      	mov	r9, r2
 8001f54:	2b00      	cmp	r3, #0
 8001f56:	d100      	bne.n	8001f5a <xvprintf+0x24e>
 8001f58:	e151      	b.n	80021fe <xvprintf+0x4f2>
 8001f5a:	4640      	mov	r0, r8
 8001f5c:	3201      	adds	r2, #1
 8001f5e:	5c81      	ldrb	r1, [r0, r2]
 8001f60:	2900      	cmp	r1, #0
 8001f62:	d1fb      	bne.n	8001f5c <xvprintf+0x250>
 8001f64:	4691      	mov	r9, r2
 8001f66:	9a02      	ldr	r2, [sp, #8]
 8001f68:	4680      	mov	r8, r0
 8001f6a:	2a00      	cmp	r2, #0
 8001f6c:	d000      	beq.n	8001f70 <xvprintf+0x264>
 8001f6e:	e15a      	b.n	8002226 <xvprintf+0x51a>
 8001f70:	464a      	mov	r2, r9
 8001f72:	1c54      	adds	r4, r2, #1
 8001f74:	45a9      	cmp	r9, r5
 8001f76:	d300      	bcc.n	8001f7a <xvprintf+0x26e>
 8001f78:	e153      	b.n	8002222 <xvprintf+0x516>
 8001f7a:	1c6b      	adds	r3, r5, #1
 8001f7c:	4699      	mov	r9, r3
 8001f7e:	4b23      	ldr	r3, [pc, #140]	; (800200c <xvprintf+0x300>)
 8001f80:	4f20      	ldr	r7, [pc, #128]	; (8002004 <xvprintf+0x2f8>)
 8001f82:	469b      	mov	fp, r3
 8001f84:	e007      	b.n	8001f96 <xvprintf+0x28a>
 8001f86:	1c5a      	adds	r2, r3, #1
 8001f88:	603a      	str	r2, [r7, #0]
 8001f8a:	2220      	movs	r2, #32
 8001f8c:	701a      	strb	r2, [r3, #0]
 8001f8e:	1c63      	adds	r3, r4, #1
 8001f90:	42ac      	cmp	r4, r5
 8001f92:	d00c      	beq.n	8001fae <xvprintf+0x2a2>
 8001f94:	001c      	movs	r4, r3
 8001f96:	683b      	ldr	r3, [r7, #0]
 8001f98:	2b00      	cmp	r3, #0
 8001f9a:	d1f4      	bne.n	8001f86 <xvprintf+0x27a>
 8001f9c:	465b      	mov	r3, fp
 8001f9e:	681b      	ldr	r3, [r3, #0]
 8001fa0:	2b00      	cmp	r3, #0
 8001fa2:	d0f4      	beq.n	8001f8e <xvprintf+0x282>
 8001fa4:	2020      	movs	r0, #32
 8001fa6:	4798      	blx	r3
 8001fa8:	1c63      	adds	r3, r4, #1
 8001faa:	42ac      	cmp	r4, r5
 8001fac:	d1f2      	bne.n	8001f94 <xvprintf+0x288>
 8001fae:	4643      	mov	r3, r8
 8001fb0:	781b      	ldrb	r3, [r3, #0]
 8001fb2:	1e1c      	subs	r4, r3, #0
 8001fb4:	d01e      	beq.n	8001ff4 <xvprintf+0x2e8>
 8001fb6:	4f13      	ldr	r7, [pc, #76]	; (8002004 <xvprintf+0x2f8>)
 8001fb8:	4b14      	ldr	r3, [pc, #80]	; (800200c <xvprintf+0x300>)
 8001fba:	469b      	mov	fp, r3
 8001fbc:	003b      	movs	r3, r7
 8001fbe:	4647      	mov	r7, r8
 8001fc0:	46a8      	mov	r8, r5
 8001fc2:	001d      	movs	r5, r3
 8001fc4:	e005      	b.n	8001fd2 <xvprintf+0x2c6>
 8001fc6:	1c5a      	adds	r2, r3, #1
 8001fc8:	602a      	str	r2, [r5, #0]
 8001fca:	701c      	strb	r4, [r3, #0]
 8001fcc:	783c      	ldrb	r4, [r7, #0]
 8001fce:	2c00      	cmp	r4, #0
 8001fd0:	d00f      	beq.n	8001ff2 <xvprintf+0x2e6>
 8001fd2:	3701      	adds	r7, #1
 8001fd4:	682b      	ldr	r3, [r5, #0]
 8001fd6:	2c0a      	cmp	r4, #10
 8001fd8:	d100      	bne.n	8001fdc <xvprintf+0x2d0>
 8001fda:	e0e2      	b.n	80021a2 <xvprintf+0x496>
 8001fdc:	2b00      	cmp	r3, #0
 8001fde:	d1f2      	bne.n	8001fc6 <xvprintf+0x2ba>
 8001fe0:	465b      	mov	r3, fp
 8001fe2:	681b      	ldr	r3, [r3, #0]
 8001fe4:	2b00      	cmp	r3, #0
 8001fe6:	d0f1      	beq.n	8001fcc <xvprintf+0x2c0>
 8001fe8:	0020      	movs	r0, r4
 8001fea:	4798      	blx	r3
 8001fec:	783c      	ldrb	r4, [r7, #0]
 8001fee:	2c00      	cmp	r4, #0
 8001ff0:	d1ef      	bne.n	8001fd2 <xvprintf+0x2c6>
 8001ff2:	4645      	mov	r5, r8
 8001ff4:	464b      	mov	r3, r9
 8001ff6:	1c5c      	adds	r4, r3, #1
 8001ff8:	45a9      	cmp	r9, r5
 8001ffa:	d21d      	bcs.n	8002038 <xvprintf+0x32c>
 8001ffc:	4b03      	ldr	r3, [pc, #12]	; (800200c <xvprintf+0x300>)
 8001ffe:	4f01      	ldr	r7, [pc, #4]	; (8002004 <xvprintf+0x2f8>)
 8002000:	4698      	mov	r8, r3
 8002002:	e00d      	b.n	8002020 <xvprintf+0x314>
 8002004:	20000c38 	.word	0x20000c38
 8002008:	080049f4 	.word	0x080049f4
 800200c:	20000c7c 	.word	0x20000c7c
 8002010:	1c5a      	adds	r2, r3, #1
 8002012:	603a      	str	r2, [r7, #0]
 8002014:	2220      	movs	r2, #32
 8002016:	701a      	strb	r2, [r3, #0]
 8002018:	1c63      	adds	r3, r4, #1
 800201a:	42ac      	cmp	r4, r5
 800201c:	d00c      	beq.n	8002038 <xvprintf+0x32c>
 800201e:	001c      	movs	r4, r3
 8002020:	683b      	ldr	r3, [r7, #0]
 8002022:	2b00      	cmp	r3, #0
 8002024:	d1f4      	bne.n	8002010 <xvprintf+0x304>
 8002026:	4643      	mov	r3, r8
 8002028:	681b      	ldr	r3, [r3, #0]
 800202a:	2b00      	cmp	r3, #0
 800202c:	d0f4      	beq.n	8002018 <xvprintf+0x30c>
 800202e:	2020      	movs	r0, #32
 8002030:	4798      	blx	r3
 8002032:	1c63      	adds	r3, r4, #1
 8002034:	42ac      	cmp	r4, r5
 8002036:	d1f2      	bne.n	800201e <xvprintf+0x312>
 8002038:	9b00      	ldr	r3, [sp, #0]
 800203a:	9301      	str	r3, [sp, #4]
 800203c:	e671      	b.n	8001d22 <xvprintf+0x16>
 800203e:	9c01      	ldr	r4, [sp, #4]
 8002040:	4f7a      	ldr	r7, [pc, #488]	; (800222c <xvprintf+0x520>)
 8002042:	cc20      	ldmia	r4!, {r5}
 8002044:	683b      	ldr	r3, [r7, #0]
 8002046:	b2ed      	uxtb	r5, r5
 8002048:	2d0a      	cmp	r5, #10
 800204a:	d100      	bne.n	800204e <xvprintf+0x342>
 800204c:	e0c9      	b.n	80021e2 <xvprintf+0x4d6>
 800204e:	2b00      	cmp	r3, #0
 8002050:	d100      	bne.n	8002054 <xvprintf+0x348>
 8002052:	e085      	b.n	8002160 <xvprintf+0x454>
 8002054:	1c5a      	adds	r2, r3, #1
 8002056:	603a      	str	r2, [r7, #0]
 8002058:	701d      	strb	r5, [r3, #0]
 800205a:	9401      	str	r4, [sp, #4]
 800205c:	e661      	b.n	8001d22 <xvprintf+0x16>
 800205e:	9b01      	ldr	r3, [sp, #4]
 8002060:	1d18      	adds	r0, r3, #4
 8002062:	2302      	movs	r3, #2
 8002064:	4699      	mov	r9, r3
 8002066:	e6bb      	b.n	8001de0 <xvprintf+0xd4>
 8002068:	1c7a      	adds	r2, r7, #1
 800206a:	42bd      	cmp	r5, r7
 800206c:	d100      	bne.n	8002070 <xvprintf+0x364>
 800206e:	e720      	b.n	8001eb2 <xvprintf+0x1a6>
 8002070:	0017      	movs	r7, r2
 8002072:	e711      	b.n	8001e98 <xvprintf+0x18c>
 8002074:	4b6e      	ldr	r3, [pc, #440]	; (8002230 <xvprintf+0x524>)
 8002076:	681b      	ldr	r3, [r3, #0]
 8002078:	2b00      	cmp	r3, #0
 800207a:	d100      	bne.n	800207e <xvprintf+0x372>
 800207c:	e662      	b.n	8001d44 <xvprintf+0x38>
 800207e:	0020      	movs	r0, r4
 8002080:	4798      	blx	r3
 8002082:	002e      	movs	r6, r5
 8002084:	e64d      	b.n	8001d22 <xvprintf+0x16>
 8002086:	0023      	movs	r3, r4
 8002088:	3b42      	subs	r3, #66	; 0x42
 800208a:	b2db      	uxtb	r3, r3
 800208c:	2b16      	cmp	r3, #22
 800208e:	d872      	bhi.n	8002176 <xvprintf+0x46a>
 8002090:	4968      	ldr	r1, [pc, #416]	; (8002234 <xvprintf+0x528>)
 8002092:	009b      	lsls	r3, r3, #2
 8002094:	58cb      	ldr	r3, [r1, r3]
 8002096:	469f      	mov	pc, r3
 8002098:	2300      	movs	r3, #0
 800209a:	78b4      	ldrb	r4, [r6, #2]
 800209c:	9302      	str	r3, [sp, #8]
 800209e:	3301      	adds	r3, #1
 80020a0:	9300      	str	r3, [sp, #0]
 80020a2:	0023      	movs	r3, r4
 80020a4:	3b30      	subs	r3, #48	; 0x30
 80020a6:	1cf2      	adds	r2, r6, #3
 80020a8:	2105      	movs	r1, #5
 80020aa:	2b09      	cmp	r3, #9
 80020ac:	d800      	bhi.n	80020b0 <xvprintf+0x3a4>
 80020ae:	e666      	b.n	8001d7e <xvprintf+0x72>
 80020b0:	0016      	movs	r6, r2
 80020b2:	2500      	movs	r5, #0
 80020b4:	e673      	b.n	8001d9e <xvprintf+0x92>
 80020b6:	2b00      	cmp	r3, #0
 80020b8:	d025      	beq.n	8002106 <xvprintf+0x3fa>
 80020ba:	210d      	movs	r1, #13
 80020bc:	1c5a      	adds	r2, r3, #1
 80020be:	7019      	strb	r1, [r3, #0]
 80020c0:	603a      	str	r2, [r7, #0]
 80020c2:	0013      	movs	r3, r2
 80020c4:	e638      	b.n	8001d38 <xvprintf+0x2c>
 80020c6:	2b00      	cmp	r3, #0
 80020c8:	d006      	beq.n	80020d8 <xvprintf+0x3cc>
 80020ca:	4651      	mov	r1, sl
 80020cc:	1c5a      	adds	r2, r3, #1
 80020ce:	600a      	str	r2, [r1, #0]
 80020d0:	210d      	movs	r1, #13
 80020d2:	7019      	strb	r1, [r3, #0]
 80020d4:	0013      	movs	r3, r2
 80020d6:	e6fe      	b.n	8001ed6 <xvprintf+0x1ca>
 80020d8:	4b55      	ldr	r3, [pc, #340]	; (8002230 <xvprintf+0x524>)
 80020da:	681b      	ldr	r3, [r3, #0]
 80020dc:	2b00      	cmp	r3, #0
 80020de:	d100      	bne.n	80020e2 <xvprintf+0x3d6>
 80020e0:	e6ef      	b.n	8001ec2 <xvprintf+0x1b6>
 80020e2:	200d      	movs	r0, #13
 80020e4:	4798      	blx	r3
 80020e6:	4653      	mov	r3, sl
 80020e8:	681b      	ldr	r3, [r3, #0]
 80020ea:	e6f4      	b.n	8001ed6 <xvprintf+0x1ca>
 80020ec:	2317      	movs	r3, #23
 80020ee:	4645      	mov	r5, r8
 80020f0:	0014      	movs	r4, r2
 80020f2:	464e      	mov	r6, r9
 80020f4:	469b      	mov	fp, r3
 80020f6:	e69e      	b.n	8001e36 <xvprintf+0x12a>
 80020f8:	2302      	movs	r3, #2
 80020fa:	1cf2      	adds	r2, r6, #3
 80020fc:	78b4      	ldrb	r4, [r6, #2]
 80020fe:	9302      	str	r3, [sp, #8]
 8002100:	2106      	movs	r1, #6
 8002102:	9300      	str	r3, [sp, #0]
 8002104:	e636      	b.n	8001d74 <xvprintf+0x68>
 8002106:	4b4a      	ldr	r3, [pc, #296]	; (8002230 <xvprintf+0x524>)
 8002108:	681b      	ldr	r3, [r3, #0]
 800210a:	2b00      	cmp	r3, #0
 800210c:	d100      	bne.n	8002110 <xvprintf+0x404>
 800210e:	e619      	b.n	8001d44 <xvprintf+0x38>
 8002110:	200d      	movs	r0, #13
 8002112:	4798      	blx	r3
 8002114:	683b      	ldr	r3, [r7, #0]
 8002116:	e60f      	b.n	8001d38 <xvprintf+0x2c>
 8002118:	9b01      	ldr	r3, [sp, #4]
 800211a:	1d18      	adds	r0, r3, #4
 800211c:	2a00      	cmp	r2, #0
 800211e:	d11a      	bne.n	8002156 <xvprintf+0x44a>
 8002120:	2308      	movs	r3, #8
 8002122:	0021      	movs	r1, r4
 8002124:	4699      	mov	r9, r3
 8002126:	2944      	cmp	r1, #68	; 0x44
 8002128:	d000      	beq.n	800212c <xvprintf+0x420>
 800212a:	e659      	b.n	8001de0 <xvprintf+0xd4>
 800212c:	9b01      	ldr	r3, [sp, #4]
 800212e:	9001      	str	r0, [sp, #4]
 8002130:	681b      	ldr	r3, [r3, #0]
 8002132:	2b00      	cmp	r3, #0
 8002134:	db00      	blt.n	8002138 <xvprintf+0x42c>
 8002136:	e702      	b.n	8001f3e <xvprintf+0x232>
 8002138:	9a00      	ldr	r2, [sp, #0]
 800213a:	425f      	negs	r7, r3
 800213c:	0011      	movs	r1, r2
 800213e:	2302      	movs	r3, #2
 8002140:	4019      	ands	r1, r3
 8002142:	330e      	adds	r3, #14
 8002144:	431a      	orrs	r2, r3
 8002146:	9102      	str	r1, [sp, #8]
 8002148:	9200      	str	r2, [sp, #0]
 800214a:	9303      	str	r3, [sp, #12]
 800214c:	e64d      	b.n	8001dea <xvprintf+0xde>
 800214e:	9b01      	ldr	r3, [sp, #4]
 8002150:	1d18      	adds	r0, r3, #4
 8002152:	2a00      	cmp	r2, #0
 8002154:	d036      	beq.n	80021c4 <xvprintf+0x4b8>
 8002156:	2208      	movs	r2, #8
 8002158:	681b      	ldr	r3, [r3, #0]
 800215a:	9001      	str	r0, [sp, #4]
 800215c:	4691      	mov	r9, r2
 800215e:	e6ee      	b.n	8001f3e <xvprintf+0x232>
 8002160:	4b33      	ldr	r3, [pc, #204]	; (8002230 <xvprintf+0x524>)
 8002162:	681b      	ldr	r3, [r3, #0]
 8002164:	2b00      	cmp	r3, #0
 8002166:	d048      	beq.n	80021fa <xvprintf+0x4ee>
 8002168:	0028      	movs	r0, r5
 800216a:	4798      	blx	r3
 800216c:	9401      	str	r4, [sp, #4]
 800216e:	e5d8      	b.n	8001d22 <xvprintf+0x16>
 8002170:	230a      	movs	r3, #10
 8002172:	4699      	mov	r9, r3
 8002174:	e7d7      	b.n	8002126 <xvprintf+0x41a>
 8002176:	4f2d      	ldr	r7, [pc, #180]	; (800222c <xvprintf+0x520>)
 8002178:	683b      	ldr	r3, [r7, #0]
 800217a:	2c0a      	cmp	r4, #10
 800217c:	d029      	beq.n	80021d2 <xvprintf+0x4c6>
 800217e:	2b00      	cmp	r3, #0
 8002180:	d007      	beq.n	8002192 <xvprintf+0x486>
 8002182:	1c5a      	adds	r2, r3, #1
 8002184:	603a      	str	r2, [r7, #0]
 8002186:	701c      	strb	r4, [r3, #0]
 8002188:	e5cb      	b.n	8001d22 <xvprintf+0x16>
 800218a:	4f28      	ldr	r7, [pc, #160]	; (800222c <xvprintf+0x520>)
 800218c:	683b      	ldr	r3, [r7, #0]
 800218e:	2b00      	cmp	r3, #0
 8002190:	d1f7      	bne.n	8002182 <xvprintf+0x476>
 8002192:	4b27      	ldr	r3, [pc, #156]	; (8002230 <xvprintf+0x524>)
 8002194:	681b      	ldr	r3, [r3, #0]
 8002196:	2b00      	cmp	r3, #0
 8002198:	d100      	bne.n	800219c <xvprintf+0x490>
 800219a:	e5c2      	b.n	8001d22 <xvprintf+0x16>
 800219c:	0020      	movs	r0, r4
 800219e:	4798      	blx	r3
 80021a0:	e5bf      	b.n	8001d22 <xvprintf+0x16>
 80021a2:	2b00      	cmp	r3, #0
 80021a4:	d005      	beq.n	80021b2 <xvprintf+0x4a6>
 80021a6:	210d      	movs	r1, #13
 80021a8:	1c5a      	adds	r2, r3, #1
 80021aa:	7019      	strb	r1, [r3, #0]
 80021ac:	602a      	str	r2, [r5, #0]
 80021ae:	0013      	movs	r3, r2
 80021b0:	e714      	b.n	8001fdc <xvprintf+0x2d0>
 80021b2:	4b1f      	ldr	r3, [pc, #124]	; (8002230 <xvprintf+0x524>)
 80021b4:	681b      	ldr	r3, [r3, #0]
 80021b6:	2b00      	cmp	r3, #0
 80021b8:	d100      	bne.n	80021bc <xvprintf+0x4b0>
 80021ba:	e707      	b.n	8001fcc <xvprintf+0x2c0>
 80021bc:	200d      	movs	r0, #13
 80021be:	4798      	blx	r3
 80021c0:	682b      	ldr	r3, [r5, #0]
 80021c2:	e70b      	b.n	8001fdc <xvprintf+0x2d0>
 80021c4:	2308      	movs	r3, #8
 80021c6:	4699      	mov	r9, r3
 80021c8:	e60a      	b.n	8001de0 <xvprintf+0xd4>
 80021ca:	9400      	str	r4, [sp, #0]
 80021cc:	e672      	b.n	8001eb4 <xvprintf+0x1a8>
 80021ce:	9700      	str	r7, [sp, #0]
 80021d0:	e670      	b.n	8001eb4 <xvprintf+0x1a8>
 80021d2:	2b00      	cmp	r3, #0
 80021d4:	d018      	beq.n	8002208 <xvprintf+0x4fc>
 80021d6:	210d      	movs	r1, #13
 80021d8:	1c5a      	adds	r2, r3, #1
 80021da:	7019      	strb	r1, [r3, #0]
 80021dc:	603a      	str	r2, [r7, #0]
 80021de:	0013      	movs	r3, r2
 80021e0:	e7cd      	b.n	800217e <xvprintf+0x472>
 80021e2:	2b00      	cmp	r3, #0
 80021e4:	d005      	beq.n	80021f2 <xvprintf+0x4e6>
 80021e6:	210d      	movs	r1, #13
 80021e8:	1c5a      	adds	r2, r3, #1
 80021ea:	7019      	strb	r1, [r3, #0]
 80021ec:	603a      	str	r2, [r7, #0]
 80021ee:	0013      	movs	r3, r2
 80021f0:	e72d      	b.n	800204e <xvprintf+0x342>
 80021f2:	4b0f      	ldr	r3, [pc, #60]	; (8002230 <xvprintf+0x524>)
 80021f4:	681b      	ldr	r3, [r3, #0]
 80021f6:	2b00      	cmp	r3, #0
 80021f8:	d10f      	bne.n	800221a <xvprintf+0x50e>
 80021fa:	9401      	str	r4, [sp, #4]
 80021fc:	e591      	b.n	8001d22 <xvprintf+0x16>
 80021fe:	9a02      	ldr	r2, [sp, #8]
 8002200:	2a00      	cmp	r2, #0
 8002202:	d100      	bne.n	8002206 <xvprintf+0x4fa>
 8002204:	e6b4      	b.n	8001f70 <xvprintf+0x264>
 8002206:	e6f5      	b.n	8001ff4 <xvprintf+0x2e8>
 8002208:	4b09      	ldr	r3, [pc, #36]	; (8002230 <xvprintf+0x524>)
 800220a:	681b      	ldr	r3, [r3, #0]
 800220c:	2b00      	cmp	r3, #0
 800220e:	d100      	bne.n	8002212 <xvprintf+0x506>
 8002210:	e587      	b.n	8001d22 <xvprintf+0x16>
 8002212:	200d      	movs	r0, #13
 8002214:	4798      	blx	r3
 8002216:	683b      	ldr	r3, [r7, #0]
 8002218:	e7b1      	b.n	800217e <xvprintf+0x472>
 800221a:	200d      	movs	r0, #13
 800221c:	4798      	blx	r3
 800221e:	683b      	ldr	r3, [r7, #0]
 8002220:	e715      	b.n	800204e <xvprintf+0x342>
 8002222:	46a1      	mov	r9, r4
 8002224:	e6c5      	b.n	8001fb2 <xvprintf+0x2a6>
 8002226:	001c      	movs	r4, r3
 8002228:	e6c5      	b.n	8001fb6 <xvprintf+0x2aa>
 800222a:	46c0      	nop			; (mov r8, r8)
 800222c:	20000c38 	.word	0x20000c38
 8002230:	20000c7c 	.word	0x20000c7c
 8002234:	08004a50 	.word	0x08004a50

08002238 <xprintf>:
 8002238:	b40f      	push	{r0, r1, r2, r3}
 800223a:	b500      	push	{lr}
 800223c:	b083      	sub	sp, #12
 800223e:	a904      	add	r1, sp, #16
 8002240:	c901      	ldmia	r1!, {r0}
 8002242:	9101      	str	r1, [sp, #4]
 8002244:	f7ff fd62 	bl	8001d0c <xvprintf>
 8002248:	b003      	add	sp, #12
 800224a:	bc08      	pop	{r3}
 800224c:	b004      	add	sp, #16
 800224e:	4718      	bx	r3

08002250 <__libc_init_array>:
 8002250:	b570      	push	{r4, r5, r6, lr}
 8002252:	4d0c      	ldr	r5, [pc, #48]	; (8002284 <__libc_init_array+0x34>)
 8002254:	4e0c      	ldr	r6, [pc, #48]	; (8002288 <__libc_init_array+0x38>)
 8002256:	1b76      	subs	r6, r6, r5
 8002258:	10b6      	asrs	r6, r6, #2
 800225a:	d005      	beq.n	8002268 <__libc_init_array+0x18>
 800225c:	2400      	movs	r4, #0
 800225e:	cd08      	ldmia	r5!, {r3}
 8002260:	3401      	adds	r4, #1
 8002262:	4798      	blx	r3
 8002264:	42a6      	cmp	r6, r4
 8002266:	d1fa      	bne.n	800225e <__libc_init_array+0xe>
 8002268:	f000 f8f4 	bl	8002454 <_init>
 800226c:	4d07      	ldr	r5, [pc, #28]	; (800228c <__libc_init_array+0x3c>)
 800226e:	4e08      	ldr	r6, [pc, #32]	; (8002290 <__libc_init_array+0x40>)
 8002270:	1b76      	subs	r6, r6, r5
 8002272:	10b6      	asrs	r6, r6, #2
 8002274:	d005      	beq.n	8002282 <__libc_init_array+0x32>
 8002276:	2400      	movs	r4, #0
 8002278:	cd08      	ldmia	r5!, {r3}
 800227a:	3401      	adds	r4, #1
 800227c:	4798      	blx	r3
 800227e:	42a6      	cmp	r6, r4
 8002280:	d1fa      	bne.n	8002278 <__libc_init_array+0x28>
 8002282:	bd70      	pop	{r4, r5, r6, pc}
 8002284:	08004ab0 	.word	0x08004ab0
 8002288:	08004ab0 	.word	0x08004ab0
 800228c:	08004ab0 	.word	0x08004ab0
 8002290:	08004ab8 	.word	0x08004ab8

08002294 <memset>:
 8002294:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002296:	0005      	movs	r5, r0
 8002298:	0783      	lsls	r3, r0, #30
 800229a:	d04a      	beq.n	8002332 <memset+0x9e>
 800229c:	1e54      	subs	r4, r2, #1
 800229e:	2a00      	cmp	r2, #0
 80022a0:	d044      	beq.n	800232c <memset+0x98>
 80022a2:	b2ce      	uxtb	r6, r1
 80022a4:	0003      	movs	r3, r0
 80022a6:	2203      	movs	r2, #3
 80022a8:	e002      	b.n	80022b0 <memset+0x1c>
 80022aa:	3501      	adds	r5, #1
 80022ac:	3c01      	subs	r4, #1
 80022ae:	d33d      	bcc.n	800232c <memset+0x98>
 80022b0:	3301      	adds	r3, #1
 80022b2:	702e      	strb	r6, [r5, #0]
 80022b4:	4213      	tst	r3, r2
 80022b6:	d1f8      	bne.n	80022aa <memset+0x16>
 80022b8:	2c03      	cmp	r4, #3
 80022ba:	d92f      	bls.n	800231c <memset+0x88>
 80022bc:	22ff      	movs	r2, #255	; 0xff
 80022be:	400a      	ands	r2, r1
 80022c0:	0215      	lsls	r5, r2, #8
 80022c2:	4315      	orrs	r5, r2
 80022c4:	042a      	lsls	r2, r5, #16
 80022c6:	4315      	orrs	r5, r2
 80022c8:	2c0f      	cmp	r4, #15
 80022ca:	d935      	bls.n	8002338 <memset+0xa4>
 80022cc:	0027      	movs	r7, r4
 80022ce:	3f10      	subs	r7, #16
 80022d0:	093f      	lsrs	r7, r7, #4
 80022d2:	013e      	lsls	r6, r7, #4
 80022d4:	46b4      	mov	ip, r6
 80022d6:	001e      	movs	r6, r3
 80022d8:	001a      	movs	r2, r3
 80022da:	3610      	adds	r6, #16
 80022dc:	4466      	add	r6, ip
 80022de:	6015      	str	r5, [r2, #0]
 80022e0:	6055      	str	r5, [r2, #4]
 80022e2:	6095      	str	r5, [r2, #8]
 80022e4:	60d5      	str	r5, [r2, #12]
 80022e6:	3210      	adds	r2, #16
 80022e8:	42b2      	cmp	r2, r6
 80022ea:	d1f8      	bne.n	80022de <memset+0x4a>
 80022ec:	260f      	movs	r6, #15
 80022ee:	220c      	movs	r2, #12
 80022f0:	3701      	adds	r7, #1
 80022f2:	013f      	lsls	r7, r7, #4
 80022f4:	4026      	ands	r6, r4
 80022f6:	19db      	adds	r3, r3, r7
 80022f8:	0037      	movs	r7, r6
 80022fa:	4222      	tst	r2, r4
 80022fc:	d017      	beq.n	800232e <memset+0x9a>
 80022fe:	1f3e      	subs	r6, r7, #4
 8002300:	08b6      	lsrs	r6, r6, #2
 8002302:	00b4      	lsls	r4, r6, #2
 8002304:	46a4      	mov	ip, r4
 8002306:	001a      	movs	r2, r3
 8002308:	1d1c      	adds	r4, r3, #4
 800230a:	4464      	add	r4, ip
 800230c:	c220      	stmia	r2!, {r5}
 800230e:	42a2      	cmp	r2, r4
 8002310:	d1fc      	bne.n	800230c <memset+0x78>
 8002312:	2403      	movs	r4, #3
 8002314:	3601      	adds	r6, #1
 8002316:	00b6      	lsls	r6, r6, #2
 8002318:	199b      	adds	r3, r3, r6
 800231a:	403c      	ands	r4, r7
 800231c:	2c00      	cmp	r4, #0
 800231e:	d005      	beq.n	800232c <memset+0x98>
 8002320:	b2c9      	uxtb	r1, r1
 8002322:	191c      	adds	r4, r3, r4
 8002324:	7019      	strb	r1, [r3, #0]
 8002326:	3301      	adds	r3, #1
 8002328:	429c      	cmp	r4, r3
 800232a:	d1fb      	bne.n	8002324 <memset+0x90>
 800232c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800232e:	0034      	movs	r4, r6
 8002330:	e7f4      	b.n	800231c <memset+0x88>
 8002332:	0014      	movs	r4, r2
 8002334:	0003      	movs	r3, r0
 8002336:	e7bf      	b.n	80022b8 <memset+0x24>
 8002338:	0027      	movs	r7, r4
 800233a:	e7e0      	b.n	80022fe <memset+0x6a>

0800233c <register_fini>:
 800233c:	4b03      	ldr	r3, [pc, #12]	; (800234c <register_fini+0x10>)
 800233e:	b510      	push	{r4, lr}
 8002340:	2b00      	cmp	r3, #0
 8002342:	d002      	beq.n	800234a <register_fini+0xe>
 8002344:	4802      	ldr	r0, [pc, #8]	; (8002350 <register_fini+0x14>)
 8002346:	f000 f805 	bl	8002354 <atexit>
 800234a:	bd10      	pop	{r4, pc}
 800234c:	00000000 	.word	0x00000000
 8002350:	08002365 	.word	0x08002365

08002354 <atexit>:
 8002354:	b510      	push	{r4, lr}
 8002356:	0001      	movs	r1, r0
 8002358:	2300      	movs	r3, #0
 800235a:	2200      	movs	r2, #0
 800235c:	2000      	movs	r0, #0
 800235e:	f000 f819 	bl	8002394 <__register_exitproc>
 8002362:	bd10      	pop	{r4, pc}

08002364 <__libc_fini_array>:
 8002364:	b570      	push	{r4, r5, r6, lr}
 8002366:	4d07      	ldr	r5, [pc, #28]	; (8002384 <__libc_fini_array+0x20>)
 8002368:	4c07      	ldr	r4, [pc, #28]	; (8002388 <__libc_fini_array+0x24>)
 800236a:	1b64      	subs	r4, r4, r5
 800236c:	10a4      	asrs	r4, r4, #2
 800236e:	d005      	beq.n	800237c <__libc_fini_array+0x18>
 8002370:	3c01      	subs	r4, #1
 8002372:	00a3      	lsls	r3, r4, #2
 8002374:	58eb      	ldr	r3, [r5, r3]
 8002376:	4798      	blx	r3
 8002378:	2c00      	cmp	r4, #0
 800237a:	d1f9      	bne.n	8002370 <__libc_fini_array+0xc>
 800237c:	f000 f870 	bl	8002460 <_fini>
 8002380:	bd70      	pop	{r4, r5, r6, pc}
 8002382:	46c0      	nop			; (mov r8, r8)
 8002384:	08004ab8 	.word	0x08004ab8
 8002388:	08004abc 	.word	0x08004abc

0800238c <__retarget_lock_acquire_recursive>:
 800238c:	4770      	bx	lr
 800238e:	46c0      	nop			; (mov r8, r8)

08002390 <__retarget_lock_release_recursive>:
 8002390:	4770      	bx	lr
 8002392:	46c0      	nop			; (mov r8, r8)

08002394 <__register_exitproc>:
 8002394:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002396:	46de      	mov	lr, fp
 8002398:	4645      	mov	r5, r8
 800239a:	464e      	mov	r6, r9
 800239c:	4657      	mov	r7, sl
 800239e:	b5e0      	push	{r5, r6, r7, lr}
 80023a0:	4c2a      	ldr	r4, [pc, #168]	; (800244c <__register_exitproc+0xb8>)
 80023a2:	b083      	sub	sp, #12
 80023a4:	0005      	movs	r5, r0
 80023a6:	6820      	ldr	r0, [r4, #0]
 80023a8:	4690      	mov	r8, r2
 80023aa:	469b      	mov	fp, r3
 80023ac:	000e      	movs	r6, r1
 80023ae:	f7ff ffed 	bl	800238c <__retarget_lock_acquire_recursive>
 80023b2:	4b27      	ldr	r3, [pc, #156]	; (8002450 <__register_exitproc+0xbc>)
 80023b4:	681b      	ldr	r3, [r3, #0]
 80023b6:	9301      	str	r3, [sp, #4]
 80023b8:	23a4      	movs	r3, #164	; 0xa4
 80023ba:	9a01      	ldr	r2, [sp, #4]
 80023bc:	005b      	lsls	r3, r3, #1
 80023be:	58d2      	ldr	r2, [r2, r3]
 80023c0:	2a00      	cmp	r2, #0
 80023c2:	d038      	beq.n	8002436 <__register_exitproc+0xa2>
 80023c4:	6853      	ldr	r3, [r2, #4]
 80023c6:	6820      	ldr	r0, [r4, #0]
 80023c8:	2b1f      	cmp	r3, #31
 80023ca:	dc3a      	bgt.n	8002442 <__register_exitproc+0xae>
 80023cc:	2d00      	cmp	r5, #0
 80023ce:	d10e      	bne.n	80023ee <__register_exitproc+0x5a>
 80023d0:	1c59      	adds	r1, r3, #1
 80023d2:	3302      	adds	r3, #2
 80023d4:	009b      	lsls	r3, r3, #2
 80023d6:	6051      	str	r1, [r2, #4]
 80023d8:	509e      	str	r6, [r3, r2]
 80023da:	f7ff ffd9 	bl	8002390 <__retarget_lock_release_recursive>
 80023de:	2000      	movs	r0, #0
 80023e0:	b003      	add	sp, #12
 80023e2:	bc3c      	pop	{r2, r3, r4, r5}
 80023e4:	4690      	mov	r8, r2
 80023e6:	4699      	mov	r9, r3
 80023e8:	46a2      	mov	sl, r4
 80023ea:	46ab      	mov	fp, r5
 80023ec:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80023ee:	0099      	lsls	r1, r3, #2
 80023f0:	4689      	mov	r9, r1
 80023f2:	4491      	add	r9, r2
 80023f4:	4641      	mov	r1, r8
 80023f6:	2488      	movs	r4, #136	; 0x88
 80023f8:	464f      	mov	r7, r9
 80023fa:	5139      	str	r1, [r7, r4]
 80023fc:	21c4      	movs	r1, #196	; 0xc4
 80023fe:	0049      	lsls	r1, r1, #1
 8002400:	4688      	mov	r8, r1
 8002402:	4490      	add	r8, r2
 8002404:	4641      	mov	r1, r8
 8002406:	3c87      	subs	r4, #135	; 0x87
 8002408:	409c      	lsls	r4, r3
 800240a:	6809      	ldr	r1, [r1, #0]
 800240c:	46a2      	mov	sl, r4
 800240e:	4321      	orrs	r1, r4
 8002410:	468c      	mov	ip, r1
 8002412:	4641      	mov	r1, r8
 8002414:	4664      	mov	r4, ip
 8002416:	600c      	str	r4, [r1, #0]
 8002418:	2184      	movs	r1, #132	; 0x84
 800241a:	464c      	mov	r4, r9
 800241c:	465f      	mov	r7, fp
 800241e:	0049      	lsls	r1, r1, #1
 8002420:	5067      	str	r7, [r4, r1]
 8002422:	2d02      	cmp	r5, #2
 8002424:	d1d4      	bne.n	80023d0 <__register_exitproc+0x3c>
 8002426:	0011      	movs	r1, r2
 8002428:	4655      	mov	r5, sl
 800242a:	318d      	adds	r1, #141	; 0x8d
 800242c:	31ff      	adds	r1, #255	; 0xff
 800242e:	680c      	ldr	r4, [r1, #0]
 8002430:	4325      	orrs	r5, r4
 8002432:	600d      	str	r5, [r1, #0]
 8002434:	e7cc      	b.n	80023d0 <__register_exitproc+0x3c>
 8002436:	9a01      	ldr	r2, [sp, #4]
 8002438:	9901      	ldr	r1, [sp, #4]
 800243a:	324d      	adds	r2, #77	; 0x4d
 800243c:	32ff      	adds	r2, #255	; 0xff
 800243e:	50ca      	str	r2, [r1, r3]
 8002440:	e7c0      	b.n	80023c4 <__register_exitproc+0x30>
 8002442:	f7ff ffa5 	bl	8002390 <__retarget_lock_release_recursive>
 8002446:	2001      	movs	r0, #1
 8002448:	4240      	negs	r0, r0
 800244a:	e7c9      	b.n	80023e0 <__register_exitproc+0x4c>
 800244c:	20000808 	.word	0x20000808
 8002450:	08004aac 	.word	0x08004aac

08002454 <_init>:
 8002454:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002456:	46c0      	nop			; (mov r8, r8)
 8002458:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800245a:	bc08      	pop	{r3}
 800245c:	469e      	mov	lr, r3
 800245e:	4770      	bx	lr

08002460 <_fini>:
 8002460:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002462:	46c0      	nop			; (mov r8, r8)
 8002464:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8002466:	bc08      	pop	{r3}
 8002468:	469e      	mov	lr, r3
 800246a:	4770      	bx	lr
