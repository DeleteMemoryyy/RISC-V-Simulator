
qsort:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ea818193          	addi	gp,gp,-344 # 11f58 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11770 <_edata>
   100bc:	91018613          	addi	a2,gp,-1776 # 11868 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	41c000ef          	jal	ra,104e0 <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	36250513          	addi	a0,a0,866 # 1042a <__libc_fini_array>
   100d0:	00000097          	auipc	ra,0x0
   100d4:	326080e7          	jalr	806(ra) # 103f6 <atexit>
   100d8:	00000097          	auipc	ra,0x0
   100dc:	3a0080e7          	jalr	928(ra) # 10478 <__libc_init_array>
   100e0:	4502                	lw	a0,0(sp)
   100e2:	002c                	addi	a1,sp,8
   100e4:	4601                	li	a2,0
   100e6:	296000ef          	jal	ra,1037c <main>
   100ea:	00000317          	auipc	t1,0x0
   100ee:	31a30067          	jr	794(t1) # 10404 <exit>

00000000000100f2 <_fini>:
   100f2:	8082                	ret

00000000000100f4 <deregister_tm_clones>:
   100f4:	6545                	lui	a0,0x11
   100f6:	67c5                	lui	a5,0x11
   100f8:	75850713          	addi	a4,a0,1880 # 11758 <__TMC_END__>
   100fc:	75878793          	addi	a5,a5,1880 # 11758 <__TMC_END__>
   10100:	00e78b63          	beq	a5,a4,10116 <deregister_tm_clones+0x22>
   10104:	00000337          	lui	t1,0x0
   10108:	00030313          	mv	t1,t1
   1010c:	00030563          	beqz	t1,10116 <deregister_tm_clones+0x22>
   10110:	75850513          	addi	a0,a0,1880
   10114:	8302                	jr	t1
   10116:	8082                	ret

0000000000010118 <register_tm_clones>:
   10118:	67c5                	lui	a5,0x11
   1011a:	6545                	lui	a0,0x11
   1011c:	75878593          	addi	a1,a5,1880 # 11758 <__TMC_END__>
   10120:	75850793          	addi	a5,a0,1880 # 11758 <__TMC_END__>
   10124:	8d9d                	sub	a1,a1,a5
   10126:	858d                	srai	a1,a1,0x3
   10128:	4789                	li	a5,2
   1012a:	02f5c5b3          	div	a1,a1,a5
   1012e:	c991                	beqz	a1,10142 <register_tm_clones+0x2a>
   10130:	00000337          	lui	t1,0x0
   10134:	00030313          	mv	t1,t1
   10138:	00030563          	beqz	t1,10142 <register_tm_clones+0x2a>
   1013c:	75850513          	addi	a0,a0,1880
   10140:	8302                	jr	t1
   10142:	8082                	ret

0000000000010144 <__do_global_dtors_aux>:
   10144:	8201c703          	lbu	a4,-2016(gp) # 11778 <completed.5184>
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
   10162:	ab050513          	addi	a0,a0,-1360 # 10ab0 <__EH_FRAME_BEGIN__>
   10166:	ffff0097          	auipc	ra,0xffff0
   1016a:	e9a080e7          	jalr	-358(ra) # 0 <_start-0x100b0>
   1016e:	4785                	li	a5,1
   10170:	82f18023          	sb	a5,-2016(gp) # 11778 <completed.5184>
   10174:	60a2                	ld	ra,8(sp)
   10176:	6402                	ld	s0,0(sp)
   10178:	0141                	addi	sp,sp,16
   1017a:	8082                	ret
   1017c:	8082                	ret

000000000001017e <frame_dummy>:
   1017e:	000007b7          	lui	a5,0x0
   10182:	00078793          	mv	a5,a5
   10186:	cf99                	beqz	a5,101a4 <frame_dummy+0x26>
   10188:	65c5                	lui	a1,0x11
   1018a:	6545                	lui	a0,0x11
   1018c:	1141                	addi	sp,sp,-16
   1018e:	78058593          	addi	a1,a1,1920 # 11780 <object.5189>
   10192:	ab050513          	addi	a0,a0,-1360 # 10ab0 <__EH_FRAME_BEGIN__>
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
   101d8:	7b078793          	addi	a5,a5,1968 # 117b0 <result>
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
   1023c:	7b078793          	addi	a5,a5,1968 # 117b0 <result>
   10240:	00f707b3          	add	a5,a4,a5
   10244:	0007a703          	lw	a4,0(a5)
   10248:	fe442783          	lw	a5,-28(s0)
   1024c:	0007879b          	sext.w	a5,a5
   10250:	fcf750e3          	ble	a5,a4,10210 <qsort+0x68>
   10254:	000117b7          	lui	a5,0x11
   10258:	fe842703          	lw	a4,-24(s0)
   1025c:	00271713          	slli	a4,a4,0x2
   10260:	7b078793          	addi	a5,a5,1968 # 117b0 <result>
   10264:	00f707b3          	add	a5,a4,a5
   10268:	0007a703          	lw	a4,0(a5)
   1026c:	000117b7          	lui	a5,0x11
   10270:	fec42683          	lw	a3,-20(s0)
   10274:	00269693          	slli	a3,a3,0x2
   10278:	7b078793          	addi	a5,a5,1968 # 117b0 <result>
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
   102b4:	7b078793          	addi	a5,a5,1968 # 117b0 <result>
   102b8:	00f707b3          	add	a5,a4,a5
   102bc:	0007a703          	lw	a4,0(a5)
   102c0:	fe442783          	lw	a5,-28(s0)
   102c4:	0007879b          	sext.w	a5,a5
   102c8:	fce7d0e3          	ble	a4,a5,10288 <qsort+0xe0>
   102cc:	000117b7          	lui	a5,0x11
   102d0:	fec42703          	lw	a4,-20(s0)
   102d4:	00271713          	slli	a4,a4,0x2
   102d8:	7b078793          	addi	a5,a5,1968 # 117b0 <result>
   102dc:	00f707b3          	add	a5,a4,a5
   102e0:	0007a703          	lw	a4,0(a5)
   102e4:	000117b7          	lui	a5,0x11
   102e8:	fe842683          	lw	a3,-24(s0)
   102ec:	00269693          	slli	a3,a3,0x2
   102f0:	7b078793          	addi	a5,a5,1968 # 117b0 <result>
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
   1031c:	7b078793          	addi	a5,a5,1968 # 117b0 <result>
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
   1037c:	fe010113          	addi	sp,sp,-32
   10380:	00113c23          	sd	ra,24(sp)
   10384:	00813823          	sd	s0,16(sp)
   10388:	02010413          	addi	s0,sp,32
   1038c:	02800793          	li	a5,40
   10390:	fef42623          	sw	a5,-20(s0)
   10394:	02c0006f          	j	103c0 <main+0x44>
   10398:	000117b7          	lui	a5,0x11
   1039c:	fec42703          	lw	a4,-20(s0)
   103a0:	00271713          	slli	a4,a4,0x2
   103a4:	7b078793          	addi	a5,a5,1968 # 117b0 <result>
   103a8:	00f707b3          	add	a5,a4,a5
   103ac:	fec42703          	lw	a4,-20(s0)
   103b0:	00e7a023          	sw	a4,0(a5)
   103b4:	fec42783          	lw	a5,-20(s0)
   103b8:	fff7879b          	addiw	a5,a5,-1
   103bc:	fef42623          	sw	a5,-20(s0)
   103c0:	fec42783          	lw	a5,-20(s0)
   103c4:	0007879b          	sext.w	a5,a5
   103c8:	fcf048e3          	bgtz	a5,10398 <main+0x1c>
   103cc:	02700593          	li	a1,39
   103d0:	00000513          	li	a0,0
   103d4:	00000097          	auipc	ra,0x0
   103d8:	dd4080e7          	jalr	-556(ra) # 101a8 <qsort>
   103dc:	00000793          	li	a5,0
   103e0:	00078513          	mv	a0,a5
   103e4:	01813083          	ld	ra,24(sp)
   103e8:	01013403          	ld	s0,16(sp)
   103ec:	02010113          	addi	sp,sp,32
   103f0:	00008067          	ret
	...

00000000000103f6 <atexit>:
   103f6:	85aa                	mv	a1,a0
   103f8:	4681                	li	a3,0
   103fa:	4601                	li	a2,0
   103fc:	4501                	li	a0,0
   103fe:	18c0006f          	j	1058a <__register_exitproc>
	...

0000000000010404 <exit>:
   10404:	1141                	addi	sp,sp,-16
   10406:	4581                	li	a1,0
   10408:	e022                	sd	s0,0(sp)
   1040a:	e406                	sd	ra,8(sp)
   1040c:	842a                	mv	s0,a0
   1040e:	1e4000ef          	jal	ra,105f2 <__call_exitprocs>
   10412:	67c5                	lui	a5,0x11
   10414:	7607b503          	ld	a0,1888(a5) # 11760 <_global_impure_ptr>
   10418:	6d3c                	ld	a5,88(a0)
   1041a:	c391                	beqz	a5,1041e <exit+0x1a>
   1041c:	9782                	jalr	a5
   1041e:	8522                	mv	a0,s0
   10420:	00000097          	auipc	ra,0x0
   10424:	66e080e7          	jalr	1646(ra) # 10a8e <_exit>
	...

000000000001042a <__libc_fini_array>:
   1042a:	7179                	addi	sp,sp,-48
   1042c:	67c5                	lui	a5,0x11
   1042e:	6745                	lui	a4,0x11
   10430:	f022                	sd	s0,32(sp)
   10432:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   10436:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   1043a:	8c19                	sub	s0,s0,a4
   1043c:	ec26                	sd	s1,24(sp)
   1043e:	e84a                	sd	s2,16(sp)
   10440:	e44e                	sd	s3,8(sp)
   10442:	f406                	sd	ra,40(sp)
   10444:	840d                	srai	s0,s0,0x3
   10446:	4481                	li	s1,0
   10448:	01078913          	addi	s2,a5,16
   1044c:	59e1                	li	s3,-8
   1044e:	00941c63          	bne	s0,s1,10466 <__libc_fini_array+0x3c>
   10452:	7402                	ld	s0,32(sp)
   10454:	70a2                	ld	ra,40(sp)
   10456:	64e2                	ld	s1,24(sp)
   10458:	6942                	ld	s2,16(sp)
   1045a:	69a2                	ld	s3,8(sp)
   1045c:	6145                	addi	sp,sp,48
   1045e:	00000317          	auipc	t1,0x0
   10462:	c9430067          	jr	-876(t1) # 100f2 <_fini>
   10466:	033487b3          	mul	a5,s1,s3
   1046a:	0485                	addi	s1,s1,1
   1046c:	97ca                	add	a5,a5,s2
   1046e:	ff87b783          	ld	a5,-8(a5)
   10472:	9782                	jalr	a5
   10474:	bfe9                	j	1044e <__libc_fini_array+0x24>
	...

0000000000010478 <__libc_init_array>:
   10478:	1101                	addi	sp,sp,-32
   1047a:	e822                	sd	s0,16(sp)
   1047c:	e426                	sd	s1,8(sp)
   1047e:	6445                	lui	s0,0x11
   10480:	64c5                	lui	s1,0x11
   10482:	00048793          	mv	a5,s1
   10486:	00040413          	mv	s0,s0
   1048a:	8c1d                	sub	s0,s0,a5
   1048c:	e04a                	sd	s2,0(sp)
   1048e:	ec06                	sd	ra,24(sp)
   10490:	840d                	srai	s0,s0,0x3
   10492:	00048493          	mv	s1,s1
   10496:	4901                	li	s2,0
   10498:	02891963          	bne	s2,s0,104ca <__libc_init_array+0x52>
   1049c:	64c5                	lui	s1,0x11
   1049e:	00000097          	auipc	ra,0x0
   104a2:	c54080e7          	jalr	-940(ra) # 100f2 <_fini>
   104a6:	6445                	lui	s0,0x11
   104a8:	00048793          	mv	a5,s1
   104ac:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   104b0:	8c1d                	sub	s0,s0,a5
   104b2:	840d                	srai	s0,s0,0x3
   104b4:	00048493          	mv	s1,s1
   104b8:	4901                	li	s2,0
   104ba:	00891d63          	bne	s2,s0,104d4 <__libc_init_array+0x5c>
   104be:	60e2                	ld	ra,24(sp)
   104c0:	6442                	ld	s0,16(sp)
   104c2:	64a2                	ld	s1,8(sp)
   104c4:	6902                	ld	s2,0(sp)
   104c6:	6105                	addi	sp,sp,32
   104c8:	8082                	ret
   104ca:	609c                	ld	a5,0(s1)
   104cc:	0905                	addi	s2,s2,1
   104ce:	04a1                	addi	s1,s1,8
   104d0:	9782                	jalr	a5
   104d2:	b7d9                	j	10498 <__libc_init_array+0x20>
   104d4:	609c                	ld	a5,0(s1)
   104d6:	0905                	addi	s2,s2,1
   104d8:	04a1                	addi	s1,s1,8
   104da:	9782                	jalr	a5
   104dc:	bff9                	j	104ba <__libc_init_array+0x42>
	...

00000000000104e0 <memset>:
   104e0:	483d                	li	a6,15
   104e2:	872a                	mv	a4,a0
   104e4:	02c87163          	bleu	a2,a6,10506 <memset+0x26>
   104e8:	00f77793          	andi	a5,a4,15
   104ec:	e3c1                	bnez	a5,1056c <memset+0x8c>
   104ee:	e1bd                	bnez	a1,10554 <memset+0x74>
   104f0:	ff067693          	andi	a3,a2,-16
   104f4:	8a3d                	andi	a2,a2,15
   104f6:	96ba                	add	a3,a3,a4
   104f8:	e30c                	sd	a1,0(a4)
   104fa:	e70c                	sd	a1,8(a4)
   104fc:	0741                	addi	a4,a4,16
   104fe:	fed76de3          	bltu	a4,a3,104f8 <memset+0x18>
   10502:	e211                	bnez	a2,10506 <memset+0x26>
   10504:	8082                	ret
   10506:	40c806b3          	sub	a3,a6,a2
   1050a:	068a                	slli	a3,a3,0x2
   1050c:	00000297          	auipc	t0,0x0
   10510:	9696                	add	a3,a3,t0
   10512:	00a68067          	jr	10(a3)
   10516:	00b70723          	sb	a1,14(a4)
   1051a:	00b706a3          	sb	a1,13(a4)
   1051e:	00b70623          	sb	a1,12(a4)
   10522:	00b705a3          	sb	a1,11(a4)
   10526:	00b70523          	sb	a1,10(a4)
   1052a:	00b704a3          	sb	a1,9(a4)
   1052e:	00b70423          	sb	a1,8(a4)
   10532:	00b703a3          	sb	a1,7(a4)
   10536:	00b70323          	sb	a1,6(a4)
   1053a:	00b702a3          	sb	a1,5(a4)
   1053e:	00b70223          	sb	a1,4(a4)
   10542:	00b701a3          	sb	a1,3(a4)
   10546:	00b70123          	sb	a1,2(a4)
   1054a:	00b700a3          	sb	a1,1(a4)
   1054e:	00b70023          	sb	a1,0(a4)
   10552:	8082                	ret
   10554:	0ff5f593          	andi	a1,a1,255
   10558:	00859693          	slli	a3,a1,0x8
   1055c:	8dd5                	or	a1,a1,a3
   1055e:	01059693          	slli	a3,a1,0x10
   10562:	8dd5                	or	a1,a1,a3
   10564:	02059693          	slli	a3,a1,0x20
   10568:	8dd5                	or	a1,a1,a3
   1056a:	b759                	j	104f0 <memset+0x10>
   1056c:	00279693          	slli	a3,a5,0x2
   10570:	00000297          	auipc	t0,0x0
   10574:	9696                	add	a3,a3,t0
   10576:	8286                	mv	t0,ra
   10578:	fa2680e7          	jalr	-94(a3)
   1057c:	8096                	mv	ra,t0
   1057e:	17c1                	addi	a5,a5,-16
   10580:	8f1d                	sub	a4,a4,a5
   10582:	963e                	add	a2,a2,a5
   10584:	f8c871e3          	bleu	a2,a6,10506 <memset+0x26>
   10588:	b79d                	j	104ee <memset+0xe>

000000000001058a <__register_exitproc>:
   1058a:	67c5                	lui	a5,0x11
   1058c:	7607b703          	ld	a4,1888(a5) # 11760 <_global_impure_ptr>
   10590:	832a                	mv	t1,a0
   10592:	1f873783          	ld	a5,504(a4)
   10596:	e789                	bnez	a5,105a0 <__register_exitproc+0x16>
   10598:	20070793          	addi	a5,a4,512
   1059c:	1ef73c23          	sd	a5,504(a4)
   105a0:	4798                	lw	a4,8(a5)
   105a2:	487d                	li	a6,31
   105a4:	557d                	li	a0,-1
   105a6:	04e84463          	blt	a6,a4,105ee <__register_exitproc+0x64>
   105aa:	02030a63          	beqz	t1,105de <__register_exitproc+0x54>
   105ae:	00371813          	slli	a6,a4,0x3
   105b2:	983e                	add	a6,a6,a5
   105b4:	10c83823          	sd	a2,272(a6)
   105b8:	3107a883          	lw	a7,784(a5)
   105bc:	4605                	li	a2,1
   105be:	00e6163b          	sllw	a2,a2,a4
   105c2:	00c8e8b3          	or	a7,a7,a2
   105c6:	3117a823          	sw	a7,784(a5)
   105ca:	20d83823          	sd	a3,528(a6)
   105ce:	4689                	li	a3,2
   105d0:	00d31763          	bne	t1,a3,105de <__register_exitproc+0x54>
   105d4:	3147a683          	lw	a3,788(a5)
   105d8:	8e55                	or	a2,a2,a3
   105da:	30c7aa23          	sw	a2,788(a5)
   105de:	0017069b          	addiw	a3,a4,1
   105e2:	0709                	addi	a4,a4,2
   105e4:	070e                	slli	a4,a4,0x3
   105e6:	c794                	sw	a3,8(a5)
   105e8:	97ba                	add	a5,a5,a4
   105ea:	e38c                	sd	a1,0(a5)
   105ec:	4501                	li	a0,0
   105ee:	8082                	ret
	...

00000000000105f2 <__call_exitprocs>:
   105f2:	715d                	addi	sp,sp,-80
   105f4:	67c5                	lui	a5,0x11
   105f6:	f44e                	sd	s3,40(sp)
   105f8:	7607b983          	ld	s3,1888(a5) # 11760 <_global_impure_ptr>
   105fc:	f052                	sd	s4,32(sp)
   105fe:	ec56                	sd	s5,24(sp)
   10600:	e85a                	sd	s6,16(sp)
   10602:	e486                	sd	ra,72(sp)
   10604:	e0a2                	sd	s0,64(sp)
   10606:	fc26                	sd	s1,56(sp)
   10608:	f84a                	sd	s2,48(sp)
   1060a:	e45e                	sd	s7,8(sp)
   1060c:	8aaa                	mv	s5,a0
   1060e:	8a2e                	mv	s4,a1
   10610:	4b05                	li	s6,1
   10612:	1f89b403          	ld	s0,504(s3)
   10616:	c801                	beqz	s0,10626 <__call_exitprocs+0x34>
   10618:	4404                	lw	s1,8(s0)
   1061a:	34fd                	addiw	s1,s1,-1
   1061c:	00349913          	slli	s2,s1,0x3
   10620:	9922                	add	s2,s2,s0
   10622:	0004dd63          	bgez	s1,1063c <__call_exitprocs+0x4a>
   10626:	60a6                	ld	ra,72(sp)
   10628:	6406                	ld	s0,64(sp)
   1062a:	74e2                	ld	s1,56(sp)
   1062c:	7942                	ld	s2,48(sp)
   1062e:	79a2                	ld	s3,40(sp)
   10630:	7a02                	ld	s4,32(sp)
   10632:	6ae2                	ld	s5,24(sp)
   10634:	6b42                	ld	s6,16(sp)
   10636:	6ba2                	ld	s7,8(sp)
   10638:	6161                	addi	sp,sp,80
   1063a:	8082                	ret
   1063c:	000a0963          	beqz	s4,1064e <__call_exitprocs+0x5c>
   10640:	21093783          	ld	a5,528(s2)
   10644:	01478563          	beq	a5,s4,1064e <__call_exitprocs+0x5c>
   10648:	34fd                	addiw	s1,s1,-1
   1064a:	1961                	addi	s2,s2,-8
   1064c:	bfd9                	j	10622 <__call_exitprocs+0x30>
   1064e:	441c                	lw	a5,8(s0)
   10650:	01093683          	ld	a3,16(s2)
   10654:	37fd                	addiw	a5,a5,-1
   10656:	02979663          	bne	a5,s1,10682 <__call_exitprocs+0x90>
   1065a:	c404                	sw	s1,8(s0)
   1065c:	d6f5                	beqz	a3,10648 <__call_exitprocs+0x56>
   1065e:	31042703          	lw	a4,784(s0)
   10662:	009b163b          	sllw	a2,s6,s1
   10666:	00842b83          	lw	s7,8(s0)
   1066a:	8f71                	and	a4,a4,a2
   1066c:	2701                	sext.w	a4,a4
   1066e:	ef09                	bnez	a4,10688 <__call_exitprocs+0x96>
   10670:	9682                	jalr	a3
   10672:	4418                	lw	a4,8(s0)
   10674:	1f89b783          	ld	a5,504(s3)
   10678:	f9771de3          	bne	a4,s7,10612 <__call_exitprocs+0x20>
   1067c:	fcf406e3          	beq	s0,a5,10648 <__call_exitprocs+0x56>
   10680:	bf49                	j	10612 <__call_exitprocs+0x20>
   10682:	00093823          	sd	zero,16(s2)
   10686:	bfd9                	j	1065c <__call_exitprocs+0x6a>
   10688:	31442783          	lw	a5,788(s0)
   1068c:	11093583          	ld	a1,272(s2)
   10690:	8ff1                	and	a5,a5,a2
   10692:	2781                	sext.w	a5,a5
   10694:	e781                	bnez	a5,1069c <__call_exitprocs+0xaa>
   10696:	8556                	mv	a0,s5
   10698:	9682                	jalr	a3
   1069a:	bfe1                	j	10672 <__call_exitprocs+0x80>
   1069c:	852e                	mv	a0,a1
   1069e:	9682                	jalr	a3
   106a0:	bfc9                	j	10672 <__call_exitprocs+0x80>
	...

00000000000106a4 <conv_stat>:
   106a4:	619c                	ld	a5,0(a1)
   106a6:	00f51023          	sh	a5,0(a0)
   106aa:	659c                	ld	a5,8(a1)
   106ac:	00f51123          	sh	a5,2(a0)
   106b0:	499c                	lw	a5,16(a1)
   106b2:	c15c                	sw	a5,4(a0)
   106b4:	49dc                	lw	a5,20(a1)
   106b6:	00f51423          	sh	a5,8(a0)
   106ba:	4d9c                	lw	a5,24(a1)
   106bc:	00f51523          	sh	a5,10(a0)
   106c0:	4ddc                	lw	a5,28(a1)
   106c2:	00f51623          	sh	a5,12(a0)
   106c6:	719c                	ld	a5,32(a1)
   106c8:	00f51723          	sh	a5,14(a0)
   106cc:	799c                	ld	a5,48(a1)
   106ce:	e91c                	sd	a5,16(a0)
   106d0:	61bc                	ld	a5,64(a1)
   106d2:	e93c                	sd	a5,80(a0)
   106d4:	5d9c                	lw	a5,56(a1)
   106d6:	e53c                	sd	a5,72(a0)
   106d8:	65bc                	ld	a5,72(a1)
   106da:	ed1c                	sd	a5,24(a0)
   106dc:	6dbc                	ld	a5,88(a1)
   106de:	f51c                	sd	a5,40(a0)
   106e0:	75bc                	ld	a5,104(a1)
   106e2:	fd1c                	sd	a5,56(a0)
   106e4:	8082                	ret

00000000000106e6 <__syscall_error>:
   106e6:	1141                	addi	sp,sp,-16
   106e8:	e022                	sd	s0,0(sp)
   106ea:	e406                	sd	ra,8(sp)
   106ec:	842a                	mv	s0,a0
   106ee:	00000097          	auipc	ra,0x0
   106f2:	3ba080e7          	jalr	954(ra) # 10aa8 <__errno>
   106f6:	408007bb          	negw	a5,s0
   106fa:	60a2                	ld	ra,8(sp)
   106fc:	6402                	ld	s0,0(sp)
   106fe:	c11c                	sw	a5,0(a0)
   10700:	557d                	li	a0,-1
   10702:	0141                	addi	sp,sp,16
   10704:	8082                	ret

0000000000010706 <__internal_syscall>:
   10706:	88aa                	mv	a7,a0
   10708:	852e                	mv	a0,a1
   1070a:	85b2                	mv	a1,a2
   1070c:	8636                	mv	a2,a3
   1070e:	86ba                	mv	a3,a4
   10710:	00000073          	ecall
   10714:	00055663          	bgez	a0,10720 <__internal_syscall+0x1a>
   10718:	00000317          	auipc	t1,0x0
   1071c:	fce30067          	jr	-50(t1) # 106e6 <__syscall_error>
   10720:	8082                	ret

0000000000010722 <open>:
   10722:	1141                	addi	sp,sp,-16
   10724:	86b2                	mv	a3,a2
   10726:	4701                	li	a4,0
   10728:	862e                	mv	a2,a1
   1072a:	85aa                	mv	a1,a0
   1072c:	40000513          	li	a0,1024
   10730:	e406                	sd	ra,8(sp)
   10732:	00000097          	auipc	ra,0x0
   10736:	fd4080e7          	jalr	-44(ra) # 10706 <__internal_syscall>
   1073a:	60a2                	ld	ra,8(sp)
   1073c:	2501                	sext.w	a0,a0
   1073e:	0141                	addi	sp,sp,16
   10740:	8082                	ret

0000000000010742 <openat>:
   10742:	1141                	addi	sp,sp,-16
   10744:	8736                	mv	a4,a3
   10746:	86b2                	mv	a3,a2
   10748:	862e                	mv	a2,a1
   1074a:	85aa                	mv	a1,a0
   1074c:	03800513          	li	a0,56
   10750:	e406                	sd	ra,8(sp)
   10752:	fb5ff0ef          	jal	ra,10706 <__internal_syscall>
   10756:	60a2                	ld	ra,8(sp)
   10758:	2501                	sext.w	a0,a0
   1075a:	0141                	addi	sp,sp,16
   1075c:	8082                	ret

000000000001075e <lseek>:
   1075e:	86b2                	mv	a3,a2
   10760:	4701                	li	a4,0
   10762:	862e                	mv	a2,a1
   10764:	85aa                	mv	a1,a0
   10766:	03e00513          	li	a0,62
   1076a:	00000317          	auipc	t1,0x0
   1076e:	f9c30067          	jr	-100(t1) # 10706 <__internal_syscall>

0000000000010772 <read>:
   10772:	86b2                	mv	a3,a2
   10774:	4701                	li	a4,0
   10776:	862e                	mv	a2,a1
   10778:	85aa                	mv	a1,a0
   1077a:	03f00513          	li	a0,63
   1077e:	f89ff06f          	j	10706 <__internal_syscall>

0000000000010782 <write>:
   10782:	86b2                	mv	a3,a2
   10784:	4701                	li	a4,0
   10786:	862e                	mv	a2,a1
   10788:	85aa                	mv	a1,a0
   1078a:	04000513          	li	a0,64
   1078e:	00000317          	auipc	t1,0x0
   10792:	f7830067          	jr	-136(t1) # 10706 <__internal_syscall>

0000000000010796 <fstat>:
   10796:	7135                	addi	sp,sp,-160
   10798:	e526                	sd	s1,136(sp)
   1079a:	860a                	mv	a2,sp
   1079c:	84ae                	mv	s1,a1
   1079e:	4701                	li	a4,0
   107a0:	85aa                	mv	a1,a0
   107a2:	4681                	li	a3,0
   107a4:	05000513          	li	a0,80
   107a8:	ed06                	sd	ra,152(sp)
   107aa:	e922                	sd	s0,144(sp)
   107ac:	f5bff0ef          	jal	ra,10706 <__internal_syscall>
   107b0:	842a                	mv	s0,a0
   107b2:	858a                	mv	a1,sp
   107b4:	8526                	mv	a0,s1
   107b6:	eefff0ef          	jal	ra,106a4 <conv_stat>
   107ba:	0004051b          	sext.w	a0,s0
   107be:	60ea                	ld	ra,152(sp)
   107c0:	644a                	ld	s0,144(sp)
   107c2:	64aa                	ld	s1,136(sp)
   107c4:	610d                	addi	sp,sp,160
   107c6:	8082                	ret

00000000000107c8 <stat>:
   107c8:	7135                	addi	sp,sp,-160
   107ca:	e526                	sd	s1,136(sp)
   107cc:	860a                	mv	a2,sp
   107ce:	84ae                	mv	s1,a1
   107d0:	4701                	li	a4,0
   107d2:	85aa                	mv	a1,a0
   107d4:	4681                	li	a3,0
   107d6:	40e00513          	li	a0,1038
   107da:	ed06                	sd	ra,152(sp)
   107dc:	e922                	sd	s0,144(sp)
   107de:	00000097          	auipc	ra,0x0
   107e2:	f28080e7          	jalr	-216(ra) # 10706 <__internal_syscall>
   107e6:	842a                	mv	s0,a0
   107e8:	858a                	mv	a1,sp
   107ea:	8526                	mv	a0,s1
   107ec:	00000097          	auipc	ra,0x0
   107f0:	eb8080e7          	jalr	-328(ra) # 106a4 <conv_stat>
   107f4:	0004051b          	sext.w	a0,s0
   107f8:	60ea                	ld	ra,152(sp)
   107fa:	644a                	ld	s0,144(sp)
   107fc:	64aa                	ld	s1,136(sp)
   107fe:	610d                	addi	sp,sp,160
   10800:	8082                	ret

0000000000010802 <lstat>:
   10802:	7135                	addi	sp,sp,-160
   10804:	e526                	sd	s1,136(sp)
   10806:	860a                	mv	a2,sp
   10808:	84ae                	mv	s1,a1
   1080a:	4701                	li	a4,0
   1080c:	85aa                	mv	a1,a0
   1080e:	4681                	li	a3,0
   10810:	40f00513          	li	a0,1039
   10814:	ed06                	sd	ra,152(sp)
   10816:	e922                	sd	s0,144(sp)
   10818:	eefff0ef          	jal	ra,10706 <__internal_syscall>
   1081c:	842a                	mv	s0,a0
   1081e:	858a                	mv	a1,sp
   10820:	8526                	mv	a0,s1
   10822:	e83ff0ef          	jal	ra,106a4 <conv_stat>
   10826:	0004051b          	sext.w	a0,s0
   1082a:	60ea                	ld	ra,152(sp)
   1082c:	644a                	ld	s0,144(sp)
   1082e:	64aa                	ld	s1,136(sp)
   10830:	610d                	addi	sp,sp,160
   10832:	8082                	ret

0000000000010834 <fstatat>:
   10834:	7135                	addi	sp,sp,-160
   10836:	e526                	sd	s1,136(sp)
   10838:	8736                	mv	a4,a3
   1083a:	84b2                	mv	s1,a2
   1083c:	868a                	mv	a3,sp
   1083e:	862e                	mv	a2,a1
   10840:	85aa                	mv	a1,a0
   10842:	04f00513          	li	a0,79
   10846:	ed06                	sd	ra,152(sp)
   10848:	e922                	sd	s0,144(sp)
   1084a:	00000097          	auipc	ra,0x0
   1084e:	ebc080e7          	jalr	-324(ra) # 10706 <__internal_syscall>
   10852:	842a                	mv	s0,a0
   10854:	858a                	mv	a1,sp
   10856:	8526                	mv	a0,s1
   10858:	00000097          	auipc	ra,0x0
   1085c:	e4c080e7          	jalr	-436(ra) # 106a4 <conv_stat>
   10860:	0004051b          	sext.w	a0,s0
   10864:	60ea                	ld	ra,152(sp)
   10866:	644a                	ld	s0,144(sp)
   10868:	64aa                	ld	s1,136(sp)
   1086a:	610d                	addi	sp,sp,160
   1086c:	8082                	ret

000000000001086e <access>:
   1086e:	1141                	addi	sp,sp,-16
   10870:	862e                	mv	a2,a1
   10872:	4701                	li	a4,0
   10874:	85aa                	mv	a1,a0
   10876:	4681                	li	a3,0
   10878:	40900513          	li	a0,1033
   1087c:	e406                	sd	ra,8(sp)
   1087e:	e89ff0ef          	jal	ra,10706 <__internal_syscall>
   10882:	60a2                	ld	ra,8(sp)
   10884:	2501                	sext.w	a0,a0
   10886:	0141                	addi	sp,sp,16
   10888:	8082                	ret

000000000001088a <faccessat>:
   1088a:	1141                	addi	sp,sp,-16
   1088c:	8736                	mv	a4,a3
   1088e:	86b2                	mv	a3,a2
   10890:	862e                	mv	a2,a1
   10892:	85aa                	mv	a1,a0
   10894:	03000513          	li	a0,48
   10898:	e406                	sd	ra,8(sp)
   1089a:	00000097          	auipc	ra,0x0
   1089e:	e6c080e7          	jalr	-404(ra) # 10706 <__internal_syscall>
   108a2:	60a2                	ld	ra,8(sp)
   108a4:	2501                	sext.w	a0,a0
   108a6:	0141                	addi	sp,sp,16
   108a8:	8082                	ret

00000000000108aa <close>:
   108aa:	1141                	addi	sp,sp,-16
   108ac:	85aa                	mv	a1,a0
   108ae:	4701                	li	a4,0
   108b0:	4681                	li	a3,0
   108b2:	4601                	li	a2,0
   108b4:	03900513          	li	a0,57
   108b8:	e406                	sd	ra,8(sp)
   108ba:	e4dff0ef          	jal	ra,10706 <__internal_syscall>
   108be:	60a2                	ld	ra,8(sp)
   108c0:	2501                	sext.w	a0,a0
   108c2:	0141                	addi	sp,sp,16
   108c4:	8082                	ret

00000000000108c6 <link>:
   108c6:	1141                	addi	sp,sp,-16
   108c8:	862e                	mv	a2,a1
   108ca:	4701                	li	a4,0
   108cc:	85aa                	mv	a1,a0
   108ce:	4681                	li	a3,0
   108d0:	40100513          	li	a0,1025
   108d4:	e406                	sd	ra,8(sp)
   108d6:	00000097          	auipc	ra,0x0
   108da:	e30080e7          	jalr	-464(ra) # 10706 <__internal_syscall>
   108de:	60a2                	ld	ra,8(sp)
   108e0:	2501                	sext.w	a0,a0
   108e2:	0141                	addi	sp,sp,16
   108e4:	8082                	ret

00000000000108e6 <unlink>:
   108e6:	1141                	addi	sp,sp,-16
   108e8:	85aa                	mv	a1,a0
   108ea:	4701                	li	a4,0
   108ec:	4681                	li	a3,0
   108ee:	4601                	li	a2,0
   108f0:	40200513          	li	a0,1026
   108f4:	e406                	sd	ra,8(sp)
   108f6:	e11ff0ef          	jal	ra,10706 <__internal_syscall>
   108fa:	60a2                	ld	ra,8(sp)
   108fc:	2501                	sext.w	a0,a0
   108fe:	0141                	addi	sp,sp,16
   10900:	8082                	ret

0000000000010902 <execve>:
   10902:	1141                	addi	sp,sp,-16
   10904:	e406                	sd	ra,8(sp)
   10906:	00000097          	auipc	ra,0x0
   1090a:	1a2080e7          	jalr	418(ra) # 10aa8 <__errno>
   1090e:	60a2                	ld	ra,8(sp)
   10910:	47b1                	li	a5,12
   10912:	c11c                	sw	a5,0(a0)
   10914:	557d                	li	a0,-1
   10916:	0141                	addi	sp,sp,16
   10918:	8082                	ret

000000000001091a <fork>:
   1091a:	1141                	addi	sp,sp,-16
   1091c:	e406                	sd	ra,8(sp)
   1091e:	18a000ef          	jal	ra,10aa8 <__errno>
   10922:	60a2                	ld	ra,8(sp)
   10924:	47ad                	li	a5,11
   10926:	c11c                	sw	a5,0(a0)
   10928:	557d                	li	a0,-1
   1092a:	0141                	addi	sp,sp,16
   1092c:	8082                	ret

000000000001092e <getpid>:
   1092e:	4505                	li	a0,1
   10930:	8082                	ret

0000000000010932 <kill>:
   10932:	1141                	addi	sp,sp,-16
   10934:	e406                	sd	ra,8(sp)
   10936:	172000ef          	jal	ra,10aa8 <__errno>
   1093a:	60a2                	ld	ra,8(sp)
   1093c:	47d9                	li	a5,22
   1093e:	c11c                	sw	a5,0(a0)
   10940:	557d                	li	a0,-1
   10942:	0141                	addi	sp,sp,16
   10944:	8082                	ret

0000000000010946 <wait>:
   10946:	1141                	addi	sp,sp,-16
   10948:	e406                	sd	ra,8(sp)
   1094a:	00000097          	auipc	ra,0x0
   1094e:	15e080e7          	jalr	350(ra) # 10aa8 <__errno>
   10952:	60a2                	ld	ra,8(sp)
   10954:	47a9                	li	a5,10
   10956:	c11c                	sw	a5,0(a0)
   10958:	557d                	li	a0,-1
   1095a:	0141                	addi	sp,sp,16
   1095c:	8082                	ret

000000000001095e <isatty>:
   1095e:	7119                	addi	sp,sp,-128
   10960:	002c                	addi	a1,sp,8
   10962:	fc86                	sd	ra,120(sp)
   10964:	e33ff0ef          	jal	ra,10796 <fstat>
   10968:	57fd                	li	a5,-1
   1096a:	00f50663          	beq	a0,a5,10976 <isatty+0x18>
   1096e:	4532                	lw	a0,12(sp)
   10970:	40d5551b          	sraiw	a0,a0,0xd
   10974:	8905                	andi	a0,a0,1
   10976:	70e6                	ld	ra,120(sp)
   10978:	6109                	addi	sp,sp,128
   1097a:	8082                	ret

000000000001097c <gettimeofday>:
   1097c:	1141                	addi	sp,sp,-16
   1097e:	85aa                	mv	a1,a0
   10980:	4701                	li	a4,0
   10982:	4681                	li	a3,0
   10984:	4601                	li	a2,0
   10986:	0a900513          	li	a0,169
   1098a:	e406                	sd	ra,8(sp)
   1098c:	00000097          	auipc	ra,0x0
   10990:	d7a080e7          	jalr	-646(ra) # 10706 <__internal_syscall>
   10994:	60a2                	ld	ra,8(sp)
   10996:	2501                	sext.w	a0,a0
   10998:	0141                	addi	sp,sp,16
   1099a:	8082                	ret

000000000001099c <times>:
   1099c:	7179                	addi	sp,sp,-48
   1099e:	f022                	sd	s0,32(sp)
   109a0:	842a                	mv	s0,a0
   109a2:	9001b783          	ld	a5,-1792(gp) # 11858 <t0.2574>
   109a6:	ec26                	sd	s1,24(sp)
   109a8:	f406                	sd	ra,40(sp)
   109aa:	90018493          	addi	s1,gp,-1792 # 11858 <t0.2574>
   109ae:	eb81                	bnez	a5,109be <times+0x22>
   109b0:	4581                	li	a1,0
   109b2:	90018513          	addi	a0,gp,-1792 # 11858 <t0.2574>
   109b6:	00000097          	auipc	ra,0x0
   109ba:	fc6080e7          	jalr	-58(ra) # 1097c <gettimeofday>
   109be:	850a                	mv	a0,sp
   109c0:	4581                	li	a1,0
   109c2:	00000097          	auipc	ra,0x0
   109c6:	fba080e7          	jalr	-70(ra) # 1097c <gettimeofday>
   109ca:	6098                	ld	a4,0(s1)
   109cc:	6782                	ld	a5,0(sp)
   109ce:	6494                	ld	a3,8(s1)
   109d0:	00043823          	sd	zero,16(s0)
   109d4:	8f99                	sub	a5,a5,a4
   109d6:	000f4737          	lui	a4,0xf4
   109da:	24070713          	addi	a4,a4,576 # f4240 <__global_pointer$+0xe22e8>
   109de:	02e787b3          	mul	a5,a5,a4
   109e2:	6722                	ld	a4,8(sp)
   109e4:	00043c23          	sd	zero,24(s0)
   109e8:	00043423          	sd	zero,8(s0)
   109ec:	8f15                	sub	a4,a4,a3
   109ee:	70a2                	ld	ra,40(sp)
   109f0:	64e2                	ld	s1,24(sp)
   109f2:	557d                	li	a0,-1
   109f4:	97ba                	add	a5,a5,a4
   109f6:	e01c                	sd	a5,0(s0)
   109f8:	7402                	ld	s0,32(sp)
   109fa:	6145                	addi	sp,sp,48
   109fc:	8082                	ret

00000000000109fe <ftime>:
   109fe:	00051423          	sh	zero,8(a0)
   10a02:	00053023          	sd	zero,0(a0)
   10a06:	4501                	li	a0,0
   10a08:	8082                	ret

0000000000010a0a <utime>:
   10a0a:	557d                	li	a0,-1
   10a0c:	8082                	ret

0000000000010a0e <chown>:
   10a0e:	557d                	li	a0,-1
   10a10:	8082                	ret

0000000000010a12 <chmod>:
   10a12:	557d                	li	a0,-1
   10a14:	8082                	ret

0000000000010a16 <chdir>:
   10a16:	557d                	li	a0,-1
   10a18:	8082                	ret

0000000000010a1a <getcwd>:
   10a1a:	4501                	li	a0,0
   10a1c:	8082                	ret

0000000000010a1e <sysconf>:
   10a1e:	4789                	li	a5,2
   10a20:	00f50463          	beq	a0,a5,10a28 <sysconf+0xa>
   10a24:	557d                	li	a0,-1
   10a26:	8082                	ret
   10a28:	000f4537          	lui	a0,0xf4
   10a2c:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22e8>
   10a30:	8082                	ret

0000000000010a32 <sbrk>:
   10a32:	1101                	addi	sp,sp,-32
   10a34:	e822                	sd	s0,16(sp)
   10a36:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10a3a:	e426                	sd	s1,8(sp)
   10a3c:	ec06                	sd	ra,24(sp)
   10a3e:	84aa                	mv	s1,a0
   10a40:	e785                	bnez	a5,10a68 <sbrk+0x36>
   10a42:	4701                	li	a4,0
   10a44:	4681                	li	a3,0
   10a46:	4601                	li	a2,0
   10a48:	4581                	li	a1,0
   10a4a:	0d600513          	li	a0,214
   10a4e:	cb9ff0ef          	jal	ra,10706 <__internal_syscall>
   10a52:	57fd                	li	a5,-1
   10a54:	00f51863          	bne	a0,a5,10a64 <sbrk+0x32>
   10a58:	557d                	li	a0,-1
   10a5a:	60e2                	ld	ra,24(sp)
   10a5c:	6442                	ld	s0,16(sp)
   10a5e:	64a2                	ld	s1,8(sp)
   10a60:	6105                	addi	sp,sp,32
   10a62:	8082                	ret
   10a64:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10a68:	8181b583          	ld	a1,-2024(gp) # 11770 <_edata>
   10a6c:	4701                	li	a4,0
   10a6e:	4681                	li	a3,0
   10a70:	95a6                	add	a1,a1,s1
   10a72:	4601                	li	a2,0
   10a74:	0d600513          	li	a0,214
   10a78:	c8fff0ef          	jal	ra,10706 <__internal_syscall>
   10a7c:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10a80:	94be                	add	s1,s1,a5
   10a82:	fc951be3          	bne	a0,s1,10a58 <sbrk+0x26>
   10a86:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10a8a:	853e                	mv	a0,a5
   10a8c:	b7f9                	j	10a5a <sbrk+0x28>

0000000000010a8e <_exit>:
   10a8e:	1141                	addi	sp,sp,-16
   10a90:	85aa                	mv	a1,a0
   10a92:	4701                	li	a4,0
   10a94:	4681                	li	a3,0
   10a96:	4601                	li	a2,0
   10a98:	05d00513          	li	a0,93
   10a9c:	e406                	sd	ra,8(sp)
   10a9e:	00000097          	auipc	ra,0x0
   10aa2:	c68080e7          	jalr	-920(ra) # 10706 <__internal_syscall>
   10aa6:	a001                	j	10aa6 <_exit+0x18>

0000000000010aa8 <__errno>:
   10aa8:	8101b503          	ld	a0,-2032(gp) # 11768 <_impure_ptr>
   10aac:	8082                	ret
	...

Disassembly of section .eh_frame:

0000000000010ab0 <__EH_FRAME_BEGIN__>:
   10ab0:	0000                	unimp
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

0000000000011010 <impure_data>:
	...
   11018:	1548                	addi	a0,sp,676
   1101a:	0001                	nop
   1101c:	0000                	unimp
   1101e:	0000                	unimp
   11020:	15f8                	addi	a4,sp,748
   11022:	0001                	nop
   11024:	0000                	unimp
   11026:	0000                	unimp
   11028:	16a8                	addi	a0,sp,872
   1102a:	0001                	nop
	...
   110f8:	0001                	nop
   110fa:	0000                	unimp
   110fc:	0000                	unimp
   110fe:	0000                	unimp
   11100:	330e                	fld	ft6,224(sp)
   11102:	abcd                	j	116f4 <impure_data+0x6e4>
   11104:	1234                	addi	a3,sp,296
   11106:	e66d                	bnez	a2,111f0 <impure_data+0x1e0>
   11108:	deec                	sw	a1,124(a3)
   1110a:	0005                	c.addi	zero,1
   1110c:	0000000b          	0xb
	...

Disassembly of section .sdata:

0000000000011758 <__TMC_END__>:
	...

0000000000011760 <_global_impure_ptr>:
   11760:	1010                	addi	a2,sp,32
   11762:	0001                	nop
   11764:	0000                	unimp
	...

0000000000011768 <_impure_ptr>:
   11768:	1010                	addi	a2,sp,32
   1176a:	0001                	nop
   1176c:	0000                	unimp
	...

Disassembly of section .sbss:

0000000000011770 <__bss_start>:
	...

Disassembly of section .bss:

0000000000011778 <completed.5184>:
	...

0000000000011780 <object.5189>:
	...

00000000000117b0 <result>:
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
