
Test/n:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ea818193          	addi	gp,gp,-344 # 11f58 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11770 <_edata>
   100bc:	87018613          	addi	a2,gp,-1936 # 117c8 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	27c000ef          	jal	ra,10340 <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	1c250513          	addi	a0,a0,450 # 1028a <__libc_fini_array>
   100d0:	00000097          	auipc	ra,0x0
   100d4:	186080e7          	jalr	390(ra) # 10256 <atexit>
   100d8:	00000097          	auipc	ra,0x0
   100dc:	200080e7          	jalr	512(ra) # 102d8 <__libc_init_array>
   100e0:	4502                	lw	a0,0(sp)
   100e2:	002c                	addi	a1,sp,8
   100e4:	4601                	li	a2,0
   100e6:	12e000ef          	jal	ra,10214 <main>
   100ea:	00000317          	auipc	t1,0x0
   100ee:	17a30067          	jr	378(t1) # 10264 <exit>

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
   10144:	8281c703          	lbu	a4,-2008(gp) # 11780 <completed.5184>
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
   10162:	91050513          	addi	a0,a0,-1776 # 10910 <__EH_FRAME_BEGIN__>
   10166:	ffff0097          	auipc	ra,0xffff0
   1016a:	e9a080e7          	jalr	-358(ra) # 0 <_start-0x100b0>
   1016e:	4785                	li	a5,1
   10170:	82f18423          	sb	a5,-2008(gp) # 11780 <completed.5184>
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
   1018e:	78858593          	addi	a1,a1,1928 # 11788 <object.5189>
   10192:	91050513          	addi	a0,a0,-1776 # 10910 <__EH_FRAME_BEGIN__>
   10196:	e406                	sd	ra,8(sp)
   10198:	ffff0097          	auipc	ra,0xffff0
   1019c:	e68080e7          	jalr	-408(ra) # 0 <_start-0x100b0>
   101a0:	60a2                	ld	ra,8(sp)
   101a2:	0141                	addi	sp,sp,16
   101a4:	f75ff06f          	j	10118 <register_tm_clones>

00000000000101a8 <cal_n>:
   101a8:	fe010113          	addi	sp,sp,-32
   101ac:	00113c23          	sd	ra,24(sp)
   101b0:	00813823          	sd	s0,16(sp)
   101b4:	02010413          	addi	s0,sp,32
   101b8:	00050793          	mv	a5,a0
   101bc:	fef42623          	sw	a5,-20(s0)
   101c0:	fec42783          	lw	a5,-20(s0)
   101c4:	0007871b          	sext.w	a4,a5
   101c8:	00100793          	li	a5,1
   101cc:	00f71663          	bne	a4,a5,101d8 <cal_n+0x30>
   101d0:	fec42783          	lw	a5,-20(s0)
   101d4:	02c0006f          	j	10200 <cal_n+0x58>
   101d8:	fec42783          	lw	a5,-20(s0)
   101dc:	fff7879b          	addiw	a5,a5,-1
   101e0:	0007879b          	sext.w	a5,a5
   101e4:	00078513          	mv	a0,a5
   101e8:	fc1ff0ef          	jal	ra,101a8 <cal_n>
   101ec:	00050793          	mv	a5,a0
   101f0:	00078713          	mv	a4,a5
   101f4:	fec42783          	lw	a5,-20(s0)
   101f8:	02e787bb          	mulw	a5,a5,a4
   101fc:	0007879b          	sext.w	a5,a5
   10200:	00078513          	mv	a0,a5
   10204:	01813083          	ld	ra,24(sp)
   10208:	01013403          	ld	s0,16(sp)
   1020c:	02010113          	addi	sp,sp,32
   10210:	00008067          	ret

0000000000010214 <main>:
   10214:	ff010113          	addi	sp,sp,-16
   10218:	00113423          	sd	ra,8(sp)
   1021c:	00813023          	sd	s0,0(sp)
   10220:	01010413          	addi	s0,sp,16
   10224:	00200513          	li	a0,2
   10228:	00000097          	auipc	ra,0x0
   1022c:	f80080e7          	jalr	-128(ra) # 101a8 <cal_n>
   10230:	00050793          	mv	a5,a0
   10234:	00078713          	mv	a4,a5
   10238:	80e1ac23          	sw	a4,-2024(gp) # 11770 <_edata>
   1023c:	00000793          	li	a5,0
   10240:	00078513          	mv	a0,a5
   10244:	00813083          	ld	ra,8(sp)
   10248:	00013403          	ld	s0,0(sp)
   1024c:	01010113          	addi	sp,sp,16
   10250:	00008067          	ret
	...

0000000000010256 <atexit>:
   10256:	85aa                	mv	a1,a0
   10258:	4681                	li	a3,0
   1025a:	4601                	li	a2,0
   1025c:	4501                	li	a0,0
   1025e:	18c0006f          	j	103ea <__register_exitproc>
	...

0000000000010264 <exit>:
   10264:	1141                	addi	sp,sp,-16
   10266:	4581                	li	a1,0
   10268:	e022                	sd	s0,0(sp)
   1026a:	e406                	sd	ra,8(sp)
   1026c:	842a                	mv	s0,a0
   1026e:	1e4000ef          	jal	ra,10452 <__call_exitprocs>
   10272:	67c5                	lui	a5,0x11
   10274:	7607b503          	ld	a0,1888(a5) # 11760 <_global_impure_ptr>
   10278:	6d3c                	ld	a5,88(a0)
   1027a:	c391                	beqz	a5,1027e <exit+0x1a>
   1027c:	9782                	jalr	a5
   1027e:	8522                	mv	a0,s0
   10280:	00000097          	auipc	ra,0x0
   10284:	66e080e7          	jalr	1646(ra) # 108ee <_exit>
	...

000000000001028a <__libc_fini_array>:
   1028a:	7179                	addi	sp,sp,-48
   1028c:	67c5                	lui	a5,0x11
   1028e:	6745                	lui	a4,0x11
   10290:	f022                	sd	s0,32(sp)
   10292:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   10296:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   1029a:	8c19                	sub	s0,s0,a4
   1029c:	ec26                	sd	s1,24(sp)
   1029e:	e84a                	sd	s2,16(sp)
   102a0:	e44e                	sd	s3,8(sp)
   102a2:	f406                	sd	ra,40(sp)
   102a4:	840d                	srai	s0,s0,0x3
   102a6:	4481                	li	s1,0
   102a8:	01078913          	addi	s2,a5,16
   102ac:	59e1                	li	s3,-8
   102ae:	00941c63          	bne	s0,s1,102c6 <__libc_fini_array+0x3c>
   102b2:	7402                	ld	s0,32(sp)
   102b4:	70a2                	ld	ra,40(sp)
   102b6:	64e2                	ld	s1,24(sp)
   102b8:	6942                	ld	s2,16(sp)
   102ba:	69a2                	ld	s3,8(sp)
   102bc:	6145                	addi	sp,sp,48
   102be:	00000317          	auipc	t1,0x0
   102c2:	e3430067          	jr	-460(t1) # 100f2 <_fini>
   102c6:	033487b3          	mul	a5,s1,s3
   102ca:	0485                	addi	s1,s1,1
   102cc:	97ca                	add	a5,a5,s2
   102ce:	ff87b783          	ld	a5,-8(a5)
   102d2:	9782                	jalr	a5
   102d4:	bfe9                	j	102ae <__libc_fini_array+0x24>
	...

00000000000102d8 <__libc_init_array>:
   102d8:	1101                	addi	sp,sp,-32
   102da:	e822                	sd	s0,16(sp)
   102dc:	e426                	sd	s1,8(sp)
   102de:	6445                	lui	s0,0x11
   102e0:	64c5                	lui	s1,0x11
   102e2:	00048793          	mv	a5,s1
   102e6:	00040413          	mv	s0,s0
   102ea:	8c1d                	sub	s0,s0,a5
   102ec:	e04a                	sd	s2,0(sp)
   102ee:	ec06                	sd	ra,24(sp)
   102f0:	840d                	srai	s0,s0,0x3
   102f2:	00048493          	mv	s1,s1
   102f6:	4901                	li	s2,0
   102f8:	02891963          	bne	s2,s0,1032a <__libc_init_array+0x52>
   102fc:	64c5                	lui	s1,0x11
   102fe:	00000097          	auipc	ra,0x0
   10302:	df4080e7          	jalr	-524(ra) # 100f2 <_fini>
   10306:	6445                	lui	s0,0x11
   10308:	00048793          	mv	a5,s1
   1030c:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   10310:	8c1d                	sub	s0,s0,a5
   10312:	840d                	srai	s0,s0,0x3
   10314:	00048493          	mv	s1,s1
   10318:	4901                	li	s2,0
   1031a:	00891d63          	bne	s2,s0,10334 <__libc_init_array+0x5c>
   1031e:	60e2                	ld	ra,24(sp)
   10320:	6442                	ld	s0,16(sp)
   10322:	64a2                	ld	s1,8(sp)
   10324:	6902                	ld	s2,0(sp)
   10326:	6105                	addi	sp,sp,32
   10328:	8082                	ret
   1032a:	609c                	ld	a5,0(s1)
   1032c:	0905                	addi	s2,s2,1
   1032e:	04a1                	addi	s1,s1,8
   10330:	9782                	jalr	a5
   10332:	b7d9                	j	102f8 <__libc_init_array+0x20>
   10334:	609c                	ld	a5,0(s1)
   10336:	0905                	addi	s2,s2,1
   10338:	04a1                	addi	s1,s1,8
   1033a:	9782                	jalr	a5
   1033c:	bff9                	j	1031a <__libc_init_array+0x42>
	...

0000000000010340 <memset>:
   10340:	483d                	li	a6,15
   10342:	872a                	mv	a4,a0
   10344:	02c87163          	bleu	a2,a6,10366 <memset+0x26>
   10348:	00f77793          	andi	a5,a4,15
   1034c:	e3c1                	bnez	a5,103cc <memset+0x8c>
   1034e:	e1bd                	bnez	a1,103b4 <memset+0x74>
   10350:	ff067693          	andi	a3,a2,-16
   10354:	8a3d                	andi	a2,a2,15
   10356:	96ba                	add	a3,a3,a4
   10358:	e30c                	sd	a1,0(a4)
   1035a:	e70c                	sd	a1,8(a4)
   1035c:	0741                	addi	a4,a4,16
   1035e:	fed76de3          	bltu	a4,a3,10358 <memset+0x18>
   10362:	e211                	bnez	a2,10366 <memset+0x26>
   10364:	8082                	ret
   10366:	40c806b3          	sub	a3,a6,a2
   1036a:	068a                	slli	a3,a3,0x2
   1036c:	00000297          	auipc	t0,0x0
   10370:	9696                	add	a3,a3,t0
   10372:	00a68067          	jr	10(a3)
   10376:	00b70723          	sb	a1,14(a4)
   1037a:	00b706a3          	sb	a1,13(a4)
   1037e:	00b70623          	sb	a1,12(a4)
   10382:	00b705a3          	sb	a1,11(a4)
   10386:	00b70523          	sb	a1,10(a4)
   1038a:	00b704a3          	sb	a1,9(a4)
   1038e:	00b70423          	sb	a1,8(a4)
   10392:	00b703a3          	sb	a1,7(a4)
   10396:	00b70323          	sb	a1,6(a4)
   1039a:	00b702a3          	sb	a1,5(a4)
   1039e:	00b70223          	sb	a1,4(a4)
   103a2:	00b701a3          	sb	a1,3(a4)
   103a6:	00b70123          	sb	a1,2(a4)
   103aa:	00b700a3          	sb	a1,1(a4)
   103ae:	00b70023          	sb	a1,0(a4)
   103b2:	8082                	ret
   103b4:	0ff5f593          	andi	a1,a1,255
   103b8:	00859693          	slli	a3,a1,0x8
   103bc:	8dd5                	or	a1,a1,a3
   103be:	01059693          	slli	a3,a1,0x10
   103c2:	8dd5                	or	a1,a1,a3
   103c4:	02059693          	slli	a3,a1,0x20
   103c8:	8dd5                	or	a1,a1,a3
   103ca:	b759                	j	10350 <memset+0x10>
   103cc:	00279693          	slli	a3,a5,0x2
   103d0:	00000297          	auipc	t0,0x0
   103d4:	9696                	add	a3,a3,t0
   103d6:	8286                	mv	t0,ra
   103d8:	fa2680e7          	jalr	-94(a3)
   103dc:	8096                	mv	ra,t0
   103de:	17c1                	addi	a5,a5,-16
   103e0:	8f1d                	sub	a4,a4,a5
   103e2:	963e                	add	a2,a2,a5
   103e4:	f8c871e3          	bleu	a2,a6,10366 <memset+0x26>
   103e8:	b79d                	j	1034e <memset+0xe>

00000000000103ea <__register_exitproc>:
   103ea:	67c5                	lui	a5,0x11
   103ec:	7607b703          	ld	a4,1888(a5) # 11760 <_global_impure_ptr>
   103f0:	832a                	mv	t1,a0
   103f2:	1f873783          	ld	a5,504(a4)
   103f6:	e789                	bnez	a5,10400 <__register_exitproc+0x16>
   103f8:	20070793          	addi	a5,a4,512
   103fc:	1ef73c23          	sd	a5,504(a4)
   10400:	4798                	lw	a4,8(a5)
   10402:	487d                	li	a6,31
   10404:	557d                	li	a0,-1
   10406:	04e84463          	blt	a6,a4,1044e <__register_exitproc+0x64>
   1040a:	02030a63          	beqz	t1,1043e <__register_exitproc+0x54>
   1040e:	00371813          	slli	a6,a4,0x3
   10412:	983e                	add	a6,a6,a5
   10414:	10c83823          	sd	a2,272(a6)
   10418:	3107a883          	lw	a7,784(a5)
   1041c:	4605                	li	a2,1
   1041e:	00e6163b          	sllw	a2,a2,a4
   10422:	00c8e8b3          	or	a7,a7,a2
   10426:	3117a823          	sw	a7,784(a5)
   1042a:	20d83823          	sd	a3,528(a6)
   1042e:	4689                	li	a3,2
   10430:	00d31763          	bne	t1,a3,1043e <__register_exitproc+0x54>
   10434:	3147a683          	lw	a3,788(a5)
   10438:	8e55                	or	a2,a2,a3
   1043a:	30c7aa23          	sw	a2,788(a5)
   1043e:	0017069b          	addiw	a3,a4,1
   10442:	0709                	addi	a4,a4,2
   10444:	070e                	slli	a4,a4,0x3
   10446:	c794                	sw	a3,8(a5)
   10448:	97ba                	add	a5,a5,a4
   1044a:	e38c                	sd	a1,0(a5)
   1044c:	4501                	li	a0,0
   1044e:	8082                	ret
	...

0000000000010452 <__call_exitprocs>:
   10452:	715d                	addi	sp,sp,-80
   10454:	67c5                	lui	a5,0x11
   10456:	f44e                	sd	s3,40(sp)
   10458:	7607b983          	ld	s3,1888(a5) # 11760 <_global_impure_ptr>
   1045c:	f052                	sd	s4,32(sp)
   1045e:	ec56                	sd	s5,24(sp)
   10460:	e85a                	sd	s6,16(sp)
   10462:	e486                	sd	ra,72(sp)
   10464:	e0a2                	sd	s0,64(sp)
   10466:	fc26                	sd	s1,56(sp)
   10468:	f84a                	sd	s2,48(sp)
   1046a:	e45e                	sd	s7,8(sp)
   1046c:	8aaa                	mv	s5,a0
   1046e:	8a2e                	mv	s4,a1
   10470:	4b05                	li	s6,1
   10472:	1f89b403          	ld	s0,504(s3)
   10476:	c801                	beqz	s0,10486 <__call_exitprocs+0x34>
   10478:	4404                	lw	s1,8(s0)
   1047a:	34fd                	addiw	s1,s1,-1
   1047c:	00349913          	slli	s2,s1,0x3
   10480:	9922                	add	s2,s2,s0
   10482:	0004dd63          	bgez	s1,1049c <__call_exitprocs+0x4a>
   10486:	60a6                	ld	ra,72(sp)
   10488:	6406                	ld	s0,64(sp)
   1048a:	74e2                	ld	s1,56(sp)
   1048c:	7942                	ld	s2,48(sp)
   1048e:	79a2                	ld	s3,40(sp)
   10490:	7a02                	ld	s4,32(sp)
   10492:	6ae2                	ld	s5,24(sp)
   10494:	6b42                	ld	s6,16(sp)
   10496:	6ba2                	ld	s7,8(sp)
   10498:	6161                	addi	sp,sp,80
   1049a:	8082                	ret
   1049c:	000a0963          	beqz	s4,104ae <__call_exitprocs+0x5c>
   104a0:	21093783          	ld	a5,528(s2)
   104a4:	01478563          	beq	a5,s4,104ae <__call_exitprocs+0x5c>
   104a8:	34fd                	addiw	s1,s1,-1
   104aa:	1961                	addi	s2,s2,-8
   104ac:	bfd9                	j	10482 <__call_exitprocs+0x30>
   104ae:	441c                	lw	a5,8(s0)
   104b0:	01093683          	ld	a3,16(s2)
   104b4:	37fd                	addiw	a5,a5,-1
   104b6:	02979663          	bne	a5,s1,104e2 <__call_exitprocs+0x90>
   104ba:	c404                	sw	s1,8(s0)
   104bc:	d6f5                	beqz	a3,104a8 <__call_exitprocs+0x56>
   104be:	31042703          	lw	a4,784(s0)
   104c2:	009b163b          	sllw	a2,s6,s1
   104c6:	00842b83          	lw	s7,8(s0)
   104ca:	8f71                	and	a4,a4,a2
   104cc:	2701                	sext.w	a4,a4
   104ce:	ef09                	bnez	a4,104e8 <__call_exitprocs+0x96>
   104d0:	9682                	jalr	a3
   104d2:	4418                	lw	a4,8(s0)
   104d4:	1f89b783          	ld	a5,504(s3)
   104d8:	f9771de3          	bne	a4,s7,10472 <__call_exitprocs+0x20>
   104dc:	fcf406e3          	beq	s0,a5,104a8 <__call_exitprocs+0x56>
   104e0:	bf49                	j	10472 <__call_exitprocs+0x20>
   104e2:	00093823          	sd	zero,16(s2)
   104e6:	bfd9                	j	104bc <__call_exitprocs+0x6a>
   104e8:	31442783          	lw	a5,788(s0)
   104ec:	11093583          	ld	a1,272(s2)
   104f0:	8ff1                	and	a5,a5,a2
   104f2:	2781                	sext.w	a5,a5
   104f4:	e781                	bnez	a5,104fc <__call_exitprocs+0xaa>
   104f6:	8556                	mv	a0,s5
   104f8:	9682                	jalr	a3
   104fa:	bfe1                	j	104d2 <__call_exitprocs+0x80>
   104fc:	852e                	mv	a0,a1
   104fe:	9682                	jalr	a3
   10500:	bfc9                	j	104d2 <__call_exitprocs+0x80>
	...

0000000000010504 <conv_stat>:
   10504:	619c                	ld	a5,0(a1)
   10506:	00f51023          	sh	a5,0(a0)
   1050a:	659c                	ld	a5,8(a1)
   1050c:	00f51123          	sh	a5,2(a0)
   10510:	499c                	lw	a5,16(a1)
   10512:	c15c                	sw	a5,4(a0)
   10514:	49dc                	lw	a5,20(a1)
   10516:	00f51423          	sh	a5,8(a0)
   1051a:	4d9c                	lw	a5,24(a1)
   1051c:	00f51523          	sh	a5,10(a0)
   10520:	4ddc                	lw	a5,28(a1)
   10522:	00f51623          	sh	a5,12(a0)
   10526:	719c                	ld	a5,32(a1)
   10528:	00f51723          	sh	a5,14(a0)
   1052c:	799c                	ld	a5,48(a1)
   1052e:	e91c                	sd	a5,16(a0)
   10530:	61bc                	ld	a5,64(a1)
   10532:	e93c                	sd	a5,80(a0)
   10534:	5d9c                	lw	a5,56(a1)
   10536:	e53c                	sd	a5,72(a0)
   10538:	65bc                	ld	a5,72(a1)
   1053a:	ed1c                	sd	a5,24(a0)
   1053c:	6dbc                	ld	a5,88(a1)
   1053e:	f51c                	sd	a5,40(a0)
   10540:	75bc                	ld	a5,104(a1)
   10542:	fd1c                	sd	a5,56(a0)
   10544:	8082                	ret

0000000000010546 <__syscall_error>:
   10546:	1141                	addi	sp,sp,-16
   10548:	e022                	sd	s0,0(sp)
   1054a:	e406                	sd	ra,8(sp)
   1054c:	842a                	mv	s0,a0
   1054e:	00000097          	auipc	ra,0x0
   10552:	3ba080e7          	jalr	954(ra) # 10908 <__errno>
   10556:	408007bb          	negw	a5,s0
   1055a:	60a2                	ld	ra,8(sp)
   1055c:	6402                	ld	s0,0(sp)
   1055e:	c11c                	sw	a5,0(a0)
   10560:	557d                	li	a0,-1
   10562:	0141                	addi	sp,sp,16
   10564:	8082                	ret

0000000000010566 <__internal_syscall>:
   10566:	88aa                	mv	a7,a0
   10568:	852e                	mv	a0,a1
   1056a:	85b2                	mv	a1,a2
   1056c:	8636                	mv	a2,a3
   1056e:	86ba                	mv	a3,a4
   10570:	00000073          	ecall
   10574:	00055663          	bgez	a0,10580 <__internal_syscall+0x1a>
   10578:	00000317          	auipc	t1,0x0
   1057c:	fce30067          	jr	-50(t1) # 10546 <__syscall_error>
   10580:	8082                	ret

0000000000010582 <open>:
   10582:	1141                	addi	sp,sp,-16
   10584:	86b2                	mv	a3,a2
   10586:	4701                	li	a4,0
   10588:	862e                	mv	a2,a1
   1058a:	85aa                	mv	a1,a0
   1058c:	40000513          	li	a0,1024
   10590:	e406                	sd	ra,8(sp)
   10592:	00000097          	auipc	ra,0x0
   10596:	fd4080e7          	jalr	-44(ra) # 10566 <__internal_syscall>
   1059a:	60a2                	ld	ra,8(sp)
   1059c:	2501                	sext.w	a0,a0
   1059e:	0141                	addi	sp,sp,16
   105a0:	8082                	ret

00000000000105a2 <openat>:
   105a2:	1141                	addi	sp,sp,-16
   105a4:	8736                	mv	a4,a3
   105a6:	86b2                	mv	a3,a2
   105a8:	862e                	mv	a2,a1
   105aa:	85aa                	mv	a1,a0
   105ac:	03800513          	li	a0,56
   105b0:	e406                	sd	ra,8(sp)
   105b2:	fb5ff0ef          	jal	ra,10566 <__internal_syscall>
   105b6:	60a2                	ld	ra,8(sp)
   105b8:	2501                	sext.w	a0,a0
   105ba:	0141                	addi	sp,sp,16
   105bc:	8082                	ret

00000000000105be <lseek>:
   105be:	86b2                	mv	a3,a2
   105c0:	4701                	li	a4,0
   105c2:	862e                	mv	a2,a1
   105c4:	85aa                	mv	a1,a0
   105c6:	03e00513          	li	a0,62
   105ca:	00000317          	auipc	t1,0x0
   105ce:	f9c30067          	jr	-100(t1) # 10566 <__internal_syscall>

00000000000105d2 <read>:
   105d2:	86b2                	mv	a3,a2
   105d4:	4701                	li	a4,0
   105d6:	862e                	mv	a2,a1
   105d8:	85aa                	mv	a1,a0
   105da:	03f00513          	li	a0,63
   105de:	f89ff06f          	j	10566 <__internal_syscall>

00000000000105e2 <write>:
   105e2:	86b2                	mv	a3,a2
   105e4:	4701                	li	a4,0
   105e6:	862e                	mv	a2,a1
   105e8:	85aa                	mv	a1,a0
   105ea:	04000513          	li	a0,64
   105ee:	00000317          	auipc	t1,0x0
   105f2:	f7830067          	jr	-136(t1) # 10566 <__internal_syscall>

00000000000105f6 <fstat>:
   105f6:	7135                	addi	sp,sp,-160
   105f8:	e526                	sd	s1,136(sp)
   105fa:	860a                	mv	a2,sp
   105fc:	84ae                	mv	s1,a1
   105fe:	4701                	li	a4,0
   10600:	85aa                	mv	a1,a0
   10602:	4681                	li	a3,0
   10604:	05000513          	li	a0,80
   10608:	ed06                	sd	ra,152(sp)
   1060a:	e922                	sd	s0,144(sp)
   1060c:	f5bff0ef          	jal	ra,10566 <__internal_syscall>
   10610:	842a                	mv	s0,a0
   10612:	858a                	mv	a1,sp
   10614:	8526                	mv	a0,s1
   10616:	eefff0ef          	jal	ra,10504 <conv_stat>
   1061a:	0004051b          	sext.w	a0,s0
   1061e:	60ea                	ld	ra,152(sp)
   10620:	644a                	ld	s0,144(sp)
   10622:	64aa                	ld	s1,136(sp)
   10624:	610d                	addi	sp,sp,160
   10626:	8082                	ret

0000000000010628 <stat>:
   10628:	7135                	addi	sp,sp,-160
   1062a:	e526                	sd	s1,136(sp)
   1062c:	860a                	mv	a2,sp
   1062e:	84ae                	mv	s1,a1
   10630:	4701                	li	a4,0
   10632:	85aa                	mv	a1,a0
   10634:	4681                	li	a3,0
   10636:	40e00513          	li	a0,1038
   1063a:	ed06                	sd	ra,152(sp)
   1063c:	e922                	sd	s0,144(sp)
   1063e:	00000097          	auipc	ra,0x0
   10642:	f28080e7          	jalr	-216(ra) # 10566 <__internal_syscall>
   10646:	842a                	mv	s0,a0
   10648:	858a                	mv	a1,sp
   1064a:	8526                	mv	a0,s1
   1064c:	00000097          	auipc	ra,0x0
   10650:	eb8080e7          	jalr	-328(ra) # 10504 <conv_stat>
   10654:	0004051b          	sext.w	a0,s0
   10658:	60ea                	ld	ra,152(sp)
   1065a:	644a                	ld	s0,144(sp)
   1065c:	64aa                	ld	s1,136(sp)
   1065e:	610d                	addi	sp,sp,160
   10660:	8082                	ret

0000000000010662 <lstat>:
   10662:	7135                	addi	sp,sp,-160
   10664:	e526                	sd	s1,136(sp)
   10666:	860a                	mv	a2,sp
   10668:	84ae                	mv	s1,a1
   1066a:	4701                	li	a4,0
   1066c:	85aa                	mv	a1,a0
   1066e:	4681                	li	a3,0
   10670:	40f00513          	li	a0,1039
   10674:	ed06                	sd	ra,152(sp)
   10676:	e922                	sd	s0,144(sp)
   10678:	eefff0ef          	jal	ra,10566 <__internal_syscall>
   1067c:	842a                	mv	s0,a0
   1067e:	858a                	mv	a1,sp
   10680:	8526                	mv	a0,s1
   10682:	e83ff0ef          	jal	ra,10504 <conv_stat>
   10686:	0004051b          	sext.w	a0,s0
   1068a:	60ea                	ld	ra,152(sp)
   1068c:	644a                	ld	s0,144(sp)
   1068e:	64aa                	ld	s1,136(sp)
   10690:	610d                	addi	sp,sp,160
   10692:	8082                	ret

0000000000010694 <fstatat>:
   10694:	7135                	addi	sp,sp,-160
   10696:	e526                	sd	s1,136(sp)
   10698:	8736                	mv	a4,a3
   1069a:	84b2                	mv	s1,a2
   1069c:	868a                	mv	a3,sp
   1069e:	862e                	mv	a2,a1
   106a0:	85aa                	mv	a1,a0
   106a2:	04f00513          	li	a0,79
   106a6:	ed06                	sd	ra,152(sp)
   106a8:	e922                	sd	s0,144(sp)
   106aa:	00000097          	auipc	ra,0x0
   106ae:	ebc080e7          	jalr	-324(ra) # 10566 <__internal_syscall>
   106b2:	842a                	mv	s0,a0
   106b4:	858a                	mv	a1,sp
   106b6:	8526                	mv	a0,s1
   106b8:	00000097          	auipc	ra,0x0
   106bc:	e4c080e7          	jalr	-436(ra) # 10504 <conv_stat>
   106c0:	0004051b          	sext.w	a0,s0
   106c4:	60ea                	ld	ra,152(sp)
   106c6:	644a                	ld	s0,144(sp)
   106c8:	64aa                	ld	s1,136(sp)
   106ca:	610d                	addi	sp,sp,160
   106cc:	8082                	ret

00000000000106ce <access>:
   106ce:	1141                	addi	sp,sp,-16
   106d0:	862e                	mv	a2,a1
   106d2:	4701                	li	a4,0
   106d4:	85aa                	mv	a1,a0
   106d6:	4681                	li	a3,0
   106d8:	40900513          	li	a0,1033
   106dc:	e406                	sd	ra,8(sp)
   106de:	e89ff0ef          	jal	ra,10566 <__internal_syscall>
   106e2:	60a2                	ld	ra,8(sp)
   106e4:	2501                	sext.w	a0,a0
   106e6:	0141                	addi	sp,sp,16
   106e8:	8082                	ret

00000000000106ea <faccessat>:
   106ea:	1141                	addi	sp,sp,-16
   106ec:	8736                	mv	a4,a3
   106ee:	86b2                	mv	a3,a2
   106f0:	862e                	mv	a2,a1
   106f2:	85aa                	mv	a1,a0
   106f4:	03000513          	li	a0,48
   106f8:	e406                	sd	ra,8(sp)
   106fa:	00000097          	auipc	ra,0x0
   106fe:	e6c080e7          	jalr	-404(ra) # 10566 <__internal_syscall>
   10702:	60a2                	ld	ra,8(sp)
   10704:	2501                	sext.w	a0,a0
   10706:	0141                	addi	sp,sp,16
   10708:	8082                	ret

000000000001070a <close>:
   1070a:	1141                	addi	sp,sp,-16
   1070c:	85aa                	mv	a1,a0
   1070e:	4701                	li	a4,0
   10710:	4681                	li	a3,0
   10712:	4601                	li	a2,0
   10714:	03900513          	li	a0,57
   10718:	e406                	sd	ra,8(sp)
   1071a:	e4dff0ef          	jal	ra,10566 <__internal_syscall>
   1071e:	60a2                	ld	ra,8(sp)
   10720:	2501                	sext.w	a0,a0
   10722:	0141                	addi	sp,sp,16
   10724:	8082                	ret

0000000000010726 <link>:
   10726:	1141                	addi	sp,sp,-16
   10728:	862e                	mv	a2,a1
   1072a:	4701                	li	a4,0
   1072c:	85aa                	mv	a1,a0
   1072e:	4681                	li	a3,0
   10730:	40100513          	li	a0,1025
   10734:	e406                	sd	ra,8(sp)
   10736:	00000097          	auipc	ra,0x0
   1073a:	e30080e7          	jalr	-464(ra) # 10566 <__internal_syscall>
   1073e:	60a2                	ld	ra,8(sp)
   10740:	2501                	sext.w	a0,a0
   10742:	0141                	addi	sp,sp,16
   10744:	8082                	ret

0000000000010746 <unlink>:
   10746:	1141                	addi	sp,sp,-16
   10748:	85aa                	mv	a1,a0
   1074a:	4701                	li	a4,0
   1074c:	4681                	li	a3,0
   1074e:	4601                	li	a2,0
   10750:	40200513          	li	a0,1026
   10754:	e406                	sd	ra,8(sp)
   10756:	e11ff0ef          	jal	ra,10566 <__internal_syscall>
   1075a:	60a2                	ld	ra,8(sp)
   1075c:	2501                	sext.w	a0,a0
   1075e:	0141                	addi	sp,sp,16
   10760:	8082                	ret

0000000000010762 <execve>:
   10762:	1141                	addi	sp,sp,-16
   10764:	e406                	sd	ra,8(sp)
   10766:	00000097          	auipc	ra,0x0
   1076a:	1a2080e7          	jalr	418(ra) # 10908 <__errno>
   1076e:	60a2                	ld	ra,8(sp)
   10770:	47b1                	li	a5,12
   10772:	c11c                	sw	a5,0(a0)
   10774:	557d                	li	a0,-1
   10776:	0141                	addi	sp,sp,16
   10778:	8082                	ret

000000000001077a <fork>:
   1077a:	1141                	addi	sp,sp,-16
   1077c:	e406                	sd	ra,8(sp)
   1077e:	18a000ef          	jal	ra,10908 <__errno>
   10782:	60a2                	ld	ra,8(sp)
   10784:	47ad                	li	a5,11
   10786:	c11c                	sw	a5,0(a0)
   10788:	557d                	li	a0,-1
   1078a:	0141                	addi	sp,sp,16
   1078c:	8082                	ret

000000000001078e <getpid>:
   1078e:	4505                	li	a0,1
   10790:	8082                	ret

0000000000010792 <kill>:
   10792:	1141                	addi	sp,sp,-16
   10794:	e406                	sd	ra,8(sp)
   10796:	172000ef          	jal	ra,10908 <__errno>
   1079a:	60a2                	ld	ra,8(sp)
   1079c:	47d9                	li	a5,22
   1079e:	c11c                	sw	a5,0(a0)
   107a0:	557d                	li	a0,-1
   107a2:	0141                	addi	sp,sp,16
   107a4:	8082                	ret

00000000000107a6 <wait>:
   107a6:	1141                	addi	sp,sp,-16
   107a8:	e406                	sd	ra,8(sp)
   107aa:	00000097          	auipc	ra,0x0
   107ae:	15e080e7          	jalr	350(ra) # 10908 <__errno>
   107b2:	60a2                	ld	ra,8(sp)
   107b4:	47a9                	li	a5,10
   107b6:	c11c                	sw	a5,0(a0)
   107b8:	557d                	li	a0,-1
   107ba:	0141                	addi	sp,sp,16
   107bc:	8082                	ret

00000000000107be <isatty>:
   107be:	7119                	addi	sp,sp,-128
   107c0:	002c                	addi	a1,sp,8
   107c2:	fc86                	sd	ra,120(sp)
   107c4:	e33ff0ef          	jal	ra,105f6 <fstat>
   107c8:	57fd                	li	a5,-1
   107ca:	00f50663          	beq	a0,a5,107d6 <isatty+0x18>
   107ce:	4532                	lw	a0,12(sp)
   107d0:	40d5551b          	sraiw	a0,a0,0xd
   107d4:	8905                	andi	a0,a0,1
   107d6:	70e6                	ld	ra,120(sp)
   107d8:	6109                	addi	sp,sp,128
   107da:	8082                	ret

00000000000107dc <gettimeofday>:
   107dc:	1141                	addi	sp,sp,-16
   107de:	85aa                	mv	a1,a0
   107e0:	4701                	li	a4,0
   107e2:	4681                	li	a3,0
   107e4:	4601                	li	a2,0
   107e6:	0a900513          	li	a0,169
   107ea:	e406                	sd	ra,8(sp)
   107ec:	00000097          	auipc	ra,0x0
   107f0:	d7a080e7          	jalr	-646(ra) # 10566 <__internal_syscall>
   107f4:	60a2                	ld	ra,8(sp)
   107f6:	2501                	sext.w	a0,a0
   107f8:	0141                	addi	sp,sp,16
   107fa:	8082                	ret

00000000000107fc <times>:
   107fc:	7179                	addi	sp,sp,-48
   107fe:	f022                	sd	s0,32(sp)
   10800:	842a                	mv	s0,a0
   10802:	8601b783          	ld	a5,-1952(gp) # 117b8 <t0.2574>
   10806:	ec26                	sd	s1,24(sp)
   10808:	f406                	sd	ra,40(sp)
   1080a:	86018493          	addi	s1,gp,-1952 # 117b8 <t0.2574>
   1080e:	eb81                	bnez	a5,1081e <times+0x22>
   10810:	4581                	li	a1,0
   10812:	86018513          	addi	a0,gp,-1952 # 117b8 <t0.2574>
   10816:	00000097          	auipc	ra,0x0
   1081a:	fc6080e7          	jalr	-58(ra) # 107dc <gettimeofday>
   1081e:	850a                	mv	a0,sp
   10820:	4581                	li	a1,0
   10822:	00000097          	auipc	ra,0x0
   10826:	fba080e7          	jalr	-70(ra) # 107dc <gettimeofday>
   1082a:	6098                	ld	a4,0(s1)
   1082c:	6782                	ld	a5,0(sp)
   1082e:	6494                	ld	a3,8(s1)
   10830:	00043823          	sd	zero,16(s0)
   10834:	8f99                	sub	a5,a5,a4
   10836:	000f4737          	lui	a4,0xf4
   1083a:	24070713          	addi	a4,a4,576 # f4240 <__global_pointer$+0xe22e8>
   1083e:	02e787b3          	mul	a5,a5,a4
   10842:	6722                	ld	a4,8(sp)
   10844:	00043c23          	sd	zero,24(s0)
   10848:	00043423          	sd	zero,8(s0)
   1084c:	8f15                	sub	a4,a4,a3
   1084e:	70a2                	ld	ra,40(sp)
   10850:	64e2                	ld	s1,24(sp)
   10852:	557d                	li	a0,-1
   10854:	97ba                	add	a5,a5,a4
   10856:	e01c                	sd	a5,0(s0)
   10858:	7402                	ld	s0,32(sp)
   1085a:	6145                	addi	sp,sp,48
   1085c:	8082                	ret

000000000001085e <ftime>:
   1085e:	00051423          	sh	zero,8(a0)
   10862:	00053023          	sd	zero,0(a0)
   10866:	4501                	li	a0,0
   10868:	8082                	ret

000000000001086a <utime>:
   1086a:	557d                	li	a0,-1
   1086c:	8082                	ret

000000000001086e <chown>:
   1086e:	557d                	li	a0,-1
   10870:	8082                	ret

0000000000010872 <chmod>:
   10872:	557d                	li	a0,-1
   10874:	8082                	ret

0000000000010876 <chdir>:
   10876:	557d                	li	a0,-1
   10878:	8082                	ret

000000000001087a <getcwd>:
   1087a:	4501                	li	a0,0
   1087c:	8082                	ret

000000000001087e <sysconf>:
   1087e:	4789                	li	a5,2
   10880:	00f50463          	beq	a0,a5,10888 <sysconf+0xa>
   10884:	557d                	li	a0,-1
   10886:	8082                	ret
   10888:	000f4537          	lui	a0,0xf4
   1088c:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22e8>
   10890:	8082                	ret

0000000000010892 <sbrk>:
   10892:	1101                	addi	sp,sp,-32
   10894:	e822                	sd	s0,16(sp)
   10896:	8201b783          	ld	a5,-2016(gp) # 11778 <heap_end.2611>
   1089a:	e426                	sd	s1,8(sp)
   1089c:	ec06                	sd	ra,24(sp)
   1089e:	84aa                	mv	s1,a0
   108a0:	e785                	bnez	a5,108c8 <sbrk+0x36>
   108a2:	4701                	li	a4,0
   108a4:	4681                	li	a3,0
   108a6:	4601                	li	a2,0
   108a8:	4581                	li	a1,0
   108aa:	0d600513          	li	a0,214
   108ae:	cb9ff0ef          	jal	ra,10566 <__internal_syscall>
   108b2:	57fd                	li	a5,-1
   108b4:	00f51863          	bne	a0,a5,108c4 <sbrk+0x32>
   108b8:	557d                	li	a0,-1
   108ba:	60e2                	ld	ra,24(sp)
   108bc:	6442                	ld	s0,16(sp)
   108be:	64a2                	ld	s1,8(sp)
   108c0:	6105                	addi	sp,sp,32
   108c2:	8082                	ret
   108c4:	82a1b023          	sd	a0,-2016(gp) # 11778 <heap_end.2611>
   108c8:	8201b583          	ld	a1,-2016(gp) # 11778 <heap_end.2611>
   108cc:	4701                	li	a4,0
   108ce:	4681                	li	a3,0
   108d0:	95a6                	add	a1,a1,s1
   108d2:	4601                	li	a2,0
   108d4:	0d600513          	li	a0,214
   108d8:	c8fff0ef          	jal	ra,10566 <__internal_syscall>
   108dc:	8201b783          	ld	a5,-2016(gp) # 11778 <heap_end.2611>
   108e0:	94be                	add	s1,s1,a5
   108e2:	fc951be3          	bne	a0,s1,108b8 <sbrk+0x26>
   108e6:	82a1b023          	sd	a0,-2016(gp) # 11778 <heap_end.2611>
   108ea:	853e                	mv	a0,a5
   108ec:	b7f9                	j	108ba <sbrk+0x28>

00000000000108ee <_exit>:
   108ee:	1141                	addi	sp,sp,-16
   108f0:	85aa                	mv	a1,a0
   108f2:	4701                	li	a4,0
   108f4:	4681                	li	a3,0
   108f6:	4601                	li	a2,0
   108f8:	05d00513          	li	a0,93
   108fc:	e406                	sd	ra,8(sp)
   108fe:	00000097          	auipc	ra,0x0
   10902:	c68080e7          	jalr	-920(ra) # 10566 <__internal_syscall>
   10906:	a001                	j	10906 <_exit+0x18>

0000000000010908 <__errno>:
   10908:	8101b503          	ld	a0,-2032(gp) # 11768 <_impure_ptr>
   1090c:	8082                	ret
	...

Disassembly of section .eh_frame:

0000000000010910 <__EH_FRAME_BEGIN__>:
   10910:	0000                	unimp
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

0000000000011770 <result>:
	...

0000000000011778 <heap_end.2611>:
	...

Disassembly of section .bss:

0000000000011780 <completed.5184>:
	...

0000000000011788 <object.5189>:
	...

00000000000117b8 <t0.2574>:
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
