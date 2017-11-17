
Test/8:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ec018193          	addi	gp,gp,-320 # 11f70 <__global_pointer$>
   100b8:	82018513          	addi	a0,gp,-2016 # 11790 <_edata>
   100bc:	87018613          	addi	a2,gp,-1936 # 117e0 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	31c000ef          	jal	ra,103e0 <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	26250513          	addi	a0,a0,610 # 1032a <__libc_fini_array>
   100d0:	00000097          	auipc	ra,0x0
   100d4:	228080e7          	jalr	552(ra) # 102f8 <atexit>
   100d8:	00000097          	auipc	ra,0x0
   100dc:	2a0080e7          	jalr	672(ra) # 10378 <__libc_init_array>
   100e0:	4502                	lw	a0,0(sp)
   100e2:	002c                	addi	a1,sp,8
   100e4:	4601                	li	a2,0
   100e6:	00000097          	auipc	ra,0x0
   100ea:	0c6080e7          	jalr	198(ra) # 101ac <main>
   100ee:	00000317          	auipc	t1,0x0
   100f2:	21830067          	jr	536(t1) # 10306 <exit>

00000000000100f6 <_fini>:
   100f6:	8082                	ret

00000000000100f8 <deregister_tm_clones>:
   100f8:	6545                	lui	a0,0x11
   100fa:	67c5                	lui	a5,0x11
   100fc:	77050713          	addi	a4,a0,1904 # 11770 <__TMC_END__>
   10100:	77078793          	addi	a5,a5,1904 # 11770 <__TMC_END__>
   10104:	00e78b63          	beq	a5,a4,1011a <deregister_tm_clones+0x22>
   10108:	00000337          	lui	t1,0x0
   1010c:	00030313          	mv	t1,t1
   10110:	00030563          	beqz	t1,1011a <deregister_tm_clones+0x22>
   10114:	77050513          	addi	a0,a0,1904
   10118:	8302                	jr	t1
   1011a:	8082                	ret

000000000001011c <register_tm_clones>:
   1011c:	67c5                	lui	a5,0x11
   1011e:	6545                	lui	a0,0x11
   10120:	77078593          	addi	a1,a5,1904 # 11770 <__TMC_END__>
   10124:	77050793          	addi	a5,a0,1904 # 11770 <__TMC_END__>
   10128:	8d9d                	sub	a1,a1,a5
   1012a:	858d                	srai	a1,a1,0x3
   1012c:	4789                	li	a5,2
   1012e:	02f5c5b3          	div	a1,a1,a5
   10132:	c991                	beqz	a1,10146 <register_tm_clones+0x2a>
   10134:	00000337          	lui	t1,0x0
   10138:	00030313          	mv	t1,t1
   1013c:	00030563          	beqz	t1,10146 <register_tm_clones+0x2a>
   10140:	77050513          	addi	a0,a0,1904
   10144:	8302                	jr	t1
   10146:	8082                	ret

0000000000010148 <__do_global_dtors_aux>:
   10148:	8281c703          	lbu	a4,-2008(gp) # 11798 <completed.5184>
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
   10166:	9b050513          	addi	a0,a0,-1616 # 109b0 <__EH_FRAME_BEGIN__>
   1016a:	ffff0097          	auipc	ra,0xffff0
   1016e:	e96080e7          	jalr	-362(ra) # 0 <_start-0x100b0>
   10172:	4785                	li	a5,1
   10174:	82f18423          	sb	a5,-2008(gp) # 11798 <completed.5184>
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
   10192:	7a058593          	addi	a1,a1,1952 # 117a0 <object.5189>
   10196:	9b050513          	addi	a0,a0,-1616 # 109b0 <__EH_FRAME_BEGIN__>
   1019a:	e406                	sd	ra,8(sp)
   1019c:	ffff0097          	auipc	ra,0xffff0
   101a0:	e64080e7          	jalr	-412(ra) # 0 <_start-0x100b0>
   101a4:	60a2                	ld	ra,8(sp)
   101a6:	0141                	addi	sp,sp,16
   101a8:	f75ff06f          	j	1011c <register_tm_clones>

00000000000101ac <main>:
   101ac:	ff010113          	addi	sp,sp,-16
   101b0:	00813423          	sd	s0,8(sp)
   101b4:	01010413          	addi	s0,sp,16
   101b8:	000117b7          	lui	a5,0x11
   101bc:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   101c0:	0047a783          	lw	a5,4(a5)
   101c4:	0017879b          	addiw	a5,a5,1
   101c8:	0007871b          	sext.w	a4,a5
   101cc:	000117b7          	lui	a5,0x11
   101d0:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   101d4:	00e7a223          	sw	a4,4(a5)
   101d8:	000117b7          	lui	a5,0x11
   101dc:	7787a703          	lw	a4,1912(a5) # 11778 <temp>
   101e0:	000117b7          	lui	a5,0x11
   101e4:	76e7ac23          	sw	a4,1912(a5) # 11778 <temp>
   101e8:	000117b7          	lui	a5,0x11
   101ec:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   101f0:	0087a783          	lw	a5,8(a5)
   101f4:	0017879b          	addiw	a5,a5,1
   101f8:	0007871b          	sext.w	a4,a5
   101fc:	000117b7          	lui	a5,0x11
   10200:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   10204:	00e7a423          	sw	a4,8(a5)
   10208:	000117b7          	lui	a5,0x11
   1020c:	7787a783          	lw	a5,1912(a5) # 11778 <temp>
   10210:	0017979b          	slliw	a5,a5,0x1
   10214:	0007871b          	sext.w	a4,a5
   10218:	000117b7          	lui	a5,0x11
   1021c:	76e7ac23          	sw	a4,1912(a5) # 11778 <temp>
   10220:	000117b7          	lui	a5,0x11
   10224:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   10228:	00c7a783          	lw	a5,12(a5)
   1022c:	0017879b          	addiw	a5,a5,1
   10230:	0007871b          	sext.w	a4,a5
   10234:	000117b7          	lui	a5,0x11
   10238:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   1023c:	00e7a623          	sw	a4,12(a5)
   10240:	000117b7          	lui	a5,0x11
   10244:	7787a783          	lw	a5,1912(a5) # 11778 <temp>
   10248:	00078713          	mv	a4,a5
   1024c:	00070793          	mv	a5,a4
   10250:	0017979b          	slliw	a5,a5,0x1
   10254:	00e787bb          	addw	a5,a5,a4
   10258:	0007871b          	sext.w	a4,a5
   1025c:	000117b7          	lui	a5,0x11
   10260:	76e7ac23          	sw	a4,1912(a5) # 11778 <temp>
   10264:	000117b7          	lui	a5,0x11
   10268:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   1026c:	0107a783          	lw	a5,16(a5)
   10270:	0017879b          	addiw	a5,a5,1
   10274:	0007871b          	sext.w	a4,a5
   10278:	000117b7          	lui	a5,0x11
   1027c:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   10280:	00e7a823          	sw	a4,16(a5)
   10284:	000117b7          	lui	a5,0x11
   10288:	7787a783          	lw	a5,1912(a5) # 11778 <temp>
   1028c:	0027979b          	slliw	a5,a5,0x2
   10290:	0007871b          	sext.w	a4,a5
   10294:	000117b7          	lui	a5,0x11
   10298:	76e7ac23          	sw	a4,1912(a5) # 11778 <temp>
   1029c:	000117b7          	lui	a5,0x11
   102a0:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   102a4:	0147a783          	lw	a5,20(a5)
   102a8:	0017879b          	addiw	a5,a5,1
   102ac:	0007871b          	sext.w	a4,a5
   102b0:	000117b7          	lui	a5,0x11
   102b4:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   102b8:	00e7aa23          	sw	a4,20(a5)
   102bc:	000117b7          	lui	a5,0x11
   102c0:	7787a783          	lw	a5,1912(a5) # 11778 <temp>
   102c4:	00078713          	mv	a4,a5
   102c8:	00070793          	mv	a5,a4
   102cc:	0027979b          	slliw	a5,a5,0x2
   102d0:	00e787bb          	addw	a5,a5,a4
   102d4:	0007871b          	sext.w	a4,a5
   102d8:	000117b7          	lui	a5,0x11
   102dc:	76e7ac23          	sw	a4,1912(a5) # 11778 <temp>
   102e0:	00000793          	li	a5,0
   102e4:	00078513          	mv	a0,a5
   102e8:	00813403          	ld	s0,8(sp)
   102ec:	01010113          	addi	sp,sp,16
   102f0:	00008067          	ret
   102f4:	0000                	unimp
	...

00000000000102f8 <atexit>:
   102f8:	85aa                	mv	a1,a0
   102fa:	4681                	li	a3,0
   102fc:	4601                	li	a2,0
   102fe:	4501                	li	a0,0
   10300:	18a0006f          	j	1048a <__register_exitproc>
	...

0000000000010306 <exit>:
   10306:	1141                	addi	sp,sp,-16
   10308:	4581                	li	a1,0
   1030a:	e022                	sd	s0,0(sp)
   1030c:	e406                	sd	ra,8(sp)
   1030e:	842a                	mv	s0,a0
   10310:	1e0000ef          	jal	ra,104f0 <__call_exitprocs>
   10314:	8101b503          	ld	a0,-2032(gp) # 11780 <_global_impure_ptr>
   10318:	6d3c                	ld	a5,88(a0)
   1031a:	c391                	beqz	a5,1031e <exit+0x18>
   1031c:	9782                	jalr	a5
   1031e:	8522                	mv	a0,s0
   10320:	00000097          	auipc	ra,0x0
   10324:	66a080e7          	jalr	1642(ra) # 1098a <_exit>
	...

000000000001032a <__libc_fini_array>:
   1032a:	7179                	addi	sp,sp,-48
   1032c:	67c5                	lui	a5,0x11
   1032e:	6745                	lui	a4,0x11
   10330:	f022                	sd	s0,32(sp)
   10332:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   10336:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   1033a:	8c19                	sub	s0,s0,a4
   1033c:	ec26                	sd	s1,24(sp)
   1033e:	e84a                	sd	s2,16(sp)
   10340:	e44e                	sd	s3,8(sp)
   10342:	f406                	sd	ra,40(sp)
   10344:	840d                	srai	s0,s0,0x3
   10346:	4481                	li	s1,0
   10348:	01078913          	addi	s2,a5,16
   1034c:	59e1                	li	s3,-8
   1034e:	00941c63          	bne	s0,s1,10366 <__libc_fini_array+0x3c>
   10352:	7402                	ld	s0,32(sp)
   10354:	70a2                	ld	ra,40(sp)
   10356:	64e2                	ld	s1,24(sp)
   10358:	6942                	ld	s2,16(sp)
   1035a:	69a2                	ld	s3,8(sp)
   1035c:	6145                	addi	sp,sp,48
   1035e:	00000317          	auipc	t1,0x0
   10362:	d9830067          	jr	-616(t1) # 100f6 <_fini>
   10366:	033487b3          	mul	a5,s1,s3
   1036a:	0485                	addi	s1,s1,1
   1036c:	97ca                	add	a5,a5,s2
   1036e:	ff87b783          	ld	a5,-8(a5)
   10372:	9782                	jalr	a5
   10374:	bfe9                	j	1034e <__libc_fini_array+0x24>
	...

0000000000010378 <__libc_init_array>:
   10378:	1101                	addi	sp,sp,-32
   1037a:	e822                	sd	s0,16(sp)
   1037c:	e426                	sd	s1,8(sp)
   1037e:	6445                	lui	s0,0x11
   10380:	64c5                	lui	s1,0x11
   10382:	00048793          	mv	a5,s1
   10386:	00040413          	mv	s0,s0
   1038a:	8c1d                	sub	s0,s0,a5
   1038c:	e04a                	sd	s2,0(sp)
   1038e:	ec06                	sd	ra,24(sp)
   10390:	840d                	srai	s0,s0,0x3
   10392:	00048493          	mv	s1,s1
   10396:	4901                	li	s2,0
   10398:	02891963          	bne	s2,s0,103ca <__libc_init_array+0x52>
   1039c:	64c5                	lui	s1,0x11
   1039e:	00000097          	auipc	ra,0x0
   103a2:	d58080e7          	jalr	-680(ra) # 100f6 <_fini>
   103a6:	6445                	lui	s0,0x11
   103a8:	00048793          	mv	a5,s1
   103ac:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   103b0:	8c1d                	sub	s0,s0,a5
   103b2:	840d                	srai	s0,s0,0x3
   103b4:	00048493          	mv	s1,s1
   103b8:	4901                	li	s2,0
   103ba:	00891d63          	bne	s2,s0,103d4 <__libc_init_array+0x5c>
   103be:	60e2                	ld	ra,24(sp)
   103c0:	6442                	ld	s0,16(sp)
   103c2:	64a2                	ld	s1,8(sp)
   103c4:	6902                	ld	s2,0(sp)
   103c6:	6105                	addi	sp,sp,32
   103c8:	8082                	ret
   103ca:	609c                	ld	a5,0(s1)
   103cc:	0905                	addi	s2,s2,1
   103ce:	04a1                	addi	s1,s1,8
   103d0:	9782                	jalr	a5
   103d2:	b7d9                	j	10398 <__libc_init_array+0x20>
   103d4:	609c                	ld	a5,0(s1)
   103d6:	0905                	addi	s2,s2,1
   103d8:	04a1                	addi	s1,s1,8
   103da:	9782                	jalr	a5
   103dc:	bff9                	j	103ba <__libc_init_array+0x42>
	...

00000000000103e0 <memset>:
   103e0:	483d                	li	a6,15
   103e2:	872a                	mv	a4,a0
   103e4:	02c87163          	bleu	a2,a6,10406 <memset+0x26>
   103e8:	00f77793          	andi	a5,a4,15
   103ec:	e3c1                	bnez	a5,1046c <memset+0x8c>
   103ee:	e1bd                	bnez	a1,10454 <memset+0x74>
   103f0:	ff067693          	andi	a3,a2,-16
   103f4:	8a3d                	andi	a2,a2,15
   103f6:	96ba                	add	a3,a3,a4
   103f8:	e30c                	sd	a1,0(a4)
   103fa:	e70c                	sd	a1,8(a4)
   103fc:	0741                	addi	a4,a4,16
   103fe:	fed76de3          	bltu	a4,a3,103f8 <memset+0x18>
   10402:	e211                	bnez	a2,10406 <memset+0x26>
   10404:	8082                	ret
   10406:	40c806b3          	sub	a3,a6,a2
   1040a:	068a                	slli	a3,a3,0x2
   1040c:	00000297          	auipc	t0,0x0
   10410:	9696                	add	a3,a3,t0
   10412:	00a68067          	jr	10(a3)
   10416:	00b70723          	sb	a1,14(a4)
   1041a:	00b706a3          	sb	a1,13(a4)
   1041e:	00b70623          	sb	a1,12(a4)
   10422:	00b705a3          	sb	a1,11(a4)
   10426:	00b70523          	sb	a1,10(a4)
   1042a:	00b704a3          	sb	a1,9(a4)
   1042e:	00b70423          	sb	a1,8(a4)
   10432:	00b703a3          	sb	a1,7(a4)
   10436:	00b70323          	sb	a1,6(a4)
   1043a:	00b702a3          	sb	a1,5(a4)
   1043e:	00b70223          	sb	a1,4(a4)
   10442:	00b701a3          	sb	a1,3(a4)
   10446:	00b70123          	sb	a1,2(a4)
   1044a:	00b700a3          	sb	a1,1(a4)
   1044e:	00b70023          	sb	a1,0(a4)
   10452:	8082                	ret
   10454:	0ff5f593          	andi	a1,a1,255
   10458:	00859693          	slli	a3,a1,0x8
   1045c:	8dd5                	or	a1,a1,a3
   1045e:	01059693          	slli	a3,a1,0x10
   10462:	8dd5                	or	a1,a1,a3
   10464:	02059693          	slli	a3,a1,0x20
   10468:	8dd5                	or	a1,a1,a3
   1046a:	b759                	j	103f0 <memset+0x10>
   1046c:	00279693          	slli	a3,a5,0x2
   10470:	00000297          	auipc	t0,0x0
   10474:	9696                	add	a3,a3,t0
   10476:	8286                	mv	t0,ra
   10478:	fa2680e7          	jalr	-94(a3)
   1047c:	8096                	mv	ra,t0
   1047e:	17c1                	addi	a5,a5,-16
   10480:	8f1d                	sub	a4,a4,a5
   10482:	963e                	add	a2,a2,a5
   10484:	f8c871e3          	bleu	a2,a6,10406 <memset+0x26>
   10488:	b79d                	j	103ee <memset+0xe>

000000000001048a <__register_exitproc>:
   1048a:	8101b703          	ld	a4,-2032(gp) # 11780 <_global_impure_ptr>
   1048e:	832a                	mv	t1,a0
   10490:	1f873783          	ld	a5,504(a4)
   10494:	e789                	bnez	a5,1049e <__register_exitproc+0x14>
   10496:	20070793          	addi	a5,a4,512
   1049a:	1ef73c23          	sd	a5,504(a4)
   1049e:	4798                	lw	a4,8(a5)
   104a0:	487d                	li	a6,31
   104a2:	557d                	li	a0,-1
   104a4:	04e84463          	blt	a6,a4,104ec <__register_exitproc+0x62>
   104a8:	02030a63          	beqz	t1,104dc <__register_exitproc+0x52>
   104ac:	00371813          	slli	a6,a4,0x3
   104b0:	983e                	add	a6,a6,a5
   104b2:	10c83823          	sd	a2,272(a6)
   104b6:	3107a883          	lw	a7,784(a5)
   104ba:	4605                	li	a2,1
   104bc:	00e6163b          	sllw	a2,a2,a4
   104c0:	00c8e8b3          	or	a7,a7,a2
   104c4:	3117a823          	sw	a7,784(a5)
   104c8:	20d83823          	sd	a3,528(a6)
   104cc:	4689                	li	a3,2
   104ce:	00d31763          	bne	t1,a3,104dc <__register_exitproc+0x52>
   104d2:	3147a683          	lw	a3,788(a5)
   104d6:	8e55                	or	a2,a2,a3
   104d8:	30c7aa23          	sw	a2,788(a5)
   104dc:	0017069b          	addiw	a3,a4,1
   104e0:	0709                	addi	a4,a4,2
   104e2:	070e                	slli	a4,a4,0x3
   104e4:	c794                	sw	a3,8(a5)
   104e6:	97ba                	add	a5,a5,a4
   104e8:	e38c                	sd	a1,0(a5)
   104ea:	4501                	li	a0,0
   104ec:	8082                	ret
	...

00000000000104f0 <__call_exitprocs>:
   104f0:	715d                	addi	sp,sp,-80
   104f2:	f44e                	sd	s3,40(sp)
   104f4:	8101b983          	ld	s3,-2032(gp) # 11780 <_global_impure_ptr>
   104f8:	f052                	sd	s4,32(sp)
   104fa:	ec56                	sd	s5,24(sp)
   104fc:	e85a                	sd	s6,16(sp)
   104fe:	e486                	sd	ra,72(sp)
   10500:	e0a2                	sd	s0,64(sp)
   10502:	fc26                	sd	s1,56(sp)
   10504:	f84a                	sd	s2,48(sp)
   10506:	e45e                	sd	s7,8(sp)
   10508:	8aaa                	mv	s5,a0
   1050a:	8a2e                	mv	s4,a1
   1050c:	4b05                	li	s6,1
   1050e:	1f89b403          	ld	s0,504(s3)
   10512:	c801                	beqz	s0,10522 <__call_exitprocs+0x32>
   10514:	4404                	lw	s1,8(s0)
   10516:	34fd                	addiw	s1,s1,-1
   10518:	00349913          	slli	s2,s1,0x3
   1051c:	9922                	add	s2,s2,s0
   1051e:	0004dd63          	bgez	s1,10538 <__call_exitprocs+0x48>
   10522:	60a6                	ld	ra,72(sp)
   10524:	6406                	ld	s0,64(sp)
   10526:	74e2                	ld	s1,56(sp)
   10528:	7942                	ld	s2,48(sp)
   1052a:	79a2                	ld	s3,40(sp)
   1052c:	7a02                	ld	s4,32(sp)
   1052e:	6ae2                	ld	s5,24(sp)
   10530:	6b42                	ld	s6,16(sp)
   10532:	6ba2                	ld	s7,8(sp)
   10534:	6161                	addi	sp,sp,80
   10536:	8082                	ret
   10538:	000a0963          	beqz	s4,1054a <__call_exitprocs+0x5a>
   1053c:	21093783          	ld	a5,528(s2)
   10540:	01478563          	beq	a5,s4,1054a <__call_exitprocs+0x5a>
   10544:	34fd                	addiw	s1,s1,-1
   10546:	1961                	addi	s2,s2,-8
   10548:	bfd9                	j	1051e <__call_exitprocs+0x2e>
   1054a:	441c                	lw	a5,8(s0)
   1054c:	01093683          	ld	a3,16(s2)
   10550:	37fd                	addiw	a5,a5,-1
   10552:	02979663          	bne	a5,s1,1057e <__call_exitprocs+0x8e>
   10556:	c404                	sw	s1,8(s0)
   10558:	d6f5                	beqz	a3,10544 <__call_exitprocs+0x54>
   1055a:	31042703          	lw	a4,784(s0)
   1055e:	009b163b          	sllw	a2,s6,s1
   10562:	00842b83          	lw	s7,8(s0)
   10566:	8f71                	and	a4,a4,a2
   10568:	2701                	sext.w	a4,a4
   1056a:	ef09                	bnez	a4,10584 <__call_exitprocs+0x94>
   1056c:	9682                	jalr	a3
   1056e:	4418                	lw	a4,8(s0)
   10570:	1f89b783          	ld	a5,504(s3)
   10574:	f9771de3          	bne	a4,s7,1050e <__call_exitprocs+0x1e>
   10578:	fcf406e3          	beq	s0,a5,10544 <__call_exitprocs+0x54>
   1057c:	bf49                	j	1050e <__call_exitprocs+0x1e>
   1057e:	00093823          	sd	zero,16(s2)
   10582:	bfd9                	j	10558 <__call_exitprocs+0x68>
   10584:	31442783          	lw	a5,788(s0)
   10588:	11093583          	ld	a1,272(s2)
   1058c:	8ff1                	and	a5,a5,a2
   1058e:	2781                	sext.w	a5,a5
   10590:	e781                	bnez	a5,10598 <__call_exitprocs+0xa8>
   10592:	8556                	mv	a0,s5
   10594:	9682                	jalr	a3
   10596:	bfe1                	j	1056e <__call_exitprocs+0x7e>
   10598:	852e                	mv	a0,a1
   1059a:	9682                	jalr	a3
   1059c:	bfc9                	j	1056e <__call_exitprocs+0x7e>
	...

00000000000105a0 <conv_stat>:
   105a0:	619c                	ld	a5,0(a1)
   105a2:	00f51023          	sh	a5,0(a0)
   105a6:	659c                	ld	a5,8(a1)
   105a8:	00f51123          	sh	a5,2(a0)
   105ac:	499c                	lw	a5,16(a1)
   105ae:	c15c                	sw	a5,4(a0)
   105b0:	49dc                	lw	a5,20(a1)
   105b2:	00f51423          	sh	a5,8(a0)
   105b6:	4d9c                	lw	a5,24(a1)
   105b8:	00f51523          	sh	a5,10(a0)
   105bc:	4ddc                	lw	a5,28(a1)
   105be:	00f51623          	sh	a5,12(a0)
   105c2:	719c                	ld	a5,32(a1)
   105c4:	00f51723          	sh	a5,14(a0)
   105c8:	799c                	ld	a5,48(a1)
   105ca:	e91c                	sd	a5,16(a0)
   105cc:	61bc                	ld	a5,64(a1)
   105ce:	e93c                	sd	a5,80(a0)
   105d0:	5d9c                	lw	a5,56(a1)
   105d2:	e53c                	sd	a5,72(a0)
   105d4:	65bc                	ld	a5,72(a1)
   105d6:	ed1c                	sd	a5,24(a0)
   105d8:	6dbc                	ld	a5,88(a1)
   105da:	f51c                	sd	a5,40(a0)
   105dc:	75bc                	ld	a5,104(a1)
   105de:	fd1c                	sd	a5,56(a0)
   105e0:	8082                	ret

00000000000105e2 <__syscall_error>:
   105e2:	1141                	addi	sp,sp,-16
   105e4:	e022                	sd	s0,0(sp)
   105e6:	e406                	sd	ra,8(sp)
   105e8:	842a                	mv	s0,a0
   105ea:	00000097          	auipc	ra,0x0
   105ee:	3ba080e7          	jalr	954(ra) # 109a4 <__errno>
   105f2:	408007bb          	negw	a5,s0
   105f6:	60a2                	ld	ra,8(sp)
   105f8:	6402                	ld	s0,0(sp)
   105fa:	c11c                	sw	a5,0(a0)
   105fc:	557d                	li	a0,-1
   105fe:	0141                	addi	sp,sp,16
   10600:	8082                	ret

0000000000010602 <__internal_syscall>:
   10602:	88aa                	mv	a7,a0
   10604:	852e                	mv	a0,a1
   10606:	85b2                	mv	a1,a2
   10608:	8636                	mv	a2,a3
   1060a:	86ba                	mv	a3,a4
   1060c:	00000073          	ecall
   10610:	00055663          	bgez	a0,1061c <__internal_syscall+0x1a>
   10614:	00000317          	auipc	t1,0x0
   10618:	fce30067          	jr	-50(t1) # 105e2 <__syscall_error>
   1061c:	8082                	ret

000000000001061e <open>:
   1061e:	1141                	addi	sp,sp,-16
   10620:	86b2                	mv	a3,a2
   10622:	4701                	li	a4,0
   10624:	862e                	mv	a2,a1
   10626:	85aa                	mv	a1,a0
   10628:	40000513          	li	a0,1024
   1062c:	e406                	sd	ra,8(sp)
   1062e:	00000097          	auipc	ra,0x0
   10632:	fd4080e7          	jalr	-44(ra) # 10602 <__internal_syscall>
   10636:	60a2                	ld	ra,8(sp)
   10638:	2501                	sext.w	a0,a0
   1063a:	0141                	addi	sp,sp,16
   1063c:	8082                	ret

000000000001063e <openat>:
   1063e:	1141                	addi	sp,sp,-16
   10640:	8736                	mv	a4,a3
   10642:	86b2                	mv	a3,a2
   10644:	862e                	mv	a2,a1
   10646:	85aa                	mv	a1,a0
   10648:	03800513          	li	a0,56
   1064c:	e406                	sd	ra,8(sp)
   1064e:	fb5ff0ef          	jal	ra,10602 <__internal_syscall>
   10652:	60a2                	ld	ra,8(sp)
   10654:	2501                	sext.w	a0,a0
   10656:	0141                	addi	sp,sp,16
   10658:	8082                	ret

000000000001065a <lseek>:
   1065a:	86b2                	mv	a3,a2
   1065c:	4701                	li	a4,0
   1065e:	862e                	mv	a2,a1
   10660:	85aa                	mv	a1,a0
   10662:	03e00513          	li	a0,62
   10666:	00000317          	auipc	t1,0x0
   1066a:	f9c30067          	jr	-100(t1) # 10602 <__internal_syscall>

000000000001066e <read>:
   1066e:	86b2                	mv	a3,a2
   10670:	4701                	li	a4,0
   10672:	862e                	mv	a2,a1
   10674:	85aa                	mv	a1,a0
   10676:	03f00513          	li	a0,63
   1067a:	f89ff06f          	j	10602 <__internal_syscall>

000000000001067e <write>:
   1067e:	86b2                	mv	a3,a2
   10680:	4701                	li	a4,0
   10682:	862e                	mv	a2,a1
   10684:	85aa                	mv	a1,a0
   10686:	04000513          	li	a0,64
   1068a:	00000317          	auipc	t1,0x0
   1068e:	f7830067          	jr	-136(t1) # 10602 <__internal_syscall>

0000000000010692 <fstat>:
   10692:	7135                	addi	sp,sp,-160
   10694:	e526                	sd	s1,136(sp)
   10696:	860a                	mv	a2,sp
   10698:	84ae                	mv	s1,a1
   1069a:	4701                	li	a4,0
   1069c:	85aa                	mv	a1,a0
   1069e:	4681                	li	a3,0
   106a0:	05000513          	li	a0,80
   106a4:	ed06                	sd	ra,152(sp)
   106a6:	e922                	sd	s0,144(sp)
   106a8:	f5bff0ef          	jal	ra,10602 <__internal_syscall>
   106ac:	842a                	mv	s0,a0
   106ae:	858a                	mv	a1,sp
   106b0:	8526                	mv	a0,s1
   106b2:	eefff0ef          	jal	ra,105a0 <conv_stat>
   106b6:	0004051b          	sext.w	a0,s0
   106ba:	60ea                	ld	ra,152(sp)
   106bc:	644a                	ld	s0,144(sp)
   106be:	64aa                	ld	s1,136(sp)
   106c0:	610d                	addi	sp,sp,160
   106c2:	8082                	ret

00000000000106c4 <stat>:
   106c4:	7135                	addi	sp,sp,-160
   106c6:	e526                	sd	s1,136(sp)
   106c8:	860a                	mv	a2,sp
   106ca:	84ae                	mv	s1,a1
   106cc:	4701                	li	a4,0
   106ce:	85aa                	mv	a1,a0
   106d0:	4681                	li	a3,0
   106d2:	40e00513          	li	a0,1038
   106d6:	ed06                	sd	ra,152(sp)
   106d8:	e922                	sd	s0,144(sp)
   106da:	00000097          	auipc	ra,0x0
   106de:	f28080e7          	jalr	-216(ra) # 10602 <__internal_syscall>
   106e2:	842a                	mv	s0,a0
   106e4:	858a                	mv	a1,sp
   106e6:	8526                	mv	a0,s1
   106e8:	00000097          	auipc	ra,0x0
   106ec:	eb8080e7          	jalr	-328(ra) # 105a0 <conv_stat>
   106f0:	0004051b          	sext.w	a0,s0
   106f4:	60ea                	ld	ra,152(sp)
   106f6:	644a                	ld	s0,144(sp)
   106f8:	64aa                	ld	s1,136(sp)
   106fa:	610d                	addi	sp,sp,160
   106fc:	8082                	ret

00000000000106fe <lstat>:
   106fe:	7135                	addi	sp,sp,-160
   10700:	e526                	sd	s1,136(sp)
   10702:	860a                	mv	a2,sp
   10704:	84ae                	mv	s1,a1
   10706:	4701                	li	a4,0
   10708:	85aa                	mv	a1,a0
   1070a:	4681                	li	a3,0
   1070c:	40f00513          	li	a0,1039
   10710:	ed06                	sd	ra,152(sp)
   10712:	e922                	sd	s0,144(sp)
   10714:	eefff0ef          	jal	ra,10602 <__internal_syscall>
   10718:	842a                	mv	s0,a0
   1071a:	858a                	mv	a1,sp
   1071c:	8526                	mv	a0,s1
   1071e:	e83ff0ef          	jal	ra,105a0 <conv_stat>
   10722:	0004051b          	sext.w	a0,s0
   10726:	60ea                	ld	ra,152(sp)
   10728:	644a                	ld	s0,144(sp)
   1072a:	64aa                	ld	s1,136(sp)
   1072c:	610d                	addi	sp,sp,160
   1072e:	8082                	ret

0000000000010730 <fstatat>:
   10730:	7135                	addi	sp,sp,-160
   10732:	e526                	sd	s1,136(sp)
   10734:	8736                	mv	a4,a3
   10736:	84b2                	mv	s1,a2
   10738:	868a                	mv	a3,sp
   1073a:	862e                	mv	a2,a1
   1073c:	85aa                	mv	a1,a0
   1073e:	04f00513          	li	a0,79
   10742:	ed06                	sd	ra,152(sp)
   10744:	e922                	sd	s0,144(sp)
   10746:	00000097          	auipc	ra,0x0
   1074a:	ebc080e7          	jalr	-324(ra) # 10602 <__internal_syscall>
   1074e:	842a                	mv	s0,a0
   10750:	858a                	mv	a1,sp
   10752:	8526                	mv	a0,s1
   10754:	00000097          	auipc	ra,0x0
   10758:	e4c080e7          	jalr	-436(ra) # 105a0 <conv_stat>
   1075c:	0004051b          	sext.w	a0,s0
   10760:	60ea                	ld	ra,152(sp)
   10762:	644a                	ld	s0,144(sp)
   10764:	64aa                	ld	s1,136(sp)
   10766:	610d                	addi	sp,sp,160
   10768:	8082                	ret

000000000001076a <access>:
   1076a:	1141                	addi	sp,sp,-16
   1076c:	862e                	mv	a2,a1
   1076e:	4701                	li	a4,0
   10770:	85aa                	mv	a1,a0
   10772:	4681                	li	a3,0
   10774:	40900513          	li	a0,1033
   10778:	e406                	sd	ra,8(sp)
   1077a:	e89ff0ef          	jal	ra,10602 <__internal_syscall>
   1077e:	60a2                	ld	ra,8(sp)
   10780:	2501                	sext.w	a0,a0
   10782:	0141                	addi	sp,sp,16
   10784:	8082                	ret

0000000000010786 <faccessat>:
   10786:	1141                	addi	sp,sp,-16
   10788:	8736                	mv	a4,a3
   1078a:	86b2                	mv	a3,a2
   1078c:	862e                	mv	a2,a1
   1078e:	85aa                	mv	a1,a0
   10790:	03000513          	li	a0,48
   10794:	e406                	sd	ra,8(sp)
   10796:	00000097          	auipc	ra,0x0
   1079a:	e6c080e7          	jalr	-404(ra) # 10602 <__internal_syscall>
   1079e:	60a2                	ld	ra,8(sp)
   107a0:	2501                	sext.w	a0,a0
   107a2:	0141                	addi	sp,sp,16
   107a4:	8082                	ret

00000000000107a6 <close>:
   107a6:	1141                	addi	sp,sp,-16
   107a8:	85aa                	mv	a1,a0
   107aa:	4701                	li	a4,0
   107ac:	4681                	li	a3,0
   107ae:	4601                	li	a2,0
   107b0:	03900513          	li	a0,57
   107b4:	e406                	sd	ra,8(sp)
   107b6:	e4dff0ef          	jal	ra,10602 <__internal_syscall>
   107ba:	60a2                	ld	ra,8(sp)
   107bc:	2501                	sext.w	a0,a0
   107be:	0141                	addi	sp,sp,16
   107c0:	8082                	ret

00000000000107c2 <link>:
   107c2:	1141                	addi	sp,sp,-16
   107c4:	862e                	mv	a2,a1
   107c6:	4701                	li	a4,0
   107c8:	85aa                	mv	a1,a0
   107ca:	4681                	li	a3,0
   107cc:	40100513          	li	a0,1025
   107d0:	e406                	sd	ra,8(sp)
   107d2:	00000097          	auipc	ra,0x0
   107d6:	e30080e7          	jalr	-464(ra) # 10602 <__internal_syscall>
   107da:	60a2                	ld	ra,8(sp)
   107dc:	2501                	sext.w	a0,a0
   107de:	0141                	addi	sp,sp,16
   107e0:	8082                	ret

00000000000107e2 <unlink>:
   107e2:	1141                	addi	sp,sp,-16
   107e4:	85aa                	mv	a1,a0
   107e6:	4701                	li	a4,0
   107e8:	4681                	li	a3,0
   107ea:	4601                	li	a2,0
   107ec:	40200513          	li	a0,1026
   107f0:	e406                	sd	ra,8(sp)
   107f2:	e11ff0ef          	jal	ra,10602 <__internal_syscall>
   107f6:	60a2                	ld	ra,8(sp)
   107f8:	2501                	sext.w	a0,a0
   107fa:	0141                	addi	sp,sp,16
   107fc:	8082                	ret

00000000000107fe <execve>:
   107fe:	1141                	addi	sp,sp,-16
   10800:	e406                	sd	ra,8(sp)
   10802:	00000097          	auipc	ra,0x0
   10806:	1a2080e7          	jalr	418(ra) # 109a4 <__errno>
   1080a:	60a2                	ld	ra,8(sp)
   1080c:	47b1                	li	a5,12
   1080e:	c11c                	sw	a5,0(a0)
   10810:	557d                	li	a0,-1
   10812:	0141                	addi	sp,sp,16
   10814:	8082                	ret

0000000000010816 <fork>:
   10816:	1141                	addi	sp,sp,-16
   10818:	e406                	sd	ra,8(sp)
   1081a:	18a000ef          	jal	ra,109a4 <__errno>
   1081e:	60a2                	ld	ra,8(sp)
   10820:	47ad                	li	a5,11
   10822:	c11c                	sw	a5,0(a0)
   10824:	557d                	li	a0,-1
   10826:	0141                	addi	sp,sp,16
   10828:	8082                	ret

000000000001082a <getpid>:
   1082a:	4505                	li	a0,1
   1082c:	8082                	ret

000000000001082e <kill>:
   1082e:	1141                	addi	sp,sp,-16
   10830:	e406                	sd	ra,8(sp)
   10832:	172000ef          	jal	ra,109a4 <__errno>
   10836:	60a2                	ld	ra,8(sp)
   10838:	47d9                	li	a5,22
   1083a:	c11c                	sw	a5,0(a0)
   1083c:	557d                	li	a0,-1
   1083e:	0141                	addi	sp,sp,16
   10840:	8082                	ret

0000000000010842 <wait>:
   10842:	1141                	addi	sp,sp,-16
   10844:	e406                	sd	ra,8(sp)
   10846:	00000097          	auipc	ra,0x0
   1084a:	15e080e7          	jalr	350(ra) # 109a4 <__errno>
   1084e:	60a2                	ld	ra,8(sp)
   10850:	47a9                	li	a5,10
   10852:	c11c                	sw	a5,0(a0)
   10854:	557d                	li	a0,-1
   10856:	0141                	addi	sp,sp,16
   10858:	8082                	ret

000000000001085a <isatty>:
   1085a:	7119                	addi	sp,sp,-128
   1085c:	002c                	addi	a1,sp,8
   1085e:	fc86                	sd	ra,120(sp)
   10860:	e33ff0ef          	jal	ra,10692 <fstat>
   10864:	57fd                	li	a5,-1
   10866:	00f50663          	beq	a0,a5,10872 <isatty+0x18>
   1086a:	4532                	lw	a0,12(sp)
   1086c:	40d5551b          	sraiw	a0,a0,0xd
   10870:	8905                	andi	a0,a0,1
   10872:	70e6                	ld	ra,120(sp)
   10874:	6109                	addi	sp,sp,128
   10876:	8082                	ret

0000000000010878 <gettimeofday>:
   10878:	1141                	addi	sp,sp,-16
   1087a:	85aa                	mv	a1,a0
   1087c:	4701                	li	a4,0
   1087e:	4681                	li	a3,0
   10880:	4601                	li	a2,0
   10882:	0a900513          	li	a0,169
   10886:	e406                	sd	ra,8(sp)
   10888:	00000097          	auipc	ra,0x0
   1088c:	d7a080e7          	jalr	-646(ra) # 10602 <__internal_syscall>
   10890:	60a2                	ld	ra,8(sp)
   10892:	2501                	sext.w	a0,a0
   10894:	0141                	addi	sp,sp,16
   10896:	8082                	ret

0000000000010898 <times>:
   10898:	7179                	addi	sp,sp,-48
   1089a:	f022                	sd	s0,32(sp)
   1089c:	842a                	mv	s0,a0
   1089e:	8601b783          	ld	a5,-1952(gp) # 117d0 <t0.2574>
   108a2:	ec26                	sd	s1,24(sp)
   108a4:	f406                	sd	ra,40(sp)
   108a6:	86018493          	addi	s1,gp,-1952 # 117d0 <t0.2574>
   108aa:	eb81                	bnez	a5,108ba <times+0x22>
   108ac:	4581                	li	a1,0
   108ae:	86018513          	addi	a0,gp,-1952 # 117d0 <t0.2574>
   108b2:	00000097          	auipc	ra,0x0
   108b6:	fc6080e7          	jalr	-58(ra) # 10878 <gettimeofday>
   108ba:	850a                	mv	a0,sp
   108bc:	4581                	li	a1,0
   108be:	00000097          	auipc	ra,0x0
   108c2:	fba080e7          	jalr	-70(ra) # 10878 <gettimeofday>
   108c6:	6098                	ld	a4,0(s1)
   108c8:	6782                	ld	a5,0(sp)
   108ca:	6494                	ld	a3,8(s1)
   108cc:	00043823          	sd	zero,16(s0)
   108d0:	8f99                	sub	a5,a5,a4
   108d2:	000f4737          	lui	a4,0xf4
   108d6:	24070713          	addi	a4,a4,576 # f4240 <__global_pointer$+0xe22d0>
   108da:	02e787b3          	mul	a5,a5,a4
   108de:	6722                	ld	a4,8(sp)
   108e0:	00043c23          	sd	zero,24(s0)
   108e4:	00043423          	sd	zero,8(s0)
   108e8:	8f15                	sub	a4,a4,a3
   108ea:	70a2                	ld	ra,40(sp)
   108ec:	64e2                	ld	s1,24(sp)
   108ee:	557d                	li	a0,-1
   108f0:	97ba                	add	a5,a5,a4
   108f2:	e01c                	sd	a5,0(s0)
   108f4:	7402                	ld	s0,32(sp)
   108f6:	6145                	addi	sp,sp,48
   108f8:	8082                	ret

00000000000108fa <ftime>:
   108fa:	00051423          	sh	zero,8(a0)
   108fe:	00053023          	sd	zero,0(a0)
   10902:	4501                	li	a0,0
   10904:	8082                	ret

0000000000010906 <utime>:
   10906:	557d                	li	a0,-1
   10908:	8082                	ret

000000000001090a <chown>:
   1090a:	557d                	li	a0,-1
   1090c:	8082                	ret

000000000001090e <chmod>:
   1090e:	557d                	li	a0,-1
   10910:	8082                	ret

0000000000010912 <chdir>:
   10912:	557d                	li	a0,-1
   10914:	8082                	ret

0000000000010916 <getcwd>:
   10916:	4501                	li	a0,0
   10918:	8082                	ret

000000000001091a <sysconf>:
   1091a:	4789                	li	a5,2
   1091c:	00f50463          	beq	a0,a5,10924 <sysconf+0xa>
   10920:	557d                	li	a0,-1
   10922:	8082                	ret
   10924:	000f4537          	lui	a0,0xf4
   10928:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22d0>
   1092c:	8082                	ret

000000000001092e <sbrk>:
   1092e:	1101                	addi	sp,sp,-32
   10930:	e822                	sd	s0,16(sp)
   10932:	8201b783          	ld	a5,-2016(gp) # 11790 <_edata>
   10936:	e426                	sd	s1,8(sp)
   10938:	ec06                	sd	ra,24(sp)
   1093a:	84aa                	mv	s1,a0
   1093c:	e785                	bnez	a5,10964 <sbrk+0x36>
   1093e:	4701                	li	a4,0
   10940:	4681                	li	a3,0
   10942:	4601                	li	a2,0
   10944:	4581                	li	a1,0
   10946:	0d600513          	li	a0,214
   1094a:	cb9ff0ef          	jal	ra,10602 <__internal_syscall>
   1094e:	57fd                	li	a5,-1
   10950:	00f51863          	bne	a0,a5,10960 <sbrk+0x32>
   10954:	557d                	li	a0,-1
   10956:	60e2                	ld	ra,24(sp)
   10958:	6442                	ld	s0,16(sp)
   1095a:	64a2                	ld	s1,8(sp)
   1095c:	6105                	addi	sp,sp,32
   1095e:	8082                	ret
   10960:	82a1b023          	sd	a0,-2016(gp) # 11790 <_edata>
   10964:	8201b583          	ld	a1,-2016(gp) # 11790 <_edata>
   10968:	4701                	li	a4,0
   1096a:	4681                	li	a3,0
   1096c:	95a6                	add	a1,a1,s1
   1096e:	4601                	li	a2,0
   10970:	0d600513          	li	a0,214
   10974:	c8fff0ef          	jal	ra,10602 <__internal_syscall>
   10978:	8201b783          	ld	a5,-2016(gp) # 11790 <_edata>
   1097c:	94be                	add	s1,s1,a5
   1097e:	fc951be3          	bne	a0,s1,10954 <sbrk+0x26>
   10982:	82a1b023          	sd	a0,-2016(gp) # 11790 <_edata>
   10986:	853e                	mv	a0,a5
   10988:	b7f9                	j	10956 <sbrk+0x28>

000000000001098a <_exit>:
   1098a:	1141                	addi	sp,sp,-16
   1098c:	85aa                	mv	a1,a0
   1098e:	4701                	li	a4,0
   10990:	4681                	li	a3,0
   10992:	4601                	li	a2,0
   10994:	05d00513          	li	a0,93
   10998:	e406                	sd	ra,8(sp)
   1099a:	00000097          	auipc	ra,0x0
   1099e:	c68080e7          	jalr	-920(ra) # 10602 <__internal_syscall>
   109a2:	a001                	j	109a2 <_exit+0x18>

00000000000109a4 <__errno>:
   109a4:	8181b503          	ld	a0,-2024(gp) # 11788 <_impure_ptr>
   109a8:	8082                	ret
	...

Disassembly of section .eh_frame:

00000000000109b0 <__EH_FRAME_BEGIN__>:
   109b0:	0010                	addi	a2,sp,0
   109b2:	0000                	unimp
   109b4:	0000                	unimp
   109b6:	0000                	unimp
   109b8:	7a01                	lui	s4,0xfffe0
   109ba:	0052                	0x52
   109bc:	7c01                	lui	s8,0xfffe0
   109be:	0101                	addi	sp,sp,0
   109c0:	00020d1b          	sext.w	s10,tp
   109c4:	0020                	addi	s0,sp,8
   109c6:	0000                	unimp
   109c8:	0018                	addi	a4,sp,0
   109ca:	0000                	unimp
   109cc:	f7e0                	sd	s0,232(a5)
   109ce:	ffff                	0xffff
   109d0:	0148                	addi	a0,sp,132
   109d2:	0000                	unimp
   109d4:	4400                	lw	s0,8(s0)
   109d6:	100e                	0x100e
   109d8:	8844                	0x8844
   109da:	4402                	lw	s0,0(sp)
   109dc:	080c                	addi	a1,sp,16
   109de:	0300                	addi	s0,sp,384
   109e0:	0134                	addi	a3,sp,136
   109e2:	44c8                	lw	a0,12(s1)
   109e4:	020d                	addi	tp,tp,3
	...

00000000000109e8 <__FRAME_END__>:
   109e8:	0000                	unimp
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
	...

0000000000011028 <impure_data>:
	...
   11030:	1560                	addi	s0,sp,684
   11032:	0001                	nop
   11034:	0000                	unimp
   11036:	0000                	unimp
   11038:	1610                	addi	a2,sp,800
   1103a:	0001                	nop
   1103c:	0000                	unimp
   1103e:	0000                	unimp
   11040:	16c0                	addi	s0,sp,868
   11042:	0001                	nop
	...
   11110:	0001                	nop
   11112:	0000                	unimp
   11114:	0000                	unimp
   11116:	0000                	unimp
   11118:	330e                	fld	ft6,224(sp)
   1111a:	abcd                	j	1170c <impure_data+0x6e4>
   1111c:	1234                	addi	a3,sp,296
   1111e:	e66d                	bnez	a2,11208 <impure_data+0x1e0>
   11120:	deec                	sw	a1,124(a3)
   11122:	0005                	c.addi	zero,1
   11124:	0000000b          	0xb
	...

Disassembly of section .sdata:

0000000000011770 <__TMC_END__>:
	...

0000000000011778 <temp>:
   11778:	0002                	0x2
   1177a:	0000                	unimp
   1177c:	0000                	unimp
	...

0000000000011780 <_global_impure_ptr>:
   11780:	1028                	addi	a0,sp,40
   11782:	0001                	nop
   11784:	0000                	unimp
	...

0000000000011788 <_impure_ptr>:
   11788:	1028                	addi	a0,sp,40
   1178a:	0001                	nop
   1178c:	0000                	unimp
	...

Disassembly of section .sbss:

0000000000011790 <__bss_start>:
	...

Disassembly of section .bss:

0000000000011798 <completed.5184>:
	...

00000000000117a0 <object.5189>:
	...

00000000000117d0 <t0.2574>:
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
