
add:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ed018193          	addi	gp,gp,-304 # 11f80 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11798 <_edata>
   100bc:	86818613          	addi	a2,gp,-1944 # 117e8 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	2b6000ef          	jal	ra,1037a <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	1fc50513          	addi	a0,a0,508 # 102c4 <__libc_fini_array>
   100d0:	00000097          	auipc	ra,0x0
   100d4:	1c0080e7          	jalr	448(ra) # 10290 <atexit>
   100d8:	00000097          	auipc	ra,0x0
   100dc:	23a080e7          	jalr	570(ra) # 10312 <__libc_init_array>
   100e0:	4502                	lw	a0,0(sp)
   100e2:	002c                	addi	a1,sp,8
   100e4:	4601                	li	a2,0
   100e6:	00000097          	auipc	ra,0x0
   100ea:	0c6080e7          	jalr	198(ra) # 101ac <main>
   100ee:	00000317          	auipc	t1,0x0
   100f2:	1b030067          	jr	432(t1) # 1029e <exit>

00000000000100f6 <_fini>:
   100f6:	8082                	ret

00000000000100f8 <deregister_tm_clones>:
   100f8:	6545                	lui	a0,0x11
   100fa:	67c5                	lui	a5,0x11
   100fc:	78050713          	addi	a4,a0,1920 # 11780 <__TMC_END__>
   10100:	78078793          	addi	a5,a5,1920 # 11780 <__TMC_END__>
   10104:	00e78b63          	beq	a5,a4,1011a <deregister_tm_clones+0x22>
   10108:	00000337          	lui	t1,0x0
   1010c:	00030313          	mv	t1,t1
   10110:	00030563          	beqz	t1,1011a <deregister_tm_clones+0x22>
   10114:	78050513          	addi	a0,a0,1920
   10118:	8302                	jr	t1
   1011a:	8082                	ret

000000000001011c <register_tm_clones>:
   1011c:	67c5                	lui	a5,0x11
   1011e:	6545                	lui	a0,0x11
   10120:	78078593          	addi	a1,a5,1920 # 11780 <__TMC_END__>
   10124:	78050793          	addi	a5,a0,1920 # 11780 <__TMC_END__>
   10128:	8d9d                	sub	a1,a1,a5
   1012a:	858d                	srai	a1,a1,0x3
   1012c:	4789                	li	a5,2
   1012e:	02f5c5b3          	div	a1,a1,a5
   10132:	c991                	beqz	a1,10146 <register_tm_clones+0x2a>
   10134:	00000337          	lui	t1,0x0
   10138:	00030313          	mv	t1,t1
   1013c:	00030563          	beqz	t1,10146 <register_tm_clones+0x2a>
   10140:	78050513          	addi	a0,a0,1920
   10144:	8302                	jr	t1
   10146:	8082                	ret

0000000000010148 <__do_global_dtors_aux>:
   10148:	8201c703          	lbu	a4,-2016(gp) # 117a0 <completed.5184>
   1014c:	eb15                	bnez	a4,10180 <__do_global_dtors_aux+0x38>
   1014e:	1141                	addi	sp,sp,-16
   10150:	e022                	sd	s0,0(sp)
   10152:	e406                	sd	ra,8(sp)
   10154:	843e                	mv	s0,a5
   10156:	fa3ff0ef          	jal	ra,100f8 <deregister_tm_clones>
   1015a:	000007b7          	lui	a5,0x0
   1015e:	00078793          	mv	a5,a5
   10162:	cb81                	beqz	a5,10172 <__do_global_dtors_aux+0x2a>
   10164:	6545                	lui	a0,0x11
   10166:	94c50513          	addi	a0,a0,-1716 # 1094c <__EH_FRAME_BEGIN__>
   1016a:	ffff0097          	auipc	ra,0xffff0
   1016e:	e96080e7          	jalr	-362(ra) # 0 <_start-0x100b0>
   10172:	4785                	li	a5,1
   10174:	82f18023          	sb	a5,-2016(gp) # 117a0 <completed.5184>
   10178:	60a2                	ld	ra,8(sp)
   1017a:	6402                	ld	s0,0(sp)
   1017c:	0141                	addi	sp,sp,16
   1017e:	8082                	ret
   10180:	8082                	ret

0000000000010182 <frame_dummy>:
   10182:	000007b7          	lui	a5,0x0
   10186:	00078793          	mv	a5,a5
   1018a:	cf99                	beqz	a5,101a8 <frame_dummy+0x26>
   1018c:	65c5                	lui	a1,0x11
   1018e:	6545                	lui	a0,0x11
   10190:	1141                	addi	sp,sp,-16
   10192:	7a858593          	addi	a1,a1,1960 # 117a8 <object.5189>
   10196:	94c50513          	addi	a0,a0,-1716 # 1094c <__EH_FRAME_BEGIN__>
   1019a:	e406                	sd	ra,8(sp)
   1019c:	ffff0097          	auipc	ra,0xffff0
   101a0:	e64080e7          	jalr	-412(ra) # 0 <_start-0x100b0>
   101a4:	60a2                	ld	ra,8(sp)
   101a6:	0141                	addi	sp,sp,16
   101a8:	f75ff06f          	j	1011c <register_tm_clones>

00000000000101ac <main>:
   101ac:	fe010113          	addi	sp,sp,-32
   101b0:	00813c23          	sd	s0,24(sp)
   101b4:	02010413          	addi	s0,sp,32
   101b8:	fe042623          	sw	zero,-20(s0)
   101bc:	fe042623          	sw	zero,-20(s0)
   101c0:	0480006f          	j	10208 <main+0x5c>
   101c4:	000117b7          	lui	a5,0x11
   101c8:	fec42703          	lw	a4,-20(s0)
   101cc:	00271713          	slli	a4,a4,0x2
   101d0:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   101d4:	00f707b3          	add	a5,a4,a5
   101d8:	0007a783          	lw	a5,0(a5)
   101dc:	00a7879b          	addiw	a5,a5,10
   101e0:	0007871b          	sext.w	a4,a5
   101e4:	000117b7          	lui	a5,0x11
   101e8:	fec42683          	lw	a3,-20(s0)
   101ec:	00269693          	slli	a3,a3,0x2
   101f0:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   101f4:	00f687b3          	add	a5,a3,a5
   101f8:	00e7a023          	sw	a4,0(a5)
   101fc:	fec42783          	lw	a5,-20(s0)
   10200:	0017879b          	addiw	a5,a5,1
   10204:	fef42623          	sw	a5,-20(s0)
   10208:	fec42783          	lw	a5,-20(s0)
   1020c:	0007871b          	sext.w	a4,a5
   10210:	00400793          	li	a5,4
   10214:	fae7d8e3          	ble	a4,a5,101c4 <main+0x18>
   10218:	00500793          	li	a5,5
   1021c:	fef42623          	sw	a5,-20(s0)
   10220:	0480006f          	j	10268 <main+0xbc>
   10224:	000117b7          	lui	a5,0x11
   10228:	fec42703          	lw	a4,-20(s0)
   1022c:	00271713          	slli	a4,a4,0x2
   10230:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   10234:	00f707b3          	add	a5,a4,a5
   10238:	0007a783          	lw	a5,0(a5)
   1023c:	ffb7879b          	addiw	a5,a5,-5
   10240:	0007871b          	sext.w	a4,a5
   10244:	000117b7          	lui	a5,0x11
   10248:	fec42683          	lw	a3,-20(s0)
   1024c:	00269693          	slli	a3,a3,0x2
   10250:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   10254:	00f687b3          	add	a5,a3,a5
   10258:	00e7a023          	sw	a4,0(a5)
   1025c:	fec42783          	lw	a5,-20(s0)
   10260:	0017879b          	addiw	a5,a5,1
   10264:	fef42623          	sw	a5,-20(s0)
   10268:	fec42783          	lw	a5,-20(s0)
   1026c:	0007871b          	sext.w	a4,a5
   10270:	00900793          	li	a5,9
   10274:	fae7d8e3          	ble	a4,a5,10224 <main+0x78>
   10278:	00000793          	li	a5,0
   1027c:	00078513          	mv	a0,a5
   10280:	01813403          	ld	s0,24(sp)
   10284:	02010113          	addi	sp,sp,32
   10288:	00008067          	ret
   1028c:	0000                	unimp
	...

0000000000010290 <atexit>:
   10290:	85aa                	mv	a1,a0
   10292:	4681                	li	a3,0
   10294:	4601                	li	a2,0
   10296:	4501                	li	a0,0
   10298:	18c0006f          	j	10424 <__register_exitproc>
	...

000000000001029e <exit>:
   1029e:	1141                	addi	sp,sp,-16
   102a0:	4581                	li	a1,0
   102a2:	e022                	sd	s0,0(sp)
   102a4:	e406                	sd	ra,8(sp)
   102a6:	842a                	mv	s0,a0
   102a8:	1e4000ef          	jal	ra,1048c <__call_exitprocs>
   102ac:	67c5                	lui	a5,0x11
   102ae:	7887b503          	ld	a0,1928(a5) # 11788 <_global_impure_ptr>
   102b2:	6d3c                	ld	a5,88(a0)
   102b4:	c391                	beqz	a5,102b8 <exit+0x1a>
   102b6:	9782                	jalr	a5
   102b8:	8522                	mv	a0,s0
   102ba:	00000097          	auipc	ra,0x0
   102be:	66e080e7          	jalr	1646(ra) # 10928 <_exit>
	...

00000000000102c4 <__libc_fini_array>:
   102c4:	7179                	addi	sp,sp,-48
   102c6:	67c5                	lui	a5,0x11
   102c8:	6745                	lui	a4,0x11
   102ca:	f022                	sd	s0,32(sp)
   102cc:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   102d0:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   102d4:	8c19                	sub	s0,s0,a4
   102d6:	ec26                	sd	s1,24(sp)
   102d8:	e84a                	sd	s2,16(sp)
   102da:	e44e                	sd	s3,8(sp)
   102dc:	f406                	sd	ra,40(sp)
   102de:	840d                	srai	s0,s0,0x3
   102e0:	4481                	li	s1,0
   102e2:	01078913          	addi	s2,a5,16
   102e6:	59e1                	li	s3,-8
   102e8:	00941c63          	bne	s0,s1,10300 <__libc_fini_array+0x3c>
   102ec:	7402                	ld	s0,32(sp)
   102ee:	70a2                	ld	ra,40(sp)
   102f0:	64e2                	ld	s1,24(sp)
   102f2:	6942                	ld	s2,16(sp)
   102f4:	69a2                	ld	s3,8(sp)
   102f6:	6145                	addi	sp,sp,48
   102f8:	00000317          	auipc	t1,0x0
   102fc:	dfe30067          	jr	-514(t1) # 100f6 <_fini>
   10300:	033487b3          	mul	a5,s1,s3
   10304:	0485                	addi	s1,s1,1
   10306:	97ca                	add	a5,a5,s2
   10308:	ff87b783          	ld	a5,-8(a5)
   1030c:	9782                	jalr	a5
   1030e:	bfe9                	j	102e8 <__libc_fini_array+0x24>
	...

0000000000010312 <__libc_init_array>:
   10312:	1101                	addi	sp,sp,-32
   10314:	e822                	sd	s0,16(sp)
   10316:	e426                	sd	s1,8(sp)
   10318:	6445                	lui	s0,0x11
   1031a:	64c5                	lui	s1,0x11
   1031c:	00048793          	mv	a5,s1
   10320:	00040413          	mv	s0,s0
   10324:	8c1d                	sub	s0,s0,a5
   10326:	e04a                	sd	s2,0(sp)
   10328:	ec06                	sd	ra,24(sp)
   1032a:	840d                	srai	s0,s0,0x3
   1032c:	00048493          	mv	s1,s1
   10330:	4901                	li	s2,0
   10332:	02891963          	bne	s2,s0,10364 <__libc_init_array+0x52>
   10336:	64c5                	lui	s1,0x11
   10338:	00000097          	auipc	ra,0x0
   1033c:	dbe080e7          	jalr	-578(ra) # 100f6 <_fini>
   10340:	6445                	lui	s0,0x11
   10342:	00048793          	mv	a5,s1
   10346:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   1034a:	8c1d                	sub	s0,s0,a5
   1034c:	840d                	srai	s0,s0,0x3
   1034e:	00048493          	mv	s1,s1
   10352:	4901                	li	s2,0
   10354:	00891d63          	bne	s2,s0,1036e <__libc_init_array+0x5c>
   10358:	60e2                	ld	ra,24(sp)
   1035a:	6442                	ld	s0,16(sp)
   1035c:	64a2                	ld	s1,8(sp)
   1035e:	6902                	ld	s2,0(sp)
   10360:	6105                	addi	sp,sp,32
   10362:	8082                	ret
   10364:	609c                	ld	a5,0(s1)
   10366:	0905                	addi	s2,s2,1
   10368:	04a1                	addi	s1,s1,8
   1036a:	9782                	jalr	a5
   1036c:	b7d9                	j	10332 <__libc_init_array+0x20>
   1036e:	609c                	ld	a5,0(s1)
   10370:	0905                	addi	s2,s2,1
   10372:	04a1                	addi	s1,s1,8
   10374:	9782                	jalr	a5
   10376:	bff9                	j	10354 <__libc_init_array+0x42>
	...

000000000001037a <memset>:
   1037a:	483d                	li	a6,15
   1037c:	872a                	mv	a4,a0
   1037e:	02c87163          	bleu	a2,a6,103a0 <memset+0x26>
   10382:	00f77793          	andi	a5,a4,15
   10386:	e3c1                	bnez	a5,10406 <memset+0x8c>
   10388:	e1bd                	bnez	a1,103ee <memset+0x74>
   1038a:	ff067693          	andi	a3,a2,-16
   1038e:	8a3d                	andi	a2,a2,15
   10390:	96ba                	add	a3,a3,a4
   10392:	e30c                	sd	a1,0(a4)
   10394:	e70c                	sd	a1,8(a4)
   10396:	0741                	addi	a4,a4,16
   10398:	fed76de3          	bltu	a4,a3,10392 <memset+0x18>
   1039c:	e211                	bnez	a2,103a0 <memset+0x26>
   1039e:	8082                	ret
   103a0:	40c806b3          	sub	a3,a6,a2
   103a4:	068a                	slli	a3,a3,0x2
   103a6:	00000297          	auipc	t0,0x0
   103aa:	9696                	add	a3,a3,t0
   103ac:	00a68067          	jr	10(a3)
   103b0:	00b70723          	sb	a1,14(a4)
   103b4:	00b706a3          	sb	a1,13(a4)
   103b8:	00b70623          	sb	a1,12(a4)
   103bc:	00b705a3          	sb	a1,11(a4)
   103c0:	00b70523          	sb	a1,10(a4)
   103c4:	00b704a3          	sb	a1,9(a4)
   103c8:	00b70423          	sb	a1,8(a4)
   103cc:	00b703a3          	sb	a1,7(a4)
   103d0:	00b70323          	sb	a1,6(a4)
   103d4:	00b702a3          	sb	a1,5(a4)
   103d8:	00b70223          	sb	a1,4(a4)
   103dc:	00b701a3          	sb	a1,3(a4)
   103e0:	00b70123          	sb	a1,2(a4)
   103e4:	00b700a3          	sb	a1,1(a4)
   103e8:	00b70023          	sb	a1,0(a4)
   103ec:	8082                	ret
   103ee:	0ff5f593          	andi	a1,a1,255
   103f2:	00859693          	slli	a3,a1,0x8
   103f6:	8dd5                	or	a1,a1,a3
   103f8:	01059693          	slli	a3,a1,0x10
   103fc:	8dd5                	or	a1,a1,a3
   103fe:	02059693          	slli	a3,a1,0x20
   10402:	8dd5                	or	a1,a1,a3
   10404:	b759                	j	1038a <memset+0x10>
   10406:	00279693          	slli	a3,a5,0x2
   1040a:	00000297          	auipc	t0,0x0
   1040e:	9696                	add	a3,a3,t0
   10410:	8286                	mv	t0,ra
   10412:	fa2680e7          	jalr	-94(a3)
   10416:	8096                	mv	ra,t0
   10418:	17c1                	addi	a5,a5,-16
   1041a:	8f1d                	sub	a4,a4,a5
   1041c:	963e                	add	a2,a2,a5
   1041e:	f8c871e3          	bleu	a2,a6,103a0 <memset+0x26>
   10422:	b79d                	j	10388 <memset+0xe>

0000000000010424 <__register_exitproc>:
   10424:	67c5                	lui	a5,0x11
   10426:	7887b703          	ld	a4,1928(a5) # 11788 <_global_impure_ptr>
   1042a:	832a                	mv	t1,a0
   1042c:	1f873783          	ld	a5,504(a4)
   10430:	e789                	bnez	a5,1043a <__register_exitproc+0x16>
   10432:	20070793          	addi	a5,a4,512
   10436:	1ef73c23          	sd	a5,504(a4)
   1043a:	4798                	lw	a4,8(a5)
   1043c:	487d                	li	a6,31
   1043e:	557d                	li	a0,-1
   10440:	04e84463          	blt	a6,a4,10488 <__register_exitproc+0x64>
   10444:	02030a63          	beqz	t1,10478 <__register_exitproc+0x54>
   10448:	00371813          	slli	a6,a4,0x3
   1044c:	983e                	add	a6,a6,a5
   1044e:	10c83823          	sd	a2,272(a6)
   10452:	3107a883          	lw	a7,784(a5)
   10456:	4605                	li	a2,1
   10458:	00e6163b          	sllw	a2,a2,a4
   1045c:	00c8e8b3          	or	a7,a7,a2
   10460:	3117a823          	sw	a7,784(a5)
   10464:	20d83823          	sd	a3,528(a6)
   10468:	4689                	li	a3,2
   1046a:	00d31763          	bne	t1,a3,10478 <__register_exitproc+0x54>
   1046e:	3147a683          	lw	a3,788(a5)
   10472:	8e55                	or	a2,a2,a3
   10474:	30c7aa23          	sw	a2,788(a5)
   10478:	0017069b          	addiw	a3,a4,1
   1047c:	0709                	addi	a4,a4,2
   1047e:	070e                	slli	a4,a4,0x3
   10480:	c794                	sw	a3,8(a5)
   10482:	97ba                	add	a5,a5,a4
   10484:	e38c                	sd	a1,0(a5)
   10486:	4501                	li	a0,0
   10488:	8082                	ret
	...

000000000001048c <__call_exitprocs>:
   1048c:	715d                	addi	sp,sp,-80
   1048e:	67c5                	lui	a5,0x11
   10490:	f44e                	sd	s3,40(sp)
   10492:	7887b983          	ld	s3,1928(a5) # 11788 <_global_impure_ptr>
   10496:	f052                	sd	s4,32(sp)
   10498:	ec56                	sd	s5,24(sp)
   1049a:	e85a                	sd	s6,16(sp)
   1049c:	e486                	sd	ra,72(sp)
   1049e:	e0a2                	sd	s0,64(sp)
   104a0:	fc26                	sd	s1,56(sp)
   104a2:	f84a                	sd	s2,48(sp)
   104a4:	e45e                	sd	s7,8(sp)
   104a6:	8aaa                	mv	s5,a0
   104a8:	8a2e                	mv	s4,a1
   104aa:	4b05                	li	s6,1
   104ac:	1f89b403          	ld	s0,504(s3)
   104b0:	c801                	beqz	s0,104c0 <__call_exitprocs+0x34>
   104b2:	4404                	lw	s1,8(s0)
   104b4:	34fd                	addiw	s1,s1,-1
   104b6:	00349913          	slli	s2,s1,0x3
   104ba:	9922                	add	s2,s2,s0
   104bc:	0004dd63          	bgez	s1,104d6 <__call_exitprocs+0x4a>
   104c0:	60a6                	ld	ra,72(sp)
   104c2:	6406                	ld	s0,64(sp)
   104c4:	74e2                	ld	s1,56(sp)
   104c6:	7942                	ld	s2,48(sp)
   104c8:	79a2                	ld	s3,40(sp)
   104ca:	7a02                	ld	s4,32(sp)
   104cc:	6ae2                	ld	s5,24(sp)
   104ce:	6b42                	ld	s6,16(sp)
   104d0:	6ba2                	ld	s7,8(sp)
   104d2:	6161                	addi	sp,sp,80
   104d4:	8082                	ret
   104d6:	000a0963          	beqz	s4,104e8 <__call_exitprocs+0x5c>
   104da:	21093783          	ld	a5,528(s2)
   104de:	01478563          	beq	a5,s4,104e8 <__call_exitprocs+0x5c>
   104e2:	34fd                	addiw	s1,s1,-1
   104e4:	1961                	addi	s2,s2,-8
   104e6:	bfd9                	j	104bc <__call_exitprocs+0x30>
   104e8:	441c                	lw	a5,8(s0)
   104ea:	01093683          	ld	a3,16(s2)
   104ee:	37fd                	addiw	a5,a5,-1
   104f0:	02979663          	bne	a5,s1,1051c <__call_exitprocs+0x90>
   104f4:	c404                	sw	s1,8(s0)
   104f6:	d6f5                	beqz	a3,104e2 <__call_exitprocs+0x56>
   104f8:	31042703          	lw	a4,784(s0)
   104fc:	009b163b          	sllw	a2,s6,s1
   10500:	00842b83          	lw	s7,8(s0)
   10504:	8f71                	and	a4,a4,a2
   10506:	2701                	sext.w	a4,a4
   10508:	ef09                	bnez	a4,10522 <__call_exitprocs+0x96>
   1050a:	9682                	jalr	a3
   1050c:	4418                	lw	a4,8(s0)
   1050e:	1f89b783          	ld	a5,504(s3)
   10512:	f9771de3          	bne	a4,s7,104ac <__call_exitprocs+0x20>
   10516:	fcf406e3          	beq	s0,a5,104e2 <__call_exitprocs+0x56>
   1051a:	bf49                	j	104ac <__call_exitprocs+0x20>
   1051c:	00093823          	sd	zero,16(s2)
   10520:	bfd9                	j	104f6 <__call_exitprocs+0x6a>
   10522:	31442783          	lw	a5,788(s0)
   10526:	11093583          	ld	a1,272(s2)
   1052a:	8ff1                	and	a5,a5,a2
   1052c:	2781                	sext.w	a5,a5
   1052e:	e781                	bnez	a5,10536 <__call_exitprocs+0xaa>
   10530:	8556                	mv	a0,s5
   10532:	9682                	jalr	a3
   10534:	bfe1                	j	1050c <__call_exitprocs+0x80>
   10536:	852e                	mv	a0,a1
   10538:	9682                	jalr	a3
   1053a:	bfc9                	j	1050c <__call_exitprocs+0x80>
	...

000000000001053e <conv_stat>:
   1053e:	619c                	ld	a5,0(a1)
   10540:	00f51023          	sh	a5,0(a0)
   10544:	659c                	ld	a5,8(a1)
   10546:	00f51123          	sh	a5,2(a0)
   1054a:	499c                	lw	a5,16(a1)
   1054c:	c15c                	sw	a5,4(a0)
   1054e:	49dc                	lw	a5,20(a1)
   10550:	00f51423          	sh	a5,8(a0)
   10554:	4d9c                	lw	a5,24(a1)
   10556:	00f51523          	sh	a5,10(a0)
   1055a:	4ddc                	lw	a5,28(a1)
   1055c:	00f51623          	sh	a5,12(a0)
   10560:	719c                	ld	a5,32(a1)
   10562:	00f51723          	sh	a5,14(a0)
   10566:	799c                	ld	a5,48(a1)
   10568:	e91c                	sd	a5,16(a0)
   1056a:	61bc                	ld	a5,64(a1)
   1056c:	e93c                	sd	a5,80(a0)
   1056e:	5d9c                	lw	a5,56(a1)
   10570:	e53c                	sd	a5,72(a0)
   10572:	65bc                	ld	a5,72(a1)
   10574:	ed1c                	sd	a5,24(a0)
   10576:	6dbc                	ld	a5,88(a1)
   10578:	f51c                	sd	a5,40(a0)
   1057a:	75bc                	ld	a5,104(a1)
   1057c:	fd1c                	sd	a5,56(a0)
   1057e:	8082                	ret

0000000000010580 <__syscall_error>:
   10580:	1141                	addi	sp,sp,-16
   10582:	e022                	sd	s0,0(sp)
   10584:	e406                	sd	ra,8(sp)
   10586:	842a                	mv	s0,a0
   10588:	00000097          	auipc	ra,0x0
   1058c:	3ba080e7          	jalr	954(ra) # 10942 <__errno>
   10590:	408007bb          	negw	a5,s0
   10594:	60a2                	ld	ra,8(sp)
   10596:	6402                	ld	s0,0(sp)
   10598:	c11c                	sw	a5,0(a0)
   1059a:	557d                	li	a0,-1
   1059c:	0141                	addi	sp,sp,16
   1059e:	8082                	ret

00000000000105a0 <__internal_syscall>:
   105a0:	88aa                	mv	a7,a0
   105a2:	852e                	mv	a0,a1
   105a4:	85b2                	mv	a1,a2
   105a6:	8636                	mv	a2,a3
   105a8:	86ba                	mv	a3,a4
   105aa:	00000073          	ecall
   105ae:	00055663          	bgez	a0,105ba <__internal_syscall+0x1a>
   105b2:	00000317          	auipc	t1,0x0
   105b6:	fce30067          	jr	-50(t1) # 10580 <__syscall_error>
   105ba:	8082                	ret

00000000000105bc <open>:
   105bc:	1141                	addi	sp,sp,-16
   105be:	86b2                	mv	a3,a2
   105c0:	4701                	li	a4,0
   105c2:	862e                	mv	a2,a1
   105c4:	85aa                	mv	a1,a0
   105c6:	40000513          	li	a0,1024
   105ca:	e406                	sd	ra,8(sp)
   105cc:	00000097          	auipc	ra,0x0
   105d0:	fd4080e7          	jalr	-44(ra) # 105a0 <__internal_syscall>
   105d4:	60a2                	ld	ra,8(sp)
   105d6:	2501                	sext.w	a0,a0
   105d8:	0141                	addi	sp,sp,16
   105da:	8082                	ret

00000000000105dc <openat>:
   105dc:	1141                	addi	sp,sp,-16
   105de:	8736                	mv	a4,a3
   105e0:	86b2                	mv	a3,a2
   105e2:	862e                	mv	a2,a1
   105e4:	85aa                	mv	a1,a0
   105e6:	03800513          	li	a0,56
   105ea:	e406                	sd	ra,8(sp)
   105ec:	fb5ff0ef          	jal	ra,105a0 <__internal_syscall>
   105f0:	60a2                	ld	ra,8(sp)
   105f2:	2501                	sext.w	a0,a0
   105f4:	0141                	addi	sp,sp,16
   105f6:	8082                	ret

00000000000105f8 <lseek>:
   105f8:	86b2                	mv	a3,a2
   105fa:	4701                	li	a4,0
   105fc:	862e                	mv	a2,a1
   105fe:	85aa                	mv	a1,a0
   10600:	03e00513          	li	a0,62
   10604:	00000317          	auipc	t1,0x0
   10608:	f9c30067          	jr	-100(t1) # 105a0 <__internal_syscall>

000000000001060c <read>:
   1060c:	86b2                	mv	a3,a2
   1060e:	4701                	li	a4,0
   10610:	862e                	mv	a2,a1
   10612:	85aa                	mv	a1,a0
   10614:	03f00513          	li	a0,63
   10618:	f89ff06f          	j	105a0 <__internal_syscall>

000000000001061c <write>:
   1061c:	86b2                	mv	a3,a2
   1061e:	4701                	li	a4,0
   10620:	862e                	mv	a2,a1
   10622:	85aa                	mv	a1,a0
   10624:	04000513          	li	a0,64
   10628:	00000317          	auipc	t1,0x0
   1062c:	f7830067          	jr	-136(t1) # 105a0 <__internal_syscall>

0000000000010630 <fstat>:
   10630:	7135                	addi	sp,sp,-160
   10632:	e526                	sd	s1,136(sp)
   10634:	860a                	mv	a2,sp
   10636:	84ae                	mv	s1,a1
   10638:	4701                	li	a4,0
   1063a:	85aa                	mv	a1,a0
   1063c:	4681                	li	a3,0
   1063e:	05000513          	li	a0,80
   10642:	ed06                	sd	ra,152(sp)
   10644:	e922                	sd	s0,144(sp)
   10646:	f5bff0ef          	jal	ra,105a0 <__internal_syscall>
   1064a:	842a                	mv	s0,a0
   1064c:	858a                	mv	a1,sp
   1064e:	8526                	mv	a0,s1
   10650:	eefff0ef          	jal	ra,1053e <conv_stat>
   10654:	0004051b          	sext.w	a0,s0
   10658:	60ea                	ld	ra,152(sp)
   1065a:	644a                	ld	s0,144(sp)
   1065c:	64aa                	ld	s1,136(sp)
   1065e:	610d                	addi	sp,sp,160
   10660:	8082                	ret

0000000000010662 <stat>:
   10662:	7135                	addi	sp,sp,-160
   10664:	e526                	sd	s1,136(sp)
   10666:	860a                	mv	a2,sp
   10668:	84ae                	mv	s1,a1
   1066a:	4701                	li	a4,0
   1066c:	85aa                	mv	a1,a0
   1066e:	4681                	li	a3,0
   10670:	40e00513          	li	a0,1038
   10674:	ed06                	sd	ra,152(sp)
   10676:	e922                	sd	s0,144(sp)
   10678:	00000097          	auipc	ra,0x0
   1067c:	f28080e7          	jalr	-216(ra) # 105a0 <__internal_syscall>
   10680:	842a                	mv	s0,a0
   10682:	858a                	mv	a1,sp
   10684:	8526                	mv	a0,s1
   10686:	00000097          	auipc	ra,0x0
   1068a:	eb8080e7          	jalr	-328(ra) # 1053e <conv_stat>
   1068e:	0004051b          	sext.w	a0,s0
   10692:	60ea                	ld	ra,152(sp)
   10694:	644a                	ld	s0,144(sp)
   10696:	64aa                	ld	s1,136(sp)
   10698:	610d                	addi	sp,sp,160
   1069a:	8082                	ret

000000000001069c <lstat>:
   1069c:	7135                	addi	sp,sp,-160
   1069e:	e526                	sd	s1,136(sp)
   106a0:	860a                	mv	a2,sp
   106a2:	84ae                	mv	s1,a1
   106a4:	4701                	li	a4,0
   106a6:	85aa                	mv	a1,a0
   106a8:	4681                	li	a3,0
   106aa:	40f00513          	li	a0,1039
   106ae:	ed06                	sd	ra,152(sp)
   106b0:	e922                	sd	s0,144(sp)
   106b2:	eefff0ef          	jal	ra,105a0 <__internal_syscall>
   106b6:	842a                	mv	s0,a0
   106b8:	858a                	mv	a1,sp
   106ba:	8526                	mv	a0,s1
   106bc:	e83ff0ef          	jal	ra,1053e <conv_stat>
   106c0:	0004051b          	sext.w	a0,s0
   106c4:	60ea                	ld	ra,152(sp)
   106c6:	644a                	ld	s0,144(sp)
   106c8:	64aa                	ld	s1,136(sp)
   106ca:	610d                	addi	sp,sp,160
   106cc:	8082                	ret

00000000000106ce <fstatat>:
   106ce:	7135                	addi	sp,sp,-160
   106d0:	e526                	sd	s1,136(sp)
   106d2:	8736                	mv	a4,a3
   106d4:	84b2                	mv	s1,a2
   106d6:	868a                	mv	a3,sp
   106d8:	862e                	mv	a2,a1
   106da:	85aa                	mv	a1,a0
   106dc:	04f00513          	li	a0,79
   106e0:	ed06                	sd	ra,152(sp)
   106e2:	e922                	sd	s0,144(sp)
   106e4:	00000097          	auipc	ra,0x0
   106e8:	ebc080e7          	jalr	-324(ra) # 105a0 <__internal_syscall>
   106ec:	842a                	mv	s0,a0
   106ee:	858a                	mv	a1,sp
   106f0:	8526                	mv	a0,s1
   106f2:	00000097          	auipc	ra,0x0
   106f6:	e4c080e7          	jalr	-436(ra) # 1053e <conv_stat>
   106fa:	0004051b          	sext.w	a0,s0
   106fe:	60ea                	ld	ra,152(sp)
   10700:	644a                	ld	s0,144(sp)
   10702:	64aa                	ld	s1,136(sp)
   10704:	610d                	addi	sp,sp,160
   10706:	8082                	ret

0000000000010708 <access>:
   10708:	1141                	addi	sp,sp,-16
   1070a:	862e                	mv	a2,a1
   1070c:	4701                	li	a4,0
   1070e:	85aa                	mv	a1,a0
   10710:	4681                	li	a3,0
   10712:	40900513          	li	a0,1033
   10716:	e406                	sd	ra,8(sp)
   10718:	e89ff0ef          	jal	ra,105a0 <__internal_syscall>
   1071c:	60a2                	ld	ra,8(sp)
   1071e:	2501                	sext.w	a0,a0
   10720:	0141                	addi	sp,sp,16
   10722:	8082                	ret

0000000000010724 <faccessat>:
   10724:	1141                	addi	sp,sp,-16
   10726:	8736                	mv	a4,a3
   10728:	86b2                	mv	a3,a2
   1072a:	862e                	mv	a2,a1
   1072c:	85aa                	mv	a1,a0
   1072e:	03000513          	li	a0,48
   10732:	e406                	sd	ra,8(sp)
   10734:	00000097          	auipc	ra,0x0
   10738:	e6c080e7          	jalr	-404(ra) # 105a0 <__internal_syscall>
   1073c:	60a2                	ld	ra,8(sp)
   1073e:	2501                	sext.w	a0,a0
   10740:	0141                	addi	sp,sp,16
   10742:	8082                	ret

0000000000010744 <close>:
   10744:	1141                	addi	sp,sp,-16
   10746:	85aa                	mv	a1,a0
   10748:	4701                	li	a4,0
   1074a:	4681                	li	a3,0
   1074c:	4601                	li	a2,0
   1074e:	03900513          	li	a0,57
   10752:	e406                	sd	ra,8(sp)
   10754:	e4dff0ef          	jal	ra,105a0 <__internal_syscall>
   10758:	60a2                	ld	ra,8(sp)
   1075a:	2501                	sext.w	a0,a0
   1075c:	0141                	addi	sp,sp,16
   1075e:	8082                	ret

0000000000010760 <link>:
   10760:	1141                	addi	sp,sp,-16
   10762:	862e                	mv	a2,a1
   10764:	4701                	li	a4,0
   10766:	85aa                	mv	a1,a0
   10768:	4681                	li	a3,0
   1076a:	40100513          	li	a0,1025
   1076e:	e406                	sd	ra,8(sp)
   10770:	00000097          	auipc	ra,0x0
   10774:	e30080e7          	jalr	-464(ra) # 105a0 <__internal_syscall>
   10778:	60a2                	ld	ra,8(sp)
   1077a:	2501                	sext.w	a0,a0
   1077c:	0141                	addi	sp,sp,16
   1077e:	8082                	ret

0000000000010780 <unlink>:
   10780:	1141                	addi	sp,sp,-16
   10782:	85aa                	mv	a1,a0
   10784:	4701                	li	a4,0
   10786:	4681                	li	a3,0
   10788:	4601                	li	a2,0
   1078a:	40200513          	li	a0,1026
   1078e:	e406                	sd	ra,8(sp)
   10790:	e11ff0ef          	jal	ra,105a0 <__internal_syscall>
   10794:	60a2                	ld	ra,8(sp)
   10796:	2501                	sext.w	a0,a0
   10798:	0141                	addi	sp,sp,16
   1079a:	8082                	ret

000000000001079c <execve>:
   1079c:	1141                	addi	sp,sp,-16
   1079e:	e406                	sd	ra,8(sp)
   107a0:	00000097          	auipc	ra,0x0
   107a4:	1a2080e7          	jalr	418(ra) # 10942 <__errno>
   107a8:	60a2                	ld	ra,8(sp)
   107aa:	47b1                	li	a5,12
   107ac:	c11c                	sw	a5,0(a0)
   107ae:	557d                	li	a0,-1
   107b0:	0141                	addi	sp,sp,16
   107b2:	8082                	ret

00000000000107b4 <fork>:
   107b4:	1141                	addi	sp,sp,-16
   107b6:	e406                	sd	ra,8(sp)
   107b8:	18a000ef          	jal	ra,10942 <__errno>
   107bc:	60a2                	ld	ra,8(sp)
   107be:	47ad                	li	a5,11
   107c0:	c11c                	sw	a5,0(a0)
   107c2:	557d                	li	a0,-1
   107c4:	0141                	addi	sp,sp,16
   107c6:	8082                	ret

00000000000107c8 <getpid>:
   107c8:	4505                	li	a0,1
   107ca:	8082                	ret

00000000000107cc <kill>:
   107cc:	1141                	addi	sp,sp,-16
   107ce:	e406                	sd	ra,8(sp)
   107d0:	172000ef          	jal	ra,10942 <__errno>
   107d4:	60a2                	ld	ra,8(sp)
   107d6:	47d9                	li	a5,22
   107d8:	c11c                	sw	a5,0(a0)
   107da:	557d                	li	a0,-1
   107dc:	0141                	addi	sp,sp,16
   107de:	8082                	ret

00000000000107e0 <wait>:
   107e0:	1141                	addi	sp,sp,-16
   107e2:	e406                	sd	ra,8(sp)
   107e4:	00000097          	auipc	ra,0x0
   107e8:	15e080e7          	jalr	350(ra) # 10942 <__errno>
   107ec:	60a2                	ld	ra,8(sp)
   107ee:	47a9                	li	a5,10
   107f0:	c11c                	sw	a5,0(a0)
   107f2:	557d                	li	a0,-1
   107f4:	0141                	addi	sp,sp,16
   107f6:	8082                	ret

00000000000107f8 <isatty>:
   107f8:	7119                	addi	sp,sp,-128
   107fa:	002c                	addi	a1,sp,8
   107fc:	fc86                	sd	ra,120(sp)
   107fe:	e33ff0ef          	jal	ra,10630 <fstat>
   10802:	57fd                	li	a5,-1
   10804:	00f50663          	beq	a0,a5,10810 <isatty+0x18>
   10808:	4532                	lw	a0,12(sp)
   1080a:	40d5551b          	sraiw	a0,a0,0xd
   1080e:	8905                	andi	a0,a0,1
   10810:	70e6                	ld	ra,120(sp)
   10812:	6109                	addi	sp,sp,128
   10814:	8082                	ret

0000000000010816 <gettimeofday>:
   10816:	1141                	addi	sp,sp,-16
   10818:	85aa                	mv	a1,a0
   1081a:	4701                	li	a4,0
   1081c:	4681                	li	a3,0
   1081e:	4601                	li	a2,0
   10820:	0a900513          	li	a0,169
   10824:	e406                	sd	ra,8(sp)
   10826:	00000097          	auipc	ra,0x0
   1082a:	d7a080e7          	jalr	-646(ra) # 105a0 <__internal_syscall>
   1082e:	60a2                	ld	ra,8(sp)
   10830:	2501                	sext.w	a0,a0
   10832:	0141                	addi	sp,sp,16
   10834:	8082                	ret

0000000000010836 <times>:
   10836:	7179                	addi	sp,sp,-48
   10838:	f022                	sd	s0,32(sp)
   1083a:	842a                	mv	s0,a0
   1083c:	8581b783          	ld	a5,-1960(gp) # 117d8 <t0.2574>
   10840:	ec26                	sd	s1,24(sp)
   10842:	f406                	sd	ra,40(sp)
   10844:	85818493          	addi	s1,gp,-1960 # 117d8 <t0.2574>
   10848:	eb81                	bnez	a5,10858 <times+0x22>
   1084a:	4581                	li	a1,0
   1084c:	85818513          	addi	a0,gp,-1960 # 117d8 <t0.2574>
   10850:	00000097          	auipc	ra,0x0
   10854:	fc6080e7          	jalr	-58(ra) # 10816 <gettimeofday>
   10858:	850a                	mv	a0,sp
   1085a:	4581                	li	a1,0
   1085c:	00000097          	auipc	ra,0x0
   10860:	fba080e7          	jalr	-70(ra) # 10816 <gettimeofday>
   10864:	6098                	ld	a4,0(s1)
   10866:	6782                	ld	a5,0(sp)
   10868:	6494                	ld	a3,8(s1)
   1086a:	00043823          	sd	zero,16(s0)
   1086e:	8f99                	sub	a5,a5,a4
   10870:	000f4737          	lui	a4,0xf4
   10874:	24070713          	addi	a4,a4,576 # f4240 <__global_pointer$+0xe22c0>
   10878:	02e787b3          	mul	a5,a5,a4
   1087c:	6722                	ld	a4,8(sp)
   1087e:	00043c23          	sd	zero,24(s0)
   10882:	00043423          	sd	zero,8(s0)
   10886:	8f15                	sub	a4,a4,a3
   10888:	70a2                	ld	ra,40(sp)
   1088a:	64e2                	ld	s1,24(sp)
   1088c:	557d                	li	a0,-1
   1088e:	97ba                	add	a5,a5,a4
   10890:	e01c                	sd	a5,0(s0)
   10892:	7402                	ld	s0,32(sp)
   10894:	6145                	addi	sp,sp,48
   10896:	8082                	ret

0000000000010898 <ftime>:
   10898:	00051423          	sh	zero,8(a0)
   1089c:	00053023          	sd	zero,0(a0)
   108a0:	4501                	li	a0,0
   108a2:	8082                	ret

00000000000108a4 <utime>:
   108a4:	557d                	li	a0,-1
   108a6:	8082                	ret

00000000000108a8 <chown>:
   108a8:	557d                	li	a0,-1
   108aa:	8082                	ret

00000000000108ac <chmod>:
   108ac:	557d                	li	a0,-1
   108ae:	8082                	ret

00000000000108b0 <chdir>:
   108b0:	557d                	li	a0,-1
   108b2:	8082                	ret

00000000000108b4 <getcwd>:
   108b4:	4501                	li	a0,0
   108b6:	8082                	ret

00000000000108b8 <sysconf>:
   108b8:	4789                	li	a5,2
   108ba:	00f50463          	beq	a0,a5,108c2 <sysconf+0xa>
   108be:	557d                	li	a0,-1
   108c0:	8082                	ret
   108c2:	000f4537          	lui	a0,0xf4
   108c6:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22c0>
   108ca:	8082                	ret

00000000000108cc <sbrk>:
   108cc:	1101                	addi	sp,sp,-32
   108ce:	e822                	sd	s0,16(sp)
   108d0:	8181b783          	ld	a5,-2024(gp) # 11798 <_edata>
   108d4:	e426                	sd	s1,8(sp)
   108d6:	ec06                	sd	ra,24(sp)
   108d8:	84aa                	mv	s1,a0
   108da:	e785                	bnez	a5,10902 <sbrk+0x36>
   108dc:	4701                	li	a4,0
   108de:	4681                	li	a3,0
   108e0:	4601                	li	a2,0
   108e2:	4581                	li	a1,0
   108e4:	0d600513          	li	a0,214
   108e8:	cb9ff0ef          	jal	ra,105a0 <__internal_syscall>
   108ec:	57fd                	li	a5,-1
   108ee:	00f51863          	bne	a0,a5,108fe <sbrk+0x32>
   108f2:	557d                	li	a0,-1
   108f4:	60e2                	ld	ra,24(sp)
   108f6:	6442                	ld	s0,16(sp)
   108f8:	64a2                	ld	s1,8(sp)
   108fa:	6105                	addi	sp,sp,32
   108fc:	8082                	ret
   108fe:	80a1bc23          	sd	a0,-2024(gp) # 11798 <_edata>
   10902:	8181b583          	ld	a1,-2024(gp) # 11798 <_edata>
   10906:	4701                	li	a4,0
   10908:	4681                	li	a3,0
   1090a:	95a6                	add	a1,a1,s1
   1090c:	4601                	li	a2,0
   1090e:	0d600513          	li	a0,214
   10912:	c8fff0ef          	jal	ra,105a0 <__internal_syscall>
   10916:	8181b783          	ld	a5,-2024(gp) # 11798 <_edata>
   1091a:	94be                	add	s1,s1,a5
   1091c:	fc951be3          	bne	a0,s1,108f2 <sbrk+0x26>
   10920:	80a1bc23          	sd	a0,-2024(gp) # 11798 <_edata>
   10924:	853e                	mv	a0,a5
   10926:	b7f9                	j	108f4 <sbrk+0x28>

0000000000010928 <_exit>:
   10928:	1141                	addi	sp,sp,-16
   1092a:	85aa                	mv	a1,a0
   1092c:	4701                	li	a4,0
   1092e:	4681                	li	a3,0
   10930:	4601                	li	a2,0
   10932:	05d00513          	li	a0,93
   10936:	e406                	sd	ra,8(sp)
   10938:	00000097          	auipc	ra,0x0
   1093c:	c68080e7          	jalr	-920(ra) # 105a0 <__internal_syscall>
   10940:	a001                	j	10940 <_exit+0x18>

0000000000010942 <__errno>:
   10942:	8101b503          	ld	a0,-2032(gp) # 11790 <_impure_ptr>
   10946:	8082                	ret
	...

Disassembly of section .eh_frame:

000000000001094c <__EH_FRAME_BEGIN__>:
   1094c:	0000                	unimp
	...

Disassembly of section .init_array:

0000000000011000 <__frame_dummy_init_array_entry>:
   11000:	0182                	slli	gp,gp,0x0
   11002:	0001                	nop
   11004:	0000                	unimp
	...

Disassembly of section .fini_array:

0000000000011008 <__do_global_dtors_aux_fini_array_entry>:
   11008:	0148                	addi	a0,sp,132
   1100a:	0001                	nop
   1100c:	0000                	unimp
	...

Disassembly of section .data:

0000000000011010 <result>:
   11010:	0001                	nop
   11012:	0000                	unimp
   11014:	0002                	0x2
   11016:	0000                	unimp
   11018:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
   1101c:	0004                	addi	s1,sp,0
   1101e:	0000                	unimp
   11020:	0005                	c.addi	zero,1
   11022:	0000                	unimp
   11024:	0006                	0x6
   11026:	0000                	unimp
   11028:	00000007          	0x7
   1102c:	0008                	addi	a0,sp,0
   1102e:	0000                	unimp
   11030:	0009                	c.addi	zero,2
   11032:	0000                	unimp
   11034:	000a                	0xa
	...

0000000000011038 <impure_data>:
	...
   11040:	1570                	addi	a2,sp,684
   11042:	0001                	nop
   11044:	0000                	unimp
   11046:	0000                	unimp
   11048:	1620                	addi	s0,sp,808
   1104a:	0001                	nop
   1104c:	0000                	unimp
   1104e:	0000                	unimp
   11050:	16d0                	addi	a2,sp,868
   11052:	0001                	nop
	...
   11120:	0001                	nop
   11122:	0000                	unimp
   11124:	0000                	unimp
   11126:	0000                	unimp
   11128:	330e                	fld	ft6,224(sp)
   1112a:	abcd                	j	1171c <impure_data+0x6e4>
   1112c:	1234                	addi	a3,sp,296
   1112e:	e66d                	bnez	a2,11218 <impure_data+0x1e0>
   11130:	deec                	sw	a1,124(a3)
   11132:	0005                	c.addi	zero,1
   11134:	0000000b          	0xb
	...

Disassembly of section .sdata:

0000000000011780 <__TMC_END__>:
	...

0000000000011788 <_global_impure_ptr>:
   11788:	1038                	addi	a4,sp,40
   1178a:	0001                	nop
   1178c:	0000                	unimp
	...

0000000000011790 <_impure_ptr>:
   11790:	1038                	addi	a4,sp,40
   11792:	0001                	nop
   11794:	0000                	unimp
	...

Disassembly of section .sbss:

0000000000011798 <__bss_start>:
	...

Disassembly of section .bss:

00000000000117a0 <completed.5184>:
	...

00000000000117a8 <object.5189>:
	...

00000000000117d8 <t0.2574>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	fld	fs0,80(s0)
   6:	29554e47          	fmsub.s	ft8,fa0,fs5,ft5,rmm
   a:	3720                	fld	fs0,104(a4)
   c:	312e                	fld	ft2,232(sp)
   e:	312e                	fld	ft2,232(sp)
  10:	3220                	fld	fs0,96(a2)
  12:	3130                	fld	fa2,96(a0)
  14:	30353037          	lui	zero,0x30353
  18:	0039                	c.addi	zero,14
