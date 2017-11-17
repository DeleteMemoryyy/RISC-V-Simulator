
Test/9:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ea818193          	addi	gp,gp,-344 # 11f58 <__global_pointer$>
   100b8:	82818513          	addi	a0,gp,-2008 # 11780 <_edata>
   100bc:	87818613          	addi	a2,gp,-1928 # 117d0 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	276000ef          	jal	ra,1033a <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	1bc50513          	addi	a0,a0,444 # 10284 <__libc_fini_array>
   100d0:	00000097          	auipc	ra,0x0
   100d4:	182080e7          	jalr	386(ra) # 10252 <atexit>
   100d8:	00000097          	auipc	ra,0x0
   100dc:	1fa080e7          	jalr	506(ra) # 102d2 <__libc_init_array>
   100e0:	4502                	lw	a0,0(sp)
   100e2:	002c                	addi	a1,sp,8
   100e4:	4601                	li	a2,0
   100e6:	13a000ef          	jal	ra,10220 <main>
   100ea:	00000317          	auipc	t1,0x0
   100ee:	17630067          	jr	374(t1) # 10260 <exit>

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
   10144:	8301c703          	lbu	a4,-2000(gp) # 11788 <completed.5184>
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
   10162:	90850513          	addi	a0,a0,-1784 # 10908 <__EH_FRAME_BEGIN__>
   10166:	ffff0097          	auipc	ra,0xffff0
   1016a:	e9a080e7          	jalr	-358(ra) # 0 <_start-0x100b0>
   1016e:	4785                	li	a5,1
   10170:	82f18823          	sb	a5,-2000(gp) # 11788 <completed.5184>
   10174:	60a2                	ld	ra,8(sp)
   10176:	6402                	ld	s0,0(sp)
   10178:	0141                	addi	sp,sp,16
   1017a:	8082                	ret
   1017c:	8082                	ret

000000000001017e <frame_dummy>:
   1017e:	000007b7          	lui	a5,0x0
   10182:	00078793          	mv	a5,a5
   10186:	cf91                	beqz	a5,101a2 <frame_dummy+0x24>
   10188:	6545                	lui	a0,0x11
   1018a:	1141                	addi	sp,sp,-16
   1018c:	83818593          	addi	a1,gp,-1992 # 11790 <object.5189>
   10190:	90850513          	addi	a0,a0,-1784 # 10908 <__EH_FRAME_BEGIN__>
   10194:	e406                	sd	ra,8(sp)
   10196:	ffff0097          	auipc	ra,0xffff0
   1019a:	e6a080e7          	jalr	-406(ra) # 0 <_start-0x100b0>
   1019e:	60a2                	ld	ra,8(sp)
   101a0:	0141                	addi	sp,sp,16
   101a2:	f77ff06f          	j	10118 <register_tm_clones>
	...

00000000000101a8 <_Z4testv>:
   101a8:	ff010113          	addi	sp,sp,-16
   101ac:	00813423          	sd	s0,8(sp)
   101b0:	01010413          	addi	s0,sp,16
   101b4:	80c1a703          	lw	a4,-2036(gp) # 11764 <b>
   101b8:	8101a783          	lw	a5,-2032(gp) # 11768 <c>
   101bc:	00f707bb          	addw	a5,a4,a5
   101c0:	0007871b          	sext.w	a4,a5
   101c4:	000117b7          	lui	a5,0x11
   101c8:	76e7a023          	sw	a4,1888(a5) # 11760 <a>
   101cc:	000117b7          	lui	a5,0x11
   101d0:	7607a703          	lw	a4,1888(a5) # 11760 <a>
   101d4:	8101a783          	lw	a5,-2032(gp) # 11768 <c>
   101d8:	02f707bb          	mulw	a5,a4,a5
   101dc:	0007871b          	sext.w	a4,a5
   101e0:	80e1a623          	sw	a4,-2036(gp) # 11764 <b>
   101e4:	80c1a703          	lw	a4,-2036(gp) # 11764 <b>
   101e8:	8101a783          	lw	a5,-2032(gp) # 11768 <c>
   101ec:	40f707bb          	subw	a5,a4,a5
   101f0:	0007871b          	sext.w	a4,a5
   101f4:	80e1a823          	sw	a4,-2032(gp) # 11768 <c>
   101f8:	80c1a703          	lw	a4,-2036(gp) # 11764 <b>
   101fc:	8101a783          	lw	a5,-2032(gp) # 11768 <c>
   10200:	02f747bb          	divw	a5,a4,a5
   10204:	0007871b          	sext.w	a4,a5
   10208:	000117b7          	lui	a5,0x11
   1020c:	76e7a023          	sw	a4,1888(a5) # 11760 <a>
   10210:	00000013          	nop
   10214:	00813403          	ld	s0,8(sp)
   10218:	01010113          	addi	sp,sp,16
   1021c:	00008067          	ret

0000000000010220 <main>:
   10220:	ff010113          	addi	sp,sp,-16
   10224:	00113423          	sd	ra,8(sp)
   10228:	00813023          	sd	s0,0(sp)
   1022c:	01010413          	addi	s0,sp,16
   10230:	00000097          	auipc	ra,0x0
   10234:	f78080e7          	jalr	-136(ra) # 101a8 <_Z4testv>
   10238:	00000793          	li	a5,0
   1023c:	00078513          	mv	a0,a5
   10240:	00813083          	ld	ra,8(sp)
   10244:	00013403          	ld	s0,0(sp)
   10248:	01010113          	addi	sp,sp,16
   1024c:	00008067          	ret
	...

0000000000010252 <atexit>:
   10252:	85aa                	mv	a1,a0
   10254:	4681                	li	a3,0
   10256:	4601                	li	a2,0
   10258:	4501                	li	a0,0
   1025a:	18a0006f          	j	103e4 <__register_exitproc>
	...

0000000000010260 <exit>:
   10260:	1141                	addi	sp,sp,-16
   10262:	4581                	li	a1,0
   10264:	e022                	sd	s0,0(sp)
   10266:	e406                	sd	ra,8(sp)
   10268:	842a                	mv	s0,a0
   1026a:	1e0000ef          	jal	ra,1044a <__call_exitprocs>
   1026e:	8181b503          	ld	a0,-2024(gp) # 11770 <_global_impure_ptr>
   10272:	6d3c                	ld	a5,88(a0)
   10274:	c391                	beqz	a5,10278 <exit+0x18>
   10276:	9782                	jalr	a5
   10278:	8522                	mv	a0,s0
   1027a:	00000097          	auipc	ra,0x0
   1027e:	66a080e7          	jalr	1642(ra) # 108e4 <_exit>
	...

0000000000010284 <__libc_fini_array>:
   10284:	7179                	addi	sp,sp,-48
   10286:	67c5                	lui	a5,0x11
   10288:	6745                	lui	a4,0x11
   1028a:	f022                	sd	s0,32(sp)
   1028c:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   10290:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   10294:	8c19                	sub	s0,s0,a4
   10296:	ec26                	sd	s1,24(sp)
   10298:	e84a                	sd	s2,16(sp)
   1029a:	e44e                	sd	s3,8(sp)
   1029c:	f406                	sd	ra,40(sp)
   1029e:	840d                	srai	s0,s0,0x3
   102a0:	4481                	li	s1,0
   102a2:	01078913          	addi	s2,a5,16
   102a6:	59e1                	li	s3,-8
   102a8:	00941c63          	bne	s0,s1,102c0 <__libc_fini_array+0x3c>
   102ac:	7402                	ld	s0,32(sp)
   102ae:	70a2                	ld	ra,40(sp)
   102b0:	64e2                	ld	s1,24(sp)
   102b2:	6942                	ld	s2,16(sp)
   102b4:	69a2                	ld	s3,8(sp)
   102b6:	6145                	addi	sp,sp,48
   102b8:	00000317          	auipc	t1,0x0
   102bc:	e3a30067          	jr	-454(t1) # 100f2 <_fini>
   102c0:	033487b3          	mul	a5,s1,s3
   102c4:	0485                	addi	s1,s1,1
   102c6:	97ca                	add	a5,a5,s2
   102c8:	ff87b783          	ld	a5,-8(a5)
   102cc:	9782                	jalr	a5
   102ce:	bfe9                	j	102a8 <__libc_fini_array+0x24>
	...

00000000000102d2 <__libc_init_array>:
   102d2:	1101                	addi	sp,sp,-32
   102d4:	e822                	sd	s0,16(sp)
   102d6:	e426                	sd	s1,8(sp)
   102d8:	6445                	lui	s0,0x11
   102da:	64c5                	lui	s1,0x11
   102dc:	00048793          	mv	a5,s1
   102e0:	00040413          	mv	s0,s0
   102e4:	8c1d                	sub	s0,s0,a5
   102e6:	e04a                	sd	s2,0(sp)
   102e8:	ec06                	sd	ra,24(sp)
   102ea:	840d                	srai	s0,s0,0x3
   102ec:	00048493          	mv	s1,s1
   102f0:	4901                	li	s2,0
   102f2:	02891963          	bne	s2,s0,10324 <__libc_init_array+0x52>
   102f6:	64c5                	lui	s1,0x11
   102f8:	00000097          	auipc	ra,0x0
   102fc:	dfa080e7          	jalr	-518(ra) # 100f2 <_fini>
   10300:	6445                	lui	s0,0x11
   10302:	00048793          	mv	a5,s1
   10306:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   1030a:	8c1d                	sub	s0,s0,a5
   1030c:	840d                	srai	s0,s0,0x3
   1030e:	00048493          	mv	s1,s1
   10312:	4901                	li	s2,0
   10314:	00891d63          	bne	s2,s0,1032e <__libc_init_array+0x5c>
   10318:	60e2                	ld	ra,24(sp)
   1031a:	6442                	ld	s0,16(sp)
   1031c:	64a2                	ld	s1,8(sp)
   1031e:	6902                	ld	s2,0(sp)
   10320:	6105                	addi	sp,sp,32
   10322:	8082                	ret
   10324:	609c                	ld	a5,0(s1)
   10326:	0905                	addi	s2,s2,1
   10328:	04a1                	addi	s1,s1,8
   1032a:	9782                	jalr	a5
   1032c:	b7d9                	j	102f2 <__libc_init_array+0x20>
   1032e:	609c                	ld	a5,0(s1)
   10330:	0905                	addi	s2,s2,1
   10332:	04a1                	addi	s1,s1,8
   10334:	9782                	jalr	a5
   10336:	bff9                	j	10314 <__libc_init_array+0x42>
	...

000000000001033a <memset>:
   1033a:	483d                	li	a6,15
   1033c:	872a                	mv	a4,a0
   1033e:	02c87163          	bleu	a2,a6,10360 <memset+0x26>
   10342:	00f77793          	andi	a5,a4,15
   10346:	e3c1                	bnez	a5,103c6 <memset+0x8c>
   10348:	e1bd                	bnez	a1,103ae <memset+0x74>
   1034a:	ff067693          	andi	a3,a2,-16
   1034e:	8a3d                	andi	a2,a2,15
   10350:	96ba                	add	a3,a3,a4
   10352:	e30c                	sd	a1,0(a4)
   10354:	e70c                	sd	a1,8(a4)
   10356:	0741                	addi	a4,a4,16
   10358:	fed76de3          	bltu	a4,a3,10352 <memset+0x18>
   1035c:	e211                	bnez	a2,10360 <memset+0x26>
   1035e:	8082                	ret
   10360:	40c806b3          	sub	a3,a6,a2
   10364:	068a                	slli	a3,a3,0x2
   10366:	00000297          	auipc	t0,0x0
   1036a:	9696                	add	a3,a3,t0
   1036c:	00a68067          	jr	10(a3)
   10370:	00b70723          	sb	a1,14(a4)
   10374:	00b706a3          	sb	a1,13(a4)
   10378:	00b70623          	sb	a1,12(a4)
   1037c:	00b705a3          	sb	a1,11(a4)
   10380:	00b70523          	sb	a1,10(a4)
   10384:	00b704a3          	sb	a1,9(a4)
   10388:	00b70423          	sb	a1,8(a4)
   1038c:	00b703a3          	sb	a1,7(a4)
   10390:	00b70323          	sb	a1,6(a4)
   10394:	00b702a3          	sb	a1,5(a4)
   10398:	00b70223          	sb	a1,4(a4)
   1039c:	00b701a3          	sb	a1,3(a4)
   103a0:	00b70123          	sb	a1,2(a4)
   103a4:	00b700a3          	sb	a1,1(a4)
   103a8:	00b70023          	sb	a1,0(a4)
   103ac:	8082                	ret
   103ae:	0ff5f593          	andi	a1,a1,255
   103b2:	00859693          	slli	a3,a1,0x8
   103b6:	8dd5                	or	a1,a1,a3
   103b8:	01059693          	slli	a3,a1,0x10
   103bc:	8dd5                	or	a1,a1,a3
   103be:	02059693          	slli	a3,a1,0x20
   103c2:	8dd5                	or	a1,a1,a3
   103c4:	b759                	j	1034a <memset+0x10>
   103c6:	00279693          	slli	a3,a5,0x2
   103ca:	00000297          	auipc	t0,0x0
   103ce:	9696                	add	a3,a3,t0
   103d0:	8286                	mv	t0,ra
   103d2:	fa2680e7          	jalr	-94(a3)
   103d6:	8096                	mv	ra,t0
   103d8:	17c1                	addi	a5,a5,-16
   103da:	8f1d                	sub	a4,a4,a5
   103dc:	963e                	add	a2,a2,a5
   103de:	f8c871e3          	bleu	a2,a6,10360 <memset+0x26>
   103e2:	b79d                	j	10348 <memset+0xe>

00000000000103e4 <__register_exitproc>:
   103e4:	8181b703          	ld	a4,-2024(gp) # 11770 <_global_impure_ptr>
   103e8:	832a                	mv	t1,a0
   103ea:	1f873783          	ld	a5,504(a4)
   103ee:	e789                	bnez	a5,103f8 <__register_exitproc+0x14>
   103f0:	20070793          	addi	a5,a4,512
   103f4:	1ef73c23          	sd	a5,504(a4)
   103f8:	4798                	lw	a4,8(a5)
   103fa:	487d                	li	a6,31
   103fc:	557d                	li	a0,-1
   103fe:	04e84463          	blt	a6,a4,10446 <__register_exitproc+0x62>
   10402:	02030a63          	beqz	t1,10436 <__register_exitproc+0x52>
   10406:	00371813          	slli	a6,a4,0x3
   1040a:	983e                	add	a6,a6,a5
   1040c:	10c83823          	sd	a2,272(a6)
   10410:	3107a883          	lw	a7,784(a5)
   10414:	4605                	li	a2,1
   10416:	00e6163b          	sllw	a2,a2,a4
   1041a:	00c8e8b3          	or	a7,a7,a2
   1041e:	3117a823          	sw	a7,784(a5)
   10422:	20d83823          	sd	a3,528(a6)
   10426:	4689                	li	a3,2
   10428:	00d31763          	bne	t1,a3,10436 <__register_exitproc+0x52>
   1042c:	3147a683          	lw	a3,788(a5)
   10430:	8e55                	or	a2,a2,a3
   10432:	30c7aa23          	sw	a2,788(a5)
   10436:	0017069b          	addiw	a3,a4,1
   1043a:	0709                	addi	a4,a4,2
   1043c:	070e                	slli	a4,a4,0x3
   1043e:	c794                	sw	a3,8(a5)
   10440:	97ba                	add	a5,a5,a4
   10442:	e38c                	sd	a1,0(a5)
   10444:	4501                	li	a0,0
   10446:	8082                	ret
	...

000000000001044a <__call_exitprocs>:
   1044a:	715d                	addi	sp,sp,-80
   1044c:	f44e                	sd	s3,40(sp)
   1044e:	8181b983          	ld	s3,-2024(gp) # 11770 <_global_impure_ptr>
   10452:	f052                	sd	s4,32(sp)
   10454:	ec56                	sd	s5,24(sp)
   10456:	e85a                	sd	s6,16(sp)
   10458:	e486                	sd	ra,72(sp)
   1045a:	e0a2                	sd	s0,64(sp)
   1045c:	fc26                	sd	s1,56(sp)
   1045e:	f84a                	sd	s2,48(sp)
   10460:	e45e                	sd	s7,8(sp)
   10462:	8aaa                	mv	s5,a0
   10464:	8a2e                	mv	s4,a1
   10466:	4b05                	li	s6,1
   10468:	1f89b403          	ld	s0,504(s3)
   1046c:	c801                	beqz	s0,1047c <__call_exitprocs+0x32>
   1046e:	4404                	lw	s1,8(s0)
   10470:	34fd                	addiw	s1,s1,-1
   10472:	00349913          	slli	s2,s1,0x3
   10476:	9922                	add	s2,s2,s0
   10478:	0004dd63          	bgez	s1,10492 <__call_exitprocs+0x48>
   1047c:	60a6                	ld	ra,72(sp)
   1047e:	6406                	ld	s0,64(sp)
   10480:	74e2                	ld	s1,56(sp)
   10482:	7942                	ld	s2,48(sp)
   10484:	79a2                	ld	s3,40(sp)
   10486:	7a02                	ld	s4,32(sp)
   10488:	6ae2                	ld	s5,24(sp)
   1048a:	6b42                	ld	s6,16(sp)
   1048c:	6ba2                	ld	s7,8(sp)
   1048e:	6161                	addi	sp,sp,80
   10490:	8082                	ret
   10492:	000a0963          	beqz	s4,104a4 <__call_exitprocs+0x5a>
   10496:	21093783          	ld	a5,528(s2)
   1049a:	01478563          	beq	a5,s4,104a4 <__call_exitprocs+0x5a>
   1049e:	34fd                	addiw	s1,s1,-1
   104a0:	1961                	addi	s2,s2,-8
   104a2:	bfd9                	j	10478 <__call_exitprocs+0x2e>
   104a4:	441c                	lw	a5,8(s0)
   104a6:	01093683          	ld	a3,16(s2)
   104aa:	37fd                	addiw	a5,a5,-1
   104ac:	02979663          	bne	a5,s1,104d8 <__call_exitprocs+0x8e>
   104b0:	c404                	sw	s1,8(s0)
   104b2:	d6f5                	beqz	a3,1049e <__call_exitprocs+0x54>
   104b4:	31042703          	lw	a4,784(s0)
   104b8:	009b163b          	sllw	a2,s6,s1
   104bc:	00842b83          	lw	s7,8(s0)
   104c0:	8f71                	and	a4,a4,a2
   104c2:	2701                	sext.w	a4,a4
   104c4:	ef09                	bnez	a4,104de <__call_exitprocs+0x94>
   104c6:	9682                	jalr	a3
   104c8:	4418                	lw	a4,8(s0)
   104ca:	1f89b783          	ld	a5,504(s3)
   104ce:	f9771de3          	bne	a4,s7,10468 <__call_exitprocs+0x1e>
   104d2:	fcf406e3          	beq	s0,a5,1049e <__call_exitprocs+0x54>
   104d6:	bf49                	j	10468 <__call_exitprocs+0x1e>
   104d8:	00093823          	sd	zero,16(s2)
   104dc:	bfd9                	j	104b2 <__call_exitprocs+0x68>
   104de:	31442783          	lw	a5,788(s0)
   104e2:	11093583          	ld	a1,272(s2)
   104e6:	8ff1                	and	a5,a5,a2
   104e8:	2781                	sext.w	a5,a5
   104ea:	e781                	bnez	a5,104f2 <__call_exitprocs+0xa8>
   104ec:	8556                	mv	a0,s5
   104ee:	9682                	jalr	a3
   104f0:	bfe1                	j	104c8 <__call_exitprocs+0x7e>
   104f2:	852e                	mv	a0,a1
   104f4:	9682                	jalr	a3
   104f6:	bfc9                	j	104c8 <__call_exitprocs+0x7e>
	...

00000000000104fa <conv_stat>:
   104fa:	619c                	ld	a5,0(a1)
   104fc:	00f51023          	sh	a5,0(a0)
   10500:	659c                	ld	a5,8(a1)
   10502:	00f51123          	sh	a5,2(a0)
   10506:	499c                	lw	a5,16(a1)
   10508:	c15c                	sw	a5,4(a0)
   1050a:	49dc                	lw	a5,20(a1)
   1050c:	00f51423          	sh	a5,8(a0)
   10510:	4d9c                	lw	a5,24(a1)
   10512:	00f51523          	sh	a5,10(a0)
   10516:	4ddc                	lw	a5,28(a1)
   10518:	00f51623          	sh	a5,12(a0)
   1051c:	719c                	ld	a5,32(a1)
   1051e:	00f51723          	sh	a5,14(a0)
   10522:	799c                	ld	a5,48(a1)
   10524:	e91c                	sd	a5,16(a0)
   10526:	61bc                	ld	a5,64(a1)
   10528:	e93c                	sd	a5,80(a0)
   1052a:	5d9c                	lw	a5,56(a1)
   1052c:	e53c                	sd	a5,72(a0)
   1052e:	65bc                	ld	a5,72(a1)
   10530:	ed1c                	sd	a5,24(a0)
   10532:	6dbc                	ld	a5,88(a1)
   10534:	f51c                	sd	a5,40(a0)
   10536:	75bc                	ld	a5,104(a1)
   10538:	fd1c                	sd	a5,56(a0)
   1053a:	8082                	ret

000000000001053c <__syscall_error>:
   1053c:	1141                	addi	sp,sp,-16
   1053e:	e022                	sd	s0,0(sp)
   10540:	e406                	sd	ra,8(sp)
   10542:	842a                	mv	s0,a0
   10544:	00000097          	auipc	ra,0x0
   10548:	3ba080e7          	jalr	954(ra) # 108fe <__errno>
   1054c:	408007bb          	negw	a5,s0
   10550:	60a2                	ld	ra,8(sp)
   10552:	6402                	ld	s0,0(sp)
   10554:	c11c                	sw	a5,0(a0)
   10556:	557d                	li	a0,-1
   10558:	0141                	addi	sp,sp,16
   1055a:	8082                	ret

000000000001055c <__internal_syscall>:
   1055c:	88aa                	mv	a7,a0
   1055e:	852e                	mv	a0,a1
   10560:	85b2                	mv	a1,a2
   10562:	8636                	mv	a2,a3
   10564:	86ba                	mv	a3,a4
   10566:	00000073          	ecall
   1056a:	00055663          	bgez	a0,10576 <__internal_syscall+0x1a>
   1056e:	00000317          	auipc	t1,0x0
   10572:	fce30067          	jr	-50(t1) # 1053c <__syscall_error>
   10576:	8082                	ret

0000000000010578 <open>:
   10578:	1141                	addi	sp,sp,-16
   1057a:	86b2                	mv	a3,a2
   1057c:	4701                	li	a4,0
   1057e:	862e                	mv	a2,a1
   10580:	85aa                	mv	a1,a0
   10582:	40000513          	li	a0,1024
   10586:	e406                	sd	ra,8(sp)
   10588:	00000097          	auipc	ra,0x0
   1058c:	fd4080e7          	jalr	-44(ra) # 1055c <__internal_syscall>
   10590:	60a2                	ld	ra,8(sp)
   10592:	2501                	sext.w	a0,a0
   10594:	0141                	addi	sp,sp,16
   10596:	8082                	ret

0000000000010598 <openat>:
   10598:	1141                	addi	sp,sp,-16
   1059a:	8736                	mv	a4,a3
   1059c:	86b2                	mv	a3,a2
   1059e:	862e                	mv	a2,a1
   105a0:	85aa                	mv	a1,a0
   105a2:	03800513          	li	a0,56
   105a6:	e406                	sd	ra,8(sp)
   105a8:	fb5ff0ef          	jal	ra,1055c <__internal_syscall>
   105ac:	60a2                	ld	ra,8(sp)
   105ae:	2501                	sext.w	a0,a0
   105b0:	0141                	addi	sp,sp,16
   105b2:	8082                	ret

00000000000105b4 <lseek>:
   105b4:	86b2                	mv	a3,a2
   105b6:	4701                	li	a4,0
   105b8:	862e                	mv	a2,a1
   105ba:	85aa                	mv	a1,a0
   105bc:	03e00513          	li	a0,62
   105c0:	00000317          	auipc	t1,0x0
   105c4:	f9c30067          	jr	-100(t1) # 1055c <__internal_syscall>

00000000000105c8 <read>:
   105c8:	86b2                	mv	a3,a2
   105ca:	4701                	li	a4,0
   105cc:	862e                	mv	a2,a1
   105ce:	85aa                	mv	a1,a0
   105d0:	03f00513          	li	a0,63
   105d4:	f89ff06f          	j	1055c <__internal_syscall>

00000000000105d8 <write>:
   105d8:	86b2                	mv	a3,a2
   105da:	4701                	li	a4,0
   105dc:	862e                	mv	a2,a1
   105de:	85aa                	mv	a1,a0
   105e0:	04000513          	li	a0,64
   105e4:	00000317          	auipc	t1,0x0
   105e8:	f7830067          	jr	-136(t1) # 1055c <__internal_syscall>

00000000000105ec <fstat>:
   105ec:	7135                	addi	sp,sp,-160
   105ee:	e526                	sd	s1,136(sp)
   105f0:	860a                	mv	a2,sp
   105f2:	84ae                	mv	s1,a1
   105f4:	4701                	li	a4,0
   105f6:	85aa                	mv	a1,a0
   105f8:	4681                	li	a3,0
   105fa:	05000513          	li	a0,80
   105fe:	ed06                	sd	ra,152(sp)
   10600:	e922                	sd	s0,144(sp)
   10602:	f5bff0ef          	jal	ra,1055c <__internal_syscall>
   10606:	842a                	mv	s0,a0
   10608:	858a                	mv	a1,sp
   1060a:	8526                	mv	a0,s1
   1060c:	eefff0ef          	jal	ra,104fa <conv_stat>
   10610:	0004051b          	sext.w	a0,s0
   10614:	60ea                	ld	ra,152(sp)
   10616:	644a                	ld	s0,144(sp)
   10618:	64aa                	ld	s1,136(sp)
   1061a:	610d                	addi	sp,sp,160
   1061c:	8082                	ret

000000000001061e <stat>:
   1061e:	7135                	addi	sp,sp,-160
   10620:	e526                	sd	s1,136(sp)
   10622:	860a                	mv	a2,sp
   10624:	84ae                	mv	s1,a1
   10626:	4701                	li	a4,0
   10628:	85aa                	mv	a1,a0
   1062a:	4681                	li	a3,0
   1062c:	40e00513          	li	a0,1038
   10630:	ed06                	sd	ra,152(sp)
   10632:	e922                	sd	s0,144(sp)
   10634:	00000097          	auipc	ra,0x0
   10638:	f28080e7          	jalr	-216(ra) # 1055c <__internal_syscall>
   1063c:	842a                	mv	s0,a0
   1063e:	858a                	mv	a1,sp
   10640:	8526                	mv	a0,s1
   10642:	00000097          	auipc	ra,0x0
   10646:	eb8080e7          	jalr	-328(ra) # 104fa <conv_stat>
   1064a:	0004051b          	sext.w	a0,s0
   1064e:	60ea                	ld	ra,152(sp)
   10650:	644a                	ld	s0,144(sp)
   10652:	64aa                	ld	s1,136(sp)
   10654:	610d                	addi	sp,sp,160
   10656:	8082                	ret

0000000000010658 <lstat>:
   10658:	7135                	addi	sp,sp,-160
   1065a:	e526                	sd	s1,136(sp)
   1065c:	860a                	mv	a2,sp
   1065e:	84ae                	mv	s1,a1
   10660:	4701                	li	a4,0
   10662:	85aa                	mv	a1,a0
   10664:	4681                	li	a3,0
   10666:	40f00513          	li	a0,1039
   1066a:	ed06                	sd	ra,152(sp)
   1066c:	e922                	sd	s0,144(sp)
   1066e:	eefff0ef          	jal	ra,1055c <__internal_syscall>
   10672:	842a                	mv	s0,a0
   10674:	858a                	mv	a1,sp
   10676:	8526                	mv	a0,s1
   10678:	e83ff0ef          	jal	ra,104fa <conv_stat>
   1067c:	0004051b          	sext.w	a0,s0
   10680:	60ea                	ld	ra,152(sp)
   10682:	644a                	ld	s0,144(sp)
   10684:	64aa                	ld	s1,136(sp)
   10686:	610d                	addi	sp,sp,160
   10688:	8082                	ret

000000000001068a <fstatat>:
   1068a:	7135                	addi	sp,sp,-160
   1068c:	e526                	sd	s1,136(sp)
   1068e:	8736                	mv	a4,a3
   10690:	84b2                	mv	s1,a2
   10692:	868a                	mv	a3,sp
   10694:	862e                	mv	a2,a1
   10696:	85aa                	mv	a1,a0
   10698:	04f00513          	li	a0,79
   1069c:	ed06                	sd	ra,152(sp)
   1069e:	e922                	sd	s0,144(sp)
   106a0:	00000097          	auipc	ra,0x0
   106a4:	ebc080e7          	jalr	-324(ra) # 1055c <__internal_syscall>
   106a8:	842a                	mv	s0,a0
   106aa:	858a                	mv	a1,sp
   106ac:	8526                	mv	a0,s1
   106ae:	00000097          	auipc	ra,0x0
   106b2:	e4c080e7          	jalr	-436(ra) # 104fa <conv_stat>
   106b6:	0004051b          	sext.w	a0,s0
   106ba:	60ea                	ld	ra,152(sp)
   106bc:	644a                	ld	s0,144(sp)
   106be:	64aa                	ld	s1,136(sp)
   106c0:	610d                	addi	sp,sp,160
   106c2:	8082                	ret

00000000000106c4 <access>:
   106c4:	1141                	addi	sp,sp,-16
   106c6:	862e                	mv	a2,a1
   106c8:	4701                	li	a4,0
   106ca:	85aa                	mv	a1,a0
   106cc:	4681                	li	a3,0
   106ce:	40900513          	li	a0,1033
   106d2:	e406                	sd	ra,8(sp)
   106d4:	e89ff0ef          	jal	ra,1055c <__internal_syscall>
   106d8:	60a2                	ld	ra,8(sp)
   106da:	2501                	sext.w	a0,a0
   106dc:	0141                	addi	sp,sp,16
   106de:	8082                	ret

00000000000106e0 <faccessat>:
   106e0:	1141                	addi	sp,sp,-16
   106e2:	8736                	mv	a4,a3
   106e4:	86b2                	mv	a3,a2
   106e6:	862e                	mv	a2,a1
   106e8:	85aa                	mv	a1,a0
   106ea:	03000513          	li	a0,48
   106ee:	e406                	sd	ra,8(sp)
   106f0:	00000097          	auipc	ra,0x0
   106f4:	e6c080e7          	jalr	-404(ra) # 1055c <__internal_syscall>
   106f8:	60a2                	ld	ra,8(sp)
   106fa:	2501                	sext.w	a0,a0
   106fc:	0141                	addi	sp,sp,16
   106fe:	8082                	ret

0000000000010700 <close>:
   10700:	1141                	addi	sp,sp,-16
   10702:	85aa                	mv	a1,a0
   10704:	4701                	li	a4,0
   10706:	4681                	li	a3,0
   10708:	4601                	li	a2,0
   1070a:	03900513          	li	a0,57
   1070e:	e406                	sd	ra,8(sp)
   10710:	e4dff0ef          	jal	ra,1055c <__internal_syscall>
   10714:	60a2                	ld	ra,8(sp)
   10716:	2501                	sext.w	a0,a0
   10718:	0141                	addi	sp,sp,16
   1071a:	8082                	ret

000000000001071c <link>:
   1071c:	1141                	addi	sp,sp,-16
   1071e:	862e                	mv	a2,a1
   10720:	4701                	li	a4,0
   10722:	85aa                	mv	a1,a0
   10724:	4681                	li	a3,0
   10726:	40100513          	li	a0,1025
   1072a:	e406                	sd	ra,8(sp)
   1072c:	00000097          	auipc	ra,0x0
   10730:	e30080e7          	jalr	-464(ra) # 1055c <__internal_syscall>
   10734:	60a2                	ld	ra,8(sp)
   10736:	2501                	sext.w	a0,a0
   10738:	0141                	addi	sp,sp,16
   1073a:	8082                	ret

000000000001073c <unlink>:
   1073c:	1141                	addi	sp,sp,-16
   1073e:	85aa                	mv	a1,a0
   10740:	4701                	li	a4,0
   10742:	4681                	li	a3,0
   10744:	4601                	li	a2,0
   10746:	40200513          	li	a0,1026
   1074a:	e406                	sd	ra,8(sp)
   1074c:	e11ff0ef          	jal	ra,1055c <__internal_syscall>
   10750:	60a2                	ld	ra,8(sp)
   10752:	2501                	sext.w	a0,a0
   10754:	0141                	addi	sp,sp,16
   10756:	8082                	ret

0000000000010758 <execve>:
   10758:	1141                	addi	sp,sp,-16
   1075a:	e406                	sd	ra,8(sp)
   1075c:	00000097          	auipc	ra,0x0
   10760:	1a2080e7          	jalr	418(ra) # 108fe <__errno>
   10764:	60a2                	ld	ra,8(sp)
   10766:	47b1                	li	a5,12
   10768:	c11c                	sw	a5,0(a0)
   1076a:	557d                	li	a0,-1
   1076c:	0141                	addi	sp,sp,16
   1076e:	8082                	ret

0000000000010770 <fork>:
   10770:	1141                	addi	sp,sp,-16
   10772:	e406                	sd	ra,8(sp)
   10774:	18a000ef          	jal	ra,108fe <__errno>
   10778:	60a2                	ld	ra,8(sp)
   1077a:	47ad                	li	a5,11
   1077c:	c11c                	sw	a5,0(a0)
   1077e:	557d                	li	a0,-1
   10780:	0141                	addi	sp,sp,16
   10782:	8082                	ret

0000000000010784 <getpid>:
   10784:	4505                	li	a0,1
   10786:	8082                	ret

0000000000010788 <kill>:
   10788:	1141                	addi	sp,sp,-16
   1078a:	e406                	sd	ra,8(sp)
   1078c:	172000ef          	jal	ra,108fe <__errno>
   10790:	60a2                	ld	ra,8(sp)
   10792:	47d9                	li	a5,22
   10794:	c11c                	sw	a5,0(a0)
   10796:	557d                	li	a0,-1
   10798:	0141                	addi	sp,sp,16
   1079a:	8082                	ret

000000000001079c <wait>:
   1079c:	1141                	addi	sp,sp,-16
   1079e:	e406                	sd	ra,8(sp)
   107a0:	00000097          	auipc	ra,0x0
   107a4:	15e080e7          	jalr	350(ra) # 108fe <__errno>
   107a8:	60a2                	ld	ra,8(sp)
   107aa:	47a9                	li	a5,10
   107ac:	c11c                	sw	a5,0(a0)
   107ae:	557d                	li	a0,-1
   107b0:	0141                	addi	sp,sp,16
   107b2:	8082                	ret

00000000000107b4 <isatty>:
   107b4:	7119                	addi	sp,sp,-128
   107b6:	002c                	addi	a1,sp,8
   107b8:	fc86                	sd	ra,120(sp)
   107ba:	e33ff0ef          	jal	ra,105ec <fstat>
   107be:	57fd                	li	a5,-1
   107c0:	00f50663          	beq	a0,a5,107cc <isatty+0x18>
   107c4:	4532                	lw	a0,12(sp)
   107c6:	40d5551b          	sraiw	a0,a0,0xd
   107ca:	8905                	andi	a0,a0,1
   107cc:	70e6                	ld	ra,120(sp)
   107ce:	6109                	addi	sp,sp,128
   107d0:	8082                	ret

00000000000107d2 <gettimeofday>:
   107d2:	1141                	addi	sp,sp,-16
   107d4:	85aa                	mv	a1,a0
   107d6:	4701                	li	a4,0
   107d8:	4681                	li	a3,0
   107da:	4601                	li	a2,0
   107dc:	0a900513          	li	a0,169
   107e0:	e406                	sd	ra,8(sp)
   107e2:	00000097          	auipc	ra,0x0
   107e6:	d7a080e7          	jalr	-646(ra) # 1055c <__internal_syscall>
   107ea:	60a2                	ld	ra,8(sp)
   107ec:	2501                	sext.w	a0,a0
   107ee:	0141                	addi	sp,sp,16
   107f0:	8082                	ret

00000000000107f2 <times>:
   107f2:	7179                	addi	sp,sp,-48
   107f4:	f022                	sd	s0,32(sp)
   107f6:	842a                	mv	s0,a0
   107f8:	8681b783          	ld	a5,-1944(gp) # 117c0 <t0.2574>
   107fc:	ec26                	sd	s1,24(sp)
   107fe:	f406                	sd	ra,40(sp)
   10800:	86818493          	addi	s1,gp,-1944 # 117c0 <t0.2574>
   10804:	eb81                	bnez	a5,10814 <times+0x22>
   10806:	4581                	li	a1,0
   10808:	86818513          	addi	a0,gp,-1944 # 117c0 <t0.2574>
   1080c:	00000097          	auipc	ra,0x0
   10810:	fc6080e7          	jalr	-58(ra) # 107d2 <gettimeofday>
   10814:	850a                	mv	a0,sp
   10816:	4581                	li	a1,0
   10818:	00000097          	auipc	ra,0x0
   1081c:	fba080e7          	jalr	-70(ra) # 107d2 <gettimeofday>
   10820:	6098                	ld	a4,0(s1)
   10822:	6782                	ld	a5,0(sp)
   10824:	6494                	ld	a3,8(s1)
   10826:	00043823          	sd	zero,16(s0)
   1082a:	8f99                	sub	a5,a5,a4
   1082c:	000f4737          	lui	a4,0xf4
   10830:	24070713          	addi	a4,a4,576 # f4240 <__global_pointer$+0xe22e8>
   10834:	02e787b3          	mul	a5,a5,a4
   10838:	6722                	ld	a4,8(sp)
   1083a:	00043c23          	sd	zero,24(s0)
   1083e:	00043423          	sd	zero,8(s0)
   10842:	8f15                	sub	a4,a4,a3
   10844:	70a2                	ld	ra,40(sp)
   10846:	64e2                	ld	s1,24(sp)
   10848:	557d                	li	a0,-1
   1084a:	97ba                	add	a5,a5,a4
   1084c:	e01c                	sd	a5,0(s0)
   1084e:	7402                	ld	s0,32(sp)
   10850:	6145                	addi	sp,sp,48
   10852:	8082                	ret

0000000000010854 <ftime>:
   10854:	00051423          	sh	zero,8(a0)
   10858:	00053023          	sd	zero,0(a0)
   1085c:	4501                	li	a0,0
   1085e:	8082                	ret

0000000000010860 <utime>:
   10860:	557d                	li	a0,-1
   10862:	8082                	ret

0000000000010864 <chown>:
   10864:	557d                	li	a0,-1
   10866:	8082                	ret

0000000000010868 <chmod>:
   10868:	557d                	li	a0,-1
   1086a:	8082                	ret

000000000001086c <chdir>:
   1086c:	557d                	li	a0,-1
   1086e:	8082                	ret

0000000000010870 <getcwd>:
   10870:	4501                	li	a0,0
   10872:	8082                	ret

0000000000010874 <sysconf>:
   10874:	4789                	li	a5,2
   10876:	00f50463          	beq	a0,a5,1087e <sysconf+0xa>
   1087a:	557d                	li	a0,-1
   1087c:	8082                	ret
   1087e:	000f4537          	lui	a0,0xf4
   10882:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22e8>
   10886:	8082                	ret

0000000000010888 <sbrk>:
   10888:	1101                	addi	sp,sp,-32
   1088a:	e822                	sd	s0,16(sp)
   1088c:	8281b783          	ld	a5,-2008(gp) # 11780 <_edata>
   10890:	e426                	sd	s1,8(sp)
   10892:	ec06                	sd	ra,24(sp)
   10894:	84aa                	mv	s1,a0
   10896:	e785                	bnez	a5,108be <sbrk+0x36>
   10898:	4701                	li	a4,0
   1089a:	4681                	li	a3,0
   1089c:	4601                	li	a2,0
   1089e:	4581                	li	a1,0
   108a0:	0d600513          	li	a0,214
   108a4:	cb9ff0ef          	jal	ra,1055c <__internal_syscall>
   108a8:	57fd                	li	a5,-1
   108aa:	00f51863          	bne	a0,a5,108ba <sbrk+0x32>
   108ae:	557d                	li	a0,-1
   108b0:	60e2                	ld	ra,24(sp)
   108b2:	6442                	ld	s0,16(sp)
   108b4:	64a2                	ld	s1,8(sp)
   108b6:	6105                	addi	sp,sp,32
   108b8:	8082                	ret
   108ba:	82a1b423          	sd	a0,-2008(gp) # 11780 <_edata>
   108be:	8281b583          	ld	a1,-2008(gp) # 11780 <_edata>
   108c2:	4701                	li	a4,0
   108c4:	4681                	li	a3,0
   108c6:	95a6                	add	a1,a1,s1
   108c8:	4601                	li	a2,0
   108ca:	0d600513          	li	a0,214
   108ce:	c8fff0ef          	jal	ra,1055c <__internal_syscall>
   108d2:	8281b783          	ld	a5,-2008(gp) # 11780 <_edata>
   108d6:	94be                	add	s1,s1,a5
   108d8:	fc951be3          	bne	a0,s1,108ae <sbrk+0x26>
   108dc:	82a1b423          	sd	a0,-2008(gp) # 11780 <_edata>
   108e0:	853e                	mv	a0,a5
   108e2:	b7f9                	j	108b0 <sbrk+0x28>

00000000000108e4 <_exit>:
   108e4:	1141                	addi	sp,sp,-16
   108e6:	85aa                	mv	a1,a0
   108e8:	4701                	li	a4,0
   108ea:	4681                	li	a3,0
   108ec:	4601                	li	a2,0
   108ee:	05d00513          	li	a0,93
   108f2:	e406                	sd	ra,8(sp)
   108f4:	00000097          	auipc	ra,0x0
   108f8:	c68080e7          	jalr	-920(ra) # 1055c <__internal_syscall>
   108fc:	a001                	j	108fc <_exit+0x18>

00000000000108fe <__errno>:
   108fe:	8201b503          	ld	a0,-2016(gp) # 11778 <_impure_ptr>
   10902:	8082                	ret
	...

Disassembly of section .eh_frame:

0000000000010908 <__EH_FRAME_BEGIN__>:
   10908:	0010                	addi	a2,sp,0
   1090a:	0000                	unimp
   1090c:	0000                	unimp
   1090e:	0000                	unimp
   10910:	7a01                	lui	s4,0xfffe0
   10912:	0052                	0x52
   10914:	7c01                	lui	s8,0xfffe0
   10916:	0101                	addi	sp,sp,0
   10918:	00020d1b          	sext.w	s10,tp
   1091c:	0020                	addi	s0,sp,8
   1091e:	0000                	unimp
   10920:	0018                	addi	a4,sp,0
   10922:	0000                	unimp
   10924:	f884                	sd	s1,48(s1)
   10926:	ffff                	0xffff
   10928:	0078                	addi	a4,sp,12
   1092a:	0000                	unimp
   1092c:	4400                	lw	s0,8(s0)
   1092e:	100e                	0x100e
   10930:	8844                	0x8844
   10932:	4402                	lw	s0,0(sp)
   10934:	080c                	addi	a1,sp,16
   10936:	0200                	addi	s0,sp,256
   10938:	c888                	sw	a0,16(s1)
   1093a:	0d44                	addi	s1,sp,660
   1093c:	0002                	0x2
   1093e:	0000                	unimp
   10940:	0020                	addi	s0,sp,8
   10942:	0000                	unimp
   10944:	003c                	addi	a5,sp,8
   10946:	0000                	unimp
   10948:	f8d8                	sd	a4,176(s1)
   1094a:	ffff                	0xffff
   1094c:	0030                	addi	a2,sp,8
   1094e:	0000                	unimp
   10950:	4400                	lw	s0,8(s0)
   10952:	100e                	0x100e
   10954:	8148                	0x8148
   10956:	8802                	jr	a6
   10958:	4404                	lw	s1,8(s0)
   1095a:	080c                	addi	a1,sp,16
   1095c:	5400                	lw	s0,40(s0)
   1095e:	44c1                	li	s1,16
   10960:	44c8                	lw	a0,12(s1)
   10962:	020d                	addi	tp,tp,3

0000000000010964 <__FRAME_END__>:
   10964:	0000                	unimp
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

0000000000011760 <a>:
   11760:	0001                	nop
	...

0000000000011764 <b>:
   11764:	0002                	0x2
	...

0000000000011768 <c>:
   11768:	00000003          	lb	zero,0(zero) # 0 <_start-0x100b0>
   1176c:	0000                	unimp
	...

0000000000011770 <_global_impure_ptr>:
   11770:	1010                	addi	a2,sp,32
   11772:	0001                	nop
   11774:	0000                	unimp
	...

0000000000011778 <_impure_ptr>:
   11778:	1010                	addi	a2,sp,32
   1177a:	0001                	nop
   1177c:	0000                	unimp
	...

Disassembly of section .sbss:

0000000000011780 <__bss_start>:
	...

Disassembly of section .bss:

0000000000011788 <completed.5184>:
	...

0000000000011790 <object.5189>:
	...

00000000000117c0 <t0.2574>:
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
