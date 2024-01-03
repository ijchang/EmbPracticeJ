
main.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <idle_task>:
   0:	e7fe      	b.n	0 <idle_task>
   2:	bf00      	nop

00000004 <task1_handler>:
   4:	b508      	push	{r3, lr}
   6:	4c07      	ldr	r4, [pc, #28]	; (24 <task1_handler+0x20>)
   8:	200c      	movs	r0, #12
   a:	f7ff fffe 	bl	0 <led_on>
   e:	4620      	mov	r0, r4
  10:	f7ff fffe 	bl	0 <delay>
  14:	200c      	movs	r0, #12
  16:	f7ff fffe 	bl	0 <led_off>
  1a:	4620      	mov	r0, r4
  1c:	f7ff fffe 	bl	0 <delay>
  20:	e7f2      	b.n	8 <task1_handler+0x4>
  22:	bf00      	nop
  24:	001312d0 	.word	0x001312d0

00000028 <task2_handler>:
  28:	b508      	push	{r3, lr}
  2a:	4c07      	ldr	r4, [pc, #28]	; (48 <task2_handler+0x20>)
  2c:	200d      	movs	r0, #13
  2e:	f7ff fffe 	bl	0 <led_on>
  32:	4620      	mov	r0, r4
  34:	f7ff fffe 	bl	0 <delay>
  38:	200d      	movs	r0, #13
  3a:	f7ff fffe 	bl	0 <led_off>
  3e:	4620      	mov	r0, r4
  40:	f7ff fffe 	bl	0 <delay>
  44:	e7f2      	b.n	2c <task2_handler+0x4>
  46:	bf00      	nop
  48:	00098968 	.word	0x00098968

0000004c <task3_handler>:
  4c:	b508      	push	{r3, lr}
  4e:	4c07      	ldr	r4, [pc, #28]	; (6c <task3_handler+0x20>)
  50:	200f      	movs	r0, #15
  52:	f7ff fffe 	bl	0 <led_on>
  56:	4620      	mov	r0, r4
  58:	f7ff fffe 	bl	0 <delay>
  5c:	200f      	movs	r0, #15
  5e:	f7ff fffe 	bl	0 <led_off>
  62:	4620      	mov	r0, r4
  64:	f7ff fffe 	bl	0 <delay>
  68:	e7f2      	b.n	50 <task3_handler+0x4>
  6a:	bf00      	nop
  6c:	0004c4b4 	.word	0x0004c4b4

00000070 <task4_handler>:
  70:	b508      	push	{r3, lr}
  72:	4c07      	ldr	r4, [pc, #28]	; (90 <task4_handler+0x20>)
  74:	200e      	movs	r0, #14
  76:	f7ff fffe 	bl	0 <led_on>
  7a:	4620      	mov	r0, r4
  7c:	f7ff fffe 	bl	0 <delay>
  80:	200e      	movs	r0, #14
  82:	f7ff fffe 	bl	0 <led_off>
  86:	4620      	mov	r0, r4
  88:	f7ff fffe 	bl	0 <delay>
  8c:	e7f2      	b.n	74 <task4_handler+0x4>
  8e:	bf00      	nop
  90:	0002625a 	.word	0x0002625a

00000094 <memcpTmp>:
  94:	b38a      	cbz	r2, fa <memcpTmp+0x66>
  96:	1cc3      	adds	r3, r0, #3
  98:	1a5b      	subs	r3, r3, r1
  9a:	2b06      	cmp	r3, #6
  9c:	d92e      	bls.n	fc <memcpTmp+0x68>
  9e:	b4f0      	push	{r4, r5, r6, r7}
  a0:	1e57      	subs	r7, r2, #1
  a2:	2f07      	cmp	r7, #7
  a4:	d91f      	bls.n	e6 <memcpTmp+0x52>
  a6:	f022 0603 	bic.w	r6, r2, #3
  aa:	440e      	add	r6, r1
  ac:	460b      	mov	r3, r1
  ae:	4604      	mov	r4, r0
  b0:	f853 5b04 	ldr.w	r5, [r3], #4
  b4:	f844 5b04 	str.w	r5, [r4], #4
  b8:	42b3      	cmp	r3, r6
  ba:	d1f9      	bne.n	b0 <memcpTmp+0x1c>
  bc:	f022 0303 	bic.w	r3, r2, #3
  c0:	429a      	cmp	r2, r3
  c2:	eba7 0703 	sub.w	r7, r7, r3
  c6:	eb00 0403 	add.w	r4, r0, r3
  ca:	eb01 0503 	add.w	r5, r1, r3
  ce:	d008      	beq.n	e2 <memcpTmp+0x4e>
  d0:	5cca      	ldrb	r2, [r1, r3]
  d2:	54c2      	strb	r2, [r0, r3]
  d4:	b12f      	cbz	r7, e2 <memcpTmp+0x4e>
  d6:	786b      	ldrb	r3, [r5, #1]
  d8:	7063      	strb	r3, [r4, #1]
  da:	2f01      	cmp	r7, #1
  dc:	d001      	beq.n	e2 <memcpTmp+0x4e>
  de:	78ab      	ldrb	r3, [r5, #2]
  e0:	70a3      	strb	r3, [r4, #2]
  e2:	bcf0      	pop	{r4, r5, r6, r7}
  e4:	4770      	bx	lr
  e6:	3801      	subs	r0, #1
  e8:	440a      	add	r2, r1
  ea:	f811 3b01 	ldrb.w	r3, [r1], #1
  ee:	f800 3f01 	strb.w	r3, [r0, #1]!
  f2:	4291      	cmp	r1, r2
  f4:	d1f9      	bne.n	ea <memcpTmp+0x56>
  f6:	bcf0      	pop	{r4, r5, r6, r7}
  f8:	4770      	bx	lr
  fa:	4770      	bx	lr
  fc:	3801      	subs	r0, #1
  fe:	440a      	add	r2, r1
 100:	f811 3b01 	ldrb.w	r3, [r1], #1
 104:	f800 3f01 	strb.w	r3, [r0, #1]!
 108:	4291      	cmp	r1, r2
 10a:	d1f9      	bne.n	100 <memcpTmp+0x6c>
 10c:	4770      	bx	lr
 10e:	bf00      	nop

00000110 <init_systick_timer>:
 110:	4906      	ldr	r1, [pc, #24]	; (12c <init_systick_timer+0x1c>)
 112:	4b07      	ldr	r3, [pc, #28]	; (130 <init_systick_timer+0x20>)
 114:	680a      	ldr	r2, [r1, #0]
 116:	fbb3 f3f0 	udiv	r3, r3, r0
 11a:	b410      	push	{r4}
 11c:	4c05      	ldr	r4, [pc, #20]	; (134 <init_systick_timer+0x24>)
 11e:	f042 0207 	orr.w	r2, r2, #7
 122:	3b01      	subs	r3, #1
 124:	6023      	str	r3, [r4, #0]
 126:	bc10      	pop	{r4}
 128:	600a      	str	r2, [r1, #0]
 12a:	4770      	bx	lr
 12c:	e000e010 	.word	0xe000e010
 130:	00f42400 	.word	0x00f42400
 134:	e000e014 	.word	0xe000e014

00000138 <init_scheduler_stack>:
 138:	f380 8808 	msr	MSP, r0
 13c:	4770      	bx	lr
 13e:	bf00      	nop

00000140 <init_tasks_stack>:
 140:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 144:	4947      	ldr	r1, [pc, #284]	; (264 <init_tasks_stack+0x124>)
 146:	4c48      	ldr	r4, [pc, #288]	; (268 <init_tasks_stack+0x128>)
 148:	4848      	ldr	r0, [pc, #288]	; (26c <init_tasks_stack+0x12c>)
 14a:	4b49      	ldr	r3, [pc, #292]	; (270 <init_tasks_stack+0x130>)
 14c:	f840 3c08 	str.w	r3, [r0, #-8]
 150:	f04f 7680 	mov.w	r6, #16777216	; 0x1000000
 154:	f840 6c04 	str.w	r6, [r0, #-4]
 158:	4a46      	ldr	r2, [pc, #280]	; (274 <init_tasks_stack+0x134>)
 15a:	60e3      	str	r3, [r4, #12]
 15c:	f06f 0502 	mvn.w	r5, #2
 160:	2300      	movs	r3, #0
 162:	468c      	mov	ip, r1
 164:	f8df e118 	ldr.w	lr, [pc, #280]	; 280 <init_tasks_stack+0x140>
 168:	4f43      	ldr	r7, [pc, #268]	; (278 <init_tasks_stack+0x138>)
 16a:	f8df 8118 	ldr.w	r8, [pc, #280]	; 284 <init_tasks_stack+0x144>
 16e:	e940 3504 	strd	r3, r5, [r0, #-16]
 172:	e940 3306 	strd	r3, r3, [r0, #-24]
 176:	e940 3308 	strd	r3, r3, [r0, #-32]
 17a:	e940 330a 	strd	r3, r3, [r0, #-40]	; 0x28
 17e:	e940 330c 	strd	r3, r3, [r0, #-48]	; 0x30
 182:	e940 330e 	strd	r3, r3, [r0, #-56]	; 0x38
 186:	e940 3310 	strd	r3, r3, [r0, #-64]	; 0x40
 18a:	f8c4 e000 	str.w	lr, [r4]
 18e:	483b      	ldr	r0, [pc, #236]	; (27c <init_tasks_stack+0x13c>)
 190:	f8df e0f4 	ldr.w	lr, [pc, #244]	; 288 <init_tasks_stack+0x148>
 194:	61e7      	str	r7, [r4, #28]
 196:	7223      	strb	r3, [r4, #8]
 198:	7623      	strb	r3, [r4, #24]
 19a:	f884 3028 	strb.w	r3, [r4, #40]	; 0x28
 19e:	f884 3038 	strb.w	r3, [r4, #56]	; 0x38
 1a2:	f884 3048 	strb.w	r3, [r4, #72]	; 0x48
 1a6:	f841 7c08 	str.w	r7, [r1, #-8]
 1aa:	f841 6c04 	str.w	r6, [r1, #-4]
 1ae:	f841 3c14 	str.w	r3, [r1, #-20]
 1b2:	e941 3504 	strd	r3, r5, [r1, #-16]
 1b6:	4617      	mov	r7, r2
 1b8:	62e0      	str	r0, [r4, #44]	; 0x2c
 1ba:	f8c4 803c 	str.w	r8, [r4, #60]	; 0x3c
 1be:	f8c4 e04c 	str.w	lr, [r4, #76]	; 0x4c
 1c2:	e941 3307 	strd	r3, r3, [r1, #-28]
 1c6:	e941 3309 	strd	r3, r3, [r1, #-36]	; 0x24
 1ca:	e941 330b 	strd	r3, r3, [r1, #-44]	; 0x2c
 1ce:	e941 330d 	strd	r3, r3, [r1, #-52]	; 0x34
 1d2:	e941 330f 	strd	r3, r3, [r1, #-60]	; 0x3c
 1d6:	f84c 3d40 	str.w	r3, [ip, #-64]!
 1da:	f5a1 6100 	sub.w	r1, r1, #2048	; 0x800
 1de:	f842 0c08 	str.w	r0, [r2, #-8]
 1e2:	f8c4 c010 	str.w	ip, [r4, #16]
 1e6:	4608      	mov	r0, r1
 1e8:	f842 6c04 	str.w	r6, [r2, #-4]
 1ec:	f842 3c3c 	str.w	r3, [r2, #-60]
 1f0:	e942 3504 	strd	r3, r5, [r2, #-16]
 1f4:	e942 3306 	strd	r3, r3, [r2, #-24]
 1f8:	e942 3308 	strd	r3, r3, [r2, #-32]
 1fc:	e942 330a 	strd	r3, r3, [r2, #-40]	; 0x28
 200:	e942 330c 	strd	r3, r3, [r2, #-48]	; 0x30
 204:	e942 330e 	strd	r3, r3, [r2, #-56]	; 0x38
 208:	f847 3d40 	str.w	r3, [r7, #-64]!
 20c:	f5a2 6200 	sub.w	r2, r2, #2048	; 0x800
 210:	6227      	str	r7, [r4, #32]
 212:	e941 8602 	strd	r8, r6, [r1, #-8]
 216:	e941 3504 	strd	r3, r5, [r1, #-16]
 21a:	e941 3306 	strd	r3, r3, [r1, #-24]
 21e:	e941 3308 	strd	r3, r3, [r1, #-32]
 222:	e941 330a 	strd	r3, r3, [r1, #-40]	; 0x28
 226:	e941 330c 	strd	r3, r3, [r1, #-48]	; 0x30
 22a:	e941 330e 	strd	r3, r3, [r1, #-56]	; 0x38
 22e:	f841 3c3c 	str.w	r3, [r1, #-60]
 232:	f840 3d40 	str.w	r3, [r0, #-64]!
 236:	4611      	mov	r1, r2
 238:	f842 6c04 	str.w	r6, [r2, #-4]
 23c:	6320      	str	r0, [r4, #48]	; 0x30
 23e:	e942 5e03 	strd	r5, lr, [r2, #-12]
 242:	e942 3305 	strd	r3, r3, [r2, #-20]
 246:	e942 3307 	strd	r3, r3, [r2, #-28]
 24a:	e942 3309 	strd	r3, r3, [r2, #-36]	; 0x24
 24e:	e942 330b 	strd	r3, r3, [r2, #-44]	; 0x2c
 252:	e942 330d 	strd	r3, r3, [r2, #-52]	; 0x34
 256:	e942 330f 	strd	r3, r3, [r2, #-60]	; 0x3c
 25a:	f841 3d40 	str.w	r3, [r1, #-64]!
 25e:	6421      	str	r1, [r4, #64]	; 0x40
 260:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 264:	20020000 	.word	0x20020000
 268:	00000000 	.word	0x00000000
 26c:	2001f000 	.word	0x2001f000
 270:	00000000 	.word	0x00000000
 274:	2001fc00 	.word	0x2001fc00
	...
 280:	2001efc0 	.word	0x2001efc0
	...

0000028c <enable_processor_faults>:
 28c:	4a02      	ldr	r2, [pc, #8]	; (298 <enable_processor_faults+0xc>)
 28e:	6813      	ldr	r3, [r2, #0]
 290:	f443 23e0 	orr.w	r3, r3, #458752	; 0x70000
 294:	6013      	str	r3, [r2, #0]
 296:	4770      	bx	lr
 298:	e000ed24 	.word	0xe000ed24

0000029c <get_psp_value>:
 29c:	4b02      	ldr	r3, [pc, #8]	; (2a8 <get_psp_value+0xc>)
 29e:	4a03      	ldr	r2, [pc, #12]	; (2ac <get_psp_value+0x10>)
 2a0:	781b      	ldrb	r3, [r3, #0]
 2a2:	011b      	lsls	r3, r3, #4
 2a4:	58d0      	ldr	r0, [r2, r3]
 2a6:	4770      	bx	lr
	...

000002b0 <save_psp_value>:
 2b0:	4b02      	ldr	r3, [pc, #8]	; (2bc <save_psp_value+0xc>)
 2b2:	4a03      	ldr	r2, [pc, #12]	; (2c0 <save_psp_value+0x10>)
 2b4:	781b      	ldrb	r3, [r3, #0]
 2b6:	011b      	lsls	r3, r3, #4
 2b8:	50d0      	str	r0, [r2, r3]
 2ba:	4770      	bx	lr
	...

000002c4 <update_next_task>:
 2c4:	b430      	push	{r4, r5}
 2c6:	493b      	ldr	r1, [pc, #236]	; (3b4 <update_next_task+0xf0>)
 2c8:	4c3b      	ldr	r4, [pc, #236]	; (3b8 <update_next_task+0xf4>)
 2ca:	780b      	ldrb	r3, [r1, #0]
 2cc:	4a3b      	ldr	r2, [pc, #236]	; (3bc <update_next_task+0xf8>)
 2ce:	3301      	adds	r3, #1
 2d0:	b2db      	uxtb	r3, r3
 2d2:	fba4 0503 	umull	r0, r5, r4, r3
 2d6:	f005 00fc 	and.w	r0, r5, #252	; 0xfc
 2da:	eb00 0095 	add.w	r0, r0, r5, lsr #2
 2de:	1a1b      	subs	r3, r3, r0
 2e0:	b2db      	uxtb	r3, r3
 2e2:	eb02 1003 	add.w	r0, r2, r3, lsl #4
 2e6:	7a00      	ldrb	r0, [r0, #8]
 2e8:	b9f0      	cbnz	r0, 328 <update_next_task+0x64>
 2ea:	b9d3      	cbnz	r3, 322 <update_next_task+0x5e>
 2ec:	7e13      	ldrb	r3, [r2, #24]
 2ee:	2b00      	cmp	r3, #0
 2f0:	d042      	beq.n	378 <update_next_task+0xb4>
 2f2:	f892 3028 	ldrb.w	r3, [r2, #40]	; 0x28
 2f6:	2b00      	cmp	r3, #0
 2f8:	d05a      	beq.n	3b0 <update_next_task+0xec>
 2fa:	2302      	movs	r3, #2
 2fc:	482e      	ldr	r0, [pc, #184]	; (3b8 <update_next_task+0xf4>)
 2fe:	3301      	adds	r3, #1
 300:	b2db      	uxtb	r3, r3
 302:	fba0 4003 	umull	r4, r0, r0, r3
 306:	f000 04fc 	and.w	r4, r0, #252	; 0xfc
 30a:	eb04 0090 	add.w	r0, r4, r0, lsr #2
 30e:	1a1b      	subs	r3, r3, r0
 310:	b2db      	uxtb	r3, r3
 312:	eb02 1003 	add.w	r0, r2, r3, lsl #4
 316:	7a00      	ldrb	r0, [r0, #8]
 318:	b9e8      	cbnz	r0, 356 <update_next_task+0x92>
 31a:	b913      	cbnz	r3, 322 <update_next_task+0x5e>
 31c:	7e13      	ldrb	r3, [r2, #24]
 31e:	b35b      	cbz	r3, 378 <update_next_task+0xb4>
 320:	2300      	movs	r3, #0
 322:	700b      	strb	r3, [r1, #0]
 324:	bc30      	pop	{r4, r5}
 326:	4770      	bx	lr
 328:	3301      	adds	r3, #1
 32a:	b2db      	uxtb	r3, r3
 32c:	fba4 0503 	umull	r0, r5, r4, r3
 330:	f005 00fc 	and.w	r0, r5, #252	; 0xfc
 334:	eb00 0095 	add.w	r0, r0, r5, lsr #2
 338:	1a1b      	subs	r3, r3, r0
 33a:	b2db      	uxtb	r3, r3
 33c:	eb02 1003 	add.w	r0, r2, r3, lsl #4
 340:	7a00      	ldrb	r0, [r0, #8]
 342:	b9e8      	cbnz	r0, 380 <update_next_task+0xbc>
 344:	2b00      	cmp	r3, #0
 346:	d1ec      	bne.n	322 <update_next_task+0x5e>
 348:	7e13      	ldrb	r3, [r2, #24]
 34a:	b1ab      	cbz	r3, 378 <update_next_task+0xb4>
 34c:	f892 3028 	ldrb.w	r3, [r2, #40]	; 0x28
 350:	2b00      	cmp	r3, #0
 352:	d02d      	beq.n	3b0 <update_next_task+0xec>
 354:	2302      	movs	r3, #2
 356:	4818      	ldr	r0, [pc, #96]	; (3b8 <update_next_task+0xf4>)
 358:	3301      	adds	r3, #1
 35a:	b2db      	uxtb	r3, r3
 35c:	fba0 4003 	umull	r4, r0, r0, r3
 360:	f000 04fc 	and.w	r4, r0, #252	; 0xfc
 364:	eb04 0090 	add.w	r0, r4, r0, lsr #2
 368:	1a1b      	subs	r3, r3, r0
 36a:	b2db      	uxtb	r3, r3
 36c:	eb02 1203 	add.w	r2, r2, r3, lsl #4
 370:	7a12      	ldrb	r2, [r2, #8]
 372:	2a00      	cmp	r2, #0
 374:	d0d5      	beq.n	322 <update_next_task+0x5e>
 376:	e7d3      	b.n	320 <update_next_task+0x5c>
 378:	2301      	movs	r3, #1
 37a:	700b      	strb	r3, [r1, #0]
 37c:	bc30      	pop	{r4, r5}
 37e:	4770      	bx	lr
 380:	3301      	adds	r3, #1
 382:	b2db      	uxtb	r3, r3
 384:	fba4 0403 	umull	r0, r4, r4, r3
 388:	f004 00fc 	and.w	r0, r4, #252	; 0xfc
 38c:	eb00 0494 	add.w	r4, r0, r4, lsr #2
 390:	1b1b      	subs	r3, r3, r4
 392:	b2db      	uxtb	r3, r3
 394:	eb02 1003 	add.w	r0, r2, r3, lsl #4
 398:	7a00      	ldrb	r0, [r0, #8]
 39a:	2800      	cmp	r0, #0
 39c:	d1ae      	bne.n	2fc <update_next_task+0x38>
 39e:	2b00      	cmp	r3, #0
 3a0:	d1bf      	bne.n	322 <update_next_task+0x5e>
 3a2:	7e13      	ldrb	r3, [r2, #24]
 3a4:	2b00      	cmp	r3, #0
 3a6:	d0e7      	beq.n	378 <update_next_task+0xb4>
 3a8:	f892 3028 	ldrb.w	r3, [r2, #40]	; 0x28
 3ac:	2b00      	cmp	r3, #0
 3ae:	d1b7      	bne.n	320 <update_next_task+0x5c>
 3b0:	2302      	movs	r3, #2
 3b2:	e7b6      	b.n	322 <update_next_task+0x5e>
 3b4:	00000000 	.word	0x00000000
 3b8:	cccccccd 	.word	0xcccccccd
 3bc:	00000000 	.word	0x00000000

000003c0 <switch_sp_to_psp>:
 3c0:	b500      	push	{lr}
 3c2:	f7ff fffe 	bl	29c <get_psp_value>
 3c6:	f380 8809 	msr	PSP, r0
 3ca:	f85d eb04 	ldr.w	lr, [sp], #4
 3ce:	f04f 0002 	mov.w	r0, #2
 3d2:	f380 8814 	msr	CONTROL, r0
 3d6:	4770      	bx	lr

000003d8 <schedule>:
 3d8:	4a02      	ldr	r2, [pc, #8]	; (3e4 <schedule+0xc>)
 3da:	6813      	ldr	r3, [r2, #0]
 3dc:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 3e0:	6013      	str	r3, [r2, #0]
 3e2:	4770      	bx	lr
 3e4:	e000ed04 	.word	0xe000ed04

000003e8 <task_delay>:
 3e8:	f04f 0001 	mov.w	r0, #1
 3ec:	f380 8810 	msr	PRIMASK, r0
 3f0:	4b0e      	ldr	r3, [pc, #56]	; (42c <task_delay+0x44>)
 3f2:	781a      	ldrb	r2, [r3, #0]
 3f4:	b1a2      	cbz	r2, 420 <task_delay+0x38>
 3f6:	490e      	ldr	r1, [pc, #56]	; (430 <task_delay+0x48>)
 3f8:	4b0e      	ldr	r3, [pc, #56]	; (434 <task_delay+0x4c>)
 3fa:	6809      	ldr	r1, [r1, #0]
 3fc:	eb03 1302 	add.w	r3, r3, r2, lsl #4
 400:	b410      	push	{r4}
 402:	4408      	add	r0, r1
 404:	4c0c      	ldr	r4, [pc, #48]	; (438 <task_delay+0x50>)
 406:	6058      	str	r0, [r3, #4]
 408:	22ff      	movs	r2, #255	; 0xff
 40a:	721a      	strb	r2, [r3, #8]
 40c:	6823      	ldr	r3, [r4, #0]
 40e:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 412:	6023      	str	r3, [r4, #0]
 414:	f04f 0000 	mov.w	r0, #0
 418:	f380 8810 	msr	PRIMASK, r0
 41c:	bc10      	pop	{r4}
 41e:	4770      	bx	lr
 420:	f04f 0000 	mov.w	r0, #0
 424:	f380 8810 	msr	PRIMASK, r0
 428:	4770      	bx	lr
 42a:	bf00      	nop
	...
 438:	e000ed04 	.word	0xe000ed04

0000043c <PendSV_Handler>:
 43c:	f3ef 8009 	mrs	r0, PSP
 440:	e920 0ff0 	stmdb	r0!, {r4, r5, r6, r7, r8, r9, sl, fp}
 444:	b500      	push	{lr}
 446:	f7ff fffe 	bl	2b0 <save_psp_value>
 44a:	f7ff fffe 	bl	2c4 <update_next_task>
 44e:	f7ff fffe 	bl	29c <get_psp_value>
 452:	e8b0 0ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp}
 456:	f380 8809 	msr	PSP, r0
 45a:	f85d eb04 	ldr.w	lr, [sp], #4
 45e:	4770      	bx	lr

00000460 <update_global_tick_count>:
 460:	4a02      	ldr	r2, [pc, #8]	; (46c <update_global_tick_count+0xc>)
 462:	6813      	ldr	r3, [r2, #0]
 464:	3301      	adds	r3, #1
 466:	6013      	str	r3, [r2, #0]
 468:	4770      	bx	lr
 46a:	bf00      	nop
 46c:	00000000 	.word	0x00000000

00000470 <unblock_tasks>:
 470:	4b12      	ldr	r3, [pc, #72]	; (4bc <unblock_tasks+0x4c>)
 472:	4a13      	ldr	r2, [pc, #76]	; (4c0 <unblock_tasks+0x50>)
 474:	7e19      	ldrb	r1, [r3, #24]
 476:	6812      	ldr	r2, [r2, #0]
 478:	b121      	cbz	r1, 484 <unblock_tasks+0x14>
 47a:	6959      	ldr	r1, [r3, #20]
 47c:	428a      	cmp	r2, r1
 47e:	bf04      	itt	eq
 480:	2100      	moveq	r1, #0
 482:	7619      	strbeq	r1, [r3, #24]
 484:	f893 1028 	ldrb.w	r1, [r3, #40]	; 0x28
 488:	b129      	cbz	r1, 496 <unblock_tasks+0x26>
 48a:	6a59      	ldr	r1, [r3, #36]	; 0x24
 48c:	428a      	cmp	r2, r1
 48e:	bf04      	itt	eq
 490:	2100      	moveq	r1, #0
 492:	f883 1028 	strbeq.w	r1, [r3, #40]	; 0x28
 496:	f893 1038 	ldrb.w	r1, [r3, #56]	; 0x38
 49a:	b129      	cbz	r1, 4a8 <unblock_tasks+0x38>
 49c:	6b59      	ldr	r1, [r3, #52]	; 0x34
 49e:	428a      	cmp	r2, r1
 4a0:	bf04      	itt	eq
 4a2:	2100      	moveq	r1, #0
 4a4:	f883 1038 	strbeq.w	r1, [r3, #56]	; 0x38
 4a8:	f893 1048 	ldrb.w	r1, [r3, #72]	; 0x48
 4ac:	b129      	cbz	r1, 4ba <unblock_tasks+0x4a>
 4ae:	6c59      	ldr	r1, [r3, #68]	; 0x44
 4b0:	4291      	cmp	r1, r2
 4b2:	bf04      	itt	eq
 4b4:	2200      	moveq	r2, #0
 4b6:	f883 2048 	strbeq.w	r2, [r3, #72]	; 0x48
 4ba:	4770      	bx	lr
	...

000004c4 <SysTick_Handler>:
 4c4:	4916      	ldr	r1, [pc, #88]	; (520 <SysTick_Handler+0x5c>)
 4c6:	4b17      	ldr	r3, [pc, #92]	; (524 <SysTick_Handler+0x60>)
 4c8:	680a      	ldr	r2, [r1, #0]
 4ca:	7e18      	ldrb	r0, [r3, #24]
 4cc:	3201      	adds	r2, #1
 4ce:	600a      	str	r2, [r1, #0]
 4d0:	b120      	cbz	r0, 4dc <SysTick_Handler+0x18>
 4d2:	6959      	ldr	r1, [r3, #20]
 4d4:	428a      	cmp	r2, r1
 4d6:	bf04      	itt	eq
 4d8:	2100      	moveq	r1, #0
 4da:	7619      	strbeq	r1, [r3, #24]
 4dc:	f893 1028 	ldrb.w	r1, [r3, #40]	; 0x28
 4e0:	b129      	cbz	r1, 4ee <SysTick_Handler+0x2a>
 4e2:	6a59      	ldr	r1, [r3, #36]	; 0x24
 4e4:	428a      	cmp	r2, r1
 4e6:	bf04      	itt	eq
 4e8:	2100      	moveq	r1, #0
 4ea:	f883 1028 	strbeq.w	r1, [r3, #40]	; 0x28
 4ee:	f893 1038 	ldrb.w	r1, [r3, #56]	; 0x38
 4f2:	b129      	cbz	r1, 500 <SysTick_Handler+0x3c>
 4f4:	6b59      	ldr	r1, [r3, #52]	; 0x34
 4f6:	428a      	cmp	r2, r1
 4f8:	bf04      	itt	eq
 4fa:	2100      	moveq	r1, #0
 4fc:	f883 1038 	strbeq.w	r1, [r3, #56]	; 0x38
 500:	f893 1048 	ldrb.w	r1, [r3, #72]	; 0x48
 504:	b129      	cbz	r1, 512 <SysTick_Handler+0x4e>
 506:	6c59      	ldr	r1, [r3, #68]	; 0x44
 508:	4291      	cmp	r1, r2
 50a:	bf04      	itt	eq
 50c:	2200      	moveq	r2, #0
 50e:	f883 2048 	strbeq.w	r2, [r3, #72]	; 0x48
 512:	4a05      	ldr	r2, [pc, #20]	; (528 <SysTick_Handler+0x64>)
 514:	6813      	ldr	r3, [r2, #0]
 516:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 51a:	6013      	str	r3, [r2, #0]
 51c:	4770      	bx	lr
 51e:	bf00      	nop
	...
 528:	e000ed04 	.word	0xe000ed04

0000052c <HardFault_Handler>:
 52c:	b508      	push	{r3, lr}
 52e:	4802      	ldr	r0, [pc, #8]	; (538 <HardFault_Handler+0xc>)
 530:	f7ff fffe 	bl	0 <puts>
 534:	e7fe      	b.n	534 <HardFault_Handler+0x8>
 536:	bf00      	nop
 538:	00000000 	.word	0x00000000

0000053c <MemManage_Handler>:
 53c:	b508      	push	{r3, lr}
 53e:	4802      	ldr	r0, [pc, #8]	; (548 <MemManage_Handler+0xc>)
 540:	f7ff fffe 	bl	0 <puts>
 544:	e7fe      	b.n	544 <MemManage_Handler+0x8>
 546:	bf00      	nop
 548:	00000018 	.word	0x00000018

0000054c <BusFault_Handler>:
 54c:	b508      	push	{r3, lr}
 54e:	4802      	ldr	r0, [pc, #8]	; (558 <BusFault_Handler+0xc>)
 550:	f7ff fffe 	bl	0 <puts>
 554:	e7fe      	b.n	554 <BusFault_Handler+0x8>
 556:	bf00      	nop
 558:	00000030 	.word	0x00000030

Disassembly of section .text.startup:

00000000 <main>:
   0:	4a0c      	ldr	r2, [pc, #48]	; (34 <main+0x34>)
   2:	480d      	ldr	r0, [pc, #52]	; (38 <main+0x38>)
   4:	b508      	push	{r3, lr}
   6:	6813      	ldr	r3, [r2, #0]
   8:	f443 23e0 	orr.w	r3, r3, #458752	; 0x70000
   c:	6013      	str	r3, [r2, #0]
   e:	f7ff fffe 	bl	138 <init_scheduler_stack>
  12:	f7ff fffe 	bl	140 <init_tasks_stack>
  16:	f7ff fffe 	bl	0 <led_init_all>
  1a:	4a08      	ldr	r2, [pc, #32]	; (3c <main+0x3c>)
  1c:	4908      	ldr	r1, [pc, #32]	; (40 <main+0x40>)
  1e:	6813      	ldr	r3, [r2, #0]
  20:	f643 607f 	movw	r0, #15999	; 0x3e7f
  24:	f043 0307 	orr.w	r3, r3, #7
  28:	6013      	str	r3, [r2, #0]
  2a:	6008      	str	r0, [r1, #0]
  2c:	f7ff fffe 	bl	3c0 <switch_sp_to_psp>
  30:	f7ff fffe 	bl	4 <main+0x4>
  34:	e000ed24 	.word	0xe000ed24
  38:	2001ec00 	.word	0x2001ec00
  3c:	e000e010 	.word	0xe000e010
  40:	e000e014 	.word	0xe000e014
