
./benchmark:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00004197          	auipc	gp,0x4
   100b4:	1d818193          	addi	gp,gp,472 # 14288 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 13aa0 <_edata>
   100bc:	23018613          	addi	a2,gp,560 # 144b8 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	7f2000ef          	jal	ra,108b6 <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	73850513          	addi	a0,a0,1848 # 10800 <__libc_fini_array>
   100d0:	00000097          	auipc	ra,0x0
   100d4:	6fc080e7          	jalr	1788(ra) # 107cc <atexit>
   100d8:	00000097          	auipc	ra,0x0
   100dc:	776080e7          	jalr	1910(ra) # 1084e <__libc_init_array>
   100e0:	4502                	lw	a0,0(sp)
   100e2:	002c                	addi	a1,sp,8
   100e4:	4601                	li	a2,0
   100e6:	00000097          	auipc	ra,0x0
   100ea:	6b2080e7          	jalr	1714(ra) # 10798 <main>
   100ee:	00000317          	auipc	t1,0x0
   100f2:	6ec30067          	jr	1772(t1) # 107da <exit>

00000000000100f6 <_fini>:
   100f6:	8082                	ret

00000000000100f8 <deregister_tm_clones>:
   100f8:	6551                	lui	a0,0x14
   100fa:	67d1                	lui	a5,0x14
   100fc:	a8850713          	addi	a4,a0,-1400 # 13a88 <__TMC_END__>
   10100:	a8878793          	addi	a5,a5,-1400 # 13a88 <__TMC_END__>
   10104:	00e78b63          	beq	a5,a4,1011a <deregister_tm_clones+0x22>
   10108:	00000337          	lui	t1,0x0
   1010c:	00030313          	mv	t1,t1
   10110:	00030563          	beqz	t1,1011a <deregister_tm_clones+0x22>
   10114:	a8850513          	addi	a0,a0,-1400
   10118:	8302                	jr	t1
   1011a:	8082                	ret

000000000001011c <register_tm_clones>:
   1011c:	67d1                	lui	a5,0x14
   1011e:	6551                	lui	a0,0x14
   10120:	a8878593          	addi	a1,a5,-1400 # 13a88 <__TMC_END__>
   10124:	a8850793          	addi	a5,a0,-1400 # 13a88 <__TMC_END__>
   10128:	8d9d                	sub	a1,a1,a5
   1012a:	858d                	srai	a1,a1,0x3
   1012c:	4789                	li	a5,2
   1012e:	02f5c5b3          	div	a1,a1,a5
   10132:	c991                	beqz	a1,10146 <register_tm_clones+0x2a>
   10134:	00000337          	lui	t1,0x0
   10138:	00030313          	mv	t1,t1
   1013c:	00030563          	beqz	t1,10146 <register_tm_clones+0x2a>
   10140:	a8850513          	addi	a0,a0,-1400
   10144:	8302                	jr	t1
   10146:	8082                	ret

0000000000010148 <__do_global_dtors_aux>:
   10148:	8201c703          	lbu	a4,-2016(gp) # 13aa8 <completed.5184>
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
   10166:	e8850513          	addi	a0,a0,-376 # 10e88 <__EH_FRAME_BEGIN__>
   1016a:	ffff0097          	auipc	ra,0xffff0
   1016e:	e96080e7          	jalr	-362(ra) # 0 <_start-0x100b0>
   10172:	4785                	li	a5,1
   10174:	82f18023          	sb	a5,-2016(gp) # 13aa8 <completed.5184>
   10178:	60a2                	ld	ra,8(sp)
   1017a:	6402                	ld	s0,0(sp)
   1017c:	0141                	addi	sp,sp,16
   1017e:	8082                	ret
   10180:	8082                	ret

0000000000010182 <frame_dummy>:
   10182:	000007b7          	lui	a5,0x0
   10186:	00078793          	mv	a5,a5
   1018a:	cf99                	beqz	a5,101a8 <frame_dummy+0x26>
   1018c:	65d1                	lui	a1,0x14
   1018e:	6545                	lui	a0,0x11
   10190:	1141                	addi	sp,sp,-16
   10192:	ab058593          	addi	a1,a1,-1360 # 13ab0 <object.5189>
   10196:	e8850513          	addi	a0,a0,-376 # 10e88 <__EH_FRAME_BEGIN__>
   1019a:	e406                	sd	ra,8(sp)
   1019c:	ffff0097          	auipc	ra,0xffff0
   101a0:	e64080e7          	jalr	-412(ra) # 0 <_start-0x100b0>
   101a4:	60a2                	ld	ra,8(sp)
   101a6:	0141                	addi	sp,sp,16
   101a8:	f75ff06f          	j	1011c <register_tm_clones>

00000000000101ac <_Z4swapPiS_>:
   101ac:	fd010113          	addi	sp,sp,-48
   101b0:	02813423          	sd	s0,40(sp)
   101b4:	03010413          	addi	s0,sp,48
   101b8:	fca43c23          	sd	a0,-40(s0)
   101bc:	fcb43823          	sd	a1,-48(s0)
   101c0:	fd843783          	ld	a5,-40(s0)
   101c4:	0007a783          	lw	a5,0(a5) # 0 <_start-0x100b0>
   101c8:	fef42623          	sw	a5,-20(s0)
   101cc:	fd043783          	ld	a5,-48(s0)
   101d0:	0007a703          	lw	a4,0(a5)
   101d4:	fd843783          	ld	a5,-40(s0)
   101d8:	00e7a023          	sw	a4,0(a5)
   101dc:	fd043783          	ld	a5,-48(s0)
   101e0:	fec42703          	lw	a4,-20(s0)
   101e4:	00e7a023          	sw	a4,0(a5)
   101e8:	00000013          	nop
   101ec:	02813403          	ld	s0,40(sp)
   101f0:	03010113          	addi	sp,sp,48
   101f4:	00008067          	ret

00000000000101f8 <_Z9partationiii>:
   101f8:	fd010113          	addi	sp,sp,-48
   101fc:	02113423          	sd	ra,40(sp)
   10200:	02813023          	sd	s0,32(sp)
   10204:	03010413          	addi	s0,sp,48
   10208:	00050793          	mv	a5,a0
   1020c:	00058693          	mv	a3,a1
   10210:	00060713          	mv	a4,a2
   10214:	fcf42e23          	sw	a5,-36(s0)
   10218:	00068793          	mv	a5,a3
   1021c:	fcf42c23          	sw	a5,-40(s0)
   10220:	00070793          	mv	a5,a4
   10224:	fcf42a23          	sw	a5,-44(s0)
   10228:	fd842703          	lw	a4,-40(s0)
   1022c:	fdc42783          	lw	a5,-36(s0)
   10230:	0007071b          	sext.w	a4,a4
   10234:	0007879b          	sext.w	a5,a5
   10238:	00e7c663          	blt	a5,a4,10244 <_Z9partationiii+0x4c>
   1023c:	fff00793          	li	a5,-1
   10240:	12c0006f          	j	1036c <_Z9partationiii+0x174>
   10244:	000117b7          	lui	a5,0x11
   10248:	fd442703          	lw	a4,-44(s0)
   1024c:	00271713          	slli	a4,a4,0x2
   10250:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   10254:	00f707b3          	add	a5,a4,a5
   10258:	0007a783          	lw	a5,0(a5)
   1025c:	fef42423          	sw	a5,-24(s0)
   10260:	fdc42783          	lw	a5,-36(s0)
   10264:	fef42623          	sw	a5,-20(s0)
   10268:	fd442783          	lw	a5,-44(s0)
   1026c:	00279713          	slli	a4,a5,0x2
   10270:	000117b7          	lui	a5,0x11
   10274:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   10278:	00f706b3          	add	a3,a4,a5
   1027c:	fd842783          	lw	a5,-40(s0)
   10280:	00279713          	slli	a4,a5,0x2
   10284:	000117b7          	lui	a5,0x11
   10288:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   1028c:	00f707b3          	add	a5,a4,a5
   10290:	00078593          	mv	a1,a5
   10294:	00068513          	mv	a0,a3
   10298:	00000097          	auipc	ra,0x0
   1029c:	f14080e7          	jalr	-236(ra) # 101ac <_Z4swapPiS_>
   102a0:	fd842783          	lw	a5,-40(s0)
   102a4:	fff7879b          	addiw	a5,a5,-1
   102a8:	0007871b          	sext.w	a4,a5
   102ac:	fdc42783          	lw	a5,-36(s0)
   102b0:	0007879b          	sext.w	a5,a5
   102b4:	06e78e63          	beq	a5,a4,10330 <_Z9partationiii+0x138>
   102b8:	000117b7          	lui	a5,0x11
   102bc:	fdc42703          	lw	a4,-36(s0)
   102c0:	00271713          	slli	a4,a4,0x2
   102c4:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   102c8:	00f707b3          	add	a5,a4,a5
   102cc:	0007a703          	lw	a4,0(a5)
   102d0:	fe842783          	lw	a5,-24(s0)
   102d4:	0007879b          	sext.w	a5,a5
   102d8:	04e7c463          	blt	a5,a4,10320 <_Z9partationiii+0x128>
   102dc:	fdc42783          	lw	a5,-36(s0)
   102e0:	00279713          	slli	a4,a5,0x2
   102e4:	000117b7          	lui	a5,0x11
   102e8:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   102ec:	00f706b3          	add	a3,a4,a5
   102f0:	fec42783          	lw	a5,-20(s0)
   102f4:	00279713          	slli	a4,a5,0x2
   102f8:	000117b7          	lui	a5,0x11
   102fc:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   10300:	00f707b3          	add	a5,a4,a5
   10304:	00078593          	mv	a1,a5
   10308:	00068513          	mv	a0,a3
   1030c:	00000097          	auipc	ra,0x0
   10310:	ea0080e7          	jalr	-352(ra) # 101ac <_Z4swapPiS_>
   10314:	fec42783          	lw	a5,-20(s0)
   10318:	0017879b          	addiw	a5,a5,1
   1031c:	fef42623          	sw	a5,-20(s0)
   10320:	fdc42783          	lw	a5,-36(s0)
   10324:	0017879b          	addiw	a5,a5,1
   10328:	fcf42e23          	sw	a5,-36(s0)
   1032c:	f75ff06f          	j	102a0 <_Z9partationiii+0xa8>
   10330:	fec42783          	lw	a5,-20(s0)
   10334:	00279713          	slli	a4,a5,0x2
   10338:	000117b7          	lui	a5,0x11
   1033c:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   10340:	00f706b3          	add	a3,a4,a5
   10344:	fd842783          	lw	a5,-40(s0)
   10348:	00279713          	slli	a4,a5,0x2
   1034c:	000117b7          	lui	a5,0x11
   10350:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   10354:	00f707b3          	add	a5,a4,a5
   10358:	00078593          	mv	a1,a5
   1035c:	00068513          	mv	a0,a3
   10360:	00000097          	auipc	ra,0x0
   10364:	e4c080e7          	jalr	-436(ra) # 101ac <_Z4swapPiS_>
   10368:	fec42783          	lw	a5,-20(s0)
   1036c:	00078513          	mv	a0,a5
   10370:	02813083          	ld	ra,40(sp)
   10374:	02013403          	ld	s0,32(sp)
   10378:	03010113          	addi	sp,sp,48
   1037c:	00008067          	ret

0000000000010380 <_Z9quicksortii>:
   10380:	fd010113          	addi	sp,sp,-48
   10384:	02113423          	sd	ra,40(sp)
   10388:	02813023          	sd	s0,32(sp)
   1038c:	03010413          	addi	s0,sp,48
   10390:	00050793          	mv	a5,a0
   10394:	00058713          	mv	a4,a1
   10398:	fcf42e23          	sw	a5,-36(s0)
   1039c:	00070793          	mv	a5,a4
   103a0:	fcf42c23          	sw	a5,-40(s0)
   103a4:	fd842703          	lw	a4,-40(s0)
   103a8:	fdc42783          	lw	a5,-36(s0)
   103ac:	0007071b          	sext.w	a4,a4
   103b0:	0007879b          	sext.w	a5,a5
   103b4:	08e7dc63          	ble	a4,a5,1044c <_Z9quicksortii+0xcc>
   103b8:	fdc42703          	lw	a4,-36(s0)
   103bc:	fd842783          	lw	a5,-40(s0)
   103c0:	00f707bb          	addw	a5,a4,a5
   103c4:	0007879b          	sext.w	a5,a5
   103c8:	01f7d71b          	srliw	a4,a5,0x1f
   103cc:	00f707bb          	addw	a5,a4,a5
   103d0:	4017d79b          	sraiw	a5,a5,0x1
   103d4:	fef42623          	sw	a5,-20(s0)
   103d8:	fec42683          	lw	a3,-20(s0)
   103dc:	fd842703          	lw	a4,-40(s0)
   103e0:	fdc42783          	lw	a5,-36(s0)
   103e4:	00068613          	mv	a2,a3
   103e8:	00070593          	mv	a1,a4
   103ec:	00078513          	mv	a0,a5
   103f0:	00000097          	auipc	ra,0x0
   103f4:	e08080e7          	jalr	-504(ra) # 101f8 <_Z9partationiii>
   103f8:	00050793          	mv	a5,a0
   103fc:	fef42623          	sw	a5,-20(s0)
   10400:	fec42783          	lw	a5,-20(s0)
   10404:	0007871b          	sext.w	a4,a5
   10408:	fff00793          	li	a5,-1
   1040c:	04f70263          	beq	a4,a5,10450 <_Z9quicksortii+0xd0>
   10410:	fec42783          	lw	a5,-20(s0)
   10414:	fff7879b          	addiw	a5,a5,-1
   10418:	0007871b          	sext.w	a4,a5
   1041c:	fdc42783          	lw	a5,-36(s0)
   10420:	00070593          	mv	a1,a4
   10424:	00078513          	mv	a0,a5
   10428:	f59ff0ef          	jal	ra,10380 <_Z9quicksortii>
   1042c:	fec42783          	lw	a5,-20(s0)
   10430:	0017879b          	addiw	a5,a5,1
   10434:	0007879b          	sext.w	a5,a5
   10438:	fd842703          	lw	a4,-40(s0)
   1043c:	00070593          	mv	a1,a4
   10440:	00078513          	mv	a0,a5
   10444:	f3dff0ef          	jal	ra,10380 <_Z9quicksortii>
   10448:	0080006f          	j	10450 <_Z9quicksortii+0xd0>
   1044c:	00000013          	nop
   10450:	02813083          	ld	ra,40(sp)
   10454:	02013403          	ld	s0,32(sp)
   10458:	03010113          	addi	sp,sp,48
   1045c:	00008067          	ret

0000000000010460 <_Z8ackermanii>:
   10460:	fe010113          	addi	sp,sp,-32
   10464:	00113c23          	sd	ra,24(sp)
   10468:	00813823          	sd	s0,16(sp)
   1046c:	02010413          	addi	s0,sp,32
   10470:	00050793          	mv	a5,a0
   10474:	00058713          	mv	a4,a1
   10478:	fef42623          	sw	a5,-20(s0)
   1047c:	00070793          	mv	a5,a4
   10480:	fef42423          	sw	a5,-24(s0)
   10484:	fec42783          	lw	a5,-20(s0)
   10488:	0007879b          	sext.w	a5,a5
   1048c:	04f05663          	blez	a5,104d8 <_Z8ackermanii+0x78>
   10490:	fe842783          	lw	a5,-24(s0)
   10494:	0007879b          	sext.w	a5,a5
   10498:	00079863          	bnez	a5,104a8 <_Z8ackermanii+0x48>
   1049c:	00100793          	li	a5,1
   104a0:	fef42423          	sw	a5,-24(s0)
   104a4:	0280006f          	j	104cc <_Z8ackermanii+0x6c>
   104a8:	fe842783          	lw	a5,-24(s0)
   104ac:	fff7879b          	addiw	a5,a5,-1
   104b0:	0007871b          	sext.w	a4,a5
   104b4:	fec42783          	lw	a5,-20(s0)
   104b8:	00070593          	mv	a1,a4
   104bc:	00078513          	mv	a0,a5
   104c0:	fa1ff0ef          	jal	ra,10460 <_Z8ackermanii>
   104c4:	00050793          	mv	a5,a0
   104c8:	fef42423          	sw	a5,-24(s0)
   104cc:	fec42783          	lw	a5,-20(s0)
   104d0:	fff7879b          	addiw	a5,a5,-1
   104d4:	fef42623          	sw	a5,-20(s0)
   104d8:	fe842783          	lw	a5,-24(s0)
   104dc:	0017879b          	addiw	a5,a5,1
   104e0:	0007879b          	sext.w	a5,a5
   104e4:	00078513          	mv	a0,a5
   104e8:	01813083          	ld	ra,24(sp)
   104ec:	01013403          	ld	s0,16(sp)
   104f0:	02010113          	addi	sp,sp,32
   104f4:	00008067          	ret

00000000000104f8 <_Z9QuickSortv>:
   104f8:	fe010113          	addi	sp,sp,-32
   104fc:	00113c23          	sd	ra,24(sp)
   10500:	00813823          	sd	s0,16(sp)
   10504:	02010413          	addi	s0,sp,32
   10508:	fe043423          	sd	zero,-24(s0)
   1050c:	fe043023          	sd	zero,-32(s0)
   10510:	3e700593          	li	a1,999
   10514:	00000513          	li	a0,0
   10518:	e69ff0ef          	jal	ra,10380 <_Z9quicksortii>
   1051c:	00000013          	nop
   10520:	01813083          	ld	ra,24(sp)
   10524:	01013403          	ld	s0,16(sp)
   10528:	02010113          	addi	sp,sp,32
   1052c:	00008067          	ret

0000000000010530 <_Z20MatrixMultiplicationv>:
   10530:	fc010113          	addi	sp,sp,-64
   10534:	02813c23          	sd	s0,56(sp)
   10538:	04010413          	addi	s0,sp,64
   1053c:	fc043823          	sd	zero,-48(s0)
   10540:	fc043423          	sd	zero,-56(s0)
   10544:	fe042623          	sw	zero,-20(s0)
   10548:	fec42783          	lw	a5,-20(s0)
   1054c:	0007871b          	sext.w	a4,a5
   10550:	01800793          	li	a5,24
   10554:	06e7c663          	blt	a5,a4,105c0 <_Z20MatrixMultiplicationv+0x90>
   10558:	fe042423          	sw	zero,-24(s0)
   1055c:	fe842783          	lw	a5,-24(s0)
   10560:	0007871b          	sext.w	a4,a5
   10564:	01800793          	li	a5,24
   10568:	04e7c463          	blt	a5,a4,105b0 <_Z20MatrixMultiplicationv+0x80>
   1056c:	000146b7          	lui	a3,0x14
   10570:	fe842603          	lw	a2,-24(s0)
   10574:	fec42703          	lw	a4,-20(s0)
   10578:	00070793          	mv	a5,a4
   1057c:	00179793          	slli	a5,a5,0x1
   10580:	00e787b3          	add	a5,a5,a4
   10584:	00379793          	slli	a5,a5,0x3
   10588:	00e787b3          	add	a5,a5,a4
   1058c:	00c787b3          	add	a5,a5,a2
   10590:	00279713          	slli	a4,a5,0x2
   10594:	ae068793          	addi	a5,a3,-1312 # 13ae0 <d>
   10598:	00f707b3          	add	a5,a4,a5
   1059c:	0007a023          	sw	zero,0(a5)
   105a0:	fe842783          	lw	a5,-24(s0)
   105a4:	0017879b          	addiw	a5,a5,1
   105a8:	fef42423          	sw	a5,-24(s0)
   105ac:	fb1ff06f          	j	1055c <_Z20MatrixMultiplicationv+0x2c>
   105b0:	fec42783          	lw	a5,-20(s0)
   105b4:	0017879b          	addiw	a5,a5,1
   105b8:	fef42623          	sw	a5,-20(s0)
   105bc:	f8dff06f          	j	10548 <_Z20MatrixMultiplicationv+0x18>
   105c0:	fe042223          	sw	zero,-28(s0)
   105c4:	fe442783          	lw	a5,-28(s0)
   105c8:	0007871b          	sext.w	a4,a5
   105cc:	01800793          	li	a5,24
   105d0:	14e7c263          	blt	a5,a4,10714 <_Z20MatrixMultiplicationv+0x1e4>
   105d4:	fe042023          	sw	zero,-32(s0)
   105d8:	fe042783          	lw	a5,-32(s0)
   105dc:	0007871b          	sext.w	a4,a5
   105e0:	01800793          	li	a5,24
   105e4:	12e7c063          	blt	a5,a4,10704 <_Z20MatrixMultiplicationv+0x1d4>
   105e8:	000126b7          	lui	a3,0x12
   105ec:	fe042603          	lw	a2,-32(s0)
   105f0:	fe442703          	lw	a4,-28(s0)
   105f4:	00070793          	mv	a5,a4
   105f8:	00179793          	slli	a5,a5,0x1
   105fc:	00e787b3          	add	a5,a5,a4
   10600:	00379793          	slli	a5,a5,0x3
   10604:	00e787b3          	add	a5,a5,a4
   10608:	00c787b3          	add	a5,a5,a2
   1060c:	00279713          	slli	a4,a5,0x2
   10610:	fb068793          	addi	a5,a3,-80 # 11fb0 <b>
   10614:	00f707b3          	add	a5,a4,a5
   10618:	0007a783          	lw	a5,0(a5)
   1061c:	fcf42223          	sw	a5,-60(s0)
   10620:	fc042e23          	sw	zero,-36(s0)
   10624:	fdc42783          	lw	a5,-36(s0)
   10628:	0007871b          	sext.w	a4,a5
   1062c:	01800793          	li	a5,24
   10630:	0ce7c263          	blt	a5,a4,106f4 <_Z20MatrixMultiplicationv+0x1c4>
   10634:	000146b7          	lui	a3,0x14
   10638:	fdc42603          	lw	a2,-36(s0)
   1063c:	fe442703          	lw	a4,-28(s0)
   10640:	00070793          	mv	a5,a4
   10644:	00179793          	slli	a5,a5,0x1
   10648:	00e787b3          	add	a5,a5,a4
   1064c:	00379793          	slli	a5,a5,0x3
   10650:	00e787b3          	add	a5,a5,a4
   10654:	00c787b3          	add	a5,a5,a2
   10658:	00279713          	slli	a4,a5,0x2
   1065c:	ae068793          	addi	a5,a3,-1312 # 13ae0 <d>
   10660:	00f707b3          	add	a5,a4,a5
   10664:	0007a683          	lw	a3,0(a5)
   10668:	00013637          	lui	a2,0x13
   1066c:	fdc42583          	lw	a1,-36(s0)
   10670:	fe442703          	lw	a4,-28(s0)
   10674:	00070793          	mv	a5,a4
   10678:	00179793          	slli	a5,a5,0x1
   1067c:	00e787b3          	add	a5,a5,a4
   10680:	00379793          	slli	a5,a5,0x3
   10684:	00e787b3          	add	a5,a5,a4
   10688:	00b787b3          	add	a5,a5,a1
   1068c:	00279713          	slli	a4,a5,0x2
   10690:	97860793          	addi	a5,a2,-1672 # 12978 <c>
   10694:	00f707b3          	add	a5,a4,a5
   10698:	0007a783          	lw	a5,0(a5)
   1069c:	fc442703          	lw	a4,-60(s0)
   106a0:	02f707bb          	mulw	a5,a4,a5
   106a4:	0007879b          	sext.w	a5,a5
   106a8:	00f687bb          	addw	a5,a3,a5
   106ac:	0007869b          	sext.w	a3,a5
   106b0:	00014637          	lui	a2,0x14
   106b4:	fdc42583          	lw	a1,-36(s0)
   106b8:	fe442703          	lw	a4,-28(s0)
   106bc:	00070793          	mv	a5,a4
   106c0:	00179793          	slli	a5,a5,0x1
   106c4:	00e787b3          	add	a5,a5,a4
   106c8:	00379793          	slli	a5,a5,0x3
   106cc:	00e787b3          	add	a5,a5,a4
   106d0:	00b787b3          	add	a5,a5,a1
   106d4:	00279713          	slli	a4,a5,0x2
   106d8:	ae060793          	addi	a5,a2,-1312 # 13ae0 <d>
   106dc:	00f707b3          	add	a5,a4,a5
   106e0:	00d7a023          	sw	a3,0(a5)
   106e4:	fdc42783          	lw	a5,-36(s0)
   106e8:	0017879b          	addiw	a5,a5,1
   106ec:	fcf42e23          	sw	a5,-36(s0)
   106f0:	f35ff06f          	j	10624 <_Z20MatrixMultiplicationv+0xf4>
   106f4:	fe042783          	lw	a5,-32(s0)
   106f8:	0017879b          	addiw	a5,a5,1
   106fc:	fef42023          	sw	a5,-32(s0)
   10700:	ed9ff06f          	j	105d8 <_Z20MatrixMultiplicationv+0xa8>
   10704:	fe442783          	lw	a5,-28(s0)
   10708:	0017879b          	addiw	a5,a5,1
   1070c:	fef42223          	sw	a5,-28(s0)
   10710:	eb5ff06f          	j	105c4 <_Z20MatrixMultiplicationv+0x94>
   10714:	00000013          	nop
   10718:	03813403          	ld	s0,56(sp)
   1071c:	04010113          	addi	sp,sp,64
   10720:	00008067          	ret

0000000000010724 <_Z8Ackermanv>:
   10724:	fe010113          	addi	sp,sp,-32
   10728:	00113c23          	sd	ra,24(sp)
   1072c:	00813823          	sd	s0,16(sp)
   10730:	02010413          	addi	s0,sp,32
   10734:	fe043423          	sd	zero,-24(s0)
   10738:	fe043023          	sd	zero,-32(s0)
   1073c:	00600593          	li	a1,6
   10740:	00300513          	li	a0,3
   10744:	00000097          	auipc	ra,0x0
   10748:	d1c080e7          	jalr	-740(ra) # 10460 <_Z8ackermanii>
   1074c:	00000013          	nop
   10750:	01813083          	ld	ra,24(sp)
   10754:	01013403          	ld	s0,16(sp)
   10758:	02010113          	addi	sp,sp,32
   1075c:	00008067          	ret

0000000000010760 <_Z12AllBenchmarkv>:
   10760:	ff010113          	addi	sp,sp,-16
   10764:	00113423          	sd	ra,8(sp)
   10768:	00813023          	sd	s0,0(sp)
   1076c:	01010413          	addi	s0,sp,16
   10770:	00000097          	auipc	ra,0x0
   10774:	d88080e7          	jalr	-632(ra) # 104f8 <_Z9QuickSortv>
   10778:	db9ff0ef          	jal	ra,10530 <_Z20MatrixMultiplicationv>
   1077c:	00000097          	auipc	ra,0x0
   10780:	fa8080e7          	jalr	-88(ra) # 10724 <_Z8Ackermanv>
   10784:	00000013          	nop
   10788:	00813083          	ld	ra,8(sp)
   1078c:	00013403          	ld	s0,0(sp)
   10790:	01010113          	addi	sp,sp,16
   10794:	00008067          	ret

0000000000010798 <main>:
   10798:	ff010113          	addi	sp,sp,-16
   1079c:	00113423          	sd	ra,8(sp)
   107a0:	00813023          	sd	s0,0(sp)
   107a4:	01010413          	addi	s0,sp,16
   107a8:	00000097          	auipc	ra,0x0
   107ac:	fb8080e7          	jalr	-72(ra) # 10760 <_Z12AllBenchmarkv>
   107b0:	00000793          	li	a5,0
   107b4:	00078513          	mv	a0,a5
   107b8:	00813083          	ld	ra,8(sp)
   107bc:	00013403          	ld	s0,0(sp)
   107c0:	01010113          	addi	sp,sp,16
   107c4:	00008067          	ret
   107c8:	0000                	unimp
	...

00000000000107cc <atexit>:
   107cc:	85aa                	mv	a1,a0
   107ce:	4681                	li	a3,0
   107d0:	4601                	li	a2,0
   107d2:	4501                	li	a0,0
   107d4:	18c0006f          	j	10960 <__register_exitproc>
	...

00000000000107da <exit>:
   107da:	1141                	addi	sp,sp,-16
   107dc:	4581                	li	a1,0
   107de:	e022                	sd	s0,0(sp)
   107e0:	e406                	sd	ra,8(sp)
   107e2:	842a                	mv	s0,a0
   107e4:	1e4000ef          	jal	ra,109c8 <__call_exitprocs>
   107e8:	67d1                	lui	a5,0x14
   107ea:	a907b503          	ld	a0,-1392(a5) # 13a90 <_global_impure_ptr>
   107ee:	6d3c                	ld	a5,88(a0)
   107f0:	c391                	beqz	a5,107f4 <exit+0x1a>
   107f2:	9782                	jalr	a5
   107f4:	8522                	mv	a0,s0
   107f6:	00000097          	auipc	ra,0x0
   107fa:	66e080e7          	jalr	1646(ra) # 10e64 <_exit>
	...

0000000000010800 <__libc_fini_array>:
   10800:	7179                	addi	sp,sp,-48
   10802:	67c5                	lui	a5,0x11
   10804:	6745                	lui	a4,0x11
   10806:	f022                	sd	s0,32(sp)
   10808:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   1080c:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   10810:	8c19                	sub	s0,s0,a4
   10812:	ec26                	sd	s1,24(sp)
   10814:	e84a                	sd	s2,16(sp)
   10816:	e44e                	sd	s3,8(sp)
   10818:	f406                	sd	ra,40(sp)
   1081a:	840d                	srai	s0,s0,0x3
   1081c:	4481                	li	s1,0
   1081e:	01078913          	addi	s2,a5,16
   10822:	59e1                	li	s3,-8
   10824:	00941c63          	bne	s0,s1,1083c <__libc_fini_array+0x3c>
   10828:	7402                	ld	s0,32(sp)
   1082a:	70a2                	ld	ra,40(sp)
   1082c:	64e2                	ld	s1,24(sp)
   1082e:	6942                	ld	s2,16(sp)
   10830:	69a2                	ld	s3,8(sp)
   10832:	6145                	addi	sp,sp,48
   10834:	00000317          	auipc	t1,0x0
   10838:	8c230067          	jr	-1854(t1) # 100f6 <_fini>
   1083c:	033487b3          	mul	a5,s1,s3
   10840:	0485                	addi	s1,s1,1
   10842:	97ca                	add	a5,a5,s2
   10844:	ff87b783          	ld	a5,-8(a5)
   10848:	9782                	jalr	a5
   1084a:	bfe9                	j	10824 <__libc_fini_array+0x24>
	...

000000000001084e <__libc_init_array>:
   1084e:	1101                	addi	sp,sp,-32
   10850:	e822                	sd	s0,16(sp)
   10852:	e426                	sd	s1,8(sp)
   10854:	6445                	lui	s0,0x11
   10856:	64c5                	lui	s1,0x11
   10858:	00048793          	mv	a5,s1
   1085c:	00040413          	mv	s0,s0
   10860:	8c1d                	sub	s0,s0,a5
   10862:	e04a                	sd	s2,0(sp)
   10864:	ec06                	sd	ra,24(sp)
   10866:	840d                	srai	s0,s0,0x3
   10868:	00048493          	mv	s1,s1
   1086c:	4901                	li	s2,0
   1086e:	02891963          	bne	s2,s0,108a0 <__libc_init_array+0x52>
   10872:	64c5                	lui	s1,0x11
   10874:	00000097          	auipc	ra,0x0
   10878:	882080e7          	jalr	-1918(ra) # 100f6 <_fini>
   1087c:	6445                	lui	s0,0x11
   1087e:	00048793          	mv	a5,s1
   10882:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   10886:	8c1d                	sub	s0,s0,a5
   10888:	840d                	srai	s0,s0,0x3
   1088a:	00048493          	mv	s1,s1
   1088e:	4901                	li	s2,0
   10890:	00891d63          	bne	s2,s0,108aa <__libc_init_array+0x5c>
   10894:	60e2                	ld	ra,24(sp)
   10896:	6442                	ld	s0,16(sp)
   10898:	64a2                	ld	s1,8(sp)
   1089a:	6902                	ld	s2,0(sp)
   1089c:	6105                	addi	sp,sp,32
   1089e:	8082                	ret
   108a0:	609c                	ld	a5,0(s1)
   108a2:	0905                	addi	s2,s2,1
   108a4:	04a1                	addi	s1,s1,8
   108a6:	9782                	jalr	a5
   108a8:	b7d9                	j	1086e <__libc_init_array+0x20>
   108aa:	609c                	ld	a5,0(s1)
   108ac:	0905                	addi	s2,s2,1
   108ae:	04a1                	addi	s1,s1,8
   108b0:	9782                	jalr	a5
   108b2:	bff9                	j	10890 <__libc_init_array+0x42>
	...

00000000000108b6 <memset>:
   108b6:	483d                	li	a6,15
   108b8:	872a                	mv	a4,a0
   108ba:	02c87163          	bleu	a2,a6,108dc <memset+0x26>
   108be:	00f77793          	andi	a5,a4,15
   108c2:	e3c1                	bnez	a5,10942 <memset+0x8c>
   108c4:	e1bd                	bnez	a1,1092a <memset+0x74>
   108c6:	ff067693          	andi	a3,a2,-16
   108ca:	8a3d                	andi	a2,a2,15
   108cc:	96ba                	add	a3,a3,a4
   108ce:	e30c                	sd	a1,0(a4)
   108d0:	e70c                	sd	a1,8(a4)
   108d2:	0741                	addi	a4,a4,16
   108d4:	fed76de3          	bltu	a4,a3,108ce <memset+0x18>
   108d8:	e211                	bnez	a2,108dc <memset+0x26>
   108da:	8082                	ret
   108dc:	40c806b3          	sub	a3,a6,a2
   108e0:	068a                	slli	a3,a3,0x2
   108e2:	00000297          	auipc	t0,0x0
   108e6:	9696                	add	a3,a3,t0
   108e8:	00a68067          	jr	10(a3)
   108ec:	00b70723          	sb	a1,14(a4)
   108f0:	00b706a3          	sb	a1,13(a4)
   108f4:	00b70623          	sb	a1,12(a4)
   108f8:	00b705a3          	sb	a1,11(a4)
   108fc:	00b70523          	sb	a1,10(a4)
   10900:	00b704a3          	sb	a1,9(a4)
   10904:	00b70423          	sb	a1,8(a4)
   10908:	00b703a3          	sb	a1,7(a4)
   1090c:	00b70323          	sb	a1,6(a4)
   10910:	00b702a3          	sb	a1,5(a4)
   10914:	00b70223          	sb	a1,4(a4)
   10918:	00b701a3          	sb	a1,3(a4)
   1091c:	00b70123          	sb	a1,2(a4)
   10920:	00b700a3          	sb	a1,1(a4)
   10924:	00b70023          	sb	a1,0(a4)
   10928:	8082                	ret
   1092a:	0ff5f593          	andi	a1,a1,255
   1092e:	00859693          	slli	a3,a1,0x8
   10932:	8dd5                	or	a1,a1,a3
   10934:	01059693          	slli	a3,a1,0x10
   10938:	8dd5                	or	a1,a1,a3
   1093a:	02059693          	slli	a3,a1,0x20
   1093e:	8dd5                	or	a1,a1,a3
   10940:	b759                	j	108c6 <memset+0x10>
   10942:	00279693          	slli	a3,a5,0x2
   10946:	00000297          	auipc	t0,0x0
   1094a:	9696                	add	a3,a3,t0
   1094c:	8286                	mv	t0,ra
   1094e:	fa2680e7          	jalr	-94(a3)
   10952:	8096                	mv	ra,t0
   10954:	17c1                	addi	a5,a5,-16
   10956:	8f1d                	sub	a4,a4,a5
   10958:	963e                	add	a2,a2,a5
   1095a:	f8c871e3          	bleu	a2,a6,108dc <memset+0x26>
   1095e:	b79d                	j	108c4 <memset+0xe>

0000000000010960 <__register_exitproc>:
   10960:	67d1                	lui	a5,0x14
   10962:	a907b703          	ld	a4,-1392(a5) # 13a90 <_global_impure_ptr>
   10966:	832a                	mv	t1,a0
   10968:	1f873783          	ld	a5,504(a4)
   1096c:	e789                	bnez	a5,10976 <__register_exitproc+0x16>
   1096e:	20070793          	addi	a5,a4,512
   10972:	1ef73c23          	sd	a5,504(a4)
   10976:	4798                	lw	a4,8(a5)
   10978:	487d                	li	a6,31
   1097a:	557d                	li	a0,-1
   1097c:	04e84463          	blt	a6,a4,109c4 <__register_exitproc+0x64>
   10980:	02030a63          	beqz	t1,109b4 <__register_exitproc+0x54>
   10984:	00371813          	slli	a6,a4,0x3
   10988:	983e                	add	a6,a6,a5
   1098a:	10c83823          	sd	a2,272(a6)
   1098e:	3107a883          	lw	a7,784(a5)
   10992:	4605                	li	a2,1
   10994:	00e6163b          	sllw	a2,a2,a4
   10998:	00c8e8b3          	or	a7,a7,a2
   1099c:	3117a823          	sw	a7,784(a5)
   109a0:	20d83823          	sd	a3,528(a6)
   109a4:	4689                	li	a3,2
   109a6:	00d31763          	bne	t1,a3,109b4 <__register_exitproc+0x54>
   109aa:	3147a683          	lw	a3,788(a5)
   109ae:	8e55                	or	a2,a2,a3
   109b0:	30c7aa23          	sw	a2,788(a5)
   109b4:	0017069b          	addiw	a3,a4,1
   109b8:	0709                	addi	a4,a4,2
   109ba:	070e                	slli	a4,a4,0x3
   109bc:	c794                	sw	a3,8(a5)
   109be:	97ba                	add	a5,a5,a4
   109c0:	e38c                	sd	a1,0(a5)
   109c2:	4501                	li	a0,0
   109c4:	8082                	ret
	...

00000000000109c8 <__call_exitprocs>:
   109c8:	715d                	addi	sp,sp,-80
   109ca:	67d1                	lui	a5,0x14
   109cc:	f44e                	sd	s3,40(sp)
   109ce:	a907b983          	ld	s3,-1392(a5) # 13a90 <_global_impure_ptr>
   109d2:	f052                	sd	s4,32(sp)
   109d4:	ec56                	sd	s5,24(sp)
   109d6:	e85a                	sd	s6,16(sp)
   109d8:	e486                	sd	ra,72(sp)
   109da:	e0a2                	sd	s0,64(sp)
   109dc:	fc26                	sd	s1,56(sp)
   109de:	f84a                	sd	s2,48(sp)
   109e0:	e45e                	sd	s7,8(sp)
   109e2:	8aaa                	mv	s5,a0
   109e4:	8a2e                	mv	s4,a1
   109e6:	4b05                	li	s6,1
   109e8:	1f89b403          	ld	s0,504(s3)
   109ec:	c801                	beqz	s0,109fc <__call_exitprocs+0x34>
   109ee:	4404                	lw	s1,8(s0)
   109f0:	34fd                	addiw	s1,s1,-1
   109f2:	00349913          	slli	s2,s1,0x3
   109f6:	9922                	add	s2,s2,s0
   109f8:	0004dd63          	bgez	s1,10a12 <__call_exitprocs+0x4a>
   109fc:	60a6                	ld	ra,72(sp)
   109fe:	6406                	ld	s0,64(sp)
   10a00:	74e2                	ld	s1,56(sp)
   10a02:	7942                	ld	s2,48(sp)
   10a04:	79a2                	ld	s3,40(sp)
   10a06:	7a02                	ld	s4,32(sp)
   10a08:	6ae2                	ld	s5,24(sp)
   10a0a:	6b42                	ld	s6,16(sp)
   10a0c:	6ba2                	ld	s7,8(sp)
   10a0e:	6161                	addi	sp,sp,80
   10a10:	8082                	ret
   10a12:	000a0963          	beqz	s4,10a24 <__call_exitprocs+0x5c>
   10a16:	21093783          	ld	a5,528(s2)
   10a1a:	01478563          	beq	a5,s4,10a24 <__call_exitprocs+0x5c>
   10a1e:	34fd                	addiw	s1,s1,-1
   10a20:	1961                	addi	s2,s2,-8
   10a22:	bfd9                	j	109f8 <__call_exitprocs+0x30>
   10a24:	441c                	lw	a5,8(s0)
   10a26:	01093683          	ld	a3,16(s2)
   10a2a:	37fd                	addiw	a5,a5,-1
   10a2c:	02979663          	bne	a5,s1,10a58 <__call_exitprocs+0x90>
   10a30:	c404                	sw	s1,8(s0)
   10a32:	d6f5                	beqz	a3,10a1e <__call_exitprocs+0x56>
   10a34:	31042703          	lw	a4,784(s0)
   10a38:	009b163b          	sllw	a2,s6,s1
   10a3c:	00842b83          	lw	s7,8(s0)
   10a40:	8f71                	and	a4,a4,a2
   10a42:	2701                	sext.w	a4,a4
   10a44:	ef09                	bnez	a4,10a5e <__call_exitprocs+0x96>
   10a46:	9682                	jalr	a3
   10a48:	4418                	lw	a4,8(s0)
   10a4a:	1f89b783          	ld	a5,504(s3)
   10a4e:	f9771de3          	bne	a4,s7,109e8 <__call_exitprocs+0x20>
   10a52:	fcf406e3          	beq	s0,a5,10a1e <__call_exitprocs+0x56>
   10a56:	bf49                	j	109e8 <__call_exitprocs+0x20>
   10a58:	00093823          	sd	zero,16(s2)
   10a5c:	bfd9                	j	10a32 <__call_exitprocs+0x6a>
   10a5e:	31442783          	lw	a5,788(s0)
   10a62:	11093583          	ld	a1,272(s2)
   10a66:	8ff1                	and	a5,a5,a2
   10a68:	2781                	sext.w	a5,a5
   10a6a:	e781                	bnez	a5,10a72 <__call_exitprocs+0xaa>
   10a6c:	8556                	mv	a0,s5
   10a6e:	9682                	jalr	a3
   10a70:	bfe1                	j	10a48 <__call_exitprocs+0x80>
   10a72:	852e                	mv	a0,a1
   10a74:	9682                	jalr	a3
   10a76:	bfc9                	j	10a48 <__call_exitprocs+0x80>
	...

0000000000010a7a <conv_stat>:
   10a7a:	619c                	ld	a5,0(a1)
   10a7c:	00f51023          	sh	a5,0(a0)
   10a80:	659c                	ld	a5,8(a1)
   10a82:	00f51123          	sh	a5,2(a0)
   10a86:	499c                	lw	a5,16(a1)
   10a88:	c15c                	sw	a5,4(a0)
   10a8a:	49dc                	lw	a5,20(a1)
   10a8c:	00f51423          	sh	a5,8(a0)
   10a90:	4d9c                	lw	a5,24(a1)
   10a92:	00f51523          	sh	a5,10(a0)
   10a96:	4ddc                	lw	a5,28(a1)
   10a98:	00f51623          	sh	a5,12(a0)
   10a9c:	719c                	ld	a5,32(a1)
   10a9e:	00f51723          	sh	a5,14(a0)
   10aa2:	799c                	ld	a5,48(a1)
   10aa4:	e91c                	sd	a5,16(a0)
   10aa6:	61bc                	ld	a5,64(a1)
   10aa8:	e93c                	sd	a5,80(a0)
   10aaa:	5d9c                	lw	a5,56(a1)
   10aac:	e53c                	sd	a5,72(a0)
   10aae:	65bc                	ld	a5,72(a1)
   10ab0:	ed1c                	sd	a5,24(a0)
   10ab2:	6dbc                	ld	a5,88(a1)
   10ab4:	f51c                	sd	a5,40(a0)
   10ab6:	75bc                	ld	a5,104(a1)
   10ab8:	fd1c                	sd	a5,56(a0)
   10aba:	8082                	ret

0000000000010abc <__syscall_error>:
   10abc:	1141                	addi	sp,sp,-16
   10abe:	e022                	sd	s0,0(sp)
   10ac0:	e406                	sd	ra,8(sp)
   10ac2:	842a                	mv	s0,a0
   10ac4:	00000097          	auipc	ra,0x0
   10ac8:	3ba080e7          	jalr	954(ra) # 10e7e <__errno>
   10acc:	408007bb          	negw	a5,s0
   10ad0:	60a2                	ld	ra,8(sp)
   10ad2:	6402                	ld	s0,0(sp)
   10ad4:	c11c                	sw	a5,0(a0)
   10ad6:	557d                	li	a0,-1
   10ad8:	0141                	addi	sp,sp,16
   10ada:	8082                	ret

0000000000010adc <__internal_syscall>:
   10adc:	88aa                	mv	a7,a0
   10ade:	852e                	mv	a0,a1
   10ae0:	85b2                	mv	a1,a2
   10ae2:	8636                	mv	a2,a3
   10ae4:	86ba                	mv	a3,a4
   10ae6:	00000073          	ecall
   10aea:	00055663          	bgez	a0,10af6 <__internal_syscall+0x1a>
   10aee:	00000317          	auipc	t1,0x0
   10af2:	fce30067          	jr	-50(t1) # 10abc <__syscall_error>
   10af6:	8082                	ret

0000000000010af8 <open>:
   10af8:	1141                	addi	sp,sp,-16
   10afa:	86b2                	mv	a3,a2
   10afc:	4701                	li	a4,0
   10afe:	862e                	mv	a2,a1
   10b00:	85aa                	mv	a1,a0
   10b02:	40000513          	li	a0,1024
   10b06:	e406                	sd	ra,8(sp)
   10b08:	00000097          	auipc	ra,0x0
   10b0c:	fd4080e7          	jalr	-44(ra) # 10adc <__internal_syscall>
   10b10:	60a2                	ld	ra,8(sp)
   10b12:	2501                	sext.w	a0,a0
   10b14:	0141                	addi	sp,sp,16
   10b16:	8082                	ret

0000000000010b18 <openat>:
   10b18:	1141                	addi	sp,sp,-16
   10b1a:	8736                	mv	a4,a3
   10b1c:	86b2                	mv	a3,a2
   10b1e:	862e                	mv	a2,a1
   10b20:	85aa                	mv	a1,a0
   10b22:	03800513          	li	a0,56
   10b26:	e406                	sd	ra,8(sp)
   10b28:	fb5ff0ef          	jal	ra,10adc <__internal_syscall>
   10b2c:	60a2                	ld	ra,8(sp)
   10b2e:	2501                	sext.w	a0,a0
   10b30:	0141                	addi	sp,sp,16
   10b32:	8082                	ret

0000000000010b34 <lseek>:
   10b34:	86b2                	mv	a3,a2
   10b36:	4701                	li	a4,0
   10b38:	862e                	mv	a2,a1
   10b3a:	85aa                	mv	a1,a0
   10b3c:	03e00513          	li	a0,62
   10b40:	00000317          	auipc	t1,0x0
   10b44:	f9c30067          	jr	-100(t1) # 10adc <__internal_syscall>

0000000000010b48 <read>:
   10b48:	86b2                	mv	a3,a2
   10b4a:	4701                	li	a4,0
   10b4c:	862e                	mv	a2,a1
   10b4e:	85aa                	mv	a1,a0
   10b50:	03f00513          	li	a0,63
   10b54:	f89ff06f          	j	10adc <__internal_syscall>

0000000000010b58 <write>:
   10b58:	86b2                	mv	a3,a2
   10b5a:	4701                	li	a4,0
   10b5c:	862e                	mv	a2,a1
   10b5e:	85aa                	mv	a1,a0
   10b60:	04000513          	li	a0,64
   10b64:	00000317          	auipc	t1,0x0
   10b68:	f7830067          	jr	-136(t1) # 10adc <__internal_syscall>

0000000000010b6c <fstat>:
   10b6c:	7135                	addi	sp,sp,-160
   10b6e:	e526                	sd	s1,136(sp)
   10b70:	860a                	mv	a2,sp
   10b72:	84ae                	mv	s1,a1
   10b74:	4701                	li	a4,0
   10b76:	85aa                	mv	a1,a0
   10b78:	4681                	li	a3,0
   10b7a:	05000513          	li	a0,80
   10b7e:	ed06                	sd	ra,152(sp)
   10b80:	e922                	sd	s0,144(sp)
   10b82:	f5bff0ef          	jal	ra,10adc <__internal_syscall>
   10b86:	842a                	mv	s0,a0
   10b88:	858a                	mv	a1,sp
   10b8a:	8526                	mv	a0,s1
   10b8c:	eefff0ef          	jal	ra,10a7a <conv_stat>
   10b90:	0004051b          	sext.w	a0,s0
   10b94:	60ea                	ld	ra,152(sp)
   10b96:	644a                	ld	s0,144(sp)
   10b98:	64aa                	ld	s1,136(sp)
   10b9a:	610d                	addi	sp,sp,160
   10b9c:	8082                	ret

0000000000010b9e <stat>:
   10b9e:	7135                	addi	sp,sp,-160
   10ba0:	e526                	sd	s1,136(sp)
   10ba2:	860a                	mv	a2,sp
   10ba4:	84ae                	mv	s1,a1
   10ba6:	4701                	li	a4,0
   10ba8:	85aa                	mv	a1,a0
   10baa:	4681                	li	a3,0
   10bac:	40e00513          	li	a0,1038
   10bb0:	ed06                	sd	ra,152(sp)
   10bb2:	e922                	sd	s0,144(sp)
   10bb4:	00000097          	auipc	ra,0x0
   10bb8:	f28080e7          	jalr	-216(ra) # 10adc <__internal_syscall>
   10bbc:	842a                	mv	s0,a0
   10bbe:	858a                	mv	a1,sp
   10bc0:	8526                	mv	a0,s1
   10bc2:	00000097          	auipc	ra,0x0
   10bc6:	eb8080e7          	jalr	-328(ra) # 10a7a <conv_stat>
   10bca:	0004051b          	sext.w	a0,s0
   10bce:	60ea                	ld	ra,152(sp)
   10bd0:	644a                	ld	s0,144(sp)
   10bd2:	64aa                	ld	s1,136(sp)
   10bd4:	610d                	addi	sp,sp,160
   10bd6:	8082                	ret

0000000000010bd8 <lstat>:
   10bd8:	7135                	addi	sp,sp,-160
   10bda:	e526                	sd	s1,136(sp)
   10bdc:	860a                	mv	a2,sp
   10bde:	84ae                	mv	s1,a1
   10be0:	4701                	li	a4,0
   10be2:	85aa                	mv	a1,a0
   10be4:	4681                	li	a3,0
   10be6:	40f00513          	li	a0,1039
   10bea:	ed06                	sd	ra,152(sp)
   10bec:	e922                	sd	s0,144(sp)
   10bee:	eefff0ef          	jal	ra,10adc <__internal_syscall>
   10bf2:	842a                	mv	s0,a0
   10bf4:	858a                	mv	a1,sp
   10bf6:	8526                	mv	a0,s1
   10bf8:	e83ff0ef          	jal	ra,10a7a <conv_stat>
   10bfc:	0004051b          	sext.w	a0,s0
   10c00:	60ea                	ld	ra,152(sp)
   10c02:	644a                	ld	s0,144(sp)
   10c04:	64aa                	ld	s1,136(sp)
   10c06:	610d                	addi	sp,sp,160
   10c08:	8082                	ret

0000000000010c0a <fstatat>:
   10c0a:	7135                	addi	sp,sp,-160
   10c0c:	e526                	sd	s1,136(sp)
   10c0e:	8736                	mv	a4,a3
   10c10:	84b2                	mv	s1,a2
   10c12:	868a                	mv	a3,sp
   10c14:	862e                	mv	a2,a1
   10c16:	85aa                	mv	a1,a0
   10c18:	04f00513          	li	a0,79
   10c1c:	ed06                	sd	ra,152(sp)
   10c1e:	e922                	sd	s0,144(sp)
   10c20:	00000097          	auipc	ra,0x0
   10c24:	ebc080e7          	jalr	-324(ra) # 10adc <__internal_syscall>
   10c28:	842a                	mv	s0,a0
   10c2a:	858a                	mv	a1,sp
   10c2c:	8526                	mv	a0,s1
   10c2e:	00000097          	auipc	ra,0x0
   10c32:	e4c080e7          	jalr	-436(ra) # 10a7a <conv_stat>
   10c36:	0004051b          	sext.w	a0,s0
   10c3a:	60ea                	ld	ra,152(sp)
   10c3c:	644a                	ld	s0,144(sp)
   10c3e:	64aa                	ld	s1,136(sp)
   10c40:	610d                	addi	sp,sp,160
   10c42:	8082                	ret

0000000000010c44 <access>:
   10c44:	1141                	addi	sp,sp,-16
   10c46:	862e                	mv	a2,a1
   10c48:	4701                	li	a4,0
   10c4a:	85aa                	mv	a1,a0
   10c4c:	4681                	li	a3,0
   10c4e:	40900513          	li	a0,1033
   10c52:	e406                	sd	ra,8(sp)
   10c54:	e89ff0ef          	jal	ra,10adc <__internal_syscall>
   10c58:	60a2                	ld	ra,8(sp)
   10c5a:	2501                	sext.w	a0,a0
   10c5c:	0141                	addi	sp,sp,16
   10c5e:	8082                	ret

0000000000010c60 <faccessat>:
   10c60:	1141                	addi	sp,sp,-16
   10c62:	8736                	mv	a4,a3
   10c64:	86b2                	mv	a3,a2
   10c66:	862e                	mv	a2,a1
   10c68:	85aa                	mv	a1,a0
   10c6a:	03000513          	li	a0,48
   10c6e:	e406                	sd	ra,8(sp)
   10c70:	00000097          	auipc	ra,0x0
   10c74:	e6c080e7          	jalr	-404(ra) # 10adc <__internal_syscall>
   10c78:	60a2                	ld	ra,8(sp)
   10c7a:	2501                	sext.w	a0,a0
   10c7c:	0141                	addi	sp,sp,16
   10c7e:	8082                	ret

0000000000010c80 <close>:
   10c80:	1141                	addi	sp,sp,-16
   10c82:	85aa                	mv	a1,a0
   10c84:	4701                	li	a4,0
   10c86:	4681                	li	a3,0
   10c88:	4601                	li	a2,0
   10c8a:	03900513          	li	a0,57
   10c8e:	e406                	sd	ra,8(sp)
   10c90:	e4dff0ef          	jal	ra,10adc <__internal_syscall>
   10c94:	60a2                	ld	ra,8(sp)
   10c96:	2501                	sext.w	a0,a0
   10c98:	0141                	addi	sp,sp,16
   10c9a:	8082                	ret

0000000000010c9c <link>:
   10c9c:	1141                	addi	sp,sp,-16
   10c9e:	862e                	mv	a2,a1
   10ca0:	4701                	li	a4,0
   10ca2:	85aa                	mv	a1,a0
   10ca4:	4681                	li	a3,0
   10ca6:	40100513          	li	a0,1025
   10caa:	e406                	sd	ra,8(sp)
   10cac:	00000097          	auipc	ra,0x0
   10cb0:	e30080e7          	jalr	-464(ra) # 10adc <__internal_syscall>
   10cb4:	60a2                	ld	ra,8(sp)
   10cb6:	2501                	sext.w	a0,a0
   10cb8:	0141                	addi	sp,sp,16
   10cba:	8082                	ret

0000000000010cbc <unlink>:
   10cbc:	1141                	addi	sp,sp,-16
   10cbe:	85aa                	mv	a1,a0
   10cc0:	4701                	li	a4,0
   10cc2:	4681                	li	a3,0
   10cc4:	4601                	li	a2,0
   10cc6:	40200513          	li	a0,1026
   10cca:	e406                	sd	ra,8(sp)
   10ccc:	e11ff0ef          	jal	ra,10adc <__internal_syscall>
   10cd0:	60a2                	ld	ra,8(sp)
   10cd2:	2501                	sext.w	a0,a0
   10cd4:	0141                	addi	sp,sp,16
   10cd6:	8082                	ret

0000000000010cd8 <execve>:
   10cd8:	1141                	addi	sp,sp,-16
   10cda:	e406                	sd	ra,8(sp)
   10cdc:	00000097          	auipc	ra,0x0
   10ce0:	1a2080e7          	jalr	418(ra) # 10e7e <__errno>
   10ce4:	60a2                	ld	ra,8(sp)
   10ce6:	47b1                	li	a5,12
   10ce8:	c11c                	sw	a5,0(a0)
   10cea:	557d                	li	a0,-1
   10cec:	0141                	addi	sp,sp,16
   10cee:	8082                	ret

0000000000010cf0 <fork>:
   10cf0:	1141                	addi	sp,sp,-16
   10cf2:	e406                	sd	ra,8(sp)
   10cf4:	18a000ef          	jal	ra,10e7e <__errno>
   10cf8:	60a2                	ld	ra,8(sp)
   10cfa:	47ad                	li	a5,11
   10cfc:	c11c                	sw	a5,0(a0)
   10cfe:	557d                	li	a0,-1
   10d00:	0141                	addi	sp,sp,16
   10d02:	8082                	ret

0000000000010d04 <getpid>:
   10d04:	4505                	li	a0,1
   10d06:	8082                	ret

0000000000010d08 <kill>:
   10d08:	1141                	addi	sp,sp,-16
   10d0a:	e406                	sd	ra,8(sp)
   10d0c:	172000ef          	jal	ra,10e7e <__errno>
   10d10:	60a2                	ld	ra,8(sp)
   10d12:	47d9                	li	a5,22
   10d14:	c11c                	sw	a5,0(a0)
   10d16:	557d                	li	a0,-1
   10d18:	0141                	addi	sp,sp,16
   10d1a:	8082                	ret

0000000000010d1c <wait>:
   10d1c:	1141                	addi	sp,sp,-16
   10d1e:	e406                	sd	ra,8(sp)
   10d20:	00000097          	auipc	ra,0x0
   10d24:	15e080e7          	jalr	350(ra) # 10e7e <__errno>
   10d28:	60a2                	ld	ra,8(sp)
   10d2a:	47a9                	li	a5,10
   10d2c:	c11c                	sw	a5,0(a0)
   10d2e:	557d                	li	a0,-1
   10d30:	0141                	addi	sp,sp,16
   10d32:	8082                	ret

0000000000010d34 <isatty>:
   10d34:	7119                	addi	sp,sp,-128
   10d36:	002c                	addi	a1,sp,8
   10d38:	fc86                	sd	ra,120(sp)
   10d3a:	e33ff0ef          	jal	ra,10b6c <fstat>
   10d3e:	57fd                	li	a5,-1
   10d40:	00f50663          	beq	a0,a5,10d4c <isatty+0x18>
   10d44:	4532                	lw	a0,12(sp)
   10d46:	40d5551b          	sraiw	a0,a0,0xd
   10d4a:	8905                	andi	a0,a0,1
   10d4c:	70e6                	ld	ra,120(sp)
   10d4e:	6109                	addi	sp,sp,128
   10d50:	8082                	ret

0000000000010d52 <gettimeofday>:
   10d52:	1141                	addi	sp,sp,-16
   10d54:	85aa                	mv	a1,a0
   10d56:	4701                	li	a4,0
   10d58:	4681                	li	a3,0
   10d5a:	4601                	li	a2,0
   10d5c:	0a900513          	li	a0,169
   10d60:	e406                	sd	ra,8(sp)
   10d62:	00000097          	auipc	ra,0x0
   10d66:	d7a080e7          	jalr	-646(ra) # 10adc <__internal_syscall>
   10d6a:	60a2                	ld	ra,8(sp)
   10d6c:	2501                	sext.w	a0,a0
   10d6e:	0141                	addi	sp,sp,16
   10d70:	8082                	ret

0000000000010d72 <times>:
   10d72:	7179                	addi	sp,sp,-48
   10d74:	f022                	sd	s0,32(sp)
   10d76:	842a                	mv	s0,a0
   10d78:	2201b783          	ld	a5,544(gp) # 144a8 <t0.2574>
   10d7c:	ec26                	sd	s1,24(sp)
   10d7e:	f406                	sd	ra,40(sp)
   10d80:	22018493          	addi	s1,gp,544 # 144a8 <t0.2574>
   10d84:	eb81                	bnez	a5,10d94 <times+0x22>
   10d86:	4581                	li	a1,0
   10d88:	22018513          	addi	a0,gp,544 # 144a8 <t0.2574>
   10d8c:	00000097          	auipc	ra,0x0
   10d90:	fc6080e7          	jalr	-58(ra) # 10d52 <gettimeofday>
   10d94:	850a                	mv	a0,sp
   10d96:	4581                	li	a1,0
   10d98:	00000097          	auipc	ra,0x0
   10d9c:	fba080e7          	jalr	-70(ra) # 10d52 <gettimeofday>
   10da0:	6098                	ld	a4,0(s1)
   10da2:	6782                	ld	a5,0(sp)
   10da4:	6494                	ld	a3,8(s1)
   10da6:	00043823          	sd	zero,16(s0)
   10daa:	8f99                	sub	a5,a5,a4
   10dac:	000f4737          	lui	a4,0xf4
   10db0:	24070713          	addi	a4,a4,576 # f4240 <_end+0xdfd88>
   10db4:	02e787b3          	mul	a5,a5,a4
   10db8:	6722                	ld	a4,8(sp)
   10dba:	00043c23          	sd	zero,24(s0)
   10dbe:	00043423          	sd	zero,8(s0)
   10dc2:	8f15                	sub	a4,a4,a3
   10dc4:	70a2                	ld	ra,40(sp)
   10dc6:	64e2                	ld	s1,24(sp)
   10dc8:	557d                	li	a0,-1
   10dca:	97ba                	add	a5,a5,a4
   10dcc:	e01c                	sd	a5,0(s0)
   10dce:	7402                	ld	s0,32(sp)
   10dd0:	6145                	addi	sp,sp,48
   10dd2:	8082                	ret

0000000000010dd4 <ftime>:
   10dd4:	00051423          	sh	zero,8(a0)
   10dd8:	00053023          	sd	zero,0(a0)
   10ddc:	4501                	li	a0,0
   10dde:	8082                	ret

0000000000010de0 <utime>:
   10de0:	557d                	li	a0,-1
   10de2:	8082                	ret

0000000000010de4 <chown>:
   10de4:	557d                	li	a0,-1
   10de6:	8082                	ret

0000000000010de8 <chmod>:
   10de8:	557d                	li	a0,-1
   10dea:	8082                	ret

0000000000010dec <chdir>:
   10dec:	557d                	li	a0,-1
   10dee:	8082                	ret

0000000000010df0 <getcwd>:
   10df0:	4501                	li	a0,0
   10df2:	8082                	ret

0000000000010df4 <sysconf>:
   10df4:	4789                	li	a5,2
   10df6:	00f50463          	beq	a0,a5,10dfe <sysconf+0xa>
   10dfa:	557d                	li	a0,-1
   10dfc:	8082                	ret
   10dfe:	000f4537          	lui	a0,0xf4
   10e02:	24050513          	addi	a0,a0,576 # f4240 <_end+0xdfd88>
   10e06:	8082                	ret

0000000000010e08 <sbrk>:
   10e08:	1101                	addi	sp,sp,-32
   10e0a:	e822                	sd	s0,16(sp)
   10e0c:	8181b783          	ld	a5,-2024(gp) # 13aa0 <_edata>
   10e10:	e426                	sd	s1,8(sp)
   10e12:	ec06                	sd	ra,24(sp)
   10e14:	84aa                	mv	s1,a0
   10e16:	e785                	bnez	a5,10e3e <sbrk+0x36>
   10e18:	4701                	li	a4,0
   10e1a:	4681                	li	a3,0
   10e1c:	4601                	li	a2,0
   10e1e:	4581                	li	a1,0
   10e20:	0d600513          	li	a0,214
   10e24:	cb9ff0ef          	jal	ra,10adc <__internal_syscall>
   10e28:	57fd                	li	a5,-1
   10e2a:	00f51863          	bne	a0,a5,10e3a <sbrk+0x32>
   10e2e:	557d                	li	a0,-1
   10e30:	60e2                	ld	ra,24(sp)
   10e32:	6442                	ld	s0,16(sp)
   10e34:	64a2                	ld	s1,8(sp)
   10e36:	6105                	addi	sp,sp,32
   10e38:	8082                	ret
   10e3a:	80a1bc23          	sd	a0,-2024(gp) # 13aa0 <_edata>
   10e3e:	8181b583          	ld	a1,-2024(gp) # 13aa0 <_edata>
   10e42:	4701                	li	a4,0
   10e44:	4681                	li	a3,0
   10e46:	95a6                	add	a1,a1,s1
   10e48:	4601                	li	a2,0
   10e4a:	0d600513          	li	a0,214
   10e4e:	c8fff0ef          	jal	ra,10adc <__internal_syscall>
   10e52:	8181b783          	ld	a5,-2024(gp) # 13aa0 <_edata>
   10e56:	94be                	add	s1,s1,a5
   10e58:	fc951be3          	bne	a0,s1,10e2e <sbrk+0x26>
   10e5c:	80a1bc23          	sd	a0,-2024(gp) # 13aa0 <_edata>
   10e60:	853e                	mv	a0,a5
   10e62:	b7f9                	j	10e30 <sbrk+0x28>

0000000000010e64 <_exit>:
   10e64:	1141                	addi	sp,sp,-16
   10e66:	85aa                	mv	a1,a0
   10e68:	4701                	li	a4,0
   10e6a:	4681                	li	a3,0
   10e6c:	4601                	li	a2,0
   10e6e:	05d00513          	li	a0,93
   10e72:	e406                	sd	ra,8(sp)
   10e74:	00000097          	auipc	ra,0x0
   10e78:	c68080e7          	jalr	-920(ra) # 10adc <__internal_syscall>
   10e7c:	a001                	j	10e7c <_exit+0x18>

0000000000010e7e <__errno>:
   10e7e:	8101b503          	ld	a0,-2032(gp) # 13a98 <_impure_ptr>
   10e82:	8082                	ret
	...

Disassembly of section .eh_frame:

0000000000010e88 <__EH_FRAME_BEGIN__>:
   10e88:	0010                	addi	a2,sp,0
   10e8a:	0000                	unimp
   10e8c:	0000                	unimp
   10e8e:	0000                	unimp
   10e90:	7a01                	lui	s4,0xfffe0
   10e92:	0052                	0x52
   10e94:	7c01                	lui	s8,0xfffe0
   10e96:	0101                	addi	sp,sp,0
   10e98:	00020d1b          	sext.w	s10,tp
   10e9c:	001c                	addi	a5,sp,0
   10e9e:	0000                	unimp
   10ea0:	0018                	addi	a4,sp,0
   10ea2:	0000                	unimp
   10ea4:	f308                	sd	a0,32(a4)
   10ea6:	ffff                	0xffff
   10ea8:	004c                	addi	a1,sp,4
   10eaa:	0000                	unimp
   10eac:	4400                	lw	s0,8(s0)
   10eae:	300e                	fld	ft0,224(sp)
   10eb0:	8844                	0x8844
   10eb2:	4402                	lw	s0,0(sp)
   10eb4:	080c                	addi	a1,sp,16
   10eb6:	7800                	ld	s0,48(s0)
   10eb8:	44c8                	lw	a0,12(s1)
   10eba:	020d                	addi	tp,tp,3
   10ebc:	0024                	addi	s1,sp,8
   10ebe:	0000                	unimp
   10ec0:	0038                	addi	a4,sp,8
   10ec2:	0000                	unimp
   10ec4:	f334                	sd	a3,96(a4)
   10ec6:	ffff                	0xffff
   10ec8:	0188                	addi	a0,sp,192
   10eca:	0000                	unimp
   10ecc:	4400                	lw	s0,8(s0)
   10ece:	300e                	fld	ft0,224(sp)
   10ed0:	8148                	0x8148
   10ed2:	8802                	jr	a6
   10ed4:	4404                	lw	s1,8(s0)
   10ed6:	080c                	addi	a1,sp,16
   10ed8:	0300                	addi	s0,sp,384
   10eda:	016c                	addi	a1,sp,140
   10edc:	44c1                	li	s1,16
   10ede:	44c8                	lw	a0,12(s1)
   10ee0:	020d                	addi	tp,tp,3
   10ee2:	0000                	unimp
   10ee4:	0024                	addi	s1,sp,8
   10ee6:	0000                	unimp
   10ee8:	0060                	addi	s0,sp,12
   10eea:	0000                	unimp
   10eec:	f494                	sd	a3,40(s1)
   10eee:	ffff                	0xffff
   10ef0:	00e0                	addi	s0,sp,76
   10ef2:	0000                	unimp
   10ef4:	4400                	lw	s0,8(s0)
   10ef6:	300e                	fld	ft0,224(sp)
   10ef8:	8148                	0x8148
   10efa:	8802                	jr	a6
   10efc:	4404                	lw	s1,8(s0)
   10efe:	080c                	addi	a1,sp,16
   10f00:	0200                	addi	s0,sp,256
   10f02:	c1c4                	sw	s1,4(a1)
   10f04:	c844                	sw	s1,20(s0)
   10f06:	0d44                	addi	s1,sp,660
   10f08:	0002                	0x2
   10f0a:	0000                	unimp
   10f0c:	0024                	addi	s1,sp,8
   10f0e:	0000                	unimp
   10f10:	0088                	addi	a0,sp,64
   10f12:	0000                	unimp
   10f14:	f54c                	sd	a1,168(a0)
   10f16:	ffff                	0xffff
   10f18:	0098                	addi	a4,sp,64
   10f1a:	0000                	unimp
   10f1c:	4400                	lw	s0,8(s0)
   10f1e:	200e                	fld	ft0,192(sp)
   10f20:	8148                	0x8148
   10f22:	8802                	jr	a6
   10f24:	4404                	lw	s1,8(s0)
   10f26:	080c                	addi	a1,sp,16
   10f28:	0200                	addi	s0,sp,256
   10f2a:	c17c                	sw	a5,68(a0)
   10f2c:	c844                	sw	s1,20(s0)
   10f2e:	0d44                	addi	s1,sp,660
   10f30:	0002                	0x2
   10f32:	0000                	unimp
   10f34:	0020                	addi	s0,sp,8
   10f36:	0000                	unimp
   10f38:	00b0                	addi	a2,sp,72
   10f3a:	0000                	unimp
   10f3c:	f5bc                	sd	a5,104(a1)
   10f3e:	ffff                	0xffff
   10f40:	0038                	addi	a4,sp,8
   10f42:	0000                	unimp
   10f44:	4400                	lw	s0,8(s0)
   10f46:	200e                	fld	ft0,192(sp)
   10f48:	8148                	0x8148
   10f4a:	8802                	jr	a6
   10f4c:	4404                	lw	s1,8(s0)
   10f4e:	080c                	addi	a1,sp,16
   10f50:	6000                	ld	s0,0(s0)
   10f52:	44c1                	li	s1,16
   10f54:	44c8                	lw	a0,12(s1)
   10f56:	020d                	addi	tp,tp,3
   10f58:	0020                	addi	s0,sp,8
   10f5a:	0000                	unimp
   10f5c:	00d4                	addi	a3,sp,68
   10f5e:	0000                	unimp
   10f60:	f5d0                	sd	a2,168(a1)
   10f62:	ffff                	0xffff
   10f64:	01f4                	addi	a3,sp,204
   10f66:	0000                	unimp
   10f68:	4400                	lw	s0,8(s0)
   10f6a:	400e                	0x400e
   10f6c:	8844                	0x8844
   10f6e:	4402                	lw	s0,0(sp)
   10f70:	080c                	addi	a1,sp,16
   10f72:	0300                	addi	s0,sp,384
   10f74:	01e0                	addi	s0,sp,204
   10f76:	44c8                	lw	a0,12(s1)
   10f78:	020d                	addi	tp,tp,3
   10f7a:	0000                	unimp
   10f7c:	0020                	addi	s0,sp,8
   10f7e:	0000                	unimp
   10f80:	00f8                	addi	a4,sp,76
   10f82:	0000                	unimp
   10f84:	f7a0                	sd	s0,104(a5)
   10f86:	ffff                	0xffff
   10f88:	003c                	addi	a5,sp,8
   10f8a:	0000                	unimp
   10f8c:	4400                	lw	s0,8(s0)
   10f8e:	200e                	fld	ft0,192(sp)
   10f90:	8148                	0x8148
   10f92:	8802                	jr	a6
   10f94:	4404                	lw	s1,8(s0)
   10f96:	080c                	addi	a1,sp,16
   10f98:	6000                	ld	s0,0(s0)
   10f9a:	44c1                	li	s1,16
   10f9c:	44c8                	lw	a0,12(s1)
   10f9e:	020d                	addi	tp,tp,3
   10fa0:	0020                	addi	s0,sp,8
   10fa2:	0000                	unimp
   10fa4:	011c                	addi	a5,sp,128
   10fa6:	0000                	unimp
   10fa8:	f7b8                	sd	a4,104(a5)
   10faa:	ffff                	0xffff
   10fac:	0038                	addi	a4,sp,8
   10fae:	0000                	unimp
   10fb0:	4400                	lw	s0,8(s0)
   10fb2:	100e                	0x100e
   10fb4:	8148                	0x8148
   10fb6:	8802                	jr	a6
   10fb8:	4404                	lw	s1,8(s0)
   10fba:	080c                	addi	a1,sp,16
   10fbc:	6000                	ld	s0,0(s0)
   10fbe:	44c1                	li	s1,16
   10fc0:	44c8                	lw	a0,12(s1)
   10fc2:	020d                	addi	tp,tp,3
   10fc4:	0020                	addi	s0,sp,8
   10fc6:	0000                	unimp
   10fc8:	0140                	addi	s0,sp,132
   10fca:	0000                	unimp
   10fcc:	f7cc                	sd	a1,168(a5)
   10fce:	ffff                	0xffff
   10fd0:	0030                	addi	a2,sp,8
   10fd2:	0000                	unimp
   10fd4:	4400                	lw	s0,8(s0)
   10fd6:	100e                	0x100e
   10fd8:	8148                	0x8148
   10fda:	8802                	jr	a6
   10fdc:	4404                	lw	s1,8(s0)
   10fde:	080c                	addi	a1,sp,16
   10fe0:	5400                	lw	s0,40(s0)
   10fe2:	44c1                	li	s1,16
   10fe4:	44c8                	lw	a0,12(s1)
   10fe6:	020d                	addi	tp,tp,3

0000000000010fe8 <__FRAME_END__>:
   10fe8:	0000                	unimp
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

0000000000011010 <a>:
   11010:	3438                	fld	fa4,104(s0)
   11012:	3234                	fld	fa3,96(a2)
   11014:	3931                	addiw	s2,s2,-20
   11016:	310a                	fld	ft2,160(sp)
   11018:	3332                	fld	ft6,296(sp)
   1101a:	0a323137          	lui	sp,0xa323
   1101e:	33333937          	lui	s2,0x33333
   11022:	0a36                	slli	s4,s4,0xd
   11024:	3134                	fld	fa3,96(a0)
   11026:	3039                	0x3039
   11028:	3435                	addiw	s0,s0,-19
   1102a:	310a                	fld	ft2,160(sp)
   1102c:	3439                	addiw	s0,s0,-18
   1102e:	3335                	addiw	t1,t1,-19
   11030:	0a32                	slli	s4,s4,0xc
   11032:	35303733          	0x35303733
   11036:	3634                	fld	fa3,104(a2)
   11038:	310a                	fld	ft2,160(sp)
   1103a:	30323037          	lui	zero,0x30323
   1103e:	0a35                	addi	s4,s4,13
   11040:	3632                	fld	fa2,296(sp)
   11042:	3430                	fld	fa2,104(s0)
   11044:	3235                	addiw	tp,tp,-19
   11046:	310a                	fld	ft2,160(sp)
   11048:	3838                	fld	fa4,112(s0)
   1104a:	3331                	addiw	t1,t1,-20
   1104c:	0a35                	addi	s4,s4,13
   1104e:	3832                	fld	fa6,296(sp)
   11050:	3330                	fld	fa2,96(a4)
   11052:	3736                	fld	fa4,360(sp)
   11054:	350a                	fld	fa0,160(sp)
   11056:	31383633          	0x31383633
   1105a:	0a32                	slli	s4,s4,0xc
   1105c:	3738                	fld	fa4,104(a4)
   1105e:	31333433          	0x31333433
   11062:	360a                	fld	fa2,160(sp)
   11064:	33373937          	lui	s2,0x33373
   11068:	370a                	fld	fa4,160(sp)
   1106a:	3931                	addiw	s2,s2,-20
   1106c:	3634                	fld	fa3,104(a2)
   1106e:	0a34                	addi	a3,sp,280
   11070:	3234                	fld	fa3,96(a2)
   11072:	3730                	fld	fa2,104(a4)
   11074:	3639                	addiw	a2,a2,-18
   11076:	350a                	fld	fa0,160(sp)
   11078:	33313133          	0x33313133
   1107c:	0a31                	addi	s4,s4,12
   1107e:	3738                	fld	fa4,104(a4)
   11080:	3731                	addiw	a4,a4,-20
   11082:	0a30                	addi	a2,sp,280
   11084:	3435                	addiw	s0,s0,-19
   11086:	3031                	0x3031
   11088:	380a                	fld	fa6,160(sp)
   1108a:	3634                	fld	fa3,104(a2)
   1108c:	3236                	fld	ft4,360(sp)
   1108e:	0a30                	addi	a2,sp,280
   11090:	3035                	0x3035
   11092:	3235                	addiw	tp,tp,-19
   11094:	3634                	fld	fa3,104(a2)
   11096:	310a                	fld	ft2,160(sp)
   11098:	3439                	addiw	s0,s0,-18
   1109a:	3838                	fld	fa4,112(s0)
   1109c:	0a34                	addi	a3,sp,280
   1109e:	3738                	fld	fa4,104(a4)
   110a0:	31363433          	0x31363433
   110a4:	330a                	fld	ft6,160(sp)
   110a6:	3039                	0x3039
   110a8:	3938                	fld	fa4,112(a0)
   110aa:	0a34                	addi	a3,sp,280
   110ac:	3835                	addiw	a6,a6,-19
   110ae:	3139                	addiw	sp,sp,-18
   110b0:	3036                	fld	ft0,360(sp)
   110b2:	350a                	fld	fa0,160(sp)
   110b4:	3832                	fld	fa6,296(sp)
   110b6:	330a3337          	lui	t1,0x330a3
   110ba:	3538                	fld	fa4,104(a0)
   110bc:	3432                	fld	fs0,296(sp)
   110be:	0a39                	addi	s4,s4,14
   110c0:	3836                	fld	fa6,360(sp)
   110c2:	3331                	addiw	t1,t1,-20
   110c4:	3632                	fld	fa2,296(sp)
   110c6:	340a                	fld	fs0,160(sp)
   110c8:	3231                	addiw	tp,tp,-20
   110ca:	3734                	fld	fa3,104(a4)
   110cc:	0a35                	addi	s4,s4,13
   110ce:	3232                	fld	ft4,296(sp)
   110d0:	3939                	addiw	s2,s2,-18
   110d2:	3038                	fld	fa4,96(s0)
   110d4:	390a                	fld	fs2,160(sp)
   110d6:	3735                	addiw	a4,a4,-19
   110d8:	0a393837          	lui	a6,0xa393
   110dc:	3638                	fld	fa4,104(a2)
   110de:	3534                	fld	fa3,104(a0)
   110e0:	3535                	addiw	a0,a0,-19
   110e2:	370a                	fld	fa4,160(sp)
   110e4:	3434                	fld	fa3,104(s0)
   110e6:	3334                	fld	fa3,96(a4)
   110e8:	0a34                	addi	a3,sp,280
   110ea:	37303833          	0x37303833
   110ee:	3135                	addiw	sp,sp,-19
   110f0:	350a                	fld	fa0,160(sp)
   110f2:	36353233          	0x36353233
   110f6:	0a30                	addi	a2,sp,280
   110f8:	3536                	fld	fa0,360(sp)
   110fa:	34303637          	lui	a2,0x34303
   110fe:	350a                	fld	fa0,160(sp)
   11100:	3230                	fld	fa2,96(a2)
   11102:	3930                	fld	fa2,112(a0)
   11104:	0a36                	slli	s4,s4,0xd
   11106:	36393133          	0x36393133
   1110a:	370a3137          	lui	sp,0x370a3
   1110e:	3536                	fld	fa0,360(sp)
   11110:	3031                	0x3031
   11112:	0a30                	addi	a2,sp,280
   11114:	3031                	0x3031
   11116:	3836                	fld	fa6,360(sp)
   11118:	3034                	fld	fa3,96(s0)
   1111a:	320a                	fld	ft4,160(sp)
   1111c:	3139                	addiw	sp,sp,-18
   1111e:	3230                	fld	fa2,96(a2)
   11120:	0a36                	slli	s4,s4,0xd
   11122:	3835                	addiw	a6,a6,-19
   11124:	3135                	addiw	sp,sp,-19
   11126:	3636                	fld	fa2,360(sp)
   11128:	340a                	fld	fs0,160(sp)
   1112a:	3738                	fld	fa4,104(a4)
   1112c:	3034                	fld	fa3,96(s0)
   1112e:	0a38                	addi	a4,sp,280
   11130:	34323533          	0x34323533
   11134:	0a39                	addi	s4,s4,14
   11136:	3439                	addiw	s0,s0,-18
   11138:	3635                	addiw	a2,a2,-19
   1113a:	3335                	addiw	t1,t1,-19
   1113c:	350a                	fld	fa0,160(sp)
   1113e:	3338                	fld	fa4,96(a4)
   11140:	0a353237          	lui	tp,0xa353
   11144:	32333237          	lui	tp,0x32333
   11148:	3734                	fld	fa3,104(a4)
   1114a:	390a                	fld	fs2,160(sp)
   1114c:	3936                	fld	fs2,360(sp)
   1114e:	3938                	fld	fa4,112(a0)
   11150:	39340a33          	0x39340a33
   11154:	3038                	fld	fa4,96(s0)
   11156:	3432                	fld	fs0,296(sp)
   11158:	310a                	fld	ft2,160(sp)
   1115a:	3630                	fld	fa2,104(a2)
   1115c:	0a303833          	0xa303833
   11160:	3036                	fld	ft0,360(sp)
   11162:	36393737          	lui	a4,0x36393
   11166:	380a                	fld	fa6,160(sp)
   11168:	3936                	fld	fs2,360(sp)
   1116a:	3534                	fld	fa3,104(a0)
   1116c:	320a                	fld	ft4,160(sp)
   1116e:	34303737          	lui	a4,0x34303
   11172:	0a31                	addi	s4,s4,12
   11174:	3038                	fld	fa4,96(s0)
   11176:	3932                	fld	fs2,296(sp)
   11178:	3832                	fld	fa6,296(sp)
   1117a:	350a                	fld	fa0,160(sp)
   1117c:	3736                	fld	fa4,360(sp)
   1117e:	3432                	fld	fs0,296(sp)
   11180:	0a38                	addi	a4,sp,280
   11182:	3831                	addiw	a6,a6,-20
   11184:	3531                	addiw	a0,a0,-20
   11186:	3036                	fld	ft0,360(sp)
   11188:	370a                	fld	fa4,160(sp)
   1118a:	3534                	fld	fa3,104(a0)
   1118c:	3630                	fld	fa2,104(a2)
   1118e:	0a35                	addi	s4,s4,13
   11190:	3634                	fld	fa3,104(a2)
   11192:	3734                	fld	fa3,104(a4)
   11194:	3334                	fld	fa3,96(a4)
   11196:	360a                	fld	fa2,160(sp)
   11198:	3435                	addiw	s0,s0,-19
   1119a:	3236                	fld	ft4,360(sp)
   1119c:	0a38                	addi	a4,sp,280
   1119e:	3639                	addiw	a2,a2,-18
   111a0:	30393633          	0x30393633
   111a4:	330a                	fld	ft6,160(sp)
   111a6:	3336                	fld	ft6,360(sp)
   111a8:	3531                	addiw	a0,a0,-20
   111aa:	0a38                	addi	a4,sp,280
   111ac:	35393133          	0x35393133
   111b0:	390a3233          	0x390a3233
   111b4:	3638                	fld	fa4,104(a2)
   111b6:	3439                	addiw	s0,s0,-18
   111b8:	0a35                	addi	s4,s4,13
   111ba:	3536                	fld	fa0,360(sp)
   111bc:	3738                	fld	fa4,104(a4)
   111be:	3534                	fld	fa3,104(a0)
   111c0:	390a                	fld	fs2,160(sp)
   111c2:	3934                	fld	fa3,112(a0)
   111c4:	3131                	addiw	sp,sp,-20
   111c6:	0a32                	slli	s4,s4,0xc
   111c8:	3138                	fld	fa4,96(a0)
   111ca:	3639                	addiw	a2,a2,-18
   111cc:	3138                	fld	fa4,96(a0)
   111ce:	320a                	fld	ft4,160(sp)
   111d0:	3039                	0x3039
   111d2:	0a333933          	0xa333933
   111d6:	31363337          	lui	t1,0x31363
   111da:	3139                	addiw	sp,sp,-18
   111dc:	310a                	fld	ft2,160(sp)
   111de:	3038                	fld	fa4,96(s0)
   111e0:	3030                	fld	fa2,96(s0)
   111e2:	34310a37          	lui	s4,0x34310
   111e6:	30313437          	lui	s0,0x30313
   111ea:	360a                	fld	fa2,160(sp)
   111ec:	3739                	addiw	a4,a4,-18
   111ee:	3638                	fld	fa4,104(a2)
   111f0:	0a31                	addi	s4,s4,12
   111f2:	3532                	fld	fa0,296(sp)
   111f4:	3736                	fld	fa4,360(sp)
   111f6:	3032                	fld	ft0,296(sp)
   111f8:	310a                	fld	ft2,160(sp)
   111fa:	3835                	addiw	a6,a6,-19
   111fc:	0a323033          	0xa323033
   11200:	3831                	addiw	a6,a6,-20
   11202:	3734                	fld	fa3,104(a4)
   11204:	3936                	fld	fs2,360(sp)
   11206:	340a                	fld	fs0,160(sp)
   11208:	3131                	addiw	sp,sp,-20
   1120a:	3434                	fld	fa3,104(s0)
   1120c:	0a30                	addi	a2,sp,280
   1120e:	3634                	fld	fa3,104(a2)
   11210:	33303737          	lui	a4,0x33303
   11214:	330a                	fld	ft6,160(sp)
   11216:	3234                	fld	fa3,96(a2)
   11218:	3430                	fld	fa2,104(s0)
   1121a:	0a34                	addi	a3,sp,280
   1121c:	3039                	0x3039
   1121e:	3938                	fld	fa4,112(a0)
   11220:	360a3437          	lui	s0,0x360a3
   11224:	3531                	addiw	a0,a0,-20
   11226:	3331                	addiw	t1,t1,-20
   11228:	36360a37          	lui	s4,0x36360
   1122c:	3736                	fld	fa4,360(sp)
   1122e:	3630                	fld	fa2,104(a2)
   11230:	380a                	fld	fa6,160(sp)
   11232:	3739                	addiw	a4,a4,-18
   11234:	3339                	addiw	t1,t1,-18
   11236:	36340a37          	lui	s4,0x36340
   1123a:	3835                	addiw	a6,a6,-19
   1123c:	3838                	fld	fa4,112(s0)
   1123e:	310a                	fld	ft2,160(sp)
   11240:	30393537          	lui	a0,0x30393
   11244:	0a35                	addi	s4,s4,13
   11246:	3732                	fld	fa4,296(sp)
   11248:	3036                	fld	ft0,360(sp)
   1124a:	350a3037          	lui	zero,0x350a3
   1124e:	3336                	fld	ft6,360(sp)
   11250:	3630                	fld	fa2,104(a2)
   11252:	36320a37          	lui	s4,0x36320
   11256:	38333333          	0x38333333
   1125a:	350a                	fld	fa0,160(sp)
   1125c:	3038                	fld	fa4,96(s0)
   1125e:	0a353437          	lui	s0,0xa353
   11262:	39303437          	lui	s0,0x39303
   11266:	0a31                	addi	s4,s4,12
   11268:	3734                	fld	fa3,104(a4)
   1126a:	3732                	fld	fa4,296(sp)
   1126c:	0a38                	addi	a4,sp,280
   1126e:	3135                	addiw	sp,sp,-19
   11270:	3635                	addiw	a2,a2,-19
   11272:	3335                	addiw	t1,t1,-19
   11274:	360a                	fld	fa2,160(sp)
   11276:	3239                	addiw	tp,tp,-18
   11278:	3236                	fld	ft4,360(sp)
   1127a:	0a32                	slli	s4,s4,0xc
   1127c:	3535                	addiw	a0,a0,-19
   1127e:	3430                	fld	fa2,104(s0)
   11280:	3030                	fld	fa2,96(s0)
   11282:	360a                	fld	fa2,160(sp)
   11284:	3431                	addiw	s0,s0,-20
   11286:	3435                	addiw	s0,s0,-19
   11288:	0a39                	addi	s4,s4,14
   1128a:	33333933          	0x33333933
   1128e:	3935                	addiw	s2,s2,-19
   11290:	340a                	fld	fs0,160(sp)
   11292:	3938                	fld	fa4,112(a0)
   11294:	3336                	fld	ft6,360(sp)
   11296:	0a36                	slli	s4,s4,0xd
   11298:	3736                	fld	fa4,360(sp)
   1129a:	3332                	fld	ft6,296(sp)
   1129c:	3932                	fld	fs2,296(sp)
   1129e:	360a                	fld	fa2,160(sp)
   112a0:	3636                	fld	fa2,360(sp)
   112a2:	3730                	fld	fa2,104(a4)
   112a4:	340a                	fld	fs0,160(sp)
   112a6:	34383737          	lui	a4,0x34383
   112aa:	33370a33          	0x33370a33
   112ae:	3432                	fld	fs0,296(sp)
   112b0:	3835                	addiw	a6,a6,-19
   112b2:	340a                	fld	fs0,160(sp)
   112b4:	3236                	fld	ft4,360(sp)
   112b6:	0a303437          	lui	s0,0xa303
   112ba:	3438                	fld	fa4,104(s0)
   112bc:	3830                	fld	fa2,112(s0)
   112be:	370a3937          	lui	s2,0x370a3
   112c2:	3238                	fld	fa4,96(a2)
   112c4:	3334                	fld	fa3,96(a4)
   112c6:	0a34                	addi	a3,sp,280
   112c8:	3036                	fld	ft0,360(sp)
   112ca:	3530                	fld	fa2,104(a0)
   112cc:	3236                	fld	ft4,360(sp)
   112ce:	370a                	fld	fa4,160(sp)
   112d0:	3031                	0x3031
   112d2:	3036                	fld	ft0,360(sp)
   112d4:	0a39                	addi	s4,s4,14
   112d6:	3634                	fld	fa3,104(a2)
   112d8:	3931                	addiw	s2,s2,-20
   112da:	3530                	fld	fa2,104(a0)
   112dc:	390a                	fld	fs2,160(sp)
   112de:	3638                	fld	fa4,104(a2)
   112e0:	3235                	addiw	tp,tp,-19
   112e2:	0a30                	addi	a2,sp,280
   112e4:	31313037          	lui	zero,0x31313
   112e8:	370a3833          	0x370a3833
   112ec:	3830                	fld	fa2,112(s0)
   112ee:	0a363637          	lui	a2,0xa363
   112f2:	30353533          	0x30353533
   112f6:	3239                	addiw	tp,tp,-18
   112f8:	350a                	fld	fa0,160(sp)
   112fa:	3435                	addiw	s0,s0,-19
   112fc:	3634                	fld	fa3,104(a2)
   112fe:	37360a37          	lui	s4,0x37360
   11302:	3935                	addiw	s2,s2,-19
   11304:	3736                	fld	fa4,360(sp)
   11306:	350a                	fld	fa0,160(sp)
   11308:	3939                	addiw	s2,s2,-18
   1130a:	0a333537          	lui	a0,0xa333
   1130e:	3435                	addiw	s0,s0,-19
   11310:	3932                	fld	fs2,296(sp)
   11312:	3739                	addiw	a4,a4,-18
   11314:	370a                	fld	fa4,160(sp)
   11316:	3631                	addiw	a2,a2,-20
   11318:	0a353233          	0xa353233
   1131c:	3034                	fld	fa3,96(s0)
   1131e:	37383337          	lui	t1,0x37383
   11322:	310a                	fld	ft2,160(sp)
   11324:	3431                	addiw	s0,s0,-20
   11326:	3539                	addiw	a0,a0,-18
   11328:	0a36                	slli	s4,s4,0xd
   1132a:	3338                	fld	fa4,96(a4)
   1132c:	3834                	fld	fa3,112(s0)
   1132e:	3138                	fld	fa4,96(a0)
   11330:	310a                	fld	ft2,160(sp)
   11332:	3332                	fld	ft6,296(sp)
   11334:	3635                	addiw	a2,a2,-19
   11336:	0a36                	slli	s4,s4,0xd
   11338:	3938                	fld	fa4,112(a0)
   1133a:	34383637          	lui	a2,0x34383
   1133e:	320a                	fld	ft4,160(sp)
   11340:	3132                	fld	ft2,296(sp)
   11342:	3036                	fld	ft0,360(sp)
   11344:	0a32                	slli	s4,s4,0xc
   11346:	31303033          	0x31303033
   1134a:	3835                	addiw	a6,a6,-19
   1134c:	340a                	fld	fs0,160(sp)
   1134e:	34373637          	lui	a2,0x34373
   11352:	0a31                	addi	s4,s4,12
   11354:	38333137          	lui	sp,0x38333
   11358:	0a39                	addi	s4,s4,14
   1135a:	3039                	0x3039
   1135c:	3738                	fld	fa4,104(a4)
   1135e:	3836                	fld	fa6,360(sp)
   11360:	330a                	fld	ft6,160(sp)
   11362:	3630                	fld	fa2,104(a2)
   11364:	3234                	fld	fa3,96(a2)
   11366:	0a38                	addi	a4,sp,280
   11368:	3738                	fld	fa4,104(a4)
   1136a:	0a323133          	0xa323133
   1136e:	3235                	addiw	tp,tp,-19
   11370:	3039                	0x3039
   11372:	330a3233          	0x330a3233
   11376:	3835                	addiw	a6,a6,-19
   11378:	380a3537          	lui	a0,0x380a3
   1137c:	3235                	addiw	tp,tp,-19
   1137e:	3530                	fld	fa2,104(a0)
   11380:	360a                	fld	fa2,160(sp)
   11382:	39323537          	lui	a0,0x39323
   11386:	0a39                	addi	s4,s4,14
   11388:	31313937          	lui	s2,0x31313
   1138c:	350a3633          	0x350a3633
   11390:	3039                	0x3039
   11392:	3639                	addiw	a2,a2,-18
   11394:	0a30                	addi	a2,sp,280
   11396:	3531                	addiw	a0,a0,-20
   11398:	3538                	fld	fa4,104(a0)
   1139a:	3539                	addiw	a0,a0,-18
   1139c:	380a                	fld	fa6,160(sp)
   1139e:	30313937          	lui	s2,0x30313
   113a2:	0a34                	addi	a3,sp,280
   113a4:	3939                	addiw	s2,s2,-18
   113a6:	3338                	fld	fa4,96(a4)
   113a8:	380a3533          	0x380a3533
   113ac:	37323233          	0x37323233
   113b0:	31330a37          	lui	s4,0x31330
   113b4:	0a383933          	0xa383933
   113b8:	3239                	addiw	tp,tp,-18
   113ba:	3232                	fld	ft4,296(sp)
   113bc:	350a3337          	lui	t1,0x350a3
   113c0:	36303637          	lui	a2,0x36303
   113c4:	0a36                	slli	s4,s4,0xd
   113c6:	3431                	addiw	s0,s0,-20
   113c8:	3834                	fld	fa3,112(s0)
   113ca:	3735                	addiw	a4,a4,-19
   113cc:	350a                	fld	fa0,160(sp)
   113ce:	32303133          	0x32303133
   113d2:	0a34                	addi	a3,sp,280
   113d4:	39353137          	lui	sp,0x39353
   113d8:	0a39                	addi	s4,s4,14
   113da:	3732                	fld	fa4,296(sp)
   113dc:	3334                	fld	fa3,96(a4)
   113de:	310a3633          	0x310a3633
   113e2:	3836                	fld	fa6,360(sp)
   113e4:	3538                	fld	fa4,104(a0)
   113e6:	36370a33          	0x36370a33
   113ea:	36353237          	lui	tp,0x36353
   113ee:	370a                	fld	fa4,160(sp)
   113f0:	38303237          	lui	tp,0x38303
   113f4:	0a32                	slli	s4,s4,0xc
   113f6:	3735                	addiw	a4,a4,-19
   113f8:	3839                	addiw	a6,a6,-18
   113fa:	3838                	fld	fa4,112(s0)
   113fc:	390a                	fld	fs2,160(sp)
   113fe:	35373033          	0x35373033
   11402:	0a30                	addi	a2,sp,280
   11404:	3838                	fld	fa4,112(s0)
   11406:	3830                	fld	fa2,112(s0)
   11408:	0a31                	addi	s4,s4,12
   1140a:	3638                	fld	fa4,104(a2)
   1140c:	3339                	addiw	t1,t1,-18
   1140e:	0a32                	slli	s4,s4,0xc
   11410:	3835                	addiw	a6,a6,-19
   11412:	32363337          	lui	t1,0x32363
   11416:	320a                	fld	ft4,160(sp)
   11418:	3539                	addiw	a0,a0,-18
   1141a:	3834                	fld	fa3,112(s0)
   1141c:	0a35                	addi	s4,s4,13
   1141e:	3935                	addiw	s2,s2,-19
   11420:	3339                	addiw	t1,t1,-18
   11422:	3631                	addiw	a2,a2,-20
   11424:	350a                	fld	fa0,160(sp)
   11426:	3331                	addiw	t1,t1,-20
   11428:	3334                	fld	fa3,96(a4)
   1142a:	350a                	fld	fa0,160(sp)
   1142c:	32343533          	0x32343533
   11430:	0a31                	addi	s4,s4,12
   11432:	3032                	fld	ft0,296(sp)
   11434:	3739                	addiw	a4,a4,-18
   11436:	3339                	addiw	t1,t1,-18
   11438:	310a                	fld	ft2,160(sp)
   1143a:	3034                	fld	fa3,96(s0)
   1143c:	3739                	addiw	a4,a4,-18
   1143e:	0a30                	addi	a2,sp,280
   11440:	3638                	fld	fa4,104(a2)
   11442:	3931                	addiw	s2,s2,-20
   11444:	3139                	addiw	sp,sp,-18
   11446:	340a                	fld	fs0,160(sp)
   11448:	3831                	addiw	a6,a6,-20
   1144a:	3031                	0x3031
   1144c:	0a30                	addi	a2,sp,280
   1144e:	3134                	fld	fa3,96(a0)
   11450:	3939                	addiw	s2,s2,-18
   11452:	3236                	fld	ft4,360(sp)
   11454:	380a                	fld	fa6,160(sp)
   11456:	37313833          	0x37313833
   1145a:	31370a37          	lui	s4,0x31370
   1145e:	3439                	addiw	s0,s0,-18
   11460:	3232                	fld	ft4,296(sp)
   11462:	390a                	fld	fs2,160(sp)
   11464:	37363737          	lui	a4,0x37363
   11468:	340a                	fld	fs0,160(sp)
   1146a:	3039                	0x3039
   1146c:	3931                	addiw	s2,s2,-20
   1146e:	0a35                	addi	s4,s4,13
   11470:	3031                	0x3031
   11472:	3134                	fld	fa3,96(a0)
   11474:	33320a37          	lui	s4,0x33320
   11478:	0a303837          	lui	a6,0xa303
   1147c:	3335                	addiw	t1,t1,-19
   1147e:	3132                	fld	ft2,296(sp)
   11480:	3635                	addiw	a2,a2,-19
   11482:	350a                	fld	fa0,160(sp)
   11484:	3439                	addiw	s0,s0,-18
   11486:	3831                	addiw	a6,a6,-20
   11488:	34380a33          	0x34380a33
   1148c:	3439                	addiw	s0,s0,-18
   1148e:	340a3037          	lui	zero,0x340a3
   11492:	3139                	addiw	sp,sp,-18
   11494:	3135                	addiw	sp,sp,-19
   11496:	380a                	fld	fa6,160(sp)
   11498:	3636                	fld	fa2,360(sp)
   1149a:	3834                	fld	fa3,112(s0)
   1149c:	0a36                	slli	s4,s4,0xd
   1149e:	30303433          	0x30303433
   114a2:	3939                	addiw	s2,s2,-18
   114a4:	310a                	fld	ft2,160(sp)
   114a6:	3835                	addiw	a6,a6,-19
   114a8:	3031                	0x3031
   114aa:	0a35                	addi	s4,s4,13
   114ac:	3136                	fld	ft2,360(sp)
   114ae:	3130                	fld	fa2,96(a0)
   114b0:	3339                	addiw	t1,t1,-18
   114b2:	310a                	fld	ft2,160(sp)
   114b4:	3339                	addiw	t1,t1,-18
   114b6:	3330                	fld	fa2,96(a4)
   114b8:	0a31                	addi	s4,s4,12
   114ba:	3332                	fld	ft6,296(sp)
   114bc:	3539                	addiw	a0,a0,-18
   114be:	0a34                	addi	a3,sp,280
   114c0:	33383433          	0x33383433
   114c4:	390a3633          	0x390a3633
   114c8:	3531                	addiw	a0,a0,-20
   114ca:	3634                	fld	fa3,104(a2)
   114cc:	0a30                	addi	a2,sp,280
   114ce:	3139                	addiw	sp,sp,-18
   114d0:	3335                	addiw	t1,t1,-19
   114d2:	3439                	addiw	s0,s0,-18
   114d4:	370a                	fld	fa4,160(sp)
   114d6:	3934                	fld	fa3,112(a0)
   114d8:	3234                	fld	fa3,96(a2)
   114da:	0a30                	addi	a2,sp,280
   114dc:	3731                	addiw	a4,a4,-20
   114de:	3536                	fld	fa0,360(sp)
   114e0:	3436                	fld	fs0,360(sp)
   114e2:	390a                	fld	fs2,160(sp)
   114e4:	38363337          	lui	t1,0x38363
   114e8:	0a35                	addi	s4,s4,13
   114ea:	3032                	fld	ft0,296(sp)
   114ec:	3138                	fld	fa4,96(a0)
   114ee:	3435                	addiw	s0,s0,-19
   114f0:	350a                	fld	fa0,160(sp)
   114f2:	3638                	fld	fa4,104(a2)
   114f4:	3538                	fld	fa4,104(a0)
   114f6:	0a38                	addi	a4,sp,280
   114f8:	3638                	fld	fa4,104(a2)
   114fa:	3534                	fld	fa3,104(a0)
   114fc:	3138                	fld	fa4,96(a0)
   114fe:	370a                	fld	fa4,160(sp)
   11500:	3931                	addiw	s2,s2,-20
   11502:	0a393433          	0xa393433
   11506:	3931                	addiw	s2,s2,-20
   11508:	3632                	fld	fa2,296(sp)
   1150a:	3832                	fld	fa6,296(sp)
   1150c:	360a                	fld	fa2,160(sp)
   1150e:	3536                	fld	fa0,360(sp)
   11510:	0a383537          	lui	a0,0xa383
   11514:	3434                	fld	fa3,104(s0)
   11516:	32303137          	lui	sp,0x32303
   1151a:	320a                	fld	ft4,160(sp)
   1151c:	32393233          	0x32393233
   11520:	0a36                	slli	s4,s4,0xd
   11522:	3035                	0x3035
   11524:	3732                	fld	fa4,296(sp)
   11526:	3530                	fld	fa2,104(a0)
   11528:	340a                	fld	fs0,160(sp)
   1152a:	3430                	fld	fa2,104(s0)
   1152c:	3138                	fld	fa4,96(a0)
   1152e:	0a30                	addi	a2,sp,280
   11530:	3739                	addiw	a4,a4,-18
   11532:	3630                	fld	fa2,104(a2)
   11534:	36390a33          	0x36390a33
   11538:	3439                	addiw	s0,s0,-18
   1153a:	3936                	fld	fs2,360(sp)
   1153c:	350a                	fld	fa0,160(sp)
   1153e:	30353537          	lui	a0,0x30353
   11542:	33390a37          	lui	s4,0x33390
   11546:	34343033          	0x34343033
   1154a:	330a                	fld	ft6,160(sp)
   1154c:	3831                	addiw	a6,a6,-20
   1154e:	3032                	fld	ft0,296(sp)
   11550:	0a39                	addi	s4,s4,14
   11552:	35383537          	lui	a0,0x35383
   11556:	3134                	fld	fa3,96(a0)
   11558:	330a                	fld	ft6,160(sp)
   1155a:	3331                	addiw	t1,t1,-20
   1155c:	3931                	addiw	s2,s2,-20
   1155e:	0a38                	addi	a4,sp,280
   11560:	3539                	addiw	a0,a0,-18
   11562:	3039                	0x3039
   11564:	3534                	fld	fa3,104(a0)
   11566:	380a                	fld	fa6,160(sp)
   11568:	3338                	fld	fa4,96(a4)
   1156a:	3134                	fld	fa3,96(a0)
   1156c:	0a39                	addi	s4,s4,14
   1156e:	36313437          	lui	s0,0x36313
   11572:	3438                	fld	fa4,104(s0)
   11574:	320a                	fld	ft4,160(sp)
   11576:	33353733          	0x33353733
   1157a:	0a30                	addi	a2,sp,280
   1157c:	3738                	fld	fa4,104(a4)
   1157e:	3135                	addiw	sp,sp,-19
   11580:	3834                	fld	fa3,112(s0)
   11582:	360a                	fld	fa2,160(sp)
   11584:	3236                	fld	ft4,360(sp)
   11586:	3935                	addiw	s2,s2,-19
   11588:	0a34                	addi	a3,sp,280
   1158a:	3931                	addiw	s2,s2,-20
   1158c:	3431                	addiw	s0,s0,-20
   1158e:	3730                	fld	fa2,104(a4)
   11590:	310a                	fld	ft2,160(sp)
   11592:	3539                	addiw	a0,a0,-18
   11594:	3836                	fld	fa6,360(sp)
   11596:	0a34                	addi	a3,sp,280
   11598:	3632                	fld	fa2,296(sp)
   1159a:	0a353037          	lui	zero,0xa353
   1159e:	3739                	addiw	a4,a4,-18
   115a0:	3532                	fld	fa0,296(sp)
   115a2:	3931                	addiw	s2,s2,-20
   115a4:	370a                	fld	fa4,160(sp)
   115a6:	3035                	0x3035
   115a8:	3439                	addiw	s0,s0,-18
   115aa:	0a34                	addi	a3,sp,280
   115ac:	3336                	fld	ft6,360(sp)
   115ae:	3230                	fld	fa2,96(a2)
   115b0:	3635                	addiw	a2,a2,-19
   115b2:	320a                	fld	ft4,160(sp)
   115b4:	3838                	fld	fa4,112(s0)
   115b6:	3536                	fld	fa0,360(sp)
   115b8:	0a36                	slli	s4,s4,0xd
   115ba:	3339                	addiw	t1,t1,-18
   115bc:	3932                	fld	fs2,296(sp)
   115be:	330a3533          	0x330a3533
   115c2:	3938                	fld	fa4,112(a0)
   115c4:	3330                	fld	fa2,96(a4)
   115c6:	0a34                	addi	a3,sp,280
   115c8:	3235                	addiw	tp,tp,-19
   115ca:	3330                	fld	fa2,96(a4)
   115cc:	3830                	fld	fa2,112(s0)
   115ce:	350a                	fld	fa0,160(sp)
   115d0:	3635                	addiw	a2,a2,-19
   115d2:	3334                	fld	fa3,96(a4)
   115d4:	0a38                	addi	a4,sp,280
   115d6:	3834                	fld	fa3,112(s0)
   115d8:	33313933          	0x33313933
   115dc:	360a                	fld	fa2,160(sp)
   115de:	3035                	0x3035
   115e0:	3932                	fld	fs2,296(sp)
   115e2:	0a34                	addi	a3,sp,280
   115e4:	3531                	addiw	a0,a0,-20
   115e6:	3138                	fld	fa4,96(a0)
   115e8:	3436                	fld	fs0,360(sp)
   115ea:	310a                	fld	ft2,160(sp)
   115ec:	3330                	fld	fa2,96(a4)
   115ee:	0a333933          	0xa333933
   115f2:	32303937          	lui	s2,0x32303
   115f6:	3232                	fld	ft4,296(sp)
   115f8:	340a                	fld	fs0,160(sp)
   115fa:	3038                	fld	fa4,96(s0)
   115fc:	3031                	0x3031
   115fe:	36310a33          	0x36310a33
   11602:	3530                	fld	fa2,104(a0)
   11604:	3938                	fld	fa4,112(a0)
   11606:	340a                	fld	fs0,160(sp)
   11608:	30353837          	lui	a6,0x30353
   1160c:	0a34                	addi	a3,sp,280
   1160e:	3438                	fld	fa4,104(s0)
   11610:	3739                	addiw	a4,a4,-18
   11612:	3235                	addiw	tp,tp,-19
   11614:	350a                	fld	fa0,160(sp)
   11616:	3236                	fld	ft4,360(sp)
   11618:	3636                	fld	fa2,360(sp)
   1161a:	0a39                	addi	s4,s4,14
   1161c:	30323037          	lui	zero,0x30323
   11620:	0a36                	slli	s4,s4,0xd
   11622:	3635                	addiw	a2,a2,-19
   11624:	3735                	addiw	a4,a4,-19
   11626:	3732                	fld	fa4,296(sp)
   11628:	310a                	fld	ft2,160(sp)
   1162a:	3931                	addiw	s2,s2,-20
   1162c:	3338                	fld	fa4,96(a4)
   1162e:	0a36                	slli	s4,s4,0xd
   11630:	37373937          	lui	s2,0x37373
   11634:	3239                	addiw	tp,tp,-18
   11636:	370a                	fld	fa4,160(sp)
   11638:	3738                	fld	fa4,104(a4)
   1163a:	3034                	fld	fa3,96(s0)
   1163c:	0a31                	addi	s4,s4,12
   1163e:	3139                	addiw	sp,sp,-18
   11640:	3031                	0x3031
   11642:	3139                	addiw	sp,sp,-18
   11644:	360a                	fld	fa2,160(sp)
   11646:	3935                	addiw	s2,s2,-19
   11648:	3139                	addiw	sp,sp,-18
   1164a:	32340a33          	0x32340a33
   1164e:	3239                	addiw	tp,tp,-18
   11650:	390a3033          	0x390a3033
   11654:	3832                	fld	fa6,296(sp)
   11656:	3031                	0x3031
   11658:	0a30                	addi	a2,sp,280
   1165a:	3235                	addiw	tp,tp,-19
   1165c:	3836                	fld	fa6,360(sp)
   1165e:	3730                	fld	fa2,104(a4)
   11660:	320a                	fld	ft4,160(sp)
   11662:	3232                	fld	ft4,296(sp)
   11664:	3032                	fld	ft0,296(sp)
   11666:	370a                	fld	fa4,160(sp)
   11668:	3639                	addiw	a2,a2,-18
   1166a:	0a39                	addi	s4,s4,14
   1166c:	30333133          	0x30333133
   11670:	3538                	fld	fa4,104(a0)
   11672:	380a                	fld	fa6,160(sp)
   11674:	3338                	fld	fa4,96(a4)
   11676:	3030                	fld	fa2,96(s0)
   11678:	34360a33          	0x34360a33
   1167c:	3639                	addiw	a2,a2,-18
   1167e:	3431                	addiw	s0,s0,-20
   11680:	360a                	fld	fa2,160(sp)
   11682:	39313833          	0x39313833
   11686:	0a34                	addi	a3,sp,280
   11688:	3839                	addiw	a6,a6,-18
   1168a:	37313837          	lui	a6,0x37313
   1168e:	310a                	fld	ft2,160(sp)
   11690:	3531                	addiw	a0,a0,-20
   11692:	340a3837          	lui	a6,0x340a3
   11696:	3432                	fld	fs0,296(sp)
   11698:	3730                	fld	fa2,104(a4)
   1169a:	0a32                	slli	s4,s4,0xc
   1169c:	3932                	fld	fs2,296(sp)
   1169e:	3934                	fld	fa3,112(a0)
   116a0:	3535                	addiw	a0,a0,-19
   116a2:	370a                	fld	fa4,160(sp)
   116a4:	3930                	fld	fa2,112(a0)
   116a6:	0a333333          	0xa333333
   116aa:	3536                	fld	fa0,360(sp)
   116ac:	0a363037          	lui	zero,0xa363
   116b0:	33353033          	0x33353033
   116b4:	3335                	addiw	t1,t1,-19
   116b6:	320a                	fld	ft4,160(sp)
   116b8:	34323133          	0x34323133
   116bc:	38350a33          	0x38350a33
   116c0:	3030                	fld	fa2,96(s0)
   116c2:	320a3233          	0x320a3233
   116c6:	3031                	0x3031
   116c8:	3738                	fld	fa4,104(a4)
   116ca:	340a                	fld	fs0,160(sp)
   116cc:	3436                	fld	fs0,360(sp)
   116ce:	350a3137          	lui	sp,0x350a3
   116d2:	3838                	fld	fa4,112(s0)
   116d4:	3139                	addiw	sp,sp,-18
   116d6:	320a                	fld	ft4,160(sp)
   116d8:	3534                	fld	fa3,104(a0)
   116da:	0a303933          	0xa303933
   116de:	3732                	fld	fa4,296(sp)
   116e0:	3339                	addiw	t1,t1,-18
   116e2:	3330                	fld	fa2,96(a4)
   116e4:	330a                	fld	ft6,160(sp)
   116e6:	3538                	fld	fa4,104(a0)
   116e8:	3630                	fld	fa2,104(a2)
   116ea:	0a30                	addi	a2,sp,280
   116ec:	3436                	fld	fs0,360(sp)
   116ee:	3834                	fld	fa3,112(s0)
   116f0:	3539                	addiw	a0,a0,-18
   116f2:	330a                	fld	ft6,160(sp)
   116f4:	3430                	fld	fa2,104(s0)
   116f6:	3838                	fld	fa4,112(s0)
   116f8:	34310a33          	0x34310a33
   116fc:	3739                	addiw	a4,a4,-18
   116fe:	3830                	fld	fa2,112(s0)
   11700:	310a                	fld	ft2,160(sp)
   11702:	3330                	fld	fa2,96(a4)
   11704:	3531                	addiw	a0,a0,-20
   11706:	38340a37          	lui	s4,0x38340
   1170a:	0a323637          	lui	a2,0xa323
   1170e:	3738                	fld	fa4,104(a4)
   11710:	3635                	addiw	a2,a2,-19
   11712:	3030                	fld	fa2,96(s0)
   11714:	320a                	fld	ft4,160(sp)
   11716:	35323237          	lui	tp,0x35323
   1171a:	0a36                	slli	s4,s4,0xd
   1171c:	3036                	fld	ft0,360(sp)
   1171e:	3438                	fld	fa4,104(s0)
   11720:	330a3833          	0x330a3833
   11724:	3130                	fld	fa2,96(a0)
   11726:	3839                	addiw	a6,a6,-18
   11728:	0a31                	addi	s4,s4,12
   1172a:	3232                	fld	ft4,296(sp)
   1172c:	33353933          	0x33353933
   11730:	370a                	fld	fa4,160(sp)
   11732:	3832                	fld	fa6,296(sp)
   11734:	3330                	fld	fa2,96(a4)
   11736:	0a32                	slli	s4,s4,0xc
   11738:	3035                	0x3035
   1173a:	30373133          	0x30373133
   1173e:	330a                	fld	ft6,160(sp)
   11740:	3735                	addiw	a4,a4,-19
   11742:	3334                	fld	fa3,96(a4)
   11744:	33380a37          	lui	s4,0x33380
   11748:	3239                	addiw	tp,tp,-18
   1174a:	360a3837          	lui	a6,0x360a3
   1174e:	3834                	fld	fa3,112(s0)
   11750:	310a3737          	lui	a4,0x310a3
   11754:	37333437          	lui	s0,0x37333
   11758:	320a                	fld	ft4,160(sp)
   1175a:	39363737          	lui	a4,0x39363
   1175e:	0a39                	addi	s4,s4,14
   11760:	32353437          	lui	s0,0x32353
   11764:	3932                	fld	fs2,296(sp)
   11766:	390a                	fld	fs2,160(sp)
   11768:	3431                	addiw	s0,s0,-20
   1176a:	3836                	fld	fa6,360(sp)
   1176c:	0a30                	addi	a2,sp,280
   1176e:	3038                	fld	fa4,96(s0)
   11770:	3430                	fld	fa2,104(s0)
   11772:	3334                	fld	fa3,96(a4)
   11774:	340a                	fld	fs0,160(sp)
   11776:	3838                	fld	fa4,112(s0)
   11778:	3930                	fld	fa2,112(a0)
   1177a:	0a32                	slli	s4,s4,0xc
   1177c:	38383833          	0x38383833
   11780:	3936                	fld	fs2,360(sp)
   11782:	320a                	fld	ft4,160(sp)
   11784:	3035                	0x3035
   11786:	3232                	fld	ft4,296(sp)
   11788:	38370a37          	lui	s4,0x38370
   1178c:	33333433          	0x33333433
   11790:	390a                	fld	fs2,160(sp)
   11792:	3639                	addiw	a2,a2,-18
   11794:	3136                	fld	ft2,360(sp)
   11796:	0a32                	slli	s4,s4,0xc
   11798:	3936                	fld	fs2,360(sp)
   1179a:	3932                	fld	fs2,296(sp)
   1179c:	380a3737          	lui	a4,0x380a3
   117a0:	3938                	fld	fa4,112(a0)
   117a2:	3732                	fld	fa4,296(sp)
   117a4:	0a36                	slli	s4,s4,0xd
   117a6:	3431                	addiw	s0,s0,-20
   117a8:	3634                	fld	fa3,104(a2)
   117aa:	3839                	addiw	a6,a6,-18
   117ac:	330a                	fld	ft6,160(sp)
   117ae:	3334                	fld	fa3,96(a4)
   117b0:	3435                	addiw	s0,s0,-19
   117b2:	330a                	fld	ft6,160(sp)
   117b4:	3634                	fld	fa3,104(a2)
   117b6:	3535                	addiw	a0,a0,-19
   117b8:	38320a33          	0x38320a33
   117bc:	3231                	addiw	tp,tp,-20
   117be:	0a30                	addi	a2,sp,280
   117c0:	3032                	fld	ft0,296(sp)
   117c2:	3134                	fld	fa3,96(a0)
   117c4:	3936                	fld	fs2,360(sp)
   117c6:	320a                	fld	ft4,160(sp)
   117c8:	3235                	addiw	tp,tp,-19
   117ca:	3634                	fld	fa3,104(a2)
   117cc:	33360a33          	0x33360a33
   117d0:	39353937          	lui	s2,0x39353
   117d4:	370a                	fld	fa4,160(sp)
   117d6:	32323933          	0x32323933
   117da:	0a36                	slli	s4,s4,0xd
   117dc:	3934                	fld	fa3,112(a0)
   117de:	3231                	addiw	tp,tp,-20
   117e0:	3931                	addiw	s2,s2,-20
   117e2:	320a                	fld	ft4,160(sp)
   117e4:	3431                	addiw	s0,s0,-20
   117e6:	3036                	fld	ft0,360(sp)
   117e8:	36340a37          	lui	s4,0x36340
   117ec:	3632                	fld	fa2,296(sp)
   117ee:	3632                	fld	fa2,296(sp)
   117f0:	310a                	fld	ft2,160(sp)
   117f2:	3338                	fld	fa4,96(a4)
   117f4:	3439                	addiw	s0,s0,-18
   117f6:	350a                	fld	fa0,160(sp)
   117f8:	3639                	addiw	a2,a2,-18
   117fa:	0a383633          	0xa383633
   117fe:	31333733          	0x31333733
   11802:	3432                	fld	fs0,296(sp)
   11804:	330a                	fld	ft6,160(sp)
   11806:	3030                	fld	fa2,96(s0)
   11808:	3030                	fld	fa2,96(s0)
   1180a:	0a36                	slli	s4,s4,0xd
   1180c:	3434                	fld	fa3,104(s0)
   1180e:	3332                	fld	ft6,296(sp)
   11810:	3735                	addiw	a4,a4,-19
   11812:	370a                	fld	fa4,160(sp)
   11814:	3335                	addiw	t1,t1,-19
   11816:	3039                	0x3039
   11818:	0a39                	addi	s4,s4,14
   1181a:	32363337          	lui	t1,0x32363
   1181e:	3235                	addiw	tp,tp,-19
   11820:	390a                	fld	fs2,160(sp)
   11822:	3931                	addiw	s2,s2,-20
   11824:	3639                	addiw	a2,a2,-18
   11826:	0a38                	addi	a4,sp,280
   11828:	3836                	fld	fa6,360(sp)
   1182a:	3538                	fld	fa4,104(a0)
   1182c:	3336                	fld	ft6,360(sp)
   1182e:	340a                	fld	fs0,160(sp)
   11830:	3236                	fld	ft4,360(sp)
   11832:	3136                	fld	ft2,360(sp)
   11834:	0a34                	addi	a3,sp,280
   11836:	3331                	addiw	t1,t1,-20
   11838:	3338                	fld	fa4,96(a4)
   1183a:	3432                	fld	fs0,296(sp)
   1183c:	360a                	fld	fa2,160(sp)
   1183e:	31353137          	lui	sp,0x31353
   11842:	0a34                	addi	a3,sp,280
   11844:	3735                	addiw	a4,a4,-19
   11846:	37383433          	0x37383433
   1184a:	330a                	fld	ft6,160(sp)
   1184c:	3338                	fld	fa4,96(a4)
   1184e:	3536                	fld	fa0,360(sp)
   11850:	0a31                	addi	s4,s4,12
   11852:	3536                	fld	fa0,360(sp)
   11854:	3335                	addiw	t1,t1,-19
   11856:	3938                	fld	fa4,112(a0)
   11858:	370a                	fld	fa4,160(sp)
   1185a:	30353337          	lui	t1,0x30353
   1185e:	33350a33          	0x33350a33
   11862:	3939                	addiw	s2,s2,-18
   11864:	3738                	fld	fa4,104(a4)
   11866:	330a                	fld	ft6,160(sp)
   11868:	34343637          	lui	a2,0x34343
   1186c:	0a39                	addi	s4,s4,14
   1186e:	3036                	fld	ft0,360(sp)
   11870:	3234                	fld	fa3,96(a2)
   11872:	3230                	fld	fa2,96(a2)
   11874:	320a                	fld	ft4,160(sp)
   11876:	3431                	addiw	s0,s0,-20
   11878:	3931                	addiw	s2,s2,-20
   1187a:	0a35                	addi	s4,s4,13
   1187c:	3634                	fld	fa3,104(a2)
   1187e:	39313633          	0x39313633
   11882:	380a                	fld	fa6,160(sp)
   11884:	34383133          	0x34383133
   11888:	0a35                	addi	s4,s4,13
   1188a:	3536                	fld	fa0,360(sp)
   1188c:	31343437          	lui	s0,0x31343
   11890:	310a                	fld	ft2,160(sp)
   11892:	3032                	fld	ft0,296(sp)
   11894:	3735                	addiw	a4,a4,-19
   11896:	0a34                	addi	a3,sp,280
   11898:	39333837          	lui	a6,0x39333
   1189c:	3732                	fld	fa4,296(sp)
   1189e:	390a                	fld	fs2,160(sp)
   118a0:	3735                	addiw	a4,a4,-19
   118a2:	3538                	fld	fa4,104(a0)
   118a4:	320a                	fld	ft4,160(sp)
   118a6:	36323237          	lui	tp,0x36323
   118aa:	310a                	fld	ft2,160(sp)
   118ac:	33323633          	0x33323633
   118b0:	0a36                	slli	s4,s4,0xd
   118b2:	3231                	addiw	tp,tp,-20
   118b4:	3538                	fld	fa4,104(a0)
   118b6:	310a3837          	lui	a6,0x310a3
   118ba:	35373737          	lui	a4,0x35373
   118be:	0a32                	slli	s4,s4,0xc
   118c0:	3139                	addiw	sp,sp,-18
   118c2:	3530                	fld	fa2,104(a0)
   118c4:	32360a33          	0x32360a33
   118c8:	3030                	fld	fa2,96(s0)
   118ca:	350a3133          	0x350a3133
   118ce:	3634                	fld	fa3,104(a2)
   118d0:	0a333437          	lui	s0,0xa333
   118d4:	3335                	addiw	t1,t1,-19
   118d6:	3332                	fld	ft6,296(sp)
   118d8:	3532                	fld	fa0,296(sp)
   118da:	320a                	fld	ft4,160(sp)
   118dc:	3435                	addiw	s0,s0,-19
   118de:	3036                	fld	ft0,360(sp)
   118e0:	37310a33          	0x37310a33
   118e4:	3939                	addiw	s2,s2,-18
   118e6:	3336                	fld	ft6,360(sp)
   118e8:	320a                	fld	ft4,160(sp)
   118ea:	3931                	addiw	s2,s2,-20
   118ec:	0a36                	slli	s4,s4,0xd
   118ee:	3135                	addiw	sp,sp,-19
   118f0:	3330                	fld	fa2,96(a4)
   118f2:	340a3537          	lui	a0,0x340a3
   118f6:	3136                	fld	ft2,360(sp)
   118f8:	3939                	addiw	s2,s2,-18
   118fa:	0a34                	addi	a3,sp,280
   118fc:	3235                	addiw	tp,tp,-19
   118fe:	3434                	fld	fa3,104(s0)
   11900:	3731                	addiw	a4,a4,-20
   11902:	370a                	fld	fa4,160(sp)
   11904:	3539                	addiw	a0,a0,-18
   11906:	3736                	fld	fa4,360(sp)
   11908:	0a36                	slli	s4,s4,0xd
   1190a:	3436                	fld	fs0,360(sp)
   1190c:	3539                	addiw	a0,a0,-18
   1190e:	350a3533          	0x350a3533
   11912:	3338                	fld	fa4,96(a4)
   11914:	3630                	fld	fa2,104(a2)
   11916:	0a34                	addi	a3,sp,280
   11918:	3439                	addiw	s0,s0,-18
   1191a:	3732                	fld	fa4,296(sp)
   1191c:	3436                	fld	fs0,360(sp)
   1191e:	310a                	fld	ft2,160(sp)
   11920:	3539                	addiw	a0,a0,-18
   11922:	0a383433          	0xa383433
   11926:	3734                	fld	fa3,104(a4)
   11928:	3832                	fld	fa6,296(sp)
   1192a:	3439                	addiw	s0,s0,-18
   1192c:	390a                	fld	fs2,160(sp)
   1192e:	32323333          	0x32323333
   11932:	0a32                	slli	s4,s4,0xc
   11934:	3839                	addiw	a6,a6,-18
   11936:	3834                	fld	fa3,112(s0)
   11938:	3834                	fld	fa3,112(s0)
   1193a:	350a                	fld	fa0,160(sp)
   1193c:	37353533          	0x37353533
   11940:	38360a37          	lui	s4,0x38360
   11944:	3035                	0x3035
   11946:	3438                	fld	fa4,104(s0)
   11948:	370a                	fld	fa4,160(sp)
   1194a:	3531                	addiw	a0,a0,-20
   1194c:	3732                	fld	fa4,296(sp)
   1194e:	0a34                	addi	a3,sp,280
   11950:	3231                	addiw	tp,tp,-20
   11952:	3032                	fld	ft0,296(sp)
   11954:	3639                	addiw	a2,a2,-18
   11956:	340a                	fld	fs0,160(sp)
   11958:	3831                	addiw	a6,a6,-20
   1195a:	3634                	fld	fa3,104(a2)
   1195c:	0a31                	addi	s4,s4,12
   1195e:	30343633          	0x30343633
   11962:	3938                	fld	fa4,112(a0)
   11964:	390a                	fld	fs2,160(sp)
   11966:	3531                	addiw	a0,a0,-20
   11968:	3231                	addiw	tp,tp,-20
   1196a:	0a38                	addi	a4,sp,280
   1196c:	37323933          	0x37323933
   11970:	330a3733          	0x330a3733
   11974:	3131                	addiw	sp,sp,-20
   11976:	0a363733          	0xa363733
   1197a:	3435                	addiw	s0,s0,-19
   1197c:	3436                	fld	fs0,360(sp)
   1197e:	0a34                	addi	a3,sp,280
   11980:	3132                	fld	ft2,296(sp)
   11982:	34393737          	lui	a4,0x34393
   11986:	320a                	fld	ft4,160(sp)
   11988:	3635                	addiw	a2,a2,-19
   1198a:	3136                	fld	ft2,360(sp)
   1198c:	32390a37          	lui	s4,0x32390
   11990:	3532                	fld	fa0,296(sp)
   11992:	3330                	fld	fa2,96(a4)
   11994:	320a                	fld	ft4,160(sp)
   11996:	3830                	fld	fa2,112(s0)
   11998:	0a303037          	lui	zero,0xa303
   1199c:	3536                	fld	fa0,360(sp)
   1199e:	3435                	addiw	s0,s0,-19
   119a0:	3035                	0x3035
   119a2:	390a                	fld	fs2,160(sp)
   119a4:	3032                	fld	ft0,296(sp)
   119a6:	3234                	fld	fa3,96(a2)
   119a8:	390a                	fld	fs2,160(sp)
   119aa:	3636                	fld	fa2,360(sp)
   119ac:	3630                	fld	fa2,104(a2)
   119ae:	0a39                	addi	s4,s4,14
   119b0:	3131                	addiw	sp,sp,-20
   119b2:	3231                	addiw	tp,tp,-20
   119b4:	3234                	fld	fa3,96(a2)
   119b6:	360a                	fld	fa2,160(sp)
   119b8:	3738                	fld	fa4,104(a4)
   119ba:	0a343437          	lui	s0,0xa343
   119be:	3035                	0x3035
   119c0:	3338                	fld	fa4,96(a4)
   119c2:	3734                	fld	fa3,104(a4)
   119c4:	360a                	fld	fa2,160(sp)
   119c6:	3939                	addiw	s2,s2,-18
   119c8:	3032                	fld	ft0,296(sp)
   119ca:	0a38                	addi	a4,sp,280
   119cc:	33363537          	lui	a0,0x33363
   119d0:	3131                	addiw	sp,sp,-20
   119d2:	360a                	fld	fa2,160(sp)
   119d4:	3930                	fld	fa2,112(a0)
   119d6:	3631                	addiw	a2,a2,-20
   119d8:	0a34                	addi	a3,sp,280
   119da:	3032                	fld	ft0,296(sp)
   119dc:	3236                	fld	ft4,360(sp)
   119de:	3234                	fld	fa3,96(a2)
   119e0:	380a                	fld	fa6,160(sp)
   119e2:	31373237          	lui	tp,0x31373
   119e6:	0a36                	slli	s4,s4,0xd
   119e8:	36363433          	0x36363433
   119ec:	3035                	0x3035
   119ee:	350a                	fld	fa0,160(sp)
   119f0:	3635                	addiw	a2,a2,-19
   119f2:	0a343537          	lui	a0,0xa343
   119f6:	35393137          	lui	sp,0x35393
   119fa:	3635                	addiw	a2,a2,-19
   119fc:	350a                	fld	fa0,160(sp)
   119fe:	37373033          	0x37373033
   11a02:	0a32                	slli	s4,s4,0xc
   11a04:	3635                	addiw	a2,a2,-19
   11a06:	3535                	addiw	a0,a0,-19
   11a08:	3939                	addiw	s2,s2,-18
   11a0a:	390a                	fld	fs2,160(sp)
   11a0c:	3236                	fld	ft4,360(sp)
   11a0e:	3039                	0x3039
   11a10:	34360a37          	lui	s4,0x34360
   11a14:	0a383233          	0xa383233
   11a18:	35393137          	lui	sp,0x35393
   11a1c:	3530                	fld	fa2,104(a0)
   11a1e:	390a                	fld	fs2,160(sp)
   11a20:	3034                	fld	fa3,96(s0)
   11a22:	3530                	fld	fa2,104(a0)
   11a24:	0a34                	addi	a3,sp,280
   11a26:	34323233          	0x34323233
   11a2a:	3335                	addiw	t1,t1,-19
   11a2c:	320a                	fld	ft4,160(sp)
   11a2e:	3239                	addiw	tp,tp,-18
   11a30:	3439                	addiw	s0,s0,-18
   11a32:	0a31                	addi	s4,s4,12
   11a34:	3632                	fld	fa2,296(sp)
   11a36:	3134                	fld	fa3,96(a0)
   11a38:	3834                	fld	fa3,112(s0)
   11a3a:	330a                	fld	ft6,160(sp)
   11a3c:	3934                	fld	fa3,112(a0)
   11a3e:	3335                	addiw	t1,t1,-19
   11a40:	36340a33          	0x36340a33
   11a44:	3734                	fld	fa3,104(a4)
   11a46:	370a3137          	lui	sp,0x370a3
   11a4a:	3435                	addiw	s0,s0,-19
   11a4c:	3135                	addiw	sp,sp,-19
   11a4e:	0a31                	addi	s4,s4,12
   11a50:	3631                	addiw	a2,a2,-20
   11a52:	3439                	addiw	s0,s0,-18
   11a54:	3930                	fld	fa2,112(a0)
   11a56:	350a                	fld	fa0,160(sp)
   11a58:	3734                	fld	fa3,104(a4)
   11a5a:	3536                	fld	fa0,360(sp)
   11a5c:	0a31                	addi	s4,s4,12
   11a5e:	3036                	fld	ft0,360(sp)
   11a60:	3031                	0x3031
   11a62:	3331                	addiw	t1,t1,-20
   11a64:	350a                	fld	fa0,160(sp)
   11a66:	3730                	fld	fa2,104(a4)
   11a68:	3331                	addiw	t1,t1,-20
   11a6a:	390a                	fld	fs2,160(sp)
   11a6c:	3439                	addiw	s0,s0,-18
   11a6e:	3536                	fld	fa0,360(sp)
   11a70:	0a31                	addi	s4,s4,12
   11a72:	3136                	fld	ft2,360(sp)
   11a74:	3332                	fld	ft6,296(sp)
   11a76:	3730                	fld	fa2,104(a4)
   11a78:	310a                	fld	ft2,160(sp)
   11a7a:	3235                	addiw	tp,tp,-19
   11a7c:	3030                	fld	fa2,96(s0)
   11a7e:	39340a37          	lui	s4,0x39340
   11a82:	37343637          	lui	a2,0x37343
   11a86:	330a                	fld	ft6,160(sp)
   11a88:	3231                	addiw	tp,tp,-20
   11a8a:	3635                	addiw	a2,a2,-19
   11a8c:	0a30                	addi	a2,sp,280
   11a8e:	3534                	fld	fa3,104(a0)
   11a90:	36393833          	0x36393833
   11a94:	370a                	fld	fa4,160(sp)
   11a96:	3332                	fld	ft6,296(sp)
   11a98:	3538                	fld	fa4,104(a0)
   11a9a:	0a39                	addi	s4,s4,14
   11a9c:	3735                	addiw	a4,a4,-19
   11a9e:	3730                	fld	fa2,104(a4)
   11aa0:	3438                	fld	fa4,104(s0)
   11aa2:	340a                	fld	fs0,160(sp)
   11aa4:	3638                	fld	fa4,104(a2)
   11aa6:	3736                	fld	fa4,360(sp)
   11aa8:	0a32                	slli	s4,s4,0xc
   11aaa:	31353637          	lui	a2,0x31353
   11aae:	3138                	fld	fa4,96(a0)
   11ab0:	380a                	fld	fa6,160(sp)
   11ab2:	3530                	fld	fa2,104(a0)
   11ab4:	3330                	fld	fa2,96(a4)
   11ab6:	38350a33          	0x38350a33
   11aba:	38333537          	lui	a0,0x38333
   11abe:	370a                	fld	fa4,160(sp)
   11ac0:	3038                	fld	fa4,96(s0)
   11ac2:	0a313437          	lui	s0,0xa313
   11ac6:	3438                	fld	fa4,104(s0)
   11ac8:	3634                	fld	fa3,104(a2)
   11aca:	3134                	fld	fa3,96(a0)
   11acc:	330a                	fld	ft6,160(sp)
   11ace:	32343133          	0x32343133
   11ad2:	0a39                	addi	s4,s4,14
   11ad4:	3935                	addiw	s2,s2,-19
   11ad6:	3236                	fld	ft4,360(sp)
   11ad8:	3236                	fld	ft4,360(sp)
   11ada:	370a                	fld	fa4,160(sp)
   11adc:	37343633          	0x37343633
   11ae0:	0a35                	addi	s4,s4,13
   11ae2:	3936                	fld	fs2,360(sp)
   11ae4:	3734                	fld	fa3,104(a4)
   11ae6:	0a34                	addi	a3,sp,280
   11ae8:	3038                	fld	fa4,96(s0)
   11aea:	3236                	fld	ft4,360(sp)
   11aec:	0a38                	addi	a4,sp,280
   11aee:	3935                	addiw	s2,s2,-19
   11af0:	3635                	addiw	a2,a2,-19
   11af2:	3439                	addiw	s0,s0,-18
   11af4:	310a                	fld	ft2,160(sp)
   11af6:	3436                	fld	fs0,360(sp)
   11af8:	3634                	fld	fa3,104(a2)
   11afa:	36310a33          	0x36310a33
   11afe:	3131                	addiw	sp,sp,-20
   11b00:	3936                	fld	fs2,360(sp)
   11b02:	390a                	fld	fs2,160(sp)
   11b04:	34393537          	lui	a0,0x34393
   11b08:	0a32                	slli	s4,s4,0xc
   11b0a:	37353833          	0x37353833
   11b0e:	3538                	fld	fa4,104(a0)
   11b10:	330a                	fld	ft6,160(sp)
   11b12:	32383333          	0x32383333
   11b16:	0a38                	addi	a4,sp,280
   11b18:	3434                	fld	fa3,104(s0)
   11b1a:	3835                	addiw	a6,a6,-19
   11b1c:	3438                	fld	fa4,104(s0)
   11b1e:	370a                	fld	fa4,160(sp)
   11b20:	35333233          	0x35333233
   11b24:	0a36                	slli	s4,s4,0xd
   11b26:	3134                	fld	fa3,96(a0)
   11b28:	3532                	fld	fa0,296(sp)
   11b2a:	3130                	fld	fa2,96(a0)
   11b2c:	330a                	fld	ft6,160(sp)
   11b2e:	3836                	fld	fa6,360(sp)
   11b30:	3938                	fld	fa4,112(a0)
   11b32:	0a32                	slli	s4,s4,0xc
   11b34:	38373333          	0x38373333
   11b38:	3730                	fld	fa2,104(a4)
   11b3a:	310a                	fld	ft2,160(sp)
   11b3c:	3439                	addiw	s0,s0,-18
   11b3e:	3838                	fld	fa4,112(s0)
   11b40:	310a                	fld	ft2,160(sp)
   11b42:	3831                	addiw	a6,a6,-20
   11b44:	3035                	0x3035
   11b46:	37360a37          	lui	s4,0x37360
   11b4a:	36333937          	lui	s2,0x36333
   11b4e:	320a                	fld	ft4,160(sp)
   11b50:	3939                	addiw	s2,s2,-18
   11b52:	0a323037          	lui	zero,0xa323
   11b56:	3336                	fld	ft6,360(sp)
   11b58:	3234                	fld	fa3,96(a2)
   11b5a:	390a3337          	lui	t1,0x390a3
   11b5e:	3638                	fld	fa4,104(a2)
   11b60:	340a3733          	0x340a3733
   11b64:	3832                	fld	fa6,296(sp)
   11b66:	3031                	0x3031
   11b68:	0a35                	addi	s4,s4,13
   11b6a:	3634                	fld	fa3,104(a2)
   11b6c:	3031                	0x3031
   11b6e:	3435                	addiw	s0,s0,-19
   11b70:	370a                	fld	fa4,160(sp)
   11b72:	3335                	addiw	t1,t1,-19
   11b74:	3638                	fld	fa4,104(a2)
   11b76:	30390a33          	0x30390a33
   11b7a:	3039                	0x3039
   11b7c:	3435                	addiw	s0,s0,-19
   11b7e:	330a                	fld	ft6,160(sp)
   11b80:	3634                	fld	fa3,104(a2)
   11b82:	0a333937          	lui	s2,0xa333
   11b86:	3638                	fld	fa4,104(a2)
   11b88:	3038                	fld	fa4,96(s0)
   11b8a:	3538                	fld	fa4,104(a0)
   11b8c:	340a                	fld	fs0,160(sp)
   11b8e:	3335                	addiw	t1,t1,-19
   11b90:	3436                	fld	fs0,360(sp)
   11b92:	0a30                	addi	a2,sp,280
   11b94:	3034                	fld	fa3,96(s0)
   11b96:	3136                	fld	ft2,360(sp)
   11b98:	3939                	addiw	s2,s2,-18
   11b9a:	320a                	fld	ft4,160(sp)
   11b9c:	3634                	fld	fa3,104(a2)
   11b9e:	3132                	fld	ft2,296(sp)
   11ba0:	0a34                	addi	a3,sp,280
   11ba2:	3035                	0x3035
   11ba4:	3234                	fld	fa3,96(a2)
   11ba6:	3730                	fld	fa2,104(a4)
   11ba8:	390a                	fld	fs2,160(sp)
   11baa:	3535                	addiw	a0,a0,-19
   11bac:	3835                	addiw	a6,a6,-19
   11bae:	0a31                	addi	s4,s4,12
   11bb0:	3631                	addiw	a2,a2,-20
   11bb2:	3239                	addiw	tp,tp,-18
   11bb4:	3535                	addiw	a0,a0,-19
   11bb6:	330a                	fld	ft6,160(sp)
   11bb8:	3636                	fld	fa2,360(sp)
   11bba:	3135                	addiw	sp,sp,-19
   11bbc:	0a31                	addi	s4,s4,12
   11bbe:	3539                	addiw	a0,a0,-18
   11bc0:	3638                	fld	fa4,104(a2)
   11bc2:	3536                	fld	fa0,360(sp)
   11bc4:	340a                	fld	fs0,160(sp)
   11bc6:	31383433          	0x31383433
   11bca:	0a39                	addi	s4,s4,14
   11bcc:	3232                	fld	ft4,296(sp)
   11bce:	3538                	fld	fa4,104(a0)
   11bd0:	3838                	fld	fa4,112(s0)
   11bd2:	380a                	fld	fa6,160(sp)
   11bd4:	30313637          	lui	a2,0x30313
   11bd8:	34340a33          	0x34340a33
   11bdc:	32383533          	0x32383533
   11be0:	320a                	fld	ft4,160(sp)
   11be2:	3036                	fld	ft0,360(sp)
   11be4:	0a313037          	lui	zero,0xa313
   11be8:	3632                	fld	fa2,296(sp)
   11bea:	3439                	addiw	s0,s0,-18
   11bec:	3531                	addiw	a0,a0,-20
   11bee:	330a                	fld	ft6,160(sp)
   11bf0:	3335                	addiw	t1,t1,-19
   11bf2:	3935                	addiw	s2,s2,-19
   11bf4:	34320a33          	0x34320a33
   11bf8:	32373333          	0x32373333
   11bfc:	310a                	fld	ft2,160(sp)
   11bfe:	3838                	fld	fa4,112(s0)
   11c00:	3131                	addiw	sp,sp,-20
   11c02:	34320a37          	lui	s4,0x34320
   11c06:	3336                	fld	ft6,360(sp)
   11c08:	3632                	fld	fa2,296(sp)
   11c0a:	320a                	fld	ft4,160(sp)
   11c0c:	32333133          	0x32333133
   11c10:	35310a37          	lui	s4,0x35310
   11c14:	3432                	fld	fs0,296(sp)
   11c16:	3036                	fld	ft0,360(sp)
   11c18:	340a                	fld	fs0,160(sp)
   11c1a:	3638                	fld	fa4,104(a2)
   11c1c:	3239                	addiw	tp,tp,-18
   11c1e:	0a30                	addi	a2,sp,280
   11c20:	3139                	addiw	sp,sp,-18
   11c22:	3434                	fld	fa3,104(s0)
   11c24:	3031                	0x3031
   11c26:	370a                	fld	fa4,160(sp)
   11c28:	3335                	addiw	t1,t1,-19
   11c2a:	3338                	fld	fa4,96(a4)
   11c2c:	0a32                	slli	s4,s4,0xc
   11c2e:	3234                	fld	fa3,96(a2)
   11c30:	3736                	fld	fa4,360(sp)
   11c32:	0a38                	addi	a4,sp,280
   11c34:	3431                	addiw	s0,s0,-20
   11c36:	30393933          	0x30393933
   11c3a:	360a                	fld	fa2,160(sp)
   11c3c:	3734                	fld	fa3,104(a4)
   11c3e:	3635                	addiw	a2,a2,-19
   11c40:	0a35                	addi	s4,s4,13
   11c42:	3736                	fld	fa4,360(sp)
   11c44:	3339                	addiw	t1,t1,-18
   11c46:	3739                	addiw	a4,a4,-18
   11c48:	310a                	fld	ft2,160(sp)
   11c4a:	3438                	fld	fa4,104(s0)
   11c4c:	3530                	fld	fa2,104(a0)
   11c4e:	0a32                	slli	s4,s4,0xc
   11c50:	3438                	fld	fa4,104(s0)
   11c52:	3532                	fld	fa0,296(sp)
   11c54:	3136                	fld	ft2,360(sp)
   11c56:	320a                	fld	ft4,160(sp)
   11c58:	3031                	0x3031
   11c5a:	0a333837          	lui	a6,0xa333
   11c5e:	3431                	addiw	s0,s0,-20
   11c60:	3435                	addiw	s0,s0,-19
   11c62:	340a3133          	0x340a3133
   11c66:	3634                	fld	fa3,104(a2)
   11c68:	3836                	fld	fa6,360(sp)
   11c6a:	0a31                	addi	s4,s4,12
   11c6c:	3239                	addiw	tp,tp,-18
   11c6e:	3739                	addiw	a4,a4,-18
   11c70:	320a3733          	0x320a3733
   11c74:	3930                	fld	fa2,112(a0)
   11c76:	3434                	fld	fa3,104(s0)
   11c78:	0a36                	slli	s4,s4,0xd
   11c7a:	3536                	fld	fa0,360(sp)
   11c7c:	3638                	fld	fa4,104(a2)
   11c7e:	3534                	fld	fa3,104(a0)
   11c80:	330a                	fld	ft6,160(sp)
   11c82:	3834                	fld	fa3,112(s0)
   11c84:	3832                	fld	fa6,296(sp)
   11c86:	0a34                	addi	a3,sp,280
   11c88:	3934                	fld	fa3,112(a0)
   11c8a:	3838                	fld	fa4,112(s0)
   11c8c:	3039                	0x3039
   11c8e:	390a                	fld	fs2,160(sp)
   11c90:	3639                	addiw	a2,a2,-18
   11c92:	3038                	fld	fa4,96(s0)
   11c94:	37380a37          	lui	s4,0x37380
   11c98:	3932                	fld	fs2,296(sp)
   11c9a:	3235                	addiw	tp,tp,-19
   11c9c:	350a                	fld	fa0,160(sp)
   11c9e:	3338                	fld	fa4,96(a4)
   11ca0:	3038                	fld	fa4,96(s0)
   11ca2:	33330a37          	lui	s4,0x33330
   11ca6:	3035                	0x3035
   11ca8:	3639                	addiw	a2,a2,-18
   11caa:	350a                	fld	fa0,160(sp)
   11cac:	3638                	fld	fa4,104(a2)
   11cae:	3931                	addiw	s2,s2,-20
   11cb0:	0a35                	addi	s4,s4,13
   11cb2:	31373537          	lui	a0,0x31373
   11cb6:	3635                	addiw	a2,a2,-19
   11cb8:	370a                	fld	fa4,160(sp)
   11cba:	3634                	fld	fa3,104(a2)
   11cbc:	3231                	addiw	tp,tp,-20
   11cbe:	33390a33          	0x33390a33
   11cc2:	3030                	fld	fa2,96(s0)
   11cc4:	3139                	addiw	sp,sp,-18
   11cc6:	360a                	fld	fa2,160(sp)
   11cc8:	3339                	addiw	t1,t1,-18
   11cca:	3732                	fld	fa4,296(sp)
   11ccc:	0a35                	addi	s4,s4,13
   11cce:	3339                	addiw	t1,t1,-18
   11cd0:	3936                	fld	fs2,360(sp)
   11cd2:	350a3637          	lui	a2,0x350a3
   11cd6:	3436                	fld	fs0,360(sp)
   11cd8:	3530                	fld	fa2,104(a0)
   11cda:	0a30                	addi	a2,sp,280
   11cdc:	3635                	addiw	a2,a2,-19
   11cde:	39393533          	0x39393533
   11ce2:	360a                	fld	fa2,160(sp)
   11ce4:	3035                	0x3035
   11ce6:	3036                	fld	ft0,360(sp)
   11ce8:	0a31                	addi	s4,s4,12
   11cea:	3231                	addiw	tp,tp,-20
   11cec:	3030                	fld	fa2,96(s0)
   11cee:	3934                	fld	fa3,112(a0)
   11cf0:	380a                	fld	fa6,160(sp)
   11cf2:	3238                	fld	fa4,96(a2)
   11cf4:	3836                	fld	fa6,360(sp)
   11cf6:	0a30                	addi	a2,sp,280
   11cf8:	3631                	addiw	a2,a2,-20
   11cfa:	39303733          	0x39303733
   11cfe:	340a                	fld	fs0,160(sp)
   11d00:	31373933          	0x31373933
   11d04:	0a36                	slli	s4,s4,0xd
   11d06:	34373137          	lui	sp,0x34373
   11d0a:	3931                	addiw	s2,s2,-20
   11d0c:	360a                	fld	fa2,160(sp)
   11d0e:	3431                	addiw	s0,s0,-20
   11d10:	3835                	addiw	a6,a6,-19
   11d12:	0a31                	addi	s4,s4,12
   11d14:	3535                	addiw	a0,a0,-19
   11d16:	3535                	addiw	a0,a0,-19
   11d18:	310a3937          	lui	s2,0x310a3
   11d1c:	3331                	addiw	t1,t1,-20
   11d1e:	3135                	addiw	sp,sp,-19
   11d20:	0a32                	slli	s4,s4,0xc
   11d22:	3831                	addiw	a6,a6,-20
   11d24:	37393837          	lui	a6,0x37393
   11d28:	350a                	fld	fa0,160(sp)
   11d2a:	3434                	fld	fa3,104(s0)
   11d2c:	0a323337          	lui	t1,0xa323
   11d30:	3138                	fld	fa4,96(a0)
   11d32:	3939                	addiw	s2,s2,-18
   11d34:	3132                	fld	ft2,296(sp)
   11d36:	310a                	fld	ft2,160(sp)
   11d38:	33323633          	0x33323633
   11d3c:	33310a37          	lui	s4,0x33310
   11d40:	3938                	fld	fa4,112(a0)
   11d42:	3339                	addiw	t1,t1,-18
   11d44:	330a                	fld	ft6,160(sp)
   11d46:	34313233          	0x34313233
   11d4a:	0a31                	addi	s4,s4,12
   11d4c:	3934                	fld	fa3,112(a0)
   11d4e:	3130                	fld	fa2,96(a0)
   11d50:	3038                	fld	fa4,96(s0)
   11d52:	340a                	fld	fs0,160(sp)
   11d54:	3136                	fld	ft2,360(sp)
   11d56:	3138                	fld	fa4,96(a0)
   11d58:	0a30                	addi	a2,sp,280
   11d5a:	3339                	addiw	t1,t1,-18
   11d5c:	0a383837          	lui	a6,0xa383
   11d60:	31303037          	lui	zero,0x31303
   11d64:	3034                	fld	fa3,96(s0)
   11d66:	330a                	fld	ft6,160(sp)
   11d68:	3734                	fld	fa3,104(a4)
   11d6a:	3930                	fld	fa2,112(a0)
   11d6c:	0a39                	addi	s4,s4,14
   11d6e:	35343833          	0x35343833
   11d72:	3730                	fld	fa2,104(a4)
   11d74:	380a                	fld	fa6,160(sp)
   11d76:	3334                	fld	fa3,96(a4)
   11d78:	3938                	fld	fa4,112(a0)
   11d7a:	0a30                	addi	a2,sp,280
   11d7c:	3331                	addiw	t1,t1,-20
   11d7e:	3136                	fld	ft2,360(sp)
   11d80:	0a35                	addi	s4,s4,13
   11d82:	3639                	addiw	a2,a2,-18
   11d84:	33303933          	0x33303933
   11d88:	360a                	fld	fa2,160(sp)
   11d8a:	3132                	fld	ft2,296(sp)
   11d8c:	3238                	fld	fa4,96(a2)
   11d8e:	35320a37          	lui	s4,0x35320
   11d92:	3336                	fld	ft6,360(sp)
   11d94:	3434                	fld	fa3,104(s0)
   11d96:	330a                	fld	ft6,160(sp)
   11d98:	3739                	addiw	a4,a4,-18
   11d9a:	3838                	fld	fa4,112(s0)
   11d9c:	0a30                	addi	a2,sp,280
   11d9e:	3332                	fld	ft6,296(sp)
   11da0:	3834                	fld	fa3,112(s0)
   11da2:	31390a33          	0x31390a33
   11da6:	3634                	fld	fa3,104(a2)
   11da8:	0a38                	addi	a4,sp,280
   11daa:	3239                	addiw	tp,tp,-18
   11dac:	3438                	fld	fa4,104(s0)
   11dae:	3231                	addiw	tp,tp,-20
   11db0:	320a                	fld	ft4,160(sp)
   11db2:	3031                	0x3031
   11db4:	3739                	addiw	a4,a4,-18
   11db6:	0a30                	addi	a2,sp,280
   11db8:	3935                	addiw	s2,s2,-19
   11dba:	34363233          	0x34363233
   11dbe:	380a                	fld	fa6,160(sp)
   11dc0:	37363233          	0x37363233
   11dc4:	30350a33          	0x30350a33
   11dc8:	3436                	fld	fs0,360(sp)
   11dca:	3635                	addiw	a2,a2,-19
   11dcc:	340a                	fld	fs0,160(sp)
   11dce:	3631                	addiw	a2,a2,-20
   11dd0:	3336                	fld	ft6,360(sp)
   11dd2:	360a                	fld	fa2,160(sp)
   11dd4:	3236                	fld	ft4,360(sp)
   11dd6:	0a363737          	lui	a4,0xa363
   11dda:	37313437          	lui	s0,0x37313
   11dde:	360a3837          	lui	a6,0x360a3
   11de2:	38313133          	0x38313133
   11de6:	0a30                	addi	a2,sp,280
   11de8:	3035                	0x3035
   11dea:	3630                	fld	fa2,104(a2)
   11dec:	3934                	fld	fa3,112(a0)
   11dee:	350a                	fld	fa0,160(sp)
   11df0:	3532                	fld	fa0,296(sp)
   11df2:	3436                	fld	fs0,360(sp)
   11df4:	37350a37          	lui	s4,0x37350
   11df8:	37373233          	0x37373233
   11dfc:	380a                	fld	fa6,160(sp)
   11dfe:	3932                	fld	fs2,296(sp)
   11e00:	3736                	fld	fa4,360(sp)
   11e02:	0a30                	addi	a2,sp,280
   11e04:	3032                	fld	ft0,296(sp)
   11e06:	3034                	fld	fa3,96(s0)
   11e08:	3831                	addiw	a6,a6,-20
   11e0a:	340a                	fld	fs0,160(sp)
   11e0c:	3534                	fld	fa3,104(a0)
   11e0e:	3831                	addiw	a6,a6,-20
   11e10:	0a32                	slli	s4,s4,0xc
   11e12:	3934                	fld	fa3,112(a0)
   11e14:	3335                	addiw	t1,t1,-19
   11e16:	0a32                	slli	s4,s4,0xc
   11e18:	3234                	fld	fa3,96(a2)
   11e1a:	3234                	fld	fa3,96(a2)
   11e1c:	3838                	fld	fa4,112(s0)
   11e1e:	340a                	fld	fs0,160(sp)
   11e20:	3831                	addiw	a6,a6,-20
   11e22:	0a393337          	lui	t1,0xa393
   11e26:	34393233          	0x34393233
   11e2a:	3632                	fld	fa2,296(sp)
   11e2c:	360a                	fld	fa2,160(sp)
   11e2e:	3439                	addiw	s0,s0,-18
   11e30:	3430                	fld	fa2,104(s0)
   11e32:	37340a33          	0x37340a33
   11e36:	3339                	addiw	t1,t1,-18
   11e38:	320a3733          	0x320a3733
   11e3c:	3338                	fld	fa4,96(a4)
   11e3e:	3230                	fld	fa2,96(a2)
   11e40:	350a                	fld	fa0,160(sp)
   11e42:	3131                	addiw	sp,sp,-20
   11e44:	0a373237          	lui	tp,0xa373
   11e48:	3838                	fld	fa4,112(s0)
   11e4a:	3130                	fld	fa2,96(a0)
   11e4c:	3439                	addiw	s0,s0,-18
   11e4e:	380a                	fld	fa6,160(sp)
   11e50:	3132                	fld	ft2,296(sp)
   11e52:	3332                	fld	ft6,296(sp)
   11e54:	380a                	fld	fa6,160(sp)
   11e56:	30373233          	0x30373233
   11e5a:	0a31                	addi	s4,s4,12
   11e5c:	35373533          	0x35373533
   11e60:	370a3133          	0x370a3133
   11e64:	3331                	addiw	t1,t1,-20
   11e66:	3331                	addiw	t1,t1,-20
   11e68:	31340a37          	lui	s4,0x31340
   11e6c:	3731                	addiw	a4,a4,-20
   11e6e:	3836                	fld	fa6,360(sp)
   11e70:	370a                	fld	fa4,160(sp)
   11e72:	3838                	fld	fa4,112(s0)
   11e74:	3438                	fld	fa4,104(s0)
   11e76:	0a38                	addi	a4,sp,280
   11e78:	3936                	fld	fs2,360(sp)
   11e7a:	3331                	addiw	t1,t1,-20
   11e7c:	3135                	addiw	sp,sp,-19
   11e7e:	330a                	fld	ft6,160(sp)
   11e80:	3139                	addiw	sp,sp,-18
   11e82:	3139                	addiw	sp,sp,-18
   11e84:	0a34                	addi	a3,sp,280
   11e86:	3631                	addiw	a2,a2,-20
   11e88:	3736                	fld	fa4,360(sp)
   11e8a:	3931                	addiw	s2,s2,-20
   11e8c:	320a                	fld	ft4,160(sp)
   11e8e:	3639                	addiw	a2,a2,-18
   11e90:	3838                	fld	fa4,112(s0)
   11e92:	0a32                	slli	s4,s4,0xc
   11e94:	3732                	fld	fa4,296(sp)
   11e96:	3338                	fld	fa4,96(a4)
   11e98:	360a3037          	lui	zero,0x360a3
   11e9c:	3630                	fld	fa2,104(a2)
   11e9e:	3839                	addiw	a6,a6,-18
   11ea0:	0a32                	slli	s4,s4,0xc
   11ea2:	32393637          	lui	a2,0x32393
   11ea6:	3532                	fld	fa0,296(sp)
   11ea8:	390a                	fld	fs2,160(sp)
   11eaa:	3436                	fld	fs0,360(sp)
   11eac:	3630                	fld	fa2,104(a2)
   11eae:	0a38                	addi	a4,sp,280
   11eb0:	3934                	fld	fa3,112(a0)
   11eb2:	3336                	fld	ft6,360(sp)
   11eb4:	3738                	fld	fa4,104(a4)
   11eb6:	340a                	fld	fs0,160(sp)
   11eb8:	3834                	fld	fa3,112(s0)
   11eba:	3031                	0x3031
   11ebc:	0a35                	addi	s4,s4,13
   11ebe:	3239                	addiw	tp,tp,-18
   11ec0:	3131                	addiw	sp,sp,-20
   11ec2:	3138                	fld	fa4,96(a0)
   11ec4:	390a                	fld	fs2,160(sp)
   11ec6:	3434                	fld	fa3,104(s0)
   11ec8:	390a3337          	lui	t1,0x390a3
   11ecc:	3030                	fld	fa2,96(s0)
   11ece:	3536                	fld	fa0,360(sp)
   11ed0:	0a38                	addi	a4,sp,280
   11ed2:	3434                	fld	fa3,104(s0)
   11ed4:	3334                	fld	fa3,96(a4)
   11ed6:	3931                	addiw	s2,s2,-20
   11ed8:	370a                	fld	fa4,160(sp)
   11eda:	38393133          	0x38393133
   11ede:	34360a33          	0x34360a33
   11ee2:	39333533          	0x39333533
   11ee6:	340a                	fld	fs0,160(sp)
   11ee8:	3235                	addiw	tp,tp,-19
   11eea:	3436                	fld	fs0,360(sp)
   11eec:	0a38                	addi	a4,sp,280
   11eee:	3539                	addiw	a0,a0,-18
   11ef0:	0a313633          	0xa313633
   11ef4:	3834                	fld	fa3,112(s0)
   11ef6:	3430                	fld	fa2,104(s0)
   11ef8:	3039                	0x3039
   11efa:	350a                	fld	fa0,160(sp)
   11efc:	3839                	addiw	a6,a6,-18
   11efe:	3436                	fld	fs0,360(sp)
   11f00:	320a                	fld	ft4,160(sp)
   11f02:	3330                	fld	fa2,96(a4)
   11f04:	3238                	fld	fa4,96(a2)
   11f06:	0a39                	addi	s4,s4,14
   11f08:	3538                	fld	fa4,104(a0)
   11f0a:	3934                	fld	fa3,112(a0)
   11f0c:	3235                	addiw	tp,tp,-19
   11f0e:	370a                	fld	fa4,160(sp)
   11f10:	3936                	fld	fs2,360(sp)
   11f12:	3739                	addiw	a4,a4,-18
   11f14:	0a31                	addi	s4,s4,12
   11f16:	3934                	fld	fa3,112(a0)
   11f18:	3234                	fld	fa3,96(a2)
   11f1a:	3138                	fld	fa4,96(a0)
   11f1c:	310a                	fld	ft2,160(sp)
   11f1e:	3438                	fld	fa4,104(s0)
   11f20:	3738                	fld	fa4,104(a4)
   11f22:	35340a37          	lui	s4,0x35340
   11f26:	35393137          	lui	sp,0x35393
   11f2a:	380a                	fld	fa6,160(sp)
   11f2c:	3138                	fld	fa4,96(a0)
   11f2e:	3631                	addiw	a2,a2,-20
   11f30:	31310a33          	0x31310a33
   11f34:	3038                	fld	fa4,96(s0)
   11f36:	3138                	fld	fa4,96(a0)
   11f38:	320a                	fld	ft4,160(sp)
   11f3a:	3830                	fld	fa2,112(s0)
   11f3c:	3534                	fld	fa3,104(a0)
   11f3e:	0a30                	addi	a2,sp,280
   11f40:	3331                	addiw	t1,t1,-20
   11f42:	3730                	fld	fa2,104(a4)
   11f44:	3138                	fld	fa4,96(a0)
   11f46:	390a                	fld	fs2,160(sp)
   11f48:	3830                	fld	fa2,112(s0)
   11f4a:	3035                	0x3035
   11f4c:	0a35                	addi	s4,s4,13
   11f4e:	3032                	fld	ft0,296(sp)
   11f50:	3938                	fld	fa4,112(a0)
   11f52:	3932                	fld	fs2,296(sp)
   11f54:	370a                	fld	fa4,160(sp)
   11f56:	3635                	addiw	a2,a2,-19
   11f58:	0a393933          	0xa393933
   11f5c:	3534                	fld	fa3,104(a0)
   11f5e:	39353033          	0x39353033
   11f62:	360a                	fld	fa2,160(sp)
   11f64:	3238                	fld	fa4,96(a2)
   11f66:	3336                	fld	ft6,360(sp)
   11f68:	360a                	fld	fa2,160(sp)
   11f6a:	3139                	addiw	sp,sp,-18
   11f6c:	3835                	addiw	a6,a6,-19
   11f6e:	0a32                	slli	s4,s4,0xc
   11f70:	3131                	addiw	sp,sp,-20
   11f72:	3538                	fld	fa4,104(a0)
   11f74:	3936                	fld	fs2,360(sp)
   11f76:	360a                	fld	fa2,160(sp)
   11f78:	39363933          	0x39363933
   11f7c:	0a38                	addi	a4,sp,280
   11f7e:	35303333          	0x35303333
   11f82:	3732                	fld	fa4,296(sp)
   11f84:	380a                	fld	fa6,160(sp)
   11f86:	3236                	fld	ft4,360(sp)
   11f88:	3235                	addiw	tp,tp,-19
   11f8a:	33380a33          	0x33380a33
   11f8e:	3730                	fld	fa2,104(a4)
   11f90:	3332                	fld	ft6,296(sp)
   11f92:	380a                	fld	fa6,160(sp)
   11f94:	3331                	addiw	t1,t1,-20
   11f96:	0a363437          	lui	s0,0xa363
   11f9a:	3239                	addiw	tp,tp,-18
   11f9c:	3938                	fld	fa4,112(a0)
   11f9e:	3534                	fld	fa3,104(a0)
   11fa0:	380a                	fld	fa6,160(sp)
   11fa2:	3435                	addiw	s0,s0,-19
   11fa4:	3234                	fld	fa3,96(a2)
   11fa6:	31380a33          	0x31380a33
   11faa:	3730                	fld	fa2,104(a4)
   11fac:	0a36                	slli	s4,s4,0xd
   11fae:	          	0x30373833

0000000000011fb0 <b>:
   11fb0:	39353037          	lui	zero,0x39353
   11fb4:	380a                	fld	fa6,160(sp)
   11fb6:	37363637          	lui	a2,0x37363
   11fba:	0a30                	addi	a2,sp,280
   11fbc:	3434                	fld	fa3,104(s0)
   11fbe:	3139                	addiw	sp,sp,-18
   11fc0:	3636                	fld	fa2,360(sp)
   11fc2:	390a                	fld	fs2,160(sp)
   11fc4:	3236                	fld	ft4,360(sp)
   11fc6:	3831                	addiw	a6,a6,-20
   11fc8:	0a30                	addi	a2,sp,280
   11fca:	3334                	fld	fa3,96(a4)
   11fcc:	3939                	addiw	s2,s2,-18
   11fce:	320a3237          	lui	tp,0x320a3
   11fd2:	3438                	fld	fa4,104(s0)
   11fd4:	3632                	fld	fa2,296(sp)
   11fd6:	0a32                	slli	s4,s4,0xc
   11fd8:	3338                	fld	fa4,96(a4)
   11fda:	3231                	addiw	tp,tp,-20
   11fdc:	340a3037          	lui	zero,0x340a3
   11fe0:	36393237          	lui	tp,0x36393
   11fe4:	0a31                	addi	s4,s4,12
   11fe6:	3332                	fld	ft6,296(sp)
   11fe8:	39353737          	lui	a4,0x39353
   11fec:	380a                	fld	fa6,160(sp)
   11fee:	3836                	fld	fa6,360(sp)
   11ff0:	0a373037          	lui	zero,0xa373
   11ff4:	3836                	fld	fa6,360(sp)
   11ff6:	3936                	fld	fs2,360(sp)
   11ff8:	390a3033          	0x390a3033
   11ffc:	3436                	fld	fs0,360(sp)
   11ffe:	3339                	addiw	t1,t1,-18
   12000:	32360a37          	lui	s4,0x32360
   12004:	3735                	addiw	a4,a4,-19
   12006:	3938                	fld	fa4,112(a0)
   12008:	370a                	fld	fa4,160(sp)
   1200a:	3036                	fld	ft0,360(sp)
   1200c:	3331                	addiw	t1,t1,-20
   1200e:	30360a37          	lui	s4,0x30360
   12012:	3830                	fld	fa2,112(s0)
   12014:	3435                	addiw	s0,s0,-19
   12016:	340a                	fld	fs0,160(sp)
   12018:	3331                	addiw	t1,t1,-20
   1201a:	3939                	addiw	s2,s2,-18
   1201c:	0a39                	addi	s4,s4,14
   1201e:	3332                	fld	ft6,296(sp)
   12020:	3334                	fld	fa3,96(a4)
   12022:	3232                	fld	ft4,296(sp)
   12024:	320a                	fld	ft4,160(sp)
   12026:	3532                	fld	fa0,296(sp)
   12028:	3031                	0x3031
   1202a:	0a34                	addi	a3,sp,280
   1202c:	3934                	fld	fa3,112(a0)
   1202e:	3739                	addiw	a4,a4,-18
   12030:	3534                	fld	fa3,104(a0)
   12032:	390a                	fld	fs2,160(sp)
   12034:	3738                	fld	fa4,104(a4)
   12036:	3534                	fld	fa3,104(a0)
   12038:	0a35                	addi	s4,s4,13
   1203a:	3239                	addiw	tp,tp,-18
   1203c:	3039                	0x3039
   1203e:	3435                	addiw	s0,s0,-19
   12040:	350a                	fld	fa0,160(sp)
   12042:	30393233          	0x30393233
   12046:	0a31                	addi	s4,s4,12
   12048:	3631                	addiw	a2,a2,-20
   1204a:	0a323237          	lui	tp,0xa323
   1204e:	3838                	fld	fa4,112(s0)
   12050:	3831                	addiw	a6,a6,-20
   12052:	3330                	fld	fa2,96(a4)
   12054:	340a                	fld	fs0,160(sp)
   12056:	3839                	addiw	a6,a6,-18
   12058:	0a363137          	lui	sp,0xa363
   1205c:	3138                	fld	fa4,96(a0)
   1205e:	31303737          	lui	a4,0x31303
   12062:	370a                	fld	fa4,160(sp)
   12064:	3435                	addiw	s0,s0,-19
   12066:	3430                	fld	fa2,104(s0)
   12068:	0a34                	addi	a3,sp,280
   1206a:	3234                	fld	fa3,96(a2)
   1206c:	3436                	fld	fs0,360(sp)
   1206e:	3230                	fld	fa2,96(a2)
   12070:	340a                	fld	fs0,160(sp)
   12072:	3939                	addiw	s2,s2,-18
   12074:	390a3533          	0x390a3533
   12078:	3339                	addiw	t1,t1,-18
   1207a:	3634                	fld	fa3,104(a2)
   1207c:	31360a37          	lui	s4,0x31360
   12080:	3731                	addiw	a4,a4,-20
   12082:	3239                	addiw	tp,tp,-18
   12084:	360a                	fld	fa2,160(sp)
   12086:	3935                	addiw	s2,s2,-19
   12088:	3138                	fld	fa4,96(a0)
   1208a:	34340a37          	lui	s4,0x34340
   1208e:	3230                	fld	fa2,96(a2)
   12090:	340a3133          	0x340a3133
   12094:	3038                	fld	fa4,96(s0)
   12096:	3335                	addiw	t1,t1,-19
   12098:	0a34                	addi	a3,sp,280
   1209a:	3131                	addiw	sp,sp,-20
   1209c:	33363233          	0x33363233
   120a0:	370a                	fld	fa4,160(sp)
   120a2:	35303937          	lui	s2,0x35303
   120a6:	0a30                	addi	a2,sp,280
   120a8:	33373537          	lui	a0,0x33373
   120ac:	3434                	fld	fa3,104(s0)
   120ae:	310a                	fld	ft2,160(sp)
   120b0:	3734                	fld	fa3,104(a4)
   120b2:	3630                	fld	fa2,104(a2)
   120b4:	38380a37          	lui	s4,0x38380
   120b8:	3136                	fld	ft2,360(sp)
   120ba:	350a                	fld	fa0,160(sp)
   120bc:	3338                	fld	fa4,96(a4)
   120be:	3232                	fld	ft4,296(sp)
   120c0:	31330a37          	lui	s4,0x31330
   120c4:	3631                	addiw	a2,a2,-20
   120c6:	350a3033          	0x350a3033
   120ca:	3534                	fld	fa3,104(a0)
   120cc:	3236                	fld	ft4,360(sp)
   120ce:	0a34                	addi	a3,sp,280
   120d0:	3538                	fld	fa4,104(a0)
   120d2:	3439                	addiw	s0,s0,-18
   120d4:	370a3737          	lui	a4,0x370a3
   120d8:	3135                	addiw	sp,sp,-19
   120da:	3630                	fld	fa2,104(a2)
   120dc:	0a39                	addi	s4,s4,14
   120de:	3331                	addiw	t1,t1,-20
   120e0:	3531                	addiw	a0,a0,-20
   120e2:	3838                	fld	fa4,112(s0)
   120e4:	350a                	fld	fa0,160(sp)
   120e6:	37353537          	lui	a0,0x37353
   120ea:	0a39                	addi	s4,s4,14
   120ec:	39383837          	lui	a6,0x39383
   120f0:	330a                	fld	ft6,160(sp)
   120f2:	37393133          	0x37393133
   120f6:	0a36                	slli	s4,s4,0xd
   120f8:	33343933          	0x33343933
   120fc:	320a3833          	0x320a3833
   12100:	3234                	fld	fa3,96(a2)
   12102:	3832                	fld	fa6,296(sp)
   12104:	0a32                	slli	s4,s4,0xc
   12106:	3531                	addiw	a0,a0,-20
   12108:	3332                	fld	ft6,296(sp)
   1210a:	3432                	fld	fs0,296(sp)
   1210c:	340a                	fld	fs0,160(sp)
   1210e:	3532                	fld	fa0,296(sp)
   12110:	3331                	addiw	t1,t1,-20
   12112:	340a                	fld	fs0,160(sp)
   12114:	3639                	addiw	a2,a2,-18
   12116:	3534                	fld	fa3,104(a0)
   12118:	0a35                	addi	s4,s4,13
   1211a:	3439                	addiw	s0,s0,-18
   1211c:	3732                	fld	fa4,296(sp)
   1211e:	3131                	addiw	sp,sp,-20
   12120:	320a                	fld	ft4,160(sp)
   12122:	3334                	fld	fa3,96(a4)
   12124:	3830                	fld	fa2,112(s0)
   12126:	0a35                	addi	s4,s4,13
   12128:	3738                	fld	fa4,104(a4)
   1212a:	3532                	fld	fa0,296(sp)
   1212c:	0a35                	addi	s4,s4,13
   1212e:	3235                	addiw	tp,tp,-19
   12130:	30343037          	lui	zero,0x30343
   12134:	350a                	fld	fa0,160(sp)
   12136:	3439                	addiw	s0,s0,-18
   12138:	0a383437          	lui	s0,0xa383
   1213c:	3038                	fld	fa4,96(s0)
   1213e:	3635                	addiw	a2,a2,-19
   12140:	3439                	addiw	s0,s0,-18
   12142:	340a                	fld	fs0,160(sp)
   12144:	3834                	fld	fa3,112(s0)
   12146:	3535                	addiw	a0,a0,-19
   12148:	0a35                	addi	s4,s4,13
   1214a:	3739                	addiw	a4,a4,-18
   1214c:	3834                	fld	fa3,112(s0)
   1214e:	3234                	fld	fa3,96(a2)
   12150:	330a                	fld	ft6,160(sp)
   12152:	35373337          	lui	t1,0x35373
   12156:	0a30                	addi	a2,sp,280
   12158:	3534                	fld	fa3,104(a0)
   1215a:	3730                	fld	fa2,104(a4)
   1215c:	0a35                	addi	s4,s4,13
   1215e:	35333833          	0x35333833
   12162:	3730                	fld	fa2,104(a4)
   12164:	340a                	fld	fs0,160(sp)
   12166:	3939                	addiw	s2,s2,-18
   12168:	0a353137          	lui	sp,0xa353
   1216c:	3536                	fld	fa0,360(sp)
   1216e:	3936                	fld	fs2,360(sp)
   12170:	3138                	fld	fa4,96(a0)
   12172:	320a                	fld	ft4,160(sp)
   12174:	3439                	addiw	s0,s0,-18
   12176:	0a333737          	lui	a4,0xa333
   1217a:	3532                	fld	fa0,296(sp)
   1217c:	3334                	fld	fa3,96(a4)
   1217e:	3330                	fld	fa2,96(a4)
   12180:	370a                	fld	fa4,160(sp)
   12182:	3334                	fld	fa3,96(a4)
   12184:	3239                	addiw	tp,tp,-18
   12186:	360a                	fld	fa2,160(sp)
   12188:	3238                	fld	fa4,96(a2)
   1218a:	3438                	fld	fa4,104(s0)
   1218c:	0a38                	addi	a4,sp,280
   1218e:	3532                	fld	fa0,296(sp)
   12190:	32383733          	0x32383733
   12194:	310a                	fld	ft2,160(sp)
   12196:	3938                	fld	fa4,112(a0)
   12198:	3938                	fld	fa4,112(a0)
   1219a:	0a30                	addi	a2,sp,280
   1219c:	3136                	fld	ft2,360(sp)
   1219e:	3039                	0x3039
   121a0:	3734                	fld	fa3,104(a4)
   121a2:	330a                	fld	ft6,160(sp)
   121a4:	33323233          	0x33323233
   121a8:	0a32                	slli	s4,s4,0xc
   121aa:	3432                	fld	fs0,296(sp)
   121ac:	3638                	fld	fa4,104(a2)
   121ae:	340a3933          	0x340a3933
   121b2:	30303533          	0x30303533
   121b6:	0a36                	slli	s4,s4,0xd
   121b8:	3632                	fld	fa2,296(sp)
   121ba:	35373133          	0x35373133
   121be:	380a                	fld	fa6,160(sp)
   121c0:	3136                	fld	ft2,360(sp)
   121c2:	3238                	fld	fa4,96(a2)
   121c4:	0a32                	slli	s4,s4,0xc
   121c6:	3535                	addiw	a0,a0,-19
   121c8:	35333933          	0x35333933
   121cc:	350a                	fld	fa0,160(sp)
   121ce:	3139                	addiw	sp,sp,-18
   121d0:	3336                	fld	ft6,360(sp)
   121d2:	0a32                	slli	s4,s4,0xc
   121d4:	3638                	fld	fa4,104(a2)
   121d6:	3832                	fld	fa6,296(sp)
   121d8:	30380a37          	lui	s4,0x30380
   121dc:	3336                	fld	ft6,360(sp)
   121de:	3534                	fld	fa3,104(a0)
   121e0:	370a                	fld	fa4,160(sp)
   121e2:	3532                	fld	fa0,296(sp)
   121e4:	0a373437          	lui	s0,0xa373
   121e8:	3734                	fld	fa3,104(a4)
   121ea:	3930                	fld	fa2,112(a0)
   121ec:	3032                	fld	ft0,296(sp)
   121ee:	390a                	fld	fs2,160(sp)
   121f0:	31373337          	lui	t1,0x31373
   121f4:	0a36                	slli	s4,s4,0xd
   121f6:	3831                	addiw	a6,a6,-20
   121f8:	32323533          	0x32323533
   121fc:	370a                	fld	fa4,160(sp)
   121fe:	3434                	fld	fa3,104(s0)
   12200:	3439                	addiw	s0,s0,-18
   12202:	0a36                	slli	s4,s4,0xd
   12204:	38363037          	lui	zero,0x38363
   12208:	340a3033          	0x340a3033
   1220c:	3434                	fld	fa3,104(s0)
   1220e:	3130                	fld	fa2,96(a0)
   12210:	360a                	fld	fa2,160(sp)
   12212:	3030                	fld	fa2,96(s0)
   12214:	0a323537          	lui	a0,0xa323
   12218:	3731                	addiw	a4,a4,-20
   1221a:	3939                	addiw	s2,s2,-18
   1221c:	3530                	fld	fa2,104(a0)
   1221e:	310a                	fld	ft2,160(sp)
   12220:	3330                	fld	fa2,96(a4)
   12222:	0a333237          	lui	tp,0xa333
   12226:	3032                	fld	ft0,296(sp)
   12228:	3839                	addiw	a6,a6,-18
   1222a:	3232                	fld	ft4,296(sp)
   1222c:	380a                	fld	fa6,160(sp)
   1222e:	35303433          	0x35303433
   12232:	32380a37          	lui	s4,0x32380
   12236:	3239                	addiw	tp,tp,-18
   12238:	3034                	fld	fa3,96(s0)
   1223a:	340a                	fld	fs0,160(sp)
   1223c:	3031                	0x3031
   1223e:	3632                	fld	fa2,296(sp)
   12240:	0a30                	addi	a2,sp,280
   12242:	3631                	addiw	a2,a2,-20
   12244:	32373533          	0x32373533
   12248:	380a                	fld	fa6,160(sp)
   1224a:	3930                	fld	fa2,112(a0)
   1224c:	3138                	fld	fa4,96(a0)
   1224e:	330a                	fld	ft6,160(sp)
   12250:	3234                	fld	fa3,96(a2)
   12252:	3134                	fld	fa3,96(a0)
   12254:	0a30                	addi	a2,sp,280
   12256:	37373333          	0x37373333
   1225a:	3134                	fld	fa3,96(a0)
   1225c:	310a                	fld	ft2,160(sp)
   1225e:	3436                	fld	fs0,360(sp)
   12260:	3336                	fld	ft6,360(sp)
   12262:	0a35                	addi	s4,s4,13
   12264:	34333133          	0x34333133
   12268:	3836                	fld	fa6,360(sp)
   1226a:	310a                	fld	ft2,160(sp)
   1226c:	3831                	addiw	a6,a6,-20
   1226e:	3838                	fld	fa4,112(s0)
   12270:	31350a33          	0x31350a33
   12274:	0a373933          	0xa373933
   12278:	3935                	addiw	s2,s2,-19
   1227a:	38383137          	lui	sp,0x38383
   1227e:	360a                	fld	fa2,160(sp)
   12280:	37393637          	lui	a2,0x37393
   12284:	0a35                	addi	s4,s4,13
   12286:	3431                	addiw	s0,s0,-20
   12288:	3735                	addiw	a4,a4,-19
   1228a:	3635                	addiw	a2,a2,-19
   1228c:	390a                	fld	fs2,160(sp)
   1228e:	3639                	addiw	a2,a2,-18
   12290:	3936                	fld	fs2,360(sp)
   12292:	0a36                	slli	s4,s4,0xd
   12294:	3234                	fld	fa3,96(a2)
   12296:	3631                	addiw	a2,a2,-20
   12298:	340a3037          	lui	zero,0x340a3
   1229c:	3130                	fld	fa2,96(a0)
   1229e:	0a393037          	lui	zero,0xa393
   122a2:	3939                	addiw	s2,s2,-18
   122a4:	39353137          	lui	sp,0x39353
   122a8:	310a                	fld	ft2,160(sp)
   122aa:	3139                	addiw	sp,sp,-18
   122ac:	3930                	fld	fa2,112(a0)
   122ae:	0a32                	slli	s4,s4,0xc
   122b0:	38393433          	0x38393433
   122b4:	3235                	addiw	tp,tp,-19
   122b6:	320a                	fld	ft4,160(sp)
   122b8:	3231                	addiw	tp,tp,-20
   122ba:	3536                	fld	fa0,360(sp)
   122bc:	0a35                	addi	s4,s4,13
   122be:	3336                	fld	ft6,360(sp)
   122c0:	3632                	fld	fa2,296(sp)
   122c2:	3038                	fld	fa4,96(s0)
   122c4:	390a                	fld	fs2,160(sp)
   122c6:	36353833          	0x36353833
   122ca:	33350a37          	lui	s4,0x33350
   122ce:	3535                	addiw	a0,a0,-19
   122d0:	3339                	addiw	t1,t1,-18
   122d2:	360a                	fld	fa2,160(sp)
   122d4:	3430                	fld	fa2,104(s0)
   122d6:	3031                	0x3031
   122d8:	0a36                	slli	s4,s4,0xd
   122da:	3539                	addiw	a0,a0,-18
   122dc:	3330                	fld	fa2,96(a4)
   122de:	3631                	addiw	a2,a2,-20
   122e0:	320a                	fld	ft4,160(sp)
   122e2:	3436                	fld	fs0,360(sp)
   122e4:	3234                	fld	fa3,96(a2)
   122e6:	0a36                	slli	s4,s4,0xd
   122e8:	3038                	fld	fa4,96(s0)
   122ea:	3730                	fld	fa2,104(a4)
   122ec:	3730                	fld	fa2,104(a4)
   122ee:	330a                	fld	ft6,160(sp)
   122f0:	3230                	fld	fa2,96(a2)
   122f2:	3435                	addiw	s0,s0,-19
   122f4:	0a35                	addi	s4,s4,13
   122f6:	3531                	addiw	a0,a0,-20
   122f8:	34313733          	0x34313733
   122fc:	390a                	fld	fs2,160(sp)
   122fe:	3636                	fld	fa2,360(sp)
   12300:	3232                	fld	ft4,296(sp)
   12302:	0a39                	addi	s4,s4,14
   12304:	38333037          	lui	zero,0x38333
   12308:	330a3633          	0x330a3633
   1230c:	3536                	fld	fa0,360(sp)
   1230e:	3534                	fld	fa3,104(a0)
   12310:	0a31                	addi	s4,s4,12
   12312:	3938                	fld	fa4,112(a0)
   12314:	3039                	0x3039
   12316:	3334                	fld	fa3,96(a4)
   12318:	350a                	fld	fa0,160(sp)
   1231a:	3736                	fld	fa4,360(sp)
   1231c:	3836                	fld	fa6,360(sp)
   1231e:	0a39                	addi	s4,s4,14
   12320:	3931                	addiw	s2,s2,-20
   12322:	38343437          	lui	s0,0x38343
   12326:	330a                	fld	ft6,160(sp)
   12328:	36353933          	0x36353933
   1232c:	0a32                	slli	s4,s4,0xc
   1232e:	39383533          	0x39383533
   12332:	3432                	fld	fs0,296(sp)
   12334:	370a                	fld	fa4,160(sp)
   12336:	36393533          	0x36393533
   1233a:	0a39                	addi	s4,s4,14
   1233c:	3139                	addiw	sp,sp,-18
   1233e:	3132                	fld	ft2,296(sp)
   12340:	3731                	addiw	a4,a4,-20
   12342:	390a                	fld	fs2,160(sp)
   12344:	3739                	addiw	a4,a4,-18
   12346:	3235                	addiw	tp,tp,-19
   12348:	0a35                	addi	s4,s4,13
   1234a:	3939                	addiw	s2,s2,-18
   1234c:	3230                	fld	fa2,96(a2)
   1234e:	340a3733          	0x340a3733
   12352:	3332                	fld	ft6,296(sp)
   12354:	3232                	fld	ft4,296(sp)
   12356:	380a                	fld	fa6,160(sp)
   12358:	30333133          	0x30333133
   1235c:	0a34                	addi	a3,sp,280
   1235e:	3635                	addiw	a2,a2,-19
   12360:	3632                	fld	fa2,296(sp)
   12362:	3138                	fld	fa4,96(a0)
   12364:	320a                	fld	ft4,160(sp)
   12366:	33343037          	lui	zero,0x33343
   1236a:	0a39                	addi	s4,s4,14
   1236c:	3134                	fld	fa3,96(a0)
   1236e:	3935                	addiw	s2,s2,-19
   12370:	3536                	fld	fa0,360(sp)
   12372:	370a                	fld	fa4,160(sp)
   12374:	35313133          	0x35313133
   12378:	0a36                	slli	s4,s4,0xd
   1237a:	3238                	fld	fa4,96(a2)
   1237c:	3635                	addiw	a2,a2,-19
   1237e:	3338                	fld	fa4,96(a4)
   12380:	340a                	fld	fs0,160(sp)
   12382:	3436                	fld	fs0,360(sp)
   12384:	3730                	fld	fa2,104(a4)
   12386:	0a30                	addi	a2,sp,280
   12388:	3336                	fld	ft6,360(sp)
   1238a:	3539                	addiw	a0,a0,-18
   1238c:	340a3837          	lui	a6,0x340a3
   12390:	3239                	addiw	tp,tp,-18
   12392:	0a313333          	0xa313333
   12396:	3038                	fld	fa4,96(s0)
   12398:	3835                	addiw	a6,a6,-19
   1239a:	3132                	fld	ft2,296(sp)
   1239c:	380a                	fld	fa6,160(sp)
   1239e:	3834                	fld	fa3,112(s0)
   123a0:	3938                	fld	fa4,112(a0)
   123a2:	330a                	fld	ft6,160(sp)
   123a4:	31323037          	lui	zero,0x31323
   123a8:	0a34                	addi	a3,sp,280
   123aa:	3332                	fld	ft6,296(sp)
   123ac:	3936                	fld	fs2,360(sp)
   123ae:	3636                	fld	fa2,360(sp)
   123b0:	330a                	fld	ft6,160(sp)
   123b2:	3230                	fld	fa2,96(a2)
   123b4:	3932                	fld	fs2,296(sp)
   123b6:	0a35                	addi	s4,s4,13
   123b8:	3036                	fld	ft0,360(sp)
   123ba:	3839                	addiw	a6,a6,-18
   123bc:	3030                	fld	fa2,96(s0)
   123be:	360a                	fld	fa2,160(sp)
   123c0:	3639                	addiw	a2,a2,-18
   123c2:	3334                	fld	fa3,96(a4)
   123c4:	0a32                	slli	s4,s4,0xc
   123c6:	3935                	addiw	s2,s2,-19
   123c8:	3532                	fld	fa0,296(sp)
   123ca:	3039                	0x3039
   123cc:	350a                	fld	fa0,160(sp)
   123ce:	3131                	addiw	sp,sp,-20
   123d0:	3035                	0x3035
   123d2:	0a35                	addi	s4,s4,13
   123d4:	3738                	fld	fa4,104(a4)
   123d6:	3432                	fld	fs0,296(sp)
   123d8:	3735                	addiw	a4,a4,-19
   123da:	320a                	fld	ft4,160(sp)
   123dc:	3235                	addiw	tp,tp,-19
   123de:	3931                	addiw	s2,s2,-20
   123e0:	30320a37          	lui	s4,0x30320
   123e4:	3930                	fld	fa2,112(a0)
   123e6:	3135                	addiw	sp,sp,-19
   123e8:	380a                	fld	fa6,160(sp)
   123ea:	3139                	addiw	sp,sp,-18
   123ec:	3639                	addiw	a2,a2,-18
   123ee:	0a39                	addi	s4,s4,14
   123f0:	3131                	addiw	sp,sp,-20
   123f2:	3538                	fld	fa4,104(a0)
   123f4:	3038                	fld	fa4,96(s0)
   123f6:	370a                	fld	fa4,160(sp)
   123f8:	3439                	addiw	s0,s0,-18
   123fa:	0a313537          	lui	a0,0xa313
   123fe:	32383533          	0x32383533
   12402:	3030                	fld	fa2,96(s0)
   12404:	380a                	fld	fa6,160(sp)
   12406:	3338                	fld	fa4,96(a4)
   12408:	3339                	addiw	t1,t1,-18
   1240a:	32320a37          	lui	s4,0x32320
   1240e:	3135                	addiw	sp,sp,-19
   12410:	3234                	fld	fa3,96(a2)
   12412:	360a                	fld	fa2,160(sp)
   12414:	3434                	fld	fa3,104(s0)
   12416:	0a323037          	lui	zero,0xa323
   1241a:	3634                	fld	fa3,104(a2)
   1241c:	3534                	fld	fa3,104(a0)
   1241e:	3131                	addiw	sp,sp,-20
   12420:	310a                	fld	ft2,160(sp)
   12422:	3034                	fld	fa3,96(s0)
   12424:	3832                	fld	fa6,296(sp)
   12426:	31360a33          	0x31360a33
   1242a:	33373237          	lui	tp,0x33373
   1242e:	380a                	fld	fa6,160(sp)
   12430:	3338                	fld	fa4,96(a4)
   12432:	0a383937          	lui	s2,0xa383
   12436:	3235                	addiw	tp,tp,-19
   12438:	3235                	addiw	tp,tp,-19
   1243a:	3330                	fld	fa2,96(a4)
   1243c:	340a                	fld	fs0,160(sp)
   1243e:	3234                	fld	fa3,96(a2)
   12440:	3530                	fld	fa2,104(a0)
   12442:	0a31                	addi	s4,s4,12
   12444:	38343533          	0x38343533
   12448:	3936                	fld	fs2,360(sp)
   1244a:	360a                	fld	fa2,160(sp)
   1244c:	3530                	fld	fa2,104(a0)
   1244e:	0a373937          	lui	s2,0xa373
   12452:	31323333          	0x31323333
   12456:	3039                	0x3039
   12458:	360a                	fld	fa2,160(sp)
   1245a:	35393437          	lui	s0,0x35393
   1245e:	0a32                	slli	s4,s4,0xc
   12460:	38343237          	lui	tp,0x38343
   12464:	3435                	addiw	s0,s0,-19
   12466:	350a                	fld	fa0,160(sp)
   12468:	3736                	fld	fa4,360(sp)
   1246a:	3131                	addiw	sp,sp,-20
   1246c:	30320a33          	0x30320a33
   12470:	3238                	fld	fa4,96(a2)
   12472:	3239                	addiw	tp,tp,-18
   12474:	380a                	fld	fa6,160(sp)
   12476:	30333337          	lui	t1,0x30333
   1247a:	0a30                	addi	a2,sp,280
   1247c:	3538                	fld	fa4,104(a0)
   1247e:	34383237          	lui	tp,0x34383
   12482:	360a                	fld	fa2,160(sp)
   12484:	34393137          	lui	sp,0x34393
   12488:	32370a37          	lui	s4,0x32370
   1248c:	3338                	fld	fa4,96(a4)
   1248e:	3630                	fld	fa2,104(a2)
   12490:	360a                	fld	fa2,160(sp)
   12492:	3734                	fld	fa3,104(a4)
   12494:	3830                	fld	fa2,112(s0)
   12496:	34350a33          	0x34350a33
   1249a:	3035                	0x3035
   1249c:	380a3033          	0x380a3033
   124a0:	3839                	addiw	a6,a6,-18
   124a2:	3234                	fld	fa3,96(a2)
   124a4:	0a30                	addi	a2,sp,280
   124a6:	3231                	addiw	tp,tp,-20
   124a8:	0a303937          	lui	s2,0xa303
   124ac:	3834                	fld	fa3,112(s0)
   124ae:	3038                	fld	fa4,96(s0)
   124b0:	3031                	0x3031
   124b2:	370a                	fld	fa4,160(sp)
   124b4:	3636                	fld	fa2,360(sp)
   124b6:	3031                	0x3031
   124b8:	0a36                	slli	s4,s4,0xd
   124ba:	3631                	addiw	a2,a2,-20
   124bc:	3136                	fld	ft2,360(sp)
   124be:	3230                	fld	fa2,96(a2)
   124c0:	350a                	fld	fa0,160(sp)
   124c2:	3734                	fld	fa3,104(a4)
   124c4:	3435                	addiw	s0,s0,-19
   124c6:	0a32                	slli	s4,s4,0xc
   124c8:	3332                	fld	ft6,296(sp)
   124ca:	3138                	fld	fa4,96(a0)
   124cc:	3230                	fld	fa2,96(a2)
   124ce:	360a                	fld	fa2,160(sp)
   124d0:	3934                	fld	fa3,112(a0)
   124d2:	3439                	addiw	s0,s0,-18
   124d4:	35390a37          	lui	s4,0x35390
   124d8:	3132                	fld	ft2,296(sp)
   124da:	3638                	fld	fa4,104(a2)
   124dc:	350a                	fld	fa0,160(sp)
   124de:	3236                	fld	ft4,360(sp)
   124e0:	3736                	fld	fa4,360(sp)
   124e2:	35350a37          	lui	s4,0x35350
   124e6:	3032                	fld	ft0,296(sp)
   124e8:	3631                	addiw	a2,a2,-20
   124ea:	340a                	fld	fs0,160(sp)
   124ec:	3934                	fld	fa3,112(a0)
   124ee:	3536                	fld	fa0,360(sp)
   124f0:	0a38                	addi	a4,sp,280
   124f2:	35393033          	0x35393033
   124f6:	0a39                	addi	s4,s4,14
   124f8:	3338                	fld	fa4,96(a4)
   124fa:	3932                	fld	fs2,296(sp)
   124fc:	3336                	fld	ft6,360(sp)
   124fe:	390a                	fld	fs2,160(sp)
   12500:	3230                	fld	fa2,96(a2)
   12502:	3139                	addiw	sp,sp,-18
   12504:	0a39                	addi	s4,s4,14
   12506:	3736                	fld	fa4,360(sp)
   12508:	3430                	fld	fa2,104(s0)
   1250a:	360a3837          	lui	a6,0x360a3
   1250e:	3439                	addiw	s0,s0,-18
   12510:	0a393737          	lui	a4,0xa393
   12514:	3134                	fld	fa3,96(a0)
   12516:	3438                	fld	fa4,104(s0)
   12518:	0a38                	addi	a4,sp,280
   1251a:	30313333          	0x30313333
   1251e:	310a3337          	lui	t1,0x310a3
   12522:	3038                	fld	fa4,96(s0)
   12524:	3035                	0x3035
   12526:	35320a37          	lui	s4,0x35320
   1252a:	3130                	fld	fa2,96(a0)
   1252c:	3536                	fld	fa0,360(sp)
   1252e:	390a                	fld	fs2,160(sp)
   12530:	3031                	0x3031
   12532:	360a3037          	lui	zero,0x360a3
   12536:	3735                	addiw	a4,a4,-19
   12538:	0a353937          	lui	s2,0xa353
   1253c:	3531                	addiw	a0,a0,-20
   1253e:	35393837          	lui	a6,0x35393
   12542:	390a                	fld	fs2,160(sp)
   12544:	3731                	addiw	a4,a4,-20
   12546:	3134                	fld	fa3,96(a0)
   12548:	0a34                	addi	a3,sp,280
   1254a:	3432                	fld	fs0,296(sp)
   1254c:	3331                	addiw	t1,t1,-20
   1254e:	3431                	addiw	s0,s0,-20
   12550:	310a                	fld	ft2,160(sp)
   12552:	3138                	fld	fa4,96(a0)
   12554:	3838                	fld	fa4,112(s0)
   12556:	0a36                	slli	s4,s4,0xd
   12558:	3331                	addiw	t1,t1,-20
   1255a:	3232                	fld	ft4,296(sp)
   1255c:	0a36                	slli	s4,s4,0xd
   1255e:	3731                	addiw	a4,a4,-20
   12560:	3932                	fld	fs2,296(sp)
   12562:	39340a33          	0x39340a33
   12566:	3638                	fld	fa4,104(a2)
   12568:	330a3637          	lui	a2,0x330a3
   1256c:	3335                	addiw	t1,t1,-19
   1256e:	3336                	fld	ft6,360(sp)
   12570:	0a30                	addi	a2,sp,280
   12572:	3632                	fld	fa2,296(sp)
   12574:	3432                	fld	fs0,296(sp)
   12576:	3638                	fld	fa4,104(a2)
   12578:	370a                	fld	fa4,160(sp)
   1257a:	3031                	0x3031
   1257c:	3731                	addiw	a4,a4,-20
   1257e:	390a                	fld	fs2,160(sp)
   12580:	3131                	addiw	sp,sp,-20
   12582:	3539                	addiw	a0,a0,-18
   12584:	0a32                	slli	s4,s4,0xc
   12586:	37353333          	0x37353333
   1258a:	3835                	addiw	a6,a6,-19
   1258c:	360a                	fld	fa2,160(sp)
   1258e:	3230                	fld	fa2,96(a2)
   12590:	3336                	fld	ft6,360(sp)
   12592:	0a38                	addi	a4,sp,280
   12594:	3635                	addiw	a2,a2,-19
   12596:	3531                	addiw	a0,a0,-20
   12598:	3339                	addiw	t1,t1,-18
   1259a:	350a                	fld	fa0,160(sp)
   1259c:	39343937          	lui	s2,0x39343
   125a0:	30370a37          	lui	s4,0x30370
   125a4:	3432                	fld	fs0,296(sp)
   125a6:	320a3637          	lui	a2,0x320a3
   125aa:	3031                	0x3031
   125ac:	3631                	addiw	a2,a2,-20
   125ae:	0a39                	addi	s4,s4,14
   125b0:	3939                	addiw	s2,s2,-18
   125b2:	3232                	fld	ft4,296(sp)
   125b4:	3230                	fld	fa2,96(a2)
   125b6:	350a                	fld	fa0,160(sp)
   125b8:	3539                	addiw	a0,a0,-18
   125ba:	3131                	addiw	sp,sp,-20
   125bc:	0a30                	addi	a2,sp,280
   125be:	39313437          	lui	s0,0x39313
   125c2:	3431                	addiw	s0,s0,-20
   125c4:	390a                	fld	fs2,160(sp)
   125c6:	3534                	fld	fa3,104(a0)
   125c8:	3030                	fld	fa2,96(s0)
   125ca:	0a32                	slli	s4,s4,0xc
   125cc:	3736                	fld	fa4,360(sp)
   125ce:	3338                	fld	fa4,96(a4)
   125d0:	3635                	addiw	a2,a2,-19
   125d2:	370a                	fld	fa4,160(sp)
   125d4:	3535                	addiw	a0,a0,-19
   125d6:	3635                	addiw	a2,a2,-19
   125d8:	0a38                	addi	a4,sp,280
   125da:	3131                	addiw	sp,sp,-20
   125dc:	3934                	fld	fa3,112(a0)
   125de:	3635                	addiw	a2,a2,-19
   125e0:	390a                	fld	fs2,160(sp)
   125e2:	3232                	fld	ft4,296(sp)
   125e4:	3230                	fld	fa2,96(a2)
   125e6:	0a31                	addi	s4,s4,12
   125e8:	3236                	fld	ft4,360(sp)
   125ea:	3731                	addiw	a4,a4,-20
   125ec:	3031                	0x3031
   125ee:	340a                	fld	fs0,160(sp)
   125f0:	3039                	0x3039
   125f2:	3130                	fld	fa2,96(a0)
   125f4:	31320a37          	lui	s4,0x31320
   125f8:	32343133          	0x32343133
   125fc:	370a                	fld	fa4,160(sp)
   125fe:	3336                	fld	ft6,360(sp)
   12600:	0a353133          	0xa353133
   12604:	3731                	addiw	a4,a4,-20
   12606:	3931                	addiw	s2,s2,-20
   12608:	3131                	addiw	sp,sp,-20
   1260a:	360a                	fld	fa2,160(sp)
   1260c:	3836                	fld	fa6,360(sp)
   1260e:	3030                	fld	fa2,96(s0)
   12610:	0a31                	addi	s4,s4,12
   12612:	3231                	addiw	tp,tp,-20
   12614:	3136                	fld	ft2,360(sp)
   12616:	3334                	fld	fa3,96(a4)
   12618:	320a                	fld	ft4,160(sp)
   1261a:	3430                	fld	fa2,104(s0)
   1261c:	3439                	addiw	s0,s0,-18
   1261e:	30370a37          	lui	s4,0x30370
   12622:	3739                	addiw	a4,a4,-18
   12624:	3335                	addiw	t1,t1,-19
   12626:	350a                	fld	fa0,160(sp)
   12628:	3236                	fld	ft4,360(sp)
   1262a:	3339                	addiw	t1,t1,-18
   1262c:	0a36                	slli	s4,s4,0xd
   1262e:	3036                	fld	ft0,360(sp)
   12630:	39303937          	lui	s2,0x39303
   12634:	360a                	fld	fa2,160(sp)
   12636:	3239                	addiw	tp,tp,-18
   12638:	3638                	fld	fa4,104(a2)
   1263a:	0a35                	addi	s4,s4,13
   1263c:	31383533          	0x31383533
   12640:	370a3037          	lui	zero,0x370a3
   12644:	3530                	fld	fa2,104(a0)
   12646:	3335                	addiw	t1,t1,-19
   12648:	38380a33          	0x38380a33
   1264c:	36343337          	lui	t1,0x36343
   12650:	320a                	fld	ft4,160(sp)
   12652:	3539                	addiw	a0,a0,-18
   12654:	3132                	fld	ft2,296(sp)
   12656:	340a                	fld	fs0,160(sp)
   12658:	3036                	fld	ft0,360(sp)
   1265a:	3934                	fld	fa3,112(a0)
   1265c:	0a32                	slli	s4,s4,0xc
   1265e:	3534                	fld	fa3,104(a0)
   12660:	3230                	fld	fa2,96(a2)
   12662:	3131                	addiw	sp,sp,-20
   12664:	320a                	fld	ft4,160(sp)
   12666:	35373337          	lui	t1,0x35373
   1266a:	0a39                	addi	s4,s4,14
   1266c:	3634                	fld	fa3,104(a2)
   1266e:	3632                	fld	fa2,296(sp)
   12670:	3234                	fld	fa3,96(a2)
   12672:	360a                	fld	fa2,160(sp)
   12674:	3834                	fld	fa3,112(s0)
   12676:	3139                	addiw	sp,sp,-18
   12678:	0a39                	addi	s4,s4,14
   1267a:	3332                	fld	ft6,296(sp)
   1267c:	3636                	fld	fa2,360(sp)
   1267e:	350a3933          	0x350a3933
   12682:	3234                	fld	fa3,96(a2)
   12684:	3034                	fld	fa3,96(s0)
   12686:	0a36                	slli	s4,s4,0xd
   12688:	3032                	fld	ft0,296(sp)
   1268a:	3738                	fld	fa4,104(a4)
   1268c:	3732                	fld	fa4,296(sp)
   1268e:	320a                	fld	ft4,160(sp)
   12690:	3139                	addiw	sp,sp,-18
   12692:	3032                	fld	ft0,296(sp)
   12694:	0a39                	addi	s4,s4,14
   12696:	3032                	fld	ft0,296(sp)
   12698:	3439                	addiw	s0,s0,-18
   1269a:	320a3033          	0x320a3033
   1269e:	3638                	fld	fa4,104(a2)
   126a0:	3336                	fld	ft6,360(sp)
   126a2:	33380a37          	lui	s4,0x33380
   126a6:	3732                	fld	fa4,296(sp)
   126a8:	310a3737          	lui	a4,0x310a3
   126ac:	3838                	fld	fa4,112(s0)
   126ae:	3739                	addiw	a4,a4,-18
   126b0:	0a30                	addi	a2,sp,280
   126b2:	35363633          	0x35363633
   126b6:	340a3637          	lui	a2,0x340a3
   126ba:	38343337          	lui	t1,0x38343
   126be:	0a39                	addi	s4,s4,14
   126c0:	3736                	fld	fa4,360(sp)
   126c2:	3634                	fld	fa3,104(a2)
   126c4:	3335                	addiw	t1,t1,-19
   126c6:	330a                	fld	ft6,160(sp)
   126c8:	3735                	addiw	a4,a4,-19
   126ca:	0a303637          	lui	a2,0xa303
   126ce:	3732                	fld	fa4,296(sp)
   126d0:	3730                	fld	fa2,104(a4)
   126d2:	3139                	addiw	sp,sp,-18
   126d4:	360a                	fld	fa2,160(sp)
   126d6:	3736                	fld	fa4,360(sp)
   126d8:	3231                	addiw	tp,tp,-20
   126da:	0a39                	addi	s4,s4,14
   126dc:	3434                	fld	fa3,104(s0)
   126de:	39343437          	lui	s0,0x39343
   126e2:	360a                	fld	fa2,160(sp)
   126e4:	3732                	fld	fa4,296(sp)
   126e6:	0a383833          	0xa383833
   126ea:	3835                	addiw	a6,a6,-19
   126ec:	3531                	addiw	a0,a0,-20
   126ee:	360a3637          	lui	a2,0x360a3
   126f2:	3234                	fld	fa3,96(a2)
   126f4:	0a373537          	lui	a0,0xa373
   126f8:	39363937          	lui	s2,0x39363
   126fc:	3330                	fld	fa2,96(a4)
   126fe:	340a                	fld	fs0,160(sp)
   12700:	3836                	fld	fa6,360(sp)
   12702:	3238                	fld	fa4,96(a2)
   12704:	0a38                	addi	a4,sp,280
   12706:	3039                	0x3039
   12708:	3535                	addiw	a0,a0,-19
   1270a:	340a3137          	lui	sp,0x340a3
   1270e:	3932                	fld	fs2,296(sp)
   12710:	3136                	fld	ft2,360(sp)
   12712:	0a32                	slli	s4,s4,0xc
   12714:	3336                	fld	ft6,360(sp)
   12716:	3034                	fld	fa3,96(s0)
   12718:	3034                	fld	fa3,96(s0)
   1271a:	390a                	fld	fs2,160(sp)
   1271c:	35363733          	0x35363733
   12720:	0a32                	slli	s4,s4,0xc
   12722:	3339                	addiw	t1,t1,-18
   12724:	35393737          	lui	a4,0x35393
   12728:	390a                	fld	fs2,160(sp)
   1272a:	30303637          	lui	a2,0x30303
   1272e:	0a38                	addi	a4,sp,280
   12730:	3034                	fld	fa3,96(s0)
   12732:	3731                	addiw	a4,a4,-20
   12734:	3232                	fld	ft4,296(sp)
   12736:	370a                	fld	fa4,160(sp)
   12738:	34313537          	lui	a0,0x34313
   1273c:	0a30                	addi	a2,sp,280
   1273e:	3334                	fld	fa3,96(a4)
   12740:	3932                	fld	fs2,296(sp)
   12742:	0a35                	addi	s4,s4,13
   12744:	3331                	addiw	t1,t1,-20
   12746:	3931                	addiw	s2,s2,-20
   12748:	3339                	addiw	t1,t1,-18
   1274a:	370a                	fld	fa4,160(sp)
   1274c:	3831                	addiw	a6,a6,-20
   1274e:	3630                	fld	fa2,104(a2)
   12750:	0a32                	slli	s4,s4,0xc
   12752:	31373733          	0x31373733
   12756:	3536                	fld	fa0,360(sp)
   12758:	370a                	fld	fa4,160(sp)
   1275a:	35323833          	0x35323833
   1275e:	0a32                	slli	s4,s4,0xc
   12760:	3932                	fld	fs2,296(sp)
   12762:	3330                	fld	fa2,96(a4)
   12764:	3531                	addiw	a0,a0,-20
   12766:	380a                	fld	fa6,160(sp)
   12768:	3838                	fld	fa4,112(s0)
   1276a:	3831                	addiw	a6,a6,-20
   1276c:	31360a37          	lui	s4,0x31360
   12770:	3539                	addiw	a0,a0,-18
   12772:	3538                	fld	fa4,104(a0)
   12774:	330a                	fld	ft6,160(sp)
   12776:	3932                	fld	fs2,296(sp)
   12778:	0a363937          	lui	s2,0xa363
   1277c:	3934                	fld	fa3,112(a0)
   1277e:	3735                	addiw	a4,a4,-19
	...

0000000000012978 <c>:
   12978:	380a                	fld	fa6,160(sp)
   1297a:	3736                	fld	fa4,360(sp)
   1297c:	3431                	addiw	s0,s0,-20
   1297e:	0a35                	addi	s4,s4,13
   12980:	3331                	addiw	t1,t1,-20
   12982:	3339                	addiw	t1,t1,-18
   12984:	3639                	addiw	a2,a2,-18
   12986:	390a                	fld	fs2,160(sp)
   12988:	3231                	addiw	tp,tp,-20
   1298a:	3731                	addiw	a4,a4,-20
   1298c:	0a36                	slli	s4,s4,0xd
   1298e:	3739                	addiw	a4,a4,-18
   12990:	3432                	fld	fs0,296(sp)
   12992:	0a34                	addi	a3,sp,280
   12994:	3332                	fld	ft6,296(sp)
   12996:	3630                	fld	fa2,104(a2)
   12998:	3135                	addiw	sp,sp,-19
   1299a:	360a                	fld	fa2,160(sp)
   1299c:	3039                	0x3039
   1299e:	3332                	fld	ft6,296(sp)
   129a0:	0a32                	slli	s4,s4,0xc
   129a2:	3931                	addiw	s2,s2,-20
   129a4:	0a383537          	lui	a0,0xa383
   129a8:	34363237          	lui	tp,0x34363
   129ac:	3035                	0x3035
   129ae:	330a                	fld	ft6,160(sp)
   129b0:	3738                	fld	fa4,104(a4)
   129b2:	3335                	addiw	t1,t1,-19
   129b4:	0a30                	addi	a2,sp,280
   129b6:	30363233          	0x30363233
   129ba:	3135                	addiw	sp,sp,-19
   129bc:	320a                	fld	ft4,160(sp)
   129be:	3436                	fld	fs0,360(sp)
   129c0:	3736                	fld	fa4,360(sp)
   129c2:	0a35                	addi	s4,s4,13
   129c4:	3939                	addiw	s2,s2,-18
   129c6:	3836                	fld	fa6,360(sp)
   129c8:	3230                	fld	fa2,96(a2)
   129ca:	330a                	fld	ft6,160(sp)
   129cc:	3035                	0x3035
   129ce:	3539                	addiw	a0,a0,-18
   129d0:	0a30                	addi	a2,sp,280
   129d2:	33313737          	lui	a4,0x33313
   129d6:	3036                	fld	ft0,360(sp)
   129d8:	330a                	fld	ft6,160(sp)
   129da:	3532                	fld	fa0,296(sp)
   129dc:	3330                	fld	fa2,96(a4)
   129de:	36340a37          	lui	s4,0x36340
   129e2:	3036                	fld	ft0,360(sp)
   129e4:	3234                	fld	fa3,96(a2)
   129e6:	360a                	fld	fa2,160(sp)
   129e8:	3439                	addiw	s0,s0,-18
   129ea:	0a393133          	0xa393133
   129ee:	3831                	addiw	a6,a6,-20
   129f0:	3338                	fld	fa4,96(a4)
   129f2:	0a31                	addi	s4,s4,12
   129f4:	3735                	addiw	a4,a4,-19
   129f6:	3638                	fld	fa4,104(a2)
   129f8:	390a3637          	lui	a2,0x390a3
   129fc:	39363737          	lui	a4,0x39363
   12a00:	0a30                	addi	a2,sp,280
   12a02:	3135                	addiw	sp,sp,-19
   12a04:	3536                	fld	fa0,360(sp)
   12a06:	3232                	fld	ft4,296(sp)
   12a08:	320a                	fld	ft4,160(sp)
   12a0a:	33333237          	lui	tp,0x33333
   12a0e:	0a35                	addi	s4,s4,13
   12a10:	3038                	fld	fa4,96(s0)
   12a12:	3332                	fld	ft6,296(sp)
   12a14:	3534                	fld	fa3,104(a0)
   12a16:	370a                	fld	fa4,160(sp)
   12a18:	36383833          	0x36383833
   12a1c:	330a                	fld	ft6,160(sp)
   12a1e:	3732                	fld	fa4,296(sp)
   12a20:	3139                	addiw	sp,sp,-18
   12a22:	0a32                	slli	s4,s4,0xc
   12a24:	3139                	addiw	sp,sp,-18
   12a26:	3030                	fld	fa2,96(s0)
   12a28:	3230                	fld	fa2,96(a2)
   12a2a:	350a                	fld	fa0,160(sp)
   12a2c:	33373037          	lui	zero,0x33373
   12a30:	350a                	fld	fa0,160(sp)
   12a32:	3835                	addiw	a6,a6,-19
   12a34:	3634                	fld	fa3,104(a2)
   12a36:	34360a33          	0x34360a33
   12a3a:	3131                	addiw	sp,sp,-20
   12a3c:	3735                	addiw	a4,a4,-19
   12a3e:	350a                	fld	fa0,160(sp)
   12a40:	3131                	addiw	sp,sp,-20
   12a42:	3534                	fld	fa3,104(a0)
   12a44:	370a                	fld	fa4,160(sp)
   12a46:	3239                	addiw	tp,tp,-18
   12a48:	0a353133          	0xa353133
   12a4c:	3934                	fld	fa3,112(a0)
   12a4e:	3839                	addiw	a6,a6,-18
   12a50:	3438                	fld	fa4,104(s0)
   12a52:	350a                	fld	fa0,160(sp)
   12a54:	34323537          	lui	a0,0x34323
   12a58:	0a36                	slli	s4,s4,0xd
   12a5a:	3239                	addiw	tp,tp,-18
   12a5c:	3032                	fld	ft0,296(sp)
   12a5e:	310a3037          	lui	zero,0x310a3
   12a62:	3035                	0x3035
   12a64:	3932                	fld	fs2,296(sp)
   12a66:	0a32                	slli	s4,s4,0xc
   12a68:	3138                	fld	fa4,96(a0)
   12a6a:	3734                	fld	fa3,104(a4)
   12a6c:	3631                	addiw	a2,a2,-20
   12a6e:	370a                	fld	fa4,160(sp)
   12a70:	3539                	addiw	a0,a0,-18
   12a72:	3730                	fld	fa2,104(a4)
   12a74:	0a34                	addi	a3,sp,280
   12a76:	3638                	fld	fa4,104(a2)
   12a78:	3138                	fld	fa4,96(a0)
   12a7a:	3038                	fld	fa4,96(s0)
   12a7c:	330a                	fld	ft6,160(sp)
   12a7e:	3231                	addiw	tp,tp,-20
   12a80:	3938                	fld	fa4,112(a0)
   12a82:	0a30                	addi	a2,sp,280
   12a84:	38323537          	lui	a0,0x38323
   12a88:	3535                	addiw	a0,a0,-19
   12a8a:	330a                	fld	ft6,160(sp)
   12a8c:	3539                	addiw	a0,a0,-18
   12a8e:	3336                	fld	ft6,360(sp)
   12a90:	0a35                	addi	s4,s4,13
   12a92:	3139                	addiw	sp,sp,-18
   12a94:	3432                	fld	fs0,296(sp)
   12a96:	3631                	addiw	a2,a2,-20
   12a98:	390a                	fld	fs2,160(sp)
   12a9a:	3536                	fld	fa0,360(sp)
   12a9c:	3132                	fld	ft2,296(sp)
   12a9e:	0a30                	addi	a2,sp,280
   12aa0:	31333533          	0x31333533
   12aa4:	3131                	addiw	sp,sp,-20
   12aa6:	390a                	fld	fs2,160(sp)
   12aa8:	33303737          	lui	a4,0x33303
   12aac:	31350a37          	lui	s4,0x31350
   12ab0:	3136                	fld	ft2,360(sp)
   12ab2:	3931                	addiw	s2,s2,-20
   12ab4:	360a                	fld	fa2,160(sp)
   12ab6:	3034                	fld	fa3,96(s0)
   12ab8:	3838                	fld	fa4,112(s0)
   12aba:	0a30                	addi	a2,sp,280
   12abc:	3831                	addiw	a6,a6,-20
   12abe:	3539                	addiw	a0,a0,-18
   12ac0:	380a3937          	lui	s2,0x380a3
   12ac4:	3634                	fld	fa3,104(a2)
   12ac6:	3834                	fld	fa3,112(s0)
   12ac8:	0a35                	addi	s4,s4,13
   12aca:	3538                	fld	fa4,104(a0)
   12acc:	3936                	fld	fs2,360(sp)
   12ace:	3730                	fld	fa2,104(a4)
   12ad0:	350a                	fld	fa0,160(sp)
   12ad2:	39353133          	0x39353133
   12ad6:	35320a33          	0x35320a33
   12ada:	3830                	fld	fa2,112(s0)
   12adc:	3331                	addiw	t1,t1,-20
   12ade:	360a                	fld	fa2,160(sp)
   12ae0:	3731                	addiw	a4,a4,-20
   12ae2:	3939                	addiw	s2,s2,-18
   12ae4:	0a39                	addi	s4,s4,14
   12ae6:	3635                	addiw	a2,a2,-19
   12ae8:	3939                	addiw	s2,s2,-18
   12aea:	3039                	0x3039
   12aec:	380a                	fld	fa6,160(sp)
   12aee:	3936                	fld	fs2,360(sp)
   12af0:	3932                	fld	fs2,296(sp)
   12af2:	0a31                	addi	s4,s4,12
   12af4:	3035                	0x3035
   12af6:	34323833          	0x34323833
   12afa:	340a                	fld	fs0,160(sp)
   12afc:	3936                	fld	fs2,360(sp)
   12afe:	0a373933          	0xa373933
   12b02:	3931                	addiw	s2,s2,-20
   12b04:	3539                	addiw	a0,a0,-18
   12b06:	3138                	fld	fa4,96(a0)
   12b08:	350a                	fld	fa0,160(sp)
   12b0a:	38303537          	lui	a0,0x38303
   12b0e:	0a32                	slli	s4,s4,0xc
   12b10:	3436                	fld	fs0,360(sp)
   12b12:	34303133          	0x34303133
   12b16:	390a                	fld	fs2,160(sp)
   12b18:	34303533          	0x34303533
   12b1c:	0a35                	addi	s4,s4,13
   12b1e:	3332                	fld	ft6,296(sp)
   12b20:	3730                	fld	fa2,104(a4)
   12b22:	3432                	fld	fs0,296(sp)
   12b24:	350a                	fld	fa0,160(sp)
   12b26:	3636                	fld	fa2,360(sp)
   12b28:	0a333037          	lui	zero,0xa333
   12b2c:	3031                	0x3031
   12b2e:	3631                	addiw	a2,a2,-20
   12b30:	340a3933          	0x340a3933
   12b34:	3635                	addiw	a2,a2,-19
   12b36:	3734                	fld	fa3,104(a4)
   12b38:	31340a33          	0x31340a33
   12b3c:	3231                	addiw	tp,tp,-20
   12b3e:	3539                	addiw	a0,a0,-18
   12b40:	370a                	fld	fa4,160(sp)
   12b42:	3331                	addiw	t1,t1,-20
   12b44:	3336                	fld	ft6,360(sp)
   12b46:	0a38                	addi	a4,sp,280
   12b48:	3532                	fld	fa0,296(sp)
   12b4a:	3035                	0x3035
   12b4c:	3434                	fld	fa3,104(s0)
   12b4e:	390a                	fld	fs2,160(sp)
   12b50:	3134                	fld	fa3,96(a0)
   12b52:	3930                	fld	fa2,112(a0)
   12b54:	0a39                	addi	s4,s4,14
   12b56:	3735                	addiw	a4,a4,-19
   12b58:	3732                	fld	fa4,296(sp)
   12b5a:	0a32                	slli	s4,s4,0xc
   12b5c:	3031                	0x3031
   12b5e:	3332                	fld	ft6,296(sp)
   12b60:	3830                	fld	fa2,112(s0)
   12b62:	350a                	fld	fa0,160(sp)
   12b64:	3536                	fld	fa0,360(sp)
   12b66:	3338                	fld	fa4,96(a4)
   12b68:	310a                	fld	ft2,160(sp)
   12b6a:	3834                	fld	fa3,112(s0)
   12b6c:	3936                	fld	fs2,360(sp)
   12b6e:	0a34                	addi	a3,sp,280
   12b70:	3535                	addiw	a0,a0,-19
   12b72:	3334                	fld	fa3,96(a4)
   12b74:	3235                	addiw	tp,tp,-19
   12b76:	370a                	fld	fa4,160(sp)
   12b78:	3835                	addiw	a6,a6,-19
   12b7a:	3934                	fld	fa3,112(a0)
   12b7c:	0a31                	addi	s4,s4,12
   12b7e:	3031                	0x3031
   12b80:	3135                	addiw	sp,sp,-19
   12b82:	3232                	fld	ft4,296(sp)
   12b84:	350a                	fld	fa0,160(sp)
   12b86:	39323633          	0x39323633
   12b8a:	0a31                	addi	s4,s4,12
   12b8c:	3136                	fld	ft2,360(sp)
   12b8e:	3336                	fld	ft6,360(sp)
   12b90:	3538                	fld	fa4,104(a0)
   12b92:	380a                	fld	fa6,160(sp)
   12b94:	3236                	fld	ft4,360(sp)
   12b96:	3138                	fld	fa4,96(a0)
   12b98:	0a30                	addi	a2,sp,280
   12b9a:	3635                	addiw	a2,a2,-19
   12b9c:	3230                	fld	fa2,96(a2)
   12b9e:	3435                	addiw	s0,s0,-19
   12ba0:	380a                	fld	fa6,160(sp)
   12ba2:	3935                	addiw	s2,s2,-19
   12ba4:	3935                	addiw	s2,s2,-19
   12ba6:	0a35                	addi	s4,s4,13
   12ba8:	3135                	addiw	sp,sp,-19
   12baa:	3435                	addiw	s0,s0,-19
   12bac:	3438                	fld	fa4,104(s0)
   12bae:	370a                	fld	fa4,160(sp)
   12bb0:	36303933          	0x36303933
   12bb4:	0a35                	addi	s4,s4,13
   12bb6:	3435                	addiw	s0,s0,-19
   12bb8:	30303137          	lui	sp,0x30303
   12bbc:	310a                	fld	ft2,160(sp)
   12bbe:	39323337          	lui	t1,0x39323
   12bc2:	0a34                	addi	a3,sp,280
   12bc4:	3832                	fld	fa6,296(sp)
   12bc6:	3231                	addiw	tp,tp,-20
   12bc8:	3131                	addiw	sp,sp,-20
   12bca:	350a                	fld	fa0,160(sp)
   12bcc:	3535                	addiw	a0,a0,-19
   12bce:	0a373333          	0xa373333
   12bd2:	35393233          	0x35393233
   12bd6:	3638                	fld	fa4,104(a2)
   12bd8:	330a                	fld	ft6,160(sp)
   12bda:	3535                	addiw	a0,a0,-19
   12bdc:	3539                	addiw	a0,a0,-18
   12bde:	0a38                	addi	a4,sp,280
   12be0:	3334                	fld	fa3,96(a4)
   12be2:	34323337          	lui	t1,0x34323
   12be6:	370a                	fld	fa4,160(sp)
   12be8:	3638                	fld	fa4,104(a2)
   12bea:	3839                	addiw	a6,a6,-18
   12bec:	0a38                	addi	a4,sp,280
   12bee:	0a373637          	lui	a2,0xa373
   12bf2:	3036                	fld	ft0,360(sp)
   12bf4:	39373237          	lui	tp,0x39373
   12bf8:	310a                	fld	ft2,160(sp)
   12bfa:	3230                	fld	fa2,96(a2)
   12bfc:	0a343637          	lui	a2,0xa343
   12c00:	33343033          	0x33343033
   12c04:	3536                	fld	fa0,360(sp)
   12c06:	310a                	fld	ft2,160(sp)
   12c08:	3334                	fld	fa3,96(a4)
   12c0a:	0a323437          	lui	s0,0xa323
   12c0e:	32373833          	0x32373833
   12c12:	3134                	fld	fa3,96(a0)
   12c14:	320a                	fld	ft4,160(sp)
   12c16:	3838                	fld	fa4,112(s0)
   12c18:	3730                	fld	fa2,104(a4)
   12c1a:	350a                	fld	fa0,160(sp)
   12c1c:	3338                	fld	fa4,96(a4)
   12c1e:	3630                	fld	fa2,104(a2)
   12c20:	37390a37          	lui	s4,0x37390
   12c24:	35383633          	0x35383633
   12c28:	360a                	fld	fa2,160(sp)
   12c2a:	3035                	0x3035
   12c2c:	3138                	fld	fa4,96(a0)
   12c2e:	0a32                	slli	s4,s4,0xc
   12c30:	3139                	addiw	sp,sp,-18
   12c32:	3339                	addiw	t1,t1,-18
   12c34:	3435                	addiw	s0,s0,-19
   12c36:	320a                	fld	ft4,160(sp)
   12c38:	34323837          	lui	a6,0x34323
   12c3c:	0a34                	addi	a3,sp,280
   12c3e:	3435                	addiw	s0,s0,-19
   12c40:	3730                	fld	fa2,104(a4)
   12c42:	3739                	addiw	a4,a4,-18
   12c44:	340a                	fld	fs0,160(sp)
   12c46:	36313037          	lui	zero,0x36313
   12c4a:	36380a33          	0x36380a33
   12c4e:	0a303733          	0xa303733
   12c52:	3834                	fld	fa3,112(s0)
   12c54:	34383437          	lui	s0,0x34383
   12c58:	340a                	fld	fs0,160(sp)
   12c5a:	31313237          	lui	tp,0x31313
   12c5e:	0a34                	addi	a3,sp,280
   12c60:	39303333          	0x39303333
   12c64:	3536                	fld	fa0,360(sp)
   12c66:	380a                	fld	fa6,160(sp)
   12c68:	3030                	fld	fa2,96(s0)
   12c6a:	3936                	fld	fs2,360(sp)
   12c6c:	0a34                	addi	a3,sp,280
   12c6e:	32313037          	lui	zero,0x32313
   12c72:	3231                	addiw	tp,tp,-20
   12c74:	360a                	fld	fa2,160(sp)
   12c76:	3430                	fld	fa2,104(s0)
   12c78:	3638                	fld	fa4,104(a2)
   12c7a:	0a39                	addi	s4,s4,14
   12c7c:	3539                	addiw	a0,a0,-18
   12c7e:	3238                	fld	fa4,96(a2)
   12c80:	3032                	fld	ft0,296(sp)
   12c82:	370a                	fld	fa4,160(sp)
   12c84:	3935                	addiw	s2,s2,-19
   12c86:	3538                	fld	fa4,104(a0)
   12c88:	0a39                	addi	s4,s4,14
   12c8a:	3432                	fld	fs0,296(sp)
   12c8c:	37393033          	0x37393033
   12c90:	320a                	fld	ft4,160(sp)
   12c92:	3638                	fld	fa4,104(a2)
   12c94:	3730                	fld	fa2,104(a4)
   12c96:	0a36                	slli	s4,s4,0xd
   12c98:	3736                	fld	fa4,360(sp)
   12c9a:	3234                	fld	fa3,96(a2)
   12c9c:	3238                	fld	fa4,96(a2)
   12c9e:	390a                	fld	fs2,160(sp)
   12ca0:	31363637          	lui	a2,0x31363
   12ca4:	0a30                	addi	a2,sp,280
   12ca6:	3438                	fld	fa4,104(s0)
   12ca8:	3735                	addiw	a4,a4,-19
   12caa:	3132                	fld	ft2,296(sp)
   12cac:	340a                	fld	fs0,160(sp)
   12cae:	3130                	fld	fa2,96(a0)
   12cb0:	3131                	addiw	sp,sp,-20
   12cb2:	30320a37          	lui	s4,0x30320
   12cb6:	35313437          	lui	s0,0x35313
   12cba:	320a                	fld	ft4,160(sp)
   12cbc:	38323333          	0x38323333
   12cc0:	310a                	fld	ft2,160(sp)
   12cc2:	3535                	addiw	a0,a0,-19
   12cc4:	3635                	addiw	a2,a2,-19
   12cc6:	0a36                	slli	s4,s4,0xd
   12cc8:	3634                	fld	fa3,104(a2)
   12cca:	3732                	fld	fa4,296(sp)
   12ccc:	360a3537          	lui	a0,0x360a3
   12cd0:	3936                	fld	fs2,360(sp)
   12cd2:	3039                	0x3039
   12cd4:	390a                	fld	fs2,160(sp)
   12cd6:	3039                	0x3039
   12cd8:	350a3033          	0x350a3033
   12cdc:	3839                	addiw	a6,a6,-18
   12cde:	3730                	fld	fa2,104(a4)
   12ce0:	0a34                	addi	a3,sp,280
   12ce2:	3534                	fld	fa3,104(a0)
   12ce4:	3438                	fld	fa4,104(s0)
   12ce6:	390a3037          	lui	zero,0x390a3
   12cea:	31313837          	lui	a6,0x31313
   12cee:	0a35                	addi	s4,s4,13
   12cf0:	38363837          	lui	a6,0x38363
   12cf4:	3034                	fld	fa3,96(s0)
   12cf6:	360a                	fld	fa2,160(sp)
   12cf8:	3236                	fld	ft4,360(sp)
   12cfa:	0a333333          	0xa333333
   12cfe:	36333137          	lui	sp,0x36333
   12d02:	3538                	fld	fa4,104(a0)
   12d04:	360a                	fld	fa2,160(sp)
   12d06:	30323737          	lui	a4,0x30323
   12d0a:	0a39                	addi	s4,s4,14
   12d0c:	3631                	addiw	a2,a2,-20
   12d0e:	3730                	fld	fa2,104(a4)
   12d10:	3532                	fld	fa0,296(sp)
   12d12:	350a                	fld	fa0,160(sp)
   12d14:	3530                	fld	fa2,104(a0)
   12d16:	3039                	0x3039
   12d18:	0a38                	addi	a4,sp,280
   12d1a:	3138                	fld	fa4,96(a0)
   12d1c:	3939                	addiw	s2,s2,-18
   12d1e:	0a39                	addi	s4,s4,14
   12d20:	33333737          	lui	a4,0x33333
   12d24:	3630                	fld	fa2,104(a2)
   12d26:	350a                	fld	fa0,160(sp)
   12d28:	3431                	addiw	s0,s0,-20
   12d2a:	0a323137          	lui	sp,0xa323
   12d2e:	3631                	addiw	a2,a2,-20
   12d30:	3030                	fld	fa2,96(s0)
   12d32:	340a3833          	0x340a3833
   12d36:	3430                	fld	fa2,104(s0)
   12d38:	0a323333          	0xa323333
   12d3c:	3335                	addiw	t1,t1,-19
   12d3e:	39353533          	0x39353533
   12d42:	350a                	fld	fa0,160(sp)
   12d44:	38363333          	0x38363333
   12d48:	0a34                	addi	a3,sp,280
   12d4a:	3331                	addiw	t1,t1,-20
   12d4c:	3339                	addiw	t1,t1,-18
   12d4e:	3436                	fld	fs0,360(sp)
   12d50:	390a                	fld	fs2,160(sp)
   12d52:	38383233          	0x38383233
   12d56:	0a36                	slli	s4,s4,0xd
   12d58:	34363733          	0x34363733
   12d5c:	3731                	addiw	a4,a4,-20
   12d5e:	370a                	fld	fa4,160(sp)
   12d60:	3136                	fld	ft2,360(sp)
   12d62:	3335                	addiw	t1,t1,-19
   12d64:	0a31                	addi	s4,s4,12
   12d66:	34323637          	lui	a2,0x34323
   12d6a:	320a3233          	0x320a3233
   12d6e:	34343533          	0x34343533
   12d72:	0a36                	slli	s4,s4,0xd
   12d74:	3739                	addiw	a4,a4,-18
   12d76:	3434                	fld	fa3,104(s0)
   12d78:	3935                	addiw	s2,s2,-19
   12d7a:	370a                	fld	fa4,160(sp)
   12d7c:	33333937          	lui	s2,0x33333
   12d80:	0a34                	addi	a3,sp,280
   12d82:	3535                	addiw	a0,a0,-19
   12d84:	3831                	addiw	a6,a6,-20
   12d86:	3635                	addiw	a2,a2,-19
   12d88:	370a                	fld	fa4,160(sp)
   12d8a:	3130                	fld	fa2,96(a0)
   12d8c:	3238                	fld	fa4,96(a2)
   12d8e:	0a38                	addi	a4,sp,280
   12d90:	3634                	fld	fa3,104(a2)
   12d92:	3936                	fld	fs2,360(sp)
   12d94:	390a3637          	lui	a2,0x390a3
   12d98:	3232                	fld	ft4,296(sp)
   12d9a:	0a323537          	lui	a0,0xa323
   12d9e:	3732                	fld	fa4,296(sp)
   12da0:	3736                	fld	fa4,360(sp)
   12da2:	360a3237          	lui	tp,0x360a3
   12da6:	3136                	fld	ft2,360(sp)
   12da8:	3036                	fld	ft0,360(sp)
   12daa:	0a36                	slli	s4,s4,0xd
   12dac:	3234                	fld	fa3,96(a2)
   12dae:	3236                	fld	ft4,360(sp)
   12db0:	3139                	addiw	sp,sp,-18
   12db2:	310a                	fld	ft2,160(sp)
   12db4:	3038                	fld	fa4,96(s0)
   12db6:	3736                	fld	fa4,360(sp)
   12db8:	0a34                	addi	a3,sp,280
   12dba:	3831                	addiw	a6,a6,-20
   12dbc:	3135                	addiw	sp,sp,-19
   12dbe:	3435                	addiw	s0,s0,-19
   12dc0:	350a                	fld	fa0,160(sp)
   12dc2:	35353437          	lui	s0,0x35353
   12dc6:	0a32                	slli	s4,s4,0xc
   12dc8:	32383837          	lui	a6,0x32383
   12dcc:	3332                	fld	ft6,296(sp)
   12dce:	330a                	fld	ft6,160(sp)
   12dd0:	3532                	fld	fa0,296(sp)
   12dd2:	3236                	fld	ft4,360(sp)
   12dd4:	0a31                	addi	s4,s4,12
   12dd6:	3236                	fld	ft4,360(sp)
   12dd8:	32333537          	lui	a0,0x32333
   12ddc:	340a                	fld	fs0,160(sp)
   12dde:	3736                	fld	fa4,360(sp)
   12de0:	3232                	fld	ft4,296(sp)
   12de2:	0a35                	addi	s4,s4,13
   12de4:	39373137          	lui	sp,0x39373
   12de8:	3335                	addiw	t1,t1,-19
   12dea:	390a                	fld	fs2,160(sp)
   12dec:	3736                	fld	fa4,360(sp)
   12dee:	3339                	addiw	t1,t1,-18
   12df0:	370a                	fld	fa4,160(sp)
   12df2:	3738                	fld	fa4,104(a4)
   12df4:	3934                	fld	fa3,112(a0)
   12df6:	0a32                	slli	s4,s4,0xc
   12df8:	3132                	fld	ft2,296(sp)
   12dfa:	3334                	fld	fa3,96(a4)
   12dfc:	3339                	addiw	t1,t1,-18
   12dfe:	350a                	fld	fa0,160(sp)
   12e00:	3831                	addiw	a6,a6,-20
   12e02:	3632                	fld	fa2,296(sp)
   12e04:	0a36                	slli	s4,s4,0xd
   12e06:	36303937          	lui	s2,0x36303
   12e0a:	3038                	fld	fa4,96(s0)
   12e0c:	310a                	fld	ft2,160(sp)
   12e0e:	37343833          	0x37343833
   12e12:	0a35                	addi	s4,s4,13
   12e14:	3935                	addiw	s2,s2,-19
   12e16:	3135                	addiw	sp,sp,-19
   12e18:	370a3637          	lui	a2,0x370a3
   12e1c:	3334                	fld	fa3,96(a4)
   12e1e:	3332                	fld	ft6,296(sp)
   12e20:	0a35                	addi	s4,s4,13
   12e22:	3534                	fld	fa3,104(a0)
   12e24:	3435                	addiw	s0,s0,-19
   12e26:	3836                	fld	fa6,360(sp)
   12e28:	320a                	fld	ft4,160(sp)
   12e2a:	3731                	addiw	a4,a4,-20
   12e2c:	3432                	fld	fs0,296(sp)
   12e2e:	0a38                	addi	a4,sp,280
   12e30:	33373737          	lui	a4,0x33373
   12e34:	3835                	addiw	a6,a6,-19
   12e36:	340a                	fld	fs0,160(sp)
   12e38:	3739                	addiw	a4,a4,-18
   12e3a:	3138                	fld	fa4,96(a0)
   12e3c:	0a34                	addi	a3,sp,280
   12e3e:	3334                	fld	fa3,96(a4)
   12e40:	3132                	fld	ft2,296(sp)
   12e42:	350a3633          	0x350a3633
   12e46:	3630                	fld	fa2,104(a2)
   12e48:	3830                	fld	fa2,112(s0)
   12e4a:	0a31                	addi	s4,s4,12
   12e4c:	36313437          	lui	s0,0x36313
   12e50:	3434                	fld	fa3,104(s0)
   12e52:	320a                	fld	ft4,160(sp)
   12e54:	34353537          	lui	a0,0x34353
   12e58:	0a30                	addi	a2,sp,280
   12e5a:	3236                	fld	ft4,360(sp)
   12e5c:	3330                	fld	fa2,96(a4)
   12e5e:	3234                	fld	fa3,96(a2)
   12e60:	370a                	fld	fa4,160(sp)
   12e62:	3038                	fld	fa4,96(s0)
   12e64:	3534                	fld	fa3,104(a0)
   12e66:	0a32                	slli	s4,s4,0xc
   12e68:	32333433          	0x32333433
   12e6c:	3931                	addiw	s2,s2,-20
   12e6e:	360a                	fld	fa2,160(sp)
   12e70:	3736                	fld	fa4,360(sp)
   12e72:	3935                	addiw	s2,s2,-19
   12e74:	0a39                	addi	s4,s4,14
   12e76:	3534                	fld	fa3,104(a0)
   12e78:	3635                	addiw	a2,a2,-19
   12e7a:	36360a37          	lui	s4,0x36360
   12e7e:	3830                	fld	fa2,112(s0)
   12e80:	3430                	fld	fa2,104(s0)
   12e82:	310a                	fld	ft2,160(sp)
   12e84:	3535                	addiw	a0,a0,-19
   12e86:	3731                	addiw	a4,a4,-20
   12e88:	0a38                	addi	a4,sp,280
   12e8a:	3534                	fld	fa3,104(a0)
   12e8c:	3232                	fld	ft4,296(sp)
   12e8e:	3735                	addiw	a4,a4,-19
   12e90:	340a                	fld	fs0,160(sp)
   12e92:	32363637          	lui	a2,0x32363
   12e96:	0a36                	slli	s4,s4,0xd
   12e98:	37393137          	lui	sp,0x37393
   12e9c:	3731                	addiw	a4,a4,-20
   12e9e:	370a                	fld	fa4,160(sp)
   12ea0:	3335                	addiw	t1,t1,-19
   12ea2:	0a393333          	0xa393333
   12ea6:	3438                	fld	fa4,104(s0)
   12ea8:	3839                	addiw	a6,a6,-18
   12eaa:	3535                	addiw	a0,a0,-19
   12eac:	360a                	fld	fa2,160(sp)
   12eae:	3134                	fld	fa3,96(a0)
   12eb0:	0a313837          	lui	a6,0xa313
   12eb4:	3634                	fld	fa3,104(a2)
   12eb6:	3030                	fld	fa2,96(s0)
   12eb8:	380a3137          	lui	sp,0x380a3
   12ebc:	3831                	addiw	a6,a6,-20
   12ebe:	3935                	addiw	s2,s2,-19
   12ec0:	0a36                	slli	s4,s4,0xd
   12ec2:	37333537          	lui	a0,0x37333
   12ec6:	3031                	0x3031
   12ec8:	310a                	fld	ft2,160(sp)
   12eca:	3331                	addiw	t1,t1,-20
   12ecc:	3832                	fld	fa6,296(sp)
   12ece:	0a34                	addi	a3,sp,280
   12ed0:	3934                	fld	fa3,112(a0)
   12ed2:	3536                	fld	fa0,360(sp)
   12ed4:	3630                	fld	fa2,104(a2)
   12ed6:	350a                	fld	fa0,160(sp)
   12ed8:	3432                	fld	fs0,296(sp)
   12eda:	3830                	fld	fa2,112(s0)
   12edc:	0a35                	addi	s4,s4,13
   12ede:	34363533          	0x34363533
   12ee2:	3030                	fld	fa2,96(s0)
   12ee4:	350a                	fld	fa0,160(sp)
   12ee6:	32343637          	lui	a2,0x32343
   12eea:	0a35                	addi	s4,s4,13
   12eec:	38373637          	lui	a2,0x38373
   12ef0:	390a3733          	0x390a3733
   12ef4:	3931                	addiw	s2,s2,-20
   12ef6:	0a373333          	0xa373333
   12efa:	3332                	fld	ft6,296(sp)
   12efc:	3439                	addiw	s0,s0,-18
   12efe:	3835                	addiw	a6,a6,-19
   12f00:	330a                	fld	ft6,160(sp)
   12f02:	3032                	fld	ft0,296(sp)
   12f04:	0a393137          	lui	sp,0xa393
   12f08:	3435                	addiw	s0,s0,-19
   12f0a:	32313937          	lui	s2,0x32313
   12f0e:	350a                	fld	fa0,160(sp)
   12f10:	3430                	fld	fa2,104(s0)
   12f12:	3234                	fld	fa3,96(a2)
   12f14:	0a38                	addi	a4,sp,280
   12f16:	3632                	fld	fa2,296(sp)
   12f18:	3232                	fld	ft4,296(sp)
   12f1a:	3432                	fld	fs0,296(sp)
   12f1c:	340a                	fld	fs0,160(sp)
   12f1e:	39383937          	lui	s2,0x39383
   12f22:	0a38                	addi	a4,sp,280
   12f24:	3832                	fld	fa6,296(sp)
   12f26:	3735                	addiw	a4,a4,-19
   12f28:	3734                	fld	fa3,104(a4)
   12f2a:	330a                	fld	ft6,160(sp)
   12f2c:	3434                	fld	fa3,104(s0)
   12f2e:	3839                	addiw	a6,a6,-18
   12f30:	0a34                	addi	a3,sp,280
   12f32:	37333433          	0x37333433
   12f36:	3032                	fld	ft0,296(sp)
   12f38:	380a                	fld	fa6,160(sp)
   12f3a:	3334                	fld	fa3,96(a4)
   12f3c:	3231                	addiw	tp,tp,-20
   12f3e:	0a34                	addi	a3,sp,280
   12f40:	35363937          	lui	s2,0x35363
   12f44:	3436                	fld	fs0,360(sp)
   12f46:	370a                	fld	fa4,160(sp)
   12f48:	3935                	addiw	s2,s2,-19
   12f4a:	3234                	fld	fa3,96(a2)
   12f4c:	0a36                	slli	s4,s4,0xd
   12f4e:	3434                	fld	fa3,104(s0)
   12f50:	3235                	addiw	tp,tp,-19
   12f52:	3839                	addiw	a6,a6,-18
   12f54:	330a                	fld	ft6,160(sp)
   12f56:	32333637          	lui	a2,0x32333
   12f5a:	0a35                	addi	s4,s4,13
   12f5c:	3136                	fld	ft2,360(sp)
   12f5e:	3238                	fld	fa4,96(a2)
   12f60:	3430                	fld	fa2,104(s0)
   12f62:	350a                	fld	fa0,160(sp)
   12f64:	3539                	addiw	a0,a0,-18
   12f66:	3638                	fld	fa4,104(a2)
   12f68:	0a32                	slli	s4,s4,0xc
   12f6a:	3335                	addiw	t1,t1,-19
   12f6c:	32303733          	0x32303733
   12f70:	330a                	fld	ft6,160(sp)
   12f72:	3536                	fld	fa0,360(sp)
   12f74:	3831                	addiw	a6,a6,-20
   12f76:	0a38                	addi	a4,sp,280
   12f78:	3736                	fld	fa4,360(sp)
   12f7a:	30333033          	0x30333033
   12f7e:	320a                	fld	ft4,160(sp)
   12f80:	3936                	fld	fs2,360(sp)
   12f82:	3738                	fld	fa4,104(a4)
   12f84:	0a36                	slli	s4,s4,0xd
   12f86:	3939                	addiw	s2,s2,-18
   12f88:	3835                	addiw	a6,a6,-19
   12f8a:	390a3033          	0x390a3033
   12f8e:	3334                	fld	fa3,96(a4)
   12f90:	3438                	fld	fa4,104(s0)
   12f92:	0a38                	addi	a4,sp,280
   12f94:	3136                	fld	ft2,360(sp)
   12f96:	3436                	fld	fs0,360(sp)
   12f98:	3432                	fld	fs0,296(sp)
   12f9a:	380a                	fld	fa6,160(sp)
   12f9c:	3335                	addiw	t1,t1,-19
   12f9e:	0a343133          	0xa343133
   12fa2:	3535                	addiw	a0,a0,-19
   12fa4:	32313933          	0x32313933
   12fa8:	350a                	fld	fa0,160(sp)
   12faa:	3432                	fld	fs0,296(sp)
   12fac:	0a363937          	lui	s2,0xa363
   12fb0:	3136                	fld	ft2,360(sp)
   12fb2:	3235                	addiw	tp,tp,-19
   12fb4:	0a36                	slli	s4,s4,0xd
   12fb6:	36353037          	lui	zero,0x36353
   12fba:	3338                	fld	fa4,96(a4)
   12fbc:	390a                	fld	fs2,160(sp)
   12fbe:	33363733          	0x33363733
   12fc2:	320a                	fld	ft4,160(sp)
   12fc4:	31393933          	0x31393933
   12fc8:	35350a33          	0x35350a33
   12fcc:	33303833          	0x33303833
   12fd0:	370a                	fld	fa4,160(sp)
   12fd2:	3339                	addiw	t1,t1,-18
   12fd4:	3331                	addiw	t1,t1,-20
   12fd6:	0a36                	slli	s4,s4,0xd
   12fd8:	3431                	addiw	s0,s0,-20
   12fda:	3831                	addiw	a6,a6,-20
   12fdc:	3935                	addiw	s2,s2,-19
   12fde:	370a                	fld	fa4,160(sp)
   12fe0:	3330                	fld	fa2,96(a4)
   12fe2:	0a343837          	lui	a6,0xa343
   12fe6:	3935                	addiw	s2,s2,-19
   12fe8:	3838                	fld	fa4,112(s0)
   12fea:	3439                	addiw	s0,s0,-18
   12fec:	310a                	fld	ft2,160(sp)
   12fee:	3231                	addiw	tp,tp,-20
   12ff0:	3934                	fld	fa3,112(a0)
   12ff2:	0a36                	slli	s4,s4,0xd
   12ff4:	3538                	fld	fa4,104(a0)
   12ff6:	35313337          	lui	t1,0x35313
   12ffa:	390a                	fld	fs2,160(sp)
   12ffc:	36323737          	lui	a4,0x36323
   13000:	0a30                	addi	a2,sp,280
   13002:	36313433          	0x36313433
   13006:	3430                	fld	fa2,104(s0)
   13008:	340a                	fld	fs0,160(sp)
   1300a:	3635                	addiw	a2,a2,-19
   1300c:	3330                	fld	fa2,96(a4)
   1300e:	0a38                	addi	a4,sp,280
   13010:	31343333          	0x31343333
   13014:	360a3737          	lui	a4,0x360a3
   13018:	3336                	fld	ft6,360(sp)
   1301a:	3934                	fld	fa3,112(a0)
   1301c:	0a31                	addi	s4,s4,12
   1301e:	3934                	fld	fa3,112(a0)
   13020:	3034                	fld	fa3,96(s0)
   13022:	3635                	addiw	a2,a2,-19
   13024:	340a                	fld	fs0,160(sp)
   13026:	3332                	fld	ft6,296(sp)
   13028:	0a383733          	0xa383733
   1302c:	36383233          	0x36383233
   13030:	3932                	fld	fs2,296(sp)
   13032:	380a                	fld	fa6,160(sp)
   13034:	3135                	addiw	sp,sp,-19
   13036:	3036                	fld	ft0,360(sp)
   13038:	34390a37          	lui	s4,0x34390
   1303c:	3135                	addiw	sp,sp,-19
   1303e:	3930                	fld	fa2,112(a0)
   13040:	370a                	fld	fa4,160(sp)
   13042:	3136                	fld	ft2,360(sp)
   13044:	3136                	fld	ft2,360(sp)
   13046:	0a32                	slli	s4,s4,0xc
   13048:	3735                	addiw	a4,a4,-19
   1304a:	3536                	fld	fa0,360(sp)
   1304c:	3035                	0x3035
   1304e:	350a                	fld	fa0,160(sp)
   13050:	3734                	fld	fa3,104(a4)
   13052:	3636                	fld	fa2,360(sp)
   13054:	320a                	fld	ft4,160(sp)
   13056:	3038                	fld	fa4,96(s0)
   13058:	0a303133          	0xa303133
   1305c:	33313837          	lui	a6,0x33313
   13060:	3134                	fld	fa3,96(a0)
   13062:	370a                	fld	fa4,160(sp)
   13064:	32323133          	0x32323133
   13068:	350a                	fld	fa0,160(sp)
   1306a:	3439                	addiw	s0,s0,-18
   1306c:	3134                	fld	fa3,96(a0)
   1306e:	0a38                	addi	a4,sp,280
   13070:	3232                	fld	ft4,296(sp)
   13072:	3834                	fld	fa3,112(s0)
   13074:	360a3737          	lui	a4,0x360a3
   13078:	3438                	fld	fa4,104(s0)
   1307a:	3030                	fld	fa2,96(s0)
   1307c:	0a35                	addi	s4,s4,13
   1307e:	3336                	fld	ft6,360(sp)
   13080:	3234                	fld	fa3,96(a2)
   13082:	3336                	fld	ft6,360(sp)
   13084:	330a                	fld	ft6,160(sp)
   13086:	3438                	fld	fa4,104(s0)
   13088:	3435                	addiw	s0,s0,-19
   1308a:	0a38                	addi	a4,sp,280
   1308c:	3235                	addiw	tp,tp,-19
   1308e:	31393033          	0x31393033
   13092:	350a                	fld	fa0,160(sp)
   13094:	3031                	0x3031
   13096:	0a303037          	lui	zero,0xa303
   1309a:	3535                	addiw	a0,a0,-19
   1309c:	3635                	addiw	a2,a2,-19
   1309e:	3335                	addiw	t1,t1,-19
   130a0:	340a                	fld	fs0,160(sp)
   130a2:	3432                	fld	fs0,296(sp)
   130a4:	3531                	addiw	a0,a0,-20
   130a6:	0a32                	slli	s4,s4,0xc
   130a8:	3539                	addiw	a0,a0,-18
   130aa:	3139                	addiw	sp,sp,-18
   130ac:	3332                	fld	ft6,296(sp)
   130ae:	340a                	fld	fs0,160(sp)
   130b0:	38323437          	lui	s0,0x38323
   130b4:	0a38                	addi	a4,sp,280
   130b6:	3031                	0x3031
   130b8:	3135                	addiw	sp,sp,-19
   130ba:	350a3433          	0x350a3433
   130be:	3135                	addiw	sp,sp,-19
   130c0:	3332                	fld	ft6,296(sp)
   130c2:	0a36                	slli	s4,s4,0xd
   130c4:	37303233          	0x37303233
   130c8:	3535                	addiw	a0,a0,-19
   130ca:	390a                	fld	fs2,160(sp)
   130cc:	3038                	fld	fa4,96(s0)
   130ce:	3934                	fld	fa3,112(a0)
   130d0:	0a38                	addi	a4,sp,280
   130d2:	3438                	fld	fa4,104(s0)
   130d4:	3235                	addiw	tp,tp,-19
   130d6:	3238                	fld	fa4,96(a2)
   130d8:	330a                	fld	ft6,160(sp)
   130da:	3936                	fld	fs2,360(sp)
   130dc:	3934                	fld	fa3,112(a0)
   130de:	0a31                	addi	s4,s4,12
   130e0:	3932                	fld	fs2,296(sp)
   130e2:	3939                	addiw	s2,s2,-18
   130e4:	3038                	fld	fa4,96(s0)
   130e6:	350a                	fld	fa0,160(sp)
   130e8:	3139                	addiw	sp,sp,-18
   130ea:	3730                	fld	fa2,104(a4)
   130ec:	0a34                	addi	a3,sp,280
   130ee:	3534                	fld	fa3,104(a0)
   130f0:	3430                	fld	fa2,104(s0)
   130f2:	3034                	fld	fa3,96(s0)
   130f4:	340a                	fld	fs0,160(sp)
   130f6:	3334                	fld	fa3,96(a4)
   130f8:	0a363137          	lui	sp,0xa363
   130fc:	36333937          	lui	s2,0x36333
   13100:	340a3233          	0x340a3233
   13104:	35353833          	0x35353833
   13108:	0a32                	slli	s4,s4,0xc
   1310a:	35303337          	lui	t1,0x35303
   1310e:	340a3533          	0x340a3533
   13112:	3835                	addiw	a6,a6,-19
   13114:	3831                	addiw	a6,a6,-20
   13116:	0a38                	addi	a4,sp,280
   13118:	3331                	addiw	t1,t1,-20
   1311a:	3938                	fld	fa4,112(a0)
   1311c:	3738                	fld	fa4,104(a4)
   1311e:	350a                	fld	fa0,160(sp)
   13120:	3232                	fld	ft4,296(sp)
   13122:	3134                	fld	fa3,96(a0)
   13124:	390a                	fld	fs2,160(sp)
   13126:	3336                	fld	ft6,360(sp)
   13128:	3438                	fld	fa4,104(s0)
   1312a:	33310a37          	lui	s4,0x33310
   1312e:	3334                	fld	fa3,96(a4)
   13130:	3034                	fld	fa3,96(s0)
   13132:	380a                	fld	fa6,160(sp)
   13134:	35333937          	lui	s2,0x35333
   13138:	0a36                	slli	s4,s4,0xd
   1313a:	3736                	fld	fa4,360(sp)
   1313c:	3431                	addiw	s0,s0,-20
   1313e:	3139                	addiw	sp,sp,-18
   13140:	310a                	fld	ft2,160(sp)
   13142:	36393833          	0x36393833
   13146:	00000a37          	lui	s4,0x0
	...

0000000000013340 <impure_data>:
	...
   13348:	3878                	fld	fa4,240(s0)
   1334a:	0001                	nop
   1334c:	0000                	unimp
   1334e:	0000                	unimp
   13350:	3928                	fld	fa0,112(a0)
   13352:	0001                	nop
   13354:	0000                	unimp
   13356:	0000                	unimp
   13358:	39d8                	fld	fa4,176(a1)
   1335a:	0001                	nop
	...
   13428:	0001                	nop
   1342a:	0000                	unimp
   1342c:	0000                	unimp
   1342e:	0000                	unimp
   13430:	330e                	fld	ft6,224(sp)
   13432:	abcd                	j	13a24 <impure_data+0x6e4>
   13434:	1234                	addi	a3,sp,296
   13436:	e66d                	bnez	a2,13520 <impure_data+0x1e0>
   13438:	deec                	sw	a1,124(a3)
   1343a:	0005                	c.addi	zero,1
   1343c:	0000000b          	0xb
	...

Disassembly of section .sdata:

0000000000013a88 <__TMC_END__>:
	...

0000000000013a90 <_global_impure_ptr>:
   13a90:	3340                	fld	fs0,160(a4)
   13a92:	0001                	nop
   13a94:	0000                	unimp
	...

0000000000013a98 <_impure_ptr>:
   13a98:	3340                	fld	fs0,160(a4)
   13a9a:	0001                	nop
   13a9c:	0000                	unimp
	...

Disassembly of section .sbss:

0000000000013aa0 <__bss_start>:
	...

Disassembly of section .bss:

0000000000013aa8 <completed.5184>:
	...

0000000000013ab0 <object.5189>:
	...

0000000000013ae0 <d>:
	...

00000000000144a8 <t0.2574>:
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
