
test:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	f8818193          	addi	gp,gp,-120 # 12038 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11850 <_edata>
   100bc:	8b818613          	addi	a2,gp,-1864 # 118f0 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	7aa000ef          	jal	ra,1086e <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	6f050513          	addi	a0,a0,1776 # 107b8 <__libc_fini_array>
   100d0:	00000097          	auipc	ra,0x0
   100d4:	6b4080e7          	jalr	1716(ra) # 10784 <atexit>
   100d8:	00000097          	auipc	ra,0x0
   100dc:	72e080e7          	jalr	1838(ra) # 10806 <__libc_init_array>
   100e0:	4502                	lw	a0,0(sp)
   100e2:	002c                	addi	a1,sp,8
   100e4:	4601                	li	a2,0
   100e6:	00000097          	auipc	ra,0x0
   100ea:	66a080e7          	jalr	1642(ra) # 10750 <main>
   100ee:	00000317          	auipc	t1,0x0
   100f2:	6a430067          	jr	1700(t1) # 10792 <exit>

00000000000100f6 <_fini>:
   100f6:	8082                	ret

00000000000100f8 <deregister_tm_clones>:
   100f8:	6549                	lui	a0,0x12
   100fa:	67c9                	lui	a5,0x12
   100fc:	83850713          	addi	a4,a0,-1992 # 11838 <__TMC_END__>
   10100:	83878793          	addi	a5,a5,-1992 # 11838 <__TMC_END__>
   10104:	00e78b63          	beq	a5,a4,1011a <deregister_tm_clones+0x22>
   10108:	00000337          	lui	t1,0x0
   1010c:	00030313          	mv	t1,t1
   10110:	00030563          	beqz	t1,1011a <deregister_tm_clones+0x22>
   10114:	83850513          	addi	a0,a0,-1992
   10118:	8302                	jr	t1
   1011a:	8082                	ret

000000000001011c <register_tm_clones>:
   1011c:	67c9                	lui	a5,0x12
   1011e:	6549                	lui	a0,0x12
   10120:	83878593          	addi	a1,a5,-1992 # 11838 <__TMC_END__>
   10124:	83850793          	addi	a5,a0,-1992 # 11838 <__TMC_END__>
   10128:	8d9d                	sub	a1,a1,a5
   1012a:	858d                	srai	a1,a1,0x3
   1012c:	4789                	li	a5,2
   1012e:	02f5c5b3          	div	a1,a1,a5
   10132:	c991                	beqz	a1,10146 <register_tm_clones+0x2a>
   10134:	00000337          	lui	t1,0x0
   10138:	00030313          	mv	t1,t1
   1013c:	00030563          	beqz	t1,10146 <register_tm_clones+0x2a>
   10140:	83850513          	addi	a0,a0,-1992
   10144:	8302                	jr	t1
   10146:	8082                	ret

0000000000010148 <__do_global_dtors_aux>:
   10148:	8281c703          	lbu	a4,-2008(gp) # 11860 <completed.5184>
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
   10166:	e4050513          	addi	a0,a0,-448 # 10e40 <__EH_FRAME_BEGIN__>
   1016a:	ffff0097          	auipc	ra,0xffff0
   1016e:	e96080e7          	jalr	-362(ra) # 0 <_start-0x100b0>
   10172:	4785                	li	a5,1
   10174:	82f18423          	sb	a5,-2008(gp) # 11860 <completed.5184>
   10178:	60a2                	ld	ra,8(sp)
   1017a:	6402                	ld	s0,0(sp)
   1017c:	0141                	addi	sp,sp,16
   1017e:	8082                	ret
   10180:	8082                	ret

0000000000010182 <frame_dummy>:
   10182:	000007b7          	lui	a5,0x0
   10186:	00078793          	mv	a5,a5
   1018a:	cf99                	beqz	a5,101a8 <frame_dummy+0x26>
   1018c:	65c9                	lui	a1,0x12
   1018e:	6545                	lui	a0,0x11
   10190:	1141                	addi	sp,sp,-16
   10192:	86858593          	addi	a1,a1,-1944 # 11868 <object.5189>
   10196:	e4050513          	addi	a0,a0,-448 # 10e40 <__EH_FRAME_BEGIN__>
   1019a:	e406                	sd	ra,8(sp)
   1019c:	ffff0097          	auipc	ra,0xffff0
   101a0:	e64080e7          	jalr	-412(ra) # 0 <_start-0x100b0>
   101a4:	60a2                	ld	ra,8(sp)
   101a6:	0141                	addi	sp,sp,16
   101a8:	f75ff06f          	j	1011c <register_tm_clones>

00000000000101ac <_Z4swapPxS_>:
   101ac:	fd010113          	addi	sp,sp,-48
   101b0:	02813423          	sd	s0,40(sp)
   101b4:	03010413          	addi	s0,sp,48
   101b8:	fca43c23          	sd	a0,-40(s0)
   101bc:	fcb43823          	sd	a1,-48(s0)
   101c0:	fd843783          	ld	a5,-40(s0)
   101c4:	0007b783          	ld	a5,0(a5) # 0 <_start-0x100b0>
   101c8:	fef43423          	sd	a5,-24(s0)
   101cc:	fd043783          	ld	a5,-48(s0)
   101d0:	0007b703          	ld	a4,0(a5)
   101d4:	fd843783          	ld	a5,-40(s0)
   101d8:	00e7b023          	sd	a4,0(a5)
   101dc:	fd043783          	ld	a5,-48(s0)
   101e0:	fe843703          	ld	a4,-24(s0)
   101e4:	00e7b023          	sd	a4,0(a5)
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
   10240:	1280006f          	j	10368 <_Z9partationiii+0x170>
   10244:	000117b7          	lui	a5,0x11
   10248:	fd442703          	lw	a4,-44(s0)
   1024c:	00371713          	slli	a4,a4,0x3
   10250:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   10254:	00f707b3          	add	a5,a4,a5
   10258:	0007b783          	ld	a5,0(a5)
   1025c:	fef43023          	sd	a5,-32(s0)
   10260:	fdc42783          	lw	a5,-36(s0)
   10264:	fef43423          	sd	a5,-24(s0)
   10268:	fd442783          	lw	a5,-44(s0)
   1026c:	00379713          	slli	a4,a5,0x3
   10270:	000117b7          	lui	a5,0x11
   10274:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   10278:	00f706b3          	add	a3,a4,a5
   1027c:	fd842783          	lw	a5,-40(s0)
   10280:	00379713          	slli	a4,a5,0x3
   10284:	000117b7          	lui	a5,0x11
   10288:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   1028c:	00f707b3          	add	a5,a4,a5
   10290:	00078593          	mv	a1,a5
   10294:	00068513          	mv	a0,a3
   10298:	00000097          	auipc	ra,0x0
   1029c:	f14080e7          	jalr	-236(ra) # 101ac <_Z4swapPxS_>
   102a0:	fdc42703          	lw	a4,-36(s0)
   102a4:	fd842783          	lw	a5,-40(s0)
   102a8:	0007071b          	sext.w	a4,a4
   102ac:	0007879b          	sext.w	a5,a5
   102b0:	06f70c63          	beq	a4,a5,10328 <_Z9partationiii+0x130>
   102b4:	000117b7          	lui	a5,0x11
   102b8:	fdc42703          	lw	a4,-36(s0)
   102bc:	00371713          	slli	a4,a4,0x3
   102c0:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   102c4:	00f707b3          	add	a5,a4,a5
   102c8:	0007b783          	ld	a5,0(a5)
   102cc:	fe043703          	ld	a4,-32(s0)
   102d0:	04f74463          	blt	a4,a5,10318 <_Z9partationiii+0x120>
   102d4:	fdc42783          	lw	a5,-36(s0)
   102d8:	00379713          	slli	a4,a5,0x3
   102dc:	000117b7          	lui	a5,0x11
   102e0:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   102e4:	00f706b3          	add	a3,a4,a5
   102e8:	fe843783          	ld	a5,-24(s0)
   102ec:	00379713          	slli	a4,a5,0x3
   102f0:	000117b7          	lui	a5,0x11
   102f4:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   102f8:	00f707b3          	add	a5,a4,a5
   102fc:	00078593          	mv	a1,a5
   10300:	00068513          	mv	a0,a3
   10304:	00000097          	auipc	ra,0x0
   10308:	ea8080e7          	jalr	-344(ra) # 101ac <_Z4swapPxS_>
   1030c:	fe843783          	ld	a5,-24(s0)
   10310:	00178793          	addi	a5,a5,1
   10314:	fef43423          	sd	a5,-24(s0)
   10318:	fdc42783          	lw	a5,-36(s0)
   1031c:	0017879b          	addiw	a5,a5,1
   10320:	fcf42e23          	sw	a5,-36(s0)
   10324:	f7dff06f          	j	102a0 <_Z9partationiii+0xa8>
   10328:	fe843783          	ld	a5,-24(s0)
   1032c:	00379713          	slli	a4,a5,0x3
   10330:	000117b7          	lui	a5,0x11
   10334:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   10338:	00f706b3          	add	a3,a4,a5
   1033c:	fd842783          	lw	a5,-40(s0)
   10340:	00379713          	slli	a4,a5,0x3
   10344:	000117b7          	lui	a5,0x11
   10348:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   1034c:	00f707b3          	add	a5,a4,a5
   10350:	00078593          	mv	a1,a5
   10354:	00068513          	mv	a0,a3
   10358:	00000097          	auipc	ra,0x0
   1035c:	e54080e7          	jalr	-428(ra) # 101ac <_Z4swapPxS_>
   10360:	fe843783          	ld	a5,-24(s0)
   10364:	0007879b          	sext.w	a5,a5
   10368:	00078513          	mv	a0,a5
   1036c:	02813083          	ld	ra,40(sp)
   10370:	02013403          	ld	s0,32(sp)
   10374:	03010113          	addi	sp,sp,48
   10378:	00008067          	ret

000000000001037c <_Z9quicksortii>:
   1037c:	fd010113          	addi	sp,sp,-48
   10380:	02113423          	sd	ra,40(sp)
   10384:	02813023          	sd	s0,32(sp)
   10388:	03010413          	addi	s0,sp,48
   1038c:	00050793          	mv	a5,a0
   10390:	00058713          	mv	a4,a1
   10394:	fcf42e23          	sw	a5,-36(s0)
   10398:	00070793          	mv	a5,a4
   1039c:	fcf42c23          	sw	a5,-40(s0)
   103a0:	fd842703          	lw	a4,-40(s0)
   103a4:	fdc42783          	lw	a5,-36(s0)
   103a8:	0007071b          	sext.w	a4,a4
   103ac:	0007879b          	sext.w	a5,a5
   103b0:	08e7dc63          	ble	a4,a5,10448 <_Z9quicksortii+0xcc>
   103b4:	fdc42703          	lw	a4,-36(s0)
   103b8:	fd842783          	lw	a5,-40(s0)
   103bc:	00f707bb          	addw	a5,a4,a5
   103c0:	0007879b          	sext.w	a5,a5
   103c4:	01f7d71b          	srliw	a4,a5,0x1f
   103c8:	00f707bb          	addw	a5,a4,a5
   103cc:	4017d79b          	sraiw	a5,a5,0x1
   103d0:	fef42623          	sw	a5,-20(s0)
   103d4:	fec42683          	lw	a3,-20(s0)
   103d8:	fd842703          	lw	a4,-40(s0)
   103dc:	fdc42783          	lw	a5,-36(s0)
   103e0:	00068613          	mv	a2,a3
   103e4:	00070593          	mv	a1,a4
   103e8:	00078513          	mv	a0,a5
   103ec:	00000097          	auipc	ra,0x0
   103f0:	e0c080e7          	jalr	-500(ra) # 101f8 <_Z9partationiii>
   103f4:	00050793          	mv	a5,a0
   103f8:	fef42623          	sw	a5,-20(s0)
   103fc:	fec42783          	lw	a5,-20(s0)
   10400:	0007871b          	sext.w	a4,a5
   10404:	fff00793          	li	a5,-1
   10408:	04f70263          	beq	a4,a5,1044c <_Z9quicksortii+0xd0>
   1040c:	fec42783          	lw	a5,-20(s0)
   10410:	fff7879b          	addiw	a5,a5,-1
   10414:	0007871b          	sext.w	a4,a5
   10418:	fdc42783          	lw	a5,-36(s0)
   1041c:	00070593          	mv	a1,a4
   10420:	00078513          	mv	a0,a5
   10424:	f59ff0ef          	jal	ra,1037c <_Z9quicksortii>
   10428:	fec42783          	lw	a5,-20(s0)
   1042c:	0017879b          	addiw	a5,a5,1
   10430:	0007879b          	sext.w	a5,a5
   10434:	fd842703          	lw	a4,-40(s0)
   10438:	00070593          	mv	a1,a4
   1043c:	00078513          	mv	a0,a5
   10440:	f3dff0ef          	jal	ra,1037c <_Z9quicksortii>
   10444:	0080006f          	j	1044c <_Z9quicksortii+0xd0>
   10448:	00000013          	nop
   1044c:	02813083          	ld	ra,40(sp)
   10450:	02013403          	ld	s0,32(sp)
   10454:	03010113          	addi	sp,sp,48
   10458:	00008067          	ret

000000000001045c <_Z8ackermanii>:
   1045c:	fe010113          	addi	sp,sp,-32
   10460:	00113c23          	sd	ra,24(sp)
   10464:	00813823          	sd	s0,16(sp)
   10468:	02010413          	addi	s0,sp,32
   1046c:	00050793          	mv	a5,a0
   10470:	00058713          	mv	a4,a1
   10474:	fef42623          	sw	a5,-20(s0)
   10478:	00070793          	mv	a5,a4
   1047c:	fef42423          	sw	a5,-24(s0)
   10480:	fec42783          	lw	a5,-20(s0)
   10484:	0007879b          	sext.w	a5,a5
   10488:	04078863          	beqz	a5,104d8 <_Z8ackermanii+0x7c>
   1048c:	fe842783          	lw	a5,-24(s0)
   10490:	0007879b          	sext.w	a5,a5
   10494:	00079863          	bnez	a5,104a4 <_Z8ackermanii+0x48>
   10498:	00100793          	li	a5,1
   1049c:	fef42423          	sw	a5,-24(s0)
   104a0:	0280006f          	j	104c8 <_Z8ackermanii+0x6c>
   104a4:	fe842783          	lw	a5,-24(s0)
   104a8:	fff7879b          	addiw	a5,a5,-1
   104ac:	0007871b          	sext.w	a4,a5
   104b0:	fec42783          	lw	a5,-20(s0)
   104b4:	00070593          	mv	a1,a4
   104b8:	00078513          	mv	a0,a5
   104bc:	fa1ff0ef          	jal	ra,1045c <_Z8ackermanii>
   104c0:	00050793          	mv	a5,a0
   104c4:	fef42423          	sw	a5,-24(s0)
   104c8:	fec42783          	lw	a5,-20(s0)
   104cc:	fff7879b          	addiw	a5,a5,-1
   104d0:	fef42623          	sw	a5,-20(s0)
   104d4:	fadff06f          	j	10480 <_Z8ackermanii+0x24>
   104d8:	fe842783          	lw	a5,-24(s0)
   104dc:	0017879b          	addiw	a5,a5,1
   104e0:	0007879b          	sext.w	a5,a5
   104e4:	00078513          	mv	a0,a5
   104e8:	01813083          	ld	ra,24(sp)
   104ec:	01013403          	ld	s0,16(sp)
   104f0:	02010113          	addi	sp,sp,32
   104f4:	00008067          	ret

00000000000104f8 <_Z9QuickSortv>:
   104f8:	ff010113          	addi	sp,sp,-16
   104fc:	00113423          	sd	ra,8(sp)
   10500:	00813023          	sd	s0,0(sp)
   10504:	01010413          	addi	s0,sp,16
   10508:	00900593          	li	a1,9
   1050c:	00000513          	li	a0,0
   10510:	e6dff0ef          	jal	ra,1037c <_Z9quicksortii>
   10514:	00000013          	nop
   10518:	00813083          	ld	ra,8(sp)
   1051c:	00013403          	ld	s0,0(sp)
   10520:	01010113          	addi	sp,sp,16
   10524:	00008067          	ret

0000000000010528 <_Z20MatrixMultiplicationv>:
   10528:	fd010113          	addi	sp,sp,-48
   1052c:	02813423          	sd	s0,40(sp)
   10530:	03010413          	addi	s0,sp,48
   10534:	fe042623          	sw	zero,-20(s0)
   10538:	fec42783          	lw	a5,-20(s0)
   1053c:	0007871b          	sext.w	a4,a5
   10540:	00200793          	li	a5,2
   10544:	06e7c063          	blt	a5,a4,105a4 <_Z20MatrixMultiplicationv+0x7c>
   10548:	fe042423          	sw	zero,-24(s0)
   1054c:	fe842783          	lw	a5,-24(s0)
   10550:	0007871b          	sext.w	a4,a5
   10554:	00200793          	li	a5,2
   10558:	02e7ce63          	blt	a5,a4,10594 <_Z20MatrixMultiplicationv+0x6c>
   1055c:	fe842603          	lw	a2,-24(s0)
   10560:	fec42703          	lw	a4,-20(s0)
   10564:	00070793          	mv	a5,a4
   10568:	00179793          	slli	a5,a5,0x1
   1056c:	00e787b3          	add	a5,a5,a4
   10570:	00c787b3          	add	a5,a5,a2
   10574:	00379713          	slli	a4,a5,0x3
   10578:	86018793          	addi	a5,gp,-1952 # 11898 <d>
   1057c:	00f707b3          	add	a5,a4,a5
   10580:	0007b023          	sd	zero,0(a5)
   10584:	fe842783          	lw	a5,-24(s0)
   10588:	0017879b          	addiw	a5,a5,1
   1058c:	fef42423          	sw	a5,-24(s0)
   10590:	fbdff06f          	j	1054c <_Z20MatrixMultiplicationv+0x24>
   10594:	fec42783          	lw	a5,-20(s0)
   10598:	0017879b          	addiw	a5,a5,1
   1059c:	fef42623          	sw	a5,-20(s0)
   105a0:	f99ff06f          	j	10538 <_Z20MatrixMultiplicationv+0x10>
   105a4:	fe042223          	sw	zero,-28(s0)
   105a8:	fe442783          	lw	a5,-28(s0)
   105ac:	0007871b          	sext.w	a4,a5
   105b0:	00200793          	li	a5,2
   105b4:	10e7ca63          	blt	a5,a4,106c8 <_Z20MatrixMultiplicationv+0x1a0>
   105b8:	fe042023          	sw	zero,-32(s0)
   105bc:	fe042783          	lw	a5,-32(s0)
   105c0:	0007871b          	sext.w	a4,a5
   105c4:	00200793          	li	a5,2
   105c8:	0ee7c863          	blt	a5,a4,106b8 <_Z20MatrixMultiplicationv+0x190>
   105cc:	000116b7          	lui	a3,0x11
   105d0:	fe042603          	lw	a2,-32(s0)
   105d4:	fe442703          	lw	a4,-28(s0)
   105d8:	00070793          	mv	a5,a4
   105dc:	00179793          	slli	a5,a5,0x1
   105e0:	00e787b3          	add	a5,a5,a4
   105e4:	00c787b3          	add	a5,a5,a2
   105e8:	00379713          	slli	a4,a5,0x3
   105ec:	06068793          	addi	a5,a3,96 # 11060 <b>
   105f0:	00f707b3          	add	a5,a4,a5
   105f4:	0007b783          	ld	a5,0(a5)
   105f8:	fcf43823          	sd	a5,-48(s0)
   105fc:	fc042e23          	sw	zero,-36(s0)
   10600:	fdc42783          	lw	a5,-36(s0)
   10604:	0007871b          	sext.w	a4,a5
   10608:	00200793          	li	a5,2
   1060c:	08e7ce63          	blt	a5,a4,106a8 <_Z20MatrixMultiplicationv+0x180>
   10610:	fdc42603          	lw	a2,-36(s0)
   10614:	fe442703          	lw	a4,-28(s0)
   10618:	00070793          	mv	a5,a4
   1061c:	00179793          	slli	a5,a5,0x1
   10620:	00e787b3          	add	a5,a5,a4
   10624:	00c787b3          	add	a5,a5,a2
   10628:	00379713          	slli	a4,a5,0x3
   1062c:	86018793          	addi	a5,gp,-1952 # 11898 <d>
   10630:	00f707b3          	add	a5,a4,a5
   10634:	0007b683          	ld	a3,0(a5)
   10638:	00011637          	lui	a2,0x11
   1063c:	fdc42583          	lw	a1,-36(s0)
   10640:	fe442703          	lw	a4,-28(s0)
   10644:	00070793          	mv	a5,a4
   10648:	00179793          	slli	a5,a5,0x1
   1064c:	00e787b3          	add	a5,a5,a4
   10650:	00b787b3          	add	a5,a5,a1
   10654:	00379713          	slli	a4,a5,0x3
   10658:	0a860793          	addi	a5,a2,168 # 110a8 <c>
   1065c:	00f707b3          	add	a5,a4,a5
   10660:	0007b703          	ld	a4,0(a5)
   10664:	fd043783          	ld	a5,-48(s0)
   10668:	02f707b3          	mul	a5,a4,a5
   1066c:	00f686b3          	add	a3,a3,a5
   10670:	fdc42583          	lw	a1,-36(s0)
   10674:	fe442703          	lw	a4,-28(s0)
   10678:	00070793          	mv	a5,a4
   1067c:	00179793          	slli	a5,a5,0x1
   10680:	00e787b3          	add	a5,a5,a4
   10684:	00b787b3          	add	a5,a5,a1
   10688:	00379713          	slli	a4,a5,0x3
   1068c:	86018793          	addi	a5,gp,-1952 # 11898 <d>
   10690:	00f707b3          	add	a5,a4,a5
   10694:	00d7b023          	sd	a3,0(a5)
   10698:	fdc42783          	lw	a5,-36(s0)
   1069c:	0017879b          	addiw	a5,a5,1
   106a0:	fcf42e23          	sw	a5,-36(s0)
   106a4:	f5dff06f          	j	10600 <_Z20MatrixMultiplicationv+0xd8>
   106a8:	fe042783          	lw	a5,-32(s0)
   106ac:	0017879b          	addiw	a5,a5,1
   106b0:	fef42023          	sw	a5,-32(s0)
   106b4:	f09ff06f          	j	105bc <_Z20MatrixMultiplicationv+0x94>
   106b8:	fe442783          	lw	a5,-28(s0)
   106bc:	0017879b          	addiw	a5,a5,1
   106c0:	fef42223          	sw	a5,-28(s0)
   106c4:	ee5ff06f          	j	105a8 <_Z20MatrixMultiplicationv+0x80>
   106c8:	00000013          	nop
   106cc:	02813403          	ld	s0,40(sp)
   106d0:	03010113          	addi	sp,sp,48
   106d4:	00008067          	ret

00000000000106d8 <_Z8Ackermanv>:
   106d8:	ff010113          	addi	sp,sp,-16
   106dc:	00113423          	sd	ra,8(sp)
   106e0:	00813023          	sd	s0,0(sp)
   106e4:	01010413          	addi	s0,sp,16
   106e8:	00200593          	li	a1,2
   106ec:	00200513          	li	a0,2
   106f0:	00000097          	auipc	ra,0x0
   106f4:	d6c080e7          	jalr	-660(ra) # 1045c <_Z8ackermanii>
   106f8:	00050793          	mv	a5,a0
   106fc:	00078713          	mv	a4,a5
   10700:	80e1bc23          	sd	a4,-2024(gp) # 11850 <_edata>
   10704:	00000013          	nop
   10708:	00813083          	ld	ra,8(sp)
   1070c:	00013403          	ld	s0,0(sp)
   10710:	01010113          	addi	sp,sp,16
   10714:	00008067          	ret

0000000000010718 <_Z12AllBenchmarkv>:
   10718:	ff010113          	addi	sp,sp,-16
   1071c:	00113423          	sd	ra,8(sp)
   10720:	00813023          	sd	s0,0(sp)
   10724:	01010413          	addi	s0,sp,16
   10728:	00000097          	auipc	ra,0x0
   1072c:	dd0080e7          	jalr	-560(ra) # 104f8 <_Z9QuickSortv>
   10730:	df9ff0ef          	jal	ra,10528 <_Z20MatrixMultiplicationv>
   10734:	00000097          	auipc	ra,0x0
   10738:	fa4080e7          	jalr	-92(ra) # 106d8 <_Z8Ackermanv>
   1073c:	00000013          	nop
   10740:	00813083          	ld	ra,8(sp)
   10744:	00013403          	ld	s0,0(sp)
   10748:	01010113          	addi	sp,sp,16
   1074c:	00008067          	ret

0000000000010750 <main>:
   10750:	ff010113          	addi	sp,sp,-16
   10754:	00113423          	sd	ra,8(sp)
   10758:	00813023          	sd	s0,0(sp)
   1075c:	01010413          	addi	s0,sp,16
   10760:	00000097          	auipc	ra,0x0
   10764:	fb8080e7          	jalr	-72(ra) # 10718 <_Z12AllBenchmarkv>
   10768:	00000793          	li	a5,0
   1076c:	00078513          	mv	a0,a5
   10770:	00813083          	ld	ra,8(sp)
   10774:	00013403          	ld	s0,0(sp)
   10778:	01010113          	addi	sp,sp,16
   1077c:	00008067          	ret
   10780:	0000                	unimp
	...

0000000000010784 <atexit>:
   10784:	85aa                	mv	a1,a0
   10786:	4681                	li	a3,0
   10788:	4601                	li	a2,0
   1078a:	4501                	li	a0,0
   1078c:	18c0006f          	j	10918 <__register_exitproc>
	...

0000000000010792 <exit>:
   10792:	1141                	addi	sp,sp,-16
   10794:	4581                	li	a1,0
   10796:	e022                	sd	s0,0(sp)
   10798:	e406                	sd	ra,8(sp)
   1079a:	842a                	mv	s0,a0
   1079c:	1e4000ef          	jal	ra,10980 <__call_exitprocs>
   107a0:	67c9                	lui	a5,0x12
   107a2:	8407b503          	ld	a0,-1984(a5) # 11840 <_global_impure_ptr>
   107a6:	6d3c                	ld	a5,88(a0)
   107a8:	c391                	beqz	a5,107ac <exit+0x1a>
   107aa:	9782                	jalr	a5
   107ac:	8522                	mv	a0,s0
   107ae:	00000097          	auipc	ra,0x0
   107b2:	66e080e7          	jalr	1646(ra) # 10e1c <_exit>
	...

00000000000107b8 <__libc_fini_array>:
   107b8:	7179                	addi	sp,sp,-48
   107ba:	67c5                	lui	a5,0x11
   107bc:	6745                	lui	a4,0x11
   107be:	f022                	sd	s0,32(sp)
   107c0:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   107c4:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   107c8:	8c19                	sub	s0,s0,a4
   107ca:	ec26                	sd	s1,24(sp)
   107cc:	e84a                	sd	s2,16(sp)
   107ce:	e44e                	sd	s3,8(sp)
   107d0:	f406                	sd	ra,40(sp)
   107d2:	840d                	srai	s0,s0,0x3
   107d4:	4481                	li	s1,0
   107d6:	01078913          	addi	s2,a5,16
   107da:	59e1                	li	s3,-8
   107dc:	00941c63          	bne	s0,s1,107f4 <__libc_fini_array+0x3c>
   107e0:	7402                	ld	s0,32(sp)
   107e2:	70a2                	ld	ra,40(sp)
   107e4:	64e2                	ld	s1,24(sp)
   107e6:	6942                	ld	s2,16(sp)
   107e8:	69a2                	ld	s3,8(sp)
   107ea:	6145                	addi	sp,sp,48
   107ec:	00000317          	auipc	t1,0x0
   107f0:	90a30067          	jr	-1782(t1) # 100f6 <_fini>
   107f4:	033487b3          	mul	a5,s1,s3
   107f8:	0485                	addi	s1,s1,1
   107fa:	97ca                	add	a5,a5,s2
   107fc:	ff87b783          	ld	a5,-8(a5)
   10800:	9782                	jalr	a5
   10802:	bfe9                	j	107dc <__libc_fini_array+0x24>
	...

0000000000010806 <__libc_init_array>:
   10806:	1101                	addi	sp,sp,-32
   10808:	e822                	sd	s0,16(sp)
   1080a:	e426                	sd	s1,8(sp)
   1080c:	6445                	lui	s0,0x11
   1080e:	64c5                	lui	s1,0x11
   10810:	00048793          	mv	a5,s1
   10814:	00040413          	mv	s0,s0
   10818:	8c1d                	sub	s0,s0,a5
   1081a:	e04a                	sd	s2,0(sp)
   1081c:	ec06                	sd	ra,24(sp)
   1081e:	840d                	srai	s0,s0,0x3
   10820:	00048493          	mv	s1,s1
   10824:	4901                	li	s2,0
   10826:	02891963          	bne	s2,s0,10858 <__libc_init_array+0x52>
   1082a:	64c5                	lui	s1,0x11
   1082c:	00000097          	auipc	ra,0x0
   10830:	8ca080e7          	jalr	-1846(ra) # 100f6 <_fini>
   10834:	6445                	lui	s0,0x11
   10836:	00048793          	mv	a5,s1
   1083a:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   1083e:	8c1d                	sub	s0,s0,a5
   10840:	840d                	srai	s0,s0,0x3
   10842:	00048493          	mv	s1,s1
   10846:	4901                	li	s2,0
   10848:	00891d63          	bne	s2,s0,10862 <__libc_init_array+0x5c>
   1084c:	60e2                	ld	ra,24(sp)
   1084e:	6442                	ld	s0,16(sp)
   10850:	64a2                	ld	s1,8(sp)
   10852:	6902                	ld	s2,0(sp)
   10854:	6105                	addi	sp,sp,32
   10856:	8082                	ret
   10858:	609c                	ld	a5,0(s1)
   1085a:	0905                	addi	s2,s2,1
   1085c:	04a1                	addi	s1,s1,8
   1085e:	9782                	jalr	a5
   10860:	b7d9                	j	10826 <__libc_init_array+0x20>
   10862:	609c                	ld	a5,0(s1)
   10864:	0905                	addi	s2,s2,1
   10866:	04a1                	addi	s1,s1,8
   10868:	9782                	jalr	a5
   1086a:	bff9                	j	10848 <__libc_init_array+0x42>
	...

000000000001086e <memset>:
   1086e:	483d                	li	a6,15
   10870:	872a                	mv	a4,a0
   10872:	02c87163          	bleu	a2,a6,10894 <memset+0x26>
   10876:	00f77793          	andi	a5,a4,15
   1087a:	e3c1                	bnez	a5,108fa <memset+0x8c>
   1087c:	e1bd                	bnez	a1,108e2 <memset+0x74>
   1087e:	ff067693          	andi	a3,a2,-16
   10882:	8a3d                	andi	a2,a2,15
   10884:	96ba                	add	a3,a3,a4
   10886:	e30c                	sd	a1,0(a4)
   10888:	e70c                	sd	a1,8(a4)
   1088a:	0741                	addi	a4,a4,16
   1088c:	fed76de3          	bltu	a4,a3,10886 <memset+0x18>
   10890:	e211                	bnez	a2,10894 <memset+0x26>
   10892:	8082                	ret
   10894:	40c806b3          	sub	a3,a6,a2
   10898:	068a                	slli	a3,a3,0x2
   1089a:	00000297          	auipc	t0,0x0
   1089e:	9696                	add	a3,a3,t0
   108a0:	00a68067          	jr	10(a3)
   108a4:	00b70723          	sb	a1,14(a4)
   108a8:	00b706a3          	sb	a1,13(a4)
   108ac:	00b70623          	sb	a1,12(a4)
   108b0:	00b705a3          	sb	a1,11(a4)
   108b4:	00b70523          	sb	a1,10(a4)
   108b8:	00b704a3          	sb	a1,9(a4)
   108bc:	00b70423          	sb	a1,8(a4)
   108c0:	00b703a3          	sb	a1,7(a4)
   108c4:	00b70323          	sb	a1,6(a4)
   108c8:	00b702a3          	sb	a1,5(a4)
   108cc:	00b70223          	sb	a1,4(a4)
   108d0:	00b701a3          	sb	a1,3(a4)
   108d4:	00b70123          	sb	a1,2(a4)
   108d8:	00b700a3          	sb	a1,1(a4)
   108dc:	00b70023          	sb	a1,0(a4)
   108e0:	8082                	ret
   108e2:	0ff5f593          	andi	a1,a1,255
   108e6:	00859693          	slli	a3,a1,0x8
   108ea:	8dd5                	or	a1,a1,a3
   108ec:	01059693          	slli	a3,a1,0x10
   108f0:	8dd5                	or	a1,a1,a3
   108f2:	02059693          	slli	a3,a1,0x20
   108f6:	8dd5                	or	a1,a1,a3
   108f8:	b759                	j	1087e <memset+0x10>
   108fa:	00279693          	slli	a3,a5,0x2
   108fe:	00000297          	auipc	t0,0x0
   10902:	9696                	add	a3,a3,t0
   10904:	8286                	mv	t0,ra
   10906:	fa2680e7          	jalr	-94(a3)
   1090a:	8096                	mv	ra,t0
   1090c:	17c1                	addi	a5,a5,-16
   1090e:	8f1d                	sub	a4,a4,a5
   10910:	963e                	add	a2,a2,a5
   10912:	f8c871e3          	bleu	a2,a6,10894 <memset+0x26>
   10916:	b79d                	j	1087c <memset+0xe>

0000000000010918 <__register_exitproc>:
   10918:	67c9                	lui	a5,0x12
   1091a:	8407b703          	ld	a4,-1984(a5) # 11840 <_global_impure_ptr>
   1091e:	832a                	mv	t1,a0
   10920:	1f873783          	ld	a5,504(a4)
   10924:	e789                	bnez	a5,1092e <__register_exitproc+0x16>
   10926:	20070793          	addi	a5,a4,512
   1092a:	1ef73c23          	sd	a5,504(a4)
   1092e:	4798                	lw	a4,8(a5)
   10930:	487d                	li	a6,31
   10932:	557d                	li	a0,-1
   10934:	04e84463          	blt	a6,a4,1097c <__register_exitproc+0x64>
   10938:	02030a63          	beqz	t1,1096c <__register_exitproc+0x54>
   1093c:	00371813          	slli	a6,a4,0x3
   10940:	983e                	add	a6,a6,a5
   10942:	10c83823          	sd	a2,272(a6)
   10946:	3107a883          	lw	a7,784(a5)
   1094a:	4605                	li	a2,1
   1094c:	00e6163b          	sllw	a2,a2,a4
   10950:	00c8e8b3          	or	a7,a7,a2
   10954:	3117a823          	sw	a7,784(a5)
   10958:	20d83823          	sd	a3,528(a6)
   1095c:	4689                	li	a3,2
   1095e:	00d31763          	bne	t1,a3,1096c <__register_exitproc+0x54>
   10962:	3147a683          	lw	a3,788(a5)
   10966:	8e55                	or	a2,a2,a3
   10968:	30c7aa23          	sw	a2,788(a5)
   1096c:	0017069b          	addiw	a3,a4,1
   10970:	0709                	addi	a4,a4,2
   10972:	070e                	slli	a4,a4,0x3
   10974:	c794                	sw	a3,8(a5)
   10976:	97ba                	add	a5,a5,a4
   10978:	e38c                	sd	a1,0(a5)
   1097a:	4501                	li	a0,0
   1097c:	8082                	ret
	...

0000000000010980 <__call_exitprocs>:
   10980:	715d                	addi	sp,sp,-80
   10982:	67c9                	lui	a5,0x12
   10984:	f44e                	sd	s3,40(sp)
   10986:	8407b983          	ld	s3,-1984(a5) # 11840 <_global_impure_ptr>
   1098a:	f052                	sd	s4,32(sp)
   1098c:	ec56                	sd	s5,24(sp)
   1098e:	e85a                	sd	s6,16(sp)
   10990:	e486                	sd	ra,72(sp)
   10992:	e0a2                	sd	s0,64(sp)
   10994:	fc26                	sd	s1,56(sp)
   10996:	f84a                	sd	s2,48(sp)
   10998:	e45e                	sd	s7,8(sp)
   1099a:	8aaa                	mv	s5,a0
   1099c:	8a2e                	mv	s4,a1
   1099e:	4b05                	li	s6,1
   109a0:	1f89b403          	ld	s0,504(s3)
   109a4:	c801                	beqz	s0,109b4 <__call_exitprocs+0x34>
   109a6:	4404                	lw	s1,8(s0)
   109a8:	34fd                	addiw	s1,s1,-1
   109aa:	00349913          	slli	s2,s1,0x3
   109ae:	9922                	add	s2,s2,s0
   109b0:	0004dd63          	bgez	s1,109ca <__call_exitprocs+0x4a>
   109b4:	60a6                	ld	ra,72(sp)
   109b6:	6406                	ld	s0,64(sp)
   109b8:	74e2                	ld	s1,56(sp)
   109ba:	7942                	ld	s2,48(sp)
   109bc:	79a2                	ld	s3,40(sp)
   109be:	7a02                	ld	s4,32(sp)
   109c0:	6ae2                	ld	s5,24(sp)
   109c2:	6b42                	ld	s6,16(sp)
   109c4:	6ba2                	ld	s7,8(sp)
   109c6:	6161                	addi	sp,sp,80
   109c8:	8082                	ret
   109ca:	000a0963          	beqz	s4,109dc <__call_exitprocs+0x5c>
   109ce:	21093783          	ld	a5,528(s2)
   109d2:	01478563          	beq	a5,s4,109dc <__call_exitprocs+0x5c>
   109d6:	34fd                	addiw	s1,s1,-1
   109d8:	1961                	addi	s2,s2,-8
   109da:	bfd9                	j	109b0 <__call_exitprocs+0x30>
   109dc:	441c                	lw	a5,8(s0)
   109de:	01093683          	ld	a3,16(s2)
   109e2:	37fd                	addiw	a5,a5,-1
   109e4:	02979663          	bne	a5,s1,10a10 <__call_exitprocs+0x90>
   109e8:	c404                	sw	s1,8(s0)
   109ea:	d6f5                	beqz	a3,109d6 <__call_exitprocs+0x56>
   109ec:	31042703          	lw	a4,784(s0)
   109f0:	009b163b          	sllw	a2,s6,s1
   109f4:	00842b83          	lw	s7,8(s0)
   109f8:	8f71                	and	a4,a4,a2
   109fa:	2701                	sext.w	a4,a4
   109fc:	ef09                	bnez	a4,10a16 <__call_exitprocs+0x96>
   109fe:	9682                	jalr	a3
   10a00:	4418                	lw	a4,8(s0)
   10a02:	1f89b783          	ld	a5,504(s3)
   10a06:	f9771de3          	bne	a4,s7,109a0 <__call_exitprocs+0x20>
   10a0a:	fcf406e3          	beq	s0,a5,109d6 <__call_exitprocs+0x56>
   10a0e:	bf49                	j	109a0 <__call_exitprocs+0x20>
   10a10:	00093823          	sd	zero,16(s2)
   10a14:	bfd9                	j	109ea <__call_exitprocs+0x6a>
   10a16:	31442783          	lw	a5,788(s0)
   10a1a:	11093583          	ld	a1,272(s2)
   10a1e:	8ff1                	and	a5,a5,a2
   10a20:	2781                	sext.w	a5,a5
   10a22:	e781                	bnez	a5,10a2a <__call_exitprocs+0xaa>
   10a24:	8556                	mv	a0,s5
   10a26:	9682                	jalr	a3
   10a28:	bfe1                	j	10a00 <__call_exitprocs+0x80>
   10a2a:	852e                	mv	a0,a1
   10a2c:	9682                	jalr	a3
   10a2e:	bfc9                	j	10a00 <__call_exitprocs+0x80>
	...

0000000000010a32 <conv_stat>:
   10a32:	619c                	ld	a5,0(a1)
   10a34:	00f51023          	sh	a5,0(a0)
   10a38:	659c                	ld	a5,8(a1)
   10a3a:	00f51123          	sh	a5,2(a0)
   10a3e:	499c                	lw	a5,16(a1)
   10a40:	c15c                	sw	a5,4(a0)
   10a42:	49dc                	lw	a5,20(a1)
   10a44:	00f51423          	sh	a5,8(a0)
   10a48:	4d9c                	lw	a5,24(a1)
   10a4a:	00f51523          	sh	a5,10(a0)
   10a4e:	4ddc                	lw	a5,28(a1)
   10a50:	00f51623          	sh	a5,12(a0)
   10a54:	719c                	ld	a5,32(a1)
   10a56:	00f51723          	sh	a5,14(a0)
   10a5a:	799c                	ld	a5,48(a1)
   10a5c:	e91c                	sd	a5,16(a0)
   10a5e:	61bc                	ld	a5,64(a1)
   10a60:	e93c                	sd	a5,80(a0)
   10a62:	5d9c                	lw	a5,56(a1)
   10a64:	e53c                	sd	a5,72(a0)
   10a66:	65bc                	ld	a5,72(a1)
   10a68:	ed1c                	sd	a5,24(a0)
   10a6a:	6dbc                	ld	a5,88(a1)
   10a6c:	f51c                	sd	a5,40(a0)
   10a6e:	75bc                	ld	a5,104(a1)
   10a70:	fd1c                	sd	a5,56(a0)
   10a72:	8082                	ret

0000000000010a74 <__syscall_error>:
   10a74:	1141                	addi	sp,sp,-16
   10a76:	e022                	sd	s0,0(sp)
   10a78:	e406                	sd	ra,8(sp)
   10a7a:	842a                	mv	s0,a0
   10a7c:	00000097          	auipc	ra,0x0
   10a80:	3ba080e7          	jalr	954(ra) # 10e36 <__errno>
   10a84:	408007bb          	negw	a5,s0
   10a88:	60a2                	ld	ra,8(sp)
   10a8a:	6402                	ld	s0,0(sp)
   10a8c:	c11c                	sw	a5,0(a0)
   10a8e:	557d                	li	a0,-1
   10a90:	0141                	addi	sp,sp,16
   10a92:	8082                	ret

0000000000010a94 <__internal_syscall>:
   10a94:	88aa                	mv	a7,a0
   10a96:	852e                	mv	a0,a1
   10a98:	85b2                	mv	a1,a2
   10a9a:	8636                	mv	a2,a3
   10a9c:	86ba                	mv	a3,a4
   10a9e:	00000073          	ecall
   10aa2:	00055663          	bgez	a0,10aae <__internal_syscall+0x1a>
   10aa6:	00000317          	auipc	t1,0x0
   10aaa:	fce30067          	jr	-50(t1) # 10a74 <__syscall_error>
   10aae:	8082                	ret

0000000000010ab0 <open>:
   10ab0:	1141                	addi	sp,sp,-16
   10ab2:	86b2                	mv	a3,a2
   10ab4:	4701                	li	a4,0
   10ab6:	862e                	mv	a2,a1
   10ab8:	85aa                	mv	a1,a0
   10aba:	40000513          	li	a0,1024
   10abe:	e406                	sd	ra,8(sp)
   10ac0:	00000097          	auipc	ra,0x0
   10ac4:	fd4080e7          	jalr	-44(ra) # 10a94 <__internal_syscall>
   10ac8:	60a2                	ld	ra,8(sp)
   10aca:	2501                	sext.w	a0,a0
   10acc:	0141                	addi	sp,sp,16
   10ace:	8082                	ret

0000000000010ad0 <openat>:
   10ad0:	1141                	addi	sp,sp,-16
   10ad2:	8736                	mv	a4,a3
   10ad4:	86b2                	mv	a3,a2
   10ad6:	862e                	mv	a2,a1
   10ad8:	85aa                	mv	a1,a0
   10ada:	03800513          	li	a0,56
   10ade:	e406                	sd	ra,8(sp)
   10ae0:	fb5ff0ef          	jal	ra,10a94 <__internal_syscall>
   10ae4:	60a2                	ld	ra,8(sp)
   10ae6:	2501                	sext.w	a0,a0
   10ae8:	0141                	addi	sp,sp,16
   10aea:	8082                	ret

0000000000010aec <lseek>:
   10aec:	86b2                	mv	a3,a2
   10aee:	4701                	li	a4,0
   10af0:	862e                	mv	a2,a1
   10af2:	85aa                	mv	a1,a0
   10af4:	03e00513          	li	a0,62
   10af8:	00000317          	auipc	t1,0x0
   10afc:	f9c30067          	jr	-100(t1) # 10a94 <__internal_syscall>

0000000000010b00 <read>:
   10b00:	86b2                	mv	a3,a2
   10b02:	4701                	li	a4,0
   10b04:	862e                	mv	a2,a1
   10b06:	85aa                	mv	a1,a0
   10b08:	03f00513          	li	a0,63
   10b0c:	f89ff06f          	j	10a94 <__internal_syscall>

0000000000010b10 <write>:
   10b10:	86b2                	mv	a3,a2
   10b12:	4701                	li	a4,0
   10b14:	862e                	mv	a2,a1
   10b16:	85aa                	mv	a1,a0
   10b18:	04000513          	li	a0,64
   10b1c:	00000317          	auipc	t1,0x0
   10b20:	f7830067          	jr	-136(t1) # 10a94 <__internal_syscall>

0000000000010b24 <fstat>:
   10b24:	7135                	addi	sp,sp,-160
   10b26:	e526                	sd	s1,136(sp)
   10b28:	860a                	mv	a2,sp
   10b2a:	84ae                	mv	s1,a1
   10b2c:	4701                	li	a4,0
   10b2e:	85aa                	mv	a1,a0
   10b30:	4681                	li	a3,0
   10b32:	05000513          	li	a0,80
   10b36:	ed06                	sd	ra,152(sp)
   10b38:	e922                	sd	s0,144(sp)
   10b3a:	f5bff0ef          	jal	ra,10a94 <__internal_syscall>
   10b3e:	842a                	mv	s0,a0
   10b40:	858a                	mv	a1,sp
   10b42:	8526                	mv	a0,s1
   10b44:	eefff0ef          	jal	ra,10a32 <conv_stat>
   10b48:	0004051b          	sext.w	a0,s0
   10b4c:	60ea                	ld	ra,152(sp)
   10b4e:	644a                	ld	s0,144(sp)
   10b50:	64aa                	ld	s1,136(sp)
   10b52:	610d                	addi	sp,sp,160
   10b54:	8082                	ret

0000000000010b56 <stat>:
   10b56:	7135                	addi	sp,sp,-160
   10b58:	e526                	sd	s1,136(sp)
   10b5a:	860a                	mv	a2,sp
   10b5c:	84ae                	mv	s1,a1
   10b5e:	4701                	li	a4,0
   10b60:	85aa                	mv	a1,a0
   10b62:	4681                	li	a3,0
   10b64:	40e00513          	li	a0,1038
   10b68:	ed06                	sd	ra,152(sp)
   10b6a:	e922                	sd	s0,144(sp)
   10b6c:	00000097          	auipc	ra,0x0
   10b70:	f28080e7          	jalr	-216(ra) # 10a94 <__internal_syscall>
   10b74:	842a                	mv	s0,a0
   10b76:	858a                	mv	a1,sp
   10b78:	8526                	mv	a0,s1
   10b7a:	00000097          	auipc	ra,0x0
   10b7e:	eb8080e7          	jalr	-328(ra) # 10a32 <conv_stat>
   10b82:	0004051b          	sext.w	a0,s0
   10b86:	60ea                	ld	ra,152(sp)
   10b88:	644a                	ld	s0,144(sp)
   10b8a:	64aa                	ld	s1,136(sp)
   10b8c:	610d                	addi	sp,sp,160
   10b8e:	8082                	ret

0000000000010b90 <lstat>:
   10b90:	7135                	addi	sp,sp,-160
   10b92:	e526                	sd	s1,136(sp)
   10b94:	860a                	mv	a2,sp
   10b96:	84ae                	mv	s1,a1
   10b98:	4701                	li	a4,0
   10b9a:	85aa                	mv	a1,a0
   10b9c:	4681                	li	a3,0
   10b9e:	40f00513          	li	a0,1039
   10ba2:	ed06                	sd	ra,152(sp)
   10ba4:	e922                	sd	s0,144(sp)
   10ba6:	eefff0ef          	jal	ra,10a94 <__internal_syscall>
   10baa:	842a                	mv	s0,a0
   10bac:	858a                	mv	a1,sp
   10bae:	8526                	mv	a0,s1
   10bb0:	e83ff0ef          	jal	ra,10a32 <conv_stat>
   10bb4:	0004051b          	sext.w	a0,s0
   10bb8:	60ea                	ld	ra,152(sp)
   10bba:	644a                	ld	s0,144(sp)
   10bbc:	64aa                	ld	s1,136(sp)
   10bbe:	610d                	addi	sp,sp,160
   10bc0:	8082                	ret

0000000000010bc2 <fstatat>:
   10bc2:	7135                	addi	sp,sp,-160
   10bc4:	e526                	sd	s1,136(sp)
   10bc6:	8736                	mv	a4,a3
   10bc8:	84b2                	mv	s1,a2
   10bca:	868a                	mv	a3,sp
   10bcc:	862e                	mv	a2,a1
   10bce:	85aa                	mv	a1,a0
   10bd0:	04f00513          	li	a0,79
   10bd4:	ed06                	sd	ra,152(sp)
   10bd6:	e922                	sd	s0,144(sp)
   10bd8:	00000097          	auipc	ra,0x0
   10bdc:	ebc080e7          	jalr	-324(ra) # 10a94 <__internal_syscall>
   10be0:	842a                	mv	s0,a0
   10be2:	858a                	mv	a1,sp
   10be4:	8526                	mv	a0,s1
   10be6:	00000097          	auipc	ra,0x0
   10bea:	e4c080e7          	jalr	-436(ra) # 10a32 <conv_stat>
   10bee:	0004051b          	sext.w	a0,s0
   10bf2:	60ea                	ld	ra,152(sp)
   10bf4:	644a                	ld	s0,144(sp)
   10bf6:	64aa                	ld	s1,136(sp)
   10bf8:	610d                	addi	sp,sp,160
   10bfa:	8082                	ret

0000000000010bfc <access>:
   10bfc:	1141                	addi	sp,sp,-16
   10bfe:	862e                	mv	a2,a1
   10c00:	4701                	li	a4,0
   10c02:	85aa                	mv	a1,a0
   10c04:	4681                	li	a3,0
   10c06:	40900513          	li	a0,1033
   10c0a:	e406                	sd	ra,8(sp)
   10c0c:	e89ff0ef          	jal	ra,10a94 <__internal_syscall>
   10c10:	60a2                	ld	ra,8(sp)
   10c12:	2501                	sext.w	a0,a0
   10c14:	0141                	addi	sp,sp,16
   10c16:	8082                	ret

0000000000010c18 <faccessat>:
   10c18:	1141                	addi	sp,sp,-16
   10c1a:	8736                	mv	a4,a3
   10c1c:	86b2                	mv	a3,a2
   10c1e:	862e                	mv	a2,a1
   10c20:	85aa                	mv	a1,a0
   10c22:	03000513          	li	a0,48
   10c26:	e406                	sd	ra,8(sp)
   10c28:	00000097          	auipc	ra,0x0
   10c2c:	e6c080e7          	jalr	-404(ra) # 10a94 <__internal_syscall>
   10c30:	60a2                	ld	ra,8(sp)
   10c32:	2501                	sext.w	a0,a0
   10c34:	0141                	addi	sp,sp,16
   10c36:	8082                	ret

0000000000010c38 <close>:
   10c38:	1141                	addi	sp,sp,-16
   10c3a:	85aa                	mv	a1,a0
   10c3c:	4701                	li	a4,0
   10c3e:	4681                	li	a3,0
   10c40:	4601                	li	a2,0
   10c42:	03900513          	li	a0,57
   10c46:	e406                	sd	ra,8(sp)
   10c48:	e4dff0ef          	jal	ra,10a94 <__internal_syscall>
   10c4c:	60a2                	ld	ra,8(sp)
   10c4e:	2501                	sext.w	a0,a0
   10c50:	0141                	addi	sp,sp,16
   10c52:	8082                	ret

0000000000010c54 <link>:
   10c54:	1141                	addi	sp,sp,-16
   10c56:	862e                	mv	a2,a1
   10c58:	4701                	li	a4,0
   10c5a:	85aa                	mv	a1,a0
   10c5c:	4681                	li	a3,0
   10c5e:	40100513          	li	a0,1025
   10c62:	e406                	sd	ra,8(sp)
   10c64:	00000097          	auipc	ra,0x0
   10c68:	e30080e7          	jalr	-464(ra) # 10a94 <__internal_syscall>
   10c6c:	60a2                	ld	ra,8(sp)
   10c6e:	2501                	sext.w	a0,a0
   10c70:	0141                	addi	sp,sp,16
   10c72:	8082                	ret

0000000000010c74 <unlink>:
   10c74:	1141                	addi	sp,sp,-16
   10c76:	85aa                	mv	a1,a0
   10c78:	4701                	li	a4,0
   10c7a:	4681                	li	a3,0
   10c7c:	4601                	li	a2,0
   10c7e:	40200513          	li	a0,1026
   10c82:	e406                	sd	ra,8(sp)
   10c84:	e11ff0ef          	jal	ra,10a94 <__internal_syscall>
   10c88:	60a2                	ld	ra,8(sp)
   10c8a:	2501                	sext.w	a0,a0
   10c8c:	0141                	addi	sp,sp,16
   10c8e:	8082                	ret

0000000000010c90 <execve>:
   10c90:	1141                	addi	sp,sp,-16
   10c92:	e406                	sd	ra,8(sp)
   10c94:	00000097          	auipc	ra,0x0
   10c98:	1a2080e7          	jalr	418(ra) # 10e36 <__errno>
   10c9c:	60a2                	ld	ra,8(sp)
   10c9e:	47b1                	li	a5,12
   10ca0:	c11c                	sw	a5,0(a0)
   10ca2:	557d                	li	a0,-1
   10ca4:	0141                	addi	sp,sp,16
   10ca6:	8082                	ret

0000000000010ca8 <fork>:
   10ca8:	1141                	addi	sp,sp,-16
   10caa:	e406                	sd	ra,8(sp)
   10cac:	18a000ef          	jal	ra,10e36 <__errno>
   10cb0:	60a2                	ld	ra,8(sp)
   10cb2:	47ad                	li	a5,11
   10cb4:	c11c                	sw	a5,0(a0)
   10cb6:	557d                	li	a0,-1
   10cb8:	0141                	addi	sp,sp,16
   10cba:	8082                	ret

0000000000010cbc <getpid>:
   10cbc:	4505                	li	a0,1
   10cbe:	8082                	ret

0000000000010cc0 <kill>:
   10cc0:	1141                	addi	sp,sp,-16
   10cc2:	e406                	sd	ra,8(sp)
   10cc4:	172000ef          	jal	ra,10e36 <__errno>
   10cc8:	60a2                	ld	ra,8(sp)
   10cca:	47d9                	li	a5,22
   10ccc:	c11c                	sw	a5,0(a0)
   10cce:	557d                	li	a0,-1
   10cd0:	0141                	addi	sp,sp,16
   10cd2:	8082                	ret

0000000000010cd4 <wait>:
   10cd4:	1141                	addi	sp,sp,-16
   10cd6:	e406                	sd	ra,8(sp)
   10cd8:	00000097          	auipc	ra,0x0
   10cdc:	15e080e7          	jalr	350(ra) # 10e36 <__errno>
   10ce0:	60a2                	ld	ra,8(sp)
   10ce2:	47a9                	li	a5,10
   10ce4:	c11c                	sw	a5,0(a0)
   10ce6:	557d                	li	a0,-1
   10ce8:	0141                	addi	sp,sp,16
   10cea:	8082                	ret

0000000000010cec <isatty>:
   10cec:	7119                	addi	sp,sp,-128
   10cee:	002c                	addi	a1,sp,8
   10cf0:	fc86                	sd	ra,120(sp)
   10cf2:	e33ff0ef          	jal	ra,10b24 <fstat>
   10cf6:	57fd                	li	a5,-1
   10cf8:	00f50663          	beq	a0,a5,10d04 <isatty+0x18>
   10cfc:	4532                	lw	a0,12(sp)
   10cfe:	40d5551b          	sraiw	a0,a0,0xd
   10d02:	8905                	andi	a0,a0,1
   10d04:	70e6                	ld	ra,120(sp)
   10d06:	6109                	addi	sp,sp,128
   10d08:	8082                	ret

0000000000010d0a <gettimeofday>:
   10d0a:	1141                	addi	sp,sp,-16
   10d0c:	85aa                	mv	a1,a0
   10d0e:	4701                	li	a4,0
   10d10:	4681                	li	a3,0
   10d12:	4601                	li	a2,0
   10d14:	0a900513          	li	a0,169
   10d18:	e406                	sd	ra,8(sp)
   10d1a:	00000097          	auipc	ra,0x0
   10d1e:	d7a080e7          	jalr	-646(ra) # 10a94 <__internal_syscall>
   10d22:	60a2                	ld	ra,8(sp)
   10d24:	2501                	sext.w	a0,a0
   10d26:	0141                	addi	sp,sp,16
   10d28:	8082                	ret

0000000000010d2a <times>:
   10d2a:	7179                	addi	sp,sp,-48
   10d2c:	f022                	sd	s0,32(sp)
   10d2e:	842a                	mv	s0,a0
   10d30:	8a81b783          	ld	a5,-1880(gp) # 118e0 <t0.2574>
   10d34:	ec26                	sd	s1,24(sp)
   10d36:	f406                	sd	ra,40(sp)
   10d38:	8a818493          	addi	s1,gp,-1880 # 118e0 <t0.2574>
   10d3c:	eb81                	bnez	a5,10d4c <times+0x22>
   10d3e:	4581                	li	a1,0
   10d40:	8a818513          	addi	a0,gp,-1880 # 118e0 <t0.2574>
   10d44:	00000097          	auipc	ra,0x0
   10d48:	fc6080e7          	jalr	-58(ra) # 10d0a <gettimeofday>
   10d4c:	850a                	mv	a0,sp
   10d4e:	4581                	li	a1,0
   10d50:	00000097          	auipc	ra,0x0
   10d54:	fba080e7          	jalr	-70(ra) # 10d0a <gettimeofday>
   10d58:	6098                	ld	a4,0(s1)
   10d5a:	6782                	ld	a5,0(sp)
   10d5c:	6494                	ld	a3,8(s1)
   10d5e:	00043823          	sd	zero,16(s0)
   10d62:	8f99                	sub	a5,a5,a4
   10d64:	000f4737          	lui	a4,0xf4
   10d68:	24070713          	addi	a4,a4,576 # f4240 <__global_pointer$+0xe2208>
   10d6c:	02e787b3          	mul	a5,a5,a4
   10d70:	6722                	ld	a4,8(sp)
   10d72:	00043c23          	sd	zero,24(s0)
   10d76:	00043423          	sd	zero,8(s0)
   10d7a:	8f15                	sub	a4,a4,a3
   10d7c:	70a2                	ld	ra,40(sp)
   10d7e:	64e2                	ld	s1,24(sp)
   10d80:	557d                	li	a0,-1
   10d82:	97ba                	add	a5,a5,a4
   10d84:	e01c                	sd	a5,0(s0)
   10d86:	7402                	ld	s0,32(sp)
   10d88:	6145                	addi	sp,sp,48
   10d8a:	8082                	ret

0000000000010d8c <ftime>:
   10d8c:	00051423          	sh	zero,8(a0)
   10d90:	00053023          	sd	zero,0(a0)
   10d94:	4501                	li	a0,0
   10d96:	8082                	ret

0000000000010d98 <utime>:
   10d98:	557d                	li	a0,-1
   10d9a:	8082                	ret

0000000000010d9c <chown>:
   10d9c:	557d                	li	a0,-1
   10d9e:	8082                	ret

0000000000010da0 <chmod>:
   10da0:	557d                	li	a0,-1
   10da2:	8082                	ret

0000000000010da4 <chdir>:
   10da4:	557d                	li	a0,-1
   10da6:	8082                	ret

0000000000010da8 <getcwd>:
   10da8:	4501                	li	a0,0
   10daa:	8082                	ret

0000000000010dac <sysconf>:
   10dac:	4789                	li	a5,2
   10dae:	00f50463          	beq	a0,a5,10db6 <sysconf+0xa>
   10db2:	557d                	li	a0,-1
   10db4:	8082                	ret
   10db6:	000f4537          	lui	a0,0xf4
   10dba:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe2208>
   10dbe:	8082                	ret

0000000000010dc0 <sbrk>:
   10dc0:	1101                	addi	sp,sp,-32
   10dc2:	e822                	sd	s0,16(sp)
   10dc4:	8201b783          	ld	a5,-2016(gp) # 11858 <heap_end.2611>
   10dc8:	e426                	sd	s1,8(sp)
   10dca:	ec06                	sd	ra,24(sp)
   10dcc:	84aa                	mv	s1,a0
   10dce:	e785                	bnez	a5,10df6 <sbrk+0x36>
   10dd0:	4701                	li	a4,0
   10dd2:	4681                	li	a3,0
   10dd4:	4601                	li	a2,0
   10dd6:	4581                	li	a1,0
   10dd8:	0d600513          	li	a0,214
   10ddc:	cb9ff0ef          	jal	ra,10a94 <__internal_syscall>
   10de0:	57fd                	li	a5,-1
   10de2:	00f51863          	bne	a0,a5,10df2 <sbrk+0x32>
   10de6:	557d                	li	a0,-1
   10de8:	60e2                	ld	ra,24(sp)
   10dea:	6442                	ld	s0,16(sp)
   10dec:	64a2                	ld	s1,8(sp)
   10dee:	6105                	addi	sp,sp,32
   10df0:	8082                	ret
   10df2:	82a1b023          	sd	a0,-2016(gp) # 11858 <heap_end.2611>
   10df6:	8201b583          	ld	a1,-2016(gp) # 11858 <heap_end.2611>
   10dfa:	4701                	li	a4,0
   10dfc:	4681                	li	a3,0
   10dfe:	95a6                	add	a1,a1,s1
   10e00:	4601                	li	a2,0
   10e02:	0d600513          	li	a0,214
   10e06:	c8fff0ef          	jal	ra,10a94 <__internal_syscall>
   10e0a:	8201b783          	ld	a5,-2016(gp) # 11858 <heap_end.2611>
   10e0e:	94be                	add	s1,s1,a5
   10e10:	fc951be3          	bne	a0,s1,10de6 <sbrk+0x26>
   10e14:	82a1b023          	sd	a0,-2016(gp) # 11858 <heap_end.2611>
   10e18:	853e                	mv	a0,a5
   10e1a:	b7f9                	j	10de8 <sbrk+0x28>

0000000000010e1c <_exit>:
   10e1c:	1141                	addi	sp,sp,-16
   10e1e:	85aa                	mv	a1,a0
   10e20:	4701                	li	a4,0
   10e22:	4681                	li	a3,0
   10e24:	4601                	li	a2,0
   10e26:	05d00513          	li	a0,93
   10e2a:	e406                	sd	ra,8(sp)
   10e2c:	00000097          	auipc	ra,0x0
   10e30:	c68080e7          	jalr	-920(ra) # 10a94 <__internal_syscall>
   10e34:	a001                	j	10e34 <_exit+0x18>

0000000000010e36 <__errno>:
   10e36:	8101b503          	ld	a0,-2032(gp) # 11848 <_impure_ptr>
   10e3a:	8082                	ret
	...

Disassembly of section .eh_frame:

0000000000010e40 <__EH_FRAME_BEGIN__>:
   10e40:	0010                	addi	a2,sp,0
   10e42:	0000                	unimp
   10e44:	0000                	unimp
   10e46:	0000                	unimp
   10e48:	7a01                	lui	s4,0xfffe0
   10e4a:	0052                	0x52
   10e4c:	7c01                	lui	s8,0xfffe0
   10e4e:	0101                	addi	sp,sp,0
   10e50:	00020d1b          	sext.w	s10,tp
   10e54:	001c                	addi	a5,sp,0
   10e56:	0000                	unimp
   10e58:	0018                	addi	a4,sp,0
   10e5a:	0000                	unimp
   10e5c:	f350                	sd	a2,160(a4)
   10e5e:	ffff                	0xffff
   10e60:	004c                	addi	a1,sp,4
   10e62:	0000                	unimp
   10e64:	4400                	lw	s0,8(s0)
   10e66:	300e                	fld	ft0,224(sp)
   10e68:	8844                	0x8844
   10e6a:	4402                	lw	s0,0(sp)
   10e6c:	080c                	addi	a1,sp,16
   10e6e:	7800                	ld	s0,48(s0)
   10e70:	44c8                	lw	a0,12(s1)
   10e72:	020d                	addi	tp,tp,3
   10e74:	0024                	addi	s1,sp,8
   10e76:	0000                	unimp
   10e78:	0038                	addi	a4,sp,8
   10e7a:	0000                	unimp
   10e7c:	f37c                	sd	a5,224(a4)
   10e7e:	ffff                	0xffff
   10e80:	0184                	addi	s1,sp,192
   10e82:	0000                	unimp
   10e84:	4400                	lw	s0,8(s0)
   10e86:	300e                	fld	ft0,224(sp)
   10e88:	8148                	0x8148
   10e8a:	8802                	jr	a6
   10e8c:	4404                	lw	s1,8(s0)
   10e8e:	080c                	addi	a1,sp,16
   10e90:	0300                	addi	s0,sp,384
   10e92:	0168                	addi	a0,sp,140
   10e94:	44c1                	li	s1,16
   10e96:	44c8                	lw	a0,12(s1)
   10e98:	020d                	addi	tp,tp,3
   10e9a:	0000                	unimp
   10e9c:	0024                	addi	s1,sp,8
   10e9e:	0000                	unimp
   10ea0:	0060                	addi	s0,sp,12
   10ea2:	0000                	unimp
   10ea4:	f4d8                	sd	a4,168(s1)
   10ea6:	ffff                	0xffff
   10ea8:	00e0                	addi	s0,sp,76
   10eaa:	0000                	unimp
   10eac:	4400                	lw	s0,8(s0)
   10eae:	300e                	fld	ft0,224(sp)
   10eb0:	8148                	0x8148
   10eb2:	8802                	jr	a6
   10eb4:	4404                	lw	s1,8(s0)
   10eb6:	080c                	addi	a1,sp,16
   10eb8:	0200                	addi	s0,sp,256
   10eba:	c1c4                	sw	s1,4(a1)
   10ebc:	c844                	sw	s1,20(s0)
   10ebe:	0d44                	addi	s1,sp,660
   10ec0:	0002                	0x2
   10ec2:	0000                	unimp
   10ec4:	0024                	addi	s1,sp,8
   10ec6:	0000                	unimp
   10ec8:	0088                	addi	a0,sp,64
   10eca:	0000                	unimp
   10ecc:	f590                	sd	a2,40(a1)
   10ece:	ffff                	0xffff
   10ed0:	009c                	addi	a5,sp,64
   10ed2:	0000                	unimp
   10ed4:	4400                	lw	s0,8(s0)
   10ed6:	200e                	fld	ft0,192(sp)
   10ed8:	8148                	0x8148
   10eda:	8802                	jr	a6
   10edc:	4404                	lw	s1,8(s0)
   10ede:	080c                	addi	a1,sp,16
   10ee0:	0200                	addi	s0,sp,256
   10ee2:	c180                	sw	s0,0(a1)
   10ee4:	c844                	sw	s1,20(s0)
   10ee6:	0d44                	addi	s1,sp,660
   10ee8:	0002                	0x2
   10eea:	0000                	unimp
   10eec:	0020                	addi	s0,sp,8
   10eee:	0000                	unimp
   10ef0:	00b0                	addi	a2,sp,72
   10ef2:	0000                	unimp
   10ef4:	f604                	sd	s1,40(a2)
   10ef6:	ffff                	0xffff
   10ef8:	0030                	addi	a2,sp,8
   10efa:	0000                	unimp
   10efc:	4400                	lw	s0,8(s0)
   10efe:	100e                	0x100e
   10f00:	8148                	0x8148
   10f02:	8802                	jr	a6
   10f04:	4404                	lw	s1,8(s0)
   10f06:	080c                	addi	a1,sp,16
   10f08:	5800                	lw	s0,48(s0)
   10f0a:	44c1                	li	s1,16
   10f0c:	44c8                	lw	a0,12(s1)
   10f0e:	020d                	addi	tp,tp,3
   10f10:	0020                	addi	s0,sp,8
   10f12:	0000                	unimp
   10f14:	00d4                	addi	a3,sp,68
   10f16:	0000                	unimp
   10f18:	f610                	sd	a2,40(a2)
   10f1a:	ffff                	0xffff
   10f1c:	01b0                	addi	a2,sp,200
   10f1e:	0000                	unimp
   10f20:	4400                	lw	s0,8(s0)
   10f22:	300e                	fld	ft0,224(sp)
   10f24:	8844                	0x8844
   10f26:	4402                	lw	s0,0(sp)
   10f28:	080c                	addi	a1,sp,16
   10f2a:	0300                	addi	s0,sp,384
   10f2c:	019c                	addi	a5,sp,192
   10f2e:	44c8                	lw	a0,12(s1)
   10f30:	020d                	addi	tp,tp,3
   10f32:	0000                	unimp
   10f34:	0020                	addi	s0,sp,8
   10f36:	0000                	unimp
   10f38:	00f8                	addi	a4,sp,76
   10f3a:	0000                	unimp
   10f3c:	f79c                	sd	a5,40(a5)
   10f3e:	ffff                	0xffff
   10f40:	0040                	addi	s0,sp,4
   10f42:	0000                	unimp
   10f44:	4400                	lw	s0,8(s0)
   10f46:	100e                	0x100e
   10f48:	8148                	0x8148
   10f4a:	8802                	jr	a6
   10f4c:	4404                	lw	s1,8(s0)
   10f4e:	080c                	addi	a1,sp,16
   10f50:	6800                	ld	s0,16(s0)
   10f52:	44c1                	li	s1,16
   10f54:	44c8                	lw	a0,12(s1)
   10f56:	020d                	addi	tp,tp,3
   10f58:	0020                	addi	s0,sp,8
   10f5a:	0000                	unimp
   10f5c:	011c                	addi	a5,sp,128
   10f5e:	0000                	unimp
   10f60:	f7b8                	sd	a4,104(a5)
   10f62:	ffff                	0xffff
   10f64:	0038                	addi	a4,sp,8
   10f66:	0000                	unimp
   10f68:	4400                	lw	s0,8(s0)
   10f6a:	100e                	0x100e
   10f6c:	8148                	0x8148
   10f6e:	8802                	jr	a6
   10f70:	4404                	lw	s1,8(s0)
   10f72:	080c                	addi	a1,sp,16
   10f74:	6000                	ld	s0,0(s0)
   10f76:	44c1                	li	s1,16
   10f78:	44c8                	lw	a0,12(s1)
   10f7a:	020d                	addi	tp,tp,3
   10f7c:	0020                	addi	s0,sp,8
   10f7e:	0000                	unimp
   10f80:	0140                	addi	s0,sp,132
   10f82:	0000                	unimp
   10f84:	f7cc                	sd	a1,168(a5)
   10f86:	ffff                	0xffff
   10f88:	0030                	addi	a2,sp,8
   10f8a:	0000                	unimp
   10f8c:	4400                	lw	s0,8(s0)
   10f8e:	100e                	0x100e
   10f90:	8148                	0x8148
   10f92:	8802                	jr	a6
   10f94:	4404                	lw	s1,8(s0)
   10f96:	080c                	addi	a1,sp,16
   10f98:	5400                	lw	s0,40(s0)
   10f9a:	44c1                	li	s1,16
   10f9c:	44c8                	lw	a0,12(s1)
   10f9e:	020d                	addi	tp,tp,3

0000000000010fa0 <__FRAME_END__>:
   10fa0:	0000                	unimp
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
   11010:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
   11014:	0000                	unimp
   11016:	0000                	unimp
   11018:	0001                	nop
   1101a:	0000                	unimp
   1101c:	0000                	unimp
   1101e:	0000                	unimp
   11020:	0005                	c.addi	zero,1
   11022:	0000                	unimp
   11024:	0000                	unimp
   11026:	0000                	unimp
   11028:	0004                	addi	s1,sp,0
   1102a:	0000                	unimp
   1102c:	0000                	unimp
   1102e:	0000                	unimp
   11030:	0008                	addi	a0,sp,0
   11032:	0000                	unimp
   11034:	0000                	unimp
   11036:	0000                	unimp
   11038:	0006                	0x6
   1103a:	0000                	unimp
   1103c:	0000                	unimp
   1103e:	0000                	unimp
   11040:	0009                	c.addi	zero,2
   11042:	0000                	unimp
   11044:	0000                	unimp
   11046:	0000                	unimp
   11048:	0002                	0x2
	...
   11056:	0000                	unimp
   11058:	00000007          	0x7
   1105c:	0000                	unimp
	...

0000000000011060 <b>:
   11060:	0001                	nop
   11062:	0000                	unimp
   11064:	0000                	unimp
   11066:	0000                	unimp
   11068:	0001                	nop
   1106a:	0000                	unimp
   1106c:	0000                	unimp
   1106e:	0000                	unimp
   11070:	0001                	nop
   11072:	0000                	unimp
   11074:	0000                	unimp
   11076:	0000                	unimp
   11078:	0002                	0x2
   1107a:	0000                	unimp
   1107c:	0000                	unimp
   1107e:	0000                	unimp
   11080:	0002                	0x2
   11082:	0000                	unimp
   11084:	0000                	unimp
   11086:	0000                	unimp
   11088:	0002                	0x2
   1108a:	0000                	unimp
   1108c:	0000                	unimp
   1108e:	0000                	unimp
   11090:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
   11094:	0000                	unimp
   11096:	0000                	unimp
   11098:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
   1109c:	0000                	unimp
   1109e:	0000                	unimp
   110a0:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
   110a4:	0000                	unimp
	...

00000000000110a8 <c>:
   110a8:	0004                	addi	s1,sp,0
   110aa:	0000                	unimp
   110ac:	0000                	unimp
   110ae:	0000                	unimp
   110b0:	0005                	c.addi	zero,1
   110b2:	0000                	unimp
   110b4:	0000                	unimp
   110b6:	0000                	unimp
   110b8:	0006                	0x6
   110ba:	0000                	unimp
   110bc:	0000                	unimp
   110be:	0000                	unimp
   110c0:	0004                	addi	s1,sp,0
   110c2:	0000                	unimp
   110c4:	0000                	unimp
   110c6:	0000                	unimp
   110c8:	0005                	c.addi	zero,1
   110ca:	0000                	unimp
   110cc:	0000                	unimp
   110ce:	0000                	unimp
   110d0:	0006                	0x6
   110d2:	0000                	unimp
   110d4:	0000                	unimp
   110d6:	0000                	unimp
   110d8:	0004                	addi	s1,sp,0
   110da:	0000                	unimp
   110dc:	0000                	unimp
   110de:	0000                	unimp
   110e0:	0005                	c.addi	zero,1
   110e2:	0000                	unimp
   110e4:	0000                	unimp
   110e6:	0000                	unimp
   110e8:	0006                	0x6
   110ea:	0000                	unimp
   110ec:	0000                	unimp
	...

00000000000110f0 <impure_data>:
	...
   110f8:	1628                	addi	a0,sp,808
   110fa:	0001                	nop
   110fc:	0000                	unimp
   110fe:	0000                	unimp
   11100:	16d8                	addi	a4,sp,868
   11102:	0001                	nop
   11104:	0000                	unimp
   11106:	0000                	unimp
   11108:	1788                	addi	a0,sp,992
   1110a:	0001                	nop
	...
   111d8:	0001                	nop
   111da:	0000                	unimp
   111dc:	0000                	unimp
   111de:	0000                	unimp
   111e0:	330e                	fld	ft6,224(sp)
   111e2:	abcd                	j	117d4 <impure_data+0x6e4>
   111e4:	1234                	addi	a3,sp,296
   111e6:	e66d                	bnez	a2,112d0 <impure_data+0x1e0>
   111e8:	deec                	sw	a1,124(a3)
   111ea:	0005                	c.addi	zero,1
   111ec:	0000000b          	0xb
	...

Disassembly of section .sdata:

0000000000011838 <__TMC_END__>:
	...

0000000000011840 <_global_impure_ptr>:
   11840:	10f0                	addi	a2,sp,108
   11842:	0001                	nop
   11844:	0000                	unimp
	...

0000000000011848 <_impure_ptr>:
   11848:	10f0                	addi	a2,sp,108
   1184a:	0001                	nop
   1184c:	0000                	unimp
	...

Disassembly of section .sbss:

0000000000011850 <e>:
	...

0000000000011858 <heap_end.2611>:
	...

Disassembly of section .bss:

0000000000011860 <completed.5184>:
	...

0000000000011868 <object.5189>:
	...

0000000000011898 <d>:
	...

00000000000118e0 <t0.2574>:
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
