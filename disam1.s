
benchmark:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00007197          	auipc	gp,0x7
   100b4:	31818193          	addi	gp,gp,792 # 173c8 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 16be0 <_edata>
   100bc:	00008617          	auipc	a2,0x8
   100c0:	efc60613          	addi	a2,a2,-260 # 17fb8 <_end>
   100c4:	8e09                	sub	a2,a2,a0
   100c6:	4581                	li	a1,0
   100c8:	61a000ef          	jal	ra,106e2 <memset>
   100cc:	00000517          	auipc	a0,0x0
   100d0:	56050513          	addi	a0,a0,1376 # 1062c <__libc_fini_array>
   100d4:	00000097          	auipc	ra,0x0
   100d8:	524080e7          	jalr	1316(ra) # 105f8 <atexit>
   100dc:	00000097          	auipc	ra,0x0
   100e0:	59e080e7          	jalr	1438(ra) # 1067a <__libc_init_array>
   100e4:	4502                	lw	a0,0(sp)
   100e6:	002c                	addi	a1,sp,8
   100e8:	4601                	li	a2,0
   100ea:	00000097          	auipc	ra,0x0
   100ee:	4f0080e7          	jalr	1264(ra) # 105da <main>
   100f2:	00000317          	auipc	t1,0x0
   100f6:	51430067          	jr	1300(t1) # 10606 <exit>

00000000000100fa <_fini>:
   100fa:	8082                	ret

00000000000100fc <deregister_tm_clones>:
   100fc:	655d                	lui	a0,0x17
   100fe:	67dd                	lui	a5,0x17
   10100:	bc850713          	addi	a4,a0,-1080 # 16bc8 <__TMC_END__>
   10104:	bc878793          	addi	a5,a5,-1080 # 16bc8 <__TMC_END__>
   10108:	00e78b63          	beq	a5,a4,1011e <deregister_tm_clones+0x22>
   1010c:	00000337          	lui	t1,0x0
   10110:	00030313          	mv	t1,t1
   10114:	00030563          	beqz	t1,1011e <deregister_tm_clones+0x22>
   10118:	bc850513          	addi	a0,a0,-1080
   1011c:	8302                	jr	t1
   1011e:	8082                	ret

0000000000010120 <register_tm_clones>:
   10120:	67dd                	lui	a5,0x17
   10122:	655d                	lui	a0,0x17
   10124:	bc878593          	addi	a1,a5,-1080 # 16bc8 <__TMC_END__>
   10128:	bc850793          	addi	a5,a0,-1080 # 16bc8 <__TMC_END__>
   1012c:	8d9d                	sub	a1,a1,a5
   1012e:	858d                	srai	a1,a1,0x3
   10130:	4789                	li	a5,2
   10132:	02f5c5b3          	div	a1,a1,a5
   10136:	c991                	beqz	a1,1014a <register_tm_clones+0x2a>
   10138:	00000337          	lui	t1,0x0
   1013c:	00030313          	mv	t1,t1
   10140:	00030563          	beqz	t1,1014a <register_tm_clones+0x2a>
   10144:	bc850513          	addi	a0,a0,-1080
   10148:	8302                	jr	t1
   1014a:	8082                	ret

000000000001014c <__do_global_dtors_aux>:
   1014c:	8201c703          	lbu	a4,-2016(gp) # 16be8 <completed.5184>
   10150:	eb15                	bnez	a4,10184 <__do_global_dtors_aux+0x38>
   10152:	1141                	addi	sp,sp,-16
   10154:	e022                	sd	s0,0(sp)
   10156:	e406                	sd	ra,8(sp)
   10158:	843e                	mv	s0,a5
   1015a:	fa3ff0ef          	jal	ra,100fc <deregister_tm_clones>
   1015e:	000007b7          	lui	a5,0x0
   10162:	00078793          	mv	a5,a5
   10166:	cb81                	beqz	a5,10176 <__do_global_dtors_aux+0x2a>
   10168:	6545                	lui	a0,0x11
   1016a:	cb850513          	addi	a0,a0,-840 # 10cb8 <__EH_FRAME_BEGIN__>
   1016e:	ffff0097          	auipc	ra,0xffff0
   10172:	e92080e7          	jalr	-366(ra) # 0 <_start-0x100b0>
   10176:	4785                	li	a5,1
   10178:	82f18023          	sb	a5,-2016(gp) # 16be8 <completed.5184>
   1017c:	60a2                	ld	ra,8(sp)
   1017e:	6402                	ld	s0,0(sp)
   10180:	0141                	addi	sp,sp,16
   10182:	8082                	ret
   10184:	8082                	ret

0000000000010186 <frame_dummy>:
   10186:	000007b7          	lui	a5,0x0
   1018a:	00078793          	mv	a5,a5
   1018e:	cf99                	beqz	a5,101ac <frame_dummy+0x26>
   10190:	65dd                	lui	a1,0x17
   10192:	6545                	lui	a0,0x11
   10194:	1141                	addi	sp,sp,-16
   10196:	bf058593          	addi	a1,a1,-1040 # 16bf0 <object.5189>
   1019a:	cb850513          	addi	a0,a0,-840 # 10cb8 <__EH_FRAME_BEGIN__>
   1019e:	e406                	sd	ra,8(sp)
   101a0:	ffff0097          	auipc	ra,0xffff0
   101a4:	e60080e7          	jalr	-416(ra) # 0 <_start-0x100b0>
   101a8:	60a2                	ld	ra,8(sp)
   101aa:	0141                	addi	sp,sp,16
   101ac:	f75ff06f          	j	10120 <register_tm_clones>

00000000000101b0 <_Z4swapPxS_>:
   101b0:	7179                	addi	sp,sp,-48
   101b2:	f422                	sd	s0,40(sp)
   101b4:	1800                	addi	s0,sp,48
   101b6:	fca43c23          	sd	a0,-40(s0)
   101ba:	fcb43823          	sd	a1,-48(s0)
   101be:	fd843783          	ld	a5,-40(s0)
   101c2:	639c                	ld	a5,0(a5)
   101c4:	fef43423          	sd	a5,-24(s0)
   101c8:	fd043783          	ld	a5,-48(s0)
   101cc:	6398                	ld	a4,0(a5)
   101ce:	fd843783          	ld	a5,-40(s0)
   101d2:	e398                	sd	a4,0(a5)
   101d4:	fd043783          	ld	a5,-48(s0)
   101d8:	fe843703          	ld	a4,-24(s0)
   101dc:	e398                	sd	a4,0(a5)
   101de:	0001                	nop
   101e0:	7422                	ld	s0,40(sp)
   101e2:	6145                	addi	sp,sp,48
   101e4:	8082                	ret

00000000000101e6 <_Z9partationiii>:
   101e6:	7179                	addi	sp,sp,-48
   101e8:	f406                	sd	ra,40(sp)
   101ea:	f022                	sd	s0,32(sp)
   101ec:	1800                	addi	s0,sp,48
   101ee:	87aa                	mv	a5,a0
   101f0:	86ae                	mv	a3,a1
   101f2:	8732                	mv	a4,a2
   101f4:	fcf42e23          	sw	a5,-36(s0)
   101f8:	87b6                	mv	a5,a3
   101fa:	fcf42c23          	sw	a5,-40(s0)
   101fe:	87ba                	mv	a5,a4
   10200:	fcf42a23          	sw	a5,-44(s0)
   10204:	fd842703          	lw	a4,-40(s0)
   10208:	fdc42783          	lw	a5,-36(s0)
   1020c:	2701                	sext.w	a4,a4
   1020e:	2781                	sext.w	a5,a5
   10210:	00e7c463          	blt	a5,a4,10218 <_Z9partationiii+0x32>
   10214:	57fd                	li	a5,-1
   10216:	a8c5                	j	10306 <_Z9partationiii+0x120>
   10218:	67c9                	lui	a5,0x12
   1021a:	fd442703          	lw	a4,-44(s0)
   1021e:	070e                	slli	a4,a4,0x3
   10220:	e3078793          	addi	a5,a5,-464 # 11e30 <__fini_array_end>
   10224:	97ba                	add	a5,a5,a4
   10226:	639c                	ld	a5,0(a5)
   10228:	fef43023          	sd	a5,-32(s0)
   1022c:	fdc42783          	lw	a5,-36(s0)
   10230:	fef43423          	sd	a5,-24(s0)
   10234:	fd442783          	lw	a5,-44(s0)
   10238:	00379713          	slli	a4,a5,0x3
   1023c:	67c9                	lui	a5,0x12
   1023e:	e3078793          	addi	a5,a5,-464 # 11e30 <__fini_array_end>
   10242:	00f706b3          	add	a3,a4,a5
   10246:	fd842783          	lw	a5,-40(s0)
   1024a:	00379713          	slli	a4,a5,0x3
   1024e:	67c9                	lui	a5,0x12
   10250:	e3078793          	addi	a5,a5,-464 # 11e30 <__fini_array_end>
   10254:	97ba                	add	a5,a5,a4
   10256:	85be                	mv	a1,a5
   10258:	8536                	mv	a0,a3
   1025a:	00000097          	auipc	ra,0x0
   1025e:	f56080e7          	jalr	-170(ra) # 101b0 <_Z4swapPxS_>
   10262:	fd842783          	lw	a5,-40(s0)
   10266:	37fd                	addiw	a5,a5,-1
   10268:	0007871b          	sext.w	a4,a5
   1026c:	fdc42783          	lw	a5,-36(s0)
   10270:	2781                	sext.w	a5,a5
   10272:	06e78063          	beq	a5,a4,102d2 <_Z9partationiii+0xec>
   10276:	67c9                	lui	a5,0x12
   10278:	fdc42703          	lw	a4,-36(s0)
   1027c:	070e                	slli	a4,a4,0x3
   1027e:	e3078793          	addi	a5,a5,-464 # 11e30 <__fini_array_end>
   10282:	97ba                	add	a5,a5,a4
   10284:	639c                	ld	a5,0(a5)
   10286:	fe043703          	ld	a4,-32(s0)
   1028a:	02f74e63          	blt	a4,a5,102c6 <_Z9partationiii+0xe0>
   1028e:	fdc42783          	lw	a5,-36(s0)
   10292:	00379713          	slli	a4,a5,0x3
   10296:	67c9                	lui	a5,0x12
   10298:	e3078793          	addi	a5,a5,-464 # 11e30 <__fini_array_end>
   1029c:	00f706b3          	add	a3,a4,a5
   102a0:	fe843783          	ld	a5,-24(s0)
   102a4:	00379713          	slli	a4,a5,0x3
   102a8:	67c9                	lui	a5,0x12
   102aa:	e3078793          	addi	a5,a5,-464 # 11e30 <__fini_array_end>
   102ae:	97ba                	add	a5,a5,a4
   102b0:	85be                	mv	a1,a5
   102b2:	8536                	mv	a0,a3
   102b4:	00000097          	auipc	ra,0x0
   102b8:	efc080e7          	jalr	-260(ra) # 101b0 <_Z4swapPxS_>
   102bc:	fe843783          	ld	a5,-24(s0)
   102c0:	0785                	addi	a5,a5,1
   102c2:	fef43423          	sd	a5,-24(s0)
   102c6:	fdc42783          	lw	a5,-36(s0)
   102ca:	2785                	addiw	a5,a5,1
   102cc:	fcf42e23          	sw	a5,-36(s0)
   102d0:	bf49                	j	10262 <_Z9partationiii+0x7c>
   102d2:	fe843783          	ld	a5,-24(s0)
   102d6:	00379713          	slli	a4,a5,0x3
   102da:	67c9                	lui	a5,0x12
   102dc:	e3078793          	addi	a5,a5,-464 # 11e30 <__fini_array_end>
   102e0:	00f706b3          	add	a3,a4,a5
   102e4:	fd842783          	lw	a5,-40(s0)
   102e8:	00379713          	slli	a4,a5,0x3
   102ec:	67c9                	lui	a5,0x12
   102ee:	e3078793          	addi	a5,a5,-464 # 11e30 <__fini_array_end>
   102f2:	97ba                	add	a5,a5,a4
   102f4:	85be                	mv	a1,a5
   102f6:	8536                	mv	a0,a3
   102f8:	00000097          	auipc	ra,0x0
   102fc:	eb8080e7          	jalr	-328(ra) # 101b0 <_Z4swapPxS_>
   10300:	fe843783          	ld	a5,-24(s0)
   10304:	2781                	sext.w	a5,a5
   10306:	853e                	mv	a0,a5
   10308:	70a2                	ld	ra,40(sp)
   1030a:	7402                	ld	s0,32(sp)
   1030c:	6145                	addi	sp,sp,48
   1030e:	8082                	ret

0000000000010310 <_Z9quicksortii>:
   10310:	7179                	addi	sp,sp,-48
   10312:	f406                	sd	ra,40(sp)
   10314:	f022                	sd	s0,32(sp)
   10316:	1800                	addi	s0,sp,48
   10318:	87aa                	mv	a5,a0
   1031a:	872e                	mv	a4,a1
   1031c:	fcf42e23          	sw	a5,-36(s0)
   10320:	87ba                	mv	a5,a4
   10322:	fcf42c23          	sw	a5,-40(s0)
   10326:	fd842703          	lw	a4,-40(s0)
   1032a:	fdc42783          	lw	a5,-36(s0)
   1032e:	2701                	sext.w	a4,a4
   10330:	2781                	sext.w	a5,a5
   10332:	06e7dc63          	ble	a4,a5,103aa <_Z9quicksortii+0x9a>
   10336:	fdc42703          	lw	a4,-36(s0)
   1033a:	fd842783          	lw	a5,-40(s0)
   1033e:	9fb9                	addw	a5,a5,a4
   10340:	2781                	sext.w	a5,a5
   10342:	01f7d71b          	srliw	a4,a5,0x1f
   10346:	9fb9                	addw	a5,a5,a4
   10348:	4017d79b          	sraiw	a5,a5,0x1
   1034c:	fef42623          	sw	a5,-20(s0)
   10350:	fec42683          	lw	a3,-20(s0)
   10354:	fd842703          	lw	a4,-40(s0)
   10358:	fdc42783          	lw	a5,-36(s0)
   1035c:	8636                	mv	a2,a3
   1035e:	85ba                	mv	a1,a4
   10360:	853e                	mv	a0,a5
   10362:	00000097          	auipc	ra,0x0
   10366:	e84080e7          	jalr	-380(ra) # 101e6 <_Z9partationiii>
   1036a:	87aa                	mv	a5,a0
   1036c:	fef42623          	sw	a5,-20(s0)
   10370:	fec42783          	lw	a5,-20(s0)
   10374:	0007871b          	sext.w	a4,a5
   10378:	57fd                	li	a5,-1
   1037a:	02f70963          	beq	a4,a5,103ac <_Z9quicksortii+0x9c>
   1037e:	fec42783          	lw	a5,-20(s0)
   10382:	37fd                	addiw	a5,a5,-1
   10384:	0007871b          	sext.w	a4,a5
   10388:	fdc42783          	lw	a5,-36(s0)
   1038c:	85ba                	mv	a1,a4
   1038e:	853e                	mv	a0,a5
   10390:	f81ff0ef          	jal	ra,10310 <_Z9quicksortii>
   10394:	fec42783          	lw	a5,-20(s0)
   10398:	2785                	addiw	a5,a5,1
   1039a:	2781                	sext.w	a5,a5
   1039c:	fd842703          	lw	a4,-40(s0)
   103a0:	85ba                	mv	a1,a4
   103a2:	853e                	mv	a0,a5
   103a4:	f6dff0ef          	jal	ra,10310 <_Z9quicksortii>
   103a8:	a011                	j	103ac <_Z9quicksortii+0x9c>
   103aa:	0001                	nop
   103ac:	70a2                	ld	ra,40(sp)
   103ae:	7402                	ld	s0,32(sp)
   103b0:	6145                	addi	sp,sp,48
   103b2:	8082                	ret

00000000000103b4 <_Z8ackermanii>:
   103b4:	1101                	addi	sp,sp,-32
   103b6:	ec06                	sd	ra,24(sp)
   103b8:	e822                	sd	s0,16(sp)
   103ba:	1000                	addi	s0,sp,32
   103bc:	87aa                	mv	a5,a0
   103be:	872e                	mv	a4,a1
   103c0:	fef42623          	sw	a5,-20(s0)
   103c4:	87ba                	mv	a5,a4
   103c6:	fef42423          	sw	a5,-24(s0)
   103ca:	fec42783          	lw	a5,-20(s0)
   103ce:	2781                	sext.w	a5,a5
   103d0:	02f05d63          	blez	a5,1040a <_Z8ackermanii+0x56>
   103d4:	fe842783          	lw	a5,-24(s0)
   103d8:	2781                	sext.w	a5,a5
   103da:	e789                	bnez	a5,103e4 <_Z8ackermanii+0x30>
   103dc:	4785                	li	a5,1
   103de:	fef42423          	sw	a5,-24(s0)
   103e2:	a839                	j	10400 <_Z8ackermanii+0x4c>
   103e4:	fe842783          	lw	a5,-24(s0)
   103e8:	37fd                	addiw	a5,a5,-1
   103ea:	0007871b          	sext.w	a4,a5
   103ee:	fec42783          	lw	a5,-20(s0)
   103f2:	85ba                	mv	a1,a4
   103f4:	853e                	mv	a0,a5
   103f6:	fbfff0ef          	jal	ra,103b4 <_Z8ackermanii>
   103fa:	87aa                	mv	a5,a0
   103fc:	fef42423          	sw	a5,-24(s0)
   10400:	fec42783          	lw	a5,-20(s0)
   10404:	37fd                	addiw	a5,a5,-1
   10406:	fef42623          	sw	a5,-20(s0)
   1040a:	fe842783          	lw	a5,-24(s0)
   1040e:	2785                	addiw	a5,a5,1
   10410:	2781                	sext.w	a5,a5
   10412:	853e                	mv	a0,a5
   10414:	60e2                	ld	ra,24(sp)
   10416:	6442                	ld	s0,16(sp)
   10418:	6105                	addi	sp,sp,32
   1041a:	8082                	ret

000000000001041c <_Z9QuickSortv>:
   1041c:	1141                	addi	sp,sp,-16
   1041e:	e406                	sd	ra,8(sp)
   10420:	e022                	sd	s0,0(sp)
   10422:	0800                	addi	s0,sp,16
   10424:	3e700593          	li	a1,999
   10428:	4501                	li	a0,0
   1042a:	ee7ff0ef          	jal	ra,10310 <_Z9quicksortii>
   1042e:	0001                	nop
   10430:	60a2                	ld	ra,8(sp)
   10432:	6402                	ld	s0,0(sp)
   10434:	0141                	addi	sp,sp,16
   10436:	8082                	ret

0000000000010438 <_Z20MatrixMultiplicationv>:
   10438:	7179                	addi	sp,sp,-48
   1043a:	f422                	sd	s0,40(sp)
   1043c:	1800                	addi	s0,sp,48
   1043e:	fe042623          	sw	zero,-20(s0)
   10442:	fec42783          	lw	a5,-20(s0)
   10446:	0007871b          	sext.w	a4,a5
   1044a:	47e1                	li	a5,24
   1044c:	04e7c963          	blt	a5,a4,1049e <_Z20MatrixMultiplicationv+0x66>
   10450:	fe042423          	sw	zero,-24(s0)
   10454:	fe842783          	lw	a5,-24(s0)
   10458:	0007871b          	sext.w	a4,a5
   1045c:	47e1                	li	a5,24
   1045e:	02e7ca63          	blt	a5,a4,10492 <_Z20MatrixMultiplicationv+0x5a>
   10462:	66dd                	lui	a3,0x17
   10464:	fe842603          	lw	a2,-24(s0)
   10468:	fec42703          	lw	a4,-20(s0)
   1046c:	87ba                	mv	a5,a4
   1046e:	0786                	slli	a5,a5,0x1
   10470:	97ba                	add	a5,a5,a4
   10472:	078e                	slli	a5,a5,0x3
   10474:	97ba                	add	a5,a5,a4
   10476:	97b2                	add	a5,a5,a2
   10478:	00379713          	slli	a4,a5,0x3
   1047c:	c2068793          	addi	a5,a3,-992 # 16c20 <d>
   10480:	97ba                	add	a5,a5,a4
   10482:	0007b023          	sd	zero,0(a5)
   10486:	fe842783          	lw	a5,-24(s0)
   1048a:	2785                	addiw	a5,a5,1
   1048c:	fef42423          	sw	a5,-24(s0)
   10490:	b7d1                	j	10454 <_Z20MatrixMultiplicationv+0x1c>
   10492:	fec42783          	lw	a5,-20(s0)
   10496:	2785                	addiw	a5,a5,1
   10498:	fef42623          	sw	a5,-20(s0)
   1049c:	b75d                	j	10442 <_Z20MatrixMultiplicationv+0xa>
   1049e:	fe042223          	sw	zero,-28(s0)
   104a2:	fe442783          	lw	a5,-28(s0)
   104a6:	0007871b          	sext.w	a4,a5
   104aa:	47e1                	li	a5,24
   104ac:	0ee7c163          	blt	a5,a4,1058e <_Z20MatrixMultiplicationv+0x156>
   104b0:	fe042023          	sw	zero,-32(s0)
   104b4:	fe042783          	lw	a5,-32(s0)
   104b8:	0007871b          	sext.w	a4,a5
   104bc:	47e1                	li	a5,24
   104be:	0ce7c263          	blt	a5,a4,10582 <_Z20MatrixMultiplicationv+0x14a>
   104c2:	66d1                	lui	a3,0x14
   104c4:	fe042603          	lw	a2,-32(s0)
   104c8:	fe442703          	lw	a4,-28(s0)
   104cc:	87ba                	mv	a5,a4
   104ce:	0786                	slli	a5,a5,0x1
   104d0:	97ba                	add	a5,a5,a4
   104d2:	078e                	slli	a5,a5,0x3
   104d4:	97ba                	add	a5,a5,a4
   104d6:	97b2                	add	a5,a5,a2
   104d8:	00379713          	slli	a4,a5,0x3
   104dc:	d7068793          	addi	a5,a3,-656 # 13d70 <b>
   104e0:	97ba                	add	a5,a5,a4
   104e2:	639c                	ld	a5,0(a5)
   104e4:	fcf43823          	sd	a5,-48(s0)
   104e8:	fc042e23          	sw	zero,-36(s0)
   104ec:	fdc42783          	lw	a5,-36(s0)
   104f0:	0007871b          	sext.w	a4,a5
   104f4:	47e1                	li	a5,24
   104f6:	08e7c063          	blt	a5,a4,10576 <_Z20MatrixMultiplicationv+0x13e>
   104fa:	66dd                	lui	a3,0x17
   104fc:	fdc42603          	lw	a2,-36(s0)
   10500:	fe442703          	lw	a4,-28(s0)
   10504:	87ba                	mv	a5,a4
   10506:	0786                	slli	a5,a5,0x1
   10508:	97ba                	add	a5,a5,a4
   1050a:	078e                	slli	a5,a5,0x3
   1050c:	97ba                	add	a5,a5,a4
   1050e:	97b2                	add	a5,a5,a2
   10510:	00379713          	slli	a4,a5,0x3
   10514:	c2068793          	addi	a5,a3,-992 # 16c20 <d>
   10518:	97ba                	add	a5,a5,a4
   1051a:	6394                	ld	a3,0(a5)
   1051c:	6655                	lui	a2,0x15
   1051e:	fdc42583          	lw	a1,-36(s0)
   10522:	fe442703          	lw	a4,-28(s0)
   10526:	87ba                	mv	a5,a4
   10528:	0786                	slli	a5,a5,0x1
   1052a:	97ba                	add	a5,a5,a4
   1052c:	078e                	slli	a5,a5,0x3
   1052e:	97ba                	add	a5,a5,a4
   10530:	97ae                	add	a5,a5,a1
   10532:	00379713          	slli	a4,a5,0x3
   10536:	0f860793          	addi	a5,a2,248 # 150f8 <c>
   1053a:	97ba                	add	a5,a5,a4
   1053c:	6398                	ld	a4,0(a5)
   1053e:	fd043783          	ld	a5,-48(s0)
   10542:	02f707b3          	mul	a5,a4,a5
   10546:	96be                	add	a3,a3,a5
   10548:	665d                	lui	a2,0x17
   1054a:	fdc42583          	lw	a1,-36(s0)
   1054e:	fe442703          	lw	a4,-28(s0)
   10552:	87ba                	mv	a5,a4
   10554:	0786                	slli	a5,a5,0x1
   10556:	97ba                	add	a5,a5,a4
   10558:	078e                	slli	a5,a5,0x3
   1055a:	97ba                	add	a5,a5,a4
   1055c:	97ae                	add	a5,a5,a1
   1055e:	00379713          	slli	a4,a5,0x3
   10562:	c2060793          	addi	a5,a2,-992 # 16c20 <d>
   10566:	97ba                	add	a5,a5,a4
   10568:	e394                	sd	a3,0(a5)
   1056a:	fdc42783          	lw	a5,-36(s0)
   1056e:	2785                	addiw	a5,a5,1
   10570:	fcf42e23          	sw	a5,-36(s0)
   10574:	bfa5                	j	104ec <_Z20MatrixMultiplicationv+0xb4>
   10576:	fe042783          	lw	a5,-32(s0)
   1057a:	2785                	addiw	a5,a5,1
   1057c:	fef42023          	sw	a5,-32(s0)
   10580:	bf15                	j	104b4 <_Z20MatrixMultiplicationv+0x7c>
   10582:	fe442783          	lw	a5,-28(s0)
   10586:	2785                	addiw	a5,a5,1
   10588:	fef42223          	sw	a5,-28(s0)
   1058c:	bf19                	j	104a2 <_Z20MatrixMultiplicationv+0x6a>
   1058e:	0001                	nop
   10590:	7422                	ld	s0,40(sp)
   10592:	6145                	addi	sp,sp,48
   10594:	8082                	ret

0000000000010596 <_Z8Ackermanv>:
   10596:	1141                	addi	sp,sp,-16
   10598:	e406                	sd	ra,8(sp)
   1059a:	e022                	sd	s0,0(sp)
   1059c:	0800                	addi	s0,sp,16
   1059e:	4599                	li	a1,6
   105a0:	450d                	li	a0,3
   105a2:	00000097          	auipc	ra,0x0
   105a6:	e12080e7          	jalr	-494(ra) # 103b4 <_Z8ackermanii>
   105aa:	0001                	nop
   105ac:	60a2                	ld	ra,8(sp)
   105ae:	6402                	ld	s0,0(sp)
   105b0:	0141                	addi	sp,sp,16
   105b2:	8082                	ret

00000000000105b4 <_Z12AllBenchmarkv>:
   105b4:	1141                	addi	sp,sp,-16
   105b6:	e406                	sd	ra,8(sp)
   105b8:	e022                	sd	s0,0(sp)
   105ba:	0800                	addi	s0,sp,16
   105bc:	00000097          	auipc	ra,0x0
   105c0:	e60080e7          	jalr	-416(ra) # 1041c <_Z9QuickSortv>
   105c4:	e75ff0ef          	jal	ra,10438 <_Z20MatrixMultiplicationv>
   105c8:	00000097          	auipc	ra,0x0
   105cc:	fce080e7          	jalr	-50(ra) # 10596 <_Z8Ackermanv>
   105d0:	0001                	nop
   105d2:	60a2                	ld	ra,8(sp)
   105d4:	6402                	ld	s0,0(sp)
   105d6:	0141                	addi	sp,sp,16
   105d8:	8082                	ret

00000000000105da <main>:
   105da:	1141                	addi	sp,sp,-16
   105dc:	e406                	sd	ra,8(sp)
   105de:	e022                	sd	s0,0(sp)
   105e0:	0800                	addi	s0,sp,16
   105e2:	00000097          	auipc	ra,0x0
   105e6:	fd2080e7          	jalr	-46(ra) # 105b4 <_Z12AllBenchmarkv>
   105ea:	4781                	li	a5,0
   105ec:	853e                	mv	a0,a5
   105ee:	60a2                	ld	ra,8(sp)
   105f0:	6402                	ld	s0,0(sp)
   105f2:	0141                	addi	sp,sp,16
   105f4:	8082                	ret
	...

00000000000105f8 <atexit>:
   105f8:	85aa                	mv	a1,a0
   105fa:	4681                	li	a3,0
   105fc:	4601                	li	a2,0
   105fe:	4501                	li	a0,0
   10600:	18c0006f          	j	1078c <__register_exitproc>
	...

0000000000010606 <exit>:
   10606:	1141                	addi	sp,sp,-16
   10608:	4581                	li	a1,0
   1060a:	e022                	sd	s0,0(sp)
   1060c:	e406                	sd	ra,8(sp)
   1060e:	842a                	mv	s0,a0
   10610:	1e4000ef          	jal	ra,107f4 <__call_exitprocs>
   10614:	67dd                	lui	a5,0x17
   10616:	bd07b503          	ld	a0,-1072(a5) # 16bd0 <_global_impure_ptr>
   1061a:	6d3c                	ld	a5,88(a0)
   1061c:	c391                	beqz	a5,10620 <exit+0x1a>
   1061e:	9782                	jalr	a5
   10620:	8522                	mv	a0,s0
   10622:	00000097          	auipc	ra,0x0
   10626:	670080e7          	jalr	1648(ra) # 10c92 <_exit>
	...

000000000001062c <__libc_fini_array>:
   1062c:	7179                	addi	sp,sp,-48
   1062e:	67c9                	lui	a5,0x12
   10630:	6749                	lui	a4,0x12
   10632:	f022                	sd	s0,32(sp)
   10634:	e2870713          	addi	a4,a4,-472 # 11e28 <__init_array_end>
   10638:	e3078413          	addi	s0,a5,-464 # 11e30 <__fini_array_end>
   1063c:	8c19                	sub	s0,s0,a4
   1063e:	ec26                	sd	s1,24(sp)
   10640:	e84a                	sd	s2,16(sp)
   10642:	e44e                	sd	s3,8(sp)
   10644:	f406                	sd	ra,40(sp)
   10646:	840d                	srai	s0,s0,0x3
   10648:	4481                	li	s1,0
   1064a:	e3078913          	addi	s2,a5,-464
   1064e:	59e1                	li	s3,-8
   10650:	00941c63          	bne	s0,s1,10668 <__libc_fini_array+0x3c>
   10654:	7402                	ld	s0,32(sp)
   10656:	70a2                	ld	ra,40(sp)
   10658:	64e2                	ld	s1,24(sp)
   1065a:	6942                	ld	s2,16(sp)
   1065c:	69a2                	ld	s3,8(sp)
   1065e:	6145                	addi	sp,sp,48
   10660:	00000317          	auipc	t1,0x0
   10664:	a9a30067          	jr	-1382(t1) # 100fa <_fini>
   10668:	033487b3          	mul	a5,s1,s3
   1066c:	0485                	addi	s1,s1,1
   1066e:	97ca                	add	a5,a5,s2
   10670:	ff87b783          	ld	a5,-8(a5)
   10674:	9782                	jalr	a5
   10676:	bfe9                	j	10650 <__libc_fini_array+0x24>
	...

000000000001067a <__libc_init_array>:
   1067a:	1101                	addi	sp,sp,-32
   1067c:	e822                	sd	s0,16(sp)
   1067e:	e426                	sd	s1,8(sp)
   10680:	6449                	lui	s0,0x12
   10682:	64c9                	lui	s1,0x12
   10684:	e1c48793          	addi	a5,s1,-484 # 11e1c <__preinit_array_end>
   10688:	e1c40413          	addi	s0,s0,-484 # 11e1c <__preinit_array_end>
   1068c:	8c1d                	sub	s0,s0,a5
   1068e:	e04a                	sd	s2,0(sp)
   10690:	ec06                	sd	ra,24(sp)
   10692:	840d                	srai	s0,s0,0x3
   10694:	e1c48493          	addi	s1,s1,-484
   10698:	4901                	li	s2,0
   1069a:	02891963          	bne	s2,s0,106cc <__libc_init_array+0x52>
   1069e:	64c9                	lui	s1,0x12
   106a0:	00000097          	auipc	ra,0x0
   106a4:	a5a080e7          	jalr	-1446(ra) # 100fa <_fini>
   106a8:	6449                	lui	s0,0x12
   106aa:	e2048793          	addi	a5,s1,-480 # 11e20 <__frame_dummy_init_array_entry>
   106ae:	e2840413          	addi	s0,s0,-472 # 11e28 <__init_array_end>
   106b2:	8c1d                	sub	s0,s0,a5
   106b4:	840d                	srai	s0,s0,0x3
   106b6:	e2048493          	addi	s1,s1,-480
   106ba:	4901                	li	s2,0
   106bc:	00891d63          	bne	s2,s0,106d6 <__libc_init_array+0x5c>
   106c0:	60e2                	ld	ra,24(sp)
   106c2:	6442                	ld	s0,16(sp)
   106c4:	64a2                	ld	s1,8(sp)
   106c6:	6902                	ld	s2,0(sp)
   106c8:	6105                	addi	sp,sp,32
   106ca:	8082                	ret
   106cc:	609c                	ld	a5,0(s1)
   106ce:	0905                	addi	s2,s2,1
   106d0:	04a1                	addi	s1,s1,8
   106d2:	9782                	jalr	a5
   106d4:	b7d9                	j	1069a <__libc_init_array+0x20>
   106d6:	609c                	ld	a5,0(s1)
   106d8:	0905                	addi	s2,s2,1
   106da:	04a1                	addi	s1,s1,8
   106dc:	9782                	jalr	a5
   106de:	bff9                	j	106bc <__libc_init_array+0x42>
	...

00000000000106e2 <memset>:
   106e2:	483d                	li	a6,15
   106e4:	872a                	mv	a4,a0
   106e6:	02c87163          	bleu	a2,a6,10708 <memset+0x26>
   106ea:	00f77793          	andi	a5,a4,15
   106ee:	e3c1                	bnez	a5,1076e <memset+0x8c>
   106f0:	e1bd                	bnez	a1,10756 <memset+0x74>
   106f2:	ff067693          	andi	a3,a2,-16
   106f6:	8a3d                	andi	a2,a2,15
   106f8:	96ba                	add	a3,a3,a4
   106fa:	e30c                	sd	a1,0(a4)
   106fc:	e70c                	sd	a1,8(a4)
   106fe:	0741                	addi	a4,a4,16
   10700:	fed76de3          	bltu	a4,a3,106fa <memset+0x18>
   10704:	e211                	bnez	a2,10708 <memset+0x26>
   10706:	8082                	ret
   10708:	40c806b3          	sub	a3,a6,a2
   1070c:	068a                	slli	a3,a3,0x2
   1070e:	00000297          	auipc	t0,0x0
   10712:	9696                	add	a3,a3,t0
   10714:	00a68067          	jr	10(a3)
   10718:	00b70723          	sb	a1,14(a4)
   1071c:	00b706a3          	sb	a1,13(a4)
   10720:	00b70623          	sb	a1,12(a4)
   10724:	00b705a3          	sb	a1,11(a4)
   10728:	00b70523          	sb	a1,10(a4)
   1072c:	00b704a3          	sb	a1,9(a4)
   10730:	00b70423          	sb	a1,8(a4)
   10734:	00b703a3          	sb	a1,7(a4)
   10738:	00b70323          	sb	a1,6(a4)
   1073c:	00b702a3          	sb	a1,5(a4)
   10740:	00b70223          	sb	a1,4(a4)
   10744:	00b701a3          	sb	a1,3(a4)
   10748:	00b70123          	sb	a1,2(a4)
   1074c:	00b700a3          	sb	a1,1(a4)
   10750:	00b70023          	sb	a1,0(a4)
   10754:	8082                	ret
   10756:	0ff5f593          	andi	a1,a1,255
   1075a:	00859693          	slli	a3,a1,0x8
   1075e:	8dd5                	or	a1,a1,a3
   10760:	01059693          	slli	a3,a1,0x10
   10764:	8dd5                	or	a1,a1,a3
   10766:	02059693          	slli	a3,a1,0x20
   1076a:	8dd5                	or	a1,a1,a3
   1076c:	b759                	j	106f2 <memset+0x10>
   1076e:	00279693          	slli	a3,a5,0x2
   10772:	00000297          	auipc	t0,0x0
   10776:	9696                	add	a3,a3,t0
   10778:	8286                	mv	t0,ra
   1077a:	fa2680e7          	jalr	-94(a3)
   1077e:	8096                	mv	ra,t0
   10780:	17c1                	addi	a5,a5,-16
   10782:	8f1d                	sub	a4,a4,a5
   10784:	963e                	add	a2,a2,a5
   10786:	f8c871e3          	bleu	a2,a6,10708 <memset+0x26>
   1078a:	b79d                	j	106f0 <memset+0xe>

000000000001078c <__register_exitproc>:
   1078c:	67dd                	lui	a5,0x17
   1078e:	bd07b703          	ld	a4,-1072(a5) # 16bd0 <_global_impure_ptr>
   10792:	832a                	mv	t1,a0
   10794:	1f873783          	ld	a5,504(a4)
   10798:	e789                	bnez	a5,107a2 <__register_exitproc+0x16>
   1079a:	20070793          	addi	a5,a4,512
   1079e:	1ef73c23          	sd	a5,504(a4)
   107a2:	4798                	lw	a4,8(a5)
   107a4:	487d                	li	a6,31
   107a6:	557d                	li	a0,-1
   107a8:	04e84463          	blt	a6,a4,107f0 <__register_exitproc+0x64>
   107ac:	02030a63          	beqz	t1,107e0 <__register_exitproc+0x54>
   107b0:	00371813          	slli	a6,a4,0x3
   107b4:	983e                	add	a6,a6,a5
   107b6:	10c83823          	sd	a2,272(a6)
   107ba:	3107a883          	lw	a7,784(a5)
   107be:	4605                	li	a2,1
   107c0:	00e6163b          	sllw	a2,a2,a4
   107c4:	00c8e8b3          	or	a7,a7,a2
   107c8:	3117a823          	sw	a7,784(a5)
   107cc:	20d83823          	sd	a3,528(a6)
   107d0:	4689                	li	a3,2
   107d2:	00d31763          	bne	t1,a3,107e0 <__register_exitproc+0x54>
   107d6:	3147a683          	lw	a3,788(a5)
   107da:	8e55                	or	a2,a2,a3
   107dc:	30c7aa23          	sw	a2,788(a5)
   107e0:	0017069b          	addiw	a3,a4,1
   107e4:	0709                	addi	a4,a4,2
   107e6:	070e                	slli	a4,a4,0x3
   107e8:	c794                	sw	a3,8(a5)
   107ea:	97ba                	add	a5,a5,a4
   107ec:	e38c                	sd	a1,0(a5)
   107ee:	4501                	li	a0,0
   107f0:	8082                	ret
	...

00000000000107f4 <__call_exitprocs>:
   107f4:	715d                	addi	sp,sp,-80
   107f6:	67dd                	lui	a5,0x17
   107f8:	f44e                	sd	s3,40(sp)
   107fa:	bd07b983          	ld	s3,-1072(a5) # 16bd0 <_global_impure_ptr>
   107fe:	f052                	sd	s4,32(sp)
   10800:	ec56                	sd	s5,24(sp)
   10802:	e85a                	sd	s6,16(sp)
   10804:	e486                	sd	ra,72(sp)
   10806:	e0a2                	sd	s0,64(sp)
   10808:	fc26                	sd	s1,56(sp)
   1080a:	f84a                	sd	s2,48(sp)
   1080c:	e45e                	sd	s7,8(sp)
   1080e:	8aaa                	mv	s5,a0
   10810:	8a2e                	mv	s4,a1
   10812:	4b05                	li	s6,1
   10814:	1f89b403          	ld	s0,504(s3)
   10818:	c801                	beqz	s0,10828 <__call_exitprocs+0x34>
   1081a:	4404                	lw	s1,8(s0)
   1081c:	34fd                	addiw	s1,s1,-1
   1081e:	00349913          	slli	s2,s1,0x3
   10822:	9922                	add	s2,s2,s0
   10824:	0004dd63          	bgez	s1,1083e <__call_exitprocs+0x4a>
   10828:	60a6                	ld	ra,72(sp)
   1082a:	6406                	ld	s0,64(sp)
   1082c:	74e2                	ld	s1,56(sp)
   1082e:	7942                	ld	s2,48(sp)
   10830:	79a2                	ld	s3,40(sp)
   10832:	7a02                	ld	s4,32(sp)
   10834:	6ae2                	ld	s5,24(sp)
   10836:	6b42                	ld	s6,16(sp)
   10838:	6ba2                	ld	s7,8(sp)
   1083a:	6161                	addi	sp,sp,80
   1083c:	8082                	ret
   1083e:	000a0963          	beqz	s4,10850 <__call_exitprocs+0x5c>
   10842:	21093783          	ld	a5,528(s2)
   10846:	01478563          	beq	a5,s4,10850 <__call_exitprocs+0x5c>
   1084a:	34fd                	addiw	s1,s1,-1
   1084c:	1961                	addi	s2,s2,-8
   1084e:	bfd9                	j	10824 <__call_exitprocs+0x30>
   10850:	441c                	lw	a5,8(s0)
   10852:	01093683          	ld	a3,16(s2)
   10856:	37fd                	addiw	a5,a5,-1
   10858:	02979663          	bne	a5,s1,10884 <__call_exitprocs+0x90>
   1085c:	c404                	sw	s1,8(s0)
   1085e:	d6f5                	beqz	a3,1084a <__call_exitprocs+0x56>
   10860:	31042703          	lw	a4,784(s0)
   10864:	009b163b          	sllw	a2,s6,s1
   10868:	00842b83          	lw	s7,8(s0)
   1086c:	8f71                	and	a4,a4,a2
   1086e:	2701                	sext.w	a4,a4
   10870:	ef09                	bnez	a4,1088a <__call_exitprocs+0x96>
   10872:	9682                	jalr	a3
   10874:	4418                	lw	a4,8(s0)
   10876:	1f89b783          	ld	a5,504(s3)
   1087a:	f9771de3          	bne	a4,s7,10814 <__call_exitprocs+0x20>
   1087e:	fcf406e3          	beq	s0,a5,1084a <__call_exitprocs+0x56>
   10882:	bf49                	j	10814 <__call_exitprocs+0x20>
   10884:	00093823          	sd	zero,16(s2)
   10888:	bfd9                	j	1085e <__call_exitprocs+0x6a>
   1088a:	31442783          	lw	a5,788(s0)
   1088e:	11093583          	ld	a1,272(s2)
   10892:	8ff1                	and	a5,a5,a2
   10894:	2781                	sext.w	a5,a5
   10896:	e781                	bnez	a5,1089e <__call_exitprocs+0xaa>
   10898:	8556                	mv	a0,s5
   1089a:	9682                	jalr	a3
   1089c:	bfe1                	j	10874 <__call_exitprocs+0x80>
   1089e:	852e                	mv	a0,a1
   108a0:	9682                	jalr	a3
   108a2:	bfc9                	j	10874 <__call_exitprocs+0x80>
	...

00000000000108a6 <conv_stat>:
   108a6:	619c                	ld	a5,0(a1)
   108a8:	00f51023          	sh	a5,0(a0)
   108ac:	659c                	ld	a5,8(a1)
   108ae:	00f51123          	sh	a5,2(a0)
   108b2:	499c                	lw	a5,16(a1)
   108b4:	c15c                	sw	a5,4(a0)
   108b6:	49dc                	lw	a5,20(a1)
   108b8:	00f51423          	sh	a5,8(a0)
   108bc:	4d9c                	lw	a5,24(a1)
   108be:	00f51523          	sh	a5,10(a0)
   108c2:	4ddc                	lw	a5,28(a1)
   108c4:	00f51623          	sh	a5,12(a0)
   108c8:	719c                	ld	a5,32(a1)
   108ca:	00f51723          	sh	a5,14(a0)
   108ce:	799c                	ld	a5,48(a1)
   108d0:	e91c                	sd	a5,16(a0)
   108d2:	61bc                	ld	a5,64(a1)
   108d4:	e93c                	sd	a5,80(a0)
   108d6:	5d9c                	lw	a5,56(a1)
   108d8:	e53c                	sd	a5,72(a0)
   108da:	65bc                	ld	a5,72(a1)
   108dc:	ed1c                	sd	a5,24(a0)
   108de:	6dbc                	ld	a5,88(a1)
   108e0:	f51c                	sd	a5,40(a0)
   108e2:	75bc                	ld	a5,104(a1)
   108e4:	fd1c                	sd	a5,56(a0)
   108e6:	8082                	ret

00000000000108e8 <__syscall_error>:
   108e8:	1141                	addi	sp,sp,-16
   108ea:	e022                	sd	s0,0(sp)
   108ec:	e406                	sd	ra,8(sp)
   108ee:	842a                	mv	s0,a0
   108f0:	00000097          	auipc	ra,0x0
   108f4:	3bc080e7          	jalr	956(ra) # 10cac <__errno>
   108f8:	408007bb          	negw	a5,s0
   108fc:	60a2                	ld	ra,8(sp)
   108fe:	6402                	ld	s0,0(sp)
   10900:	c11c                	sw	a5,0(a0)
   10902:	557d                	li	a0,-1
   10904:	0141                	addi	sp,sp,16
   10906:	8082                	ret

0000000000010908 <__internal_syscall>:
   10908:	88aa                	mv	a7,a0
   1090a:	852e                	mv	a0,a1
   1090c:	85b2                	mv	a1,a2
   1090e:	8636                	mv	a2,a3
   10910:	86ba                	mv	a3,a4
   10912:	00000073          	ecall
   10916:	00055663          	bgez	a0,10922 <__internal_syscall+0x1a>
   1091a:	00000317          	auipc	t1,0x0
   1091e:	fce30067          	jr	-50(t1) # 108e8 <__syscall_error>
   10922:	8082                	ret

0000000000010924 <open>:
   10924:	1141                	addi	sp,sp,-16
   10926:	86b2                	mv	a3,a2
   10928:	4701                	li	a4,0
   1092a:	862e                	mv	a2,a1
   1092c:	85aa                	mv	a1,a0
   1092e:	40000513          	li	a0,1024
   10932:	e406                	sd	ra,8(sp)
   10934:	00000097          	auipc	ra,0x0
   10938:	fd4080e7          	jalr	-44(ra) # 10908 <__internal_syscall>
   1093c:	60a2                	ld	ra,8(sp)
   1093e:	2501                	sext.w	a0,a0
   10940:	0141                	addi	sp,sp,16
   10942:	8082                	ret

0000000000010944 <openat>:
   10944:	1141                	addi	sp,sp,-16
   10946:	8736                	mv	a4,a3
   10948:	86b2                	mv	a3,a2
   1094a:	862e                	mv	a2,a1
   1094c:	85aa                	mv	a1,a0
   1094e:	03800513          	li	a0,56
   10952:	e406                	sd	ra,8(sp)
   10954:	fb5ff0ef          	jal	ra,10908 <__internal_syscall>
   10958:	60a2                	ld	ra,8(sp)
   1095a:	2501                	sext.w	a0,a0
   1095c:	0141                	addi	sp,sp,16
   1095e:	8082                	ret

0000000000010960 <lseek>:
   10960:	86b2                	mv	a3,a2
   10962:	4701                	li	a4,0
   10964:	862e                	mv	a2,a1
   10966:	85aa                	mv	a1,a0
   10968:	03e00513          	li	a0,62
   1096c:	00000317          	auipc	t1,0x0
   10970:	f9c30067          	jr	-100(t1) # 10908 <__internal_syscall>

0000000000010974 <read>:
   10974:	86b2                	mv	a3,a2
   10976:	4701                	li	a4,0
   10978:	862e                	mv	a2,a1
   1097a:	85aa                	mv	a1,a0
   1097c:	03f00513          	li	a0,63
   10980:	f89ff06f          	j	10908 <__internal_syscall>

0000000000010984 <write>:
   10984:	86b2                	mv	a3,a2
   10986:	4701                	li	a4,0
   10988:	862e                	mv	a2,a1
   1098a:	85aa                	mv	a1,a0
   1098c:	04000513          	li	a0,64
   10990:	00000317          	auipc	t1,0x0
   10994:	f7830067          	jr	-136(t1) # 10908 <__internal_syscall>

0000000000010998 <fstat>:
   10998:	7135                	addi	sp,sp,-160
   1099a:	e526                	sd	s1,136(sp)
   1099c:	860a                	mv	a2,sp
   1099e:	84ae                	mv	s1,a1
   109a0:	4701                	li	a4,0
   109a2:	85aa                	mv	a1,a0
   109a4:	4681                	li	a3,0
   109a6:	05000513          	li	a0,80
   109aa:	ed06                	sd	ra,152(sp)
   109ac:	e922                	sd	s0,144(sp)
   109ae:	f5bff0ef          	jal	ra,10908 <__internal_syscall>
   109b2:	842a                	mv	s0,a0
   109b4:	858a                	mv	a1,sp
   109b6:	8526                	mv	a0,s1
   109b8:	eefff0ef          	jal	ra,108a6 <conv_stat>
   109bc:	0004051b          	sext.w	a0,s0
   109c0:	60ea                	ld	ra,152(sp)
   109c2:	644a                	ld	s0,144(sp)
   109c4:	64aa                	ld	s1,136(sp)
   109c6:	610d                	addi	sp,sp,160
   109c8:	8082                	ret

00000000000109ca <stat>:
   109ca:	7135                	addi	sp,sp,-160
   109cc:	e526                	sd	s1,136(sp)
   109ce:	860a                	mv	a2,sp
   109d0:	84ae                	mv	s1,a1
   109d2:	4701                	li	a4,0
   109d4:	85aa                	mv	a1,a0
   109d6:	4681                	li	a3,0
   109d8:	40e00513          	li	a0,1038
   109dc:	ed06                	sd	ra,152(sp)
   109de:	e922                	sd	s0,144(sp)
   109e0:	00000097          	auipc	ra,0x0
   109e4:	f28080e7          	jalr	-216(ra) # 10908 <__internal_syscall>
   109e8:	842a                	mv	s0,a0
   109ea:	858a                	mv	a1,sp
   109ec:	8526                	mv	a0,s1
   109ee:	00000097          	auipc	ra,0x0
   109f2:	eb8080e7          	jalr	-328(ra) # 108a6 <conv_stat>
   109f6:	0004051b          	sext.w	a0,s0
   109fa:	60ea                	ld	ra,152(sp)
   109fc:	644a                	ld	s0,144(sp)
   109fe:	64aa                	ld	s1,136(sp)
   10a00:	610d                	addi	sp,sp,160
   10a02:	8082                	ret

0000000000010a04 <lstat>:
   10a04:	7135                	addi	sp,sp,-160
   10a06:	e526                	sd	s1,136(sp)
   10a08:	860a                	mv	a2,sp
   10a0a:	84ae                	mv	s1,a1
   10a0c:	4701                	li	a4,0
   10a0e:	85aa                	mv	a1,a0
   10a10:	4681                	li	a3,0
   10a12:	40f00513          	li	a0,1039
   10a16:	ed06                	sd	ra,152(sp)
   10a18:	e922                	sd	s0,144(sp)
   10a1a:	eefff0ef          	jal	ra,10908 <__internal_syscall>
   10a1e:	842a                	mv	s0,a0
   10a20:	858a                	mv	a1,sp
   10a22:	8526                	mv	a0,s1
   10a24:	e83ff0ef          	jal	ra,108a6 <conv_stat>
   10a28:	0004051b          	sext.w	a0,s0
   10a2c:	60ea                	ld	ra,152(sp)
   10a2e:	644a                	ld	s0,144(sp)
   10a30:	64aa                	ld	s1,136(sp)
   10a32:	610d                	addi	sp,sp,160
   10a34:	8082                	ret

0000000000010a36 <fstatat>:
   10a36:	7135                	addi	sp,sp,-160
   10a38:	e526                	sd	s1,136(sp)
   10a3a:	8736                	mv	a4,a3
   10a3c:	84b2                	mv	s1,a2
   10a3e:	868a                	mv	a3,sp
   10a40:	862e                	mv	a2,a1
   10a42:	85aa                	mv	a1,a0
   10a44:	04f00513          	li	a0,79
   10a48:	ed06                	sd	ra,152(sp)
   10a4a:	e922                	sd	s0,144(sp)
   10a4c:	00000097          	auipc	ra,0x0
   10a50:	ebc080e7          	jalr	-324(ra) # 10908 <__internal_syscall>
   10a54:	842a                	mv	s0,a0
   10a56:	858a                	mv	a1,sp
   10a58:	8526                	mv	a0,s1
   10a5a:	00000097          	auipc	ra,0x0
   10a5e:	e4c080e7          	jalr	-436(ra) # 108a6 <conv_stat>
   10a62:	0004051b          	sext.w	a0,s0
   10a66:	60ea                	ld	ra,152(sp)
   10a68:	644a                	ld	s0,144(sp)
   10a6a:	64aa                	ld	s1,136(sp)
   10a6c:	610d                	addi	sp,sp,160
   10a6e:	8082                	ret

0000000000010a70 <access>:
   10a70:	1141                	addi	sp,sp,-16
   10a72:	862e                	mv	a2,a1
   10a74:	4701                	li	a4,0
   10a76:	85aa                	mv	a1,a0
   10a78:	4681                	li	a3,0
   10a7a:	40900513          	li	a0,1033
   10a7e:	e406                	sd	ra,8(sp)
   10a80:	e89ff0ef          	jal	ra,10908 <__internal_syscall>
   10a84:	60a2                	ld	ra,8(sp)
   10a86:	2501                	sext.w	a0,a0
   10a88:	0141                	addi	sp,sp,16
   10a8a:	8082                	ret

0000000000010a8c <faccessat>:
   10a8c:	1141                	addi	sp,sp,-16
   10a8e:	8736                	mv	a4,a3
   10a90:	86b2                	mv	a3,a2
   10a92:	862e                	mv	a2,a1
   10a94:	85aa                	mv	a1,a0
   10a96:	03000513          	li	a0,48
   10a9a:	e406                	sd	ra,8(sp)
   10a9c:	00000097          	auipc	ra,0x0
   10aa0:	e6c080e7          	jalr	-404(ra) # 10908 <__internal_syscall>
   10aa4:	60a2                	ld	ra,8(sp)
   10aa6:	2501                	sext.w	a0,a0
   10aa8:	0141                	addi	sp,sp,16
   10aaa:	8082                	ret

0000000000010aac <close>:
   10aac:	1141                	addi	sp,sp,-16
   10aae:	85aa                	mv	a1,a0
   10ab0:	4701                	li	a4,0
   10ab2:	4681                	li	a3,0
   10ab4:	4601                	li	a2,0
   10ab6:	03900513          	li	a0,57
   10aba:	e406                	sd	ra,8(sp)
   10abc:	e4dff0ef          	jal	ra,10908 <__internal_syscall>
   10ac0:	60a2                	ld	ra,8(sp)
   10ac2:	2501                	sext.w	a0,a0
   10ac4:	0141                	addi	sp,sp,16
   10ac6:	8082                	ret

0000000000010ac8 <link>:
   10ac8:	1141                	addi	sp,sp,-16
   10aca:	862e                	mv	a2,a1
   10acc:	4701                	li	a4,0
   10ace:	85aa                	mv	a1,a0
   10ad0:	4681                	li	a3,0
   10ad2:	40100513          	li	a0,1025
   10ad6:	e406                	sd	ra,8(sp)
   10ad8:	00000097          	auipc	ra,0x0
   10adc:	e30080e7          	jalr	-464(ra) # 10908 <__internal_syscall>
   10ae0:	60a2                	ld	ra,8(sp)
   10ae2:	2501                	sext.w	a0,a0
   10ae4:	0141                	addi	sp,sp,16
   10ae6:	8082                	ret

0000000000010ae8 <unlink>:
   10ae8:	1141                	addi	sp,sp,-16
   10aea:	85aa                	mv	a1,a0
   10aec:	4701                	li	a4,0
   10aee:	4681                	li	a3,0
   10af0:	4601                	li	a2,0
   10af2:	40200513          	li	a0,1026
   10af6:	e406                	sd	ra,8(sp)
   10af8:	e11ff0ef          	jal	ra,10908 <__internal_syscall>
   10afc:	60a2                	ld	ra,8(sp)
   10afe:	2501                	sext.w	a0,a0
   10b00:	0141                	addi	sp,sp,16
   10b02:	8082                	ret

0000000000010b04 <execve>:
   10b04:	1141                	addi	sp,sp,-16
   10b06:	e406                	sd	ra,8(sp)
   10b08:	00000097          	auipc	ra,0x0
   10b0c:	1a4080e7          	jalr	420(ra) # 10cac <__errno>
   10b10:	60a2                	ld	ra,8(sp)
   10b12:	47b1                	li	a5,12
   10b14:	c11c                	sw	a5,0(a0)
   10b16:	557d                	li	a0,-1
   10b18:	0141                	addi	sp,sp,16
   10b1a:	8082                	ret

0000000000010b1c <fork>:
   10b1c:	1141                	addi	sp,sp,-16
   10b1e:	e406                	sd	ra,8(sp)
   10b20:	18c000ef          	jal	ra,10cac <__errno>
   10b24:	60a2                	ld	ra,8(sp)
   10b26:	47ad                	li	a5,11
   10b28:	c11c                	sw	a5,0(a0)
   10b2a:	557d                	li	a0,-1
   10b2c:	0141                	addi	sp,sp,16
   10b2e:	8082                	ret

0000000000010b30 <getpid>:
   10b30:	4505                	li	a0,1
   10b32:	8082                	ret

0000000000010b34 <kill>:
   10b34:	1141                	addi	sp,sp,-16
   10b36:	e406                	sd	ra,8(sp)
   10b38:	174000ef          	jal	ra,10cac <__errno>
   10b3c:	60a2                	ld	ra,8(sp)
   10b3e:	47d9                	li	a5,22
   10b40:	c11c                	sw	a5,0(a0)
   10b42:	557d                	li	a0,-1
   10b44:	0141                	addi	sp,sp,16
   10b46:	8082                	ret

0000000000010b48 <wait>:
   10b48:	1141                	addi	sp,sp,-16
   10b4a:	e406                	sd	ra,8(sp)
   10b4c:	00000097          	auipc	ra,0x0
   10b50:	160080e7          	jalr	352(ra) # 10cac <__errno>
   10b54:	60a2                	ld	ra,8(sp)
   10b56:	47a9                	li	a5,10
   10b58:	c11c                	sw	a5,0(a0)
   10b5a:	557d                	li	a0,-1
   10b5c:	0141                	addi	sp,sp,16
   10b5e:	8082                	ret

0000000000010b60 <isatty>:
   10b60:	7119                	addi	sp,sp,-128
   10b62:	002c                	addi	a1,sp,8
   10b64:	fc86                	sd	ra,120(sp)
   10b66:	e33ff0ef          	jal	ra,10998 <fstat>
   10b6a:	57fd                	li	a5,-1
   10b6c:	00f50663          	beq	a0,a5,10b78 <isatty+0x18>
   10b70:	4532                	lw	a0,12(sp)
   10b72:	40d5551b          	sraiw	a0,a0,0xd
   10b76:	8905                	andi	a0,a0,1
   10b78:	70e6                	ld	ra,120(sp)
   10b7a:	6109                	addi	sp,sp,128
   10b7c:	8082                	ret

0000000000010b7e <gettimeofday>:
   10b7e:	1141                	addi	sp,sp,-16
   10b80:	85aa                	mv	a1,a0
   10b82:	4701                	li	a4,0
   10b84:	4681                	li	a3,0
   10b86:	4601                	li	a2,0
   10b88:	0a900513          	li	a0,169
   10b8c:	e406                	sd	ra,8(sp)
   10b8e:	00000097          	auipc	ra,0x0
   10b92:	d7a080e7          	jalr	-646(ra) # 10908 <__internal_syscall>
   10b96:	60a2                	ld	ra,8(sp)
   10b98:	2501                	sext.w	a0,a0
   10b9a:	0141                	addi	sp,sp,16
   10b9c:	8082                	ret

0000000000010b9e <times>:
   10b9e:	7179                	addi	sp,sp,-48
   10ba0:	f022                	sd	s0,32(sp)
   10ba2:	842a                	mv	s0,a0
   10ba4:	6561                	lui	a0,0x18
   10ba6:	fa853783          	ld	a5,-88(a0) # 17fa8 <t0.2574>
   10baa:	ec26                	sd	s1,24(sp)
   10bac:	f406                	sd	ra,40(sp)
   10bae:	fa850493          	addi	s1,a0,-88
   10bb2:	eb81                	bnez	a5,10bc2 <times+0x24>
   10bb4:	4581                	li	a1,0
   10bb6:	fa850513          	addi	a0,a0,-88
   10bba:	00000097          	auipc	ra,0x0
   10bbe:	fc4080e7          	jalr	-60(ra) # 10b7e <gettimeofday>
   10bc2:	850a                	mv	a0,sp
   10bc4:	4581                	li	a1,0
   10bc6:	00000097          	auipc	ra,0x0
   10bca:	fb8080e7          	jalr	-72(ra) # 10b7e <gettimeofday>
   10bce:	6098                	ld	a4,0(s1)
   10bd0:	6782                	ld	a5,0(sp)
   10bd2:	6494                	ld	a3,8(s1)
   10bd4:	00043823          	sd	zero,16(s0)
   10bd8:	8f99                	sub	a5,a5,a4
   10bda:	000f4737          	lui	a4,0xf4
   10bde:	24070713          	addi	a4,a4,576 # f4240 <_end+0xdc288>
   10be2:	02e787b3          	mul	a5,a5,a4
   10be6:	6722                	ld	a4,8(sp)
   10be8:	00043c23          	sd	zero,24(s0)
   10bec:	00043423          	sd	zero,8(s0)
   10bf0:	8f15                	sub	a4,a4,a3
   10bf2:	70a2                	ld	ra,40(sp)
   10bf4:	64e2                	ld	s1,24(sp)
   10bf6:	557d                	li	a0,-1
   10bf8:	97ba                	add	a5,a5,a4
   10bfa:	e01c                	sd	a5,0(s0)
   10bfc:	7402                	ld	s0,32(sp)
   10bfe:	6145                	addi	sp,sp,48
   10c00:	8082                	ret

0000000000010c02 <ftime>:
   10c02:	00051423          	sh	zero,8(a0)
   10c06:	00053023          	sd	zero,0(a0)
   10c0a:	4501                	li	a0,0
   10c0c:	8082                	ret

0000000000010c0e <utime>:
   10c0e:	557d                	li	a0,-1
   10c10:	8082                	ret

0000000000010c12 <chown>:
   10c12:	557d                	li	a0,-1
   10c14:	8082                	ret

0000000000010c16 <chmod>:
   10c16:	557d                	li	a0,-1
   10c18:	8082                	ret

0000000000010c1a <chdir>:
   10c1a:	557d                	li	a0,-1
   10c1c:	8082                	ret

0000000000010c1e <getcwd>:
   10c1e:	4501                	li	a0,0
   10c20:	8082                	ret

0000000000010c22 <sysconf>:
   10c22:	4789                	li	a5,2
   10c24:	00f50463          	beq	a0,a5,10c2c <sysconf+0xa>
   10c28:	557d                	li	a0,-1
   10c2a:	8082                	ret
   10c2c:	000f4537          	lui	a0,0xf4
   10c30:	24050513          	addi	a0,a0,576 # f4240 <_end+0xdc288>
   10c34:	8082                	ret

0000000000010c36 <sbrk>:
   10c36:	1101                	addi	sp,sp,-32
   10c38:	e822                	sd	s0,16(sp)
   10c3a:	8181b783          	ld	a5,-2024(gp) # 16be0 <_edata>
   10c3e:	e426                	sd	s1,8(sp)
   10c40:	ec06                	sd	ra,24(sp)
   10c42:	84aa                	mv	s1,a0
   10c44:	e785                	bnez	a5,10c6c <sbrk+0x36>
   10c46:	4701                	li	a4,0
   10c48:	4681                	li	a3,0
   10c4a:	4601                	li	a2,0
   10c4c:	4581                	li	a1,0
   10c4e:	0d600513          	li	a0,214
   10c52:	cb7ff0ef          	jal	ra,10908 <__internal_syscall>
   10c56:	57fd                	li	a5,-1
   10c58:	00f51863          	bne	a0,a5,10c68 <sbrk+0x32>
   10c5c:	557d                	li	a0,-1
   10c5e:	60e2                	ld	ra,24(sp)
   10c60:	6442                	ld	s0,16(sp)
   10c62:	64a2                	ld	s1,8(sp)
   10c64:	6105                	addi	sp,sp,32
   10c66:	8082                	ret
   10c68:	80a1bc23          	sd	a0,-2024(gp) # 16be0 <_edata>
   10c6c:	8181b583          	ld	a1,-2024(gp) # 16be0 <_edata>
   10c70:	4701                	li	a4,0
   10c72:	4681                	li	a3,0
   10c74:	95a6                	add	a1,a1,s1
   10c76:	4601                	li	a2,0
   10c78:	0d600513          	li	a0,214
   10c7c:	c8dff0ef          	jal	ra,10908 <__internal_syscall>
   10c80:	8181b783          	ld	a5,-2024(gp) # 16be0 <_edata>
   10c84:	94be                	add	s1,s1,a5
   10c86:	fc951be3          	bne	a0,s1,10c5c <sbrk+0x26>
   10c8a:	80a1bc23          	sd	a0,-2024(gp) # 16be0 <_edata>
   10c8e:	853e                	mv	a0,a5
   10c90:	b7f9                	j	10c5e <sbrk+0x28>

0000000000010c92 <_exit>:
   10c92:	1141                	addi	sp,sp,-16
   10c94:	85aa                	mv	a1,a0
   10c96:	4701                	li	a4,0
   10c98:	4681                	li	a3,0
   10c9a:	4601                	li	a2,0
   10c9c:	05d00513          	li	a0,93
   10ca0:	e406                	sd	ra,8(sp)
   10ca2:	00000097          	auipc	ra,0x0
   10ca6:	c66080e7          	jalr	-922(ra) # 10908 <__internal_syscall>
   10caa:	a001                	j	10caa <_exit+0x18>

0000000000010cac <__errno>:
   10cac:	8101b503          	ld	a0,-2032(gp) # 16bd8 <_impure_ptr>
   10cb0:	8082                	ret
	...

Disassembly of section .eh_frame:

0000000000010cb8 <__EH_FRAME_BEGIN__>:
   10cb8:	0010                	addi	a2,sp,0
   10cba:	0000                	unimp
   10cbc:	0000                	unimp
   10cbe:	0000                	unimp
   10cc0:	7a01                	lui	s4,0xfffe0
   10cc2:	0052                	0x52
   10cc4:	7c01                	lui	s8,0xfffe0
   10cc6:	0101                	addi	sp,sp,0
   10cc8:	00020d1b          	sext.w	s10,tp
   10ccc:	001c                	addi	a5,sp,0
   10cce:	0000                	unimp
   10cd0:	0018                	addi	a4,sp,0
   10cd2:	0000                	unimp
   10cd4:	f4dc                	sd	a5,168(s1)
   10cd6:	ffff                	0xffff
   10cd8:	0036                	0x36
   10cda:	0000                	unimp
   10cdc:	4200                	lw	s0,0(a2)
   10cde:	300e                	fld	ft0,224(sp)
   10ce0:	8842                	mv	a6,a6
   10ce2:	4202                	lw	tp,0(sp)
   10ce4:	080c                	addi	a1,sp,16
   10ce6:	6c00                	ld	s0,24(s0)
   10ce8:	42c8                	lw	a0,4(a3)
   10cea:	020d                	addi	tp,tp,3
   10cec:	0024                	addi	s1,sp,8
   10cee:	0000                	unimp
   10cf0:	0038                	addi	a4,sp,8
   10cf2:	0000                	unimp
   10cf4:	f4f2                	sd	t3,104(sp)
   10cf6:	ffff                	0xffff
   10cf8:	012a                	slli	sp,sp,0xa
   10cfa:	0000                	unimp
   10cfc:	4200                	lw	s0,0(a2)
   10cfe:	300e                	fld	ft0,224(sp)
   10d00:	8144                	0x8144
   10d02:	8802                	jr	a6
   10d04:	4204                	lw	s1,0(a2)
   10d06:	080c                	addi	a1,sp,16
   10d08:	0300                	addi	s0,sp,384
   10d0a:	011c                	addi	a5,sp,128
   10d0c:	42c1                	li	t0,16
   10d0e:	42c8                	lw	a0,4(a3)
   10d10:	020d                	addi	tp,tp,3
   10d12:	0000                	unimp
   10d14:	0024                	addi	s1,sp,8
   10d16:	0000                	unimp
   10d18:	0060                	addi	s0,sp,12
   10d1a:	0000                	unimp
   10d1c:	f5f4                	sd	a3,232(a1)
   10d1e:	ffff                	0xffff
   10d20:	00a4                	addi	s1,sp,72
   10d22:	0000                	unimp
   10d24:	4200                	lw	s0,0(a2)
   10d26:	300e                	fld	ft0,224(sp)
   10d28:	8144                	0x8144
   10d2a:	8802                	jr	a6
   10d2c:	4204                	lw	s1,0(a2)
   10d2e:	080c                	addi	a1,sp,16
   10d30:	0200                	addi	s0,sp,256
   10d32:	c196                	sw	t0,192(sp)
   10d34:	c842                	sw	a6,16(sp)
   10d36:	0d42                	slli	s10,s10,0x10
   10d38:	0002                	0x2
   10d3a:	0000                	unimp
   10d3c:	0024                	addi	s1,sp,8
   10d3e:	0000                	unimp
   10d40:	0088                	addi	a0,sp,64
   10d42:	0000                	unimp
   10d44:	f670                	sd	a2,232(a2)
   10d46:	ffff                	0xffff
   10d48:	0068                	addi	a0,sp,12
   10d4a:	0000                	unimp
   10d4c:	4200                	lw	s0,0(a2)
   10d4e:	200e                	fld	ft0,192(sp)
   10d50:	8144                	0x8144
   10d52:	8802                	jr	a6
   10d54:	4204                	lw	s1,0(a2)
   10d56:	080c                	addi	a1,sp,16
   10d58:	0200                	addi	s0,sp,256
   10d5a:	c15a                	sw	s6,128(sp)
   10d5c:	c842                	sw	a6,16(sp)
   10d5e:	0d42                	slli	s10,s10,0x10
   10d60:	0002                	0x2
   10d62:	0000                	unimp
   10d64:	0020                	addi	s0,sp,8
   10d66:	0000                	unimp
   10d68:	00b0                	addi	a2,sp,72
   10d6a:	0000                	unimp
   10d6c:	f6b0                	sd	a2,104(a3)
   10d6e:	ffff                	0xffff
   10d70:	001c                	addi	a5,sp,0
   10d72:	0000                	unimp
   10d74:	4200                	lw	s0,0(a2)
   10d76:	100e                	0x100e
   10d78:	8144                	0x8144
   10d7a:	8802                	jr	a6
   10d7c:	4204                	lw	s1,0(a2)
   10d7e:	080c                	addi	a1,sp,16
   10d80:	5200                	lw	s0,32(a2)
   10d82:	42c1                	li	t0,16
   10d84:	42c8                	lw	a0,4(a3)
   10d86:	020d                	addi	tp,tp,3
   10d88:	0020                	addi	s0,sp,8
   10d8a:	0000                	unimp
   10d8c:	00d4                	addi	a3,sp,68
   10d8e:	0000                	unimp
   10d90:	f6a8                	sd	a0,104(a3)
   10d92:	ffff                	0xffff
   10d94:	015e                	slli	sp,sp,0x17
   10d96:	0000                	unimp
   10d98:	4200                	lw	s0,0(a2)
   10d9a:	300e                	fld	ft0,224(sp)
   10d9c:	8842                	mv	a6,a6
   10d9e:	4202                	lw	tp,0(sp)
   10da0:	080c                	addi	a1,sp,16
   10da2:	0300                	addi	s0,sp,384
   10da4:	0154                	addi	a3,sp,132
   10da6:	42c8                	lw	a0,4(a3)
   10da8:	020d                	addi	tp,tp,3
   10daa:	0000                	unimp
   10dac:	0020                	addi	s0,sp,8
   10dae:	0000                	unimp
   10db0:	00f8                	addi	a4,sp,76
   10db2:	0000                	unimp
   10db4:	f7e2                	sd	s8,488(sp)
   10db6:	ffff                	0xffff
   10db8:	001e                	0x1e
   10dba:	0000                	unimp
   10dbc:	4200                	lw	s0,0(a2)
   10dbe:	100e                	0x100e
   10dc0:	8144                	0x8144
   10dc2:	8802                	jr	a6
   10dc4:	4204                	lw	s1,0(a2)
   10dc6:	080c                	addi	a1,sp,16
   10dc8:	5000                	lw	s0,32(s0)
   10dca:	42c1                	li	t0,16
   10dcc:	42c8                	lw	a0,4(a3)
   10dce:	020d                	addi	tp,tp,3
   10dd0:	0020                	addi	s0,sp,8
   10dd2:	0000                	unimp
   10dd4:	011c                	addi	a5,sp,128
   10dd6:	0000                	unimp
   10dd8:	f7dc                	sd	a5,168(a5)
   10dda:	ffff                	0xffff
   10ddc:	0026                	0x26
   10dde:	0000                	unimp
   10de0:	4200                	lw	s0,0(a2)
   10de2:	100e                	0x100e
   10de4:	8144                	0x8144
   10de6:	8802                	jr	a6
   10de8:	4204                	lw	s1,0(a2)
   10dea:	080c                	addi	a1,sp,16
   10dec:	5c00                	lw	s0,56(s0)
   10dee:	42c1                	li	t0,16
   10df0:	42c8                	lw	a0,4(a3)
   10df2:	020d                	addi	tp,tp,3
   10df4:	0020                	addi	s0,sp,8
   10df6:	0000                	unimp
   10df8:	0140                	addi	s0,sp,132
   10dfa:	0000                	unimp
   10dfc:	f7de                	sd	s7,488(sp)
   10dfe:	ffff                	0xffff
   10e00:	001c                	addi	a5,sp,0
   10e02:	0000                	unimp
   10e04:	4200                	lw	s0,0(a2)
   10e06:	100e                	0x100e
   10e08:	8144                	0x8144
   10e0a:	8802                	jr	a6
   10e0c:	4204                	lw	s1,0(a2)
   10e0e:	080c                	addi	a1,sp,16
   10e10:	4e00                	lw	s0,24(a2)
   10e12:	42c1                	li	t0,16
   10e14:	42c8                	lw	a0,4(a3)
   10e16:	020d                	addi	tp,tp,3

0000000000010e18 <__FRAME_END__>:
   10e18:	0000                	unimp
	...

Disassembly of section .init_array:

0000000000011e20 <__frame_dummy_init_array_entry>:
   11e20:	0186                	slli	gp,gp,0x1
   11e22:	0001                	nop
   11e24:	0000                	unimp
	...

Disassembly of section .fini_array:

0000000000011e28 <__do_global_dtors_aux_fini_array_entry>:
   11e28:	014c                	addi	a1,sp,132
   11e2a:	0001                	nop
   11e2c:	0000                	unimp
	...

Disassembly of section .data:

0000000000011e30 <a>:
   11e30:	3438                	fld	fa4,104(s0)
   11e32:	3234                	fld	fa3,96(a2)
   11e34:	0000                	unimp
   11e36:	0000                	unimp
   11e38:	3931                	addiw	s2,s2,-20
   11e3a:	310a                	fld	ft2,160(sp)
   11e3c:	0000                	unimp
   11e3e:	0000                	unimp
   11e40:	3332                	fld	ft6,296(sp)
   11e42:	00003137          	lui	sp,0x3
   11e46:	0000                	unimp
   11e48:	0a32                	slli	s4,s4,0xc
   11e4a:	00003937          	lui	s2,0x3
   11e4e:	0000                	unimp
   11e50:	0a363333          	0xa363333
   11e54:	0000                	unimp
   11e56:	0000                	unimp
   11e58:	3134                	fld	fa3,96(a0)
   11e5a:	3039                	0x3039
   11e5c:	0000                	unimp
   11e5e:	0000                	unimp
   11e60:	3435                	addiw	s0,s0,-19
   11e62:	310a                	fld	ft2,160(sp)
   11e64:	0000                	unimp
   11e66:	0000                	unimp
   11e68:	3439                	addiw	s0,s0,-18
   11e6a:	3335                	addiw	t1,t1,-19
   11e6c:	0000                	unimp
   11e6e:	0000                	unimp
   11e70:	0a32                	slli	s4,s4,0xc
   11e72:	00003733          	snez	a4,zero
   11e76:	0000                	unimp
   11e78:	3530                	fld	fa2,104(a0)
   11e7a:	3634                	fld	fa3,104(a2)
   11e7c:	0000                	unimp
   11e7e:	0000                	unimp
   11e80:	310a                	fld	ft2,160(sp)
   11e82:	00003037          	lui	zero,0x3
   11e86:	0000                	unimp
   11e88:	3032                	fld	ft0,296(sp)
   11e8a:	0a35                	addi	s4,s4,13
   11e8c:	0000                	unimp
   11e8e:	0000                	unimp
   11e90:	3632                	fld	fa2,296(sp)
   11e92:	3430                	fld	fa2,104(s0)
   11e94:	0000                	unimp
   11e96:	0000                	unimp
   11e98:	3235                	addiw	tp,tp,-19
   11e9a:	310a                	fld	ft2,160(sp)
   11e9c:	0000                	unimp
   11e9e:	0000                	unimp
   11ea0:	3838                	fld	fa4,112(s0)
   11ea2:	3331                	addiw	t1,t1,-20
   11ea4:	0000                	unimp
   11ea6:	0000                	unimp
   11ea8:	0a35                	addi	s4,s4,13
   11eaa:	3832                	fld	fa6,296(sp)
   11eac:	0000                	unimp
   11eae:	0000                	unimp
   11eb0:	3330                	fld	fa2,96(a4)
   11eb2:	3736                	fld	fa4,360(sp)
   11eb4:	0000                	unimp
   11eb6:	0000                	unimp
   11eb8:	350a                	fld	fa0,160(sp)
   11eba:	00003633          	snez	a2,zero
   11ebe:	0000                	unimp
   11ec0:	3138                	fld	fa4,96(a0)
   11ec2:	0a32                	slli	s4,s4,0xc
   11ec4:	0000                	unimp
   11ec6:	0000                	unimp
   11ec8:	3738                	fld	fa4,104(a4)
   11eca:	00003433          	snez	s0,zero
   11ece:	0000                	unimp
   11ed0:	360a3133          	0x360a3133
   11ed4:	0000                	unimp
   11ed6:	0000                	unimp
   11ed8:	33373937          	lui	s2,0x33373
   11edc:	0000                	unimp
   11ede:	0000                	unimp
   11ee0:	370a                	fld	fa4,160(sp)
   11ee2:	3931                	addiw	s2,s2,-20
   11ee4:	0000                	unimp
   11ee6:	0000                	unimp
   11ee8:	3634                	fld	fa3,104(a2)
   11eea:	0a34                	addi	a3,sp,280
   11eec:	0000                	unimp
   11eee:	0000                	unimp
   11ef0:	3234                	fld	fa3,96(a2)
   11ef2:	3730                	fld	fa2,104(a4)
   11ef4:	0000                	unimp
   11ef6:	0000                	unimp
   11ef8:	3639                	addiw	a2,a2,-18
   11efa:	350a                	fld	fa0,160(sp)
   11efc:	0000                	unimp
   11efe:	0000                	unimp
   11f00:	33313133          	0x33313133
   11f04:	0000                	unimp
   11f06:	0000                	unimp
   11f08:	0a31                	addi	s4,s4,12
   11f0a:	3738                	fld	fa4,104(a4)
   11f0c:	0000                	unimp
   11f0e:	0000                	unimp
   11f10:	3731                	addiw	a4,a4,-20
   11f12:	0a30                	addi	a2,sp,280
   11f14:	0000                	unimp
   11f16:	0000                	unimp
   11f18:	3435                	addiw	s0,s0,-19
   11f1a:	3031                	0x3031
   11f1c:	0000                	unimp
   11f1e:	0000                	unimp
   11f20:	380a                	fld	fa6,160(sp)
   11f22:	3634                	fld	fa3,104(a2)
   11f24:	0000                	unimp
   11f26:	0000                	unimp
   11f28:	3236                	fld	ft4,360(sp)
   11f2a:	0a30                	addi	a2,sp,280
   11f2c:	0000                	unimp
   11f2e:	0000                	unimp
   11f30:	3035                	0x3035
   11f32:	3235                	addiw	tp,tp,-19
   11f34:	0000                	unimp
   11f36:	0000                	unimp
   11f38:	3634                	fld	fa3,104(a2)
   11f3a:	310a                	fld	ft2,160(sp)
   11f3c:	0000                	unimp
   11f3e:	0000                	unimp
   11f40:	3439                	addiw	s0,s0,-18
   11f42:	3838                	fld	fa4,112(s0)
   11f44:	0000                	unimp
   11f46:	0000                	unimp
   11f48:	0a34                	addi	a3,sp,280
   11f4a:	3738                	fld	fa4,104(a4)
   11f4c:	0000                	unimp
   11f4e:	0000                	unimp
   11f50:	31363433          	0x31363433
   11f54:	0000                	unimp
   11f56:	0000                	unimp
   11f58:	330a                	fld	ft6,160(sp)
   11f5a:	3039                	0x3039
   11f5c:	0000                	unimp
   11f5e:	0000                	unimp
   11f60:	3938                	fld	fa4,112(a0)
   11f62:	0a34                	addi	a3,sp,280
   11f64:	0000                	unimp
   11f66:	0000                	unimp
   11f68:	3835                	addiw	a6,a6,-19
   11f6a:	3139                	addiw	sp,sp,-18
   11f6c:	0000                	unimp
   11f6e:	0000                	unimp
   11f70:	3036                	fld	ft0,360(sp)
   11f72:	350a                	fld	fa0,160(sp)
   11f74:	0000                	unimp
   11f76:	0000                	unimp
   11f78:	3832                	fld	fa6,296(sp)
   11f7a:	00003337          	lui	t1,0x3
   11f7e:	0000                	unimp
   11f80:	330a                	fld	ft6,160(sp)
   11f82:	3538                	fld	fa4,104(a0)
   11f84:	0000                	unimp
   11f86:	0000                	unimp
   11f88:	3432                	fld	fs0,296(sp)
   11f8a:	0a39                	addi	s4,s4,14
   11f8c:	0000                	unimp
   11f8e:	0000                	unimp
   11f90:	3836                	fld	fa6,360(sp)
   11f92:	3331                	addiw	t1,t1,-20
   11f94:	0000                	unimp
   11f96:	0000                	unimp
   11f98:	3632                	fld	fa2,296(sp)
   11f9a:	340a                	fld	fs0,160(sp)
   11f9c:	0000                	unimp
   11f9e:	0000                	unimp
   11fa0:	3231                	addiw	tp,tp,-20
   11fa2:	3734                	fld	fa3,104(a4)
   11fa4:	0000                	unimp
   11fa6:	0000                	unimp
   11fa8:	0a35                	addi	s4,s4,13
   11faa:	3232                	fld	ft4,296(sp)
   11fac:	0000                	unimp
   11fae:	0000                	unimp
   11fb0:	3939                	addiw	s2,s2,-18
   11fb2:	3038                	fld	fa4,96(s0)
   11fb4:	0000                	unimp
   11fb6:	0000                	unimp
   11fb8:	390a                	fld	fs2,160(sp)
   11fba:	3735                	addiw	a4,a4,-19
   11fbc:	0000                	unimp
   11fbe:	0000                	unimp
   11fc0:	0a393837          	lui	a6,0xa393
   11fc4:	0000                	unimp
   11fc6:	0000                	unimp
   11fc8:	3638                	fld	fa4,104(a2)
   11fca:	3534                	fld	fa3,104(a0)
   11fcc:	0000                	unimp
   11fce:	0000                	unimp
   11fd0:	3535                	addiw	a0,a0,-19
   11fd2:	370a                	fld	fa4,160(sp)
   11fd4:	0000                	unimp
   11fd6:	0000                	unimp
   11fd8:	3434                	fld	fa3,104(s0)
   11fda:	3334                	fld	fa3,96(a4)
   11fdc:	0000                	unimp
   11fde:	0000                	unimp
   11fe0:	0a34                	addi	a3,sp,280
   11fe2:	00003833          	snez	a6,zero
   11fe6:	0000                	unimp
   11fe8:	3730                	fld	fa2,104(a4)
   11fea:	3135                	addiw	sp,sp,-19
   11fec:	0000                	unimp
   11fee:	0000                	unimp
   11ff0:	350a                	fld	fa0,160(sp)
   11ff2:	00003233          	snez	tp,zero
   11ff6:	0000                	unimp
   11ff8:	3635                	addiw	a2,a2,-19
   11ffa:	0a30                	addi	a2,sp,280
   11ffc:	0000                	unimp
   11ffe:	0000                	unimp
   12000:	3536                	fld	fa0,360(sp)
   12002:	00003637          	lui	a2,0x3
   12006:	0000                	unimp
   12008:	3430                	fld	fa2,104(s0)
   1200a:	350a                	fld	fa0,160(sp)
   1200c:	0000                	unimp
   1200e:	0000                	unimp
   12010:	3230                	fld	fa2,96(a2)
   12012:	3930                	fld	fa2,112(a0)
   12014:	0000                	unimp
   12016:	0000                	unimp
   12018:	0a36                	slli	s4,s4,0xd
   1201a:	00003133          	snez	sp,zero
   1201e:	0000                	unimp
   12020:	3639                	addiw	a2,a2,-18
   12022:	00003137          	lui	sp,0x3
   12026:	0000                	unimp
   12028:	370a                	fld	fa4,160(sp)
   1202a:	3536                	fld	fa0,360(sp)
   1202c:	0000                	unimp
   1202e:	0000                	unimp
   12030:	3031                	0x3031
   12032:	0a30                	addi	a2,sp,280
   12034:	0000                	unimp
   12036:	0000                	unimp
   12038:	3031                	0x3031
   1203a:	3836                	fld	fa6,360(sp)
   1203c:	0000                	unimp
   1203e:	0000                	unimp
   12040:	3034                	fld	fa3,96(s0)
   12042:	320a                	fld	ft4,160(sp)
   12044:	0000                	unimp
   12046:	0000                	unimp
   12048:	3139                	addiw	sp,sp,-18
   1204a:	3230                	fld	fa2,96(a2)
   1204c:	0000                	unimp
   1204e:	0000                	unimp
   12050:	0a36                	slli	s4,s4,0xd
   12052:	3835                	addiw	a6,a6,-19
   12054:	0000                	unimp
   12056:	0000                	unimp
   12058:	3135                	addiw	sp,sp,-19
   1205a:	3636                	fld	fa2,360(sp)
   1205c:	0000                	unimp
   1205e:	0000                	unimp
   12060:	340a                	fld	fs0,160(sp)
   12062:	3738                	fld	fa4,104(a4)
   12064:	0000                	unimp
   12066:	0000                	unimp
   12068:	3034                	fld	fa3,96(s0)
   1206a:	0a38                	addi	a4,sp,280
   1206c:	0000                	unimp
   1206e:	0000                	unimp
   12070:	34323533          	0x34323533
   12074:	0000                	unimp
   12076:	0000                	unimp
   12078:	0a39                	addi	s4,s4,14
   1207a:	3439                	addiw	s0,s0,-18
   1207c:	0000                	unimp
   1207e:	0000                	unimp
   12080:	3635                	addiw	a2,a2,-19
   12082:	3335                	addiw	t1,t1,-19
   12084:	0000                	unimp
   12086:	0000                	unimp
   12088:	350a                	fld	fa0,160(sp)
   1208a:	3338                	fld	fa4,96(a4)
   1208c:	0000                	unimp
   1208e:	0000                	unimp
   12090:	0a353237          	lui	tp,0xa353
   12094:	0000                	unimp
   12096:	0000                	unimp
   12098:	32333237          	lui	tp,0x32333
   1209c:	0000                	unimp
   1209e:	0000                	unimp
   120a0:	3734                	fld	fa3,104(a4)
   120a2:	390a                	fld	fs2,160(sp)
   120a4:	0000                	unimp
   120a6:	0000                	unimp
   120a8:	3936                	fld	fs2,360(sp)
   120aa:	3938                	fld	fa4,112(a0)
   120ac:	0000                	unimp
   120ae:	0000                	unimp
   120b0:	39340a33          	0x39340a33
   120b4:	0000                	unimp
   120b6:	0000                	unimp
   120b8:	3038                	fld	fa4,96(s0)
   120ba:	3432                	fld	fs0,296(sp)
   120bc:	0000                	unimp
   120be:	0000                	unimp
   120c0:	310a                	fld	ft2,160(sp)
   120c2:	3630                	fld	fa2,104(a2)
   120c4:	0000                	unimp
   120c6:	0000                	unimp
   120c8:	0a303833          	0xa303833
   120cc:	0000                	unimp
   120ce:	0000                	unimp
   120d0:	3036                	fld	ft0,360(sp)
   120d2:	00003737          	lui	a4,0x3
   120d6:	0000                	unimp
   120d8:	3639                	addiw	a2,a2,-18
   120da:	380a                	fld	fa6,160(sp)
   120dc:	0000                	unimp
   120de:	0000                	unimp
   120e0:	3936                	fld	fs2,360(sp)
   120e2:	3534                	fld	fa3,104(a0)
   120e4:	0000                	unimp
   120e6:	0000                	unimp
   120e8:	320a                	fld	ft4,160(sp)
   120ea:	00003737          	lui	a4,0x3
   120ee:	0000                	unimp
   120f0:	3430                	fld	fa2,104(s0)
   120f2:	0a31                	addi	s4,s4,12
   120f4:	0000                	unimp
   120f6:	0000                	unimp
   120f8:	3038                	fld	fa4,96(s0)
   120fa:	3932                	fld	fs2,296(sp)
   120fc:	0000                	unimp
   120fe:	0000                	unimp
   12100:	3832                	fld	fa6,296(sp)
   12102:	350a                	fld	fa0,160(sp)
   12104:	0000                	unimp
   12106:	0000                	unimp
   12108:	3736                	fld	fa4,360(sp)
   1210a:	3432                	fld	fs0,296(sp)
   1210c:	0000                	unimp
   1210e:	0000                	unimp
   12110:	0a38                	addi	a4,sp,280
   12112:	3831                	addiw	a6,a6,-20
   12114:	0000                	unimp
   12116:	0000                	unimp
   12118:	3531                	addiw	a0,a0,-20
   1211a:	3036                	fld	ft0,360(sp)
   1211c:	0000                	unimp
   1211e:	0000                	unimp
   12120:	370a                	fld	fa4,160(sp)
   12122:	3534                	fld	fa3,104(a0)
   12124:	0000                	unimp
   12126:	0000                	unimp
   12128:	3630                	fld	fa2,104(a2)
   1212a:	0a35                	addi	s4,s4,13
   1212c:	0000                	unimp
   1212e:	0000                	unimp
   12130:	3634                	fld	fa3,104(a2)
   12132:	3734                	fld	fa3,104(a4)
   12134:	0000                	unimp
   12136:	0000                	unimp
   12138:	3334                	fld	fa3,96(a4)
   1213a:	360a                	fld	fa2,160(sp)
   1213c:	0000                	unimp
   1213e:	0000                	unimp
   12140:	3435                	addiw	s0,s0,-19
   12142:	3236                	fld	ft4,360(sp)
   12144:	0000                	unimp
   12146:	0000                	unimp
   12148:	0a38                	addi	a4,sp,280
   1214a:	3639                	addiw	a2,a2,-18
   1214c:	0000                	unimp
   1214e:	0000                	unimp
   12150:	30393633          	0x30393633
   12154:	0000                	unimp
   12156:	0000                	unimp
   12158:	330a                	fld	ft6,160(sp)
   1215a:	3336                	fld	ft6,360(sp)
   1215c:	0000                	unimp
   1215e:	0000                	unimp
   12160:	3531                	addiw	a0,a0,-20
   12162:	0a38                	addi	a4,sp,280
   12164:	0000                	unimp
   12166:	0000                	unimp
   12168:	35393133          	0x35393133
   1216c:	0000                	unimp
   1216e:	0000                	unimp
   12170:	390a3233          	0x390a3233
   12174:	0000                	unimp
   12176:	0000                	unimp
   12178:	3638                	fld	fa4,104(a2)
   1217a:	3439                	addiw	s0,s0,-18
   1217c:	0000                	unimp
   1217e:	0000                	unimp
   12180:	0a35                	addi	s4,s4,13
   12182:	3536                	fld	fa0,360(sp)
   12184:	0000                	unimp
   12186:	0000                	unimp
   12188:	3738                	fld	fa4,104(a4)
   1218a:	3534                	fld	fa3,104(a0)
   1218c:	0000                	unimp
   1218e:	0000                	unimp
   12190:	390a                	fld	fs2,160(sp)
   12192:	3934                	fld	fa3,112(a0)
   12194:	0000                	unimp
   12196:	0000                	unimp
   12198:	3131                	addiw	sp,sp,-20
   1219a:	0a32                	slli	s4,s4,0xc
   1219c:	0000                	unimp
   1219e:	0000                	unimp
   121a0:	3138                	fld	fa4,96(a0)
   121a2:	3639                	addiw	a2,a2,-18
   121a4:	0000                	unimp
   121a6:	0000                	unimp
   121a8:	3138                	fld	fa4,96(a0)
   121aa:	320a                	fld	ft4,160(sp)
   121ac:	0000                	unimp
   121ae:	0000                	unimp
   121b0:	3039                	0x3039
   121b2:	00003933          	snez	s2,zero
   121b6:	0000                	unimp
   121b8:	33370a33          	0x33370a33
   121bc:	0000                	unimp
   121be:	0000                	unimp
   121c0:	3136                	fld	ft2,360(sp)
   121c2:	3139                	addiw	sp,sp,-18
   121c4:	0000                	unimp
   121c6:	0000                	unimp
   121c8:	310a                	fld	ft2,160(sp)
   121ca:	3038                	fld	fa4,96(s0)
   121cc:	0000                	unimp
   121ce:	0000                	unimp
   121d0:	3030                	fld	fa2,96(s0)
   121d2:	00000a37          	lui	s4,0x0
   121d6:	0000                	unimp
   121d8:	3431                	addiw	s0,s0,-20
   121da:	00003437          	lui	s0,0x3
   121de:	0000                	unimp
   121e0:	3031                	0x3031
   121e2:	360a                	fld	fa2,160(sp)
   121e4:	0000                	unimp
   121e6:	0000                	unimp
   121e8:	3739                	addiw	a4,a4,-18
   121ea:	3638                	fld	fa4,104(a2)
   121ec:	0000                	unimp
   121ee:	0000                	unimp
   121f0:	0a31                	addi	s4,s4,12
   121f2:	3532                	fld	fa0,296(sp)
   121f4:	0000                	unimp
   121f6:	0000                	unimp
   121f8:	3736                	fld	fa4,360(sp)
   121fa:	3032                	fld	ft0,296(sp)
   121fc:	0000                	unimp
   121fe:	0000                	unimp
   12200:	310a                	fld	ft2,160(sp)
   12202:	3835                	addiw	a6,a6,-19
   12204:	0000                	unimp
   12206:	0000                	unimp
   12208:	0a323033          	0xa323033
   1220c:	0000                	unimp
   1220e:	0000                	unimp
   12210:	3831                	addiw	a6,a6,-20
   12212:	3734                	fld	fa3,104(a4)
   12214:	0000                	unimp
   12216:	0000                	unimp
   12218:	3936                	fld	fs2,360(sp)
   1221a:	340a                	fld	fs0,160(sp)
   1221c:	0000                	unimp
   1221e:	0000                	unimp
   12220:	3131                	addiw	sp,sp,-20
   12222:	3434                	fld	fa3,104(s0)
   12224:	0000                	unimp
   12226:	0000                	unimp
   12228:	0a30                	addi	a2,sp,280
   1222a:	3634                	fld	fa3,104(a2)
   1222c:	0000                	unimp
   1222e:	0000                	unimp
   12230:	33303737          	lui	a4,0x33303
   12234:	0000                	unimp
   12236:	0000                	unimp
   12238:	330a                	fld	ft6,160(sp)
   1223a:	3234                	fld	fa3,96(a2)
   1223c:	0000                	unimp
   1223e:	0000                	unimp
   12240:	3430                	fld	fa2,104(s0)
   12242:	0a34                	addi	a3,sp,280
   12244:	0000                	unimp
   12246:	0000                	unimp
   12248:	3039                	0x3039
   1224a:	3938                	fld	fa4,112(a0)
   1224c:	0000                	unimp
   1224e:	0000                	unimp
   12250:	360a3437          	lui	s0,0x360a3
   12254:	0000                	unimp
   12256:	0000                	unimp
   12258:	3531                	addiw	a0,a0,-20
   1225a:	3331                	addiw	t1,t1,-20
   1225c:	0000                	unimp
   1225e:	0000                	unimp
   12260:	36360a37          	lui	s4,0x36360
   12264:	0000                	unimp
   12266:	0000                	unimp
   12268:	3736                	fld	fa4,360(sp)
   1226a:	3630                	fld	fa2,104(a2)
   1226c:	0000                	unimp
   1226e:	0000                	unimp
   12270:	380a                	fld	fa6,160(sp)
   12272:	3739                	addiw	a4,a4,-18
   12274:	0000                	unimp
   12276:	0000                	unimp
   12278:	3339                	addiw	t1,t1,-18
   1227a:	00000a37          	lui	s4,0x0
   1227e:	0000                	unimp
   12280:	3634                	fld	fa3,104(a2)
   12282:	3835                	addiw	a6,a6,-19
   12284:	0000                	unimp
   12286:	0000                	unimp
   12288:	3838                	fld	fa4,112(s0)
   1228a:	310a                	fld	ft2,160(sp)
   1228c:	0000                	unimp
   1228e:	0000                	unimp
   12290:	30393537          	lui	a0,0x30393
   12294:	0000                	unimp
   12296:	0000                	unimp
   12298:	0a35                	addi	s4,s4,13
   1229a:	3732                	fld	fa4,296(sp)
   1229c:	0000                	unimp
   1229e:	0000                	unimp
   122a0:	3036                	fld	ft0,360(sp)
   122a2:	00003037          	lui	zero,0x3
   122a6:	0000                	unimp
   122a8:	350a                	fld	fa0,160(sp)
   122aa:	3336                	fld	ft6,360(sp)
   122ac:	0000                	unimp
   122ae:	0000                	unimp
   122b0:	3630                	fld	fa2,104(a2)
   122b2:	00000a37          	lui	s4,0x0
   122b6:	0000                	unimp
   122b8:	3632                	fld	fa2,296(sp)
   122ba:	00003333          	snez	t1,zero
   122be:	0000                	unimp
   122c0:	350a3833          	0x350a3833
   122c4:	0000                	unimp
   122c6:	0000                	unimp
   122c8:	3038                	fld	fa4,96(s0)
   122ca:	00003437          	lui	s0,0x3
   122ce:	0000                	unimp
   122d0:	0a35                	addi	s4,s4,13
   122d2:	00003437          	lui	s0,0x3
   122d6:	0000                	unimp
   122d8:	3930                	fld	fa2,112(a0)
   122da:	0a31                	addi	s4,s4,12
   122dc:	0000                	unimp
   122de:	0000                	unimp
   122e0:	3734                	fld	fa3,104(a4)
   122e2:	3732                	fld	fa4,296(sp)
   122e4:	0000                	unimp
   122e6:	0000                	unimp
   122e8:	0a38                	addi	a4,sp,280
   122ea:	3135                	addiw	sp,sp,-19
   122ec:	0000                	unimp
   122ee:	0000                	unimp
   122f0:	3635                	addiw	a2,a2,-19
   122f2:	3335                	addiw	t1,t1,-19
   122f4:	0000                	unimp
   122f6:	0000                	unimp
   122f8:	360a                	fld	fa2,160(sp)
   122fa:	3239                	addiw	tp,tp,-18
   122fc:	0000                	unimp
   122fe:	0000                	unimp
   12300:	3236                	fld	ft4,360(sp)
   12302:	0a32                	slli	s4,s4,0xc
   12304:	0000                	unimp
   12306:	0000                	unimp
   12308:	3535                	addiw	a0,a0,-19
   1230a:	3430                	fld	fa2,104(s0)
   1230c:	0000                	unimp
   1230e:	0000                	unimp
   12310:	3030                	fld	fa2,96(s0)
   12312:	360a                	fld	fa2,160(sp)
   12314:	0000                	unimp
   12316:	0000                	unimp
   12318:	3431                	addiw	s0,s0,-20
   1231a:	3435                	addiw	s0,s0,-19
   1231c:	0000                	unimp
   1231e:	0000                	unimp
   12320:	0a39                	addi	s4,s4,14
   12322:	00003933          	snez	s2,zero
   12326:	0000                	unimp
   12328:	39353333          	0x39353333
   1232c:	0000                	unimp
   1232e:	0000                	unimp
   12330:	340a                	fld	fs0,160(sp)
   12332:	3938                	fld	fa4,112(a0)
   12334:	0000                	unimp
   12336:	0000                	unimp
   12338:	3336                	fld	ft6,360(sp)
   1233a:	0a36                	slli	s4,s4,0xd
   1233c:	0000                	unimp
   1233e:	0000                	unimp
   12340:	3736                	fld	fa4,360(sp)
   12342:	3332                	fld	ft6,296(sp)
   12344:	0000                	unimp
   12346:	0000                	unimp
   12348:	3932                	fld	fs2,296(sp)
   1234a:	360a                	fld	fa2,160(sp)
   1234c:	0000                	unimp
   1234e:	0000                	unimp
   12350:	3636                	fld	fa2,360(sp)
   12352:	3730                	fld	fa2,104(a4)
   12354:	0000                	unimp
   12356:	0000                	unimp
   12358:	340a                	fld	fs0,160(sp)
   1235a:	00003737          	lui	a4,0x3
   1235e:	0000                	unimp
   12360:	3438                	fld	fa4,104(s0)
   12362:	00000a33          	add	s4,zero,zero
   12366:	0000                	unimp
   12368:	34323337          	lui	t1,0x34323
   1236c:	0000                	unimp
   1236e:	0000                	unimp
   12370:	3835                	addiw	a6,a6,-19
   12372:	340a                	fld	fs0,160(sp)
   12374:	0000                	unimp
   12376:	0000                	unimp
   12378:	3236                	fld	ft4,360(sp)
   1237a:	00003437          	lui	s0,0x3
   1237e:	0000                	unimp
   12380:	0a30                	addi	a2,sp,280
   12382:	3438                	fld	fa4,104(s0)
   12384:	0000                	unimp
   12386:	0000                	unimp
   12388:	3830                	fld	fa2,112(s0)
   1238a:	00003937          	lui	s2,0x3
   1238e:	0000                	unimp
   12390:	370a                	fld	fa4,160(sp)
   12392:	3238                	fld	fa4,96(a2)
   12394:	0000                	unimp
   12396:	0000                	unimp
   12398:	3334                	fld	fa3,96(a4)
   1239a:	0a34                	addi	a3,sp,280
   1239c:	0000                	unimp
   1239e:	0000                	unimp
   123a0:	3036                	fld	ft0,360(sp)
   123a2:	3530                	fld	fa2,104(a0)
   123a4:	0000                	unimp
   123a6:	0000                	unimp
   123a8:	3236                	fld	ft4,360(sp)
   123aa:	370a                	fld	fa4,160(sp)
   123ac:	0000                	unimp
   123ae:	0000                	unimp
   123b0:	3031                	0x3031
   123b2:	3036                	fld	ft0,360(sp)
   123b4:	0000                	unimp
   123b6:	0000                	unimp
   123b8:	0a39                	addi	s4,s4,14
   123ba:	3634                	fld	fa3,104(a2)
   123bc:	0000                	unimp
   123be:	0000                	unimp
   123c0:	3931                	addiw	s2,s2,-20
   123c2:	3530                	fld	fa2,104(a0)
   123c4:	0000                	unimp
   123c6:	0000                	unimp
   123c8:	390a                	fld	fs2,160(sp)
   123ca:	3638                	fld	fa4,104(a2)
   123cc:	0000                	unimp
   123ce:	0000                	unimp
   123d0:	3235                	addiw	tp,tp,-19
   123d2:	0a30                	addi	a2,sp,280
   123d4:	0000                	unimp
   123d6:	0000                	unimp
   123d8:	31313037          	lui	zero,0x31313
   123dc:	0000                	unimp
   123de:	0000                	unimp
   123e0:	370a3833          	0x370a3833
   123e4:	0000                	unimp
   123e6:	0000                	unimp
   123e8:	3830                	fld	fa2,112(s0)
   123ea:	00003637          	lui	a2,0x3
   123ee:	0000                	unimp
   123f0:	0a36                	slli	s4,s4,0xd
   123f2:	00003533          	snez	a0,zero
   123f6:	0000                	unimp
   123f8:	3035                	0x3035
   123fa:	3239                	addiw	tp,tp,-18
   123fc:	0000                	unimp
   123fe:	0000                	unimp
   12400:	350a                	fld	fa0,160(sp)
   12402:	3435                	addiw	s0,s0,-19
   12404:	0000                	unimp
   12406:	0000                	unimp
   12408:	3634                	fld	fa3,104(a2)
   1240a:	00000a37          	lui	s4,0x0
   1240e:	0000                	unimp
   12410:	3736                	fld	fa4,360(sp)
   12412:	3935                	addiw	s2,s2,-19
   12414:	0000                	unimp
   12416:	0000                	unimp
   12418:	3736                	fld	fa4,360(sp)
   1241a:	350a                	fld	fa0,160(sp)
   1241c:	0000                	unimp
   1241e:	0000                	unimp
   12420:	3939                	addiw	s2,s2,-18
   12422:	00003537          	lui	a0,0x3
   12426:	0000                	unimp
   12428:	34350a33          	0x34350a33
   1242c:	0000                	unimp
   1242e:	0000                	unimp
   12430:	3932                	fld	fs2,296(sp)
   12432:	3739                	addiw	a4,a4,-18
   12434:	0000                	unimp
   12436:	0000                	unimp
   12438:	370a                	fld	fa4,160(sp)
   1243a:	3631                	addiw	a2,a2,-20
   1243c:	0000                	unimp
   1243e:	0000                	unimp
   12440:	0a353233          	0xa353233
   12444:	0000                	unimp
   12446:	0000                	unimp
   12448:	3034                	fld	fa3,96(s0)
   1244a:	00003337          	lui	t1,0x3
   1244e:	0000                	unimp
   12450:	3738                	fld	fa4,104(a4)
   12452:	310a                	fld	ft2,160(sp)
   12454:	0000                	unimp
   12456:	0000                	unimp
   12458:	3431                	addiw	s0,s0,-20
   1245a:	3539                	addiw	a0,a0,-18
   1245c:	0000                	unimp
   1245e:	0000                	unimp
   12460:	0a36                	slli	s4,s4,0xd
   12462:	3338                	fld	fa4,96(a4)
   12464:	0000                	unimp
   12466:	0000                	unimp
   12468:	3834                	fld	fa3,112(s0)
   1246a:	3138                	fld	fa4,96(a0)
   1246c:	0000                	unimp
   1246e:	0000                	unimp
   12470:	310a                	fld	ft2,160(sp)
   12472:	3332                	fld	ft6,296(sp)
   12474:	0000                	unimp
   12476:	0000                	unimp
   12478:	3635                	addiw	a2,a2,-19
   1247a:	0a36                	slli	s4,s4,0xd
   1247c:	0000                	unimp
   1247e:	0000                	unimp
   12480:	3938                	fld	fa4,112(a0)
   12482:	00003637          	lui	a2,0x3
   12486:	0000                	unimp
   12488:	3438                	fld	fa4,104(s0)
   1248a:	320a                	fld	ft4,160(sp)
   1248c:	0000                	unimp
   1248e:	0000                	unimp
   12490:	3132                	fld	ft2,296(sp)
   12492:	3036                	fld	ft0,360(sp)
   12494:	0000                	unimp
   12496:	0000                	unimp
   12498:	0a32                	slli	s4,s4,0xc
   1249a:	00003033          	snez	zero,zero
   1249e:	0000                	unimp
   124a0:	3130                	fld	fa2,96(a0)
   124a2:	3835                	addiw	a6,a6,-19
   124a4:	0000                	unimp
   124a6:	0000                	unimp
   124a8:	340a                	fld	fs0,160(sp)
   124aa:	00003637          	lui	a2,0x3
   124ae:	0000                	unimp
   124b0:	0a313437          	lui	s0,0xa313
   124b4:	0000                	unimp
   124b6:	0000                	unimp
   124b8:	38333137          	lui	sp,0x38333
   124bc:	0000                	unimp
   124be:	0000                	unimp
   124c0:	0a39                	addi	s4,s4,14
   124c2:	3039                	0x3039
   124c4:	0000                	unimp
   124c6:	0000                	unimp
   124c8:	3738                	fld	fa4,104(a4)
   124ca:	3836                	fld	fa6,360(sp)
   124cc:	0000                	unimp
   124ce:	0000                	unimp
   124d0:	330a                	fld	ft6,160(sp)
   124d2:	3630                	fld	fa2,104(a2)
   124d4:	0000                	unimp
   124d6:	0000                	unimp
   124d8:	3234                	fld	fa3,96(a2)
   124da:	0a38                	addi	a4,sp,280
   124dc:	0000                	unimp
   124de:	0000                	unimp
   124e0:	3738                	fld	fa4,104(a4)
   124e2:	00003133          	snez	sp,zero
   124e6:	0000                	unimp
   124e8:	0a32                	slli	s4,s4,0xc
   124ea:	3235                	addiw	tp,tp,-19
   124ec:	0000                	unimp
   124ee:	0000                	unimp
   124f0:	3039                	0x3039
   124f2:	00003233          	snez	tp,zero
   124f6:	0000                	unimp
   124f8:	330a                	fld	ft6,160(sp)
   124fa:	3835                	addiw	a6,a6,-19
   124fc:	0000                	unimp
   124fe:	0000                	unimp
   12500:	380a3537          	lui	a0,0x380a3
   12504:	0000                	unimp
   12506:	0000                	unimp
   12508:	3235                	addiw	tp,tp,-19
   1250a:	3530                	fld	fa2,104(a0)
   1250c:	0000                	unimp
   1250e:	0000                	unimp
   12510:	360a                	fld	fa2,160(sp)
   12512:	00003537          	lui	a0,0x3
   12516:	0000                	unimp
   12518:	3932                	fld	fs2,296(sp)
   1251a:	0a39                	addi	s4,s4,14
   1251c:	0000                	unimp
   1251e:	0000                	unimp
   12520:	31313937          	lui	s2,0x31313
   12524:	0000                	unimp
   12526:	0000                	unimp
   12528:	350a3633          	0x350a3633
   1252c:	0000                	unimp
   1252e:	0000                	unimp
   12530:	3039                	0x3039
   12532:	3639                	addiw	a2,a2,-18
   12534:	0000                	unimp
   12536:	0000                	unimp
   12538:	0a30                	addi	a2,sp,280
   1253a:	3531                	addiw	a0,a0,-20
   1253c:	0000                	unimp
   1253e:	0000                	unimp
   12540:	3538                	fld	fa4,104(a0)
   12542:	3539                	addiw	a0,a0,-18
   12544:	0000                	unimp
   12546:	0000                	unimp
   12548:	380a                	fld	fa6,160(sp)
   1254a:	00003937          	lui	s2,0x3
   1254e:	0000                	unimp
   12550:	3031                	0x3031
   12552:	0a34                	addi	a3,sp,280
   12554:	0000                	unimp
   12556:	0000                	unimp
   12558:	3939                	addiw	s2,s2,-18
   1255a:	3338                	fld	fa4,96(a4)
   1255c:	0000                	unimp
   1255e:	0000                	unimp
   12560:	380a3533          	0x380a3533
   12564:	0000                	unimp
   12566:	0000                	unimp
   12568:	37323233          	0x37323233
   1256c:	0000                	unimp
   1256e:	0000                	unimp
   12570:	31330a37          	lui	s4,0x31330
   12574:	0000                	unimp
   12576:	0000                	unimp
   12578:	0a383933          	0xa383933
   1257c:	0000                	unimp
   1257e:	0000                	unimp
   12580:	3239                	addiw	tp,tp,-18
   12582:	3232                	fld	ft4,296(sp)
   12584:	0000                	unimp
   12586:	0000                	unimp
   12588:	350a3337          	lui	t1,0x350a3
   1258c:	0000                	unimp
   1258e:	0000                	unimp
   12590:	36303637          	lui	a2,0x36303
   12594:	0000                	unimp
   12596:	0000                	unimp
   12598:	0a36                	slli	s4,s4,0xd
   1259a:	3431                	addiw	s0,s0,-20
   1259c:	0000                	unimp
   1259e:	0000                	unimp
   125a0:	3834                	fld	fa3,112(s0)
   125a2:	3735                	addiw	a4,a4,-19
   125a4:	0000                	unimp
   125a6:	0000                	unimp
   125a8:	350a                	fld	fa0,160(sp)
   125aa:	00003133          	snez	sp,zero
   125ae:	0000                	unimp
   125b0:	3230                	fld	fa2,96(a2)
   125b2:	0a34                	addi	a3,sp,280
   125b4:	0000                	unimp
   125b6:	0000                	unimp
   125b8:	39353137          	lui	sp,0x39353
   125bc:	0000                	unimp
   125be:	0000                	unimp
   125c0:	0a39                	addi	s4,s4,14
   125c2:	3732                	fld	fa4,296(sp)
   125c4:	0000                	unimp
   125c6:	0000                	unimp
   125c8:	3334                	fld	fa3,96(a4)
   125ca:	00003633          	snez	a2,zero
   125ce:	0000                	unimp
   125d0:	310a                	fld	ft2,160(sp)
   125d2:	3836                	fld	fa6,360(sp)
   125d4:	0000                	unimp
   125d6:	0000                	unimp
   125d8:	3538                	fld	fa4,104(a0)
   125da:	00000a33          	add	s4,zero,zero
   125de:	0000                	unimp
   125e0:	32373637          	lui	a2,0x32373
   125e4:	0000                	unimp
   125e6:	0000                	unimp
   125e8:	3635                	addiw	a2,a2,-19
   125ea:	370a                	fld	fa4,160(sp)
   125ec:	0000                	unimp
   125ee:	0000                	unimp
   125f0:	38303237          	lui	tp,0x38303
   125f4:	0000                	unimp
   125f6:	0000                	unimp
   125f8:	0a32                	slli	s4,s4,0xc
   125fa:	3735                	addiw	a4,a4,-19
   125fc:	0000                	unimp
   125fe:	0000                	unimp
   12600:	3839                	addiw	a6,a6,-18
   12602:	3838                	fld	fa4,112(s0)
   12604:	0000                	unimp
   12606:	0000                	unimp
   12608:	390a                	fld	fs2,160(sp)
   1260a:	00003033          	snez	zero,zero
   1260e:	0000                	unimp
   12610:	0a303537          	lui	a0,0xa303
   12614:	0000                	unimp
   12616:	0000                	unimp
   12618:	3838                	fld	fa4,112(s0)
   1261a:	3830                	fld	fa2,112(s0)
   1261c:	0000                	unimp
   1261e:	0000                	unimp
   12620:	0a31                	addi	s4,s4,12
   12622:	3638                	fld	fa4,104(a2)
   12624:	0000                	unimp
   12626:	0000                	unimp
   12628:	3339                	addiw	t1,t1,-18
   1262a:	0a32                	slli	s4,s4,0xc
   1262c:	0000                	unimp
   1262e:	0000                	unimp
   12630:	3835                	addiw	a6,a6,-19
   12632:	00003337          	lui	t1,0x3
   12636:	0000                	unimp
   12638:	3236                	fld	ft4,360(sp)
   1263a:	320a                	fld	ft4,160(sp)
   1263c:	0000                	unimp
   1263e:	0000                	unimp
   12640:	3539                	addiw	a0,a0,-18
   12642:	3834                	fld	fa3,112(s0)
   12644:	0000                	unimp
   12646:	0000                	unimp
   12648:	0a35                	addi	s4,s4,13
   1264a:	3935                	addiw	s2,s2,-19
   1264c:	0000                	unimp
   1264e:	0000                	unimp
   12650:	3339                	addiw	t1,t1,-18
   12652:	3631                	addiw	a2,a2,-20
   12654:	0000                	unimp
   12656:	0000                	unimp
   12658:	350a                	fld	fa0,160(sp)
   1265a:	3331                	addiw	t1,t1,-20
   1265c:	0000                	unimp
   1265e:	0000                	unimp
   12660:	3334                	fld	fa3,96(a4)
   12662:	350a                	fld	fa0,160(sp)
   12664:	0000                	unimp
   12666:	0000                	unimp
   12668:	32343533          	0x32343533
   1266c:	0000                	unimp
   1266e:	0000                	unimp
   12670:	0a31                	addi	s4,s4,12
   12672:	3032                	fld	ft0,296(sp)
   12674:	0000                	unimp
   12676:	0000                	unimp
   12678:	3739                	addiw	a4,a4,-18
   1267a:	3339                	addiw	t1,t1,-18
   1267c:	0000                	unimp
   1267e:	0000                	unimp
   12680:	310a                	fld	ft2,160(sp)
   12682:	3034                	fld	fa3,96(s0)
   12684:	0000                	unimp
   12686:	0000                	unimp
   12688:	3739                	addiw	a4,a4,-18
   1268a:	0a30                	addi	a2,sp,280
   1268c:	0000                	unimp
   1268e:	0000                	unimp
   12690:	3638                	fld	fa4,104(a2)
   12692:	3931                	addiw	s2,s2,-20
   12694:	0000                	unimp
   12696:	0000                	unimp
   12698:	3139                	addiw	sp,sp,-18
   1269a:	340a                	fld	fs0,160(sp)
   1269c:	0000                	unimp
   1269e:	0000                	unimp
   126a0:	3831                	addiw	a6,a6,-20
   126a2:	3031                	0x3031
   126a4:	0000                	unimp
   126a6:	0000                	unimp
   126a8:	0a30                	addi	a2,sp,280
   126aa:	3134                	fld	fa3,96(a0)
   126ac:	0000                	unimp
   126ae:	0000                	unimp
   126b0:	3939                	addiw	s2,s2,-18
   126b2:	3236                	fld	ft4,360(sp)
   126b4:	0000                	unimp
   126b6:	0000                	unimp
   126b8:	380a                	fld	fa6,160(sp)
   126ba:	00003833          	snez	a6,zero
   126be:	0000                	unimp
   126c0:	3731                	addiw	a4,a4,-20
   126c2:	00000a37          	lui	s4,0x0
   126c6:	0000                	unimp
   126c8:	34393137          	lui	sp,0x34393
   126cc:	0000                	unimp
   126ce:	0000                	unimp
   126d0:	3232                	fld	ft4,296(sp)
   126d2:	390a                	fld	fs2,160(sp)
   126d4:	0000                	unimp
   126d6:	0000                	unimp
   126d8:	37363737          	lui	a4,0x37363
   126dc:	0000                	unimp
   126de:	0000                	unimp
   126e0:	340a                	fld	fs0,160(sp)
   126e2:	3039                	0x3039
   126e4:	0000                	unimp
   126e6:	0000                	unimp
   126e8:	3931                	addiw	s2,s2,-20
   126ea:	0a35                	addi	s4,s4,13
   126ec:	0000                	unimp
   126ee:	0000                	unimp
   126f0:	3031                	0x3031
   126f2:	3134                	fld	fa3,96(a0)
   126f4:	0000                	unimp
   126f6:	0000                	unimp
   126f8:	33320a37          	lui	s4,0x33320
   126fc:	0000                	unimp
   126fe:	0000                	unimp
   12700:	0a303837          	lui	a6,0xa303
   12704:	0000                	unimp
   12706:	0000                	unimp
   12708:	3335                	addiw	t1,t1,-19
   1270a:	3132                	fld	ft2,296(sp)
   1270c:	0000                	unimp
   1270e:	0000                	unimp
   12710:	3635                	addiw	a2,a2,-19
   12712:	350a                	fld	fa0,160(sp)
   12714:	0000                	unimp
   12716:	0000                	unimp
   12718:	3439                	addiw	s0,s0,-18
   1271a:	3831                	addiw	a6,a6,-20
   1271c:	0000                	unimp
   1271e:	0000                	unimp
   12720:	34380a33          	0x34380a33
   12724:	0000                	unimp
   12726:	0000                	unimp
   12728:	3439                	addiw	s0,s0,-18
   1272a:	00003037          	lui	zero,0x3
   1272e:	0000                	unimp
   12730:	340a                	fld	fs0,160(sp)
   12732:	3139                	addiw	sp,sp,-18
   12734:	0000                	unimp
   12736:	0000                	unimp
   12738:	3135                	addiw	sp,sp,-19
   1273a:	380a                	fld	fa6,160(sp)
   1273c:	0000                	unimp
   1273e:	0000                	unimp
   12740:	3636                	fld	fa2,360(sp)
   12742:	3834                	fld	fa3,112(s0)
   12744:	0000                	unimp
   12746:	0000                	unimp
   12748:	0a36                	slli	s4,s4,0xd
   1274a:	00003433          	snez	s0,zero
   1274e:	0000                	unimp
   12750:	3030                	fld	fa2,96(s0)
   12752:	3939                	addiw	s2,s2,-18
   12754:	0000                	unimp
   12756:	0000                	unimp
   12758:	310a                	fld	ft2,160(sp)
   1275a:	3835                	addiw	a6,a6,-19
   1275c:	0000                	unimp
   1275e:	0000                	unimp
   12760:	3031                	0x3031
   12762:	0a35                	addi	s4,s4,13
   12764:	0000                	unimp
   12766:	0000                	unimp
   12768:	3136                	fld	ft2,360(sp)
   1276a:	3130                	fld	fa2,96(a0)
   1276c:	0000                	unimp
   1276e:	0000                	unimp
   12770:	3339                	addiw	t1,t1,-18
   12772:	310a                	fld	ft2,160(sp)
   12774:	0000                	unimp
   12776:	0000                	unimp
   12778:	3339                	addiw	t1,t1,-18
   1277a:	3330                	fld	fa2,96(a4)
   1277c:	0000                	unimp
   1277e:	0000                	unimp
   12780:	0a31                	addi	s4,s4,12
   12782:	3332                	fld	ft6,296(sp)
   12784:	0000                	unimp
   12786:	0000                	unimp
   12788:	3539                	addiw	a0,a0,-18
   1278a:	0a34                	addi	a3,sp,280
   1278c:	0000                	unimp
   1278e:	0000                	unimp
   12790:	33383433          	0x33383433
   12794:	0000                	unimp
   12796:	0000                	unimp
   12798:	390a3633          	0x390a3633
   1279c:	0000                	unimp
   1279e:	0000                	unimp
   127a0:	3531                	addiw	a0,a0,-20
   127a2:	3634                	fld	fa3,104(a2)
   127a4:	0000                	unimp
   127a6:	0000                	unimp
   127a8:	0a30                	addi	a2,sp,280
   127aa:	3139                	addiw	sp,sp,-18
   127ac:	0000                	unimp
   127ae:	0000                	unimp
   127b0:	3335                	addiw	t1,t1,-19
   127b2:	3439                	addiw	s0,s0,-18
   127b4:	0000                	unimp
   127b6:	0000                	unimp
   127b8:	370a                	fld	fa4,160(sp)
   127ba:	3934                	fld	fa3,112(a0)
   127bc:	0000                	unimp
   127be:	0000                	unimp
   127c0:	3234                	fld	fa3,96(a2)
   127c2:	0a30                	addi	a2,sp,280
   127c4:	0000                	unimp
   127c6:	0000                	unimp
   127c8:	3731                	addiw	a4,a4,-20
   127ca:	3536                	fld	fa0,360(sp)
   127cc:	0000                	unimp
   127ce:	0000                	unimp
   127d0:	3436                	fld	fs0,360(sp)
   127d2:	390a                	fld	fs2,160(sp)
   127d4:	0000                	unimp
   127d6:	0000                	unimp
   127d8:	38363337          	lui	t1,0x38363
   127dc:	0000                	unimp
   127de:	0000                	unimp
   127e0:	0a35                	addi	s4,s4,13
   127e2:	3032                	fld	ft0,296(sp)
   127e4:	0000                	unimp
   127e6:	0000                	unimp
   127e8:	3138                	fld	fa4,96(a0)
   127ea:	3435                	addiw	s0,s0,-19
   127ec:	0000                	unimp
   127ee:	0000                	unimp
   127f0:	350a                	fld	fa0,160(sp)
   127f2:	3638                	fld	fa4,104(a2)
   127f4:	0000                	unimp
   127f6:	0000                	unimp
   127f8:	3538                	fld	fa4,104(a0)
   127fa:	0a38                	addi	a4,sp,280
   127fc:	0000                	unimp
   127fe:	0000                	unimp
   12800:	3638                	fld	fa4,104(a2)
   12802:	3534                	fld	fa3,104(a0)
   12804:	0000                	unimp
   12806:	0000                	unimp
   12808:	3138                	fld	fa4,96(a0)
   1280a:	370a                	fld	fa4,160(sp)
   1280c:	0000                	unimp
   1280e:	0000                	unimp
   12810:	3931                	addiw	s2,s2,-20
   12812:	00003433          	snez	s0,zero
   12816:	0000                	unimp
   12818:	0a39                	addi	s4,s4,14
   1281a:	3931                	addiw	s2,s2,-20
   1281c:	0000                	unimp
   1281e:	0000                	unimp
   12820:	3632                	fld	fa2,296(sp)
   12822:	3832                	fld	fa6,296(sp)
   12824:	0000                	unimp
   12826:	0000                	unimp
   12828:	360a                	fld	fa2,160(sp)
   1282a:	3536                	fld	fa0,360(sp)
   1282c:	0000                	unimp
   1282e:	0000                	unimp
   12830:	0a383537          	lui	a0,0xa383
   12834:	0000                	unimp
   12836:	0000                	unimp
   12838:	3434                	fld	fa3,104(s0)
   1283a:	00003137          	lui	sp,0x3
   1283e:	0000                	unimp
   12840:	3230                	fld	fa2,96(a2)
   12842:	320a                	fld	ft4,160(sp)
   12844:	0000                	unimp
   12846:	0000                	unimp
   12848:	32393233          	0x32393233
   1284c:	0000                	unimp
   1284e:	0000                	unimp
   12850:	0a36                	slli	s4,s4,0xd
   12852:	3035                	0x3035
   12854:	0000                	unimp
   12856:	0000                	unimp
   12858:	3732                	fld	fa4,296(sp)
   1285a:	3530                	fld	fa2,104(a0)
   1285c:	0000                	unimp
   1285e:	0000                	unimp
   12860:	340a                	fld	fs0,160(sp)
   12862:	3430                	fld	fa2,104(s0)
   12864:	0000                	unimp
   12866:	0000                	unimp
   12868:	3138                	fld	fa4,96(a0)
   1286a:	0a30                	addi	a2,sp,280
   1286c:	0000                	unimp
   1286e:	0000                	unimp
   12870:	3739                	addiw	a4,a4,-18
   12872:	3630                	fld	fa2,104(a2)
   12874:	0000                	unimp
   12876:	0000                	unimp
   12878:	36390a33          	0x36390a33
   1287c:	0000                	unimp
   1287e:	0000                	unimp
   12880:	3439                	addiw	s0,s0,-18
   12882:	3936                	fld	fs2,360(sp)
   12884:	0000                	unimp
   12886:	0000                	unimp
   12888:	350a                	fld	fa0,160(sp)
   1288a:	00003537          	lui	a0,0x3
   1288e:	0000                	unimp
   12890:	3035                	0x3035
   12892:	00000a37          	lui	s4,0x0
   12896:	0000                	unimp
   12898:	3339                	addiw	t1,t1,-18
   1289a:	00003033          	snez	zero,zero
   1289e:	0000                	unimp
   128a0:	3434                	fld	fa3,104(s0)
   128a2:	330a                	fld	ft6,160(sp)
   128a4:	0000                	unimp
   128a6:	0000                	unimp
   128a8:	3831                	addiw	a6,a6,-20
   128aa:	3032                	fld	ft0,296(sp)
   128ac:	0000                	unimp
   128ae:	0000                	unimp
   128b0:	0a39                	addi	s4,s4,14
   128b2:	00003537          	lui	a0,0x3
   128b6:	0000                	unimp
   128b8:	3538                	fld	fa4,104(a0)
   128ba:	3134                	fld	fa3,96(a0)
   128bc:	0000                	unimp
   128be:	0000                	unimp
   128c0:	330a                	fld	ft6,160(sp)
   128c2:	3331                	addiw	t1,t1,-20
   128c4:	0000                	unimp
   128c6:	0000                	unimp
   128c8:	3931                	addiw	s2,s2,-20
   128ca:	0a38                	addi	a4,sp,280
   128cc:	0000                	unimp
   128ce:	0000                	unimp
   128d0:	3539                	addiw	a0,a0,-18
   128d2:	3039                	0x3039
   128d4:	0000                	unimp
   128d6:	0000                	unimp
   128d8:	3534                	fld	fa3,104(a0)
   128da:	380a                	fld	fa6,160(sp)
   128dc:	0000                	unimp
   128de:	0000                	unimp
   128e0:	3338                	fld	fa4,96(a4)
   128e2:	3134                	fld	fa3,96(a0)
   128e4:	0000                	unimp
   128e6:	0000                	unimp
   128e8:	0a39                	addi	s4,s4,14
   128ea:	00003437          	lui	s0,0x3
   128ee:	0000                	unimp
   128f0:	3631                	addiw	a2,a2,-20
   128f2:	3438                	fld	fa4,104(s0)
   128f4:	0000                	unimp
   128f6:	0000                	unimp
   128f8:	320a                	fld	ft4,160(sp)
   128fa:	00003733          	snez	a4,zero
   128fe:	0000                	unimp
   12900:	3335                	addiw	t1,t1,-19
   12902:	0a30                	addi	a2,sp,280
   12904:	0000                	unimp
   12906:	0000                	unimp
   12908:	3738                	fld	fa4,104(a4)
   1290a:	3135                	addiw	sp,sp,-19
   1290c:	0000                	unimp
   1290e:	0000                	unimp
   12910:	3834                	fld	fa3,112(s0)
   12912:	360a                	fld	fa2,160(sp)
   12914:	0000                	unimp
   12916:	0000                	unimp
   12918:	3236                	fld	ft4,360(sp)
   1291a:	3935                	addiw	s2,s2,-19
   1291c:	0000                	unimp
   1291e:	0000                	unimp
   12920:	0a34                	addi	a3,sp,280
   12922:	3931                	addiw	s2,s2,-20
   12924:	0000                	unimp
   12926:	0000                	unimp
   12928:	3431                	addiw	s0,s0,-20
   1292a:	3730                	fld	fa2,104(a4)
   1292c:	0000                	unimp
   1292e:	0000                	unimp
   12930:	310a                	fld	ft2,160(sp)
   12932:	3539                	addiw	a0,a0,-18
   12934:	0000                	unimp
   12936:	0000                	unimp
   12938:	3836                	fld	fa6,360(sp)
   1293a:	0a34                	addi	a3,sp,280
   1293c:	0000                	unimp
   1293e:	0000                	unimp
   12940:	3632                	fld	fa2,296(sp)
   12942:	00003037          	lui	zero,0x3
   12946:	0000                	unimp
   12948:	0a35                	addi	s4,s4,13
   1294a:	3739                	addiw	a4,a4,-18
   1294c:	0000                	unimp
   1294e:	0000                	unimp
   12950:	3532                	fld	fa0,296(sp)
   12952:	3931                	addiw	s2,s2,-20
   12954:	0000                	unimp
   12956:	0000                	unimp
   12958:	370a                	fld	fa4,160(sp)
   1295a:	3035                	0x3035
   1295c:	0000                	unimp
   1295e:	0000                	unimp
   12960:	3439                	addiw	s0,s0,-18
   12962:	0a34                	addi	a3,sp,280
   12964:	0000                	unimp
   12966:	0000                	unimp
   12968:	3336                	fld	ft6,360(sp)
   1296a:	3230                	fld	fa2,96(a2)
   1296c:	0000                	unimp
   1296e:	0000                	unimp
   12970:	3635                	addiw	a2,a2,-19
   12972:	320a                	fld	ft4,160(sp)
   12974:	0000                	unimp
   12976:	0000                	unimp
   12978:	3838                	fld	fa4,112(s0)
   1297a:	3536                	fld	fa0,360(sp)
   1297c:	0000                	unimp
   1297e:	0000                	unimp
   12980:	0a36                	slli	s4,s4,0xd
   12982:	3339                	addiw	t1,t1,-18
   12984:	0000                	unimp
   12986:	0000                	unimp
   12988:	3932                	fld	fs2,296(sp)
   1298a:	00003533          	snez	a0,zero
   1298e:	0000                	unimp
   12990:	330a                	fld	ft6,160(sp)
   12992:	3938                	fld	fa4,112(a0)
   12994:	0000                	unimp
   12996:	0000                	unimp
   12998:	3330                	fld	fa2,96(a4)
   1299a:	0a34                	addi	a3,sp,280
   1299c:	0000                	unimp
   1299e:	0000                	unimp
   129a0:	3235                	addiw	tp,tp,-19
   129a2:	3330                	fld	fa2,96(a4)
   129a4:	0000                	unimp
   129a6:	0000                	unimp
   129a8:	3830                	fld	fa2,112(s0)
   129aa:	350a                	fld	fa0,160(sp)
   129ac:	0000                	unimp
   129ae:	0000                	unimp
   129b0:	3635                	addiw	a2,a2,-19
   129b2:	3334                	fld	fa3,96(a4)
   129b4:	0000                	unimp
   129b6:	0000                	unimp
   129b8:	0a38                	addi	a4,sp,280
   129ba:	3834                	fld	fa3,112(s0)
   129bc:	0000                	unimp
   129be:	0000                	unimp
   129c0:	33313933          	0x33313933
   129c4:	0000                	unimp
   129c6:	0000                	unimp
   129c8:	360a                	fld	fa2,160(sp)
   129ca:	3035                	0x3035
   129cc:	0000                	unimp
   129ce:	0000                	unimp
   129d0:	3932                	fld	fs2,296(sp)
   129d2:	0a34                	addi	a3,sp,280
   129d4:	0000                	unimp
   129d6:	0000                	unimp
   129d8:	3531                	addiw	a0,a0,-20
   129da:	3138                	fld	fa4,96(a0)
   129dc:	0000                	unimp
   129de:	0000                	unimp
   129e0:	3436                	fld	fs0,360(sp)
   129e2:	310a                	fld	ft2,160(sp)
   129e4:	0000                	unimp
   129e6:	0000                	unimp
   129e8:	3330                	fld	fa2,96(a4)
   129ea:	00003933          	snez	s2,zero
   129ee:	0000                	unimp
   129f0:	39370a33          	0x39370a33
   129f4:	0000                	unimp
   129f6:	0000                	unimp
   129f8:	3230                	fld	fa2,96(a2)
   129fa:	3232                	fld	ft4,296(sp)
   129fc:	0000                	unimp
   129fe:	0000                	unimp
   12a00:	340a                	fld	fs0,160(sp)
   12a02:	3038                	fld	fa4,96(s0)
   12a04:	0000                	unimp
   12a06:	0000                	unimp
   12a08:	3031                	0x3031
   12a0a:	00000a33          	add	s4,zero,zero
   12a0e:	0000                	unimp
   12a10:	3631                	addiw	a2,a2,-20
   12a12:	3530                	fld	fa2,104(a0)
   12a14:	0000                	unimp
   12a16:	0000                	unimp
   12a18:	3938                	fld	fa4,112(a0)
   12a1a:	340a                	fld	fs0,160(sp)
   12a1c:	0000                	unimp
   12a1e:	0000                	unimp
   12a20:	30353837          	lui	a6,0x30353
   12a24:	0000                	unimp
   12a26:	0000                	unimp
   12a28:	0a34                	addi	a3,sp,280
   12a2a:	3438                	fld	fa4,104(s0)
   12a2c:	0000                	unimp
   12a2e:	0000                	unimp
   12a30:	3739                	addiw	a4,a4,-18
   12a32:	3235                	addiw	tp,tp,-19
   12a34:	0000                	unimp
   12a36:	0000                	unimp
   12a38:	350a                	fld	fa0,160(sp)
   12a3a:	3236                	fld	ft4,360(sp)
   12a3c:	0000                	unimp
   12a3e:	0000                	unimp
   12a40:	3636                	fld	fa2,360(sp)
   12a42:	0a39                	addi	s4,s4,14
   12a44:	0000                	unimp
   12a46:	0000                	unimp
   12a48:	30323037          	lui	zero,0x30323
   12a4c:	0000                	unimp
   12a4e:	0000                	unimp
   12a50:	0a36                	slli	s4,s4,0xd
   12a52:	3635                	addiw	a2,a2,-19
   12a54:	0000                	unimp
   12a56:	0000                	unimp
   12a58:	3735                	addiw	a4,a4,-19
   12a5a:	3732                	fld	fa4,296(sp)
   12a5c:	0000                	unimp
   12a5e:	0000                	unimp
   12a60:	310a                	fld	ft2,160(sp)
   12a62:	3931                	addiw	s2,s2,-20
   12a64:	0000                	unimp
   12a66:	0000                	unimp
   12a68:	3338                	fld	fa4,96(a4)
   12a6a:	0a36                	slli	s4,s4,0xd
   12a6c:	0000                	unimp
   12a6e:	0000                	unimp
   12a70:	37373937          	lui	s2,0x37373
   12a74:	0000                	unimp
   12a76:	0000                	unimp
   12a78:	3239                	addiw	tp,tp,-18
   12a7a:	370a                	fld	fa4,160(sp)
   12a7c:	0000                	unimp
   12a7e:	0000                	unimp
   12a80:	3738                	fld	fa4,104(a4)
   12a82:	3034                	fld	fa3,96(s0)
   12a84:	0000                	unimp
   12a86:	0000                	unimp
   12a88:	0a31                	addi	s4,s4,12
   12a8a:	3139                	addiw	sp,sp,-18
   12a8c:	0000                	unimp
   12a8e:	0000                	unimp
   12a90:	3031                	0x3031
   12a92:	3139                	addiw	sp,sp,-18
   12a94:	0000                	unimp
   12a96:	0000                	unimp
   12a98:	360a                	fld	fa2,160(sp)
   12a9a:	3935                	addiw	s2,s2,-19
   12a9c:	0000                	unimp
   12a9e:	0000                	unimp
   12aa0:	3139                	addiw	sp,sp,-18
   12aa2:	00000a33          	add	s4,zero,zero
   12aa6:	0000                	unimp
   12aa8:	3234                	fld	fa3,96(a2)
   12aaa:	3239                	addiw	tp,tp,-18
   12aac:	0000                	unimp
   12aae:	0000                	unimp
   12ab0:	390a3033          	0x390a3033
   12ab4:	0000                	unimp
   12ab6:	0000                	unimp
   12ab8:	3832                	fld	fa6,296(sp)
   12aba:	3031                	0x3031
   12abc:	0000                	unimp
   12abe:	0000                	unimp
   12ac0:	0a30                	addi	a2,sp,280
   12ac2:	3235                	addiw	tp,tp,-19
   12ac4:	0000                	unimp
   12ac6:	0000                	unimp
   12ac8:	3836                	fld	fa6,360(sp)
   12aca:	3730                	fld	fa2,104(a4)
   12acc:	0000                	unimp
   12ace:	0000                	unimp
   12ad0:	320a                	fld	ft4,160(sp)
   12ad2:	3232                	fld	ft4,296(sp)
   12ad4:	0000                	unimp
   12ad6:	0000                	unimp
   12ad8:	3032                	fld	ft0,296(sp)
   12ada:	370a                	fld	fa4,160(sp)
   12adc:	0000                	unimp
   12ade:	0000                	unimp
   12ae0:	3639                	addiw	a2,a2,-18
   12ae2:	0a39                	addi	s4,s4,14
   12ae4:	0000                	unimp
   12ae6:	0000                	unimp
   12ae8:	30333133          	0x30333133
   12aec:	0000                	unimp
   12aee:	0000                	unimp
   12af0:	3538                	fld	fa4,104(a0)
   12af2:	380a                	fld	fa6,160(sp)
   12af4:	0000                	unimp
   12af6:	0000                	unimp
   12af8:	3338                	fld	fa4,96(a4)
   12afa:	3030                	fld	fa2,96(s0)
   12afc:	0000                	unimp
   12afe:	0000                	unimp
   12b00:	34360a33          	0x34360a33
   12b04:	0000                	unimp
   12b06:	0000                	unimp
   12b08:	3639                	addiw	a2,a2,-18
   12b0a:	3431                	addiw	s0,s0,-20
   12b0c:	0000                	unimp
   12b0e:	0000                	unimp
   12b10:	360a                	fld	fa2,160(sp)
   12b12:	00003833          	snez	a6,zero
   12b16:	0000                	unimp
   12b18:	3931                	addiw	s2,s2,-20
   12b1a:	0a34                	addi	a3,sp,280
   12b1c:	0000                	unimp
   12b1e:	0000                	unimp
   12b20:	3839                	addiw	a6,a6,-18
   12b22:	00003837          	lui	a6,0x3
   12b26:	0000                	unimp
   12b28:	3731                	addiw	a4,a4,-20
   12b2a:	310a                	fld	ft2,160(sp)
   12b2c:	0000                	unimp
   12b2e:	0000                	unimp
   12b30:	3531                	addiw	a0,a0,-20
   12b32:	00003837          	lui	a6,0x3
   12b36:	0000                	unimp
   12b38:	340a                	fld	fs0,160(sp)
   12b3a:	3432                	fld	fs0,296(sp)
   12b3c:	0000                	unimp
   12b3e:	0000                	unimp
   12b40:	3730                	fld	fa2,104(a4)
   12b42:	0a32                	slli	s4,s4,0xc
   12b44:	0000                	unimp
   12b46:	0000                	unimp
   12b48:	3932                	fld	fs2,296(sp)
   12b4a:	3934                	fld	fa3,112(a0)
   12b4c:	0000                	unimp
   12b4e:	0000                	unimp
   12b50:	3535                	addiw	a0,a0,-19
   12b52:	370a                	fld	fa4,160(sp)
   12b54:	0000                	unimp
   12b56:	0000                	unimp
   12b58:	3930                	fld	fa2,112(a0)
   12b5a:	00003333          	snez	t1,zero
   12b5e:	0000                	unimp
   12b60:	35360a33          	0x35360a33
   12b64:	0000                	unimp
   12b66:	0000                	unimp
   12b68:	0a363037          	lui	zero,0xa363
   12b6c:	0000                	unimp
   12b6e:	0000                	unimp
   12b70:	33353033          	0x33353033
   12b74:	0000                	unimp
   12b76:	0000                	unimp
   12b78:	3335                	addiw	t1,t1,-19
   12b7a:	320a                	fld	ft4,160(sp)
   12b7c:	0000                	unimp
   12b7e:	0000                	unimp
   12b80:	34323133          	0x34323133
   12b84:	0000                	unimp
   12b86:	0000                	unimp
   12b88:	38350a33          	0x38350a33
   12b8c:	0000                	unimp
   12b8e:	0000                	unimp
   12b90:	3030                	fld	fa2,96(s0)
   12b92:	00003233          	snez	tp,zero
   12b96:	0000                	unimp
   12b98:	320a                	fld	ft4,160(sp)
   12b9a:	3031                	0x3031
   12b9c:	0000                	unimp
   12b9e:	0000                	unimp
   12ba0:	3738                	fld	fa4,104(a4)
   12ba2:	340a                	fld	fs0,160(sp)
   12ba4:	0000                	unimp
   12ba6:	0000                	unimp
   12ba8:	3436                	fld	fs0,360(sp)
   12baa:	00003137          	lui	sp,0x3
   12bae:	0000                	unimp
   12bb0:	350a                	fld	fa0,160(sp)
   12bb2:	3838                	fld	fa4,112(s0)
   12bb4:	0000                	unimp
   12bb6:	0000                	unimp
   12bb8:	3139                	addiw	sp,sp,-18
   12bba:	320a                	fld	ft4,160(sp)
   12bbc:	0000                	unimp
   12bbe:	0000                	unimp
   12bc0:	3534                	fld	fa3,104(a0)
   12bc2:	00003933          	snez	s2,zero
   12bc6:	0000                	unimp
   12bc8:	0a30                	addi	a2,sp,280
   12bca:	3732                	fld	fa4,296(sp)
   12bcc:	0000                	unimp
   12bce:	0000                	unimp
   12bd0:	3339                	addiw	t1,t1,-18
   12bd2:	3330                	fld	fa2,96(a4)
   12bd4:	0000                	unimp
   12bd6:	0000                	unimp
   12bd8:	330a                	fld	ft6,160(sp)
   12bda:	3538                	fld	fa4,104(a0)
   12bdc:	0000                	unimp
   12bde:	0000                	unimp
   12be0:	3630                	fld	fa2,104(a2)
   12be2:	0a30                	addi	a2,sp,280
   12be4:	0000                	unimp
   12be6:	0000                	unimp
   12be8:	3436                	fld	fs0,360(sp)
   12bea:	3834                	fld	fa3,112(s0)
   12bec:	0000                	unimp
   12bee:	0000                	unimp
   12bf0:	3539                	addiw	a0,a0,-18
   12bf2:	330a                	fld	ft6,160(sp)
   12bf4:	0000                	unimp
   12bf6:	0000                	unimp
   12bf8:	3430                	fld	fa2,104(s0)
   12bfa:	3838                	fld	fa4,112(s0)
   12bfc:	0000                	unimp
   12bfe:	0000                	unimp
   12c00:	34310a33          	0x34310a33
   12c04:	0000                	unimp
   12c06:	0000                	unimp
   12c08:	3739                	addiw	a4,a4,-18
   12c0a:	3830                	fld	fa2,112(s0)
   12c0c:	0000                	unimp
   12c0e:	0000                	unimp
   12c10:	310a                	fld	ft2,160(sp)
   12c12:	3330                	fld	fa2,96(a4)
   12c14:	0000                	unimp
   12c16:	0000                	unimp
   12c18:	3531                	addiw	a0,a0,-20
   12c1a:	00000a37          	lui	s4,0x0
   12c1e:	0000                	unimp
   12c20:	3834                	fld	fa3,112(s0)
   12c22:	00003637          	lui	a2,0x3
   12c26:	0000                	unimp
   12c28:	0a32                	slli	s4,s4,0xc
   12c2a:	3738                	fld	fa4,104(a4)
   12c2c:	0000                	unimp
   12c2e:	0000                	unimp
   12c30:	3635                	addiw	a2,a2,-19
   12c32:	3030                	fld	fa2,96(s0)
   12c34:	0000                	unimp
   12c36:	0000                	unimp
   12c38:	320a                	fld	ft4,160(sp)
   12c3a:	00003237          	lui	tp,0x3
   12c3e:	0000                	unimp
   12c40:	3532                	fld	fa0,296(sp)
   12c42:	0a36                	slli	s4,s4,0xd
   12c44:	0000                	unimp
   12c46:	0000                	unimp
   12c48:	3036                	fld	ft0,360(sp)
   12c4a:	3438                	fld	fa4,104(s0)
   12c4c:	0000                	unimp
   12c4e:	0000                	unimp
   12c50:	330a3833          	0x330a3833
   12c54:	0000                	unimp
   12c56:	0000                	unimp
   12c58:	3130                	fld	fa2,96(a0)
   12c5a:	3839                	addiw	a6,a6,-18
   12c5c:	0000                	unimp
   12c5e:	0000                	unimp
   12c60:	0a31                	addi	s4,s4,12
   12c62:	3232                	fld	ft4,296(sp)
   12c64:	0000                	unimp
   12c66:	0000                	unimp
   12c68:	33353933          	0x33353933
   12c6c:	0000                	unimp
   12c6e:	0000                	unimp
   12c70:	370a                	fld	fa4,160(sp)
   12c72:	3832                	fld	fa6,296(sp)
   12c74:	0000                	unimp
   12c76:	0000                	unimp
   12c78:	3330                	fld	fa2,96(a4)
   12c7a:	0a32                	slli	s4,s4,0xc
   12c7c:	0000                	unimp
   12c7e:	0000                	unimp
   12c80:	3035                	0x3035
   12c82:	00003133          	snez	sp,zero
   12c86:	0000                	unimp
   12c88:	330a3037          	lui	zero,0x330a3
   12c8c:	0000                	unimp
   12c8e:	0000                	unimp
   12c90:	3735                	addiw	a4,a4,-19
   12c92:	3334                	fld	fa3,96(a4)
   12c94:	0000                	unimp
   12c96:	0000                	unimp
   12c98:	33380a37          	lui	s4,0x33380
   12c9c:	0000                	unimp
   12c9e:	0000                	unimp
   12ca0:	3239                	addiw	tp,tp,-18
   12ca2:	00003837          	lui	a6,0x3
   12ca6:	0000                	unimp
   12ca8:	360a                	fld	fa2,160(sp)
   12caa:	3834                	fld	fa3,112(s0)
   12cac:	0000                	unimp
   12cae:	0000                	unimp
   12cb0:	310a3737          	lui	a4,0x310a3
   12cb4:	0000                	unimp
   12cb6:	0000                	unimp
   12cb8:	37333437          	lui	s0,0x37333
   12cbc:	0000                	unimp
   12cbe:	0000                	unimp
   12cc0:	320a                	fld	ft4,160(sp)
   12cc2:	00003737          	lui	a4,0x3
   12cc6:	0000                	unimp
   12cc8:	3936                	fld	fs2,360(sp)
   12cca:	0a39                	addi	s4,s4,14
   12ccc:	0000                	unimp
   12cce:	0000                	unimp
   12cd0:	32353437          	lui	s0,0x32353
   12cd4:	0000                	unimp
   12cd6:	0000                	unimp
   12cd8:	3932                	fld	fs2,296(sp)
   12cda:	390a                	fld	fs2,160(sp)
   12cdc:	0000                	unimp
   12cde:	0000                	unimp
   12ce0:	3431                	addiw	s0,s0,-20
   12ce2:	3836                	fld	fa6,360(sp)
   12ce4:	0000                	unimp
   12ce6:	0000                	unimp
   12ce8:	0a30                	addi	a2,sp,280
   12cea:	3038                	fld	fa4,96(s0)
   12cec:	0000                	unimp
   12cee:	0000                	unimp
   12cf0:	3430                	fld	fa2,104(s0)
   12cf2:	3334                	fld	fa3,96(a4)
   12cf4:	0000                	unimp
   12cf6:	0000                	unimp
   12cf8:	340a                	fld	fs0,160(sp)
   12cfa:	3838                	fld	fa4,112(s0)
   12cfc:	0000                	unimp
   12cfe:	0000                	unimp
   12d00:	3930                	fld	fa2,112(a0)
   12d02:	0a32                	slli	s4,s4,0xc
   12d04:	0000                	unimp
   12d06:	0000                	unimp
   12d08:	38383833          	0x38383833
   12d0c:	0000                	unimp
   12d0e:	0000                	unimp
   12d10:	3936                	fld	fs2,360(sp)
   12d12:	320a                	fld	ft4,160(sp)
   12d14:	0000                	unimp
   12d16:	0000                	unimp
   12d18:	3035                	0x3035
   12d1a:	3232                	fld	ft4,296(sp)
   12d1c:	0000                	unimp
   12d1e:	0000                	unimp
   12d20:	38370a37          	lui	s4,0x38370
   12d24:	0000                	unimp
   12d26:	0000                	unimp
   12d28:	33333433          	0x33333433
   12d2c:	0000                	unimp
   12d2e:	0000                	unimp
   12d30:	390a                	fld	fs2,160(sp)
   12d32:	3639                	addiw	a2,a2,-18
   12d34:	0000                	unimp
   12d36:	0000                	unimp
   12d38:	3136                	fld	ft2,360(sp)
   12d3a:	0a32                	slli	s4,s4,0xc
   12d3c:	0000                	unimp
   12d3e:	0000                	unimp
   12d40:	3936                	fld	fs2,360(sp)
   12d42:	3932                	fld	fs2,296(sp)
   12d44:	0000                	unimp
   12d46:	0000                	unimp
   12d48:	380a3737          	lui	a4,0x380a3
   12d4c:	0000                	unimp
   12d4e:	0000                	unimp
   12d50:	3938                	fld	fa4,112(a0)
   12d52:	3732                	fld	fa4,296(sp)
   12d54:	0000                	unimp
   12d56:	0000                	unimp
   12d58:	0a36                	slli	s4,s4,0xd
   12d5a:	3431                	addiw	s0,s0,-20
   12d5c:	0000                	unimp
   12d5e:	0000                	unimp
   12d60:	3634                	fld	fa3,104(a2)
   12d62:	3839                	addiw	a6,a6,-18
   12d64:	0000                	unimp
   12d66:	0000                	unimp
   12d68:	330a                	fld	ft6,160(sp)
   12d6a:	3334                	fld	fa3,96(a4)
   12d6c:	0000                	unimp
   12d6e:	0000                	unimp
   12d70:	3435                	addiw	s0,s0,-19
   12d72:	330a                	fld	ft6,160(sp)
   12d74:	0000                	unimp
   12d76:	0000                	unimp
   12d78:	3634                	fld	fa3,104(a2)
   12d7a:	3535                	addiw	a0,a0,-19
   12d7c:	0000                	unimp
   12d7e:	0000                	unimp
   12d80:	38320a33          	0x38320a33
   12d84:	0000                	unimp
   12d86:	0000                	unimp
   12d88:	3231                	addiw	tp,tp,-20
   12d8a:	0a30                	addi	a2,sp,280
   12d8c:	0000                	unimp
   12d8e:	0000                	unimp
   12d90:	3032                	fld	ft0,296(sp)
   12d92:	3134                	fld	fa3,96(a0)
   12d94:	0000                	unimp
   12d96:	0000                	unimp
   12d98:	3936                	fld	fs2,360(sp)
   12d9a:	320a                	fld	ft4,160(sp)
   12d9c:	0000                	unimp
   12d9e:	0000                	unimp
   12da0:	3235                	addiw	tp,tp,-19
   12da2:	3634                	fld	fa3,104(a2)
   12da4:	0000                	unimp
   12da6:	0000                	unimp
   12da8:	33360a33          	0x33360a33
   12dac:	0000                	unimp
   12dae:	0000                	unimp
   12db0:	39353937          	lui	s2,0x39353
   12db4:	0000                	unimp
   12db6:	0000                	unimp
   12db8:	370a                	fld	fa4,160(sp)
   12dba:	00003933          	snez	s2,zero
   12dbe:	0000                	unimp
   12dc0:	3232                	fld	ft4,296(sp)
   12dc2:	0a36                	slli	s4,s4,0xd
   12dc4:	0000                	unimp
   12dc6:	0000                	unimp
   12dc8:	3934                	fld	fa3,112(a0)
   12dca:	3231                	addiw	tp,tp,-20
   12dcc:	0000                	unimp
   12dce:	0000                	unimp
   12dd0:	3931                	addiw	s2,s2,-20
   12dd2:	320a                	fld	ft4,160(sp)
   12dd4:	0000                	unimp
   12dd6:	0000                	unimp
   12dd8:	3431                	addiw	s0,s0,-20
   12dda:	3036                	fld	ft0,360(sp)
   12ddc:	0000                	unimp
   12dde:	0000                	unimp
   12de0:	36340a37          	lui	s4,0x36340
   12de4:	0000                	unimp
   12de6:	0000                	unimp
   12de8:	3632                	fld	fa2,296(sp)
   12dea:	3632                	fld	fa2,296(sp)
   12dec:	0000                	unimp
   12dee:	0000                	unimp
   12df0:	310a                	fld	ft2,160(sp)
   12df2:	3338                	fld	fa4,96(a4)
   12df4:	0000                	unimp
   12df6:	0000                	unimp
   12df8:	3439                	addiw	s0,s0,-18
   12dfa:	350a                	fld	fa0,160(sp)
   12dfc:	0000                	unimp
   12dfe:	0000                	unimp
   12e00:	3639                	addiw	a2,a2,-18
   12e02:	00003633          	snez	a2,zero
   12e06:	0000                	unimp
   12e08:	0a38                	addi	a4,sp,280
   12e0a:	00003733          	snez	a4,zero
   12e0e:	0000                	unimp
   12e10:	34323133          	0x34323133
   12e14:	0000                	unimp
   12e16:	0000                	unimp
   12e18:	330a                	fld	ft6,160(sp)
   12e1a:	3030                	fld	fa2,96(s0)
   12e1c:	0000                	unimp
   12e1e:	0000                	unimp
   12e20:	3030                	fld	fa2,96(s0)
   12e22:	0a36                	slli	s4,s4,0xd
   12e24:	0000                	unimp
   12e26:	0000                	unimp
   12e28:	3434                	fld	fa3,104(s0)
   12e2a:	3332                	fld	ft6,296(sp)
   12e2c:	0000                	unimp
   12e2e:	0000                	unimp
   12e30:	3735                	addiw	a4,a4,-19
   12e32:	370a                	fld	fa4,160(sp)
   12e34:	0000                	unimp
   12e36:	0000                	unimp
   12e38:	3335                	addiw	t1,t1,-19
   12e3a:	3039                	0x3039
   12e3c:	0000                	unimp
   12e3e:	0000                	unimp
   12e40:	0a39                	addi	s4,s4,14
   12e42:	00003337          	lui	t1,0x3
   12e46:	0000                	unimp
   12e48:	3236                	fld	ft4,360(sp)
   12e4a:	3235                	addiw	tp,tp,-19
   12e4c:	0000                	unimp
   12e4e:	0000                	unimp
   12e50:	390a                	fld	fs2,160(sp)
   12e52:	3931                	addiw	s2,s2,-20
   12e54:	0000                	unimp
   12e56:	0000                	unimp
   12e58:	3639                	addiw	a2,a2,-18
   12e5a:	0a38                	addi	a4,sp,280
   12e5c:	0000                	unimp
   12e5e:	0000                	unimp
   12e60:	3836                	fld	fa6,360(sp)
   12e62:	3538                	fld	fa4,104(a0)
   12e64:	0000                	unimp
   12e66:	0000                	unimp
   12e68:	3336                	fld	ft6,360(sp)
   12e6a:	340a                	fld	fs0,160(sp)
   12e6c:	0000                	unimp
   12e6e:	0000                	unimp
   12e70:	3236                	fld	ft4,360(sp)
   12e72:	3136                	fld	ft2,360(sp)
   12e74:	0000                	unimp
   12e76:	0000                	unimp
   12e78:	0a34                	addi	a3,sp,280
   12e7a:	3331                	addiw	t1,t1,-20
   12e7c:	0000                	unimp
   12e7e:	0000                	unimp
   12e80:	3338                	fld	fa4,96(a4)
   12e82:	3432                	fld	fs0,296(sp)
   12e84:	0000                	unimp
   12e86:	0000                	unimp
   12e88:	360a                	fld	fa2,160(sp)
   12e8a:	00003137          	lui	sp,0x3
   12e8e:	0000                	unimp
   12e90:	3135                	addiw	sp,sp,-19
   12e92:	0a34                	addi	a3,sp,280
   12e94:	0000                	unimp
   12e96:	0000                	unimp
   12e98:	3735                	addiw	a4,a4,-19
   12e9a:	00003433          	snez	s0,zero
   12e9e:	0000                	unimp
   12ea0:	3738                	fld	fa4,104(a4)
   12ea2:	330a                	fld	ft6,160(sp)
   12ea4:	0000                	unimp
   12ea6:	0000                	unimp
   12ea8:	3338                	fld	fa4,96(a4)
   12eaa:	3536                	fld	fa0,360(sp)
   12eac:	0000                	unimp
   12eae:	0000                	unimp
   12eb0:	0a31                	addi	s4,s4,12
   12eb2:	3536                	fld	fa0,360(sp)
   12eb4:	0000                	unimp
   12eb6:	0000                	unimp
   12eb8:	3335                	addiw	t1,t1,-19
   12eba:	3938                	fld	fa4,112(a0)
   12ebc:	0000                	unimp
   12ebe:	0000                	unimp
   12ec0:	370a                	fld	fa4,160(sp)
   12ec2:	00003337          	lui	t1,0x3
   12ec6:	0000                	unimp
   12ec8:	3035                	0x3035
   12eca:	00000a33          	add	s4,zero,zero
   12ece:	0000                	unimp
   12ed0:	3335                	addiw	t1,t1,-19
   12ed2:	3939                	addiw	s2,s2,-18
   12ed4:	0000                	unimp
   12ed6:	0000                	unimp
   12ed8:	3738                	fld	fa4,104(a4)
   12eda:	330a                	fld	ft6,160(sp)
   12edc:	0000                	unimp
   12ede:	0000                	unimp
   12ee0:	34343637          	lui	a2,0x34343
   12ee4:	0000                	unimp
   12ee6:	0000                	unimp
   12ee8:	0a39                	addi	s4,s4,14
   12eea:	3036                	fld	ft0,360(sp)
   12eec:	0000                	unimp
   12eee:	0000                	unimp
   12ef0:	3234                	fld	fa3,96(a2)
   12ef2:	3230                	fld	fa2,96(a2)
   12ef4:	0000                	unimp
   12ef6:	0000                	unimp
   12ef8:	320a                	fld	ft4,160(sp)
   12efa:	3431                	addiw	s0,s0,-20
   12efc:	0000                	unimp
   12efe:	0000                	unimp
   12f00:	3931                	addiw	s2,s2,-20
   12f02:	0a35                	addi	s4,s4,13
   12f04:	0000                	unimp
   12f06:	0000                	unimp
   12f08:	3634                	fld	fa3,104(a2)
   12f0a:	00003633          	snez	a2,zero
   12f0e:	0000                	unimp
   12f10:	3931                	addiw	s2,s2,-20
   12f12:	380a                	fld	fa6,160(sp)
   12f14:	0000                	unimp
   12f16:	0000                	unimp
   12f18:	34383133          	0x34383133
   12f1c:	0000                	unimp
   12f1e:	0000                	unimp
   12f20:	0a35                	addi	s4,s4,13
   12f22:	3536                	fld	fa0,360(sp)
   12f24:	0000                	unimp
   12f26:	0000                	unimp
   12f28:	31343437          	lui	s0,0x31343
   12f2c:	0000                	unimp
   12f2e:	0000                	unimp
   12f30:	310a                	fld	ft2,160(sp)
   12f32:	3032                	fld	ft0,296(sp)
   12f34:	0000                	unimp
   12f36:	0000                	unimp
   12f38:	3735                	addiw	a4,a4,-19
   12f3a:	0a34                	addi	a3,sp,280
   12f3c:	0000                	unimp
   12f3e:	0000                	unimp
   12f40:	39333837          	lui	a6,0x39333
   12f44:	0000                	unimp
   12f46:	0000                	unimp
   12f48:	3732                	fld	fa4,296(sp)
   12f4a:	390a                	fld	fs2,160(sp)
   12f4c:	0000                	unimp
   12f4e:	0000                	unimp
   12f50:	3735                	addiw	a4,a4,-19
   12f52:	3538                	fld	fa4,104(a0)
   12f54:	0000                	unimp
   12f56:	0000                	unimp
   12f58:	320a                	fld	ft4,160(sp)
   12f5a:	00003237          	lui	tp,0x3
   12f5e:	0000                	unimp
   12f60:	3632                	fld	fa2,296(sp)
   12f62:	310a                	fld	ft2,160(sp)
   12f64:	0000                	unimp
   12f66:	0000                	unimp
   12f68:	33323633          	0x33323633
   12f6c:	0000                	unimp
   12f6e:	0000                	unimp
   12f70:	0a36                	slli	s4,s4,0xd
   12f72:	3231                	addiw	tp,tp,-20
   12f74:	0000                	unimp
   12f76:	0000                	unimp
   12f78:	3538                	fld	fa4,104(a0)
   12f7a:	00003837          	lui	a6,0x3
   12f7e:	0000                	unimp
   12f80:	310a                	fld	ft2,160(sp)
   12f82:	00003737          	lui	a4,0x3
   12f86:	0000                	unimp
   12f88:	0a323537          	lui	a0,0xa323
   12f8c:	0000                	unimp
   12f8e:	0000                	unimp
   12f90:	3139                	addiw	sp,sp,-18
   12f92:	3530                	fld	fa2,104(a0)
   12f94:	0000                	unimp
   12f96:	0000                	unimp
   12f98:	32360a33          	0x32360a33
   12f9c:	0000                	unimp
   12f9e:	0000                	unimp
   12fa0:	3030                	fld	fa2,96(s0)
   12fa2:	00003133          	snez	sp,zero
   12fa6:	0000                	unimp
   12fa8:	350a                	fld	fa0,160(sp)
   12faa:	3634                	fld	fa3,104(a2)
   12fac:	0000                	unimp
   12fae:	0000                	unimp
   12fb0:	0a333437          	lui	s0,0xa333
   12fb4:	0000                	unimp
   12fb6:	0000                	unimp
   12fb8:	3335                	addiw	t1,t1,-19
   12fba:	3332                	fld	ft6,296(sp)
   12fbc:	0000                	unimp
   12fbe:	0000                	unimp
   12fc0:	3532                	fld	fa0,296(sp)
   12fc2:	320a                	fld	ft4,160(sp)
   12fc4:	0000                	unimp
   12fc6:	0000                	unimp
   12fc8:	3435                	addiw	s0,s0,-19
   12fca:	3036                	fld	ft0,360(sp)
   12fcc:	0000                	unimp
   12fce:	0000                	unimp
   12fd0:	37310a33          	0x37310a33
   12fd4:	0000                	unimp
   12fd6:	0000                	unimp
   12fd8:	3939                	addiw	s2,s2,-18
   12fda:	3336                	fld	ft6,360(sp)
   12fdc:	0000                	unimp
   12fde:	0000                	unimp
   12fe0:	320a                	fld	ft4,160(sp)
   12fe2:	3931                	addiw	s2,s2,-20
   12fe4:	0000                	unimp
   12fe6:	0000                	unimp
   12fe8:	0a36                	slli	s4,s4,0xd
   12fea:	3135                	addiw	sp,sp,-19
   12fec:	0000                	unimp
   12fee:	0000                	unimp
   12ff0:	3330                	fld	fa2,96(a4)
   12ff2:	00003537          	lui	a0,0x3
   12ff6:	0000                	unimp
   12ff8:	340a                	fld	fs0,160(sp)
   12ffa:	3136                	fld	ft2,360(sp)
   12ffc:	0000                	unimp
   12ffe:	0000                	unimp
   13000:	3939                	addiw	s2,s2,-18
   13002:	0a34                	addi	a3,sp,280
   13004:	0000                	unimp
   13006:	0000                	unimp
   13008:	3235                	addiw	tp,tp,-19
   1300a:	3434                	fld	fa3,104(s0)
   1300c:	0000                	unimp
   1300e:	0000                	unimp
   13010:	3731                	addiw	a4,a4,-20
   13012:	370a                	fld	fa4,160(sp)
   13014:	0000                	unimp
   13016:	0000                	unimp
   13018:	3539                	addiw	a0,a0,-18
   1301a:	3736                	fld	fa4,360(sp)
   1301c:	0000                	unimp
   1301e:	0000                	unimp
   13020:	0a36                	slli	s4,s4,0xd
   13022:	3436                	fld	fs0,360(sp)
   13024:	0000                	unimp
   13026:	0000                	unimp
   13028:	3539                	addiw	a0,a0,-18
   1302a:	00003533          	snez	a0,zero
   1302e:	0000                	unimp
   13030:	350a                	fld	fa0,160(sp)
   13032:	3338                	fld	fa4,96(a4)
   13034:	0000                	unimp
   13036:	0000                	unimp
   13038:	3630                	fld	fa2,104(a2)
   1303a:	0a34                	addi	a3,sp,280
   1303c:	0000                	unimp
   1303e:	0000                	unimp
   13040:	3439                	addiw	s0,s0,-18
   13042:	3732                	fld	fa4,296(sp)
   13044:	0000                	unimp
   13046:	0000                	unimp
   13048:	3436                	fld	fs0,360(sp)
   1304a:	310a                	fld	ft2,160(sp)
   1304c:	0000                	unimp
   1304e:	0000                	unimp
   13050:	3539                	addiw	a0,a0,-18
   13052:	00003433          	snez	s0,zero
   13056:	0000                	unimp
   13058:	0a38                	addi	a4,sp,280
   1305a:	3734                	fld	fa3,104(a4)
   1305c:	0000                	unimp
   1305e:	0000                	unimp
   13060:	3832                	fld	fa6,296(sp)
   13062:	3439                	addiw	s0,s0,-18
   13064:	0000                	unimp
   13066:	0000                	unimp
   13068:	390a                	fld	fs2,160(sp)
   1306a:	00003333          	snez	t1,zero
   1306e:	0000                	unimp
   13070:	3232                	fld	ft4,296(sp)
   13072:	0a32                	slli	s4,s4,0xc
   13074:	0000                	unimp
   13076:	0000                	unimp
   13078:	3839                	addiw	a6,a6,-18
   1307a:	3834                	fld	fa3,112(s0)
   1307c:	0000                	unimp
   1307e:	0000                	unimp
   13080:	3834                	fld	fa3,112(s0)
   13082:	350a                	fld	fa0,160(sp)
   13084:	0000                	unimp
   13086:	0000                	unimp
   13088:	37353533          	0x37353533
   1308c:	0000                	unimp
   1308e:	0000                	unimp
   13090:	38360a37          	lui	s4,0x38360
   13094:	0000                	unimp
   13096:	0000                	unimp
   13098:	3035                	0x3035
   1309a:	3438                	fld	fa4,104(s0)
   1309c:	0000                	unimp
   1309e:	0000                	unimp
   130a0:	370a                	fld	fa4,160(sp)
   130a2:	3531                	addiw	a0,a0,-20
   130a4:	0000                	unimp
   130a6:	0000                	unimp
   130a8:	3732                	fld	fa4,296(sp)
   130aa:	0a34                	addi	a3,sp,280
   130ac:	0000                	unimp
   130ae:	0000                	unimp
   130b0:	3231                	addiw	tp,tp,-20
   130b2:	3032                	fld	ft0,296(sp)
   130b4:	0000                	unimp
   130b6:	0000                	unimp
   130b8:	3639                	addiw	a2,a2,-18
   130ba:	340a                	fld	fs0,160(sp)
   130bc:	0000                	unimp
   130be:	0000                	unimp
   130c0:	3831                	addiw	a6,a6,-20
   130c2:	3634                	fld	fa3,104(a2)
   130c4:	0000                	unimp
   130c6:	0000                	unimp
   130c8:	0a31                	addi	s4,s4,12
   130ca:	00003633          	snez	a2,zero
   130ce:	0000                	unimp
   130d0:	3034                	fld	fa3,96(s0)
   130d2:	3938                	fld	fa4,112(a0)
   130d4:	0000                	unimp
   130d6:	0000                	unimp
   130d8:	390a                	fld	fs2,160(sp)
   130da:	3531                	addiw	a0,a0,-20
   130dc:	0000                	unimp
   130de:	0000                	unimp
   130e0:	3231                	addiw	tp,tp,-20
   130e2:	0a38                	addi	a4,sp,280
   130e4:	0000                	unimp
   130e6:	0000                	unimp
   130e8:	37323933          	0x37323933
   130ec:	0000                	unimp
   130ee:	0000                	unimp
   130f0:	330a3733          	0x330a3733
   130f4:	0000                	unimp
   130f6:	0000                	unimp
   130f8:	3131                	addiw	sp,sp,-20
   130fa:	00003733          	snez	a4,zero
   130fe:	0000                	unimp
   13100:	0a36                	slli	s4,s4,0xd
   13102:	3435                	addiw	s0,s0,-19
   13104:	0000                	unimp
   13106:	0000                	unimp
   13108:	3436                	fld	fs0,360(sp)
   1310a:	0a34                	addi	a3,sp,280
   1310c:	0000                	unimp
   1310e:	0000                	unimp
   13110:	3132                	fld	ft2,296(sp)
   13112:	00003737          	lui	a4,0x3
   13116:	0000                	unimp
   13118:	3439                	addiw	s0,s0,-18
   1311a:	320a                	fld	ft4,160(sp)
   1311c:	0000                	unimp
   1311e:	0000                	unimp
   13120:	3635                	addiw	a2,a2,-19
   13122:	3136                	fld	ft2,360(sp)
   13124:	0000                	unimp
   13126:	0000                	unimp
   13128:	32390a37          	lui	s4,0x32390
   1312c:	0000                	unimp
   1312e:	0000                	unimp
   13130:	3532                	fld	fa0,296(sp)
   13132:	3330                	fld	fa2,96(a4)
   13134:	0000                	unimp
   13136:	0000                	unimp
   13138:	320a                	fld	ft4,160(sp)
   1313a:	3830                	fld	fa2,112(s0)
   1313c:	0000                	unimp
   1313e:	0000                	unimp
   13140:	0a303037          	lui	zero,0xa303
   13144:	0000                	unimp
   13146:	0000                	unimp
   13148:	3536                	fld	fa0,360(sp)
   1314a:	3435                	addiw	s0,s0,-19
   1314c:	0000                	unimp
   1314e:	0000                	unimp
   13150:	3035                	0x3035
   13152:	390a                	fld	fs2,160(sp)
   13154:	0000                	unimp
   13156:	0000                	unimp
   13158:	3032                	fld	ft0,296(sp)
   1315a:	3234                	fld	fa3,96(a2)
   1315c:	0000                	unimp
   1315e:	0000                	unimp
   13160:	390a                	fld	fs2,160(sp)
   13162:	3636                	fld	fa2,360(sp)
   13164:	0000                	unimp
   13166:	0000                	unimp
   13168:	3630                	fld	fa2,104(a2)
   1316a:	0a39                	addi	s4,s4,14
   1316c:	0000                	unimp
   1316e:	0000                	unimp
   13170:	3131                	addiw	sp,sp,-20
   13172:	3231                	addiw	tp,tp,-20
   13174:	0000                	unimp
   13176:	0000                	unimp
   13178:	3234                	fld	fa3,96(a2)
   1317a:	360a                	fld	fa2,160(sp)
   1317c:	0000                	unimp
   1317e:	0000                	unimp
   13180:	3738                	fld	fa4,104(a4)
   13182:	00003437          	lui	s0,0x3
   13186:	0000                	unimp
   13188:	0a34                	addi	a3,sp,280
   1318a:	3035                	0x3035
   1318c:	0000                	unimp
   1318e:	0000                	unimp
   13190:	3338                	fld	fa4,96(a4)
   13192:	3734                	fld	fa3,104(a4)
   13194:	0000                	unimp
   13196:	0000                	unimp
   13198:	360a                	fld	fa2,160(sp)
   1319a:	3939                	addiw	s2,s2,-18
   1319c:	0000                	unimp
   1319e:	0000                	unimp
   131a0:	3032                	fld	ft0,296(sp)
   131a2:	0a38                	addi	a4,sp,280
   131a4:	0000                	unimp
   131a6:	0000                	unimp
   131a8:	33363537          	lui	a0,0x33363
   131ac:	0000                	unimp
   131ae:	0000                	unimp
   131b0:	3131                	addiw	sp,sp,-20
   131b2:	360a                	fld	fa2,160(sp)
   131b4:	0000                	unimp
   131b6:	0000                	unimp
   131b8:	3930                	fld	fa2,112(a0)
   131ba:	3631                	addiw	a2,a2,-20
   131bc:	0000                	unimp
   131be:	0000                	unimp
   131c0:	0a34                	addi	a3,sp,280
   131c2:	3032                	fld	ft0,296(sp)
   131c4:	0000                	unimp
   131c6:	0000                	unimp
   131c8:	3236                	fld	ft4,360(sp)
   131ca:	3234                	fld	fa3,96(a2)
   131cc:	0000                	unimp
   131ce:	0000                	unimp
   131d0:	380a                	fld	fa6,160(sp)
   131d2:	00003237          	lui	tp,0x3
   131d6:	0000                	unimp
   131d8:	0a363137          	lui	sp,0xa363
   131dc:	0000                	unimp
   131de:	0000                	unimp
   131e0:	36363433          	0x36363433
   131e4:	0000                	unimp
   131e6:	0000                	unimp
   131e8:	3035                	0x3035
   131ea:	350a                	fld	fa0,160(sp)
   131ec:	0000                	unimp
   131ee:	0000                	unimp
   131f0:	3635                	addiw	a2,a2,-19
   131f2:	00003537          	lui	a0,0x3
   131f6:	0000                	unimp
   131f8:	0a34                	addi	a3,sp,280
   131fa:	00003137          	lui	sp,0x3
   131fe:	0000                	unimp
   13200:	3539                	addiw	a0,a0,-18
   13202:	3635                	addiw	a2,a2,-19
   13204:	0000                	unimp
   13206:	0000                	unimp
   13208:	350a                	fld	fa0,160(sp)
   1320a:	00003033          	snez	zero,zero
   1320e:	0000                	unimp
   13210:	0a323737          	lui	a4,0xa323
   13214:	0000                	unimp
   13216:	0000                	unimp
   13218:	3635                	addiw	a2,a2,-19
   1321a:	3535                	addiw	a0,a0,-19
   1321c:	0000                	unimp
   1321e:	0000                	unimp
   13220:	3939                	addiw	s2,s2,-18
   13222:	390a                	fld	fs2,160(sp)
   13224:	0000                	unimp
   13226:	0000                	unimp
   13228:	3236                	fld	ft4,360(sp)
   1322a:	3039                	0x3039
   1322c:	0000                	unimp
   1322e:	0000                	unimp
   13230:	34360a37          	lui	s4,0x34360
   13234:	0000                	unimp
   13236:	0000                	unimp
   13238:	0a383233          	0xa383233
   1323c:	0000                	unimp
   1323e:	0000                	unimp
   13240:	35393137          	lui	sp,0x35393
   13244:	0000                	unimp
   13246:	0000                	unimp
   13248:	3530                	fld	fa2,104(a0)
   1324a:	390a                	fld	fs2,160(sp)
   1324c:	0000                	unimp
   1324e:	0000                	unimp
   13250:	3034                	fld	fa3,96(s0)
   13252:	3530                	fld	fa2,104(a0)
   13254:	0000                	unimp
   13256:	0000                	unimp
   13258:	0a34                	addi	a3,sp,280
   1325a:	00003233          	snez	tp,zero
   1325e:	0000                	unimp
   13260:	3432                	fld	fs0,296(sp)
   13262:	3335                	addiw	t1,t1,-19
   13264:	0000                	unimp
   13266:	0000                	unimp
   13268:	320a                	fld	ft4,160(sp)
   1326a:	3239                	addiw	tp,tp,-18
   1326c:	0000                	unimp
   1326e:	0000                	unimp
   13270:	3439                	addiw	s0,s0,-18
   13272:	0a31                	addi	s4,s4,12
   13274:	0000                	unimp
   13276:	0000                	unimp
   13278:	3632                	fld	fa2,296(sp)
   1327a:	3134                	fld	fa3,96(a0)
   1327c:	0000                	unimp
   1327e:	0000                	unimp
   13280:	3834                	fld	fa3,112(s0)
   13282:	330a                	fld	ft6,160(sp)
   13284:	0000                	unimp
   13286:	0000                	unimp
   13288:	3934                	fld	fa3,112(a0)
   1328a:	3335                	addiw	t1,t1,-19
   1328c:	0000                	unimp
   1328e:	0000                	unimp
   13290:	36340a33          	0x36340a33
   13294:	0000                	unimp
   13296:	0000                	unimp
   13298:	3734                	fld	fa3,104(a4)
   1329a:	00003137          	lui	sp,0x3
   1329e:	0000                	unimp
   132a0:	370a                	fld	fa4,160(sp)
   132a2:	3435                	addiw	s0,s0,-19
   132a4:	0000                	unimp
   132a6:	0000                	unimp
   132a8:	3135                	addiw	sp,sp,-19
   132aa:	0a31                	addi	s4,s4,12
   132ac:	0000                	unimp
   132ae:	0000                	unimp
   132b0:	3631                	addiw	a2,a2,-20
   132b2:	3439                	addiw	s0,s0,-18
   132b4:	0000                	unimp
   132b6:	0000                	unimp
   132b8:	3930                	fld	fa2,112(a0)
   132ba:	350a                	fld	fa0,160(sp)
   132bc:	0000                	unimp
   132be:	0000                	unimp
   132c0:	3734                	fld	fa3,104(a4)
   132c2:	3536                	fld	fa0,360(sp)
   132c4:	0000                	unimp
   132c6:	0000                	unimp
   132c8:	0a31                	addi	s4,s4,12
   132ca:	3036                	fld	ft0,360(sp)
   132cc:	0000                	unimp
   132ce:	0000                	unimp
   132d0:	3031                	0x3031
   132d2:	3331                	addiw	t1,t1,-20
   132d4:	0000                	unimp
   132d6:	0000                	unimp
   132d8:	350a                	fld	fa0,160(sp)
   132da:	3730                	fld	fa2,104(a4)
   132dc:	0000                	unimp
   132de:	0000                	unimp
   132e0:	3331                	addiw	t1,t1,-20
   132e2:	390a                	fld	fs2,160(sp)
   132e4:	0000                	unimp
   132e6:	0000                	unimp
   132e8:	3439                	addiw	s0,s0,-18
   132ea:	3536                	fld	fa0,360(sp)
   132ec:	0000                	unimp
   132ee:	0000                	unimp
   132f0:	0a31                	addi	s4,s4,12
   132f2:	3136                	fld	ft2,360(sp)
   132f4:	0000                	unimp
   132f6:	0000                	unimp
   132f8:	3332                	fld	ft6,296(sp)
   132fa:	3730                	fld	fa2,104(a4)
   132fc:	0000                	unimp
   132fe:	0000                	unimp
   13300:	310a                	fld	ft2,160(sp)
   13302:	3235                	addiw	tp,tp,-19
   13304:	0000                	unimp
   13306:	0000                	unimp
   13308:	3030                	fld	fa2,96(s0)
   1330a:	00000a37          	lui	s4,0x0
   1330e:	0000                	unimp
   13310:	3934                	fld	fa3,112(a0)
   13312:	00003637          	lui	a2,0x3
   13316:	0000                	unimp
   13318:	3734                	fld	fa3,104(a4)
   1331a:	330a                	fld	ft6,160(sp)
   1331c:	0000                	unimp
   1331e:	0000                	unimp
   13320:	3231                	addiw	tp,tp,-20
   13322:	3635                	addiw	a2,a2,-19
   13324:	0000                	unimp
   13326:	0000                	unimp
   13328:	0a30                	addi	a2,sp,280
   1332a:	3534                	fld	fa3,104(a0)
   1332c:	0000                	unimp
   1332e:	0000                	unimp
   13330:	36393833          	0x36393833
   13334:	0000                	unimp
   13336:	0000                	unimp
   13338:	370a                	fld	fa4,160(sp)
   1333a:	3332                	fld	ft6,296(sp)
   1333c:	0000                	unimp
   1333e:	0000                	unimp
   13340:	3538                	fld	fa4,104(a0)
   13342:	0a39                	addi	s4,s4,14
   13344:	0000                	unimp
   13346:	0000                	unimp
   13348:	3735                	addiw	a4,a4,-19
   1334a:	3730                	fld	fa2,104(a4)
   1334c:	0000                	unimp
   1334e:	0000                	unimp
   13350:	3438                	fld	fa4,104(s0)
   13352:	340a                	fld	fs0,160(sp)
   13354:	0000                	unimp
   13356:	0000                	unimp
   13358:	3638                	fld	fa4,104(a2)
   1335a:	3736                	fld	fa4,360(sp)
   1335c:	0000                	unimp
   1335e:	0000                	unimp
   13360:	0a32                	slli	s4,s4,0xc
   13362:	00003637          	lui	a2,0x3
   13366:	0000                	unimp
   13368:	3135                	addiw	sp,sp,-19
   1336a:	3138                	fld	fa4,96(a0)
   1336c:	0000                	unimp
   1336e:	0000                	unimp
   13370:	380a                	fld	fa6,160(sp)
   13372:	3530                	fld	fa2,104(a0)
   13374:	0000                	unimp
   13376:	0000                	unimp
   13378:	3330                	fld	fa2,96(a4)
   1337a:	00000a33          	add	s4,zero,zero
   1337e:	0000                	unimp
   13380:	3835                	addiw	a6,a6,-19
   13382:	00003537          	lui	a0,0x3
   13386:	0000                	unimp
   13388:	370a3833          	0x370a3833
   1338c:	0000                	unimp
   1338e:	0000                	unimp
   13390:	3038                	fld	fa4,96(s0)
   13392:	00003437          	lui	s0,0x3
   13396:	0000                	unimp
   13398:	0a31                	addi	s4,s4,12
   1339a:	3438                	fld	fa4,104(s0)
   1339c:	0000                	unimp
   1339e:	0000                	unimp
   133a0:	3634                	fld	fa3,104(a2)
   133a2:	3134                	fld	fa3,96(a0)
   133a4:	0000                	unimp
   133a6:	0000                	unimp
   133a8:	330a                	fld	ft6,160(sp)
   133aa:	00003133          	snez	sp,zero
   133ae:	0000                	unimp
   133b0:	3234                	fld	fa3,96(a2)
   133b2:	0a39                	addi	s4,s4,14
   133b4:	0000                	unimp
   133b6:	0000                	unimp
   133b8:	3935                	addiw	s2,s2,-19
   133ba:	3236                	fld	ft4,360(sp)
   133bc:	0000                	unimp
   133be:	0000                	unimp
   133c0:	3236                	fld	ft4,360(sp)
   133c2:	370a                	fld	fa4,160(sp)
   133c4:	0000                	unimp
   133c6:	0000                	unimp
   133c8:	37343633          	0x37343633
   133cc:	0000                	unimp
   133ce:	0000                	unimp
   133d0:	0a35                	addi	s4,s4,13
   133d2:	3936                	fld	fs2,360(sp)
   133d4:	0000                	unimp
   133d6:	0000                	unimp
   133d8:	3734                	fld	fa3,104(a4)
   133da:	0a34                	addi	a3,sp,280
   133dc:	0000                	unimp
   133de:	0000                	unimp
   133e0:	3038                	fld	fa4,96(s0)
   133e2:	3236                	fld	ft4,360(sp)
   133e4:	0000                	unimp
   133e6:	0000                	unimp
   133e8:	0a38                	addi	a4,sp,280
   133ea:	3935                	addiw	s2,s2,-19
   133ec:	0000                	unimp
   133ee:	0000                	unimp
   133f0:	3635                	addiw	a2,a2,-19
   133f2:	3439                	addiw	s0,s0,-18
   133f4:	0000                	unimp
   133f6:	0000                	unimp
   133f8:	310a                	fld	ft2,160(sp)
   133fa:	3436                	fld	fs0,360(sp)
   133fc:	0000                	unimp
   133fe:	0000                	unimp
   13400:	3634                	fld	fa3,104(a2)
   13402:	00000a33          	add	s4,zero,zero
   13406:	0000                	unimp
   13408:	3631                	addiw	a2,a2,-20
   1340a:	3131                	addiw	sp,sp,-20
   1340c:	0000                	unimp
   1340e:	0000                	unimp
   13410:	3936                	fld	fs2,360(sp)
   13412:	390a                	fld	fs2,160(sp)
   13414:	0000                	unimp
   13416:	0000                	unimp
   13418:	34393537          	lui	a0,0x34393
   1341c:	0000                	unimp
   1341e:	0000                	unimp
   13420:	0a32                	slli	s4,s4,0xc
   13422:	00003833          	snez	a6,zero
   13426:	0000                	unimp
   13428:	3735                	addiw	a4,a4,-19
   1342a:	3538                	fld	fa4,104(a0)
   1342c:	0000                	unimp
   1342e:	0000                	unimp
   13430:	330a                	fld	ft6,160(sp)
   13432:	00003333          	snez	t1,zero
   13436:	0000                	unimp
   13438:	3238                	fld	fa4,96(a2)
   1343a:	0a38                	addi	a4,sp,280
   1343c:	0000                	unimp
   1343e:	0000                	unimp
   13440:	3434                	fld	fa3,104(s0)
   13442:	3835                	addiw	a6,a6,-19
   13444:	0000                	unimp
   13446:	0000                	unimp
   13448:	3438                	fld	fa4,104(s0)
   1344a:	370a                	fld	fa4,160(sp)
   1344c:	0000                	unimp
   1344e:	0000                	unimp
   13450:	35333233          	0x35333233
   13454:	0000                	unimp
   13456:	0000                	unimp
   13458:	0a36                	slli	s4,s4,0xd
   1345a:	3134                	fld	fa3,96(a0)
   1345c:	0000                	unimp
   1345e:	0000                	unimp
   13460:	3532                	fld	fa0,296(sp)
   13462:	3130                	fld	fa2,96(a0)
   13464:	0000                	unimp
   13466:	0000                	unimp
   13468:	330a                	fld	ft6,160(sp)
   1346a:	3836                	fld	fa6,360(sp)
   1346c:	0000                	unimp
   1346e:	0000                	unimp
   13470:	3938                	fld	fa4,112(a0)
   13472:	0a32                	slli	s4,s4,0xc
   13474:	0000                	unimp
   13476:	0000                	unimp
   13478:	38373333          	0x38373333
   1347c:	0000                	unimp
   1347e:	0000                	unimp
   13480:	3730                	fld	fa2,104(a4)
   13482:	310a                	fld	ft2,160(sp)
   13484:	0000                	unimp
   13486:	0000                	unimp
   13488:	3439                	addiw	s0,s0,-18
   1348a:	3838                	fld	fa4,112(s0)
   1348c:	0000                	unimp
   1348e:	0000                	unimp
   13490:	310a                	fld	ft2,160(sp)
   13492:	3831                	addiw	a6,a6,-20
   13494:	0000                	unimp
   13496:	0000                	unimp
   13498:	3035                	0x3035
   1349a:	00000a37          	lui	s4,0x0
   1349e:	0000                	unimp
   134a0:	3736                	fld	fa4,360(sp)
   134a2:	00003937          	lui	s2,0x3
   134a6:	0000                	unimp
   134a8:	320a3633          	0x320a3633
   134ac:	0000                	unimp
   134ae:	0000                	unimp
   134b0:	3939                	addiw	s2,s2,-18
   134b2:	00003037          	lui	zero,0x3
   134b6:	0000                	unimp
   134b8:	0a32                	slli	s4,s4,0xc
   134ba:	3336                	fld	ft6,360(sp)
   134bc:	0000                	unimp
   134be:	0000                	unimp
   134c0:	3234                	fld	fa3,96(a2)
   134c2:	00003337          	lui	t1,0x3
   134c6:	0000                	unimp
   134c8:	390a                	fld	fs2,160(sp)
   134ca:	3638                	fld	fa4,104(a2)
   134cc:	0000                	unimp
   134ce:	0000                	unimp
   134d0:	340a3733          	0x340a3733
   134d4:	0000                	unimp
   134d6:	0000                	unimp
   134d8:	3832                	fld	fa6,296(sp)
   134da:	3031                	0x3031
   134dc:	0000                	unimp
   134de:	0000                	unimp
   134e0:	0a35                	addi	s4,s4,13
   134e2:	3634                	fld	fa3,104(a2)
   134e4:	0000                	unimp
   134e6:	0000                	unimp
   134e8:	3031                	0x3031
   134ea:	3435                	addiw	s0,s0,-19
   134ec:	0000                	unimp
   134ee:	0000                	unimp
   134f0:	370a                	fld	fa4,160(sp)
   134f2:	3335                	addiw	t1,t1,-19
   134f4:	0000                	unimp
   134f6:	0000                	unimp
   134f8:	3638                	fld	fa4,104(a2)
   134fa:	00000a33          	add	s4,zero,zero
   134fe:	0000                	unimp
   13500:	3039                	0x3039
   13502:	3039                	0x3039
   13504:	0000                	unimp
   13506:	0000                	unimp
   13508:	3435                	addiw	s0,s0,-19
   1350a:	330a                	fld	ft6,160(sp)
   1350c:	0000                	unimp
   1350e:	0000                	unimp
   13510:	3634                	fld	fa3,104(a2)
   13512:	00003937          	lui	s2,0x3
   13516:	0000                	unimp
   13518:	36380a33          	0x36380a33
   1351c:	0000                	unimp
   1351e:	0000                	unimp
   13520:	3038                	fld	fa4,96(s0)
   13522:	3538                	fld	fa4,104(a0)
   13524:	0000                	unimp
   13526:	0000                	unimp
   13528:	340a                	fld	fs0,160(sp)
   1352a:	3335                	addiw	t1,t1,-19
   1352c:	0000                	unimp
   1352e:	0000                	unimp
   13530:	3436                	fld	fs0,360(sp)
   13532:	0a30                	addi	a2,sp,280
   13534:	0000                	unimp
   13536:	0000                	unimp
   13538:	3034                	fld	fa3,96(s0)
   1353a:	3136                	fld	ft2,360(sp)
   1353c:	0000                	unimp
   1353e:	0000                	unimp
   13540:	3939                	addiw	s2,s2,-18
   13542:	320a                	fld	ft4,160(sp)
   13544:	0000                	unimp
   13546:	0000                	unimp
   13548:	3634                	fld	fa3,104(a2)
   1354a:	3132                	fld	ft2,296(sp)
   1354c:	0000                	unimp
   1354e:	0000                	unimp
   13550:	0a34                	addi	a3,sp,280
   13552:	3035                	0x3035
   13554:	0000                	unimp
   13556:	0000                	unimp
   13558:	3234                	fld	fa3,96(a2)
   1355a:	3730                	fld	fa2,104(a4)
   1355c:	0000                	unimp
   1355e:	0000                	unimp
   13560:	390a                	fld	fs2,160(sp)
   13562:	3535                	addiw	a0,a0,-19
   13564:	0000                	unimp
   13566:	0000                	unimp
   13568:	3835                	addiw	a6,a6,-19
   1356a:	0a31                	addi	s4,s4,12
   1356c:	0000                	unimp
   1356e:	0000                	unimp
   13570:	3631                	addiw	a2,a2,-20
   13572:	3239                	addiw	tp,tp,-18
   13574:	0000                	unimp
   13576:	0000                	unimp
   13578:	3535                	addiw	a0,a0,-19
   1357a:	330a                	fld	ft6,160(sp)
   1357c:	0000                	unimp
   1357e:	0000                	unimp
   13580:	3636                	fld	fa2,360(sp)
   13582:	3135                	addiw	sp,sp,-19
   13584:	0000                	unimp
   13586:	0000                	unimp
   13588:	0a31                	addi	s4,s4,12
   1358a:	3539                	addiw	a0,a0,-18
   1358c:	0000                	unimp
   1358e:	0000                	unimp
   13590:	3638                	fld	fa4,104(a2)
   13592:	3536                	fld	fa0,360(sp)
   13594:	0000                	unimp
   13596:	0000                	unimp
   13598:	340a                	fld	fs0,160(sp)
   1359a:	00003433          	snez	s0,zero
   1359e:	0000                	unimp
   135a0:	3138                	fld	fa4,96(a0)
   135a2:	0a39                	addi	s4,s4,14
   135a4:	0000                	unimp
   135a6:	0000                	unimp
   135a8:	3232                	fld	ft4,296(sp)
   135aa:	3538                	fld	fa4,104(a0)
   135ac:	0000                	unimp
   135ae:	0000                	unimp
   135b0:	3838                	fld	fa4,112(s0)
   135b2:	380a                	fld	fa6,160(sp)
   135b4:	0000                	unimp
   135b6:	0000                	unimp
   135b8:	30313637          	lui	a2,0x30313
   135bc:	0000                	unimp
   135be:	0000                	unimp
   135c0:	34340a33          	0x34340a33
   135c4:	0000                	unimp
   135c6:	0000                	unimp
   135c8:	32383533          	0x32383533
   135cc:	0000                	unimp
   135ce:	0000                	unimp
   135d0:	320a                	fld	ft4,160(sp)
   135d2:	3036                	fld	ft0,360(sp)
   135d4:	0000                	unimp
   135d6:	0000                	unimp
   135d8:	0a313037          	lui	zero,0xa313
   135dc:	0000                	unimp
   135de:	0000                	unimp
   135e0:	3632                	fld	fa2,296(sp)
   135e2:	3439                	addiw	s0,s0,-18
   135e4:	0000                	unimp
   135e6:	0000                	unimp
   135e8:	3531                	addiw	a0,a0,-20
   135ea:	330a                	fld	ft6,160(sp)
   135ec:	0000                	unimp
   135ee:	0000                	unimp
   135f0:	3335                	addiw	t1,t1,-19
   135f2:	3935                	addiw	s2,s2,-19
   135f4:	0000                	unimp
   135f6:	0000                	unimp
   135f8:	34320a33          	0x34320a33
   135fc:	0000                	unimp
   135fe:	0000                	unimp
   13600:	32373333          	0x32373333
   13604:	0000                	unimp
   13606:	0000                	unimp
   13608:	310a                	fld	ft2,160(sp)
   1360a:	3838                	fld	fa4,112(s0)
   1360c:	0000                	unimp
   1360e:	0000                	unimp
   13610:	3131                	addiw	sp,sp,-20
   13612:	00000a37          	lui	s4,0x0
   13616:	0000                	unimp
   13618:	3432                	fld	fs0,296(sp)
   1361a:	3336                	fld	ft6,360(sp)
   1361c:	0000                	unimp
   1361e:	0000                	unimp
   13620:	3632                	fld	fa2,296(sp)
   13622:	320a                	fld	ft4,160(sp)
   13624:	0000                	unimp
   13626:	0000                	unimp
   13628:	32333133          	0x32333133
   1362c:	0000                	unimp
   1362e:	0000                	unimp
   13630:	35310a37          	lui	s4,0x35310
   13634:	0000                	unimp
   13636:	0000                	unimp
   13638:	3432                	fld	fs0,296(sp)
   1363a:	3036                	fld	ft0,360(sp)
   1363c:	0000                	unimp
   1363e:	0000                	unimp
   13640:	340a                	fld	fs0,160(sp)
   13642:	3638                	fld	fa4,104(a2)
   13644:	0000                	unimp
   13646:	0000                	unimp
   13648:	3239                	addiw	tp,tp,-18
   1364a:	0a30                	addi	a2,sp,280
   1364c:	0000                	unimp
   1364e:	0000                	unimp
   13650:	3139                	addiw	sp,sp,-18
   13652:	3434                	fld	fa3,104(s0)
   13654:	0000                	unimp
   13656:	0000                	unimp
   13658:	3031                	0x3031
   1365a:	370a                	fld	fa4,160(sp)
   1365c:	0000                	unimp
   1365e:	0000                	unimp
   13660:	3335                	addiw	t1,t1,-19
   13662:	3338                	fld	fa4,96(a4)
   13664:	0000                	unimp
   13666:	0000                	unimp
   13668:	0a32                	slli	s4,s4,0xc
   1366a:	3234                	fld	fa3,96(a2)
   1366c:	0000                	unimp
   1366e:	0000                	unimp
   13670:	3736                	fld	fa4,360(sp)
   13672:	0a38                	addi	a4,sp,280
   13674:	0000                	unimp
   13676:	0000                	unimp
   13678:	3431                	addiw	s0,s0,-20
   1367a:	00003933          	snez	s2,zero
   1367e:	0000                	unimp
   13680:	3039                	0x3039
   13682:	360a                	fld	fa2,160(sp)
   13684:	0000                	unimp
   13686:	0000                	unimp
   13688:	3734                	fld	fa3,104(a4)
   1368a:	3635                	addiw	a2,a2,-19
   1368c:	0000                	unimp
   1368e:	0000                	unimp
   13690:	0a35                	addi	s4,s4,13
   13692:	3736                	fld	fa4,360(sp)
   13694:	0000                	unimp
   13696:	0000                	unimp
   13698:	3339                	addiw	t1,t1,-18
   1369a:	3739                	addiw	a4,a4,-18
   1369c:	0000                	unimp
   1369e:	0000                	unimp
   136a0:	310a                	fld	ft2,160(sp)
   136a2:	3438                	fld	fa4,104(s0)
   136a4:	0000                	unimp
   136a6:	0000                	unimp
   136a8:	3530                	fld	fa2,104(a0)
   136aa:	0a32                	slli	s4,s4,0xc
   136ac:	0000                	unimp
   136ae:	0000                	unimp
   136b0:	3438                	fld	fa4,104(s0)
   136b2:	3532                	fld	fa0,296(sp)
   136b4:	0000                	unimp
   136b6:	0000                	unimp
   136b8:	3136                	fld	ft2,360(sp)
   136ba:	320a                	fld	ft4,160(sp)
   136bc:	0000                	unimp
   136be:	0000                	unimp
   136c0:	3031                	0x3031
   136c2:	00003837          	lui	a6,0x3
   136c6:	0000                	unimp
   136c8:	34310a33          	0x34310a33
   136cc:	0000                	unimp
   136ce:	0000                	unimp
   136d0:	3435                	addiw	s0,s0,-19
   136d2:	00003133          	snez	sp,zero
   136d6:	0000                	unimp
   136d8:	340a                	fld	fs0,160(sp)
   136da:	3634                	fld	fa3,104(a2)
   136dc:	0000                	unimp
   136de:	0000                	unimp
   136e0:	3836                	fld	fa6,360(sp)
   136e2:	0a31                	addi	s4,s4,12
   136e4:	0000                	unimp
   136e6:	0000                	unimp
   136e8:	3239                	addiw	tp,tp,-18
   136ea:	3739                	addiw	a4,a4,-18
   136ec:	0000                	unimp
   136ee:	0000                	unimp
   136f0:	320a3733          	0x320a3733
   136f4:	0000                	unimp
   136f6:	0000                	unimp
   136f8:	3930                	fld	fa2,112(a0)
   136fa:	3434                	fld	fa3,104(s0)
   136fc:	0000                	unimp
   136fe:	0000                	unimp
   13700:	0a36                	slli	s4,s4,0xd
   13702:	3536                	fld	fa0,360(sp)
   13704:	0000                	unimp
   13706:	0000                	unimp
   13708:	3638                	fld	fa4,104(a2)
   1370a:	3534                	fld	fa3,104(a0)
   1370c:	0000                	unimp
   1370e:	0000                	unimp
   13710:	330a                	fld	ft6,160(sp)
   13712:	3834                	fld	fa3,112(s0)
   13714:	0000                	unimp
   13716:	0000                	unimp
   13718:	3832                	fld	fa6,296(sp)
   1371a:	0a34                	addi	a3,sp,280
   1371c:	0000                	unimp
   1371e:	0000                	unimp
   13720:	3934                	fld	fa3,112(a0)
   13722:	3838                	fld	fa4,112(s0)
   13724:	0000                	unimp
   13726:	0000                	unimp
   13728:	3039                	0x3039
   1372a:	390a                	fld	fs2,160(sp)
   1372c:	0000                	unimp
   1372e:	0000                	unimp
   13730:	3639                	addiw	a2,a2,-18
   13732:	3038                	fld	fa4,96(s0)
   13734:	0000                	unimp
   13736:	0000                	unimp
   13738:	37380a37          	lui	s4,0x37380
   1373c:	0000                	unimp
   1373e:	0000                	unimp
   13740:	3932                	fld	fs2,296(sp)
   13742:	3235                	addiw	tp,tp,-19
   13744:	0000                	unimp
   13746:	0000                	unimp
   13748:	350a                	fld	fa0,160(sp)
   1374a:	3338                	fld	fa4,96(a4)
   1374c:	0000                	unimp
   1374e:	0000                	unimp
   13750:	3038                	fld	fa4,96(s0)
   13752:	00000a37          	lui	s4,0x0
   13756:	0000                	unimp
   13758:	30353333          	0x30353333
   1375c:	0000                	unimp
   1375e:	0000                	unimp
   13760:	3639                	addiw	a2,a2,-18
   13762:	350a                	fld	fa0,160(sp)
   13764:	0000                	unimp
   13766:	0000                	unimp
   13768:	3638                	fld	fa4,104(a2)
   1376a:	3931                	addiw	s2,s2,-20
   1376c:	0000                	unimp
   1376e:	0000                	unimp
   13770:	0a35                	addi	s4,s4,13
   13772:	00003537          	lui	a0,0x3
   13776:	0000                	unimp
   13778:	36353137          	lui	sp,0x36353
   1377c:	0000                	unimp
   1377e:	0000                	unimp
   13780:	370a                	fld	fa4,160(sp)
   13782:	3634                	fld	fa3,104(a2)
   13784:	0000                	unimp
   13786:	0000                	unimp
   13788:	3231                	addiw	tp,tp,-20
   1378a:	00000a33          	add	s4,zero,zero
   1378e:	0000                	unimp
   13790:	3339                	addiw	t1,t1,-18
   13792:	3030                	fld	fa2,96(s0)
   13794:	0000                	unimp
   13796:	0000                	unimp
   13798:	3139                	addiw	sp,sp,-18
   1379a:	360a                	fld	fa2,160(sp)
   1379c:	0000                	unimp
   1379e:	0000                	unimp
   137a0:	3339                	addiw	t1,t1,-18
   137a2:	3732                	fld	fa4,296(sp)
   137a4:	0000                	unimp
   137a6:	0000                	unimp
   137a8:	0a35                	addi	s4,s4,13
   137aa:	3339                	addiw	t1,t1,-18
   137ac:	0000                	unimp
   137ae:	0000                	unimp
   137b0:	3936                	fld	fs2,360(sp)
   137b2:	00003637          	lui	a2,0x3
   137b6:	0000                	unimp
   137b8:	350a                	fld	fa0,160(sp)
   137ba:	3436                	fld	fs0,360(sp)
   137bc:	0000                	unimp
   137be:	0000                	unimp
   137c0:	3530                	fld	fa2,104(a0)
   137c2:	0a30                	addi	a2,sp,280
   137c4:	0000                	unimp
   137c6:	0000                	unimp
   137c8:	3635                	addiw	a2,a2,-19
   137ca:	00003533          	snez	a0,zero
   137ce:	0000                	unimp
   137d0:	3939                	addiw	s2,s2,-18
   137d2:	360a                	fld	fa2,160(sp)
   137d4:	0000                	unimp
   137d6:	0000                	unimp
   137d8:	3035                	0x3035
   137da:	3036                	fld	ft0,360(sp)
   137dc:	0000                	unimp
   137de:	0000                	unimp
   137e0:	0a31                	addi	s4,s4,12
   137e2:	3231                	addiw	tp,tp,-20
   137e4:	0000                	unimp
   137e6:	0000                	unimp
   137e8:	3030                	fld	fa2,96(s0)
   137ea:	3934                	fld	fa3,112(a0)
   137ec:	0000                	unimp
   137ee:	0000                	unimp
   137f0:	380a                	fld	fa6,160(sp)
   137f2:	3238                	fld	fa4,96(a2)
   137f4:	0000                	unimp
   137f6:	0000                	unimp
   137f8:	3836                	fld	fa6,360(sp)
   137fa:	0a30                	addi	a2,sp,280
   137fc:	0000                	unimp
   137fe:	0000                	unimp
   13800:	3631                	addiw	a2,a2,-20
   13802:	00003733          	snez	a4,zero
   13806:	0000                	unimp
   13808:	3930                	fld	fa2,112(a0)
   1380a:	340a                	fld	fs0,160(sp)
   1380c:	0000                	unimp
   1380e:	0000                	unimp
   13810:	31373933          	0x31373933
   13814:	0000                	unimp
   13816:	0000                	unimp
   13818:	0a36                	slli	s4,s4,0xd
   1381a:	00003137          	lui	sp,0x3
   1381e:	0000                	unimp
   13820:	39313437          	lui	s0,0x39313
   13824:	0000                	unimp
   13826:	0000                	unimp
   13828:	360a                	fld	fa2,160(sp)
   1382a:	3431                	addiw	s0,s0,-20
   1382c:	0000                	unimp
   1382e:	0000                	unimp
   13830:	3835                	addiw	a6,a6,-19
   13832:	0a31                	addi	s4,s4,12
   13834:	0000                	unimp
   13836:	0000                	unimp
   13838:	3535                	addiw	a0,a0,-19
   1383a:	3535                	addiw	a0,a0,-19
   1383c:	0000                	unimp
   1383e:	0000                	unimp
   13840:	310a3937          	lui	s2,0x310a3
   13844:	0000                	unimp
   13846:	0000                	unimp
   13848:	3331                	addiw	t1,t1,-20
   1384a:	3135                	addiw	sp,sp,-19
   1384c:	0000                	unimp
   1384e:	0000                	unimp
   13850:	0a32                	slli	s4,s4,0xc
   13852:	3831                	addiw	a6,a6,-20
   13854:	0000                	unimp
   13856:	0000                	unimp
   13858:	37393837          	lui	a6,0x37393
   1385c:	0000                	unimp
   1385e:	0000                	unimp
   13860:	350a                	fld	fa0,160(sp)
   13862:	3434                	fld	fa3,104(s0)
   13864:	0000                	unimp
   13866:	0000                	unimp
   13868:	0a323337          	lui	t1,0xa323
   1386c:	0000                	unimp
   1386e:	0000                	unimp
   13870:	3138                	fld	fa4,96(a0)
   13872:	3939                	addiw	s2,s2,-18
   13874:	0000                	unimp
   13876:	0000                	unimp
   13878:	3132                	fld	ft2,296(sp)
   1387a:	310a                	fld	ft2,160(sp)
   1387c:	0000                	unimp
   1387e:	0000                	unimp
   13880:	33323633          	0x33323633
   13884:	0000                	unimp
   13886:	0000                	unimp
   13888:	33310a37          	lui	s4,0x33310
   1388c:	0000                	unimp
   1388e:	0000                	unimp
   13890:	3938                	fld	fa4,112(a0)
   13892:	3339                	addiw	t1,t1,-18
   13894:	0000                	unimp
   13896:	0000                	unimp
   13898:	330a                	fld	ft6,160(sp)
   1389a:	00003233          	snez	tp,zero
   1389e:	0000                	unimp
   138a0:	3431                	addiw	s0,s0,-20
   138a2:	0a31                	addi	s4,s4,12
   138a4:	0000                	unimp
   138a6:	0000                	unimp
   138a8:	3934                	fld	fa3,112(a0)
   138aa:	3130                	fld	fa2,96(a0)
   138ac:	0000                	unimp
   138ae:	0000                	unimp
   138b0:	3038                	fld	fa4,96(s0)
   138b2:	340a                	fld	fs0,160(sp)
   138b4:	0000                	unimp
   138b6:	0000                	unimp
   138b8:	3136                	fld	ft2,360(sp)
   138ba:	3138                	fld	fa4,96(a0)
   138bc:	0000                	unimp
   138be:	0000                	unimp
   138c0:	0a30                	addi	a2,sp,280
   138c2:	3339                	addiw	t1,t1,-18
   138c4:	0000                	unimp
   138c6:	0000                	unimp
   138c8:	0a383837          	lui	a6,0xa383
   138cc:	0000                	unimp
   138ce:	0000                	unimp
   138d0:	31303037          	lui	zero,0x31303
   138d4:	0000                	unimp
   138d6:	0000                	unimp
   138d8:	3034                	fld	fa3,96(s0)
   138da:	330a                	fld	ft6,160(sp)
   138dc:	0000                	unimp
   138de:	0000                	unimp
   138e0:	3734                	fld	fa3,104(a4)
   138e2:	3930                	fld	fa2,112(a0)
   138e4:	0000                	unimp
   138e6:	0000                	unimp
   138e8:	0a39                	addi	s4,s4,14
   138ea:	00003833          	snez	a6,zero
   138ee:	0000                	unimp
   138f0:	3534                	fld	fa3,104(a0)
   138f2:	3730                	fld	fa2,104(a4)
   138f4:	0000                	unimp
   138f6:	0000                	unimp
   138f8:	380a                	fld	fa6,160(sp)
   138fa:	3334                	fld	fa3,96(a4)
   138fc:	0000                	unimp
   138fe:	0000                	unimp
   13900:	3938                	fld	fa4,112(a0)
   13902:	0a30                	addi	a2,sp,280
   13904:	0000                	unimp
   13906:	0000                	unimp
   13908:	3331                	addiw	t1,t1,-20
   1390a:	3136                	fld	ft2,360(sp)
   1390c:	0000                	unimp
   1390e:	0000                	unimp
   13910:	0a35                	addi	s4,s4,13
   13912:	3639                	addiw	a2,a2,-18
   13914:	0000                	unimp
   13916:	0000                	unimp
   13918:	33303933          	0x33303933
   1391c:	0000                	unimp
   1391e:	0000                	unimp
   13920:	360a                	fld	fa2,160(sp)
   13922:	3132                	fld	ft2,296(sp)
   13924:	0000                	unimp
   13926:	0000                	unimp
   13928:	3238                	fld	fa4,96(a2)
   1392a:	00000a37          	lui	s4,0x0
   1392e:	0000                	unimp
   13930:	3532                	fld	fa0,296(sp)
   13932:	3336                	fld	ft6,360(sp)
   13934:	0000                	unimp
   13936:	0000                	unimp
   13938:	3434                	fld	fa3,104(s0)
   1393a:	330a                	fld	ft6,160(sp)
   1393c:	0000                	unimp
   1393e:	0000                	unimp
   13940:	3739                	addiw	a4,a4,-18
   13942:	3838                	fld	fa4,112(s0)
   13944:	0000                	unimp
   13946:	0000                	unimp
   13948:	0a30                	addi	a2,sp,280
   1394a:	3332                	fld	ft6,296(sp)
   1394c:	0000                	unimp
   1394e:	0000                	unimp
   13950:	3834                	fld	fa3,112(s0)
   13952:	00000a33          	add	s4,zero,zero
   13956:	0000                	unimp
   13958:	3139                	addiw	sp,sp,-18
   1395a:	3634                	fld	fa3,104(a2)
   1395c:	0000                	unimp
   1395e:	0000                	unimp
   13960:	0a38                	addi	a4,sp,280
   13962:	3239                	addiw	tp,tp,-18
   13964:	0000                	unimp
   13966:	0000                	unimp
   13968:	3438                	fld	fa4,104(s0)
   1396a:	3231                	addiw	tp,tp,-20
   1396c:	0000                	unimp
   1396e:	0000                	unimp
   13970:	320a                	fld	ft4,160(sp)
   13972:	3031                	0x3031
   13974:	0000                	unimp
   13976:	0000                	unimp
   13978:	3739                	addiw	a4,a4,-18
   1397a:	0a30                	addi	a2,sp,280
   1397c:	0000                	unimp
   1397e:	0000                	unimp
   13980:	3935                	addiw	s2,s2,-19
   13982:	00003233          	snez	tp,zero
   13986:	0000                	unimp
   13988:	3436                	fld	fs0,360(sp)
   1398a:	380a                	fld	fa6,160(sp)
   1398c:	0000                	unimp
   1398e:	0000                	unimp
   13990:	37363233          	0x37363233
   13994:	0000                	unimp
   13996:	0000                	unimp
   13998:	30350a33          	0x30350a33
   1399c:	0000                	unimp
   1399e:	0000                	unimp
   139a0:	3436                	fld	fs0,360(sp)
   139a2:	3635                	addiw	a2,a2,-19
   139a4:	0000                	unimp
   139a6:	0000                	unimp
   139a8:	340a                	fld	fs0,160(sp)
   139aa:	3631                	addiw	a2,a2,-20
   139ac:	0000                	unimp
   139ae:	0000                	unimp
   139b0:	3336                	fld	ft6,360(sp)
   139b2:	360a                	fld	fa2,160(sp)
   139b4:	0000                	unimp
   139b6:	0000                	unimp
   139b8:	3236                	fld	ft4,360(sp)
   139ba:	00003737          	lui	a4,0x3
   139be:	0000                	unimp
   139c0:	0a36                	slli	s4,s4,0xd
   139c2:	00003437          	lui	s0,0x3
   139c6:	0000                	unimp
   139c8:	3731                	addiw	a4,a4,-20
   139ca:	00003837          	lui	a6,0x3
   139ce:	0000                	unimp
   139d0:	360a                	fld	fa2,160(sp)
   139d2:	00003133          	snez	sp,zero
   139d6:	0000                	unimp
   139d8:	3831                	addiw	a6,a6,-20
   139da:	0a30                	addi	a2,sp,280
   139dc:	0000                	unimp
   139de:	0000                	unimp
   139e0:	3035                	0x3035
   139e2:	3630                	fld	fa2,104(a2)
   139e4:	0000                	unimp
   139e6:	0000                	unimp
   139e8:	3934                	fld	fa3,112(a0)
   139ea:	350a                	fld	fa0,160(sp)
   139ec:	0000                	unimp
   139ee:	0000                	unimp
   139f0:	3532                	fld	fa0,296(sp)
   139f2:	3436                	fld	fs0,360(sp)
   139f4:	0000                	unimp
   139f6:	0000                	unimp
   139f8:	37350a37          	lui	s4,0x37350
   139fc:	0000                	unimp
   139fe:	0000                	unimp
   13a00:	37373233          	0x37373233
   13a04:	0000                	unimp
   13a06:	0000                	unimp
   13a08:	380a                	fld	fa6,160(sp)
   13a0a:	3932                	fld	fs2,296(sp)
   13a0c:	0000                	unimp
   13a0e:	0000                	unimp
   13a10:	3736                	fld	fa4,360(sp)
   13a12:	0a30                	addi	a2,sp,280
   13a14:	0000                	unimp
   13a16:	0000                	unimp
   13a18:	3032                	fld	ft0,296(sp)
   13a1a:	3034                	fld	fa3,96(s0)
   13a1c:	0000                	unimp
   13a1e:	0000                	unimp
   13a20:	3831                	addiw	a6,a6,-20
   13a22:	340a                	fld	fs0,160(sp)
   13a24:	0000                	unimp
   13a26:	0000                	unimp
   13a28:	3534                	fld	fa3,104(a0)
   13a2a:	3831                	addiw	a6,a6,-20
   13a2c:	0000                	unimp
   13a2e:	0000                	unimp
   13a30:	0a32                	slli	s4,s4,0xc
   13a32:	3934                	fld	fa3,112(a0)
   13a34:	0000                	unimp
   13a36:	0000                	unimp
   13a38:	3335                	addiw	t1,t1,-19
   13a3a:	0a32                	slli	s4,s4,0xc
   13a3c:	0000                	unimp
   13a3e:	0000                	unimp
   13a40:	3234                	fld	fa3,96(a2)
   13a42:	3234                	fld	fa3,96(a2)
   13a44:	0000                	unimp
   13a46:	0000                	unimp
   13a48:	3838                	fld	fa4,112(s0)
   13a4a:	340a                	fld	fs0,160(sp)
   13a4c:	0000                	unimp
   13a4e:	0000                	unimp
   13a50:	3831                	addiw	a6,a6,-20
   13a52:	00003337          	lui	t1,0x3
   13a56:	0000                	unimp
   13a58:	0a39                	addi	s4,s4,14
   13a5a:	00003233          	snez	tp,zero
   13a5e:	0000                	unimp
   13a60:	3439                	addiw	s0,s0,-18
   13a62:	3632                	fld	fa2,296(sp)
   13a64:	0000                	unimp
   13a66:	0000                	unimp
   13a68:	360a                	fld	fa2,160(sp)
   13a6a:	3439                	addiw	s0,s0,-18
   13a6c:	0000                	unimp
   13a6e:	0000                	unimp
   13a70:	3430                	fld	fa2,104(s0)
   13a72:	00000a33          	add	s4,zero,zero
   13a76:	0000                	unimp
   13a78:	3734                	fld	fa3,104(a4)
   13a7a:	3339                	addiw	t1,t1,-18
   13a7c:	0000                	unimp
   13a7e:	0000                	unimp
   13a80:	320a3733          	0x320a3733
   13a84:	0000                	unimp
   13a86:	0000                	unimp
   13a88:	3338                	fld	fa4,96(a4)
   13a8a:	3230                	fld	fa2,96(a2)
   13a8c:	0000                	unimp
   13a8e:	0000                	unimp
   13a90:	350a                	fld	fa0,160(sp)
   13a92:	3131                	addiw	sp,sp,-20
   13a94:	0000                	unimp
   13a96:	0000                	unimp
   13a98:	0a373237          	lui	tp,0xa373
   13a9c:	0000                	unimp
   13a9e:	0000                	unimp
   13aa0:	3838                	fld	fa4,112(s0)
   13aa2:	3130                	fld	fa2,96(a0)
   13aa4:	0000                	unimp
   13aa6:	0000                	unimp
   13aa8:	3439                	addiw	s0,s0,-18
   13aaa:	380a                	fld	fa6,160(sp)
   13aac:	0000                	unimp
   13aae:	0000                	unimp
   13ab0:	3132                	fld	ft2,296(sp)
   13ab2:	3332                	fld	ft6,296(sp)
   13ab4:	0000                	unimp
   13ab6:	0000                	unimp
   13ab8:	380a                	fld	fa6,160(sp)
   13aba:	00003233          	snez	tp,zero
   13abe:	0000                	unimp
   13ac0:	0a313037          	lui	zero,0xa313
   13ac4:	0000                	unimp
   13ac6:	0000                	unimp
   13ac8:	35373533          	0x35373533
   13acc:	0000                	unimp
   13ace:	0000                	unimp
   13ad0:	370a3133          	0x370a3133
   13ad4:	0000                	unimp
   13ad6:	0000                	unimp
   13ad8:	3331                	addiw	t1,t1,-20
   13ada:	3331                	addiw	t1,t1,-20
   13adc:	0000                	unimp
   13ade:	0000                	unimp
   13ae0:	31340a37          	lui	s4,0x31340
   13ae4:	0000                	unimp
   13ae6:	0000                	unimp
   13ae8:	3731                	addiw	a4,a4,-20
   13aea:	3836                	fld	fa6,360(sp)
   13aec:	0000                	unimp
   13aee:	0000                	unimp
   13af0:	370a                	fld	fa4,160(sp)
   13af2:	3838                	fld	fa4,112(s0)
   13af4:	0000                	unimp
   13af6:	0000                	unimp
   13af8:	3438                	fld	fa4,104(s0)
   13afa:	0a38                	addi	a4,sp,280
   13afc:	0000                	unimp
   13afe:	0000                	unimp
   13b00:	3936                	fld	fs2,360(sp)
   13b02:	3331                	addiw	t1,t1,-20
   13b04:	0000                	unimp
   13b06:	0000                	unimp
   13b08:	3135                	addiw	sp,sp,-19
   13b0a:	330a                	fld	ft6,160(sp)
   13b0c:	0000                	unimp
   13b0e:	0000                	unimp
   13b10:	3139                	addiw	sp,sp,-18
   13b12:	3139                	addiw	sp,sp,-18
   13b14:	0000                	unimp
   13b16:	0000                	unimp
   13b18:	0a34                	addi	a3,sp,280
   13b1a:	3631                	addiw	a2,a2,-20
   13b1c:	0000                	unimp
   13b1e:	0000                	unimp
   13b20:	3736                	fld	fa4,360(sp)
   13b22:	3931                	addiw	s2,s2,-20
   13b24:	0000                	unimp
   13b26:	0000                	unimp
   13b28:	320a                	fld	ft4,160(sp)
   13b2a:	3639                	addiw	a2,a2,-18
   13b2c:	0000                	unimp
   13b2e:	0000                	unimp
   13b30:	3838                	fld	fa4,112(s0)
   13b32:	0a32                	slli	s4,s4,0xc
   13b34:	0000                	unimp
   13b36:	0000                	unimp
   13b38:	3732                	fld	fa4,296(sp)
   13b3a:	3338                	fld	fa4,96(a4)
   13b3c:	0000                	unimp
   13b3e:	0000                	unimp
   13b40:	360a3037          	lui	zero,0x360a3
   13b44:	0000                	unimp
   13b46:	0000                	unimp
   13b48:	3630                	fld	fa2,104(a2)
   13b4a:	3839                	addiw	a6,a6,-18
   13b4c:	0000                	unimp
   13b4e:	0000                	unimp
   13b50:	0a32                	slli	s4,s4,0xc
   13b52:	00003637          	lui	a2,0x3
   13b56:	0000                	unimp
   13b58:	3239                	addiw	tp,tp,-18
   13b5a:	3532                	fld	fa0,296(sp)
   13b5c:	0000                	unimp
   13b5e:	0000                	unimp
   13b60:	390a                	fld	fs2,160(sp)
   13b62:	3436                	fld	fs0,360(sp)
   13b64:	0000                	unimp
   13b66:	0000                	unimp
   13b68:	3630                	fld	fa2,104(a2)
   13b6a:	0a38                	addi	a4,sp,280
   13b6c:	0000                	unimp
   13b6e:	0000                	unimp
   13b70:	3934                	fld	fa3,112(a0)
   13b72:	3336                	fld	ft6,360(sp)
   13b74:	0000                	unimp
   13b76:	0000                	unimp
   13b78:	3738                	fld	fa4,104(a4)
   13b7a:	340a                	fld	fs0,160(sp)
   13b7c:	0000                	unimp
   13b7e:	0000                	unimp
   13b80:	3834                	fld	fa3,112(s0)
   13b82:	3031                	0x3031
   13b84:	0000                	unimp
   13b86:	0000                	unimp
   13b88:	0a35                	addi	s4,s4,13
   13b8a:	3239                	addiw	tp,tp,-18
   13b8c:	0000                	unimp
   13b8e:	0000                	unimp
   13b90:	3131                	addiw	sp,sp,-20
   13b92:	3138                	fld	fa4,96(a0)
   13b94:	0000                	unimp
   13b96:	0000                	unimp
   13b98:	390a                	fld	fs2,160(sp)
   13b9a:	3434                	fld	fa3,104(s0)
   13b9c:	0000                	unimp
   13b9e:	0000                	unimp
   13ba0:	390a3337          	lui	t1,0x390a3
   13ba4:	0000                	unimp
   13ba6:	0000                	unimp
   13ba8:	3030                	fld	fa2,96(s0)
   13baa:	3536                	fld	fa0,360(sp)
   13bac:	0000                	unimp
   13bae:	0000                	unimp
   13bb0:	0a38                	addi	a4,sp,280
   13bb2:	3434                	fld	fa3,104(s0)
   13bb4:	0000                	unimp
   13bb6:	0000                	unimp
   13bb8:	3334                	fld	fa3,96(a4)
   13bba:	3931                	addiw	s2,s2,-20
   13bbc:	0000                	unimp
   13bbe:	0000                	unimp
   13bc0:	370a                	fld	fa4,160(sp)
   13bc2:	00003133          	snez	sp,zero
   13bc6:	0000                	unimp
   13bc8:	3839                	addiw	a6,a6,-18
   13bca:	00000a33          	add	s4,zero,zero
   13bce:	0000                	unimp
   13bd0:	3436                	fld	fs0,360(sp)
   13bd2:	00003533          	snez	a0,zero
   13bd6:	0000                	unimp
   13bd8:	340a3933          	0x340a3933
   13bdc:	0000                	unimp
   13bde:	0000                	unimp
   13be0:	3235                	addiw	tp,tp,-19
   13be2:	3436                	fld	fs0,360(sp)
   13be4:	0000                	unimp
   13be6:	0000                	unimp
   13be8:	0a38                	addi	a4,sp,280
   13bea:	3539                	addiw	a0,a0,-18
   13bec:	0000                	unimp
   13bee:	0000                	unimp
   13bf0:	0a313633          	0xa313633
   13bf4:	0000                	unimp
   13bf6:	0000                	unimp
   13bf8:	3834                	fld	fa3,112(s0)
   13bfa:	3430                	fld	fa2,104(s0)
   13bfc:	0000                	unimp
   13bfe:	0000                	unimp
   13c00:	3039                	0x3039
   13c02:	350a                	fld	fa0,160(sp)
   13c04:	0000                	unimp
   13c06:	0000                	unimp
   13c08:	3839                	addiw	a6,a6,-18
   13c0a:	3436                	fld	fs0,360(sp)
   13c0c:	0000                	unimp
   13c0e:	0000                	unimp
   13c10:	320a                	fld	ft4,160(sp)
   13c12:	3330                	fld	fa2,96(a4)
   13c14:	0000                	unimp
   13c16:	0000                	unimp
   13c18:	3238                	fld	fa4,96(a2)
   13c1a:	0a39                	addi	s4,s4,14
   13c1c:	0000                	unimp
   13c1e:	0000                	unimp
   13c20:	3538                	fld	fa4,104(a0)
   13c22:	3934                	fld	fa3,112(a0)
   13c24:	0000                	unimp
   13c26:	0000                	unimp
   13c28:	3235                	addiw	tp,tp,-19
   13c2a:	370a                	fld	fa4,160(sp)
   13c2c:	0000                	unimp
   13c2e:	0000                	unimp
   13c30:	3936                	fld	fs2,360(sp)
   13c32:	3739                	addiw	a4,a4,-18
   13c34:	0000                	unimp
   13c36:	0000                	unimp
   13c38:	0a31                	addi	s4,s4,12
   13c3a:	3934                	fld	fa3,112(a0)
   13c3c:	0000                	unimp
   13c3e:	0000                	unimp
   13c40:	3234                	fld	fa3,96(a2)
   13c42:	3138                	fld	fa4,96(a0)
   13c44:	0000                	unimp
   13c46:	0000                	unimp
   13c48:	310a                	fld	ft2,160(sp)
   13c4a:	3438                	fld	fa4,104(s0)
   13c4c:	0000                	unimp
   13c4e:	0000                	unimp
   13c50:	3738                	fld	fa4,104(a4)
   13c52:	00000a37          	lui	s4,0x0
   13c56:	0000                	unimp
   13c58:	3534                	fld	fa3,104(a0)
   13c5a:	00003137          	lui	sp,0x3
   13c5e:	0000                	unimp
   13c60:	3539                	addiw	a0,a0,-18
   13c62:	380a                	fld	fa6,160(sp)
   13c64:	0000                	unimp
   13c66:	0000                	unimp
   13c68:	3138                	fld	fa4,96(a0)
   13c6a:	3631                	addiw	a2,a2,-20
   13c6c:	0000                	unimp
   13c6e:	0000                	unimp
   13c70:	31310a33          	0x31310a33
   13c74:	0000                	unimp
   13c76:	0000                	unimp
   13c78:	3038                	fld	fa4,96(s0)
   13c7a:	3138                	fld	fa4,96(a0)
   13c7c:	0000                	unimp
   13c7e:	0000                	unimp
   13c80:	320a                	fld	ft4,160(sp)
   13c82:	3830                	fld	fa2,112(s0)
   13c84:	0000                	unimp
   13c86:	0000                	unimp
   13c88:	3534                	fld	fa3,104(a0)
   13c8a:	0a30                	addi	a2,sp,280
   13c8c:	0000                	unimp
   13c8e:	0000                	unimp
   13c90:	3331                	addiw	t1,t1,-20
   13c92:	3730                	fld	fa2,104(a4)
   13c94:	0000                	unimp
   13c96:	0000                	unimp
   13c98:	3138                	fld	fa4,96(a0)
   13c9a:	390a                	fld	fs2,160(sp)
   13c9c:	0000                	unimp
   13c9e:	0000                	unimp
   13ca0:	3830                	fld	fa2,112(s0)
   13ca2:	3035                	0x3035
   13ca4:	0000                	unimp
   13ca6:	0000                	unimp
   13ca8:	0a35                	addi	s4,s4,13
   13caa:	3032                	fld	ft0,296(sp)
   13cac:	0000                	unimp
   13cae:	0000                	unimp
   13cb0:	3938                	fld	fa4,112(a0)
   13cb2:	3932                	fld	fs2,296(sp)
   13cb4:	0000                	unimp
   13cb6:	0000                	unimp
   13cb8:	370a                	fld	fa4,160(sp)
   13cba:	3635                	addiw	a2,a2,-19
   13cbc:	0000                	unimp
   13cbe:	0000                	unimp
   13cc0:	0a393933          	0xa393933
   13cc4:	0000                	unimp
   13cc6:	0000                	unimp
   13cc8:	3534                	fld	fa3,104(a0)
   13cca:	00003033          	snez	zero,zero
   13cce:	0000                	unimp
   13cd0:	3935                	addiw	s2,s2,-19
   13cd2:	360a                	fld	fa2,160(sp)
   13cd4:	0000                	unimp
   13cd6:	0000                	unimp
   13cd8:	3238                	fld	fa4,96(a2)
   13cda:	3336                	fld	ft6,360(sp)
   13cdc:	0000                	unimp
   13cde:	0000                	unimp
   13ce0:	360a                	fld	fa2,160(sp)
   13ce2:	3139                	addiw	sp,sp,-18
   13ce4:	0000                	unimp
   13ce6:	0000                	unimp
   13ce8:	3835                	addiw	a6,a6,-19
   13cea:	0a32                	slli	s4,s4,0xc
   13cec:	0000                	unimp
   13cee:	0000                	unimp
   13cf0:	3131                	addiw	sp,sp,-20
   13cf2:	3538                	fld	fa4,104(a0)
   13cf4:	0000                	unimp
   13cf6:	0000                	unimp
   13cf8:	3936                	fld	fs2,360(sp)
   13cfa:	360a                	fld	fa2,160(sp)
   13cfc:	0000                	unimp
   13cfe:	0000                	unimp
   13d00:	39363933          	0x39363933
   13d04:	0000                	unimp
   13d06:	0000                	unimp
   13d08:	0a38                	addi	a4,sp,280
   13d0a:	00003333          	snez	t1,zero
   13d0e:	0000                	unimp
   13d10:	3530                	fld	fa2,104(a0)
   13d12:	3732                	fld	fa4,296(sp)
   13d14:	0000                	unimp
   13d16:	0000                	unimp
   13d18:	380a                	fld	fa6,160(sp)
   13d1a:	3236                	fld	ft4,360(sp)
   13d1c:	0000                	unimp
   13d1e:	0000                	unimp
   13d20:	3235                	addiw	tp,tp,-19
   13d22:	00000a33          	add	s4,zero,zero
   13d26:	0000                	unimp
   13d28:	3338                	fld	fa4,96(a4)
   13d2a:	3730                	fld	fa2,104(a4)
   13d2c:	0000                	unimp
   13d2e:	0000                	unimp
   13d30:	3332                	fld	ft6,296(sp)
   13d32:	380a                	fld	fa6,160(sp)
   13d34:	0000                	unimp
   13d36:	0000                	unimp
   13d38:	3331                	addiw	t1,t1,-20
   13d3a:	00003437          	lui	s0,0x3
   13d3e:	0000                	unimp
   13d40:	0a36                	slli	s4,s4,0xd
   13d42:	3239                	addiw	tp,tp,-18
   13d44:	0000                	unimp
   13d46:	0000                	unimp
   13d48:	3938                	fld	fa4,112(a0)
   13d4a:	3534                	fld	fa3,104(a0)
   13d4c:	0000                	unimp
   13d4e:	0000                	unimp
   13d50:	380a                	fld	fa6,160(sp)
   13d52:	3435                	addiw	s0,s0,-19
   13d54:	0000                	unimp
   13d56:	0000                	unimp
   13d58:	3234                	fld	fa3,96(a2)
   13d5a:	00000a33          	add	s4,zero,zero
   13d5e:	0000                	unimp
   13d60:	3138                	fld	fa4,96(a0)
   13d62:	3730                	fld	fa2,104(a4)
   13d64:	0000                	unimp
   13d66:	0000                	unimp
   13d68:	0a36                	slli	s4,s4,0xd
   13d6a:	00003833          	snez	a6,zero
	...

0000000000013d70 <b>:
   13d70:	39353037          	lui	zero,0x39353
   13d74:	0000                	unimp
   13d76:	0000                	unimp
   13d78:	380a                	fld	fa6,160(sp)
   13d7a:	00003637          	lui	a2,0x3
   13d7e:	0000                	unimp
   13d80:	3736                	fld	fa4,360(sp)
   13d82:	0a30                	addi	a2,sp,280
   13d84:	0000                	unimp
   13d86:	0000                	unimp
   13d88:	3434                	fld	fa3,104(s0)
   13d8a:	3139                	addiw	sp,sp,-18
   13d8c:	0000                	unimp
   13d8e:	0000                	unimp
   13d90:	3636                	fld	fa2,360(sp)
   13d92:	390a                	fld	fs2,160(sp)
   13d94:	0000                	unimp
   13d96:	0000                	unimp
   13d98:	3236                	fld	ft4,360(sp)
   13d9a:	3831                	addiw	a6,a6,-20
   13d9c:	0000                	unimp
   13d9e:	0000                	unimp
   13da0:	0a30                	addi	a2,sp,280
   13da2:	3334                	fld	fa3,96(a4)
   13da4:	0000                	unimp
   13da6:	0000                	unimp
   13da8:	3939                	addiw	s2,s2,-18
   13daa:	00003237          	lui	tp,0x3
   13dae:	0000                	unimp
   13db0:	320a                	fld	ft4,160(sp)
   13db2:	3438                	fld	fa4,104(s0)
   13db4:	0000                	unimp
   13db6:	0000                	unimp
   13db8:	3632                	fld	fa2,296(sp)
   13dba:	0a32                	slli	s4,s4,0xc
   13dbc:	0000                	unimp
   13dbe:	0000                	unimp
   13dc0:	3338                	fld	fa4,96(a4)
   13dc2:	3231                	addiw	tp,tp,-20
   13dc4:	0000                	unimp
   13dc6:	0000                	unimp
   13dc8:	340a3037          	lui	zero,0x340a3
   13dcc:	0000                	unimp
   13dce:	0000                	unimp
   13dd0:	36393237          	lui	tp,0x36393
   13dd4:	0000                	unimp
   13dd6:	0000                	unimp
   13dd8:	0a31                	addi	s4,s4,12
   13dda:	3332                	fld	ft6,296(sp)
   13ddc:	0000                	unimp
   13dde:	0000                	unimp
   13de0:	39353737          	lui	a4,0x39353
   13de4:	0000                	unimp
   13de6:	0000                	unimp
   13de8:	380a                	fld	fa6,160(sp)
   13dea:	3836                	fld	fa6,360(sp)
   13dec:	0000                	unimp
   13dee:	0000                	unimp
   13df0:	0a373037          	lui	zero,0xa373
   13df4:	0000                	unimp
   13df6:	0000                	unimp
   13df8:	3836                	fld	fa6,360(sp)
   13dfa:	3936                	fld	fs2,360(sp)
   13dfc:	0000                	unimp
   13dfe:	0000                	unimp
   13e00:	390a3033          	0x390a3033
   13e04:	0000                	unimp
   13e06:	0000                	unimp
   13e08:	3436                	fld	fs0,360(sp)
   13e0a:	3339                	addiw	t1,t1,-18
   13e0c:	0000                	unimp
   13e0e:	0000                	unimp
   13e10:	32360a37          	lui	s4,0x32360
   13e14:	0000                	unimp
   13e16:	0000                	unimp
   13e18:	3735                	addiw	a4,a4,-19
   13e1a:	3938                	fld	fa4,112(a0)
   13e1c:	0000                	unimp
   13e1e:	0000                	unimp
   13e20:	370a                	fld	fa4,160(sp)
   13e22:	3036                	fld	ft0,360(sp)
   13e24:	0000                	unimp
   13e26:	0000                	unimp
   13e28:	3331                	addiw	t1,t1,-20
   13e2a:	00000a37          	lui	s4,0x0
   13e2e:	0000                	unimp
   13e30:	3036                	fld	ft0,360(sp)
   13e32:	3830                	fld	fa2,112(s0)
   13e34:	0000                	unimp
   13e36:	0000                	unimp
   13e38:	3435                	addiw	s0,s0,-19
   13e3a:	340a                	fld	fs0,160(sp)
   13e3c:	0000                	unimp
   13e3e:	0000                	unimp
   13e40:	3331                	addiw	t1,t1,-20
   13e42:	3939                	addiw	s2,s2,-18
   13e44:	0000                	unimp
   13e46:	0000                	unimp
   13e48:	0a39                	addi	s4,s4,14
   13e4a:	3332                	fld	ft6,296(sp)
   13e4c:	0000                	unimp
   13e4e:	0000                	unimp
   13e50:	3334                	fld	fa3,96(a4)
   13e52:	3232                	fld	ft4,296(sp)
   13e54:	0000                	unimp
   13e56:	0000                	unimp
   13e58:	320a                	fld	ft4,160(sp)
   13e5a:	3532                	fld	fa0,296(sp)
   13e5c:	0000                	unimp
   13e5e:	0000                	unimp
   13e60:	3031                	0x3031
   13e62:	0a34                	addi	a3,sp,280
   13e64:	0000                	unimp
   13e66:	0000                	unimp
   13e68:	3934                	fld	fa3,112(a0)
   13e6a:	3739                	addiw	a4,a4,-18
   13e6c:	0000                	unimp
   13e6e:	0000                	unimp
   13e70:	3534                	fld	fa3,104(a0)
   13e72:	390a                	fld	fs2,160(sp)
   13e74:	0000                	unimp
   13e76:	0000                	unimp
   13e78:	3738                	fld	fa4,104(a4)
   13e7a:	3534                	fld	fa3,104(a0)
   13e7c:	0000                	unimp
   13e7e:	0000                	unimp
   13e80:	0a35                	addi	s4,s4,13
   13e82:	3239                	addiw	tp,tp,-18
   13e84:	0000                	unimp
   13e86:	0000                	unimp
   13e88:	3039                	0x3039
   13e8a:	3435                	addiw	s0,s0,-19
   13e8c:	0000                	unimp
   13e8e:	0000                	unimp
   13e90:	350a                	fld	fa0,160(sp)
   13e92:	00003233          	snez	tp,zero
   13e96:	0000                	unimp
   13e98:	3039                	0x3039
   13e9a:	0a31                	addi	s4,s4,12
   13e9c:	0000                	unimp
   13e9e:	0000                	unimp
   13ea0:	3631                	addiw	a2,a2,-20
   13ea2:	00003237          	lui	tp,0x3
   13ea6:	0000                	unimp
   13ea8:	0a32                	slli	s4,s4,0xc
   13eaa:	3838                	fld	fa4,112(s0)
   13eac:	0000                	unimp
   13eae:	0000                	unimp
   13eb0:	3831                	addiw	a6,a6,-20
   13eb2:	3330                	fld	fa2,96(a4)
   13eb4:	0000                	unimp
   13eb6:	0000                	unimp
   13eb8:	340a                	fld	fs0,160(sp)
   13eba:	3839                	addiw	a6,a6,-18
   13ebc:	0000                	unimp
   13ebe:	0000                	unimp
   13ec0:	0a363137          	lui	sp,0xa363
   13ec4:	0000                	unimp
   13ec6:	0000                	unimp
   13ec8:	3138                	fld	fa4,96(a0)
   13eca:	00003737          	lui	a4,0x3
   13ece:	0000                	unimp
   13ed0:	3130                	fld	fa2,96(a0)
   13ed2:	370a                	fld	fa4,160(sp)
   13ed4:	0000                	unimp
   13ed6:	0000                	unimp
   13ed8:	3435                	addiw	s0,s0,-19
   13eda:	3430                	fld	fa2,104(s0)
   13edc:	0000                	unimp
   13ede:	0000                	unimp
   13ee0:	0a34                	addi	a3,sp,280
   13ee2:	3234                	fld	fa3,96(a2)
   13ee4:	0000                	unimp
   13ee6:	0000                	unimp
   13ee8:	3436                	fld	fs0,360(sp)
   13eea:	3230                	fld	fa2,96(a2)
   13eec:	0000                	unimp
   13eee:	0000                	unimp
   13ef0:	340a                	fld	fs0,160(sp)
   13ef2:	3939                	addiw	s2,s2,-18
   13ef4:	0000                	unimp
   13ef6:	0000                	unimp
   13ef8:	390a3533          	0x390a3533
   13efc:	0000                	unimp
   13efe:	0000                	unimp
   13f00:	3339                	addiw	t1,t1,-18
   13f02:	3634                	fld	fa3,104(a2)
   13f04:	0000                	unimp
   13f06:	0000                	unimp
   13f08:	31360a37          	lui	s4,0x31360
   13f0c:	0000                	unimp
   13f0e:	0000                	unimp
   13f10:	3731                	addiw	a4,a4,-20
   13f12:	3239                	addiw	tp,tp,-18
   13f14:	0000                	unimp
   13f16:	0000                	unimp
   13f18:	360a                	fld	fa2,160(sp)
   13f1a:	3935                	addiw	s2,s2,-19
   13f1c:	0000                	unimp
   13f1e:	0000                	unimp
   13f20:	3138                	fld	fa4,96(a0)
   13f22:	00000a37          	lui	s4,0x0
   13f26:	0000                	unimp
   13f28:	3434                	fld	fa3,104(s0)
   13f2a:	3230                	fld	fa2,96(a2)
   13f2c:	0000                	unimp
   13f2e:	0000                	unimp
   13f30:	340a3133          	0x340a3133
   13f34:	0000                	unimp
   13f36:	0000                	unimp
   13f38:	3038                	fld	fa4,96(s0)
   13f3a:	3335                	addiw	t1,t1,-19
   13f3c:	0000                	unimp
   13f3e:	0000                	unimp
   13f40:	0a34                	addi	a3,sp,280
   13f42:	3131                	addiw	sp,sp,-20
   13f44:	0000                	unimp
   13f46:	0000                	unimp
   13f48:	33363233          	0x33363233
   13f4c:	0000                	unimp
   13f4e:	0000                	unimp
   13f50:	370a                	fld	fa4,160(sp)
   13f52:	00003937          	lui	s2,0x3
   13f56:	0000                	unimp
   13f58:	3530                	fld	fa2,104(a0)
   13f5a:	0a30                	addi	a2,sp,280
   13f5c:	0000                	unimp
   13f5e:	0000                	unimp
   13f60:	33373537          	lui	a0,0x33373
   13f64:	0000                	unimp
   13f66:	0000                	unimp
   13f68:	3434                	fld	fa3,104(s0)
   13f6a:	310a                	fld	ft2,160(sp)
   13f6c:	0000                	unimp
   13f6e:	0000                	unimp
   13f70:	3734                	fld	fa3,104(a4)
   13f72:	3630                	fld	fa2,104(a2)
   13f74:	0000                	unimp
   13f76:	0000                	unimp
   13f78:	38380a37          	lui	s4,0x38380
   13f7c:	0000                	unimp
   13f7e:	0000                	unimp
   13f80:	3136                	fld	ft2,360(sp)
   13f82:	350a                	fld	fa0,160(sp)
   13f84:	0000                	unimp
   13f86:	0000                	unimp
   13f88:	3338                	fld	fa4,96(a4)
   13f8a:	3232                	fld	ft4,296(sp)
   13f8c:	0000                	unimp
   13f8e:	0000                	unimp
   13f90:	31330a37          	lui	s4,0x31330
   13f94:	0000                	unimp
   13f96:	0000                	unimp
   13f98:	3631                	addiw	a2,a2,-20
   13f9a:	00003033          	snez	zero,zero
   13f9e:	0000                	unimp
   13fa0:	350a                	fld	fa0,160(sp)
   13fa2:	3534                	fld	fa3,104(a0)
   13fa4:	0000                	unimp
   13fa6:	0000                	unimp
   13fa8:	3236                	fld	ft4,360(sp)
   13faa:	0a34                	addi	a3,sp,280
   13fac:	0000                	unimp
   13fae:	0000                	unimp
   13fb0:	3538                	fld	fa4,104(a0)
   13fb2:	3439                	addiw	s0,s0,-18
   13fb4:	0000                	unimp
   13fb6:	0000                	unimp
   13fb8:	370a3737          	lui	a4,0x370a3
   13fbc:	0000                	unimp
   13fbe:	0000                	unimp
   13fc0:	3135                	addiw	sp,sp,-19
   13fc2:	3630                	fld	fa2,104(a2)
   13fc4:	0000                	unimp
   13fc6:	0000                	unimp
   13fc8:	0a39                	addi	s4,s4,14
   13fca:	3331                	addiw	t1,t1,-20
   13fcc:	0000                	unimp
   13fce:	0000                	unimp
   13fd0:	3531                	addiw	a0,a0,-20
   13fd2:	3838                	fld	fa4,112(s0)
   13fd4:	0000                	unimp
   13fd6:	0000                	unimp
   13fd8:	350a                	fld	fa0,160(sp)
   13fda:	00003537          	lui	a0,0x3
   13fde:	0000                	unimp
   13fe0:	3735                	addiw	a4,a4,-19
   13fe2:	0a39                	addi	s4,s4,14
   13fe4:	0000                	unimp
   13fe6:	0000                	unimp
   13fe8:	39383837          	lui	a6,0x39383
   13fec:	0000                	unimp
   13fee:	0000                	unimp
   13ff0:	330a                	fld	ft6,160(sp)
   13ff2:	00003133          	snez	sp,zero
   13ff6:	0000                	unimp
   13ff8:	3739                	addiw	a4,a4,-18
   13ffa:	0a36                	slli	s4,s4,0xd
   13ffc:	0000                	unimp
   13ffe:	0000                	unimp
   14000:	33343933          	0x33343933
   14004:	0000                	unimp
   14006:	0000                	unimp
   14008:	320a3833          	0x320a3833
   1400c:	0000                	unimp
   1400e:	0000                	unimp
   14010:	3234                	fld	fa3,96(a2)
   14012:	3832                	fld	fa6,296(sp)
   14014:	0000                	unimp
   14016:	0000                	unimp
   14018:	0a32                	slli	s4,s4,0xc
   1401a:	3531                	addiw	a0,a0,-20
   1401c:	0000                	unimp
   1401e:	0000                	unimp
   14020:	3332                	fld	ft6,296(sp)
   14022:	3432                	fld	fs0,296(sp)
   14024:	0000                	unimp
   14026:	0000                	unimp
   14028:	340a                	fld	fs0,160(sp)
   1402a:	3532                	fld	fa0,296(sp)
   1402c:	0000                	unimp
   1402e:	0000                	unimp
   14030:	3331                	addiw	t1,t1,-20
   14032:	340a                	fld	fs0,160(sp)
   14034:	0000                	unimp
   14036:	0000                	unimp
   14038:	3639                	addiw	a2,a2,-18
   1403a:	3534                	fld	fa3,104(a0)
   1403c:	0000                	unimp
   1403e:	0000                	unimp
   14040:	0a35                	addi	s4,s4,13
   14042:	3439                	addiw	s0,s0,-18
   14044:	0000                	unimp
   14046:	0000                	unimp
   14048:	3732                	fld	fa4,296(sp)
   1404a:	3131                	addiw	sp,sp,-20
   1404c:	0000                	unimp
   1404e:	0000                	unimp
   14050:	320a                	fld	ft4,160(sp)
   14052:	3334                	fld	fa3,96(a4)
   14054:	0000                	unimp
   14056:	0000                	unimp
   14058:	3830                	fld	fa2,112(s0)
   1405a:	0a35                	addi	s4,s4,13
   1405c:	0000                	unimp
   1405e:	0000                	unimp
   14060:	3738                	fld	fa4,104(a4)
   14062:	3532                	fld	fa0,296(sp)
   14064:	0000                	unimp
   14066:	0000                	unimp
   14068:	0a35                	addi	s4,s4,13
   1406a:	3235                	addiw	tp,tp,-19
   1406c:	0000                	unimp
   1406e:	0000                	unimp
   14070:	30343037          	lui	zero,0x30343
   14074:	0000                	unimp
   14076:	0000                	unimp
   14078:	350a                	fld	fa0,160(sp)
   1407a:	3439                	addiw	s0,s0,-18
   1407c:	0000                	unimp
   1407e:	0000                	unimp
   14080:	0a383437          	lui	s0,0xa383
   14084:	0000                	unimp
   14086:	0000                	unimp
   14088:	3038                	fld	fa4,96(s0)
   1408a:	3635                	addiw	a2,a2,-19
   1408c:	0000                	unimp
   1408e:	0000                	unimp
   14090:	3439                	addiw	s0,s0,-18
   14092:	340a                	fld	fs0,160(sp)
   14094:	0000                	unimp
   14096:	0000                	unimp
   14098:	3834                	fld	fa3,112(s0)
   1409a:	3535                	addiw	a0,a0,-19
   1409c:	0000                	unimp
   1409e:	0000                	unimp
   140a0:	0a35                	addi	s4,s4,13
   140a2:	3739                	addiw	a4,a4,-18
   140a4:	0000                	unimp
   140a6:	0000                	unimp
   140a8:	3834                	fld	fa3,112(s0)
   140aa:	3234                	fld	fa3,96(a2)
   140ac:	0000                	unimp
   140ae:	0000                	unimp
   140b0:	330a                	fld	ft6,160(sp)
   140b2:	00003337          	lui	t1,0x3
   140b6:	0000                	unimp
   140b8:	0a303537          	lui	a0,0xa303
   140bc:	0000                	unimp
   140be:	0000                	unimp
   140c0:	3534                	fld	fa3,104(a0)
   140c2:	3730                	fld	fa2,104(a4)
   140c4:	0000                	unimp
   140c6:	0000                	unimp
   140c8:	0a35                	addi	s4,s4,13
   140ca:	00003833          	snez	a6,zero
   140ce:	0000                	unimp
   140d0:	37303533          	0x37303533
   140d4:	0000                	unimp
   140d6:	0000                	unimp
   140d8:	340a                	fld	fs0,160(sp)
   140da:	3939                	addiw	s2,s2,-18
   140dc:	0000                	unimp
   140de:	0000                	unimp
   140e0:	0a353137          	lui	sp,0xa353
   140e4:	0000                	unimp
   140e6:	0000                	unimp
   140e8:	3536                	fld	fa0,360(sp)
   140ea:	3936                	fld	fs2,360(sp)
   140ec:	0000                	unimp
   140ee:	0000                	unimp
   140f0:	3138                	fld	fa4,96(a0)
   140f2:	320a                	fld	ft4,160(sp)
   140f4:	0000                	unimp
   140f6:	0000                	unimp
   140f8:	3439                	addiw	s0,s0,-18
   140fa:	00003737          	lui	a4,0x3
   140fe:	0000                	unimp
   14100:	35320a33          	0x35320a33
   14104:	0000                	unimp
   14106:	0000                	unimp
   14108:	3334                	fld	fa3,96(a4)
   1410a:	3330                	fld	fa2,96(a4)
   1410c:	0000                	unimp
   1410e:	0000                	unimp
   14110:	370a                	fld	fa4,160(sp)
   14112:	3334                	fld	fa3,96(a4)
   14114:	0000                	unimp
   14116:	0000                	unimp
   14118:	3239                	addiw	tp,tp,-18
   1411a:	360a                	fld	fa2,160(sp)
   1411c:	0000                	unimp
   1411e:	0000                	unimp
   14120:	3238                	fld	fa4,96(a2)
   14122:	3438                	fld	fa4,104(s0)
   14124:	0000                	unimp
   14126:	0000                	unimp
   14128:	0a38                	addi	a4,sp,280
   1412a:	3532                	fld	fa0,296(sp)
   1412c:	0000                	unimp
   1412e:	0000                	unimp
   14130:	32383733          	0x32383733
   14134:	0000                	unimp
   14136:	0000                	unimp
   14138:	310a                	fld	ft2,160(sp)
   1413a:	3938                	fld	fa4,112(a0)
   1413c:	0000                	unimp
   1413e:	0000                	unimp
   14140:	3938                	fld	fa4,112(a0)
   14142:	0a30                	addi	a2,sp,280
   14144:	0000                	unimp
   14146:	0000                	unimp
   14148:	3136                	fld	ft2,360(sp)
   1414a:	3039                	0x3039
   1414c:	0000                	unimp
   1414e:	0000                	unimp
   14150:	3734                	fld	fa3,104(a4)
   14152:	330a                	fld	ft6,160(sp)
   14154:	0000                	unimp
   14156:	0000                	unimp
   14158:	33323233          	0x33323233
   1415c:	0000                	unimp
   1415e:	0000                	unimp
   14160:	0a32                	slli	s4,s4,0xc
   14162:	3432                	fld	fs0,296(sp)
   14164:	0000                	unimp
   14166:	0000                	unimp
   14168:	3638                	fld	fa4,104(a2)
   1416a:	00003933          	snez	s2,zero
   1416e:	0000                	unimp
   14170:	340a                	fld	fs0,160(sp)
   14172:	00003533          	snez	a0,zero
   14176:	0000                	unimp
   14178:	3030                	fld	fa2,96(s0)
   1417a:	0a36                	slli	s4,s4,0xd
   1417c:	0000                	unimp
   1417e:	0000                	unimp
   14180:	3632                	fld	fa2,296(sp)
   14182:	00003133          	snez	sp,zero
   14186:	0000                	unimp
   14188:	380a3537          	lui	a0,0x380a3
   1418c:	0000                	unimp
   1418e:	0000                	unimp
   14190:	3136                	fld	ft2,360(sp)
   14192:	3238                	fld	fa4,96(a2)
   14194:	0000                	unimp
   14196:	0000                	unimp
   14198:	0a32                	slli	s4,s4,0xc
   1419a:	3535                	addiw	a0,a0,-19
   1419c:	0000                	unimp
   1419e:	0000                	unimp
   141a0:	35333933          	0x35333933
   141a4:	0000                	unimp
   141a6:	0000                	unimp
   141a8:	350a                	fld	fa0,160(sp)
   141aa:	3139                	addiw	sp,sp,-18
   141ac:	0000                	unimp
   141ae:	0000                	unimp
   141b0:	3336                	fld	ft6,360(sp)
   141b2:	0a32                	slli	s4,s4,0xc
   141b4:	0000                	unimp
   141b6:	0000                	unimp
   141b8:	3638                	fld	fa4,104(a2)
   141ba:	3832                	fld	fa6,296(sp)
   141bc:	0000                	unimp
   141be:	0000                	unimp
   141c0:	30380a37          	lui	s4,0x30380
   141c4:	0000                	unimp
   141c6:	0000                	unimp
   141c8:	3336                	fld	ft6,360(sp)
   141ca:	3534                	fld	fa3,104(a0)
   141cc:	0000                	unimp
   141ce:	0000                	unimp
   141d0:	370a                	fld	fa4,160(sp)
   141d2:	3532                	fld	fa0,296(sp)
   141d4:	0000                	unimp
   141d6:	0000                	unimp
   141d8:	0a373437          	lui	s0,0xa373
   141dc:	0000                	unimp
   141de:	0000                	unimp
   141e0:	3734                	fld	fa3,104(a4)
   141e2:	3930                	fld	fa2,112(a0)
   141e4:	0000                	unimp
   141e6:	0000                	unimp
   141e8:	3032                	fld	ft0,296(sp)
   141ea:	390a                	fld	fs2,160(sp)
   141ec:	0000                	unimp
   141ee:	0000                	unimp
   141f0:	31373337          	lui	t1,0x31373
   141f4:	0000                	unimp
   141f6:	0000                	unimp
   141f8:	0a36                	slli	s4,s4,0xd
   141fa:	3831                	addiw	a6,a6,-20
   141fc:	0000                	unimp
   141fe:	0000                	unimp
   14200:	32323533          	0x32323533
   14204:	0000                	unimp
   14206:	0000                	unimp
   14208:	370a                	fld	fa4,160(sp)
   1420a:	3434                	fld	fa3,104(s0)
   1420c:	0000                	unimp
   1420e:	0000                	unimp
   14210:	3439                	addiw	s0,s0,-18
   14212:	0a36                	slli	s4,s4,0xd
   14214:	0000                	unimp
   14216:	0000                	unimp
   14218:	38363037          	lui	zero,0x38363
   1421c:	0000                	unimp
   1421e:	0000                	unimp
   14220:	340a3033          	0x340a3033
   14224:	0000                	unimp
   14226:	0000                	unimp
   14228:	3434                	fld	fa3,104(s0)
   1422a:	3130                	fld	fa2,96(a0)
   1422c:	0000                	unimp
   1422e:	0000                	unimp
   14230:	360a                	fld	fa2,160(sp)
   14232:	3030                	fld	fa2,96(s0)
   14234:	0000                	unimp
   14236:	0000                	unimp
   14238:	0a323537          	lui	a0,0xa323
   1423c:	0000                	unimp
   1423e:	0000                	unimp
   14240:	3731                	addiw	a4,a4,-20
   14242:	3939                	addiw	s2,s2,-18
   14244:	0000                	unimp
   14246:	0000                	unimp
   14248:	3530                	fld	fa2,104(a0)
   1424a:	310a                	fld	ft2,160(sp)
   1424c:	0000                	unimp
   1424e:	0000                	unimp
   14250:	3330                	fld	fa2,96(a4)
   14252:	00003237          	lui	tp,0x3
   14256:	0000                	unimp
   14258:	30320a33          	0x30320a33
   1425c:	0000                	unimp
   1425e:	0000                	unimp
   14260:	3839                	addiw	a6,a6,-18
   14262:	3232                	fld	ft4,296(sp)
   14264:	0000                	unimp
   14266:	0000                	unimp
   14268:	380a                	fld	fa6,160(sp)
   1426a:	00003433          	snez	s0,zero
   1426e:	0000                	unimp
   14270:	3530                	fld	fa2,104(a0)
   14272:	00000a37          	lui	s4,0x0
   14276:	0000                	unimp
   14278:	3238                	fld	fa4,96(a2)
   1427a:	3239                	addiw	tp,tp,-18
   1427c:	0000                	unimp
   1427e:	0000                	unimp
   14280:	3034                	fld	fa3,96(s0)
   14282:	340a                	fld	fs0,160(sp)
   14284:	0000                	unimp
   14286:	0000                	unimp
   14288:	3031                	0x3031
   1428a:	3632                	fld	fa2,296(sp)
   1428c:	0000                	unimp
   1428e:	0000                	unimp
   14290:	0a30                	addi	a2,sp,280
   14292:	3631                	addiw	a2,a2,-20
   14294:	0000                	unimp
   14296:	0000                	unimp
   14298:	32373533          	0x32373533
   1429c:	0000                	unimp
   1429e:	0000                	unimp
   142a0:	380a                	fld	fa6,160(sp)
   142a2:	3930                	fld	fa2,112(a0)
   142a4:	0000                	unimp
   142a6:	0000                	unimp
   142a8:	3138                	fld	fa4,96(a0)
   142aa:	330a                	fld	ft6,160(sp)
   142ac:	0000                	unimp
   142ae:	0000                	unimp
   142b0:	3234                	fld	fa3,96(a2)
   142b2:	3134                	fld	fa3,96(a0)
   142b4:	0000                	unimp
   142b6:	0000                	unimp
   142b8:	0a30                	addi	a2,sp,280
   142ba:	00003333          	snez	t1,zero
   142be:	0000                	unimp
   142c0:	31343737          	lui	a4,0x31343
   142c4:	0000                	unimp
   142c6:	0000                	unimp
   142c8:	310a                	fld	ft2,160(sp)
   142ca:	3436                	fld	fs0,360(sp)
   142cc:	0000                	unimp
   142ce:	0000                	unimp
   142d0:	3336                	fld	ft6,360(sp)
   142d2:	0a35                	addi	s4,s4,13
   142d4:	0000                	unimp
   142d6:	0000                	unimp
   142d8:	34333133          	0x34333133
   142dc:	0000                	unimp
   142de:	0000                	unimp
   142e0:	3836                	fld	fa6,360(sp)
   142e2:	310a                	fld	ft2,160(sp)
   142e4:	0000                	unimp
   142e6:	0000                	unimp
   142e8:	3831                	addiw	a6,a6,-20
   142ea:	3838                	fld	fa4,112(s0)
   142ec:	0000                	unimp
   142ee:	0000                	unimp
   142f0:	31350a33          	0x31350a33
   142f4:	0000                	unimp
   142f6:	0000                	unimp
   142f8:	0a373933          	0xa373933
   142fc:	0000                	unimp
   142fe:	0000                	unimp
   14300:	3935                	addiw	s2,s2,-19
   14302:	00003137          	lui	sp,0x3
   14306:	0000                	unimp
   14308:	3838                	fld	fa4,112(s0)
   1430a:	360a                	fld	fa2,160(sp)
   1430c:	0000                	unimp
   1430e:	0000                	unimp
   14310:	37393637          	lui	a2,0x37393
   14314:	0000                	unimp
   14316:	0000                	unimp
   14318:	0a35                	addi	s4,s4,13
   1431a:	3431                	addiw	s0,s0,-20
   1431c:	0000                	unimp
   1431e:	0000                	unimp
   14320:	3735                	addiw	a4,a4,-19
   14322:	3635                	addiw	a2,a2,-19
   14324:	0000                	unimp
   14326:	0000                	unimp
   14328:	390a                	fld	fs2,160(sp)
   1432a:	3639                	addiw	a2,a2,-18
   1432c:	0000                	unimp
   1432e:	0000                	unimp
   14330:	3936                	fld	fs2,360(sp)
   14332:	0a36                	slli	s4,s4,0xd
   14334:	0000                	unimp
   14336:	0000                	unimp
   14338:	3234                	fld	fa3,96(a2)
   1433a:	3631                	addiw	a2,a2,-20
   1433c:	0000                	unimp
   1433e:	0000                	unimp
   14340:	340a3037          	lui	zero,0x340a3
   14344:	0000                	unimp
   14346:	0000                	unimp
   14348:	3130                	fld	fa2,96(a0)
   1434a:	00003037          	lui	zero,0x3
   1434e:	0000                	unimp
   14350:	0a39                	addi	s4,s4,14
   14352:	3939                	addiw	s2,s2,-18
   14354:	0000                	unimp
   14356:	0000                	unimp
   14358:	39353137          	lui	sp,0x39353
   1435c:	0000                	unimp
   1435e:	0000                	unimp
   14360:	310a                	fld	ft2,160(sp)
   14362:	3139                	addiw	sp,sp,-18
   14364:	0000                	unimp
   14366:	0000                	unimp
   14368:	3930                	fld	fa2,112(a0)
   1436a:	0a32                	slli	s4,s4,0xc
   1436c:	0000                	unimp
   1436e:	0000                	unimp
   14370:	38393433          	0x38393433
   14374:	0000                	unimp
   14376:	0000                	unimp
   14378:	3235                	addiw	tp,tp,-19
   1437a:	320a                	fld	ft4,160(sp)
   1437c:	0000                	unimp
   1437e:	0000                	unimp
   14380:	3231                	addiw	tp,tp,-20
   14382:	3536                	fld	fa0,360(sp)
   14384:	0000                	unimp
   14386:	0000                	unimp
   14388:	0a35                	addi	s4,s4,13
   1438a:	3336                	fld	ft6,360(sp)
   1438c:	0000                	unimp
   1438e:	0000                	unimp
   14390:	3632                	fld	fa2,296(sp)
   14392:	3038                	fld	fa4,96(s0)
   14394:	0000                	unimp
   14396:	0000                	unimp
   14398:	390a                	fld	fs2,160(sp)
   1439a:	00003833          	snez	a6,zero
   1439e:	0000                	unimp
   143a0:	3635                	addiw	a2,a2,-19
   143a2:	00000a37          	lui	s4,0x0
   143a6:	0000                	unimp
   143a8:	3335                	addiw	t1,t1,-19
   143aa:	3535                	addiw	a0,a0,-19
   143ac:	0000                	unimp
   143ae:	0000                	unimp
   143b0:	3339                	addiw	t1,t1,-18
   143b2:	360a                	fld	fa2,160(sp)
   143b4:	0000                	unimp
   143b6:	0000                	unimp
   143b8:	3430                	fld	fa2,104(s0)
   143ba:	3031                	0x3031
   143bc:	0000                	unimp
   143be:	0000                	unimp
   143c0:	0a36                	slli	s4,s4,0xd
   143c2:	3539                	addiw	a0,a0,-18
   143c4:	0000                	unimp
   143c6:	0000                	unimp
   143c8:	3330                	fld	fa2,96(a4)
   143ca:	3631                	addiw	a2,a2,-20
   143cc:	0000                	unimp
   143ce:	0000                	unimp
   143d0:	320a                	fld	ft4,160(sp)
   143d2:	3436                	fld	fs0,360(sp)
   143d4:	0000                	unimp
   143d6:	0000                	unimp
   143d8:	3234                	fld	fa3,96(a2)
   143da:	0a36                	slli	s4,s4,0xd
   143dc:	0000                	unimp
   143de:	0000                	unimp
   143e0:	3038                	fld	fa4,96(s0)
   143e2:	3730                	fld	fa2,104(a4)
   143e4:	0000                	unimp
   143e6:	0000                	unimp
   143e8:	3730                	fld	fa2,104(a4)
   143ea:	330a                	fld	ft6,160(sp)
   143ec:	0000                	unimp
   143ee:	0000                	unimp
   143f0:	3230                	fld	fa2,96(a2)
   143f2:	3435                	addiw	s0,s0,-19
   143f4:	0000                	unimp
   143f6:	0000                	unimp
   143f8:	0a35                	addi	s4,s4,13
   143fa:	3531                	addiw	a0,a0,-20
   143fc:	0000                	unimp
   143fe:	0000                	unimp
   14400:	34313733          	0x34313733
   14404:	0000                	unimp
   14406:	0000                	unimp
   14408:	390a                	fld	fs2,160(sp)
   1440a:	3636                	fld	fa2,360(sp)
   1440c:	0000                	unimp
   1440e:	0000                	unimp
   14410:	3232                	fld	ft4,296(sp)
   14412:	0a39                	addi	s4,s4,14
   14414:	0000                	unimp
   14416:	0000                	unimp
   14418:	38333037          	lui	zero,0x38333
   1441c:	0000                	unimp
   1441e:	0000                	unimp
   14420:	330a3633          	0x330a3633
   14424:	0000                	unimp
   14426:	0000                	unimp
   14428:	3536                	fld	fa0,360(sp)
   1442a:	3534                	fld	fa3,104(a0)
   1442c:	0000                	unimp
   1442e:	0000                	unimp
   14430:	0a31                	addi	s4,s4,12
   14432:	3938                	fld	fa4,112(a0)
   14434:	0000                	unimp
   14436:	0000                	unimp
   14438:	3039                	0x3039
   1443a:	3334                	fld	fa3,96(a4)
   1443c:	0000                	unimp
   1443e:	0000                	unimp
   14440:	350a                	fld	fa0,160(sp)
   14442:	3736                	fld	fa4,360(sp)
   14444:	0000                	unimp
   14446:	0000                	unimp
   14448:	3836                	fld	fa6,360(sp)
   1444a:	0a39                	addi	s4,s4,14
   1444c:	0000                	unimp
   1444e:	0000                	unimp
   14450:	3931                	addiw	s2,s2,-20
   14452:	00003437          	lui	s0,0x3
   14456:	0000                	unimp
   14458:	3834                	fld	fa3,112(s0)
   1445a:	330a                	fld	ft6,160(sp)
   1445c:	0000                	unimp
   1445e:	0000                	unimp
   14460:	36353933          	0x36353933
   14464:	0000                	unimp
   14466:	0000                	unimp
   14468:	0a32                	slli	s4,s4,0xc
   1446a:	00003533          	snez	a0,zero
   1446e:	0000                	unimp
   14470:	3938                	fld	fa4,112(a0)
   14472:	3432                	fld	fs0,296(sp)
   14474:	0000                	unimp
   14476:	0000                	unimp
   14478:	370a                	fld	fa4,160(sp)
   1447a:	00003533          	snez	a0,zero
   1447e:	0000                	unimp
   14480:	3639                	addiw	a2,a2,-18
   14482:	0a39                	addi	s4,s4,14
   14484:	0000                	unimp
   14486:	0000                	unimp
   14488:	3139                	addiw	sp,sp,-18
   1448a:	3132                	fld	ft2,296(sp)
   1448c:	0000                	unimp
   1448e:	0000                	unimp
   14490:	3731                	addiw	a4,a4,-20
   14492:	390a                	fld	fs2,160(sp)
   14494:	0000                	unimp
   14496:	0000                	unimp
   14498:	3739                	addiw	a4,a4,-18
   1449a:	3235                	addiw	tp,tp,-19
   1449c:	0000                	unimp
   1449e:	0000                	unimp
   144a0:	0a35                	addi	s4,s4,13
   144a2:	3939                	addiw	s2,s2,-18
   144a4:	0000                	unimp
   144a6:	0000                	unimp
   144a8:	3230                	fld	fa2,96(a2)
   144aa:	00003733          	snez	a4,zero
   144ae:	0000                	unimp
   144b0:	340a                	fld	fs0,160(sp)
   144b2:	3332                	fld	ft6,296(sp)
   144b4:	0000                	unimp
   144b6:	0000                	unimp
   144b8:	3232                	fld	ft4,296(sp)
   144ba:	380a                	fld	fa6,160(sp)
   144bc:	0000                	unimp
   144be:	0000                	unimp
   144c0:	30333133          	0x30333133
   144c4:	0000                	unimp
   144c6:	0000                	unimp
   144c8:	0a34                	addi	a3,sp,280
   144ca:	3635                	addiw	a2,a2,-19
   144cc:	0000                	unimp
   144ce:	0000                	unimp
   144d0:	3632                	fld	fa2,296(sp)
   144d2:	3138                	fld	fa4,96(a0)
   144d4:	0000                	unimp
   144d6:	0000                	unimp
   144d8:	320a                	fld	ft4,160(sp)
   144da:	00003037          	lui	zero,0x3
   144de:	0000                	unimp
   144e0:	3334                	fld	fa3,96(a4)
   144e2:	0a39                	addi	s4,s4,14
   144e4:	0000                	unimp
   144e6:	0000                	unimp
   144e8:	3134                	fld	fa3,96(a0)
   144ea:	3935                	addiw	s2,s2,-19
   144ec:	0000                	unimp
   144ee:	0000                	unimp
   144f0:	3536                	fld	fa0,360(sp)
   144f2:	370a                	fld	fa4,160(sp)
   144f4:	0000                	unimp
   144f6:	0000                	unimp
   144f8:	35313133          	0x35313133
   144fc:	0000                	unimp
   144fe:	0000                	unimp
   14500:	0a36                	slli	s4,s4,0xd
   14502:	3238                	fld	fa4,96(a2)
   14504:	0000                	unimp
   14506:	0000                	unimp
   14508:	3635                	addiw	a2,a2,-19
   1450a:	3338                	fld	fa4,96(a4)
   1450c:	0000                	unimp
   1450e:	0000                	unimp
   14510:	340a                	fld	fs0,160(sp)
   14512:	3436                	fld	fs0,360(sp)
   14514:	0000                	unimp
   14516:	0000                	unimp
   14518:	3730                	fld	fa2,104(a4)
   1451a:	0a30                	addi	a2,sp,280
   1451c:	0000                	unimp
   1451e:	0000                	unimp
   14520:	3336                	fld	ft6,360(sp)
   14522:	3539                	addiw	a0,a0,-18
   14524:	0000                	unimp
   14526:	0000                	unimp
   14528:	340a3837          	lui	a6,0x340a3
   1452c:	0000                	unimp
   1452e:	0000                	unimp
   14530:	3239                	addiw	tp,tp,-18
   14532:	00003333          	snez	t1,zero
   14536:	0000                	unimp
   14538:	0a31                	addi	s4,s4,12
   1453a:	3038                	fld	fa4,96(s0)
   1453c:	0000                	unimp
   1453e:	0000                	unimp
   14540:	3835                	addiw	a6,a6,-19
   14542:	3132                	fld	ft2,296(sp)
   14544:	0000                	unimp
   14546:	0000                	unimp
   14548:	380a                	fld	fa6,160(sp)
   1454a:	3834                	fld	fa3,112(s0)
   1454c:	0000                	unimp
   1454e:	0000                	unimp
   14550:	3938                	fld	fa4,112(a0)
   14552:	330a                	fld	ft6,160(sp)
   14554:	0000                	unimp
   14556:	0000                	unimp
   14558:	31323037          	lui	zero,0x31323
   1455c:	0000                	unimp
   1455e:	0000                	unimp
   14560:	0a34                	addi	a3,sp,280
   14562:	3332                	fld	ft6,296(sp)
   14564:	0000                	unimp
   14566:	0000                	unimp
   14568:	3936                	fld	fs2,360(sp)
   1456a:	3636                	fld	fa2,360(sp)
   1456c:	0000                	unimp
   1456e:	0000                	unimp
   14570:	330a                	fld	ft6,160(sp)
   14572:	3230                	fld	fa2,96(a2)
   14574:	0000                	unimp
   14576:	0000                	unimp
   14578:	3932                	fld	fs2,296(sp)
   1457a:	0a35                	addi	s4,s4,13
   1457c:	0000                	unimp
   1457e:	0000                	unimp
   14580:	3036                	fld	ft0,360(sp)
   14582:	3839                	addiw	a6,a6,-18
   14584:	0000                	unimp
   14586:	0000                	unimp
   14588:	3030                	fld	fa2,96(s0)
   1458a:	360a                	fld	fa2,160(sp)
   1458c:	0000                	unimp
   1458e:	0000                	unimp
   14590:	3639                	addiw	a2,a2,-18
   14592:	3334                	fld	fa3,96(a4)
   14594:	0000                	unimp
   14596:	0000                	unimp
   14598:	0a32                	slli	s4,s4,0xc
   1459a:	3935                	addiw	s2,s2,-19
   1459c:	0000                	unimp
   1459e:	0000                	unimp
   145a0:	3532                	fld	fa0,296(sp)
   145a2:	3039                	0x3039
   145a4:	0000                	unimp
   145a6:	0000                	unimp
   145a8:	350a                	fld	fa0,160(sp)
   145aa:	3131                	addiw	sp,sp,-20
   145ac:	0000                	unimp
   145ae:	0000                	unimp
   145b0:	3035                	0x3035
   145b2:	0a35                	addi	s4,s4,13
   145b4:	0000                	unimp
   145b6:	0000                	unimp
   145b8:	3738                	fld	fa4,104(a4)
   145ba:	3432                	fld	fs0,296(sp)
   145bc:	0000                	unimp
   145be:	0000                	unimp
   145c0:	3735                	addiw	a4,a4,-19
   145c2:	320a                	fld	ft4,160(sp)
   145c4:	0000                	unimp
   145c6:	0000                	unimp
   145c8:	3235                	addiw	tp,tp,-19
   145ca:	3931                	addiw	s2,s2,-20
   145cc:	0000                	unimp
   145ce:	0000                	unimp
   145d0:	30320a37          	lui	s4,0x30320
   145d4:	0000                	unimp
   145d6:	0000                	unimp
   145d8:	3930                	fld	fa2,112(a0)
   145da:	3135                	addiw	sp,sp,-19
   145dc:	0000                	unimp
   145de:	0000                	unimp
   145e0:	380a                	fld	fa6,160(sp)
   145e2:	3139                	addiw	sp,sp,-18
   145e4:	0000                	unimp
   145e6:	0000                	unimp
   145e8:	3639                	addiw	a2,a2,-18
   145ea:	0a39                	addi	s4,s4,14
   145ec:	0000                	unimp
   145ee:	0000                	unimp
   145f0:	3131                	addiw	sp,sp,-20
   145f2:	3538                	fld	fa4,104(a0)
   145f4:	0000                	unimp
   145f6:	0000                	unimp
   145f8:	3038                	fld	fa4,96(s0)
   145fa:	370a                	fld	fa4,160(sp)
   145fc:	0000                	unimp
   145fe:	0000                	unimp
   14600:	3439                	addiw	s0,s0,-18
   14602:	00003537          	lui	a0,0x3
   14606:	0000                	unimp
   14608:	0a31                	addi	s4,s4,12
   1460a:	00003533          	snez	a0,zero
   1460e:	0000                	unimp
   14610:	3238                	fld	fa4,96(a2)
   14612:	3030                	fld	fa2,96(s0)
   14614:	0000                	unimp
   14616:	0000                	unimp
   14618:	380a                	fld	fa6,160(sp)
   1461a:	3338                	fld	fa4,96(a4)
   1461c:	0000                	unimp
   1461e:	0000                	unimp
   14620:	3339                	addiw	t1,t1,-18
   14622:	00000a37          	lui	s4,0x0
   14626:	0000                	unimp
   14628:	3232                	fld	ft4,296(sp)
   1462a:	3135                	addiw	sp,sp,-19
   1462c:	0000                	unimp
   1462e:	0000                	unimp
   14630:	3234                	fld	fa3,96(a2)
   14632:	360a                	fld	fa2,160(sp)
   14634:	0000                	unimp
   14636:	0000                	unimp
   14638:	3434                	fld	fa3,104(s0)
   1463a:	00003037          	lui	zero,0x3
   1463e:	0000                	unimp
   14640:	0a32                	slli	s4,s4,0xc
   14642:	3634                	fld	fa3,104(a2)
   14644:	0000                	unimp
   14646:	0000                	unimp
   14648:	3534                	fld	fa3,104(a0)
   1464a:	3131                	addiw	sp,sp,-20
   1464c:	0000                	unimp
   1464e:	0000                	unimp
   14650:	310a                	fld	ft2,160(sp)
   14652:	3034                	fld	fa3,96(s0)
   14654:	0000                	unimp
   14656:	0000                	unimp
   14658:	3832                	fld	fa6,296(sp)
   1465a:	00000a33          	add	s4,zero,zero
   1465e:	0000                	unimp
   14660:	3136                	fld	ft2,360(sp)
   14662:	00003237          	lui	tp,0x3
   14666:	0000                	unimp
   14668:	380a3337          	lui	t1,0x380a3
   1466c:	0000                	unimp
   1466e:	0000                	unimp
   14670:	3338                	fld	fa4,96(a4)
   14672:	00003937          	lui	s2,0x3
   14676:	0000                	unimp
   14678:	0a38                	addi	a4,sp,280
   1467a:	3235                	addiw	tp,tp,-19
   1467c:	0000                	unimp
   1467e:	0000                	unimp
   14680:	3235                	addiw	tp,tp,-19
   14682:	3330                	fld	fa2,96(a4)
   14684:	0000                	unimp
   14686:	0000                	unimp
   14688:	340a                	fld	fs0,160(sp)
   1468a:	3234                	fld	fa3,96(a2)
   1468c:	0000                	unimp
   1468e:	0000                	unimp
   14690:	3530                	fld	fa2,104(a0)
   14692:	0a31                	addi	s4,s4,12
   14694:	0000                	unimp
   14696:	0000                	unimp
   14698:	38343533          	0x38343533
   1469c:	0000                	unimp
   1469e:	0000                	unimp
   146a0:	3936                	fld	fs2,360(sp)
   146a2:	360a                	fld	fa2,160(sp)
   146a4:	0000                	unimp
   146a6:	0000                	unimp
   146a8:	3530                	fld	fa2,104(a0)
   146aa:	00003937          	lui	s2,0x3
   146ae:	0000                	unimp
   146b0:	33330a37          	lui	s4,0x33330
   146b4:	0000                	unimp
   146b6:	0000                	unimp
   146b8:	3132                	fld	ft2,296(sp)
   146ba:	3039                	0x3039
   146bc:	0000                	unimp
   146be:	0000                	unimp
   146c0:	360a                	fld	fa2,160(sp)
   146c2:	00003437          	lui	s0,0x3
   146c6:	0000                	unimp
   146c8:	3539                	addiw	a0,a0,-18
   146ca:	0a32                	slli	s4,s4,0xc
   146cc:	0000                	unimp
   146ce:	0000                	unimp
   146d0:	38343237          	lui	tp,0x38343
   146d4:	0000                	unimp
   146d6:	0000                	unimp
   146d8:	3435                	addiw	s0,s0,-19
   146da:	350a                	fld	fa0,160(sp)
   146dc:	0000                	unimp
   146de:	0000                	unimp
   146e0:	3736                	fld	fa4,360(sp)
   146e2:	3131                	addiw	sp,sp,-20
   146e4:	0000                	unimp
   146e6:	0000                	unimp
   146e8:	30320a33          	0x30320a33
   146ec:	0000                	unimp
   146ee:	0000                	unimp
   146f0:	3238                	fld	fa4,96(a2)
   146f2:	3239                	addiw	tp,tp,-18
   146f4:	0000                	unimp
   146f6:	0000                	unimp
   146f8:	380a                	fld	fa6,160(sp)
   146fa:	00003337          	lui	t1,0x3
   146fe:	0000                	unimp
   14700:	0a303033          	0xa303033
   14704:	0000                	unimp
   14706:	0000                	unimp
   14708:	3538                	fld	fa4,104(a0)
   1470a:	00003237          	lui	tp,0x3
   1470e:	0000                	unimp
   14710:	3438                	fld	fa4,104(s0)
   14712:	360a                	fld	fa2,160(sp)
   14714:	0000                	unimp
   14716:	0000                	unimp
   14718:	34393137          	lui	sp,0x34393
   1471c:	0000                	unimp
   1471e:	0000                	unimp
   14720:	32370a37          	lui	s4,0x32370
   14724:	0000                	unimp
   14726:	0000                	unimp
   14728:	3338                	fld	fa4,96(a4)
   1472a:	3630                	fld	fa2,104(a2)
   1472c:	0000                	unimp
   1472e:	0000                	unimp
   14730:	360a                	fld	fa2,160(sp)
   14732:	3734                	fld	fa3,104(a4)
   14734:	0000                	unimp
   14736:	0000                	unimp
   14738:	3830                	fld	fa2,112(s0)
   1473a:	00000a33          	add	s4,zero,zero
   1473e:	0000                	unimp
   14740:	3435                	addiw	s0,s0,-19
   14742:	3035                	0x3035
   14744:	0000                	unimp
   14746:	0000                	unimp
   14748:	380a3033          	0x380a3033
   1474c:	0000                	unimp
   1474e:	0000                	unimp
   14750:	3839                	addiw	a6,a6,-18
   14752:	3234                	fld	fa3,96(a2)
   14754:	0000                	unimp
   14756:	0000                	unimp
   14758:	0a30                	addi	a2,sp,280
   1475a:	3231                	addiw	tp,tp,-20
   1475c:	0000                	unimp
   1475e:	0000                	unimp
   14760:	0a303937          	lui	s2,0xa303
   14764:	0000                	unimp
   14766:	0000                	unimp
   14768:	3834                	fld	fa3,112(s0)
   1476a:	3038                	fld	fa4,96(s0)
   1476c:	0000                	unimp
   1476e:	0000                	unimp
   14770:	3031                	0x3031
   14772:	370a                	fld	fa4,160(sp)
   14774:	0000                	unimp
   14776:	0000                	unimp
   14778:	3636                	fld	fa2,360(sp)
   1477a:	3031                	0x3031
   1477c:	0000                	unimp
   1477e:	0000                	unimp
   14780:	0a36                	slli	s4,s4,0xd
   14782:	3631                	addiw	a2,a2,-20
   14784:	0000                	unimp
   14786:	0000                	unimp
   14788:	3136                	fld	ft2,360(sp)
   1478a:	3230                	fld	fa2,96(a2)
   1478c:	0000                	unimp
   1478e:	0000                	unimp
   14790:	350a                	fld	fa0,160(sp)
   14792:	3734                	fld	fa3,104(a4)
   14794:	0000                	unimp
   14796:	0000                	unimp
   14798:	3435                	addiw	s0,s0,-19
   1479a:	0a32                	slli	s4,s4,0xc
   1479c:	0000                	unimp
   1479e:	0000                	unimp
   147a0:	3332                	fld	ft6,296(sp)
   147a2:	3138                	fld	fa4,96(a0)
   147a4:	0000                	unimp
   147a6:	0000                	unimp
   147a8:	3230                	fld	fa2,96(a2)
   147aa:	360a                	fld	fa2,160(sp)
   147ac:	0000                	unimp
   147ae:	0000                	unimp
   147b0:	3934                	fld	fa3,112(a0)
   147b2:	3439                	addiw	s0,s0,-18
   147b4:	0000                	unimp
   147b6:	0000                	unimp
   147b8:	35390a37          	lui	s4,0x35390
   147bc:	0000                	unimp
   147be:	0000                	unimp
   147c0:	3132                	fld	ft2,296(sp)
   147c2:	3638                	fld	fa4,104(a2)
   147c4:	0000                	unimp
   147c6:	0000                	unimp
   147c8:	350a                	fld	fa0,160(sp)
   147ca:	3236                	fld	ft4,360(sp)
   147cc:	0000                	unimp
   147ce:	0000                	unimp
   147d0:	3736                	fld	fa4,360(sp)
   147d2:	00000a37          	lui	s4,0x0
   147d6:	0000                	unimp
   147d8:	3535                	addiw	a0,a0,-19
   147da:	3032                	fld	ft0,296(sp)
   147dc:	0000                	unimp
   147de:	0000                	unimp
   147e0:	3631                	addiw	a2,a2,-20
   147e2:	340a                	fld	fs0,160(sp)
   147e4:	0000                	unimp
   147e6:	0000                	unimp
   147e8:	3934                	fld	fa3,112(a0)
   147ea:	3536                	fld	fa0,360(sp)
   147ec:	0000                	unimp
   147ee:	0000                	unimp
   147f0:	0a38                	addi	a4,sp,280
   147f2:	00003033          	snez	zero,zero
   147f6:	0000                	unimp
   147f8:	3539                	addiw	a0,a0,-18
   147fa:	0a39                	addi	s4,s4,14
   147fc:	0000                	unimp
   147fe:	0000                	unimp
   14800:	3338                	fld	fa4,96(a4)
   14802:	3932                	fld	fs2,296(sp)
   14804:	0000                	unimp
   14806:	0000                	unimp
   14808:	3336                	fld	ft6,360(sp)
   1480a:	390a                	fld	fs2,160(sp)
   1480c:	0000                	unimp
   1480e:	0000                	unimp
   14810:	3230                	fld	fa2,96(a2)
   14812:	3139                	addiw	sp,sp,-18
   14814:	0000                	unimp
   14816:	0000                	unimp
   14818:	0a39                	addi	s4,s4,14
   1481a:	3736                	fld	fa4,360(sp)
   1481c:	0000                	unimp
   1481e:	0000                	unimp
   14820:	3430                	fld	fa2,104(s0)
   14822:	00003837          	lui	a6,0x3
   14826:	0000                	unimp
   14828:	360a                	fld	fa2,160(sp)
   1482a:	3439                	addiw	s0,s0,-18
   1482c:	0000                	unimp
   1482e:	0000                	unimp
   14830:	0a393737          	lui	a4,0xa393
   14834:	0000                	unimp
   14836:	0000                	unimp
   14838:	3134                	fld	fa3,96(a0)
   1483a:	3438                	fld	fa4,104(s0)
   1483c:	0000                	unimp
   1483e:	0000                	unimp
   14840:	0a38                	addi	a4,sp,280
   14842:	00003333          	snez	t1,zero
   14846:	0000                	unimp
   14848:	3031                	0x3031
   1484a:	00003337          	lui	t1,0x3
   1484e:	0000                	unimp
   14850:	310a                	fld	ft2,160(sp)
   14852:	3038                	fld	fa4,96(s0)
   14854:	0000                	unimp
   14856:	0000                	unimp
   14858:	3035                	0x3035
   1485a:	00000a37          	lui	s4,0x0
   1485e:	0000                	unimp
   14860:	3532                	fld	fa0,296(sp)
   14862:	3130                	fld	fa2,96(a0)
   14864:	0000                	unimp
   14866:	0000                	unimp
   14868:	3536                	fld	fa0,360(sp)
   1486a:	390a                	fld	fs2,160(sp)
   1486c:	0000                	unimp
   1486e:	0000                	unimp
   14870:	3031                	0x3031
   14872:	00003037          	lui	zero,0x3
   14876:	0000                	unimp
   14878:	360a                	fld	fa2,160(sp)
   1487a:	3735                	addiw	a4,a4,-19
   1487c:	0000                	unimp
   1487e:	0000                	unimp
   14880:	0a353937          	lui	s2,0xa353
   14884:	0000                	unimp
   14886:	0000                	unimp
   14888:	3531                	addiw	a0,a0,-20
   1488a:	00003837          	lui	a6,0x3
   1488e:	0000                	unimp
   14890:	3539                	addiw	a0,a0,-18
   14892:	390a                	fld	fs2,160(sp)
   14894:	0000                	unimp
   14896:	0000                	unimp
   14898:	3731                	addiw	a4,a4,-20
   1489a:	3134                	fld	fa3,96(a0)
   1489c:	0000                	unimp
   1489e:	0000                	unimp
   148a0:	0a34                	addi	a3,sp,280
   148a2:	3432                	fld	fs0,296(sp)
   148a4:	0000                	unimp
   148a6:	0000                	unimp
   148a8:	3331                	addiw	t1,t1,-20
   148aa:	3431                	addiw	s0,s0,-20
   148ac:	0000                	unimp
   148ae:	0000                	unimp
   148b0:	310a                	fld	ft2,160(sp)
   148b2:	3138                	fld	fa4,96(a0)
   148b4:	0000                	unimp
   148b6:	0000                	unimp
   148b8:	3838                	fld	fa4,112(s0)
   148ba:	0a36                	slli	s4,s4,0xd
   148bc:	0000                	unimp
   148be:	0000                	unimp
   148c0:	3331                	addiw	t1,t1,-20
   148c2:	3232                	fld	ft4,296(sp)
   148c4:	0000                	unimp
   148c6:	0000                	unimp
   148c8:	0a36                	slli	s4,s4,0xd
   148ca:	3731                	addiw	a4,a4,-20
   148cc:	0000                	unimp
   148ce:	0000                	unimp
   148d0:	3932                	fld	fs2,296(sp)
   148d2:	00000a33          	add	s4,zero,zero
   148d6:	0000                	unimp
   148d8:	3934                	fld	fa3,112(a0)
   148da:	3638                	fld	fa4,104(a2)
   148dc:	0000                	unimp
   148de:	0000                	unimp
   148e0:	330a3637          	lui	a2,0x330a3
   148e4:	0000                	unimp
   148e6:	0000                	unimp
   148e8:	3335                	addiw	t1,t1,-19
   148ea:	3336                	fld	ft6,360(sp)
   148ec:	0000                	unimp
   148ee:	0000                	unimp
   148f0:	0a30                	addi	a2,sp,280
   148f2:	3632                	fld	fa2,296(sp)
   148f4:	0000                	unimp
   148f6:	0000                	unimp
   148f8:	3432                	fld	fs0,296(sp)
   148fa:	3638                	fld	fa4,104(a2)
   148fc:	0000                	unimp
   148fe:	0000                	unimp
   14900:	370a                	fld	fa4,160(sp)
   14902:	3031                	0x3031
   14904:	0000                	unimp
   14906:	0000                	unimp
   14908:	3731                	addiw	a4,a4,-20
   1490a:	390a                	fld	fs2,160(sp)
   1490c:	0000                	unimp
   1490e:	0000                	unimp
   14910:	3131                	addiw	sp,sp,-20
   14912:	3539                	addiw	a0,a0,-18
   14914:	0000                	unimp
   14916:	0000                	unimp
   14918:	0a32                	slli	s4,s4,0xc
   1491a:	00003333          	snez	t1,zero
   1491e:	0000                	unimp
   14920:	3735                	addiw	a4,a4,-19
   14922:	3835                	addiw	a6,a6,-19
   14924:	0000                	unimp
   14926:	0000                	unimp
   14928:	360a                	fld	fa2,160(sp)
   1492a:	3230                	fld	fa2,96(a2)
   1492c:	0000                	unimp
   1492e:	0000                	unimp
   14930:	3336                	fld	ft6,360(sp)
   14932:	0a38                	addi	a4,sp,280
   14934:	0000                	unimp
   14936:	0000                	unimp
   14938:	3635                	addiw	a2,a2,-19
   1493a:	3531                	addiw	a0,a0,-20
   1493c:	0000                	unimp
   1493e:	0000                	unimp
   14940:	3339                	addiw	t1,t1,-18
   14942:	350a                	fld	fa0,160(sp)
   14944:	0000                	unimp
   14946:	0000                	unimp
   14948:	39343937          	lui	s2,0x39343
   1494c:	0000                	unimp
   1494e:	0000                	unimp
   14950:	30370a37          	lui	s4,0x30370
   14954:	0000                	unimp
   14956:	0000                	unimp
   14958:	3432                	fld	fs0,296(sp)
   1495a:	00003637          	lui	a2,0x3
   1495e:	0000                	unimp
   14960:	320a                	fld	ft4,160(sp)
   14962:	3031                	0x3031
   14964:	0000                	unimp
   14966:	0000                	unimp
   14968:	3631                	addiw	a2,a2,-20
   1496a:	0a39                	addi	s4,s4,14
   1496c:	0000                	unimp
   1496e:	0000                	unimp
   14970:	3939                	addiw	s2,s2,-18
   14972:	3232                	fld	ft4,296(sp)
   14974:	0000                	unimp
   14976:	0000                	unimp
   14978:	3230                	fld	fa2,96(a2)
   1497a:	350a                	fld	fa0,160(sp)
   1497c:	0000                	unimp
   1497e:	0000                	unimp
   14980:	3539                	addiw	a0,a0,-18
   14982:	3131                	addiw	sp,sp,-20
   14984:	0000                	unimp
   14986:	0000                	unimp
   14988:	0a30                	addi	a2,sp,280
   1498a:	00003437          	lui	s0,0x3
   1498e:	0000                	unimp
   14990:	3931                	addiw	s2,s2,-20
   14992:	3431                	addiw	s0,s0,-20
   14994:	0000                	unimp
   14996:	0000                	unimp
   14998:	390a                	fld	fs2,160(sp)
   1499a:	3534                	fld	fa3,104(a0)
   1499c:	0000                	unimp
   1499e:	0000                	unimp
   149a0:	3030                	fld	fa2,96(s0)
   149a2:	0a32                	slli	s4,s4,0xc
   149a4:	0000                	unimp
   149a6:	0000                	unimp
   149a8:	3736                	fld	fa4,360(sp)
   149aa:	3338                	fld	fa4,96(a4)
   149ac:	0000                	unimp
   149ae:	0000                	unimp
   149b0:	3635                	addiw	a2,a2,-19
   149b2:	370a                	fld	fa4,160(sp)
   149b4:	0000                	unimp
   149b6:	0000                	unimp
   149b8:	3535                	addiw	a0,a0,-19
   149ba:	3635                	addiw	a2,a2,-19
   149bc:	0000                	unimp
   149be:	0000                	unimp
   149c0:	0a38                	addi	a4,sp,280
   149c2:	3131                	addiw	sp,sp,-20
   149c4:	0000                	unimp
   149c6:	0000                	unimp
   149c8:	3934                	fld	fa3,112(a0)
   149ca:	3635                	addiw	a2,a2,-19
   149cc:	0000                	unimp
   149ce:	0000                	unimp
   149d0:	390a                	fld	fs2,160(sp)
   149d2:	3232                	fld	ft4,296(sp)
   149d4:	0000                	unimp
   149d6:	0000                	unimp
   149d8:	3230                	fld	fa2,96(a2)
   149da:	0a31                	addi	s4,s4,12
   149dc:	0000                	unimp
   149de:	0000                	unimp
   149e0:	3236                	fld	ft4,360(sp)
   149e2:	3731                	addiw	a4,a4,-20
   149e4:	0000                	unimp
   149e6:	0000                	unimp
   149e8:	3031                	0x3031
   149ea:	340a                	fld	fs0,160(sp)
   149ec:	0000                	unimp
   149ee:	0000                	unimp
   149f0:	3039                	0x3039
   149f2:	3130                	fld	fa2,96(a0)
   149f4:	0000                	unimp
   149f6:	0000                	unimp
   149f8:	31320a37          	lui	s4,0x31320
   149fc:	0000                	unimp
   149fe:	0000                	unimp
   14a00:	32343133          	0x32343133
   14a04:	0000                	unimp
   14a06:	0000                	unimp
   14a08:	370a                	fld	fa4,160(sp)
   14a0a:	3336                	fld	ft6,360(sp)
   14a0c:	0000                	unimp
   14a0e:	0000                	unimp
   14a10:	0a353133          	0xa353133
   14a14:	0000                	unimp
   14a16:	0000                	unimp
   14a18:	3731                	addiw	a4,a4,-20
   14a1a:	3931                	addiw	s2,s2,-20
   14a1c:	0000                	unimp
   14a1e:	0000                	unimp
   14a20:	3131                	addiw	sp,sp,-20
   14a22:	360a                	fld	fa2,160(sp)
   14a24:	0000                	unimp
   14a26:	0000                	unimp
   14a28:	3836                	fld	fa6,360(sp)
   14a2a:	3030                	fld	fa2,96(s0)
   14a2c:	0000                	unimp
   14a2e:	0000                	unimp
   14a30:	0a31                	addi	s4,s4,12
   14a32:	3231                	addiw	tp,tp,-20
   14a34:	0000                	unimp
   14a36:	0000                	unimp
   14a38:	3136                	fld	ft2,360(sp)
   14a3a:	3334                	fld	fa3,96(a4)
   14a3c:	0000                	unimp
   14a3e:	0000                	unimp
   14a40:	320a                	fld	ft4,160(sp)
   14a42:	3430                	fld	fa2,104(s0)
   14a44:	0000                	unimp
   14a46:	0000                	unimp
   14a48:	3439                	addiw	s0,s0,-18
   14a4a:	00000a37          	lui	s4,0x0
   14a4e:	0000                	unimp
   14a50:	37393037          	lui	zero,0x37393
   14a54:	0000                	unimp
   14a56:	0000                	unimp
   14a58:	3335                	addiw	t1,t1,-19
   14a5a:	350a                	fld	fa0,160(sp)
   14a5c:	0000                	unimp
   14a5e:	0000                	unimp
   14a60:	3236                	fld	ft4,360(sp)
   14a62:	3339                	addiw	t1,t1,-18
   14a64:	0000                	unimp
   14a66:	0000                	unimp
   14a68:	0a36                	slli	s4,s4,0xd
   14a6a:	3036                	fld	ft0,360(sp)
   14a6c:	0000                	unimp
   14a6e:	0000                	unimp
   14a70:	39303937          	lui	s2,0x39303
   14a74:	0000                	unimp
   14a76:	0000                	unimp
   14a78:	360a                	fld	fa2,160(sp)
   14a7a:	3239                	addiw	tp,tp,-18
   14a7c:	0000                	unimp
   14a7e:	0000                	unimp
   14a80:	3638                	fld	fa4,104(a2)
   14a82:	0a35                	addi	s4,s4,13
   14a84:	0000                	unimp
   14a86:	0000                	unimp
   14a88:	31383533          	0x31383533
   14a8c:	0000                	unimp
   14a8e:	0000                	unimp
   14a90:	370a3037          	lui	zero,0x370a3
   14a94:	0000                	unimp
   14a96:	0000                	unimp
   14a98:	3530                	fld	fa2,104(a0)
   14a9a:	3335                	addiw	t1,t1,-19
   14a9c:	0000                	unimp
   14a9e:	0000                	unimp
   14aa0:	38380a33          	0x38380a33
   14aa4:	0000                	unimp
   14aa6:	0000                	unimp
   14aa8:	36343337          	lui	t1,0x36343
   14aac:	0000                	unimp
   14aae:	0000                	unimp
   14ab0:	320a                	fld	ft4,160(sp)
   14ab2:	3539                	addiw	a0,a0,-18
   14ab4:	0000                	unimp
   14ab6:	0000                	unimp
   14ab8:	3132                	fld	ft2,296(sp)
   14aba:	340a                	fld	fs0,160(sp)
   14abc:	0000                	unimp
   14abe:	0000                	unimp
   14ac0:	3036                	fld	ft0,360(sp)
   14ac2:	3934                	fld	fa3,112(a0)
   14ac4:	0000                	unimp
   14ac6:	0000                	unimp
   14ac8:	0a32                	slli	s4,s4,0xc
   14aca:	3534                	fld	fa3,104(a0)
   14acc:	0000                	unimp
   14ace:	0000                	unimp
   14ad0:	3230                	fld	fa2,96(a2)
   14ad2:	3131                	addiw	sp,sp,-20
   14ad4:	0000                	unimp
   14ad6:	0000                	unimp
   14ad8:	320a                	fld	ft4,160(sp)
   14ada:	00003337          	lui	t1,0x3
   14ade:	0000                	unimp
   14ae0:	0a393537          	lui	a0,0xa393
   14ae4:	0000                	unimp
   14ae6:	0000                	unimp
   14ae8:	3634                	fld	fa3,104(a2)
   14aea:	3632                	fld	fa2,296(sp)
   14aec:	0000                	unimp
   14aee:	0000                	unimp
   14af0:	3234                	fld	fa3,96(a2)
   14af2:	360a                	fld	fa2,160(sp)
   14af4:	0000                	unimp
   14af6:	0000                	unimp
   14af8:	3834                	fld	fa3,112(s0)
   14afa:	3139                	addiw	sp,sp,-18
   14afc:	0000                	unimp
   14afe:	0000                	unimp
   14b00:	0a39                	addi	s4,s4,14
   14b02:	3332                	fld	ft6,296(sp)
   14b04:	0000                	unimp
   14b06:	0000                	unimp
   14b08:	3636                	fld	fa2,360(sp)
   14b0a:	00003933          	snez	s2,zero
   14b0e:	0000                	unimp
   14b10:	350a                	fld	fa0,160(sp)
   14b12:	3234                	fld	fa3,96(a2)
   14b14:	0000                	unimp
   14b16:	0000                	unimp
   14b18:	3034                	fld	fa3,96(s0)
   14b1a:	0a36                	slli	s4,s4,0xd
   14b1c:	0000                	unimp
   14b1e:	0000                	unimp
   14b20:	3032                	fld	ft0,296(sp)
   14b22:	3738                	fld	fa4,104(a4)
   14b24:	0000                	unimp
   14b26:	0000                	unimp
   14b28:	3732                	fld	fa4,296(sp)
   14b2a:	320a                	fld	ft4,160(sp)
   14b2c:	0000                	unimp
   14b2e:	0000                	unimp
   14b30:	3139                	addiw	sp,sp,-18
   14b32:	3032                	fld	ft0,296(sp)
   14b34:	0000                	unimp
   14b36:	0000                	unimp
   14b38:	0a39                	addi	s4,s4,14
   14b3a:	3032                	fld	ft0,296(sp)
   14b3c:	0000                	unimp
   14b3e:	0000                	unimp
   14b40:	3439                	addiw	s0,s0,-18
   14b42:	00003033          	snez	zero,zero
   14b46:	0000                	unimp
   14b48:	320a                	fld	ft4,160(sp)
   14b4a:	3638                	fld	fa4,104(a2)
   14b4c:	0000                	unimp
   14b4e:	0000                	unimp
   14b50:	3336                	fld	ft6,360(sp)
   14b52:	00000a37          	lui	s4,0x0
   14b56:	0000                	unimp
   14b58:	3338                	fld	fa4,96(a4)
   14b5a:	3732                	fld	fa4,296(sp)
   14b5c:	0000                	unimp
   14b5e:	0000                	unimp
   14b60:	310a3737          	lui	a4,0x310a3
   14b64:	0000                	unimp
   14b66:	0000                	unimp
   14b68:	3838                	fld	fa4,112(s0)
   14b6a:	3739                	addiw	a4,a4,-18
   14b6c:	0000                	unimp
   14b6e:	0000                	unimp
   14b70:	0a30                	addi	a2,sp,280
   14b72:	00003633          	snez	a2,zero
   14b76:	0000                	unimp
   14b78:	3536                	fld	fa0,360(sp)
   14b7a:	00003637          	lui	a2,0x3
   14b7e:	0000                	unimp
   14b80:	340a                	fld	fs0,160(sp)
   14b82:	00003337          	lui	t1,0x3
   14b86:	0000                	unimp
   14b88:	3834                	fld	fa3,112(s0)
   14b8a:	0a39                	addi	s4,s4,14
   14b8c:	0000                	unimp
   14b8e:	0000                	unimp
   14b90:	3736                	fld	fa4,360(sp)
   14b92:	3634                	fld	fa3,104(a2)
   14b94:	0000                	unimp
   14b96:	0000                	unimp
   14b98:	3335                	addiw	t1,t1,-19
   14b9a:	330a                	fld	ft6,160(sp)
   14b9c:	0000                	unimp
   14b9e:	0000                	unimp
   14ba0:	3735                	addiw	a4,a4,-19
   14ba2:	00003637          	lui	a2,0x3
   14ba6:	0000                	unimp
   14ba8:	0a30                	addi	a2,sp,280
   14baa:	3732                	fld	fa4,296(sp)
   14bac:	0000                	unimp
   14bae:	0000                	unimp
   14bb0:	3730                	fld	fa2,104(a4)
   14bb2:	3139                	addiw	sp,sp,-18
   14bb4:	0000                	unimp
   14bb6:	0000                	unimp
   14bb8:	360a                	fld	fa2,160(sp)
   14bba:	3736                	fld	fa4,360(sp)
   14bbc:	0000                	unimp
   14bbe:	0000                	unimp
   14bc0:	3231                	addiw	tp,tp,-20
   14bc2:	0a39                	addi	s4,s4,14
   14bc4:	0000                	unimp
   14bc6:	0000                	unimp
   14bc8:	3434                	fld	fa3,104(s0)
   14bca:	00003437          	lui	s0,0x3
   14bce:	0000                	unimp
   14bd0:	3934                	fld	fa3,112(a0)
   14bd2:	360a                	fld	fa2,160(sp)
   14bd4:	0000                	unimp
   14bd6:	0000                	unimp
   14bd8:	3732                	fld	fa4,296(sp)
   14bda:	00003833          	snez	a6,zero
   14bde:	0000                	unimp
   14be0:	0a38                	addi	a4,sp,280
   14be2:	3835                	addiw	a6,a6,-19
   14be4:	0000                	unimp
   14be6:	0000                	unimp
   14be8:	3531                	addiw	a0,a0,-20
   14bea:	00003637          	lui	a2,0x3
   14bee:	0000                	unimp
   14bf0:	360a                	fld	fa2,160(sp)
   14bf2:	3234                	fld	fa3,96(a2)
   14bf4:	0000                	unimp
   14bf6:	0000                	unimp
   14bf8:	0a373537          	lui	a0,0xa373
   14bfc:	0000                	unimp
   14bfe:	0000                	unimp
   14c00:	39363937          	lui	s2,0x39363
   14c04:	0000                	unimp
   14c06:	0000                	unimp
   14c08:	3330                	fld	fa2,96(a4)
   14c0a:	340a                	fld	fs0,160(sp)
   14c0c:	0000                	unimp
   14c0e:	0000                	unimp
   14c10:	3836                	fld	fa6,360(sp)
   14c12:	3238                	fld	fa4,96(a2)
   14c14:	0000                	unimp
   14c16:	0000                	unimp
   14c18:	0a38                	addi	a4,sp,280
   14c1a:	3039                	0x3039
   14c1c:	0000                	unimp
   14c1e:	0000                	unimp
   14c20:	3535                	addiw	a0,a0,-19
   14c22:	00003137          	lui	sp,0x3
   14c26:	0000                	unimp
   14c28:	340a                	fld	fs0,160(sp)
   14c2a:	3932                	fld	fs2,296(sp)
   14c2c:	0000                	unimp
   14c2e:	0000                	unimp
   14c30:	3136                	fld	ft2,360(sp)
   14c32:	0a32                	slli	s4,s4,0xc
   14c34:	0000                	unimp
   14c36:	0000                	unimp
   14c38:	3336                	fld	ft6,360(sp)
   14c3a:	3034                	fld	fa3,96(s0)
   14c3c:	0000                	unimp
   14c3e:	0000                	unimp
   14c40:	3034                	fld	fa3,96(s0)
   14c42:	390a                	fld	fs2,160(sp)
   14c44:	0000                	unimp
   14c46:	0000                	unimp
   14c48:	35363733          	0x35363733
   14c4c:	0000                	unimp
   14c4e:	0000                	unimp
   14c50:	0a32                	slli	s4,s4,0xc
   14c52:	3339                	addiw	t1,t1,-18
   14c54:	0000                	unimp
   14c56:	0000                	unimp
   14c58:	35393737          	lui	a4,0x35393
   14c5c:	0000                	unimp
   14c5e:	0000                	unimp
   14c60:	390a                	fld	fs2,160(sp)
   14c62:	00003637          	lui	a2,0x3
   14c66:	0000                	unimp
   14c68:	3030                	fld	fa2,96(s0)
   14c6a:	0a38                	addi	a4,sp,280
   14c6c:	0000                	unimp
   14c6e:	0000                	unimp
   14c70:	3034                	fld	fa3,96(s0)
   14c72:	3731                	addiw	a4,a4,-20
   14c74:	0000                	unimp
   14c76:	0000                	unimp
   14c78:	3232                	fld	ft4,296(sp)
   14c7a:	370a                	fld	fa4,160(sp)
   14c7c:	0000                	unimp
   14c7e:	0000                	unimp
   14c80:	34313537          	lui	a0,0x34313
   14c84:	0000                	unimp
   14c86:	0000                	unimp
   14c88:	0a30                	addi	a2,sp,280
   14c8a:	3334                	fld	fa3,96(a4)
   14c8c:	0000                	unimp
   14c8e:	0000                	unimp
   14c90:	3932                	fld	fs2,296(sp)
   14c92:	0a35                	addi	s4,s4,13
   14c94:	0000                	unimp
   14c96:	0000                	unimp
   14c98:	3331                	addiw	t1,t1,-20
   14c9a:	3931                	addiw	s2,s2,-20
   14c9c:	0000                	unimp
   14c9e:	0000                	unimp
   14ca0:	3339                	addiw	t1,t1,-18
   14ca2:	370a                	fld	fa4,160(sp)
   14ca4:	0000                	unimp
   14ca6:	0000                	unimp
   14ca8:	3831                	addiw	a6,a6,-20
   14caa:	3630                	fld	fa2,104(a2)
   14cac:	0000                	unimp
   14cae:	0000                	unimp
   14cb0:	0a32                	slli	s4,s4,0xc
   14cb2:	00003733          	snez	a4,zero
   14cb6:	0000                	unimp
   14cb8:	35363137          	lui	sp,0x35363
   14cbc:	0000                	unimp
   14cbe:	0000                	unimp
   14cc0:	370a                	fld	fa4,160(sp)
   14cc2:	00003833          	snez	a6,zero
   14cc6:	0000                	unimp
   14cc8:	3532                	fld	fa0,296(sp)
   14cca:	0a32                	slli	s4,s4,0xc
   14ccc:	0000                	unimp
   14cce:	0000                	unimp
   14cd0:	3932                	fld	fs2,296(sp)
   14cd2:	3330                	fld	fa2,96(a4)
   14cd4:	0000                	unimp
   14cd6:	0000                	unimp
   14cd8:	3531                	addiw	a0,a0,-20
   14cda:	380a                	fld	fa6,160(sp)
   14cdc:	0000                	unimp
   14cde:	0000                	unimp
   14ce0:	3838                	fld	fa4,112(s0)
   14ce2:	3831                	addiw	a6,a6,-20
   14ce4:	0000                	unimp
   14ce6:	0000                	unimp
   14ce8:	31360a37          	lui	s4,0x31360
   14cec:	0000                	unimp
   14cee:	0000                	unimp
   14cf0:	3539                	addiw	a0,a0,-18
   14cf2:	3538                	fld	fa4,104(a0)
   14cf4:	0000                	unimp
   14cf6:	0000                	unimp
   14cf8:	330a                	fld	ft6,160(sp)
   14cfa:	3932                	fld	fs2,296(sp)
   14cfc:	0000                	unimp
   14cfe:	0000                	unimp
   14d00:	0a363937          	lui	s2,0xa363
   14d04:	0000                	unimp
   14d06:	0000                	unimp
   14d08:	3934                	fld	fa3,112(a0)
   14d0a:	3735                	addiw	a4,a4,-19
	...

00000000000150f8 <c>:
   150f8:	380a                	fld	fa6,160(sp)
   150fa:	3736                	fld	fa4,360(sp)
   150fc:	0000                	unimp
   150fe:	0000                	unimp
   15100:	3431                	addiw	s0,s0,-20
   15102:	0a35                	addi	s4,s4,13
   15104:	0000                	unimp
   15106:	0000                	unimp
   15108:	3331                	addiw	t1,t1,-20
   1510a:	3339                	addiw	t1,t1,-18
   1510c:	0000                	unimp
   1510e:	0000                	unimp
   15110:	3639                	addiw	a2,a2,-18
   15112:	390a                	fld	fs2,160(sp)
   15114:	0000                	unimp
   15116:	0000                	unimp
   15118:	3231                	addiw	tp,tp,-20
   1511a:	3731                	addiw	a4,a4,-20
   1511c:	0000                	unimp
   1511e:	0000                	unimp
   15120:	0a36                	slli	s4,s4,0xd
   15122:	3739                	addiw	a4,a4,-18
   15124:	0000                	unimp
   15126:	0000                	unimp
   15128:	3432                	fld	fs0,296(sp)
   1512a:	0a34                	addi	a3,sp,280
   1512c:	0000                	unimp
   1512e:	0000                	unimp
   15130:	3332                	fld	ft6,296(sp)
   15132:	3630                	fld	fa2,104(a2)
   15134:	0000                	unimp
   15136:	0000                	unimp
   15138:	3135                	addiw	sp,sp,-19
   1513a:	360a                	fld	fa2,160(sp)
   1513c:	0000                	unimp
   1513e:	0000                	unimp
   15140:	3039                	0x3039
   15142:	3332                	fld	ft6,296(sp)
   15144:	0000                	unimp
   15146:	0000                	unimp
   15148:	0a32                	slli	s4,s4,0xc
   1514a:	3931                	addiw	s2,s2,-20
   1514c:	0000                	unimp
   1514e:	0000                	unimp
   15150:	0a383537          	lui	a0,0xa383
   15154:	0000                	unimp
   15156:	0000                	unimp
   15158:	34363237          	lui	tp,0x34363
   1515c:	0000                	unimp
   1515e:	0000                	unimp
   15160:	3035                	0x3035
   15162:	330a                	fld	ft6,160(sp)
   15164:	0000                	unimp
   15166:	0000                	unimp
   15168:	3738                	fld	fa4,104(a4)
   1516a:	3335                	addiw	t1,t1,-19
   1516c:	0000                	unimp
   1516e:	0000                	unimp
   15170:	0a30                	addi	a2,sp,280
   15172:	00003233          	snez	tp,zero
   15176:	0000                	unimp
   15178:	3036                	fld	ft0,360(sp)
   1517a:	3135                	addiw	sp,sp,-19
   1517c:	0000                	unimp
   1517e:	0000                	unimp
   15180:	320a                	fld	ft4,160(sp)
   15182:	3436                	fld	fs0,360(sp)
   15184:	0000                	unimp
   15186:	0000                	unimp
   15188:	3736                	fld	fa4,360(sp)
   1518a:	0a35                	addi	s4,s4,13
   1518c:	0000                	unimp
   1518e:	0000                	unimp
   15190:	3939                	addiw	s2,s2,-18
   15192:	3836                	fld	fa6,360(sp)
   15194:	0000                	unimp
   15196:	0000                	unimp
   15198:	3230                	fld	fa2,96(a2)
   1519a:	330a                	fld	ft6,160(sp)
   1519c:	0000                	unimp
   1519e:	0000                	unimp
   151a0:	3035                	0x3035
   151a2:	3539                	addiw	a0,a0,-18
   151a4:	0000                	unimp
   151a6:	0000                	unimp
   151a8:	0a30                	addi	a2,sp,280
   151aa:	00003737          	lui	a4,0x3
   151ae:	0000                	unimp
   151b0:	3331                	addiw	t1,t1,-20
   151b2:	3036                	fld	ft0,360(sp)
   151b4:	0000                	unimp
   151b6:	0000                	unimp
   151b8:	330a                	fld	ft6,160(sp)
   151ba:	3532                	fld	fa0,296(sp)
   151bc:	0000                	unimp
   151be:	0000                	unimp
   151c0:	3330                	fld	fa2,96(a4)
   151c2:	00000a37          	lui	s4,0x0
   151c6:	0000                	unimp
   151c8:	3634                	fld	fa3,104(a2)
   151ca:	3036                	fld	ft0,360(sp)
   151cc:	0000                	unimp
   151ce:	0000                	unimp
   151d0:	3234                	fld	fa3,96(a2)
   151d2:	360a                	fld	fa2,160(sp)
   151d4:	0000                	unimp
   151d6:	0000                	unimp
   151d8:	3439                	addiw	s0,s0,-18
   151da:	00003133          	snez	sp,zero
   151de:	0000                	unimp
   151e0:	0a39                	addi	s4,s4,14
   151e2:	3831                	addiw	a6,a6,-20
   151e4:	0000                	unimp
   151e6:	0000                	unimp
   151e8:	3338                	fld	fa4,96(a4)
   151ea:	0a31                	addi	s4,s4,12
   151ec:	0000                	unimp
   151ee:	0000                	unimp
   151f0:	3735                	addiw	a4,a4,-19
   151f2:	3638                	fld	fa4,104(a2)
   151f4:	0000                	unimp
   151f6:	0000                	unimp
   151f8:	390a3637          	lui	a2,0x390a3
   151fc:	0000                	unimp
   151fe:	0000                	unimp
   15200:	39363737          	lui	a4,0x39363
   15204:	0000                	unimp
   15206:	0000                	unimp
   15208:	0a30                	addi	a2,sp,280
   1520a:	3135                	addiw	sp,sp,-19
   1520c:	0000                	unimp
   1520e:	0000                	unimp
   15210:	3536                	fld	fa0,360(sp)
   15212:	3232                	fld	ft4,296(sp)
   15214:	0000                	unimp
   15216:	0000                	unimp
   15218:	320a                	fld	ft4,160(sp)
   1521a:	00003237          	lui	tp,0x3
   1521e:	0000                	unimp
   15220:	0a353333          	0xa353333
   15224:	0000                	unimp
   15226:	0000                	unimp
   15228:	3038                	fld	fa4,96(s0)
   1522a:	3332                	fld	ft6,296(sp)
   1522c:	0000                	unimp
   1522e:	0000                	unimp
   15230:	3534                	fld	fa3,104(a0)
   15232:	370a                	fld	fa4,160(sp)
   15234:	0000                	unimp
   15236:	0000                	unimp
   15238:	36383833          	0x36383833
   1523c:	0000                	unimp
   1523e:	0000                	unimp
   15240:	330a                	fld	ft6,160(sp)
   15242:	3732                	fld	fa4,296(sp)
   15244:	0000                	unimp
   15246:	0000                	unimp
   15248:	3139                	addiw	sp,sp,-18
   1524a:	0a32                	slli	s4,s4,0xc
   1524c:	0000                	unimp
   1524e:	0000                	unimp
   15250:	3139                	addiw	sp,sp,-18
   15252:	3030                	fld	fa2,96(s0)
   15254:	0000                	unimp
   15256:	0000                	unimp
   15258:	3230                	fld	fa2,96(a2)
   1525a:	350a                	fld	fa0,160(sp)
   1525c:	0000                	unimp
   1525e:	0000                	unimp
   15260:	33373037          	lui	zero,0x33373
   15264:	0000                	unimp
   15266:	0000                	unimp
   15268:	350a                	fld	fa0,160(sp)
   1526a:	3835                	addiw	a6,a6,-19
   1526c:	0000                	unimp
   1526e:	0000                	unimp
   15270:	3634                	fld	fa3,104(a2)
   15272:	00000a33          	add	s4,zero,zero
   15276:	0000                	unimp
   15278:	3436                	fld	fs0,360(sp)
   1527a:	3131                	addiw	sp,sp,-20
   1527c:	0000                	unimp
   1527e:	0000                	unimp
   15280:	3735                	addiw	a4,a4,-19
   15282:	350a                	fld	fa0,160(sp)
   15284:	0000                	unimp
   15286:	0000                	unimp
   15288:	3131                	addiw	sp,sp,-20
   1528a:	3534                	fld	fa3,104(a0)
   1528c:	0000                	unimp
   1528e:	0000                	unimp
   15290:	370a                	fld	fa4,160(sp)
   15292:	3239                	addiw	tp,tp,-18
   15294:	0000                	unimp
   15296:	0000                	unimp
   15298:	0a353133          	0xa353133
   1529c:	0000                	unimp
   1529e:	0000                	unimp
   152a0:	3934                	fld	fa3,112(a0)
   152a2:	3839                	addiw	a6,a6,-18
   152a4:	0000                	unimp
   152a6:	0000                	unimp
   152a8:	3438                	fld	fa4,104(s0)
   152aa:	350a                	fld	fa0,160(sp)
   152ac:	0000                	unimp
   152ae:	0000                	unimp
   152b0:	34323537          	lui	a0,0x34323
   152b4:	0000                	unimp
   152b6:	0000                	unimp
   152b8:	0a36                	slli	s4,s4,0xd
   152ba:	3239                	addiw	tp,tp,-18
   152bc:	0000                	unimp
   152be:	0000                	unimp
   152c0:	3032                	fld	ft0,296(sp)
   152c2:	00003037          	lui	zero,0x3
   152c6:	0000                	unimp
   152c8:	310a                	fld	ft2,160(sp)
   152ca:	3035                	0x3035
   152cc:	0000                	unimp
   152ce:	0000                	unimp
   152d0:	3932                	fld	fs2,296(sp)
   152d2:	0a32                	slli	s4,s4,0xc
   152d4:	0000                	unimp
   152d6:	0000                	unimp
   152d8:	3138                	fld	fa4,96(a0)
   152da:	3734                	fld	fa3,104(a4)
   152dc:	0000                	unimp
   152de:	0000                	unimp
   152e0:	3631                	addiw	a2,a2,-20
   152e2:	370a                	fld	fa4,160(sp)
   152e4:	0000                	unimp
   152e6:	0000                	unimp
   152e8:	3539                	addiw	a0,a0,-18
   152ea:	3730                	fld	fa2,104(a4)
   152ec:	0000                	unimp
   152ee:	0000                	unimp
   152f0:	0a34                	addi	a3,sp,280
   152f2:	3638                	fld	fa4,104(a2)
   152f4:	0000                	unimp
   152f6:	0000                	unimp
   152f8:	3138                	fld	fa4,96(a0)
   152fa:	3038                	fld	fa4,96(s0)
   152fc:	0000                	unimp
   152fe:	0000                	unimp
   15300:	330a                	fld	ft6,160(sp)
   15302:	3231                	addiw	tp,tp,-20
   15304:	0000                	unimp
   15306:	0000                	unimp
   15308:	3938                	fld	fa4,112(a0)
   1530a:	0a30                	addi	a2,sp,280
   1530c:	0000                	unimp
   1530e:	0000                	unimp
   15310:	38323537          	lui	a0,0x38323
   15314:	0000                	unimp
   15316:	0000                	unimp
   15318:	3535                	addiw	a0,a0,-19
   1531a:	330a                	fld	ft6,160(sp)
   1531c:	0000                	unimp
   1531e:	0000                	unimp
   15320:	3539                	addiw	a0,a0,-18
   15322:	3336                	fld	ft6,360(sp)
   15324:	0000                	unimp
   15326:	0000                	unimp
   15328:	0a35                	addi	s4,s4,13
   1532a:	3139                	addiw	sp,sp,-18
   1532c:	0000                	unimp
   1532e:	0000                	unimp
   15330:	3432                	fld	fs0,296(sp)
   15332:	3631                	addiw	a2,a2,-20
   15334:	0000                	unimp
   15336:	0000                	unimp
   15338:	390a                	fld	fs2,160(sp)
   1533a:	3536                	fld	fa0,360(sp)
   1533c:	0000                	unimp
   1533e:	0000                	unimp
   15340:	3132                	fld	ft2,296(sp)
   15342:	0a30                	addi	a2,sp,280
   15344:	0000                	unimp
   15346:	0000                	unimp
   15348:	31333533          	0x31333533
   1534c:	0000                	unimp
   1534e:	0000                	unimp
   15350:	3131                	addiw	sp,sp,-20
   15352:	390a                	fld	fs2,160(sp)
   15354:	0000                	unimp
   15356:	0000                	unimp
   15358:	33303737          	lui	a4,0x33303
   1535c:	0000                	unimp
   1535e:	0000                	unimp
   15360:	31350a37          	lui	s4,0x31350
   15364:	0000                	unimp
   15366:	0000                	unimp
   15368:	3136                	fld	ft2,360(sp)
   1536a:	3931                	addiw	s2,s2,-20
   1536c:	0000                	unimp
   1536e:	0000                	unimp
   15370:	360a                	fld	fa2,160(sp)
   15372:	3034                	fld	fa3,96(s0)
   15374:	0000                	unimp
   15376:	0000                	unimp
   15378:	3838                	fld	fa4,112(s0)
   1537a:	0a30                	addi	a2,sp,280
   1537c:	0000                	unimp
   1537e:	0000                	unimp
   15380:	3831                	addiw	a6,a6,-20
   15382:	3539                	addiw	a0,a0,-18
   15384:	0000                	unimp
   15386:	0000                	unimp
   15388:	380a3937          	lui	s2,0x380a3
   1538c:	0000                	unimp
   1538e:	0000                	unimp
   15390:	3634                	fld	fa3,104(a2)
   15392:	3834                	fld	fa3,112(s0)
   15394:	0000                	unimp
   15396:	0000                	unimp
   15398:	0a35                	addi	s4,s4,13
   1539a:	3538                	fld	fa4,104(a0)
   1539c:	0000                	unimp
   1539e:	0000                	unimp
   153a0:	3936                	fld	fs2,360(sp)
   153a2:	3730                	fld	fa2,104(a4)
   153a4:	0000                	unimp
   153a6:	0000                	unimp
   153a8:	350a                	fld	fa0,160(sp)
   153aa:	00003133          	snez	sp,zero
   153ae:	0000                	unimp
   153b0:	3935                	addiw	s2,s2,-19
   153b2:	00000a33          	add	s4,zero,zero
   153b6:	0000                	unimp
   153b8:	3532                	fld	fa0,296(sp)
   153ba:	3830                	fld	fa2,112(s0)
   153bc:	0000                	unimp
   153be:	0000                	unimp
   153c0:	3331                	addiw	t1,t1,-20
   153c2:	360a                	fld	fa2,160(sp)
   153c4:	0000                	unimp
   153c6:	0000                	unimp
   153c8:	3731                	addiw	a4,a4,-20
   153ca:	3939                	addiw	s2,s2,-18
   153cc:	0000                	unimp
   153ce:	0000                	unimp
   153d0:	0a39                	addi	s4,s4,14
   153d2:	3635                	addiw	a2,a2,-19
   153d4:	0000                	unimp
   153d6:	0000                	unimp
   153d8:	3939                	addiw	s2,s2,-18
   153da:	3039                	0x3039
   153dc:	0000                	unimp
   153de:	0000                	unimp
   153e0:	380a                	fld	fa6,160(sp)
   153e2:	3936                	fld	fs2,360(sp)
   153e4:	0000                	unimp
   153e6:	0000                	unimp
   153e8:	3932                	fld	fs2,296(sp)
   153ea:	0a31                	addi	s4,s4,12
   153ec:	0000                	unimp
   153ee:	0000                	unimp
   153f0:	3035                	0x3035
   153f2:	00003833          	snez	a6,zero
   153f6:	0000                	unimp
   153f8:	3432                	fld	fs0,296(sp)
   153fa:	340a                	fld	fs0,160(sp)
   153fc:	0000                	unimp
   153fe:	0000                	unimp
   15400:	3936                	fld	fs2,360(sp)
   15402:	00003933          	snez	s2,zero
   15406:	0000                	unimp
   15408:	39310a37          	lui	s4,0x39310
   1540c:	0000                	unimp
   1540e:	0000                	unimp
   15410:	3539                	addiw	a0,a0,-18
   15412:	3138                	fld	fa4,96(a0)
   15414:	0000                	unimp
   15416:	0000                	unimp
   15418:	350a                	fld	fa0,160(sp)
   1541a:	00003537          	lui	a0,0x3
   1541e:	0000                	unimp
   15420:	3830                	fld	fa2,112(s0)
   15422:	0a32                	slli	s4,s4,0xc
   15424:	0000                	unimp
   15426:	0000                	unimp
   15428:	3436                	fld	fs0,360(sp)
   1542a:	00003133          	snez	sp,zero
   1542e:	0000                	unimp
   15430:	3430                	fld	fa2,104(s0)
   15432:	390a                	fld	fs2,160(sp)
   15434:	0000                	unimp
   15436:	0000                	unimp
   15438:	34303533          	0x34303533
   1543c:	0000                	unimp
   1543e:	0000                	unimp
   15440:	0a35                	addi	s4,s4,13
   15442:	3332                	fld	ft6,296(sp)
   15444:	0000                	unimp
   15446:	0000                	unimp
   15448:	3730                	fld	fa2,104(a4)
   1544a:	3432                	fld	fs0,296(sp)
   1544c:	0000                	unimp
   1544e:	0000                	unimp
   15450:	350a                	fld	fa0,160(sp)
   15452:	3636                	fld	fa2,360(sp)
   15454:	0000                	unimp
   15456:	0000                	unimp
   15458:	0a333037          	lui	zero,0xa333
   1545c:	0000                	unimp
   1545e:	0000                	unimp
   15460:	3031                	0x3031
   15462:	3631                	addiw	a2,a2,-20
   15464:	0000                	unimp
   15466:	0000                	unimp
   15468:	340a3933          	0x340a3933
   1546c:	0000                	unimp
   1546e:	0000                	unimp
   15470:	3635                	addiw	a2,a2,-19
   15472:	3734                	fld	fa3,104(a4)
   15474:	0000                	unimp
   15476:	0000                	unimp
   15478:	31340a33          	0x31340a33
   1547c:	0000                	unimp
   1547e:	0000                	unimp
   15480:	3231                	addiw	tp,tp,-20
   15482:	3539                	addiw	a0,a0,-18
   15484:	0000                	unimp
   15486:	0000                	unimp
   15488:	370a                	fld	fa4,160(sp)
   1548a:	3331                	addiw	t1,t1,-20
   1548c:	0000                	unimp
   1548e:	0000                	unimp
   15490:	3336                	fld	ft6,360(sp)
   15492:	0a38                	addi	a4,sp,280
   15494:	0000                	unimp
   15496:	0000                	unimp
   15498:	3532                	fld	fa0,296(sp)
   1549a:	3035                	0x3035
   1549c:	0000                	unimp
   1549e:	0000                	unimp
   154a0:	3434                	fld	fa3,104(s0)
   154a2:	390a                	fld	fs2,160(sp)
   154a4:	0000                	unimp
   154a6:	0000                	unimp
   154a8:	3134                	fld	fa3,96(a0)
   154aa:	3930                	fld	fa2,112(a0)
   154ac:	0000                	unimp
   154ae:	0000                	unimp
   154b0:	0a39                	addi	s4,s4,14
   154b2:	3735                	addiw	a4,a4,-19
   154b4:	0000                	unimp
   154b6:	0000                	unimp
   154b8:	3732                	fld	fa4,296(sp)
   154ba:	0a32                	slli	s4,s4,0xc
   154bc:	0000                	unimp
   154be:	0000                	unimp
   154c0:	3031                	0x3031
   154c2:	3332                	fld	ft6,296(sp)
   154c4:	0000                	unimp
   154c6:	0000                	unimp
   154c8:	3830                	fld	fa2,112(s0)
   154ca:	350a                	fld	fa0,160(sp)
   154cc:	0000                	unimp
   154ce:	0000                	unimp
   154d0:	3536                	fld	fa0,360(sp)
   154d2:	3338                	fld	fa4,96(a4)
   154d4:	0000                	unimp
   154d6:	0000                	unimp
   154d8:	310a                	fld	ft2,160(sp)
   154da:	3834                	fld	fa3,112(s0)
   154dc:	0000                	unimp
   154de:	0000                	unimp
   154e0:	3936                	fld	fs2,360(sp)
   154e2:	0a34                	addi	a3,sp,280
   154e4:	0000                	unimp
   154e6:	0000                	unimp
   154e8:	3535                	addiw	a0,a0,-19
   154ea:	3334                	fld	fa3,96(a4)
   154ec:	0000                	unimp
   154ee:	0000                	unimp
   154f0:	3235                	addiw	tp,tp,-19
   154f2:	370a                	fld	fa4,160(sp)
   154f4:	0000                	unimp
   154f6:	0000                	unimp
   154f8:	3835                	addiw	a6,a6,-19
   154fa:	3934                	fld	fa3,112(a0)
   154fc:	0000                	unimp
   154fe:	0000                	unimp
   15500:	0a31                	addi	s4,s4,12
   15502:	3031                	0x3031
   15504:	0000                	unimp
   15506:	0000                	unimp
   15508:	3135                	addiw	sp,sp,-19
   1550a:	3232                	fld	ft4,296(sp)
   1550c:	0000                	unimp
   1550e:	0000                	unimp
   15510:	350a                	fld	fa0,160(sp)
   15512:	00003633          	snez	a2,zero
   15516:	0000                	unimp
   15518:	3932                	fld	fs2,296(sp)
   1551a:	0a31                	addi	s4,s4,12
   1551c:	0000                	unimp
   1551e:	0000                	unimp
   15520:	3136                	fld	ft2,360(sp)
   15522:	3336                	fld	ft6,360(sp)
   15524:	0000                	unimp
   15526:	0000                	unimp
   15528:	3538                	fld	fa4,104(a0)
   1552a:	380a                	fld	fa6,160(sp)
   1552c:	0000                	unimp
   1552e:	0000                	unimp
   15530:	3236                	fld	ft4,360(sp)
   15532:	3138                	fld	fa4,96(a0)
   15534:	0000                	unimp
   15536:	0000                	unimp
   15538:	0a30                	addi	a2,sp,280
   1553a:	3635                	addiw	a2,a2,-19
   1553c:	0000                	unimp
   1553e:	0000                	unimp
   15540:	3230                	fld	fa2,96(a2)
   15542:	3435                	addiw	s0,s0,-19
   15544:	0000                	unimp
   15546:	0000                	unimp
   15548:	380a                	fld	fa6,160(sp)
   1554a:	3935                	addiw	s2,s2,-19
   1554c:	0000                	unimp
   1554e:	0000                	unimp
   15550:	3935                	addiw	s2,s2,-19
   15552:	0a35                	addi	s4,s4,13
   15554:	0000                	unimp
   15556:	0000                	unimp
   15558:	3135                	addiw	sp,sp,-19
   1555a:	3435                	addiw	s0,s0,-19
   1555c:	0000                	unimp
   1555e:	0000                	unimp
   15560:	3438                	fld	fa4,104(s0)
   15562:	370a                	fld	fa4,160(sp)
   15564:	0000                	unimp
   15566:	0000                	unimp
   15568:	36303933          	0x36303933
   1556c:	0000                	unimp
   1556e:	0000                	unimp
   15570:	0a35                	addi	s4,s4,13
   15572:	3435                	addiw	s0,s0,-19
   15574:	0000                	unimp
   15576:	0000                	unimp
   15578:	30303137          	lui	sp,0x30303
   1557c:	0000                	unimp
   1557e:	0000                	unimp
   15580:	310a                	fld	ft2,160(sp)
   15582:	00003337          	lui	t1,0x3
   15586:	0000                	unimp
   15588:	3932                	fld	fs2,296(sp)
   1558a:	0a34                	addi	a3,sp,280
   1558c:	0000                	unimp
   1558e:	0000                	unimp
   15590:	3832                	fld	fa6,296(sp)
   15592:	3231                	addiw	tp,tp,-20
   15594:	0000                	unimp
   15596:	0000                	unimp
   15598:	3131                	addiw	sp,sp,-20
   1559a:	350a                	fld	fa0,160(sp)
   1559c:	0000                	unimp
   1559e:	0000                	unimp
   155a0:	3535                	addiw	a0,a0,-19
   155a2:	00003333          	snez	t1,zero
   155a6:	0000                	unimp
   155a8:	32330a37          	lui	s4,0x32330
   155ac:	0000                	unimp
   155ae:	0000                	unimp
   155b0:	3539                	addiw	a0,a0,-18
   155b2:	3638                	fld	fa4,104(a2)
   155b4:	0000                	unimp
   155b6:	0000                	unimp
   155b8:	330a                	fld	ft6,160(sp)
   155ba:	3535                	addiw	a0,a0,-19
   155bc:	0000                	unimp
   155be:	0000                	unimp
   155c0:	3539                	addiw	a0,a0,-18
   155c2:	0a38                	addi	a4,sp,280
   155c4:	0000                	unimp
   155c6:	0000                	unimp
   155c8:	3334                	fld	fa3,96(a4)
   155ca:	00003337          	lui	t1,0x3
   155ce:	0000                	unimp
   155d0:	3432                	fld	fs0,296(sp)
   155d2:	370a                	fld	fa4,160(sp)
   155d4:	0000                	unimp
   155d6:	0000                	unimp
   155d8:	3638                	fld	fa4,104(a2)
   155da:	3839                	addiw	a6,a6,-18
   155dc:	0000                	unimp
   155de:	0000                	unimp
   155e0:	0a38                	addi	a4,sp,280
   155e2:	00003637          	lui	a2,0x3
   155e6:	0000                	unimp
   155e8:	30360a37          	lui	s4,0x30360
   155ec:	0000                	unimp
   155ee:	0000                	unimp
   155f0:	39373237          	lui	tp,0x39373
   155f4:	0000                	unimp
   155f6:	0000                	unimp
   155f8:	310a                	fld	ft2,160(sp)
   155fa:	3230                	fld	fa2,96(a2)
   155fc:	0000                	unimp
   155fe:	0000                	unimp
   15600:	0a343637          	lui	a2,0xa343
   15604:	0000                	unimp
   15606:	0000                	unimp
   15608:	33343033          	0x33343033
   1560c:	0000                	unimp
   1560e:	0000                	unimp
   15610:	3536                	fld	fa0,360(sp)
   15612:	310a                	fld	ft2,160(sp)
   15614:	0000                	unimp
   15616:	0000                	unimp
   15618:	3334                	fld	fa3,96(a4)
   1561a:	00003437          	lui	s0,0x3
   1561e:	0000                	unimp
   15620:	0a32                	slli	s4,s4,0xc
   15622:	00003833          	snez	a6,zero
   15626:	0000                	unimp
   15628:	31343237          	lui	tp,0x31343
   1562c:	0000                	unimp
   1562e:	0000                	unimp
   15630:	320a                	fld	ft4,160(sp)
   15632:	3838                	fld	fa4,112(s0)
   15634:	0000                	unimp
   15636:	0000                	unimp
   15638:	3730                	fld	fa2,104(a4)
   1563a:	350a                	fld	fa0,160(sp)
   1563c:	0000                	unimp
   1563e:	0000                	unimp
   15640:	3338                	fld	fa4,96(a4)
   15642:	3630                	fld	fa2,104(a2)
   15644:	0000                	unimp
   15646:	0000                	unimp
   15648:	37390a37          	lui	s4,0x37390
   1564c:	0000                	unimp
   1564e:	0000                	unimp
   15650:	35383633          	0x35383633
   15654:	0000                	unimp
   15656:	0000                	unimp
   15658:	360a                	fld	fa2,160(sp)
   1565a:	3035                	0x3035
   1565c:	0000                	unimp
   1565e:	0000                	unimp
   15660:	3138                	fld	fa4,96(a0)
   15662:	0a32                	slli	s4,s4,0xc
   15664:	0000                	unimp
   15666:	0000                	unimp
   15668:	3139                	addiw	sp,sp,-18
   1566a:	3339                	addiw	t1,t1,-18
   1566c:	0000                	unimp
   1566e:	0000                	unimp
   15670:	3435                	addiw	s0,s0,-19
   15672:	320a                	fld	ft4,160(sp)
   15674:	0000                	unimp
   15676:	0000                	unimp
   15678:	34323837          	lui	a6,0x34323
   1567c:	0000                	unimp
   1567e:	0000                	unimp
   15680:	0a34                	addi	a3,sp,280
   15682:	3435                	addiw	s0,s0,-19
   15684:	0000                	unimp
   15686:	0000                	unimp
   15688:	3730                	fld	fa2,104(a4)
   1568a:	3739                	addiw	a4,a4,-18
   1568c:	0000                	unimp
   1568e:	0000                	unimp
   15690:	340a                	fld	fs0,160(sp)
   15692:	00003037          	lui	zero,0x3
   15696:	0000                	unimp
   15698:	3631                	addiw	a2,a2,-20
   1569a:	00000a33          	add	s4,zero,zero
   1569e:	0000                	unimp
   156a0:	3638                	fld	fa4,104(a2)
   156a2:	00003733          	snez	a4,zero
   156a6:	0000                	unimp
   156a8:	0a30                	addi	a2,sp,280
   156aa:	3834                	fld	fa3,112(s0)
   156ac:	0000                	unimp
   156ae:	0000                	unimp
   156b0:	34383437          	lui	s0,0x34383
   156b4:	0000                	unimp
   156b6:	0000                	unimp
   156b8:	340a                	fld	fs0,160(sp)
   156ba:	00003237          	lui	tp,0x3
   156be:	0000                	unimp
   156c0:	3131                	addiw	sp,sp,-20
   156c2:	0a34                	addi	a3,sp,280
   156c4:	0000                	unimp
   156c6:	0000                	unimp
   156c8:	39303333          	0x39303333
   156cc:	0000                	unimp
   156ce:	0000                	unimp
   156d0:	3536                	fld	fa0,360(sp)
   156d2:	380a                	fld	fa6,160(sp)
   156d4:	0000                	unimp
   156d6:	0000                	unimp
   156d8:	3030                	fld	fa2,96(s0)
   156da:	3936                	fld	fs2,360(sp)
   156dc:	0000                	unimp
   156de:	0000                	unimp
   156e0:	0a34                	addi	a3,sp,280
   156e2:	00003037          	lui	zero,0x3
   156e6:	0000                	unimp
   156e8:	3231                	addiw	tp,tp,-20
   156ea:	3231                	addiw	tp,tp,-20
   156ec:	0000                	unimp
   156ee:	0000                	unimp
   156f0:	360a                	fld	fa2,160(sp)
   156f2:	3430                	fld	fa2,104(s0)
   156f4:	0000                	unimp
   156f6:	0000                	unimp
   156f8:	3638                	fld	fa4,104(a2)
   156fa:	0a39                	addi	s4,s4,14
   156fc:	0000                	unimp
   156fe:	0000                	unimp
   15700:	3539                	addiw	a0,a0,-18
   15702:	3238                	fld	fa4,96(a2)
   15704:	0000                	unimp
   15706:	0000                	unimp
   15708:	3032                	fld	ft0,296(sp)
   1570a:	370a                	fld	fa4,160(sp)
   1570c:	0000                	unimp
   1570e:	0000                	unimp
   15710:	3935                	addiw	s2,s2,-19
   15712:	3538                	fld	fa4,104(a0)
   15714:	0000                	unimp
   15716:	0000                	unimp
   15718:	0a39                	addi	s4,s4,14
   1571a:	3432                	fld	fs0,296(sp)
   1571c:	0000                	unimp
   1571e:	0000                	unimp
   15720:	37393033          	0x37393033
   15724:	0000                	unimp
   15726:	0000                	unimp
   15728:	320a                	fld	ft4,160(sp)
   1572a:	3638                	fld	fa4,104(a2)
   1572c:	0000                	unimp
   1572e:	0000                	unimp
   15730:	3730                	fld	fa2,104(a4)
   15732:	0a36                	slli	s4,s4,0xd
   15734:	0000                	unimp
   15736:	0000                	unimp
   15738:	3736                	fld	fa4,360(sp)
   1573a:	3234                	fld	fa3,96(a2)
   1573c:	0000                	unimp
   1573e:	0000                	unimp
   15740:	3238                	fld	fa4,96(a2)
   15742:	390a                	fld	fs2,160(sp)
   15744:	0000                	unimp
   15746:	0000                	unimp
   15748:	31363637          	lui	a2,0x31363
   1574c:	0000                	unimp
   1574e:	0000                	unimp
   15750:	0a30                	addi	a2,sp,280
   15752:	3438                	fld	fa4,104(s0)
   15754:	0000                	unimp
   15756:	0000                	unimp
   15758:	3735                	addiw	a4,a4,-19
   1575a:	3132                	fld	ft2,296(sp)
   1575c:	0000                	unimp
   1575e:	0000                	unimp
   15760:	340a                	fld	fs0,160(sp)
   15762:	3130                	fld	fa2,96(a0)
   15764:	0000                	unimp
   15766:	0000                	unimp
   15768:	3131                	addiw	sp,sp,-20
   1576a:	00000a37          	lui	s4,0x0
   1576e:	0000                	unimp
   15770:	3032                	fld	ft0,296(sp)
   15772:	00003437          	lui	s0,0x3
   15776:	0000                	unimp
   15778:	3531                	addiw	a0,a0,-20
   1577a:	320a                	fld	ft4,160(sp)
   1577c:	0000                	unimp
   1577e:	0000                	unimp
   15780:	38323333          	0x38323333
   15784:	0000                	unimp
   15786:	0000                	unimp
   15788:	310a                	fld	ft2,160(sp)
   1578a:	3535                	addiw	a0,a0,-19
   1578c:	0000                	unimp
   1578e:	0000                	unimp
   15790:	3635                	addiw	a2,a2,-19
   15792:	0a36                	slli	s4,s4,0xd
   15794:	0000                	unimp
   15796:	0000                	unimp
   15798:	3634                	fld	fa3,104(a2)
   1579a:	3732                	fld	fa4,296(sp)
   1579c:	0000                	unimp
   1579e:	0000                	unimp
   157a0:	360a3537          	lui	a0,0x360a3
   157a4:	0000                	unimp
   157a6:	0000                	unimp
   157a8:	3936                	fld	fs2,360(sp)
   157aa:	3039                	0x3039
   157ac:	0000                	unimp
   157ae:	0000                	unimp
   157b0:	390a                	fld	fs2,160(sp)
   157b2:	3039                	0x3039
   157b4:	0000                	unimp
   157b6:	0000                	unimp
   157b8:	350a3033          	0x350a3033
   157bc:	0000                	unimp
   157be:	0000                	unimp
   157c0:	3839                	addiw	a6,a6,-18
   157c2:	3730                	fld	fa2,104(a4)
   157c4:	0000                	unimp
   157c6:	0000                	unimp
   157c8:	0a34                	addi	a3,sp,280
   157ca:	3534                	fld	fa3,104(a0)
   157cc:	0000                	unimp
   157ce:	0000                	unimp
   157d0:	3438                	fld	fa4,104(s0)
   157d2:	00003037          	lui	zero,0x3
   157d6:	0000                	unimp
   157d8:	390a                	fld	fs2,160(sp)
   157da:	00003837          	lui	a6,0x3
   157de:	0000                	unimp
   157e0:	3131                	addiw	sp,sp,-20
   157e2:	0a35                	addi	s4,s4,13
   157e4:	0000                	unimp
   157e6:	0000                	unimp
   157e8:	38363837          	lui	a6,0x38363
   157ec:	0000                	unimp
   157ee:	0000                	unimp
   157f0:	3034                	fld	fa3,96(s0)
   157f2:	360a                	fld	fa2,160(sp)
   157f4:	0000                	unimp
   157f6:	0000                	unimp
   157f8:	3236                	fld	ft4,360(sp)
   157fa:	00003333          	snez	t1,zero
   157fe:	0000                	unimp
   15800:	31370a33          	0x31370a33
   15804:	0000                	unimp
   15806:	0000                	unimp
   15808:	35383633          	0x35383633
   1580c:	0000                	unimp
   1580e:	0000                	unimp
   15810:	360a                	fld	fa2,160(sp)
   15812:	00003737          	lui	a4,0x3
   15816:	0000                	unimp
   15818:	3032                	fld	ft0,296(sp)
   1581a:	0a39                	addi	s4,s4,14
   1581c:	0000                	unimp
   1581e:	0000                	unimp
   15820:	3631                	addiw	a2,a2,-20
   15822:	3730                	fld	fa2,104(a4)
   15824:	0000                	unimp
   15826:	0000                	unimp
   15828:	3532                	fld	fa0,296(sp)
   1582a:	350a                	fld	fa0,160(sp)
   1582c:	0000                	unimp
   1582e:	0000                	unimp
   15830:	3530                	fld	fa2,104(a0)
   15832:	3039                	0x3039
   15834:	0000                	unimp
   15836:	0000                	unimp
   15838:	0a38                	addi	a4,sp,280
   1583a:	3138                	fld	fa4,96(a0)
   1583c:	0000                	unimp
   1583e:	0000                	unimp
   15840:	3939                	addiw	s2,s2,-18
   15842:	0a39                	addi	s4,s4,14
   15844:	0000                	unimp
   15846:	0000                	unimp
   15848:	33333737          	lui	a4,0x33333
   1584c:	0000                	unimp
   1584e:	0000                	unimp
   15850:	3630                	fld	fa2,104(a2)
   15852:	350a                	fld	fa0,160(sp)
   15854:	0000                	unimp
   15856:	0000                	unimp
   15858:	3431                	addiw	s0,s0,-20
   1585a:	00003137          	lui	sp,0x3
   1585e:	0000                	unimp
   15860:	0a32                	slli	s4,s4,0xc
   15862:	3631                	addiw	a2,a2,-20
   15864:	0000                	unimp
   15866:	0000                	unimp
   15868:	3030                	fld	fa2,96(s0)
   1586a:	00003833          	snez	a6,zero
   1586e:	0000                	unimp
   15870:	340a                	fld	fs0,160(sp)
   15872:	3430                	fld	fa2,104(s0)
   15874:	0000                	unimp
   15876:	0000                	unimp
   15878:	0a323333          	0xa323333
   1587c:	0000                	unimp
   1587e:	0000                	unimp
   15880:	3335                	addiw	t1,t1,-19
   15882:	00003533          	snez	a0,zero
   15886:	0000                	unimp
   15888:	3935                	addiw	s2,s2,-19
   1588a:	350a                	fld	fa0,160(sp)
   1588c:	0000                	unimp
   1588e:	0000                	unimp
   15890:	38363333          	0x38363333
   15894:	0000                	unimp
   15896:	0000                	unimp
   15898:	0a34                	addi	a3,sp,280
   1589a:	3331                	addiw	t1,t1,-20
   1589c:	0000                	unimp
   1589e:	0000                	unimp
   158a0:	3339                	addiw	t1,t1,-18
   158a2:	3436                	fld	fs0,360(sp)
   158a4:	0000                	unimp
   158a6:	0000                	unimp
   158a8:	390a                	fld	fs2,160(sp)
   158aa:	00003233          	snez	tp,zero
   158ae:	0000                	unimp
   158b0:	3838                	fld	fa4,112(s0)
   158b2:	0a36                	slli	s4,s4,0xd
   158b4:	0000                	unimp
   158b6:	0000                	unimp
   158b8:	34363733          	0x34363733
   158bc:	0000                	unimp
   158be:	0000                	unimp
   158c0:	3731                	addiw	a4,a4,-20
   158c2:	370a                	fld	fa4,160(sp)
   158c4:	0000                	unimp
   158c6:	0000                	unimp
   158c8:	3136                	fld	ft2,360(sp)
   158ca:	3335                	addiw	t1,t1,-19
   158cc:	0000                	unimp
   158ce:	0000                	unimp
   158d0:	0a31                	addi	s4,s4,12
   158d2:	00003637          	lui	a2,0x3
   158d6:	0000                	unimp
   158d8:	3432                	fld	fs0,296(sp)
   158da:	00003233          	snez	tp,zero
   158de:	0000                	unimp
   158e0:	320a                	fld	ft4,160(sp)
   158e2:	00003533          	snez	a0,zero
   158e6:	0000                	unimp
   158e8:	3434                	fld	fa3,104(s0)
   158ea:	0a36                	slli	s4,s4,0xd
   158ec:	0000                	unimp
   158ee:	0000                	unimp
   158f0:	3739                	addiw	a4,a4,-18
   158f2:	3434                	fld	fa3,104(s0)
   158f4:	0000                	unimp
   158f6:	0000                	unimp
   158f8:	3935                	addiw	s2,s2,-19
   158fa:	370a                	fld	fa4,160(sp)
   158fc:	0000                	unimp
   158fe:	0000                	unimp
   15900:	33333937          	lui	s2,0x33333
   15904:	0000                	unimp
   15906:	0000                	unimp
   15908:	0a34                	addi	a3,sp,280
   1590a:	3535                	addiw	a0,a0,-19
   1590c:	0000                	unimp
   1590e:	0000                	unimp
   15910:	3831                	addiw	a6,a6,-20
   15912:	3635                	addiw	a2,a2,-19
   15914:	0000                	unimp
   15916:	0000                	unimp
   15918:	370a                	fld	fa4,160(sp)
   1591a:	3130                	fld	fa2,96(a0)
   1591c:	0000                	unimp
   1591e:	0000                	unimp
   15920:	3238                	fld	fa4,96(a2)
   15922:	0a38                	addi	a4,sp,280
   15924:	0000                	unimp
   15926:	0000                	unimp
   15928:	3634                	fld	fa3,104(a2)
   1592a:	3936                	fld	fs2,360(sp)
   1592c:	0000                	unimp
   1592e:	0000                	unimp
   15930:	390a3637          	lui	a2,0x390a3
   15934:	0000                	unimp
   15936:	0000                	unimp
   15938:	3232                	fld	ft4,296(sp)
   1593a:	00003537          	lui	a0,0x3
   1593e:	0000                	unimp
   15940:	0a32                	slli	s4,s4,0xc
   15942:	3732                	fld	fa4,296(sp)
   15944:	0000                	unimp
   15946:	0000                	unimp
   15948:	3736                	fld	fa4,360(sp)
   1594a:	00003237          	lui	tp,0x3
   1594e:	0000                	unimp
   15950:	360a                	fld	fa2,160(sp)
   15952:	3136                	fld	ft2,360(sp)
   15954:	0000                	unimp
   15956:	0000                	unimp
   15958:	3036                	fld	ft0,360(sp)
   1595a:	0a36                	slli	s4,s4,0xd
   1595c:	0000                	unimp
   1595e:	0000                	unimp
   15960:	3234                	fld	fa3,96(a2)
   15962:	3236                	fld	ft4,360(sp)
   15964:	0000                	unimp
   15966:	0000                	unimp
   15968:	3139                	addiw	sp,sp,-18
   1596a:	310a                	fld	ft2,160(sp)
   1596c:	0000                	unimp
   1596e:	0000                	unimp
   15970:	3038                	fld	fa4,96(s0)
   15972:	3736                	fld	fa4,360(sp)
   15974:	0000                	unimp
   15976:	0000                	unimp
   15978:	0a34                	addi	a3,sp,280
   1597a:	3831                	addiw	a6,a6,-20
   1597c:	0000                	unimp
   1597e:	0000                	unimp
   15980:	3135                	addiw	sp,sp,-19
   15982:	3435                	addiw	s0,s0,-19
   15984:	0000                	unimp
   15986:	0000                	unimp
   15988:	350a                	fld	fa0,160(sp)
   1598a:	00003437          	lui	s0,0x3
   1598e:	0000                	unimp
   15990:	3535                	addiw	a0,a0,-19
   15992:	0a32                	slli	s4,s4,0xc
   15994:	0000                	unimp
   15996:	0000                	unimp
   15998:	32383837          	lui	a6,0x32383
   1599c:	0000                	unimp
   1599e:	0000                	unimp
   159a0:	3332                	fld	ft6,296(sp)
   159a2:	330a                	fld	ft6,160(sp)
   159a4:	0000                	unimp
   159a6:	0000                	unimp
   159a8:	3532                	fld	fa0,296(sp)
   159aa:	3236                	fld	ft4,360(sp)
   159ac:	0000                	unimp
   159ae:	0000                	unimp
   159b0:	0a31                	addi	s4,s4,12
   159b2:	3236                	fld	ft4,360(sp)
   159b4:	0000                	unimp
   159b6:	0000                	unimp
   159b8:	32333537          	lui	a0,0x32333
   159bc:	0000                	unimp
   159be:	0000                	unimp
   159c0:	340a                	fld	fs0,160(sp)
   159c2:	3736                	fld	fa4,360(sp)
   159c4:	0000                	unimp
   159c6:	0000                	unimp
   159c8:	3232                	fld	ft4,296(sp)
   159ca:	0a35                	addi	s4,s4,13
   159cc:	0000                	unimp
   159ce:	0000                	unimp
   159d0:	39373137          	lui	sp,0x39373
   159d4:	0000                	unimp
   159d6:	0000                	unimp
   159d8:	3335                	addiw	t1,t1,-19
   159da:	390a                	fld	fs2,160(sp)
   159dc:	0000                	unimp
   159de:	0000                	unimp
   159e0:	3736                	fld	fa4,360(sp)
   159e2:	3339                	addiw	t1,t1,-18
   159e4:	0000                	unimp
   159e6:	0000                	unimp
   159e8:	370a                	fld	fa4,160(sp)
   159ea:	3738                	fld	fa4,104(a4)
   159ec:	0000                	unimp
   159ee:	0000                	unimp
   159f0:	3934                	fld	fa3,112(a0)
   159f2:	0a32                	slli	s4,s4,0xc
   159f4:	0000                	unimp
   159f6:	0000                	unimp
   159f8:	3132                	fld	ft2,296(sp)
   159fa:	3334                	fld	fa3,96(a4)
   159fc:	0000                	unimp
   159fe:	0000                	unimp
   15a00:	3339                	addiw	t1,t1,-18
   15a02:	350a                	fld	fa0,160(sp)
   15a04:	0000                	unimp
   15a06:	0000                	unimp
   15a08:	3831                	addiw	a6,a6,-20
   15a0a:	3632                	fld	fa2,296(sp)
   15a0c:	0000                	unimp
   15a0e:	0000                	unimp
   15a10:	0a36                	slli	s4,s4,0xd
   15a12:	00003937          	lui	s2,0x3
   15a16:	0000                	unimp
   15a18:	3630                	fld	fa2,104(a2)
   15a1a:	3038                	fld	fa4,96(s0)
   15a1c:	0000                	unimp
   15a1e:	0000                	unimp
   15a20:	310a                	fld	ft2,160(sp)
   15a22:	00003833          	snez	a6,zero
   15a26:	0000                	unimp
   15a28:	3734                	fld	fa3,104(a4)
   15a2a:	0a35                	addi	s4,s4,13
   15a2c:	0000                	unimp
   15a2e:	0000                	unimp
   15a30:	3935                	addiw	s2,s2,-19
   15a32:	3135                	addiw	sp,sp,-19
   15a34:	0000                	unimp
   15a36:	0000                	unimp
   15a38:	370a3637          	lui	a2,0x370a3
   15a3c:	0000                	unimp
   15a3e:	0000                	unimp
   15a40:	3334                	fld	fa3,96(a4)
   15a42:	3332                	fld	ft6,296(sp)
   15a44:	0000                	unimp
   15a46:	0000                	unimp
   15a48:	0a35                	addi	s4,s4,13
   15a4a:	3534                	fld	fa3,104(a0)
   15a4c:	0000                	unimp
   15a4e:	0000                	unimp
   15a50:	3435                	addiw	s0,s0,-19
   15a52:	3836                	fld	fa6,360(sp)
   15a54:	0000                	unimp
   15a56:	0000                	unimp
   15a58:	320a                	fld	ft4,160(sp)
   15a5a:	3731                	addiw	a4,a4,-20
   15a5c:	0000                	unimp
   15a5e:	0000                	unimp
   15a60:	3432                	fld	fs0,296(sp)
   15a62:	0a38                	addi	a4,sp,280
   15a64:	0000                	unimp
   15a66:	0000                	unimp
   15a68:	33373737          	lui	a4,0x33373
   15a6c:	0000                	unimp
   15a6e:	0000                	unimp
   15a70:	3835                	addiw	a6,a6,-19
   15a72:	340a                	fld	fs0,160(sp)
   15a74:	0000                	unimp
   15a76:	0000                	unimp
   15a78:	3739                	addiw	a4,a4,-18
   15a7a:	3138                	fld	fa4,96(a0)
   15a7c:	0000                	unimp
   15a7e:	0000                	unimp
   15a80:	0a34                	addi	a3,sp,280
   15a82:	3334                	fld	fa3,96(a4)
   15a84:	0000                	unimp
   15a86:	0000                	unimp
   15a88:	3132                	fld	ft2,296(sp)
   15a8a:	00003633          	snez	a2,zero
   15a8e:	0000                	unimp
   15a90:	350a                	fld	fa0,160(sp)
   15a92:	3630                	fld	fa2,104(a2)
   15a94:	0000                	unimp
   15a96:	0000                	unimp
   15a98:	3830                	fld	fa2,112(s0)
   15a9a:	0a31                	addi	s4,s4,12
   15a9c:	0000                	unimp
   15a9e:	0000                	unimp
   15aa0:	36313437          	lui	s0,0x36313
   15aa4:	0000                	unimp
   15aa6:	0000                	unimp
   15aa8:	3434                	fld	fa3,104(s0)
   15aaa:	320a                	fld	ft4,160(sp)
   15aac:	0000                	unimp
   15aae:	0000                	unimp
   15ab0:	34353537          	lui	a0,0x34353
   15ab4:	0000                	unimp
   15ab6:	0000                	unimp
   15ab8:	0a30                	addi	a2,sp,280
   15aba:	3236                	fld	ft4,360(sp)
   15abc:	0000                	unimp
   15abe:	0000                	unimp
   15ac0:	3330                	fld	fa2,96(a4)
   15ac2:	3234                	fld	fa3,96(a2)
   15ac4:	0000                	unimp
   15ac6:	0000                	unimp
   15ac8:	370a                	fld	fa4,160(sp)
   15aca:	3038                	fld	fa4,96(s0)
   15acc:	0000                	unimp
   15ace:	0000                	unimp
   15ad0:	3534                	fld	fa3,104(a0)
   15ad2:	0a32                	slli	s4,s4,0xc
   15ad4:	0000                	unimp
   15ad6:	0000                	unimp
   15ad8:	32333433          	0x32333433
   15adc:	0000                	unimp
   15ade:	0000                	unimp
   15ae0:	3931                	addiw	s2,s2,-20
   15ae2:	360a                	fld	fa2,160(sp)
   15ae4:	0000                	unimp
   15ae6:	0000                	unimp
   15ae8:	3736                	fld	fa4,360(sp)
   15aea:	3935                	addiw	s2,s2,-19
   15aec:	0000                	unimp
   15aee:	0000                	unimp
   15af0:	0a39                	addi	s4,s4,14
   15af2:	3534                	fld	fa3,104(a0)
   15af4:	0000                	unimp
   15af6:	0000                	unimp
   15af8:	3635                	addiw	a2,a2,-19
   15afa:	00000a37          	lui	s4,0x0
   15afe:	0000                	unimp
   15b00:	3636                	fld	fa2,360(sp)
   15b02:	3830                	fld	fa2,112(s0)
   15b04:	0000                	unimp
   15b06:	0000                	unimp
   15b08:	3430                	fld	fa2,104(s0)
   15b0a:	310a                	fld	ft2,160(sp)
   15b0c:	0000                	unimp
   15b0e:	0000                	unimp
   15b10:	3535                	addiw	a0,a0,-19
   15b12:	3731                	addiw	a4,a4,-20
   15b14:	0000                	unimp
   15b16:	0000                	unimp
   15b18:	0a38                	addi	a4,sp,280
   15b1a:	3534                	fld	fa3,104(a0)
   15b1c:	0000                	unimp
   15b1e:	0000                	unimp
   15b20:	3232                	fld	ft4,296(sp)
   15b22:	3735                	addiw	a4,a4,-19
   15b24:	0000                	unimp
   15b26:	0000                	unimp
   15b28:	340a                	fld	fs0,160(sp)
   15b2a:	00003637          	lui	a2,0x3
   15b2e:	0000                	unimp
   15b30:	3236                	fld	ft4,360(sp)
   15b32:	0a36                	slli	s4,s4,0xd
   15b34:	0000                	unimp
   15b36:	0000                	unimp
   15b38:	37393137          	lui	sp,0x37393
   15b3c:	0000                	unimp
   15b3e:	0000                	unimp
   15b40:	3731                	addiw	a4,a4,-20
   15b42:	370a                	fld	fa4,160(sp)
   15b44:	0000                	unimp
   15b46:	0000                	unimp
   15b48:	3335                	addiw	t1,t1,-19
   15b4a:	00003333          	snez	t1,zero
   15b4e:	0000                	unimp
   15b50:	0a39                	addi	s4,s4,14
   15b52:	3438                	fld	fa4,104(s0)
   15b54:	0000                	unimp
   15b56:	0000                	unimp
   15b58:	3839                	addiw	a6,a6,-18
   15b5a:	3535                	addiw	a0,a0,-19
   15b5c:	0000                	unimp
   15b5e:	0000                	unimp
   15b60:	360a                	fld	fa2,160(sp)
   15b62:	3134                	fld	fa3,96(a0)
   15b64:	0000                	unimp
   15b66:	0000                	unimp
   15b68:	0a313837          	lui	a6,0xa313
   15b6c:	0000                	unimp
   15b6e:	0000                	unimp
   15b70:	3634                	fld	fa3,104(a2)
   15b72:	3030                	fld	fa2,96(s0)
   15b74:	0000                	unimp
   15b76:	0000                	unimp
   15b78:	380a3137          	lui	sp,0x380a3
   15b7c:	0000                	unimp
   15b7e:	0000                	unimp
   15b80:	3831                	addiw	a6,a6,-20
   15b82:	3935                	addiw	s2,s2,-19
   15b84:	0000                	unimp
   15b86:	0000                	unimp
   15b88:	0a36                	slli	s4,s4,0xd
   15b8a:	00003537          	lui	a0,0x3
   15b8e:	0000                	unimp
   15b90:	30313733          	0x30313733
   15b94:	0000                	unimp
   15b96:	0000                	unimp
   15b98:	310a                	fld	ft2,160(sp)
   15b9a:	3331                	addiw	t1,t1,-20
   15b9c:	0000                	unimp
   15b9e:	0000                	unimp
   15ba0:	3832                	fld	fa6,296(sp)
   15ba2:	0a34                	addi	a3,sp,280
   15ba4:	0000                	unimp
   15ba6:	0000                	unimp
   15ba8:	3934                	fld	fa3,112(a0)
   15baa:	3536                	fld	fa0,360(sp)
   15bac:	0000                	unimp
   15bae:	0000                	unimp
   15bb0:	3630                	fld	fa2,104(a2)
   15bb2:	350a                	fld	fa0,160(sp)
   15bb4:	0000                	unimp
   15bb6:	0000                	unimp
   15bb8:	3432                	fld	fs0,296(sp)
   15bba:	3830                	fld	fa2,112(s0)
   15bbc:	0000                	unimp
   15bbe:	0000                	unimp
   15bc0:	0a35                	addi	s4,s4,13
   15bc2:	00003533          	snez	a0,zero
   15bc6:	0000                	unimp
   15bc8:	3436                	fld	fs0,360(sp)
   15bca:	3030                	fld	fa2,96(s0)
   15bcc:	0000                	unimp
   15bce:	0000                	unimp
   15bd0:	350a                	fld	fa0,160(sp)
   15bd2:	00003637          	lui	a2,0x3
   15bd6:	0000                	unimp
   15bd8:	3234                	fld	fa3,96(a2)
   15bda:	0a35                	addi	s4,s4,13
   15bdc:	0000                	unimp
   15bde:	0000                	unimp
   15be0:	38373637          	lui	a2,0x38373
   15be4:	0000                	unimp
   15be6:	0000                	unimp
   15be8:	390a3733          	0x390a3733
   15bec:	0000                	unimp
   15bee:	0000                	unimp
   15bf0:	3931                	addiw	s2,s2,-20
   15bf2:	00003333          	snez	t1,zero
   15bf6:	0000                	unimp
   15bf8:	33320a37          	lui	s4,0x33320
   15bfc:	0000                	unimp
   15bfe:	0000                	unimp
   15c00:	3439                	addiw	s0,s0,-18
   15c02:	3835                	addiw	a6,a6,-19
   15c04:	0000                	unimp
   15c06:	0000                	unimp
   15c08:	330a                	fld	ft6,160(sp)
   15c0a:	3032                	fld	ft0,296(sp)
   15c0c:	0000                	unimp
   15c0e:	0000                	unimp
   15c10:	0a393137          	lui	sp,0xa393
   15c14:	0000                	unimp
   15c16:	0000                	unimp
   15c18:	3435                	addiw	s0,s0,-19
   15c1a:	00003937          	lui	s2,0x3
   15c1e:	0000                	unimp
   15c20:	3231                	addiw	tp,tp,-20
   15c22:	350a                	fld	fa0,160(sp)
   15c24:	0000                	unimp
   15c26:	0000                	unimp
   15c28:	3430                	fld	fa2,104(s0)
   15c2a:	3234                	fld	fa3,96(a2)
   15c2c:	0000                	unimp
   15c2e:	0000                	unimp
   15c30:	0a38                	addi	a4,sp,280
   15c32:	3632                	fld	fa2,296(sp)
   15c34:	0000                	unimp
   15c36:	0000                	unimp
   15c38:	3232                	fld	ft4,296(sp)
   15c3a:	3432                	fld	fs0,296(sp)
   15c3c:	0000                	unimp
   15c3e:	0000                	unimp
   15c40:	340a                	fld	fs0,160(sp)
   15c42:	00003937          	lui	s2,0x3
   15c46:	0000                	unimp
   15c48:	3938                	fld	fa4,112(a0)
   15c4a:	0a38                	addi	a4,sp,280
   15c4c:	0000                	unimp
   15c4e:	0000                	unimp
   15c50:	3832                	fld	fa6,296(sp)
   15c52:	3735                	addiw	a4,a4,-19
   15c54:	0000                	unimp
   15c56:	0000                	unimp
   15c58:	3734                	fld	fa3,104(a4)
   15c5a:	330a                	fld	ft6,160(sp)
   15c5c:	0000                	unimp
   15c5e:	0000                	unimp
   15c60:	3434                	fld	fa3,104(s0)
   15c62:	3839                	addiw	a6,a6,-18
   15c64:	0000                	unimp
   15c66:	0000                	unimp
   15c68:	0a34                	addi	a3,sp,280
   15c6a:	00003433          	snez	s0,zero
   15c6e:	0000                	unimp
   15c70:	30323733          	0x30323733
   15c74:	0000                	unimp
   15c76:	0000                	unimp
   15c78:	380a                	fld	fa6,160(sp)
   15c7a:	3334                	fld	fa3,96(a4)
   15c7c:	0000                	unimp
   15c7e:	0000                	unimp
   15c80:	3231                	addiw	tp,tp,-20
   15c82:	0a34                	addi	a3,sp,280
   15c84:	0000                	unimp
   15c86:	0000                	unimp
   15c88:	35363937          	lui	s2,0x35363
   15c8c:	0000                	unimp
   15c8e:	0000                	unimp
   15c90:	3436                	fld	fs0,360(sp)
   15c92:	370a                	fld	fa4,160(sp)
   15c94:	0000                	unimp
   15c96:	0000                	unimp
   15c98:	3935                	addiw	s2,s2,-19
   15c9a:	3234                	fld	fa3,96(a2)
   15c9c:	0000                	unimp
   15c9e:	0000                	unimp
   15ca0:	0a36                	slli	s4,s4,0xd
   15ca2:	3434                	fld	fa3,104(s0)
   15ca4:	0000                	unimp
   15ca6:	0000                	unimp
   15ca8:	3235                	addiw	tp,tp,-19
   15caa:	3839                	addiw	a6,a6,-18
   15cac:	0000                	unimp
   15cae:	0000                	unimp
   15cb0:	330a                	fld	ft6,160(sp)
   15cb2:	00003637          	lui	a2,0x3
   15cb6:	0000                	unimp
   15cb8:	0a353233          	0xa353233
   15cbc:	0000                	unimp
   15cbe:	0000                	unimp
   15cc0:	3136                	fld	ft2,360(sp)
   15cc2:	3238                	fld	fa4,96(a2)
   15cc4:	0000                	unimp
   15cc6:	0000                	unimp
   15cc8:	3430                	fld	fa2,104(s0)
   15cca:	350a                	fld	fa0,160(sp)
   15ccc:	0000                	unimp
   15cce:	0000                	unimp
   15cd0:	3539                	addiw	a0,a0,-18
   15cd2:	3638                	fld	fa4,104(a2)
   15cd4:	0000                	unimp
   15cd6:	0000                	unimp
   15cd8:	0a32                	slli	s4,s4,0xc
   15cda:	3335                	addiw	t1,t1,-19
   15cdc:	0000                	unimp
   15cde:	0000                	unimp
   15ce0:	32303733          	0x32303733
   15ce4:	0000                	unimp
   15ce6:	0000                	unimp
   15ce8:	330a                	fld	ft6,160(sp)
   15cea:	3536                	fld	fa0,360(sp)
   15cec:	0000                	unimp
   15cee:	0000                	unimp
   15cf0:	3831                	addiw	a6,a6,-20
   15cf2:	0a38                	addi	a4,sp,280
   15cf4:	0000                	unimp
   15cf6:	0000                	unimp
   15cf8:	3736                	fld	fa4,360(sp)
   15cfa:	00003033          	snez	zero,zero
   15cfe:	0000                	unimp
   15d00:	320a3033          	0x320a3033
   15d04:	0000                	unimp
   15d06:	0000                	unimp
   15d08:	3936                	fld	fs2,360(sp)
   15d0a:	3738                	fld	fa4,104(a4)
   15d0c:	0000                	unimp
   15d0e:	0000                	unimp
   15d10:	0a36                	slli	s4,s4,0xd
   15d12:	3939                	addiw	s2,s2,-18
   15d14:	0000                	unimp
   15d16:	0000                	unimp
   15d18:	3835                	addiw	a6,a6,-19
   15d1a:	00003033          	snez	zero,zero
   15d1e:	0000                	unimp
   15d20:	390a                	fld	fs2,160(sp)
   15d22:	3334                	fld	fa3,96(a4)
   15d24:	0000                	unimp
   15d26:	0000                	unimp
   15d28:	3438                	fld	fa4,104(s0)
   15d2a:	0a38                	addi	a4,sp,280
   15d2c:	0000                	unimp
   15d2e:	0000                	unimp
   15d30:	3136                	fld	ft2,360(sp)
   15d32:	3436                	fld	fs0,360(sp)
   15d34:	0000                	unimp
   15d36:	0000                	unimp
   15d38:	3432                	fld	fs0,296(sp)
   15d3a:	380a                	fld	fa6,160(sp)
   15d3c:	0000                	unimp
   15d3e:	0000                	unimp
   15d40:	3335                	addiw	t1,t1,-19
   15d42:	00003133          	snez	sp,zero
   15d46:	0000                	unimp
   15d48:	0a34                	addi	a3,sp,280
   15d4a:	3535                	addiw	a0,a0,-19
   15d4c:	0000                	unimp
   15d4e:	0000                	unimp
   15d50:	32313933          	0x32313933
   15d54:	0000                	unimp
   15d56:	0000                	unimp
   15d58:	350a                	fld	fa0,160(sp)
   15d5a:	3432                	fld	fs0,296(sp)
   15d5c:	0000                	unimp
   15d5e:	0000                	unimp
   15d60:	0a363937          	lui	s2,0xa363
   15d64:	0000                	unimp
   15d66:	0000                	unimp
   15d68:	3136                	fld	ft2,360(sp)
   15d6a:	3235                	addiw	tp,tp,-19
   15d6c:	0000                	unimp
   15d6e:	0000                	unimp
   15d70:	0a36                	slli	s4,s4,0xd
   15d72:	00003037          	lui	zero,0x3
   15d76:	0000                	unimp
   15d78:	3635                	addiw	a2,a2,-19
   15d7a:	3338                	fld	fa4,96(a4)
   15d7c:	0000                	unimp
   15d7e:	0000                	unimp
   15d80:	390a                	fld	fs2,160(sp)
   15d82:	00003733          	snez	a4,zero
   15d86:	0000                	unimp
   15d88:	3336                	fld	ft6,360(sp)
   15d8a:	320a                	fld	ft4,160(sp)
   15d8c:	0000                	unimp
   15d8e:	0000                	unimp
   15d90:	31393933          	0x31393933
   15d94:	0000                	unimp
   15d96:	0000                	unimp
   15d98:	35350a33          	0x35350a33
   15d9c:	0000                	unimp
   15d9e:	0000                	unimp
   15da0:	33303833          	0x33303833
   15da4:	0000                	unimp
   15da6:	0000                	unimp
   15da8:	370a                	fld	fa4,160(sp)
   15daa:	3339                	addiw	t1,t1,-18
   15dac:	0000                	unimp
   15dae:	0000                	unimp
   15db0:	3331                	addiw	t1,t1,-20
   15db2:	0a36                	slli	s4,s4,0xd
   15db4:	0000                	unimp
   15db6:	0000                	unimp
   15db8:	3431                	addiw	s0,s0,-20
   15dba:	3831                	addiw	a6,a6,-20
   15dbc:	0000                	unimp
   15dbe:	0000                	unimp
   15dc0:	3935                	addiw	s2,s2,-19
   15dc2:	370a                	fld	fa4,160(sp)
   15dc4:	0000                	unimp
   15dc6:	0000                	unimp
   15dc8:	3330                	fld	fa2,96(a4)
   15dca:	00003837          	lui	a6,0x3
   15dce:	0000                	unimp
   15dd0:	0a34                	addi	a3,sp,280
   15dd2:	3935                	addiw	s2,s2,-19
   15dd4:	0000                	unimp
   15dd6:	0000                	unimp
   15dd8:	3838                	fld	fa4,112(s0)
   15dda:	3439                	addiw	s0,s0,-18
   15ddc:	0000                	unimp
   15dde:	0000                	unimp
   15de0:	310a                	fld	ft2,160(sp)
   15de2:	3231                	addiw	tp,tp,-20
   15de4:	0000                	unimp
   15de6:	0000                	unimp
   15de8:	3934                	fld	fa3,112(a0)
   15dea:	0a36                	slli	s4,s4,0xd
   15dec:	0000                	unimp
   15dee:	0000                	unimp
   15df0:	3538                	fld	fa4,104(a0)
   15df2:	00003337          	lui	t1,0x3
   15df6:	0000                	unimp
   15df8:	3531                	addiw	a0,a0,-20
   15dfa:	390a                	fld	fs2,160(sp)
   15dfc:	0000                	unimp
   15dfe:	0000                	unimp
   15e00:	36323737          	lui	a4,0x36323
   15e04:	0000                	unimp
   15e06:	0000                	unimp
   15e08:	0a30                	addi	a2,sp,280
   15e0a:	00003433          	snez	s0,zero
   15e0e:	0000                	unimp
   15e10:	3631                	addiw	a2,a2,-20
   15e12:	3430                	fld	fa2,104(s0)
   15e14:	0000                	unimp
   15e16:	0000                	unimp
   15e18:	340a                	fld	fs0,160(sp)
   15e1a:	3635                	addiw	a2,a2,-19
   15e1c:	0000                	unimp
   15e1e:	0000                	unimp
   15e20:	3330                	fld	fa2,96(a4)
   15e22:	0a38                	addi	a4,sp,280
   15e24:	0000                	unimp
   15e26:	0000                	unimp
   15e28:	31343333          	0x31343333
   15e2c:	0000                	unimp
   15e2e:	0000                	unimp
   15e30:	360a3737          	lui	a4,0x360a3
   15e34:	0000                	unimp
   15e36:	0000                	unimp
   15e38:	3336                	fld	ft6,360(sp)
   15e3a:	3934                	fld	fa3,112(a0)
   15e3c:	0000                	unimp
   15e3e:	0000                	unimp
   15e40:	0a31                	addi	s4,s4,12
   15e42:	3934                	fld	fa3,112(a0)
   15e44:	0000                	unimp
   15e46:	0000                	unimp
   15e48:	3034                	fld	fa3,96(s0)
   15e4a:	3635                	addiw	a2,a2,-19
   15e4c:	0000                	unimp
   15e4e:	0000                	unimp
   15e50:	340a                	fld	fs0,160(sp)
   15e52:	3332                	fld	ft6,296(sp)
   15e54:	0000                	unimp
   15e56:	0000                	unimp
   15e58:	0a383733          	0xa383733
   15e5c:	0000                	unimp
   15e5e:	0000                	unimp
   15e60:	36383233          	0x36383233
   15e64:	0000                	unimp
   15e66:	0000                	unimp
   15e68:	3932                	fld	fs2,296(sp)
   15e6a:	380a                	fld	fa6,160(sp)
   15e6c:	0000                	unimp
   15e6e:	0000                	unimp
   15e70:	3135                	addiw	sp,sp,-19
   15e72:	3036                	fld	ft0,360(sp)
   15e74:	0000                	unimp
   15e76:	0000                	unimp
   15e78:	34390a37          	lui	s4,0x34390
   15e7c:	0000                	unimp
   15e7e:	0000                	unimp
   15e80:	3135                	addiw	sp,sp,-19
   15e82:	3930                	fld	fa2,112(a0)
   15e84:	0000                	unimp
   15e86:	0000                	unimp
   15e88:	370a                	fld	fa4,160(sp)
   15e8a:	3136                	fld	ft2,360(sp)
   15e8c:	0000                	unimp
   15e8e:	0000                	unimp
   15e90:	3136                	fld	ft2,360(sp)
   15e92:	0a32                	slli	s4,s4,0xc
   15e94:	0000                	unimp
   15e96:	0000                	unimp
   15e98:	3735                	addiw	a4,a4,-19
   15e9a:	3536                	fld	fa0,360(sp)
   15e9c:	0000                	unimp
   15e9e:	0000                	unimp
   15ea0:	3035                	0x3035
   15ea2:	350a                	fld	fa0,160(sp)
   15ea4:	0000                	unimp
   15ea6:	0000                	unimp
   15ea8:	3734                	fld	fa3,104(a4)
   15eaa:	3636                	fld	fa2,360(sp)
   15eac:	0000                	unimp
   15eae:	0000                	unimp
   15eb0:	320a                	fld	ft4,160(sp)
   15eb2:	3038                	fld	fa4,96(s0)
   15eb4:	0000                	unimp
   15eb6:	0000                	unimp
   15eb8:	0a303133          	0xa303133
   15ebc:	0000                	unimp
   15ebe:	0000                	unimp
   15ec0:	33313837          	lui	a6,0x33313
   15ec4:	0000                	unimp
   15ec6:	0000                	unimp
   15ec8:	3134                	fld	fa3,96(a0)
   15eca:	370a                	fld	fa4,160(sp)
   15ecc:	0000                	unimp
   15ece:	0000                	unimp
   15ed0:	32323133          	0x32323133
   15ed4:	0000                	unimp
   15ed6:	0000                	unimp
   15ed8:	350a                	fld	fa0,160(sp)
   15eda:	3439                	addiw	s0,s0,-18
   15edc:	0000                	unimp
   15ede:	0000                	unimp
   15ee0:	3134                	fld	fa3,96(a0)
   15ee2:	0a38                	addi	a4,sp,280
   15ee4:	0000                	unimp
   15ee6:	0000                	unimp
   15ee8:	3232                	fld	ft4,296(sp)
   15eea:	3834                	fld	fa3,112(s0)
   15eec:	0000                	unimp
   15eee:	0000                	unimp
   15ef0:	360a3737          	lui	a4,0x360a3
   15ef4:	0000                	unimp
   15ef6:	0000                	unimp
   15ef8:	3438                	fld	fa4,104(s0)
   15efa:	3030                	fld	fa2,96(s0)
   15efc:	0000                	unimp
   15efe:	0000                	unimp
   15f00:	0a35                	addi	s4,s4,13
   15f02:	3336                	fld	ft6,360(sp)
   15f04:	0000                	unimp
   15f06:	0000                	unimp
   15f08:	3234                	fld	fa3,96(a2)
   15f0a:	3336                	fld	ft6,360(sp)
   15f0c:	0000                	unimp
   15f0e:	0000                	unimp
   15f10:	330a                	fld	ft6,160(sp)
   15f12:	3438                	fld	fa4,104(s0)
   15f14:	0000                	unimp
   15f16:	0000                	unimp
   15f18:	3435                	addiw	s0,s0,-19
   15f1a:	0a38                	addi	a4,sp,280
   15f1c:	0000                	unimp
   15f1e:	0000                	unimp
   15f20:	3235                	addiw	tp,tp,-19
   15f22:	00003033          	snez	zero,zero
   15f26:	0000                	unimp
   15f28:	3139                	addiw	sp,sp,-18
   15f2a:	350a                	fld	fa0,160(sp)
   15f2c:	0000                	unimp
   15f2e:	0000                	unimp
   15f30:	3031                	0x3031
   15f32:	00003037          	lui	zero,0x3
   15f36:	0000                	unimp
   15f38:	0a30                	addi	a2,sp,280
   15f3a:	3535                	addiw	a0,a0,-19
   15f3c:	0000                	unimp
   15f3e:	0000                	unimp
   15f40:	3635                	addiw	a2,a2,-19
   15f42:	3335                	addiw	t1,t1,-19
   15f44:	0000                	unimp
   15f46:	0000                	unimp
   15f48:	340a                	fld	fs0,160(sp)
   15f4a:	3432                	fld	fs0,296(sp)
   15f4c:	0000                	unimp
   15f4e:	0000                	unimp
   15f50:	3531                	addiw	a0,a0,-20
   15f52:	0a32                	slli	s4,s4,0xc
   15f54:	0000                	unimp
   15f56:	0000                	unimp
   15f58:	3539                	addiw	a0,a0,-18
   15f5a:	3139                	addiw	sp,sp,-18
   15f5c:	0000                	unimp
   15f5e:	0000                	unimp
   15f60:	3332                	fld	ft6,296(sp)
   15f62:	340a                	fld	fs0,160(sp)
   15f64:	0000                	unimp
   15f66:	0000                	unimp
   15f68:	38323437          	lui	s0,0x38323
   15f6c:	0000                	unimp
   15f6e:	0000                	unimp
   15f70:	0a38                	addi	a4,sp,280
   15f72:	3031                	0x3031
   15f74:	0000                	unimp
   15f76:	0000                	unimp
   15f78:	3135                	addiw	sp,sp,-19
   15f7a:	00003433          	snez	s0,zero
   15f7e:	0000                	unimp
   15f80:	350a                	fld	fa0,160(sp)
   15f82:	3135                	addiw	sp,sp,-19
   15f84:	0000                	unimp
   15f86:	0000                	unimp
   15f88:	3332                	fld	ft6,296(sp)
   15f8a:	0a36                	slli	s4,s4,0xd
   15f8c:	0000                	unimp
   15f8e:	0000                	unimp
   15f90:	37303233          	0x37303233
   15f94:	0000                	unimp
   15f96:	0000                	unimp
   15f98:	3535                	addiw	a0,a0,-19
   15f9a:	390a                	fld	fs2,160(sp)
   15f9c:	0000                	unimp
   15f9e:	0000                	unimp
   15fa0:	3038                	fld	fa4,96(s0)
   15fa2:	3934                	fld	fa3,112(a0)
   15fa4:	0000                	unimp
   15fa6:	0000                	unimp
   15fa8:	0a38                	addi	a4,sp,280
   15faa:	3438                	fld	fa4,104(s0)
   15fac:	0000                	unimp
   15fae:	0000                	unimp
   15fb0:	3235                	addiw	tp,tp,-19
   15fb2:	3238                	fld	fa4,96(a2)
   15fb4:	0000                	unimp
   15fb6:	0000                	unimp
   15fb8:	330a                	fld	ft6,160(sp)
   15fba:	3936                	fld	fs2,360(sp)
   15fbc:	0000                	unimp
   15fbe:	0000                	unimp
   15fc0:	3934                	fld	fa3,112(a0)
   15fc2:	0a31                	addi	s4,s4,12
   15fc4:	0000                	unimp
   15fc6:	0000                	unimp
   15fc8:	3932                	fld	fs2,296(sp)
   15fca:	3939                	addiw	s2,s2,-18
   15fcc:	0000                	unimp
   15fce:	0000                	unimp
   15fd0:	3038                	fld	fa4,96(s0)
   15fd2:	350a                	fld	fa0,160(sp)
   15fd4:	0000                	unimp
   15fd6:	0000                	unimp
   15fd8:	3139                	addiw	sp,sp,-18
   15fda:	3730                	fld	fa2,104(a4)
   15fdc:	0000                	unimp
   15fde:	0000                	unimp
   15fe0:	0a34                	addi	a3,sp,280
   15fe2:	3534                	fld	fa3,104(a0)
   15fe4:	0000                	unimp
   15fe6:	0000                	unimp
   15fe8:	3430                	fld	fa2,104(s0)
   15fea:	3034                	fld	fa3,96(s0)
   15fec:	0000                	unimp
   15fee:	0000                	unimp
   15ff0:	340a                	fld	fs0,160(sp)
   15ff2:	3334                	fld	fa3,96(a4)
   15ff4:	0000                	unimp
   15ff6:	0000                	unimp
   15ff8:	0a363137          	lui	sp,0xa363
   15ffc:	0000                	unimp
   15ffe:	0000                	unimp
   16000:	36333937          	lui	s2,0x36333
   16004:	0000                	unimp
   16006:	0000                	unimp
   16008:	340a3233          	0x340a3233
   1600c:	0000                	unimp
   1600e:	0000                	unimp
   16010:	35353833          	0x35353833
   16014:	0000                	unimp
   16016:	0000                	unimp
   16018:	0a32                	slli	s4,s4,0xc
   1601a:	00003337          	lui	t1,0x3
   1601e:	0000                	unimp
   16020:	3530                	fld	fa2,104(a0)
   16022:	00003533          	snez	a0,zero
   16026:	0000                	unimp
   16028:	340a                	fld	fs0,160(sp)
   1602a:	3835                	addiw	a6,a6,-19
   1602c:	0000                	unimp
   1602e:	0000                	unimp
   16030:	3831                	addiw	a6,a6,-20
   16032:	0a38                	addi	a4,sp,280
   16034:	0000                	unimp
   16036:	0000                	unimp
   16038:	3331                	addiw	t1,t1,-20
   1603a:	3938                	fld	fa4,112(a0)
   1603c:	0000                	unimp
   1603e:	0000                	unimp
   16040:	3738                	fld	fa4,104(a4)
   16042:	350a                	fld	fa0,160(sp)
   16044:	0000                	unimp
   16046:	0000                	unimp
   16048:	3232                	fld	ft4,296(sp)
   1604a:	3134                	fld	fa3,96(a0)
   1604c:	0000                	unimp
   1604e:	0000                	unimp
   16050:	390a                	fld	fs2,160(sp)
   16052:	3336                	fld	ft6,360(sp)
   16054:	0000                	unimp
   16056:	0000                	unimp
   16058:	3438                	fld	fa4,104(s0)
   1605a:	00000a37          	lui	s4,0x0
   1605e:	0000                	unimp
   16060:	3331                	addiw	t1,t1,-20
   16062:	3334                	fld	fa3,96(a4)
   16064:	0000                	unimp
   16066:	0000                	unimp
   16068:	3034                	fld	fa3,96(s0)
   1606a:	380a                	fld	fa6,160(sp)
   1606c:	0000                	unimp
   1606e:	0000                	unimp
   16070:	35333937          	lui	s2,0x35333
   16074:	0000                	unimp
   16076:	0000                	unimp
   16078:	0a36                	slli	s4,s4,0xd
   1607a:	3736                	fld	fa4,360(sp)
   1607c:	0000                	unimp
   1607e:	0000                	unimp
   16080:	3431                	addiw	s0,s0,-20
   16082:	3139                	addiw	sp,sp,-18
   16084:	0000                	unimp
   16086:	0000                	unimp
   16088:	310a                	fld	ft2,160(sp)
   1608a:	00003833          	snez	a6,zero
   1608e:	0000                	unimp
   16090:	3639                	addiw	a2,a2,-18
   16092:	00000a37          	lui	s4,0x0
	...

0000000000016480 <impure_data>:
	...
   16488:	69b8                	ld	a4,80(a1)
   1648a:	0001                	nop
   1648c:	0000                	unimp
   1648e:	0000                	unimp
   16490:	6a68                	ld	a0,208(a2)
   16492:	0001                	nop
   16494:	0000                	unimp
   16496:	0000                	unimp
   16498:	6b18                	ld	a4,16(a4)
   1649a:	0001                	nop
	...
   16568:	0001                	nop
   1656a:	0000                	unimp
   1656c:	0000                	unimp
   1656e:	0000                	unimp
   16570:	330e                	fld	ft6,224(sp)
   16572:	abcd                	j	16b64 <impure_data+0x6e4>
   16574:	1234                	addi	a3,sp,296
   16576:	e66d                	bnez	a2,16660 <impure_data+0x1e0>
   16578:	deec                	sw	a1,124(a3)
   1657a:	0005                	c.addi	zero,1
   1657c:	0000000b          	0xb
	...

Disassembly of section .sdata:

0000000000016bc8 <__TMC_END__>:
	...

0000000000016bd0 <_global_impure_ptr>:
   16bd0:	6480                	ld	s0,8(s1)
   16bd2:	0001                	nop
   16bd4:	0000                	unimp
	...

0000000000016bd8 <_impure_ptr>:
   16bd8:	6480                	ld	s0,8(s1)
   16bda:	0001                	nop
   16bdc:	0000                	unimp
	...

Disassembly of section .sbss:

0000000000016be0 <__bss_start>:
	...

Disassembly of section .bss:

0000000000016be8 <completed.5184>:
	...

0000000000016bf0 <object.5189>:
	...

0000000000016c20 <d>:
	...

0000000000017fa8 <t0.2574>:
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
