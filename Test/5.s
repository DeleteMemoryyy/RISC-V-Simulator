
Test/5:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ec018193          	addi	gp,gp,-320 # 11f70 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11788 <_edata>
   100bc:	86818613          	addi	a2,gp,-1944 # 117d8 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	25e000ef          	jal	ra,10322 <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	1a450513          	addi	a0,a0,420 # 1026c <__libc_fini_array>
   100d0:	00000097          	auipc	ra,0x0
   100d4:	168080e7          	jalr	360(ra) # 10238 <atexit>
   100d8:	00000097          	auipc	ra,0x0
   100dc:	1e2080e7          	jalr	482(ra) # 102ba <__libc_init_array>
   100e0:	4502                	lw	a0,0(sp)
   100e2:	002c                	addi	a1,sp,8
   100e4:	4601                	li	a2,0
   100e6:	00000097          	auipc	ra,0x0
   100ea:	0c6080e7          	jalr	198(ra) # 101ac <main>
   100ee:	00000317          	auipc	t1,0x0
   100f2:	15830067          	jr	344(t1) # 10246 <exit>

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
   10148:	8201c703          	lbu	a4,-2016(gp) # 11790 <completed.5184>
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
   10166:	8f850513          	addi	a0,a0,-1800 # 108f8 <__EH_FRAME_BEGIN__>
   1016a:	ffff0097          	auipc	ra,0xffff0
   1016e:	e96080e7          	jalr	-362(ra) # 0 <_start-0x100b0>
   10172:	4785                	li	a5,1
   10174:	82f18023          	sb	a5,-2016(gp) # 11790 <completed.5184>
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
   10192:	79858593          	addi	a1,a1,1944 # 11798 <object.5189>
   10196:	8f850513          	addi	a0,a0,-1800 # 108f8 <__EH_FRAME_BEGIN__>
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
   101bc:	00100793          	li	a5,1
   101c0:	fef42623          	sw	a5,-20(s0)
   101c4:	fec42783          	lw	a5,-20(s0)
   101c8:	0007871b          	sext.w	a4,a5
   101cc:	00500793          	li	a5,5
   101d0:	04e7c863          	blt	a5,a4,10220 <main+0x74>
   101d4:	000117b7          	lui	a5,0x11
   101d8:	fec42703          	lw	a4,-20(s0)
   101dc:	00271713          	slli	a4,a4,0x2
   101e0:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   101e4:	00f707b3          	add	a5,a4,a5
   101e8:	0007a703          	lw	a4,0(a5)
   101ec:	fec42783          	lw	a5,-20(s0)
   101f0:	02f747bb          	divw	a5,a4,a5
   101f4:	0007871b          	sext.w	a4,a5
   101f8:	000117b7          	lui	a5,0x11
   101fc:	fec42683          	lw	a3,-20(s0)
   10200:	00269693          	slli	a3,a3,0x2
   10204:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   10208:	00f687b3          	add	a5,a3,a5
   1020c:	00e7a023          	sw	a4,0(a5)
   10210:	fec42783          	lw	a5,-20(s0)
   10214:	0017879b          	addiw	a5,a5,1
   10218:	fef42623          	sw	a5,-20(s0)
   1021c:	fa9ff06f          	j	101c4 <main+0x18>
   10220:	00000793          	li	a5,0
   10224:	00078513          	mv	a0,a5
   10228:	01813403          	ld	s0,24(sp)
   1022c:	02010113          	addi	sp,sp,32
   10230:	00008067          	ret
   10234:	0000                	unimp
	...

0000000000010238 <atexit>:
   10238:	85aa                	mv	a1,a0
   1023a:	4681                	li	a3,0
   1023c:	4601                	li	a2,0
   1023e:	4501                	li	a0,0
   10240:	18c0006f          	j	103cc <__register_exitproc>
	...

0000000000010246 <exit>:
   10246:	1141                	addi	sp,sp,-16
   10248:	4581                	li	a1,0
   1024a:	e022                	sd	s0,0(sp)
   1024c:	e406                	sd	ra,8(sp)
   1024e:	842a                	mv	s0,a0
   10250:	1e4000ef          	jal	ra,10434 <__call_exitprocs>
   10254:	67c5                	lui	a5,0x11
   10256:	7787b503          	ld	a0,1912(a5) # 11778 <_global_impure_ptr>
   1025a:	6d3c                	ld	a5,88(a0)
   1025c:	c391                	beqz	a5,10260 <exit+0x1a>
   1025e:	9782                	jalr	a5
   10260:	8522                	mv	a0,s0
   10262:	00000097          	auipc	ra,0x0
   10266:	66e080e7          	jalr	1646(ra) # 108d0 <_exit>
	...

000000000001026c <__libc_fini_array>:
   1026c:	7179                	addi	sp,sp,-48
   1026e:	67c5                	lui	a5,0x11
   10270:	6745                	lui	a4,0x11
   10272:	f022                	sd	s0,32(sp)
   10274:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   10278:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   1027c:	8c19                	sub	s0,s0,a4
   1027e:	ec26                	sd	s1,24(sp)
   10280:	e84a                	sd	s2,16(sp)
   10282:	e44e                	sd	s3,8(sp)
   10284:	f406                	sd	ra,40(sp)
   10286:	840d                	srai	s0,s0,0x3
   10288:	4481                	li	s1,0
   1028a:	01078913          	addi	s2,a5,16
   1028e:	59e1                	li	s3,-8
   10290:	00941c63          	bne	s0,s1,102a8 <__libc_fini_array+0x3c>
   10294:	7402                	ld	s0,32(sp)
   10296:	70a2                	ld	ra,40(sp)
   10298:	64e2                	ld	s1,24(sp)
   1029a:	6942                	ld	s2,16(sp)
   1029c:	69a2                	ld	s3,8(sp)
   1029e:	6145                	addi	sp,sp,48
   102a0:	00000317          	auipc	t1,0x0
   102a4:	e5630067          	jr	-426(t1) # 100f6 <_fini>
   102a8:	033487b3          	mul	a5,s1,s3
   102ac:	0485                	addi	s1,s1,1
   102ae:	97ca                	add	a5,a5,s2
   102b0:	ff87b783          	ld	a5,-8(a5)
   102b4:	9782                	jalr	a5
   102b6:	bfe9                	j	10290 <__libc_fini_array+0x24>
	...

00000000000102ba <__libc_init_array>:
   102ba:	1101                	addi	sp,sp,-32
   102bc:	e822                	sd	s0,16(sp)
   102be:	e426                	sd	s1,8(sp)
   102c0:	6445                	lui	s0,0x11
   102c2:	64c5                	lui	s1,0x11
   102c4:	00048793          	mv	a5,s1
   102c8:	00040413          	mv	s0,s0
   102cc:	8c1d                	sub	s0,s0,a5
   102ce:	e04a                	sd	s2,0(sp)
   102d0:	ec06                	sd	ra,24(sp)
   102d2:	840d                	srai	s0,s0,0x3
   102d4:	00048493          	mv	s1,s1
   102d8:	4901                	li	s2,0
   102da:	02891963          	bne	s2,s0,1030c <__libc_init_array+0x52>
   102de:	64c5                	lui	s1,0x11
   102e0:	00000097          	auipc	ra,0x0
   102e4:	e16080e7          	jalr	-490(ra) # 100f6 <_fini>
   102e8:	6445                	lui	s0,0x11
   102ea:	00048793          	mv	a5,s1
   102ee:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   102f2:	8c1d                	sub	s0,s0,a5
   102f4:	840d                	srai	s0,s0,0x3
   102f6:	00048493          	mv	s1,s1
   102fa:	4901                	li	s2,0
   102fc:	00891d63          	bne	s2,s0,10316 <__libc_init_array+0x5c>
   10300:	60e2                	ld	ra,24(sp)
   10302:	6442                	ld	s0,16(sp)
   10304:	64a2                	ld	s1,8(sp)
   10306:	6902                	ld	s2,0(sp)
   10308:	6105                	addi	sp,sp,32
   1030a:	8082                	ret
   1030c:	609c                	ld	a5,0(s1)
   1030e:	0905                	addi	s2,s2,1
   10310:	04a1                	addi	s1,s1,8
   10312:	9782                	jalr	a5
   10314:	b7d9                	j	102da <__libc_init_array+0x20>
   10316:	609c                	ld	a5,0(s1)
   10318:	0905                	addi	s2,s2,1
   1031a:	04a1                	addi	s1,s1,8
   1031c:	9782                	jalr	a5
   1031e:	bff9                	j	102fc <__libc_init_array+0x42>
	...

0000000000010322 <memset>:
   10322:	483d                	li	a6,15
   10324:	872a                	mv	a4,a0
   10326:	02c87163          	bleu	a2,a6,10348 <memset+0x26>
   1032a:	00f77793          	andi	a5,a4,15
   1032e:	e3c1                	bnez	a5,103ae <memset+0x8c>
   10330:	e1bd                	bnez	a1,10396 <memset+0x74>
   10332:	ff067693          	andi	a3,a2,-16
   10336:	8a3d                	andi	a2,a2,15
   10338:	96ba                	add	a3,a3,a4
   1033a:	e30c                	sd	a1,0(a4)
   1033c:	e70c                	sd	a1,8(a4)
   1033e:	0741                	addi	a4,a4,16
   10340:	fed76de3          	bltu	a4,a3,1033a <memset+0x18>
   10344:	e211                	bnez	a2,10348 <memset+0x26>
   10346:	8082                	ret
   10348:	40c806b3          	sub	a3,a6,a2
   1034c:	068a                	slli	a3,a3,0x2
   1034e:	00000297          	auipc	t0,0x0
   10352:	9696                	add	a3,a3,t0
   10354:	00a68067          	jr	10(a3)
   10358:	00b70723          	sb	a1,14(a4)
   1035c:	00b706a3          	sb	a1,13(a4)
   10360:	00b70623          	sb	a1,12(a4)
   10364:	00b705a3          	sb	a1,11(a4)
   10368:	00b70523          	sb	a1,10(a4)
   1036c:	00b704a3          	sb	a1,9(a4)
   10370:	00b70423          	sb	a1,8(a4)
   10374:	00b703a3          	sb	a1,7(a4)
   10378:	00b70323          	sb	a1,6(a4)
   1037c:	00b702a3          	sb	a1,5(a4)
   10380:	00b70223          	sb	a1,4(a4)
   10384:	00b701a3          	sb	a1,3(a4)
   10388:	00b70123          	sb	a1,2(a4)
   1038c:	00b700a3          	sb	a1,1(a4)
   10390:	00b70023          	sb	a1,0(a4)
   10394:	8082                	ret
   10396:	0ff5f593          	andi	a1,a1,255
   1039a:	00859693          	slli	a3,a1,0x8
   1039e:	8dd5                	or	a1,a1,a3
   103a0:	01059693          	slli	a3,a1,0x10
   103a4:	8dd5                	or	a1,a1,a3
   103a6:	02059693          	slli	a3,a1,0x20
   103aa:	8dd5                	or	a1,a1,a3
   103ac:	b759                	j	10332 <memset+0x10>
   103ae:	00279693          	slli	a3,a5,0x2
   103b2:	00000297          	auipc	t0,0x0
   103b6:	9696                	add	a3,a3,t0
   103b8:	8286                	mv	t0,ra
   103ba:	fa2680e7          	jalr	-94(a3)
   103be:	8096                	mv	ra,t0
   103c0:	17c1                	addi	a5,a5,-16
   103c2:	8f1d                	sub	a4,a4,a5
   103c4:	963e                	add	a2,a2,a5
   103c6:	f8c871e3          	bleu	a2,a6,10348 <memset+0x26>
   103ca:	b79d                	j	10330 <memset+0xe>

00000000000103cc <__register_exitproc>:
   103cc:	67c5                	lui	a5,0x11
   103ce:	7787b703          	ld	a4,1912(a5) # 11778 <_global_impure_ptr>
   103d2:	832a                	mv	t1,a0
   103d4:	1f873783          	ld	a5,504(a4)
   103d8:	e789                	bnez	a5,103e2 <__register_exitproc+0x16>
   103da:	20070793          	addi	a5,a4,512
   103de:	1ef73c23          	sd	a5,504(a4)
   103e2:	4798                	lw	a4,8(a5)
   103e4:	487d                	li	a6,31
   103e6:	557d                	li	a0,-1
   103e8:	04e84463          	blt	a6,a4,10430 <__register_exitproc+0x64>
   103ec:	02030a63          	beqz	t1,10420 <__register_exitproc+0x54>
   103f0:	00371813          	slli	a6,a4,0x3
   103f4:	983e                	add	a6,a6,a5
   103f6:	10c83823          	sd	a2,272(a6)
   103fa:	3107a883          	lw	a7,784(a5)
   103fe:	4605                	li	a2,1
   10400:	00e6163b          	sllw	a2,a2,a4
   10404:	00c8e8b3          	or	a7,a7,a2
   10408:	3117a823          	sw	a7,784(a5)
   1040c:	20d83823          	sd	a3,528(a6)
   10410:	4689                	li	a3,2
   10412:	00d31763          	bne	t1,a3,10420 <__register_exitproc+0x54>
   10416:	3147a683          	lw	a3,788(a5)
   1041a:	8e55                	or	a2,a2,a3
   1041c:	30c7aa23          	sw	a2,788(a5)
   10420:	0017069b          	addiw	a3,a4,1
   10424:	0709                	addi	a4,a4,2
   10426:	070e                	slli	a4,a4,0x3
   10428:	c794                	sw	a3,8(a5)
   1042a:	97ba                	add	a5,a5,a4
   1042c:	e38c                	sd	a1,0(a5)
   1042e:	4501                	li	a0,0
   10430:	8082                	ret
	...

0000000000010434 <__call_exitprocs>:
   10434:	715d                	addi	sp,sp,-80
   10436:	67c5                	lui	a5,0x11
   10438:	f44e                	sd	s3,40(sp)
   1043a:	7787b983          	ld	s3,1912(a5) # 11778 <_global_impure_ptr>
   1043e:	f052                	sd	s4,32(sp)
   10440:	ec56                	sd	s5,24(sp)
   10442:	e85a                	sd	s6,16(sp)
   10444:	e486                	sd	ra,72(sp)
   10446:	e0a2                	sd	s0,64(sp)
   10448:	fc26                	sd	s1,56(sp)
   1044a:	f84a                	sd	s2,48(sp)
   1044c:	e45e                	sd	s7,8(sp)
   1044e:	8aaa                	mv	s5,a0
   10450:	8a2e                	mv	s4,a1
   10452:	4b05                	li	s6,1
   10454:	1f89b403          	ld	s0,504(s3)
   10458:	c801                	beqz	s0,10468 <__call_exitprocs+0x34>
   1045a:	4404                	lw	s1,8(s0)
   1045c:	34fd                	addiw	s1,s1,-1
   1045e:	00349913          	slli	s2,s1,0x3
   10462:	9922                	add	s2,s2,s0
   10464:	0004dd63          	bgez	s1,1047e <__call_exitprocs+0x4a>
   10468:	60a6                	ld	ra,72(sp)
   1046a:	6406                	ld	s0,64(sp)
   1046c:	74e2                	ld	s1,56(sp)
   1046e:	7942                	ld	s2,48(sp)
   10470:	79a2                	ld	s3,40(sp)
   10472:	7a02                	ld	s4,32(sp)
   10474:	6ae2                	ld	s5,24(sp)
   10476:	6b42                	ld	s6,16(sp)
   10478:	6ba2                	ld	s7,8(sp)
   1047a:	6161                	addi	sp,sp,80
   1047c:	8082                	ret
   1047e:	000a0963          	beqz	s4,10490 <__call_exitprocs+0x5c>
   10482:	21093783          	ld	a5,528(s2)
   10486:	01478563          	beq	a5,s4,10490 <__call_exitprocs+0x5c>
   1048a:	34fd                	addiw	s1,s1,-1
   1048c:	1961                	addi	s2,s2,-8
   1048e:	bfd9                	j	10464 <__call_exitprocs+0x30>
   10490:	441c                	lw	a5,8(s0)
   10492:	01093683          	ld	a3,16(s2)
   10496:	37fd                	addiw	a5,a5,-1
   10498:	02979663          	bne	a5,s1,104c4 <__call_exitprocs+0x90>
   1049c:	c404                	sw	s1,8(s0)
   1049e:	d6f5                	beqz	a3,1048a <__call_exitprocs+0x56>
   104a0:	31042703          	lw	a4,784(s0)
   104a4:	009b163b          	sllw	a2,s6,s1
   104a8:	00842b83          	lw	s7,8(s0)
   104ac:	8f71                	and	a4,a4,a2
   104ae:	2701                	sext.w	a4,a4
   104b0:	ef09                	bnez	a4,104ca <__call_exitprocs+0x96>
   104b2:	9682                	jalr	a3
   104b4:	4418                	lw	a4,8(s0)
   104b6:	1f89b783          	ld	a5,504(s3)
   104ba:	f9771de3          	bne	a4,s7,10454 <__call_exitprocs+0x20>
   104be:	fcf406e3          	beq	s0,a5,1048a <__call_exitprocs+0x56>
   104c2:	bf49                	j	10454 <__call_exitprocs+0x20>
   104c4:	00093823          	sd	zero,16(s2)
   104c8:	bfd9                	j	1049e <__call_exitprocs+0x6a>
   104ca:	31442783          	lw	a5,788(s0)
   104ce:	11093583          	ld	a1,272(s2)
   104d2:	8ff1                	and	a5,a5,a2
   104d4:	2781                	sext.w	a5,a5
   104d6:	e781                	bnez	a5,104de <__call_exitprocs+0xaa>
   104d8:	8556                	mv	a0,s5
   104da:	9682                	jalr	a3
   104dc:	bfe1                	j	104b4 <__call_exitprocs+0x80>
   104de:	852e                	mv	a0,a1
   104e0:	9682                	jalr	a3
   104e2:	bfc9                	j	104b4 <__call_exitprocs+0x80>
	...

00000000000104e6 <conv_stat>:
   104e6:	619c                	ld	a5,0(a1)
   104e8:	00f51023          	sh	a5,0(a0)
   104ec:	659c                	ld	a5,8(a1)
   104ee:	00f51123          	sh	a5,2(a0)
   104f2:	499c                	lw	a5,16(a1)
   104f4:	c15c                	sw	a5,4(a0)
   104f6:	49dc                	lw	a5,20(a1)
   104f8:	00f51423          	sh	a5,8(a0)
   104fc:	4d9c                	lw	a5,24(a1)
   104fe:	00f51523          	sh	a5,10(a0)
   10502:	4ddc                	lw	a5,28(a1)
   10504:	00f51623          	sh	a5,12(a0)
   10508:	719c                	ld	a5,32(a1)
   1050a:	00f51723          	sh	a5,14(a0)
   1050e:	799c                	ld	a5,48(a1)
   10510:	e91c                	sd	a5,16(a0)
   10512:	61bc                	ld	a5,64(a1)
   10514:	e93c                	sd	a5,80(a0)
   10516:	5d9c                	lw	a5,56(a1)
   10518:	e53c                	sd	a5,72(a0)
   1051a:	65bc                	ld	a5,72(a1)
   1051c:	ed1c                	sd	a5,24(a0)
   1051e:	6dbc                	ld	a5,88(a1)
   10520:	f51c                	sd	a5,40(a0)
   10522:	75bc                	ld	a5,104(a1)
   10524:	fd1c                	sd	a5,56(a0)
   10526:	8082                	ret

0000000000010528 <__syscall_error>:
   10528:	1141                	addi	sp,sp,-16
   1052a:	e022                	sd	s0,0(sp)
   1052c:	e406                	sd	ra,8(sp)
   1052e:	842a                	mv	s0,a0
   10530:	00000097          	auipc	ra,0x0
   10534:	3ba080e7          	jalr	954(ra) # 108ea <__errno>
   10538:	408007bb          	negw	a5,s0
   1053c:	60a2                	ld	ra,8(sp)
   1053e:	6402                	ld	s0,0(sp)
   10540:	c11c                	sw	a5,0(a0)
   10542:	557d                	li	a0,-1
   10544:	0141                	addi	sp,sp,16
   10546:	8082                	ret

0000000000010548 <__internal_syscall>:
   10548:	88aa                	mv	a7,a0
   1054a:	852e                	mv	a0,a1
   1054c:	85b2                	mv	a1,a2
   1054e:	8636                	mv	a2,a3
   10550:	86ba                	mv	a3,a4
   10552:	00000073          	ecall
   10556:	00055663          	bgez	a0,10562 <__internal_syscall+0x1a>
   1055a:	00000317          	auipc	t1,0x0
   1055e:	fce30067          	jr	-50(t1) # 10528 <__syscall_error>
   10562:	8082                	ret

0000000000010564 <open>:
   10564:	1141                	addi	sp,sp,-16
   10566:	86b2                	mv	a3,a2
   10568:	4701                	li	a4,0
   1056a:	862e                	mv	a2,a1
   1056c:	85aa                	mv	a1,a0
   1056e:	40000513          	li	a0,1024
   10572:	e406                	sd	ra,8(sp)
   10574:	00000097          	auipc	ra,0x0
   10578:	fd4080e7          	jalr	-44(ra) # 10548 <__internal_syscall>
   1057c:	60a2                	ld	ra,8(sp)
   1057e:	2501                	sext.w	a0,a0
   10580:	0141                	addi	sp,sp,16
   10582:	8082                	ret

0000000000010584 <openat>:
   10584:	1141                	addi	sp,sp,-16
   10586:	8736                	mv	a4,a3
   10588:	86b2                	mv	a3,a2
   1058a:	862e                	mv	a2,a1
   1058c:	85aa                	mv	a1,a0
   1058e:	03800513          	li	a0,56
   10592:	e406                	sd	ra,8(sp)
   10594:	fb5ff0ef          	jal	ra,10548 <__internal_syscall>
   10598:	60a2                	ld	ra,8(sp)
   1059a:	2501                	sext.w	a0,a0
   1059c:	0141                	addi	sp,sp,16
   1059e:	8082                	ret

00000000000105a0 <lseek>:
   105a0:	86b2                	mv	a3,a2
   105a2:	4701                	li	a4,0
   105a4:	862e                	mv	a2,a1
   105a6:	85aa                	mv	a1,a0
   105a8:	03e00513          	li	a0,62
   105ac:	00000317          	auipc	t1,0x0
   105b0:	f9c30067          	jr	-100(t1) # 10548 <__internal_syscall>

00000000000105b4 <read>:
   105b4:	86b2                	mv	a3,a2
   105b6:	4701                	li	a4,0
   105b8:	862e                	mv	a2,a1
   105ba:	85aa                	mv	a1,a0
   105bc:	03f00513          	li	a0,63
   105c0:	f89ff06f          	j	10548 <__internal_syscall>

00000000000105c4 <write>:
   105c4:	86b2                	mv	a3,a2
   105c6:	4701                	li	a4,0
   105c8:	862e                	mv	a2,a1
   105ca:	85aa                	mv	a1,a0
   105cc:	04000513          	li	a0,64
   105d0:	00000317          	auipc	t1,0x0
   105d4:	f7830067          	jr	-136(t1) # 10548 <__internal_syscall>

00000000000105d8 <fstat>:
   105d8:	7135                	addi	sp,sp,-160
   105da:	e526                	sd	s1,136(sp)
   105dc:	860a                	mv	a2,sp
   105de:	84ae                	mv	s1,a1
   105e0:	4701                	li	a4,0
   105e2:	85aa                	mv	a1,a0
   105e4:	4681                	li	a3,0
   105e6:	05000513          	li	a0,80
   105ea:	ed06                	sd	ra,152(sp)
   105ec:	e922                	sd	s0,144(sp)
   105ee:	f5bff0ef          	jal	ra,10548 <__internal_syscall>
   105f2:	842a                	mv	s0,a0
   105f4:	858a                	mv	a1,sp
   105f6:	8526                	mv	a0,s1
   105f8:	eefff0ef          	jal	ra,104e6 <conv_stat>
   105fc:	0004051b          	sext.w	a0,s0
   10600:	60ea                	ld	ra,152(sp)
   10602:	644a                	ld	s0,144(sp)
   10604:	64aa                	ld	s1,136(sp)
   10606:	610d                	addi	sp,sp,160
   10608:	8082                	ret

000000000001060a <stat>:
   1060a:	7135                	addi	sp,sp,-160
   1060c:	e526                	sd	s1,136(sp)
   1060e:	860a                	mv	a2,sp
   10610:	84ae                	mv	s1,a1
   10612:	4701                	li	a4,0
   10614:	85aa                	mv	a1,a0
   10616:	4681                	li	a3,0
   10618:	40e00513          	li	a0,1038
   1061c:	ed06                	sd	ra,152(sp)
   1061e:	e922                	sd	s0,144(sp)
   10620:	00000097          	auipc	ra,0x0
   10624:	f28080e7          	jalr	-216(ra) # 10548 <__internal_syscall>
   10628:	842a                	mv	s0,a0
   1062a:	858a                	mv	a1,sp
   1062c:	8526                	mv	a0,s1
   1062e:	00000097          	auipc	ra,0x0
   10632:	eb8080e7          	jalr	-328(ra) # 104e6 <conv_stat>
   10636:	0004051b          	sext.w	a0,s0
   1063a:	60ea                	ld	ra,152(sp)
   1063c:	644a                	ld	s0,144(sp)
   1063e:	64aa                	ld	s1,136(sp)
   10640:	610d                	addi	sp,sp,160
   10642:	8082                	ret

0000000000010644 <lstat>:
   10644:	7135                	addi	sp,sp,-160
   10646:	e526                	sd	s1,136(sp)
   10648:	860a                	mv	a2,sp
   1064a:	84ae                	mv	s1,a1
   1064c:	4701                	li	a4,0
   1064e:	85aa                	mv	a1,a0
   10650:	4681                	li	a3,0
   10652:	40f00513          	li	a0,1039
   10656:	ed06                	sd	ra,152(sp)
   10658:	e922                	sd	s0,144(sp)
   1065a:	eefff0ef          	jal	ra,10548 <__internal_syscall>
   1065e:	842a                	mv	s0,a0
   10660:	858a                	mv	a1,sp
   10662:	8526                	mv	a0,s1
   10664:	e83ff0ef          	jal	ra,104e6 <conv_stat>
   10668:	0004051b          	sext.w	a0,s0
   1066c:	60ea                	ld	ra,152(sp)
   1066e:	644a                	ld	s0,144(sp)
   10670:	64aa                	ld	s1,136(sp)
   10672:	610d                	addi	sp,sp,160
   10674:	8082                	ret

0000000000010676 <fstatat>:
   10676:	7135                	addi	sp,sp,-160
   10678:	e526                	sd	s1,136(sp)
   1067a:	8736                	mv	a4,a3
   1067c:	84b2                	mv	s1,a2
   1067e:	868a                	mv	a3,sp
   10680:	862e                	mv	a2,a1
   10682:	85aa                	mv	a1,a0
   10684:	04f00513          	li	a0,79
   10688:	ed06                	sd	ra,152(sp)
   1068a:	e922                	sd	s0,144(sp)
   1068c:	00000097          	auipc	ra,0x0
   10690:	ebc080e7          	jalr	-324(ra) # 10548 <__internal_syscall>
   10694:	842a                	mv	s0,a0
   10696:	858a                	mv	a1,sp
   10698:	8526                	mv	a0,s1
   1069a:	00000097          	auipc	ra,0x0
   1069e:	e4c080e7          	jalr	-436(ra) # 104e6 <conv_stat>
   106a2:	0004051b          	sext.w	a0,s0
   106a6:	60ea                	ld	ra,152(sp)
   106a8:	644a                	ld	s0,144(sp)
   106aa:	64aa                	ld	s1,136(sp)
   106ac:	610d                	addi	sp,sp,160
   106ae:	8082                	ret

00000000000106b0 <access>:
   106b0:	1141                	addi	sp,sp,-16
   106b2:	862e                	mv	a2,a1
   106b4:	4701                	li	a4,0
   106b6:	85aa                	mv	a1,a0
   106b8:	4681                	li	a3,0
   106ba:	40900513          	li	a0,1033
   106be:	e406                	sd	ra,8(sp)
   106c0:	e89ff0ef          	jal	ra,10548 <__internal_syscall>
   106c4:	60a2                	ld	ra,8(sp)
   106c6:	2501                	sext.w	a0,a0
   106c8:	0141                	addi	sp,sp,16
   106ca:	8082                	ret

00000000000106cc <faccessat>:
   106cc:	1141                	addi	sp,sp,-16
   106ce:	8736                	mv	a4,a3
   106d0:	86b2                	mv	a3,a2
   106d2:	862e                	mv	a2,a1
   106d4:	85aa                	mv	a1,a0
   106d6:	03000513          	li	a0,48
   106da:	e406                	sd	ra,8(sp)
   106dc:	00000097          	auipc	ra,0x0
   106e0:	e6c080e7          	jalr	-404(ra) # 10548 <__internal_syscall>
   106e4:	60a2                	ld	ra,8(sp)
   106e6:	2501                	sext.w	a0,a0
   106e8:	0141                	addi	sp,sp,16
   106ea:	8082                	ret

00000000000106ec <close>:
   106ec:	1141                	addi	sp,sp,-16
   106ee:	85aa                	mv	a1,a0
   106f0:	4701                	li	a4,0
   106f2:	4681                	li	a3,0
   106f4:	4601                	li	a2,0
   106f6:	03900513          	li	a0,57
   106fa:	e406                	sd	ra,8(sp)
   106fc:	e4dff0ef          	jal	ra,10548 <__internal_syscall>
   10700:	60a2                	ld	ra,8(sp)
   10702:	2501                	sext.w	a0,a0
   10704:	0141                	addi	sp,sp,16
   10706:	8082                	ret

0000000000010708 <link>:
   10708:	1141                	addi	sp,sp,-16
   1070a:	862e                	mv	a2,a1
   1070c:	4701                	li	a4,0
   1070e:	85aa                	mv	a1,a0
   10710:	4681                	li	a3,0
   10712:	40100513          	li	a0,1025
   10716:	e406                	sd	ra,8(sp)
   10718:	00000097          	auipc	ra,0x0
   1071c:	e30080e7          	jalr	-464(ra) # 10548 <__internal_syscall>
   10720:	60a2                	ld	ra,8(sp)
   10722:	2501                	sext.w	a0,a0
   10724:	0141                	addi	sp,sp,16
   10726:	8082                	ret

0000000000010728 <unlink>:
   10728:	1141                	addi	sp,sp,-16
   1072a:	85aa                	mv	a1,a0
   1072c:	4701                	li	a4,0
   1072e:	4681                	li	a3,0
   10730:	4601                	li	a2,0
   10732:	40200513          	li	a0,1026
   10736:	e406                	sd	ra,8(sp)
   10738:	e11ff0ef          	jal	ra,10548 <__internal_syscall>
   1073c:	60a2                	ld	ra,8(sp)
   1073e:	2501                	sext.w	a0,a0
   10740:	0141                	addi	sp,sp,16
   10742:	8082                	ret

0000000000010744 <execve>:
   10744:	1141                	addi	sp,sp,-16
   10746:	e406                	sd	ra,8(sp)
   10748:	00000097          	auipc	ra,0x0
   1074c:	1a2080e7          	jalr	418(ra) # 108ea <__errno>
   10750:	60a2                	ld	ra,8(sp)
   10752:	47b1                	li	a5,12
   10754:	c11c                	sw	a5,0(a0)
   10756:	557d                	li	a0,-1
   10758:	0141                	addi	sp,sp,16
   1075a:	8082                	ret

000000000001075c <fork>:
   1075c:	1141                	addi	sp,sp,-16
   1075e:	e406                	sd	ra,8(sp)
   10760:	18a000ef          	jal	ra,108ea <__errno>
   10764:	60a2                	ld	ra,8(sp)
   10766:	47ad                	li	a5,11
   10768:	c11c                	sw	a5,0(a0)
   1076a:	557d                	li	a0,-1
   1076c:	0141                	addi	sp,sp,16
   1076e:	8082                	ret

0000000000010770 <getpid>:
   10770:	4505                	li	a0,1
   10772:	8082                	ret

0000000000010774 <kill>:
   10774:	1141                	addi	sp,sp,-16
   10776:	e406                	sd	ra,8(sp)
   10778:	172000ef          	jal	ra,108ea <__errno>
   1077c:	60a2                	ld	ra,8(sp)
   1077e:	47d9                	li	a5,22
   10780:	c11c                	sw	a5,0(a0)
   10782:	557d                	li	a0,-1
   10784:	0141                	addi	sp,sp,16
   10786:	8082                	ret

0000000000010788 <wait>:
   10788:	1141                	addi	sp,sp,-16
   1078a:	e406                	sd	ra,8(sp)
   1078c:	00000097          	auipc	ra,0x0
   10790:	15e080e7          	jalr	350(ra) # 108ea <__errno>
   10794:	60a2                	ld	ra,8(sp)
   10796:	47a9                	li	a5,10
   10798:	c11c                	sw	a5,0(a0)
   1079a:	557d                	li	a0,-1
   1079c:	0141                	addi	sp,sp,16
   1079e:	8082                	ret

00000000000107a0 <isatty>:
   107a0:	7119                	addi	sp,sp,-128
   107a2:	002c                	addi	a1,sp,8
   107a4:	fc86                	sd	ra,120(sp)
   107a6:	e33ff0ef          	jal	ra,105d8 <fstat>
   107aa:	57fd                	li	a5,-1
   107ac:	00f50663          	beq	a0,a5,107b8 <isatty+0x18>
   107b0:	4532                	lw	a0,12(sp)
   107b2:	40d5551b          	sraiw	a0,a0,0xd
   107b6:	8905                	andi	a0,a0,1
   107b8:	70e6                	ld	ra,120(sp)
   107ba:	6109                	addi	sp,sp,128
   107bc:	8082                	ret

00000000000107be <gettimeofday>:
   107be:	1141                	addi	sp,sp,-16
   107c0:	85aa                	mv	a1,a0
   107c2:	4701                	li	a4,0
   107c4:	4681                	li	a3,0
   107c6:	4601                	li	a2,0
   107c8:	0a900513          	li	a0,169
   107cc:	e406                	sd	ra,8(sp)
   107ce:	00000097          	auipc	ra,0x0
   107d2:	d7a080e7          	jalr	-646(ra) # 10548 <__internal_syscall>
   107d6:	60a2                	ld	ra,8(sp)
   107d8:	2501                	sext.w	a0,a0
   107da:	0141                	addi	sp,sp,16
   107dc:	8082                	ret

00000000000107de <times>:
   107de:	7179                	addi	sp,sp,-48
   107e0:	f022                	sd	s0,32(sp)
   107e2:	842a                	mv	s0,a0
   107e4:	8581b783          	ld	a5,-1960(gp) # 117c8 <t0.2574>
   107e8:	ec26                	sd	s1,24(sp)
   107ea:	f406                	sd	ra,40(sp)
   107ec:	85818493          	addi	s1,gp,-1960 # 117c8 <t0.2574>
   107f0:	eb81                	bnez	a5,10800 <times+0x22>
   107f2:	4581                	li	a1,0
   107f4:	85818513          	addi	a0,gp,-1960 # 117c8 <t0.2574>
   107f8:	00000097          	auipc	ra,0x0
   107fc:	fc6080e7          	jalr	-58(ra) # 107be <gettimeofday>
   10800:	850a                	mv	a0,sp
   10802:	4581                	li	a1,0
   10804:	00000097          	auipc	ra,0x0
   10808:	fba080e7          	jalr	-70(ra) # 107be <gettimeofday>
   1080c:	6098                	ld	a4,0(s1)
   1080e:	6782                	ld	a5,0(sp)
   10810:	6494                	ld	a3,8(s1)
   10812:	00043823          	sd	zero,16(s0)
   10816:	8f99                	sub	a5,a5,a4
   10818:	000f4737          	lui	a4,0xf4
   1081c:	24070713          	addi	a4,a4,576 # f4240 <__global_pointer$+0xe22d0>
   10820:	02e787b3          	mul	a5,a5,a4
   10824:	6722                	ld	a4,8(sp)
   10826:	00043c23          	sd	zero,24(s0)
   1082a:	00043423          	sd	zero,8(s0)
   1082e:	8f15                	sub	a4,a4,a3
   10830:	70a2                	ld	ra,40(sp)
   10832:	64e2                	ld	s1,24(sp)
   10834:	557d                	li	a0,-1
   10836:	97ba                	add	a5,a5,a4
   10838:	e01c                	sd	a5,0(s0)
   1083a:	7402                	ld	s0,32(sp)
   1083c:	6145                	addi	sp,sp,48
   1083e:	8082                	ret

0000000000010840 <ftime>:
   10840:	00051423          	sh	zero,8(a0)
   10844:	00053023          	sd	zero,0(a0)
   10848:	4501                	li	a0,0
   1084a:	8082                	ret

000000000001084c <utime>:
   1084c:	557d                	li	a0,-1
   1084e:	8082                	ret

0000000000010850 <chown>:
   10850:	557d                	li	a0,-1
   10852:	8082                	ret

0000000000010854 <chmod>:
   10854:	557d                	li	a0,-1
   10856:	8082                	ret

0000000000010858 <chdir>:
   10858:	557d                	li	a0,-1
   1085a:	8082                	ret

000000000001085c <getcwd>:
   1085c:	4501                	li	a0,0
   1085e:	8082                	ret

0000000000010860 <sysconf>:
   10860:	4789                	li	a5,2
   10862:	00f50463          	beq	a0,a5,1086a <sysconf+0xa>
   10866:	557d                	li	a0,-1
   10868:	8082                	ret
   1086a:	000f4537          	lui	a0,0xf4
   1086e:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22d0>
   10872:	8082                	ret

0000000000010874 <sbrk>:
   10874:	1101                	addi	sp,sp,-32
   10876:	e822                	sd	s0,16(sp)
   10878:	8181b783          	ld	a5,-2024(gp) # 11788 <_edata>
   1087c:	e426                	sd	s1,8(sp)
   1087e:	ec06                	sd	ra,24(sp)
   10880:	84aa                	mv	s1,a0
   10882:	e785                	bnez	a5,108aa <sbrk+0x36>
   10884:	4701                	li	a4,0
   10886:	4681                	li	a3,0
   10888:	4601                	li	a2,0
   1088a:	4581                	li	a1,0
   1088c:	0d600513          	li	a0,214
   10890:	cb9ff0ef          	jal	ra,10548 <__internal_syscall>
   10894:	57fd                	li	a5,-1
   10896:	00f51863          	bne	a0,a5,108a6 <sbrk+0x32>
   1089a:	557d                	li	a0,-1
   1089c:	60e2                	ld	ra,24(sp)
   1089e:	6442                	ld	s0,16(sp)
   108a0:	64a2                	ld	s1,8(sp)
   108a2:	6105                	addi	sp,sp,32
   108a4:	8082                	ret
   108a6:	80a1bc23          	sd	a0,-2024(gp) # 11788 <_edata>
   108aa:	8181b583          	ld	a1,-2024(gp) # 11788 <_edata>
   108ae:	4701                	li	a4,0
   108b0:	4681                	li	a3,0
   108b2:	95a6                	add	a1,a1,s1
   108b4:	4601                	li	a2,0
   108b6:	0d600513          	li	a0,214
   108ba:	c8fff0ef          	jal	ra,10548 <__internal_syscall>
   108be:	8181b783          	ld	a5,-2024(gp) # 11788 <_edata>
   108c2:	94be                	add	s1,s1,a5
   108c4:	fc951be3          	bne	a0,s1,1089a <sbrk+0x26>
   108c8:	80a1bc23          	sd	a0,-2024(gp) # 11788 <_edata>
   108cc:	853e                	mv	a0,a5
   108ce:	b7f9                	j	1089c <sbrk+0x28>

00000000000108d0 <_exit>:
   108d0:	1141                	addi	sp,sp,-16
   108d2:	85aa                	mv	a1,a0
   108d4:	4701                	li	a4,0
   108d6:	4681                	li	a3,0
   108d8:	4601                	li	a2,0
   108da:	05d00513          	li	a0,93
   108de:	e406                	sd	ra,8(sp)
   108e0:	00000097          	auipc	ra,0x0
   108e4:	c68080e7          	jalr	-920(ra) # 10548 <__internal_syscall>
   108e8:	a001                	j	108e8 <_exit+0x18>

00000000000108ea <__errno>:
   108ea:	8101b503          	ld	a0,-2032(gp) # 11780 <_impure_ptr>
   108ee:	8082                	ret
	...

Disassembly of section .eh_frame:

00000000000108f8 <__EH_FRAME_BEGIN__>:
   108f8:	0010                	addi	a2,sp,0
   108fa:	0000                	unimp
   108fc:	0000                	unimp
   108fe:	0000                	unimp
   10900:	7a01                	lui	s4,0xfffe0
   10902:	0052                	0x52
   10904:	7c01                	lui	s8,0xfffe0
   10906:	0101                	addi	sp,sp,0
   10908:	00020d1b          	sext.w	s10,tp
   1090c:	0020                	addi	s0,sp,8
   1090e:	0000                	unimp
   10910:	0018                	addi	a4,sp,0
   10912:	0000                	unimp
   10914:	f898                	sd	a4,48(s1)
   10916:	ffff                	0xffff
   10918:	0088                	addi	a0,sp,64
   1091a:	0000                	unimp
   1091c:	4400                	lw	s0,8(s0)
   1091e:	200e                	fld	ft0,192(sp)
   10920:	8844                	0x8844
   10922:	4402                	lw	s0,0(sp)
   10924:	080c                	addi	a1,sp,16
   10926:	0200                	addi	s0,sp,256
   10928:	c874                	sw	a3,84(s0)
   1092a:	0d44                	addi	s1,sp,660
   1092c:	0002                	0x2
	...

0000000000010930 <__FRAME_END__>:
   10930:	0000                	unimp
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

0000000000011778 <_global_impure_ptr>:
   11778:	1028                	addi	a0,sp,40
   1177a:	0001                	nop
   1177c:	0000                	unimp
	...

0000000000011780 <_impure_ptr>:
   11780:	1028                	addi	a0,sp,40
   11782:	0001                	nop
   11784:	0000                	unimp
	...

Disassembly of section .sbss:

0000000000011788 <__bss_start>:
	...

Disassembly of section .bss:

0000000000011790 <completed.5184>:
	...

0000000000011798 <object.5189>:
	...

00000000000117c8 <t0.2574>:
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
