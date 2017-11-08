
qsort_mod:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	f5018193          	addi	gp,gp,-176 # 12000 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11818 <_edata>
   100bc:	86818613          	addi	a2,gp,-1944 # 11868 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	3dc000ef          	jal	ra,104a0 <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	32250513          	addi	a0,a0,802 # 103ea <__libc_fini_array>
   100d0:	00000097          	auipc	ra,0x0
   100d4:	2e6080e7          	jalr	742(ra) # 103b6 <atexit>
   100d8:	00000097          	auipc	ra,0x0
   100dc:	360080e7          	jalr	864(ra) # 10438 <__libc_init_array>
   100e0:	4502                	lw	a0,0(sp)
   100e2:	002c                	addi	a1,sp,8
   100e4:	4601                	li	a2,0
   100e6:	296000ef          	jal	ra,1037c <main>
   100ea:	00000317          	auipc	t1,0x0
   100ee:	2da30067          	jr	730(t1) # 103c4 <exit>

00000000000100f2 <_fini>:
   100f2:	8082                	ret

00000000000100f4 <deregister_tm_clones>:
   100f4:	6549                	lui	a0,0x12
   100f6:	67c9                	lui	a5,0x12
   100f8:	80050713          	addi	a4,a0,-2048 # 11800 <__TMC_END__>
   100fc:	80078793          	addi	a5,a5,-2048 # 11800 <__TMC_END__>
   10100:	00e78b63          	beq	a5,a4,10116 <deregister_tm_clones+0x22>
   10104:	00000337          	lui	t1,0x0
   10108:	00030313          	mv	t1,t1
   1010c:	00030563          	beqz	t1,10116 <deregister_tm_clones+0x22>
   10110:	80050513          	addi	a0,a0,-2048
   10114:	8302                	jr	t1
   10116:	8082                	ret

0000000000010118 <register_tm_clones>:
   10118:	67c9                	lui	a5,0x12
   1011a:	6549                	lui	a0,0x12
   1011c:	80078593          	addi	a1,a5,-2048 # 11800 <__TMC_END__>
   10120:	80050793          	addi	a5,a0,-2048 # 11800 <__TMC_END__>
   10124:	8d9d                	sub	a1,a1,a5
   10126:	858d                	srai	a1,a1,0x3
   10128:	4789                	li	a5,2
   1012a:	02f5c5b3          	div	a1,a1,a5
   1012e:	c991                	beqz	a1,10142 <register_tm_clones+0x2a>
   10130:	00000337          	lui	t1,0x0
   10134:	00030313          	mv	t1,t1
   10138:	00030563          	beqz	t1,10142 <register_tm_clones+0x2a>
   1013c:	80050513          	addi	a0,a0,-2048
   10140:	8302                	jr	t1
   10142:	8082                	ret

0000000000010144 <__do_global_dtors_aux>:
   10144:	8201c703          	lbu	a4,-2016(gp) # 11820 <completed.5184>
   10148:	eb15                	bnez	a4,1017c <__do_global_dtors_aux+0x38>
   1014a:	1141                	addi	sp,sp,-16
   1014c:	e022                	sd	s0,0(sp)
   1014e:	e406                	sd	ra,8(sp)
   10150:	843e                	mv	s0,a5
   10152:	fa3ff0ef          	jal	ra,100f4 <deregister_tm_clones>
   10156:	000007b7          	lui	a5,0x0
   1015a:	00078793          	mv	a5,a5
   1015e:	cb81                	beqz	a5,1016e <__do_global_dtors_aux+0x2a>
   10160:	6545                	lui	a0,0x11
   10162:	a7050513          	addi	a0,a0,-1424 # 10a70 <__EH_FRAME_BEGIN__>
   10166:	ffff0097          	auipc	ra,0xffff0
   1016a:	e9a080e7          	jalr	-358(ra) # 0 <_start-0x100b0>
   1016e:	4785                	li	a5,1
   10170:	82f18023          	sb	a5,-2016(gp) # 11820 <completed.5184>
   10174:	60a2                	ld	ra,8(sp)
   10176:	6402                	ld	s0,0(sp)
   10178:	0141                	addi	sp,sp,16
   1017a:	8082                	ret
   1017c:	8082                	ret

000000000001017e <frame_dummy>:
   1017e:	000007b7          	lui	a5,0x0
   10182:	00078793          	mv	a5,a5
   10186:	cf99                	beqz	a5,101a4 <frame_dummy+0x26>
   10188:	65c9                	lui	a1,0x12
   1018a:	6545                	lui	a0,0x11
   1018c:	1141                	addi	sp,sp,-16
   1018e:	82858593          	addi	a1,a1,-2008 # 11828 <object.5189>
   10192:	a7050513          	addi	a0,a0,-1424 # 10a70 <__EH_FRAME_BEGIN__>
   10196:	e406                	sd	ra,8(sp)
   10198:	ffff0097          	auipc	ra,0xffff0
   1019c:	e68080e7          	jalr	-408(ra) # 0 <_start-0x100b0>
   101a0:	60a2                	ld	ra,8(sp)
   101a2:	0141                	addi	sp,sp,16
   101a4:	f75ff06f          	j	10118 <register_tm_clones>

00000000000101a8 <qsort>:
   101a8:	fd010113          	addi	sp,sp,-48
   101ac:	02113423          	sd	ra,40(sp)
   101b0:	02813023          	sd	s0,32(sp)
   101b4:	03010413          	addi	s0,sp,48
   101b8:	00050793          	mv	a5,a0
   101bc:	00058713          	mv	a4,a1
   101c0:	fcf42e23          	sw	a5,-36(s0)
   101c4:	00070793          	mv	a5,a4
   101c8:	fcf42c23          	sw	a5,-40(s0)
   101cc:	000117b7          	lui	a5,0x11
   101d0:	fdc42703          	lw	a4,-36(s0)
   101d4:	00271713          	slli	a4,a4,0x2
   101d8:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   101dc:	00f707b3          	add	a5,a4,a5
   101e0:	0007a783          	lw	a5,0(a5)
   101e4:	fef42223          	sw	a5,-28(s0)
   101e8:	fdc42783          	lw	a5,-36(s0)
   101ec:	fef42623          	sw	a5,-20(s0)
   101f0:	fd842783          	lw	a5,-40(s0)
   101f4:	fef42423          	sw	a5,-24(s0)
   101f8:	fdc42703          	lw	a4,-36(s0)
   101fc:	fd842783          	lw	a5,-40(s0)
   10200:	0007071b          	sext.w	a4,a4
   10204:	0007879b          	sext.w	a5,a5
   10208:	16f75063          	ble	a5,a4,10368 <qsort+0x1c0>
   1020c:	0f00006f          	j	102fc <qsort+0x154>
   10210:	fe842783          	lw	a5,-24(s0)
   10214:	fff7879b          	addiw	a5,a5,-1
   10218:	fef42423          	sw	a5,-24(s0)
   1021c:	fec42703          	lw	a4,-20(s0)
   10220:	fe842783          	lw	a5,-24(s0)
   10224:	0007071b          	sext.w	a4,a4
   10228:	0007879b          	sext.w	a5,a5
   1022c:	02f75463          	ble	a5,a4,10254 <qsort+0xac>
   10230:	000117b7          	lui	a5,0x11
   10234:	fe842703          	lw	a4,-24(s0)
   10238:	00271713          	slli	a4,a4,0x2
   1023c:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   10240:	00f707b3          	add	a5,a4,a5
   10244:	0007a703          	lw	a4,0(a5)
   10248:	fe442783          	lw	a5,-28(s0)
   1024c:	0007879b          	sext.w	a5,a5
   10250:	fcf750e3          	ble	a5,a4,10210 <qsort+0x68>
   10254:	000117b7          	lui	a5,0x11
   10258:	fe842703          	lw	a4,-24(s0)
   1025c:	00271713          	slli	a4,a4,0x2
   10260:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   10264:	00f707b3          	add	a5,a4,a5
   10268:	0007a703          	lw	a4,0(a5)
   1026c:	000117b7          	lui	a5,0x11
   10270:	fec42683          	lw	a3,-20(s0)
   10274:	00269693          	slli	a3,a3,0x2
   10278:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   1027c:	00f687b3          	add	a5,a3,a5
   10280:	00e7a023          	sw	a4,0(a5)
   10284:	0100006f          	j	10294 <qsort+0xec>
   10288:	fec42783          	lw	a5,-20(s0)
   1028c:	0017879b          	addiw	a5,a5,1
   10290:	fef42623          	sw	a5,-20(s0)
   10294:	fec42703          	lw	a4,-20(s0)
   10298:	fe842783          	lw	a5,-24(s0)
   1029c:	0007071b          	sext.w	a4,a4
   102a0:	0007879b          	sext.w	a5,a5
   102a4:	02f75463          	ble	a5,a4,102cc <qsort+0x124>
   102a8:	000117b7          	lui	a5,0x11
   102ac:	fec42703          	lw	a4,-20(s0)
   102b0:	00271713          	slli	a4,a4,0x2
   102b4:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   102b8:	00f707b3          	add	a5,a4,a5
   102bc:	0007a703          	lw	a4,0(a5)
   102c0:	fe442783          	lw	a5,-28(s0)
   102c4:	0007879b          	sext.w	a5,a5
   102c8:	fce7d0e3          	ble	a4,a5,10288 <qsort+0xe0>
   102cc:	000117b7          	lui	a5,0x11
   102d0:	fec42703          	lw	a4,-20(s0)
   102d4:	00271713          	slli	a4,a4,0x2
   102d8:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   102dc:	00f707b3          	add	a5,a4,a5
   102e0:	0007a703          	lw	a4,0(a5)
   102e4:	000117b7          	lui	a5,0x11
   102e8:	fe842683          	lw	a3,-24(s0)
   102ec:	00269693          	slli	a3,a3,0x2
   102f0:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   102f4:	00f687b3          	add	a5,a3,a5
   102f8:	00e7a023          	sw	a4,0(a5)
   102fc:	fec42703          	lw	a4,-20(s0)
   10300:	fe842783          	lw	a5,-24(s0)
   10304:	0007071b          	sext.w	a4,a4
   10308:	0007879b          	sext.w	a5,a5
   1030c:	f0f748e3          	blt	a4,a5,1021c <qsort+0x74>
   10310:	000117b7          	lui	a5,0x11
   10314:	fec42703          	lw	a4,-20(s0)
   10318:	00271713          	slli	a4,a4,0x2
   1031c:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   10320:	00f707b3          	add	a5,a4,a5
   10324:	fe442703          	lw	a4,-28(s0)
   10328:	00e7a023          	sw	a4,0(a5)
   1032c:	fec42783          	lw	a5,-20(s0)
   10330:	fff7879b          	addiw	a5,a5,-1
   10334:	0007871b          	sext.w	a4,a5
   10338:	fdc42783          	lw	a5,-36(s0)
   1033c:	00070593          	mv	a1,a4
   10340:	00078513          	mv	a0,a5
   10344:	e65ff0ef          	jal	ra,101a8 <qsort>
   10348:	fec42783          	lw	a5,-20(s0)
   1034c:	0017879b          	addiw	a5,a5,1
   10350:	0007879b          	sext.w	a5,a5
   10354:	fd842703          	lw	a4,-40(s0)
   10358:	00070593          	mv	a1,a4
   1035c:	00078513          	mv	a0,a5
   10360:	e49ff0ef          	jal	ra,101a8 <qsort>
   10364:	0080006f          	j	1036c <qsort+0x1c4>
   10368:	00000013          	nop
   1036c:	02813083          	ld	ra,40(sp)
   10370:	02013403          	ld	s0,32(sp)
   10374:	03010113          	addi	sp,sp,48
   10378:	00008067          	ret

000000000001037c <main>:
   1037c:	ff010113          	addi	sp,sp,-16
   10380:	00113423          	sd	ra,8(sp)
   10384:	00813023          	sd	s0,0(sp)
   10388:	01010413          	addi	s0,sp,16
   1038c:	02700593          	li	a1,39
   10390:	00000513          	li	a0,0
   10394:	00000097          	auipc	ra,0x0
   10398:	e14080e7          	jalr	-492(ra) # 101a8 <qsort>
   1039c:	00000793          	li	a5,0
   103a0:	00078513          	mv	a0,a5
   103a4:	00813083          	ld	ra,8(sp)
   103a8:	00013403          	ld	s0,0(sp)
   103ac:	01010113          	addi	sp,sp,16
   103b0:	00008067          	ret
	...

00000000000103b6 <atexit>:
   103b6:	85aa                	mv	a1,a0
   103b8:	4681                	li	a3,0
   103ba:	4601                	li	a2,0
   103bc:	4501                	li	a0,0
   103be:	18c0006f          	j	1054a <__register_exitproc>
	...

00000000000103c4 <exit>:
   103c4:	1141                	addi	sp,sp,-16
   103c6:	4581                	li	a1,0
   103c8:	e022                	sd	s0,0(sp)
   103ca:	e406                	sd	ra,8(sp)
   103cc:	842a                	mv	s0,a0
   103ce:	1e4000ef          	jal	ra,105b2 <__call_exitprocs>
   103d2:	67c9                	lui	a5,0x12
   103d4:	8087b503          	ld	a0,-2040(a5) # 11808 <_global_impure_ptr>
   103d8:	6d3c                	ld	a5,88(a0)
   103da:	c391                	beqz	a5,103de <exit+0x1a>
   103dc:	9782                	jalr	a5
   103de:	8522                	mv	a0,s0
   103e0:	00000097          	auipc	ra,0x0
   103e4:	66e080e7          	jalr	1646(ra) # 10a4e <_exit>
	...

00000000000103ea <__libc_fini_array>:
   103ea:	7179                	addi	sp,sp,-48
   103ec:	67c5                	lui	a5,0x11
   103ee:	6745                	lui	a4,0x11
   103f0:	f022                	sd	s0,32(sp)
   103f2:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   103f6:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   103fa:	8c19                	sub	s0,s0,a4
   103fc:	ec26                	sd	s1,24(sp)
   103fe:	e84a                	sd	s2,16(sp)
   10400:	e44e                	sd	s3,8(sp)
   10402:	f406                	sd	ra,40(sp)
   10404:	840d                	srai	s0,s0,0x3
   10406:	4481                	li	s1,0
   10408:	01078913          	addi	s2,a5,16
   1040c:	59e1                	li	s3,-8
   1040e:	00941c63          	bne	s0,s1,10426 <__libc_fini_array+0x3c>
   10412:	7402                	ld	s0,32(sp)
   10414:	70a2                	ld	ra,40(sp)
   10416:	64e2                	ld	s1,24(sp)
   10418:	6942                	ld	s2,16(sp)
   1041a:	69a2                	ld	s3,8(sp)
   1041c:	6145                	addi	sp,sp,48
   1041e:	00000317          	auipc	t1,0x0
   10422:	cd430067          	jr	-812(t1) # 100f2 <_fini>
   10426:	033487b3          	mul	a5,s1,s3
   1042a:	0485                	addi	s1,s1,1
   1042c:	97ca                	add	a5,a5,s2
   1042e:	ff87b783          	ld	a5,-8(a5)
   10432:	9782                	jalr	a5
   10434:	bfe9                	j	1040e <__libc_fini_array+0x24>
	...

0000000000010438 <__libc_init_array>:
   10438:	1101                	addi	sp,sp,-32
   1043a:	e822                	sd	s0,16(sp)
   1043c:	e426                	sd	s1,8(sp)
   1043e:	6445                	lui	s0,0x11
   10440:	64c5                	lui	s1,0x11
   10442:	00048793          	mv	a5,s1
   10446:	00040413          	mv	s0,s0
   1044a:	8c1d                	sub	s0,s0,a5
   1044c:	e04a                	sd	s2,0(sp)
   1044e:	ec06                	sd	ra,24(sp)
   10450:	840d                	srai	s0,s0,0x3
   10452:	00048493          	mv	s1,s1
   10456:	4901                	li	s2,0
   10458:	02891963          	bne	s2,s0,1048a <__libc_init_array+0x52>
   1045c:	64c5                	lui	s1,0x11
   1045e:	00000097          	auipc	ra,0x0
   10462:	c94080e7          	jalr	-876(ra) # 100f2 <_fini>
   10466:	6445                	lui	s0,0x11
   10468:	00048793          	mv	a5,s1
   1046c:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   10470:	8c1d                	sub	s0,s0,a5
   10472:	840d                	srai	s0,s0,0x3
   10474:	00048493          	mv	s1,s1
   10478:	4901                	li	s2,0
   1047a:	00891d63          	bne	s2,s0,10494 <__libc_init_array+0x5c>
   1047e:	60e2                	ld	ra,24(sp)
   10480:	6442                	ld	s0,16(sp)
   10482:	64a2                	ld	s1,8(sp)
   10484:	6902                	ld	s2,0(sp)
   10486:	6105                	addi	sp,sp,32
   10488:	8082                	ret
   1048a:	609c                	ld	a5,0(s1)
   1048c:	0905                	addi	s2,s2,1
   1048e:	04a1                	addi	s1,s1,8
   10490:	9782                	jalr	a5
   10492:	b7d9                	j	10458 <__libc_init_array+0x20>
   10494:	609c                	ld	a5,0(s1)
   10496:	0905                	addi	s2,s2,1
   10498:	04a1                	addi	s1,s1,8
   1049a:	9782                	jalr	a5
   1049c:	bff9                	j	1047a <__libc_init_array+0x42>
	...

00000000000104a0 <memset>:
   104a0:	483d                	li	a6,15
   104a2:	872a                	mv	a4,a0
   104a4:	02c87163          	bleu	a2,a6,104c6 <memset+0x26>
   104a8:	00f77793          	andi	a5,a4,15
   104ac:	e3c1                	bnez	a5,1052c <memset+0x8c>
   104ae:	e1bd                	bnez	a1,10514 <memset+0x74>
   104b0:	ff067693          	andi	a3,a2,-16
   104b4:	8a3d                	andi	a2,a2,15
   104b6:	96ba                	add	a3,a3,a4
   104b8:	e30c                	sd	a1,0(a4)
   104ba:	e70c                	sd	a1,8(a4)
   104bc:	0741                	addi	a4,a4,16
   104be:	fed76de3          	bltu	a4,a3,104b8 <memset+0x18>
   104c2:	e211                	bnez	a2,104c6 <memset+0x26>
   104c4:	8082                	ret
   104c6:	40c806b3          	sub	a3,a6,a2
   104ca:	068a                	slli	a3,a3,0x2
   104cc:	00000297          	auipc	t0,0x0
   104d0:	9696                	add	a3,a3,t0
   104d2:	00a68067          	jr	10(a3)
   104d6:	00b70723          	sb	a1,14(a4)
   104da:	00b706a3          	sb	a1,13(a4)
   104de:	00b70623          	sb	a1,12(a4)
   104e2:	00b705a3          	sb	a1,11(a4)
   104e6:	00b70523          	sb	a1,10(a4)
   104ea:	00b704a3          	sb	a1,9(a4)
   104ee:	00b70423          	sb	a1,8(a4)
   104f2:	00b703a3          	sb	a1,7(a4)
   104f6:	00b70323          	sb	a1,6(a4)
   104fa:	00b702a3          	sb	a1,5(a4)
   104fe:	00b70223          	sb	a1,4(a4)
   10502:	00b701a3          	sb	a1,3(a4)
   10506:	00b70123          	sb	a1,2(a4)
   1050a:	00b700a3          	sb	a1,1(a4)
   1050e:	00b70023          	sb	a1,0(a4)
   10512:	8082                	ret
   10514:	0ff5f593          	andi	a1,a1,255
   10518:	00859693          	slli	a3,a1,0x8
   1051c:	8dd5                	or	a1,a1,a3
   1051e:	01059693          	slli	a3,a1,0x10
   10522:	8dd5                	or	a1,a1,a3
   10524:	02059693          	slli	a3,a1,0x20
   10528:	8dd5                	or	a1,a1,a3
   1052a:	b759                	j	104b0 <memset+0x10>
   1052c:	00279693          	slli	a3,a5,0x2
   10530:	00000297          	auipc	t0,0x0
   10534:	9696                	add	a3,a3,t0
   10536:	8286                	mv	t0,ra
   10538:	fa2680e7          	jalr	-94(a3)
   1053c:	8096                	mv	ra,t0
   1053e:	17c1                	addi	a5,a5,-16
   10540:	8f1d                	sub	a4,a4,a5
   10542:	963e                	add	a2,a2,a5
   10544:	f8c871e3          	bleu	a2,a6,104c6 <memset+0x26>
   10548:	b79d                	j	104ae <memset+0xe>

000000000001054a <__register_exitproc>:
   1054a:	67c9                	lui	a5,0x12
   1054c:	8087b703          	ld	a4,-2040(a5) # 11808 <_global_impure_ptr>
   10550:	832a                	mv	t1,a0
   10552:	1f873783          	ld	a5,504(a4)
   10556:	e789                	bnez	a5,10560 <__register_exitproc+0x16>
   10558:	20070793          	addi	a5,a4,512
   1055c:	1ef73c23          	sd	a5,504(a4)
   10560:	4798                	lw	a4,8(a5)
   10562:	487d                	li	a6,31
   10564:	557d                	li	a0,-1
   10566:	04e84463          	blt	a6,a4,105ae <__register_exitproc+0x64>
   1056a:	02030a63          	beqz	t1,1059e <__register_exitproc+0x54>
   1056e:	00371813          	slli	a6,a4,0x3
   10572:	983e                	add	a6,a6,a5
   10574:	10c83823          	sd	a2,272(a6)
   10578:	3107a883          	lw	a7,784(a5)
   1057c:	4605                	li	a2,1
   1057e:	00e6163b          	sllw	a2,a2,a4
   10582:	00c8e8b3          	or	a7,a7,a2
   10586:	3117a823          	sw	a7,784(a5)
   1058a:	20d83823          	sd	a3,528(a6)
   1058e:	4689                	li	a3,2
   10590:	00d31763          	bne	t1,a3,1059e <__register_exitproc+0x54>
   10594:	3147a683          	lw	a3,788(a5)
   10598:	8e55                	or	a2,a2,a3
   1059a:	30c7aa23          	sw	a2,788(a5)
   1059e:	0017069b          	addiw	a3,a4,1
   105a2:	0709                	addi	a4,a4,2
   105a4:	070e                	slli	a4,a4,0x3
   105a6:	c794                	sw	a3,8(a5)
   105a8:	97ba                	add	a5,a5,a4
   105aa:	e38c                	sd	a1,0(a5)
   105ac:	4501                	li	a0,0
   105ae:	8082                	ret
	...

00000000000105b2 <__call_exitprocs>:
   105b2:	715d                	addi	sp,sp,-80
   105b4:	67c9                	lui	a5,0x12
   105b6:	f44e                	sd	s3,40(sp)
   105b8:	8087b983          	ld	s3,-2040(a5) # 11808 <_global_impure_ptr>
   105bc:	f052                	sd	s4,32(sp)
   105be:	ec56                	sd	s5,24(sp)
   105c0:	e85a                	sd	s6,16(sp)
   105c2:	e486                	sd	ra,72(sp)
   105c4:	e0a2                	sd	s0,64(sp)
   105c6:	fc26                	sd	s1,56(sp)
   105c8:	f84a                	sd	s2,48(sp)
   105ca:	e45e                	sd	s7,8(sp)
   105cc:	8aaa                	mv	s5,a0
   105ce:	8a2e                	mv	s4,a1
   105d0:	4b05                	li	s6,1
   105d2:	1f89b403          	ld	s0,504(s3)
   105d6:	c801                	beqz	s0,105e6 <__call_exitprocs+0x34>
   105d8:	4404                	lw	s1,8(s0)
   105da:	34fd                	addiw	s1,s1,-1
   105dc:	00349913          	slli	s2,s1,0x3
   105e0:	9922                	add	s2,s2,s0
   105e2:	0004dd63          	bgez	s1,105fc <__call_exitprocs+0x4a>
   105e6:	60a6                	ld	ra,72(sp)
   105e8:	6406                	ld	s0,64(sp)
   105ea:	74e2                	ld	s1,56(sp)
   105ec:	7942                	ld	s2,48(sp)
   105ee:	79a2                	ld	s3,40(sp)
   105f0:	7a02                	ld	s4,32(sp)
   105f2:	6ae2                	ld	s5,24(sp)
   105f4:	6b42                	ld	s6,16(sp)
   105f6:	6ba2                	ld	s7,8(sp)
   105f8:	6161                	addi	sp,sp,80
   105fa:	8082                	ret
   105fc:	000a0963          	beqz	s4,1060e <__call_exitprocs+0x5c>
   10600:	21093783          	ld	a5,528(s2)
   10604:	01478563          	beq	a5,s4,1060e <__call_exitprocs+0x5c>
   10608:	34fd                	addiw	s1,s1,-1
   1060a:	1961                	addi	s2,s2,-8
   1060c:	bfd9                	j	105e2 <__call_exitprocs+0x30>
   1060e:	441c                	lw	a5,8(s0)
   10610:	01093683          	ld	a3,16(s2)
   10614:	37fd                	addiw	a5,a5,-1
   10616:	02979663          	bne	a5,s1,10642 <__call_exitprocs+0x90>
   1061a:	c404                	sw	s1,8(s0)
   1061c:	d6f5                	beqz	a3,10608 <__call_exitprocs+0x56>
   1061e:	31042703          	lw	a4,784(s0)
   10622:	009b163b          	sllw	a2,s6,s1
   10626:	00842b83          	lw	s7,8(s0)
   1062a:	8f71                	and	a4,a4,a2
   1062c:	2701                	sext.w	a4,a4
   1062e:	ef09                	bnez	a4,10648 <__call_exitprocs+0x96>
   10630:	9682                	jalr	a3
   10632:	4418                	lw	a4,8(s0)
   10634:	1f89b783          	ld	a5,504(s3)
   10638:	f9771de3          	bne	a4,s7,105d2 <__call_exitprocs+0x20>
   1063c:	fcf406e3          	beq	s0,a5,10608 <__call_exitprocs+0x56>
   10640:	bf49                	j	105d2 <__call_exitprocs+0x20>
   10642:	00093823          	sd	zero,16(s2)
   10646:	bfd9                	j	1061c <__call_exitprocs+0x6a>
   10648:	31442783          	lw	a5,788(s0)
   1064c:	11093583          	ld	a1,272(s2)
   10650:	8ff1                	and	a5,a5,a2
   10652:	2781                	sext.w	a5,a5
   10654:	e781                	bnez	a5,1065c <__call_exitprocs+0xaa>
   10656:	8556                	mv	a0,s5
   10658:	9682                	jalr	a3
   1065a:	bfe1                	j	10632 <__call_exitprocs+0x80>
   1065c:	852e                	mv	a0,a1
   1065e:	9682                	jalr	a3
   10660:	bfc9                	j	10632 <__call_exitprocs+0x80>
	...

0000000000010664 <conv_stat>:
   10664:	619c                	ld	a5,0(a1)
   10666:	00f51023          	sh	a5,0(a0)
   1066a:	659c                	ld	a5,8(a1)
   1066c:	00f51123          	sh	a5,2(a0)
   10670:	499c                	lw	a5,16(a1)
   10672:	c15c                	sw	a5,4(a0)
   10674:	49dc                	lw	a5,20(a1)
   10676:	00f51423          	sh	a5,8(a0)
   1067a:	4d9c                	lw	a5,24(a1)
   1067c:	00f51523          	sh	a5,10(a0)
   10680:	4ddc                	lw	a5,28(a1)
   10682:	00f51623          	sh	a5,12(a0)
   10686:	719c                	ld	a5,32(a1)
   10688:	00f51723          	sh	a5,14(a0)
   1068c:	799c                	ld	a5,48(a1)
   1068e:	e91c                	sd	a5,16(a0)
   10690:	61bc                	ld	a5,64(a1)
   10692:	e93c                	sd	a5,80(a0)
   10694:	5d9c                	lw	a5,56(a1)
   10696:	e53c                	sd	a5,72(a0)
   10698:	65bc                	ld	a5,72(a1)
   1069a:	ed1c                	sd	a5,24(a0)
   1069c:	6dbc                	ld	a5,88(a1)
   1069e:	f51c                	sd	a5,40(a0)
   106a0:	75bc                	ld	a5,104(a1)
   106a2:	fd1c                	sd	a5,56(a0)
   106a4:	8082                	ret

00000000000106a6 <__syscall_error>:
   106a6:	1141                	addi	sp,sp,-16
   106a8:	e022                	sd	s0,0(sp)
   106aa:	e406                	sd	ra,8(sp)
   106ac:	842a                	mv	s0,a0
   106ae:	00000097          	auipc	ra,0x0
   106b2:	3ba080e7          	jalr	954(ra) # 10a68 <__errno>
   106b6:	408007bb          	negw	a5,s0
   106ba:	60a2                	ld	ra,8(sp)
   106bc:	6402                	ld	s0,0(sp)
   106be:	c11c                	sw	a5,0(a0)
   106c0:	557d                	li	a0,-1
   106c2:	0141                	addi	sp,sp,16
   106c4:	8082                	ret

00000000000106c6 <__internal_syscall>:
   106c6:	88aa                	mv	a7,a0
   106c8:	852e                	mv	a0,a1
   106ca:	85b2                	mv	a1,a2
   106cc:	8636                	mv	a2,a3
   106ce:	86ba                	mv	a3,a4
   106d0:	00000073          	ecall
   106d4:	00055663          	bgez	a0,106e0 <__internal_syscall+0x1a>
   106d8:	00000317          	auipc	t1,0x0
   106dc:	fce30067          	jr	-50(t1) # 106a6 <__syscall_error>
   106e0:	8082                	ret

00000000000106e2 <open>:
   106e2:	1141                	addi	sp,sp,-16
   106e4:	86b2                	mv	a3,a2
   106e6:	4701                	li	a4,0
   106e8:	862e                	mv	a2,a1
   106ea:	85aa                	mv	a1,a0
   106ec:	40000513          	li	a0,1024
   106f0:	e406                	sd	ra,8(sp)
   106f2:	00000097          	auipc	ra,0x0
   106f6:	fd4080e7          	jalr	-44(ra) # 106c6 <__internal_syscall>
   106fa:	60a2                	ld	ra,8(sp)
   106fc:	2501                	sext.w	a0,a0
   106fe:	0141                	addi	sp,sp,16
   10700:	8082                	ret

0000000000010702 <openat>:
   10702:	1141                	addi	sp,sp,-16
   10704:	8736                	mv	a4,a3
   10706:	86b2                	mv	a3,a2
   10708:	862e                	mv	a2,a1
   1070a:	85aa                	mv	a1,a0
   1070c:	03800513          	li	a0,56
   10710:	e406                	sd	ra,8(sp)
   10712:	fb5ff0ef          	jal	ra,106c6 <__internal_syscall>
   10716:	60a2                	ld	ra,8(sp)
   10718:	2501                	sext.w	a0,a0
   1071a:	0141                	addi	sp,sp,16
   1071c:	8082                	ret

000000000001071e <lseek>:
   1071e:	86b2                	mv	a3,a2
   10720:	4701                	li	a4,0
   10722:	862e                	mv	a2,a1
   10724:	85aa                	mv	a1,a0
   10726:	03e00513          	li	a0,62
   1072a:	00000317          	auipc	t1,0x0
   1072e:	f9c30067          	jr	-100(t1) # 106c6 <__internal_syscall>

0000000000010732 <read>:
   10732:	86b2                	mv	a3,a2
   10734:	4701                	li	a4,0
   10736:	862e                	mv	a2,a1
   10738:	85aa                	mv	a1,a0
   1073a:	03f00513          	li	a0,63
   1073e:	f89ff06f          	j	106c6 <__internal_syscall>

0000000000010742 <write>:
   10742:	86b2                	mv	a3,a2
   10744:	4701                	li	a4,0
   10746:	862e                	mv	a2,a1
   10748:	85aa                	mv	a1,a0
   1074a:	04000513          	li	a0,64
   1074e:	00000317          	auipc	t1,0x0
   10752:	f7830067          	jr	-136(t1) # 106c6 <__internal_syscall>

0000000000010756 <fstat>:
   10756:	7135                	addi	sp,sp,-160
   10758:	e526                	sd	s1,136(sp)
   1075a:	860a                	mv	a2,sp
   1075c:	84ae                	mv	s1,a1
   1075e:	4701                	li	a4,0
   10760:	85aa                	mv	a1,a0
   10762:	4681                	li	a3,0
   10764:	05000513          	li	a0,80
   10768:	ed06                	sd	ra,152(sp)
   1076a:	e922                	sd	s0,144(sp)
   1076c:	f5bff0ef          	jal	ra,106c6 <__internal_syscall>
   10770:	842a                	mv	s0,a0
   10772:	858a                	mv	a1,sp
   10774:	8526                	mv	a0,s1
   10776:	eefff0ef          	jal	ra,10664 <conv_stat>
   1077a:	0004051b          	sext.w	a0,s0
   1077e:	60ea                	ld	ra,152(sp)
   10780:	644a                	ld	s0,144(sp)
   10782:	64aa                	ld	s1,136(sp)
   10784:	610d                	addi	sp,sp,160
   10786:	8082                	ret

0000000000010788 <stat>:
   10788:	7135                	addi	sp,sp,-160
   1078a:	e526                	sd	s1,136(sp)
   1078c:	860a                	mv	a2,sp
   1078e:	84ae                	mv	s1,a1
   10790:	4701                	li	a4,0
   10792:	85aa                	mv	a1,a0
   10794:	4681                	li	a3,0
   10796:	40e00513          	li	a0,1038
   1079a:	ed06                	sd	ra,152(sp)
   1079c:	e922                	sd	s0,144(sp)
   1079e:	00000097          	auipc	ra,0x0
   107a2:	f28080e7          	jalr	-216(ra) # 106c6 <__internal_syscall>
   107a6:	842a                	mv	s0,a0
   107a8:	858a                	mv	a1,sp
   107aa:	8526                	mv	a0,s1
   107ac:	00000097          	auipc	ra,0x0
   107b0:	eb8080e7          	jalr	-328(ra) # 10664 <conv_stat>
   107b4:	0004051b          	sext.w	a0,s0
   107b8:	60ea                	ld	ra,152(sp)
   107ba:	644a                	ld	s0,144(sp)
   107bc:	64aa                	ld	s1,136(sp)
   107be:	610d                	addi	sp,sp,160
   107c0:	8082                	ret

00000000000107c2 <lstat>:
   107c2:	7135                	addi	sp,sp,-160
   107c4:	e526                	sd	s1,136(sp)
   107c6:	860a                	mv	a2,sp
   107c8:	84ae                	mv	s1,a1
   107ca:	4701                	li	a4,0
   107cc:	85aa                	mv	a1,a0
   107ce:	4681                	li	a3,0
   107d0:	40f00513          	li	a0,1039
   107d4:	ed06                	sd	ra,152(sp)
   107d6:	e922                	sd	s0,144(sp)
   107d8:	eefff0ef          	jal	ra,106c6 <__internal_syscall>
   107dc:	842a                	mv	s0,a0
   107de:	858a                	mv	a1,sp
   107e0:	8526                	mv	a0,s1
   107e2:	e83ff0ef          	jal	ra,10664 <conv_stat>
   107e6:	0004051b          	sext.w	a0,s0
   107ea:	60ea                	ld	ra,152(sp)
   107ec:	644a                	ld	s0,144(sp)
   107ee:	64aa                	ld	s1,136(sp)
   107f0:	610d                	addi	sp,sp,160
   107f2:	8082                	ret

00000000000107f4 <fstatat>:
   107f4:	7135                	addi	sp,sp,-160
   107f6:	e526                	sd	s1,136(sp)
   107f8:	8736                	mv	a4,a3
   107fa:	84b2                	mv	s1,a2
   107fc:	868a                	mv	a3,sp
   107fe:	862e                	mv	a2,a1
   10800:	85aa                	mv	a1,a0
   10802:	04f00513          	li	a0,79
   10806:	ed06                	sd	ra,152(sp)
   10808:	e922                	sd	s0,144(sp)
   1080a:	00000097          	auipc	ra,0x0
   1080e:	ebc080e7          	jalr	-324(ra) # 106c6 <__internal_syscall>
   10812:	842a                	mv	s0,a0
   10814:	858a                	mv	a1,sp
   10816:	8526                	mv	a0,s1
   10818:	00000097          	auipc	ra,0x0
   1081c:	e4c080e7          	jalr	-436(ra) # 10664 <conv_stat>
   10820:	0004051b          	sext.w	a0,s0
   10824:	60ea                	ld	ra,152(sp)
   10826:	644a                	ld	s0,144(sp)
   10828:	64aa                	ld	s1,136(sp)
   1082a:	610d                	addi	sp,sp,160
   1082c:	8082                	ret

000000000001082e <access>:
   1082e:	1141                	addi	sp,sp,-16
   10830:	862e                	mv	a2,a1
   10832:	4701                	li	a4,0
   10834:	85aa                	mv	a1,a0
   10836:	4681                	li	a3,0
   10838:	40900513          	li	a0,1033
   1083c:	e406                	sd	ra,8(sp)
   1083e:	e89ff0ef          	jal	ra,106c6 <__internal_syscall>
   10842:	60a2                	ld	ra,8(sp)
   10844:	2501                	sext.w	a0,a0
   10846:	0141                	addi	sp,sp,16
   10848:	8082                	ret

000000000001084a <faccessat>:
   1084a:	1141                	addi	sp,sp,-16
   1084c:	8736                	mv	a4,a3
   1084e:	86b2                	mv	a3,a2
   10850:	862e                	mv	a2,a1
   10852:	85aa                	mv	a1,a0
   10854:	03000513          	li	a0,48
   10858:	e406                	sd	ra,8(sp)
   1085a:	00000097          	auipc	ra,0x0
   1085e:	e6c080e7          	jalr	-404(ra) # 106c6 <__internal_syscall>
   10862:	60a2                	ld	ra,8(sp)
   10864:	2501                	sext.w	a0,a0
   10866:	0141                	addi	sp,sp,16
   10868:	8082                	ret

000000000001086a <close>:
   1086a:	1141                	addi	sp,sp,-16
   1086c:	85aa                	mv	a1,a0
   1086e:	4701                	li	a4,0
   10870:	4681                	li	a3,0
   10872:	4601                	li	a2,0
   10874:	03900513          	li	a0,57
   10878:	e406                	sd	ra,8(sp)
   1087a:	e4dff0ef          	jal	ra,106c6 <__internal_syscall>
   1087e:	60a2                	ld	ra,8(sp)
   10880:	2501                	sext.w	a0,a0
   10882:	0141                	addi	sp,sp,16
   10884:	8082                	ret

0000000000010886 <link>:
   10886:	1141                	addi	sp,sp,-16
   10888:	862e                	mv	a2,a1
   1088a:	4701                	li	a4,0
   1088c:	85aa                	mv	a1,a0
   1088e:	4681                	li	a3,0
   10890:	40100513          	li	a0,1025
   10894:	e406                	sd	ra,8(sp)
   10896:	00000097          	auipc	ra,0x0
   1089a:	e30080e7          	jalr	-464(ra) # 106c6 <__internal_syscall>
   1089e:	60a2                	ld	ra,8(sp)
   108a0:	2501                	sext.w	a0,a0
   108a2:	0141                	addi	sp,sp,16
   108a4:	8082                	ret

00000000000108a6 <unlink>:
   108a6:	1141                	addi	sp,sp,-16
   108a8:	85aa                	mv	a1,a0
   108aa:	4701                	li	a4,0
   108ac:	4681                	li	a3,0
   108ae:	4601                	li	a2,0
   108b0:	40200513          	li	a0,1026
   108b4:	e406                	sd	ra,8(sp)
   108b6:	e11ff0ef          	jal	ra,106c6 <__internal_syscall>
   108ba:	60a2                	ld	ra,8(sp)
   108bc:	2501                	sext.w	a0,a0
   108be:	0141                	addi	sp,sp,16
   108c0:	8082                	ret

00000000000108c2 <execve>:
   108c2:	1141                	addi	sp,sp,-16
   108c4:	e406                	sd	ra,8(sp)
   108c6:	00000097          	auipc	ra,0x0
   108ca:	1a2080e7          	jalr	418(ra) # 10a68 <__errno>
   108ce:	60a2                	ld	ra,8(sp)
   108d0:	47b1                	li	a5,12
   108d2:	c11c                	sw	a5,0(a0)
   108d4:	557d                	li	a0,-1
   108d6:	0141                	addi	sp,sp,16
   108d8:	8082                	ret

00000000000108da <fork>:
   108da:	1141                	addi	sp,sp,-16
   108dc:	e406                	sd	ra,8(sp)
   108de:	18a000ef          	jal	ra,10a68 <__errno>
   108e2:	60a2                	ld	ra,8(sp)
   108e4:	47ad                	li	a5,11
   108e6:	c11c                	sw	a5,0(a0)
   108e8:	557d                	li	a0,-1
   108ea:	0141                	addi	sp,sp,16
   108ec:	8082                	ret

00000000000108ee <getpid>:
   108ee:	4505                	li	a0,1
   108f0:	8082                	ret

00000000000108f2 <kill>:
   108f2:	1141                	addi	sp,sp,-16
   108f4:	e406                	sd	ra,8(sp)
   108f6:	172000ef          	jal	ra,10a68 <__errno>
   108fa:	60a2                	ld	ra,8(sp)
   108fc:	47d9                	li	a5,22
   108fe:	c11c                	sw	a5,0(a0)
   10900:	557d                	li	a0,-1
   10902:	0141                	addi	sp,sp,16
   10904:	8082                	ret

0000000000010906 <wait>:
   10906:	1141                	addi	sp,sp,-16
   10908:	e406                	sd	ra,8(sp)
   1090a:	00000097          	auipc	ra,0x0
   1090e:	15e080e7          	jalr	350(ra) # 10a68 <__errno>
   10912:	60a2                	ld	ra,8(sp)
   10914:	47a9                	li	a5,10
   10916:	c11c                	sw	a5,0(a0)
   10918:	557d                	li	a0,-1
   1091a:	0141                	addi	sp,sp,16
   1091c:	8082                	ret

000000000001091e <isatty>:
   1091e:	7119                	addi	sp,sp,-128
   10920:	002c                	addi	a1,sp,8
   10922:	fc86                	sd	ra,120(sp)
   10924:	e33ff0ef          	jal	ra,10756 <fstat>
   10928:	57fd                	li	a5,-1
   1092a:	00f50663          	beq	a0,a5,10936 <isatty+0x18>
   1092e:	4532                	lw	a0,12(sp)
   10930:	40d5551b          	sraiw	a0,a0,0xd
   10934:	8905                	andi	a0,a0,1
   10936:	70e6                	ld	ra,120(sp)
   10938:	6109                	addi	sp,sp,128
   1093a:	8082                	ret

000000000001093c <gettimeofday>:
   1093c:	1141                	addi	sp,sp,-16
   1093e:	85aa                	mv	a1,a0
   10940:	4701                	li	a4,0
   10942:	4681                	li	a3,0
   10944:	4601                	li	a2,0
   10946:	0a900513          	li	a0,169
   1094a:	e406                	sd	ra,8(sp)
   1094c:	00000097          	auipc	ra,0x0
   10950:	d7a080e7          	jalr	-646(ra) # 106c6 <__internal_syscall>
   10954:	60a2                	ld	ra,8(sp)
   10956:	2501                	sext.w	a0,a0
   10958:	0141                	addi	sp,sp,16
   1095a:	8082                	ret

000000000001095c <times>:
   1095c:	7179                	addi	sp,sp,-48
   1095e:	f022                	sd	s0,32(sp)
   10960:	842a                	mv	s0,a0
   10962:	8581b783          	ld	a5,-1960(gp) # 11858 <t0.2574>
   10966:	ec26                	sd	s1,24(sp)
   10968:	f406                	sd	ra,40(sp)
   1096a:	85818493          	addi	s1,gp,-1960 # 11858 <t0.2574>
   1096e:	eb81                	bnez	a5,1097e <times+0x22>
   10970:	4581                	li	a1,0
   10972:	85818513          	addi	a0,gp,-1960 # 11858 <t0.2574>
   10976:	00000097          	auipc	ra,0x0
   1097a:	fc6080e7          	jalr	-58(ra) # 1093c <gettimeofday>
   1097e:	850a                	mv	a0,sp
   10980:	4581                	li	a1,0
   10982:	00000097          	auipc	ra,0x0
   10986:	fba080e7          	jalr	-70(ra) # 1093c <gettimeofday>
   1098a:	6098                	ld	a4,0(s1)
   1098c:	6782                	ld	a5,0(sp)
   1098e:	6494                	ld	a3,8(s1)
   10990:	00043823          	sd	zero,16(s0)
   10994:	8f99                	sub	a5,a5,a4
   10996:	000f4737          	lui	a4,0xf4
   1099a:	24070713          	addi	a4,a4,576 # f4240 <__global_pointer$+0xe2240>
   1099e:	02e787b3          	mul	a5,a5,a4
   109a2:	6722                	ld	a4,8(sp)
   109a4:	00043c23          	sd	zero,24(s0)
   109a8:	00043423          	sd	zero,8(s0)
   109ac:	8f15                	sub	a4,a4,a3
   109ae:	70a2                	ld	ra,40(sp)
   109b0:	64e2                	ld	s1,24(sp)
   109b2:	557d                	li	a0,-1
   109b4:	97ba                	add	a5,a5,a4
   109b6:	e01c                	sd	a5,0(s0)
   109b8:	7402                	ld	s0,32(sp)
   109ba:	6145                	addi	sp,sp,48
   109bc:	8082                	ret

00000000000109be <ftime>:
   109be:	00051423          	sh	zero,8(a0)
   109c2:	00053023          	sd	zero,0(a0)
   109c6:	4501                	li	a0,0
   109c8:	8082                	ret

00000000000109ca <utime>:
   109ca:	557d                	li	a0,-1
   109cc:	8082                	ret

00000000000109ce <chown>:
   109ce:	557d                	li	a0,-1
   109d0:	8082                	ret

00000000000109d2 <chmod>:
   109d2:	557d                	li	a0,-1
   109d4:	8082                	ret

00000000000109d6 <chdir>:
   109d6:	557d                	li	a0,-1
   109d8:	8082                	ret

00000000000109da <getcwd>:
   109da:	4501                	li	a0,0
   109dc:	8082                	ret

00000000000109de <sysconf>:
   109de:	4789                	li	a5,2
   109e0:	00f50463          	beq	a0,a5,109e8 <sysconf+0xa>
   109e4:	557d                	li	a0,-1
   109e6:	8082                	ret
   109e8:	000f4537          	lui	a0,0xf4
   109ec:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe2240>
   109f0:	8082                	ret

00000000000109f2 <sbrk>:
   109f2:	1101                	addi	sp,sp,-32
   109f4:	e822                	sd	s0,16(sp)
   109f6:	8181b783          	ld	a5,-2024(gp) # 11818 <_edata>
   109fa:	e426                	sd	s1,8(sp)
   109fc:	ec06                	sd	ra,24(sp)
   109fe:	84aa                	mv	s1,a0
   10a00:	e785                	bnez	a5,10a28 <sbrk+0x36>
   10a02:	4701                	li	a4,0
   10a04:	4681                	li	a3,0
   10a06:	4601                	li	a2,0
   10a08:	4581                	li	a1,0
   10a0a:	0d600513          	li	a0,214
   10a0e:	cb9ff0ef          	jal	ra,106c6 <__internal_syscall>
   10a12:	57fd                	li	a5,-1
   10a14:	00f51863          	bne	a0,a5,10a24 <sbrk+0x32>
   10a18:	557d                	li	a0,-1
   10a1a:	60e2                	ld	ra,24(sp)
   10a1c:	6442                	ld	s0,16(sp)
   10a1e:	64a2                	ld	s1,8(sp)
   10a20:	6105                	addi	sp,sp,32
   10a22:	8082                	ret
   10a24:	80a1bc23          	sd	a0,-2024(gp) # 11818 <_edata>
   10a28:	8181b583          	ld	a1,-2024(gp) # 11818 <_edata>
   10a2c:	4701                	li	a4,0
   10a2e:	4681                	li	a3,0
   10a30:	95a6                	add	a1,a1,s1
   10a32:	4601                	li	a2,0
   10a34:	0d600513          	li	a0,214
   10a38:	c8fff0ef          	jal	ra,106c6 <__internal_syscall>
   10a3c:	8181b783          	ld	a5,-2024(gp) # 11818 <_edata>
   10a40:	94be                	add	s1,s1,a5
   10a42:	fc951be3          	bne	a0,s1,10a18 <sbrk+0x26>
   10a46:	80a1bc23          	sd	a0,-2024(gp) # 11818 <_edata>
   10a4a:	853e                	mv	a0,a5
   10a4c:	b7f9                	j	10a1a <sbrk+0x28>

0000000000010a4e <_exit>:
   10a4e:	1141                	addi	sp,sp,-16
   10a50:	85aa                	mv	a1,a0
   10a52:	4701                	li	a4,0
   10a54:	4681                	li	a3,0
   10a56:	4601                	li	a2,0
   10a58:	05d00513          	li	a0,93
   10a5c:	e406                	sd	ra,8(sp)
   10a5e:	00000097          	auipc	ra,0x0
   10a62:	c68080e7          	jalr	-920(ra) # 106c6 <__internal_syscall>
   10a66:	a001                	j	10a66 <_exit+0x18>

0000000000010a68 <__errno>:
   10a68:	8101b503          	ld	a0,-2032(gp) # 11810 <_impure_ptr>
   10a6c:	8082                	ret
	...

Disassembly of section .eh_frame:

0000000000010a70 <__EH_FRAME_BEGIN__>:
   10a70:	0000                	unimp
	...

Disassembly of section .init_array:

0000000000011000 <__frame_dummy_init_array_entry>:
   11000:	017e                	slli	sp,sp,0x1f
   11002:	0001                	nop
   11004:	0000                	unimp
	...

Disassembly of section .fini_array:

0000000000011008 <__do_global_dtors_aux_fini_array_entry>:
   11008:	0144                	addi	s1,sp,132
   1100a:	0001                	nop
   1100c:	0000                	unimp
	...

Disassembly of section .data:

0000000000011010 <result>:
   11010:	0000                	unimp
   11012:	0000                	unimp
   11014:	0001                	nop
   11016:	0000                	unimp
   11018:	0002                	0x2
   1101a:	0000                	unimp
   1101c:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
   11020:	0004                	addi	s1,sp,0
   11022:	0000                	unimp
   11024:	0005                	c.addi	zero,1
   11026:	0000                	unimp
   11028:	0006                	0x6
   1102a:	0000                	unimp
   1102c:	00000007          	0x7
   11030:	0008                	addi	a0,sp,0
   11032:	0000                	unimp
   11034:	0009                	c.addi	zero,2
   11036:	0000                	unimp
   11038:	000a                	0xa
   1103a:	0000                	unimp
   1103c:	0000000b          	0xb
   11040:	000c                	addi	a1,sp,0
   11042:	0000                	unimp
   11044:	000d                	c.addi	zero,3
   11046:	0000                	unimp
   11048:	000e                	0xe
   1104a:	0000                	unimp
   1104c:	0000000f          	fence	unknown,unknown
   11050:	0010                	addi	a2,sp,0
   11052:	0000                	unimp
   11054:	0011                	c.addi	zero,4
   11056:	0000                	unimp
   11058:	0012                	0x12
   1105a:	0000                	unimp
   1105c:	00000013          	nop
   11060:	0014                	addi	a3,sp,0
   11062:	0000                	unimp
   11064:	0015                	c.addi	zero,5
   11066:	0000                	unimp
   11068:	0016                	0x16
   1106a:	0000                	unimp
   1106c:	00000017          	auipc	zero,0x0
   11070:	0018                	addi	a4,sp,0
   11072:	0000                	unimp
   11074:	0019                	c.addi	zero,6
   11076:	0000                	unimp
   11078:	001a                	0x1a
   1107a:	0000                	unimp
   1107c:	0000001b          	sext.w	zero,zero
   11080:	001c                	addi	a5,sp,0
   11082:	0000                	unimp
   11084:	001d                	c.addi	zero,7
   11086:	0000                	unimp
   11088:	001e                	0x1e
   1108a:	0000                	unimp
   1108c:	001f 0000 0020      	0x200000001f
   11092:	0000                	unimp
   11094:	0021                	c.addi	zero,8
   11096:	0000                	unimp
   11098:	0022                	0x22
   1109a:	0000                	unimp
   1109c:	00000023          	sb	zero,0(zero) # 1106c <result+0x5c>
   110a0:	0024                	addi	s1,sp,8
   110a2:	0000                	unimp
   110a4:	0025                	c.addi	zero,9
   110a6:	0000                	unimp
   110a8:	0026                	0x26
   110aa:	0000                	unimp
   110ac:	00000027          	0x27
	...

00000000000110b8 <impure_data>:
	...
   110c0:	15f0                	addi	a2,sp,748
   110c2:	0001                	nop
   110c4:	0000                	unimp
   110c6:	0000                	unimp
   110c8:	16a0                	addi	s0,sp,872
   110ca:	0001                	nop
   110cc:	0000                	unimp
   110ce:	0000                	unimp
   110d0:	1750                	addi	a2,sp,932
   110d2:	0001                	nop
	...
   111a0:	0001                	nop
   111a2:	0000                	unimp
   111a4:	0000                	unimp
   111a6:	0000                	unimp
   111a8:	330e                	fld	ft6,224(sp)
   111aa:	abcd                	j	1179c <impure_data+0x6e4>
   111ac:	1234                	addi	a3,sp,296
   111ae:	e66d                	bnez	a2,11298 <impure_data+0x1e0>
   111b0:	deec                	sw	a1,124(a3)
   111b2:	0005                	c.addi	zero,1
   111b4:	0000000b          	0xb
	...

Disassembly of section .sdata:

0000000000011800 <__TMC_END__>:
	...

0000000000011808 <_global_impure_ptr>:
   11808:	10b8                	addi	a4,sp,104
   1180a:	0001                	nop
   1180c:	0000                	unimp
	...

0000000000011810 <_impure_ptr>:
   11810:	10b8                	addi	a4,sp,104
   11812:	0001                	nop
   11814:	0000                	unimp
	...

Disassembly of section .sbss:

0000000000011818 <__bss_start>:
	...

Disassembly of section .bss:

0000000000011820 <completed.5184>:
	...

0000000000011828 <object.5189>:
	...

0000000000011858 <t0.2574>:
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
