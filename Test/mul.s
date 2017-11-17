
Test/mul:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ea818193          	addi	gp,gp,-344 # 11f58 <__global_pointer$>
   100b8:	82818513          	addi	a0,gp,-2008 # 11780 <_edata>
   100bc:	88018613          	addi	a2,gp,-1920 # 117d8 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	208000ef          	jal	ra,102cc <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	14e50513          	addi	a0,a0,334 # 10216 <__libc_fini_array>
   100d0:	00000097          	auipc	ra,0x0
   100d4:	114080e7          	jalr	276(ra) # 101e4 <atexit>
   100d8:	00000097          	auipc	ra,0x0
   100dc:	18c080e7          	jalr	396(ra) # 10264 <__libc_init_array>
   100e0:	4502                	lw	a0,0(sp)
   100e2:	002c                	addi	a1,sp,8
   100e4:	4601                	li	a2,0
   100e6:	00000097          	auipc	ra,0x0
   100ea:	0c6080e7          	jalr	198(ra) # 101ac <main>
   100ee:	00000317          	auipc	t1,0x0
   100f2:	10430067          	jr	260(t1) # 101f2 <exit>

00000000000100f6 <_fini>:
   100f6:	8082                	ret

00000000000100f8 <deregister_tm_clones>:
   100f8:	6545                	lui	a0,0x11
   100fa:	67c5                	lui	a5,0x11
   100fc:	75850713          	addi	a4,a0,1880 # 11758 <__TMC_END__>
   10100:	75878793          	addi	a5,a5,1880 # 11758 <__TMC_END__>
   10104:	00e78b63          	beq	a5,a4,1011a <deregister_tm_clones+0x22>
   10108:	00000337          	lui	t1,0x0
   1010c:	00030313          	mv	t1,t1
   10110:	00030563          	beqz	t1,1011a <deregister_tm_clones+0x22>
   10114:	75850513          	addi	a0,a0,1880
   10118:	8302                	jr	t1
   1011a:	8082                	ret

000000000001011c <register_tm_clones>:
   1011c:	67c5                	lui	a5,0x11
   1011e:	6545                	lui	a0,0x11
   10120:	75878593          	addi	a1,a5,1880 # 11758 <__TMC_END__>
   10124:	75850793          	addi	a5,a0,1880 # 11758 <__TMC_END__>
   10128:	8d9d                	sub	a1,a1,a5
   1012a:	858d                	srai	a1,a1,0x3
   1012c:	4789                	li	a5,2
   1012e:	02f5c5b3          	div	a1,a1,a5
   10132:	c991                	beqz	a1,10146 <register_tm_clones+0x2a>
   10134:	00000337          	lui	t1,0x0
   10138:	00030313          	mv	t1,t1
   1013c:	00030563          	beqz	t1,10146 <register_tm_clones+0x2a>
   10140:	75850513          	addi	a0,a0,1880
   10144:	8302                	jr	t1
   10146:	8082                	ret

0000000000010148 <__do_global_dtors_aux>:
   10148:	8381c703          	lbu	a4,-1992(gp) # 11790 <completed.5184>
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
   10166:	89850513          	addi	a0,a0,-1896 # 10898 <__EH_FRAME_BEGIN__>
   1016a:	ffff0097          	auipc	ra,0xffff0
   1016e:	e96080e7          	jalr	-362(ra) # 0 <_start-0x100b0>
   10172:	4785                	li	a5,1
   10174:	82f18c23          	sb	a5,-1992(gp) # 11790 <completed.5184>
   10178:	60a2                	ld	ra,8(sp)
   1017a:	6402                	ld	s0,0(sp)
   1017c:	0141                	addi	sp,sp,16
   1017e:	8082                	ret
   10180:	8082                	ret

0000000000010182 <frame_dummy>:
   10182:	000007b7          	lui	a5,0x0
   10186:	00078793          	mv	a5,a5
   1018a:	cf91                	beqz	a5,101a6 <frame_dummy+0x24>
   1018c:	6545                	lui	a0,0x11
   1018e:	1141                	addi	sp,sp,-16
   10190:	84018593          	addi	a1,gp,-1984 # 11798 <object.5189>
   10194:	89850513          	addi	a0,a0,-1896 # 10898 <__EH_FRAME_BEGIN__>
   10198:	e406                	sd	ra,8(sp)
   1019a:	ffff0097          	auipc	ra,0xffff0
   1019e:	e66080e7          	jalr	-410(ra) # 0 <_start-0x100b0>
   101a2:	60a2                	ld	ra,8(sp)
   101a4:	0141                	addi	sp,sp,16
   101a6:	f77ff06f          	j	1011c <register_tm_clones>
	...

00000000000101ac <main>:
   101ac:	ff010113          	addi	sp,sp,-16
   101b0:	00813423          	sd	s0,8(sp)
   101b4:	01010413          	addi	s0,sp,16
   101b8:	000117b7          	lui	a5,0x11
   101bc:	7607b703          	ld	a4,1888(a5) # 11760 <a>
   101c0:	8101b783          	ld	a5,-2032(gp) # 11768 <b>
   101c4:	02f70733          	mul	a4,a4,a5
   101c8:	82e1b423          	sd	a4,-2008(gp) # 11780 <_edata>
   101cc:	00000793          	li	a5,0
   101d0:	00078513          	mv	a0,a5
   101d4:	00813403          	ld	s0,8(sp)
   101d8:	01010113          	addi	sp,sp,16
   101dc:	00008067          	ret
   101e0:	0000                	unimp
	...

00000000000101e4 <atexit>:
   101e4:	85aa                	mv	a1,a0
   101e6:	4681                	li	a3,0
   101e8:	4601                	li	a2,0
   101ea:	4501                	li	a0,0
   101ec:	18a0006f          	j	10376 <__register_exitproc>
	...

00000000000101f2 <exit>:
   101f2:	1141                	addi	sp,sp,-16
   101f4:	4581                	li	a1,0
   101f6:	e022                	sd	s0,0(sp)
   101f8:	e406                	sd	ra,8(sp)
   101fa:	842a                	mv	s0,a0
   101fc:	1e0000ef          	jal	ra,103dc <__call_exitprocs>
   10200:	8181b503          	ld	a0,-2024(gp) # 11770 <_global_impure_ptr>
   10204:	6d3c                	ld	a5,88(a0)
   10206:	c391                	beqz	a5,1020a <exit+0x18>
   10208:	9782                	jalr	a5
   1020a:	8522                	mv	a0,s0
   1020c:	00000097          	auipc	ra,0x0
   10210:	66a080e7          	jalr	1642(ra) # 10876 <_exit>
	...

0000000000010216 <__libc_fini_array>:
   10216:	7179                	addi	sp,sp,-48
   10218:	67c5                	lui	a5,0x11
   1021a:	6745                	lui	a4,0x11
   1021c:	f022                	sd	s0,32(sp)
   1021e:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   10222:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   10226:	8c19                	sub	s0,s0,a4
   10228:	ec26                	sd	s1,24(sp)
   1022a:	e84a                	sd	s2,16(sp)
   1022c:	e44e                	sd	s3,8(sp)
   1022e:	f406                	sd	ra,40(sp)
   10230:	840d                	srai	s0,s0,0x3
   10232:	4481                	li	s1,0
   10234:	01078913          	addi	s2,a5,16
   10238:	59e1                	li	s3,-8
   1023a:	00941c63          	bne	s0,s1,10252 <__libc_fini_array+0x3c>
   1023e:	7402                	ld	s0,32(sp)
   10240:	70a2                	ld	ra,40(sp)
   10242:	64e2                	ld	s1,24(sp)
   10244:	6942                	ld	s2,16(sp)
   10246:	69a2                	ld	s3,8(sp)
   10248:	6145                	addi	sp,sp,48
   1024a:	00000317          	auipc	t1,0x0
   1024e:	eac30067          	jr	-340(t1) # 100f6 <_fini>
   10252:	033487b3          	mul	a5,s1,s3
   10256:	0485                	addi	s1,s1,1
   10258:	97ca                	add	a5,a5,s2
   1025a:	ff87b783          	ld	a5,-8(a5)
   1025e:	9782                	jalr	a5
   10260:	bfe9                	j	1023a <__libc_fini_array+0x24>
	...

0000000000010264 <__libc_init_array>:
   10264:	1101                	addi	sp,sp,-32
   10266:	e822                	sd	s0,16(sp)
   10268:	e426                	sd	s1,8(sp)
   1026a:	6445                	lui	s0,0x11
   1026c:	64c5                	lui	s1,0x11
   1026e:	00048793          	mv	a5,s1
   10272:	00040413          	mv	s0,s0
   10276:	8c1d                	sub	s0,s0,a5
   10278:	e04a                	sd	s2,0(sp)
   1027a:	ec06                	sd	ra,24(sp)
   1027c:	840d                	srai	s0,s0,0x3
   1027e:	00048493          	mv	s1,s1
   10282:	4901                	li	s2,0
   10284:	02891963          	bne	s2,s0,102b6 <__libc_init_array+0x52>
   10288:	64c5                	lui	s1,0x11
   1028a:	00000097          	auipc	ra,0x0
   1028e:	e6c080e7          	jalr	-404(ra) # 100f6 <_fini>
   10292:	6445                	lui	s0,0x11
   10294:	00048793          	mv	a5,s1
   10298:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   1029c:	8c1d                	sub	s0,s0,a5
   1029e:	840d                	srai	s0,s0,0x3
   102a0:	00048493          	mv	s1,s1
   102a4:	4901                	li	s2,0
   102a6:	00891d63          	bne	s2,s0,102c0 <__libc_init_array+0x5c>
   102aa:	60e2                	ld	ra,24(sp)
   102ac:	6442                	ld	s0,16(sp)
   102ae:	64a2                	ld	s1,8(sp)
   102b0:	6902                	ld	s2,0(sp)
   102b2:	6105                	addi	sp,sp,32
   102b4:	8082                	ret
   102b6:	609c                	ld	a5,0(s1)
   102b8:	0905                	addi	s2,s2,1
   102ba:	04a1                	addi	s1,s1,8
   102bc:	9782                	jalr	a5
   102be:	b7d9                	j	10284 <__libc_init_array+0x20>
   102c0:	609c                	ld	a5,0(s1)
   102c2:	0905                	addi	s2,s2,1
   102c4:	04a1                	addi	s1,s1,8
   102c6:	9782                	jalr	a5
   102c8:	bff9                	j	102a6 <__libc_init_array+0x42>
	...

00000000000102cc <memset>:
   102cc:	483d                	li	a6,15
   102ce:	872a                	mv	a4,a0
   102d0:	02c87163          	bleu	a2,a6,102f2 <memset+0x26>
   102d4:	00f77793          	andi	a5,a4,15
   102d8:	e3c1                	bnez	a5,10358 <memset+0x8c>
   102da:	e1bd                	bnez	a1,10340 <memset+0x74>
   102dc:	ff067693          	andi	a3,a2,-16
   102e0:	8a3d                	andi	a2,a2,15
   102e2:	96ba                	add	a3,a3,a4
   102e4:	e30c                	sd	a1,0(a4)
   102e6:	e70c                	sd	a1,8(a4)
   102e8:	0741                	addi	a4,a4,16
   102ea:	fed76de3          	bltu	a4,a3,102e4 <memset+0x18>
   102ee:	e211                	bnez	a2,102f2 <memset+0x26>
   102f0:	8082                	ret
   102f2:	40c806b3          	sub	a3,a6,a2
   102f6:	068a                	slli	a3,a3,0x2
   102f8:	00000297          	auipc	t0,0x0
   102fc:	9696                	add	a3,a3,t0
   102fe:	00a68067          	jr	10(a3)
   10302:	00b70723          	sb	a1,14(a4)
   10306:	00b706a3          	sb	a1,13(a4)
   1030a:	00b70623          	sb	a1,12(a4)
   1030e:	00b705a3          	sb	a1,11(a4)
   10312:	00b70523          	sb	a1,10(a4)
   10316:	00b704a3          	sb	a1,9(a4)
   1031a:	00b70423          	sb	a1,8(a4)
   1031e:	00b703a3          	sb	a1,7(a4)
   10322:	00b70323          	sb	a1,6(a4)
   10326:	00b702a3          	sb	a1,5(a4)
   1032a:	00b70223          	sb	a1,4(a4)
   1032e:	00b701a3          	sb	a1,3(a4)
   10332:	00b70123          	sb	a1,2(a4)
   10336:	00b700a3          	sb	a1,1(a4)
   1033a:	00b70023          	sb	a1,0(a4)
   1033e:	8082                	ret
   10340:	0ff5f593          	andi	a1,a1,255
   10344:	00859693          	slli	a3,a1,0x8
   10348:	8dd5                	or	a1,a1,a3
   1034a:	01059693          	slli	a3,a1,0x10
   1034e:	8dd5                	or	a1,a1,a3
   10350:	02059693          	slli	a3,a1,0x20
   10354:	8dd5                	or	a1,a1,a3
   10356:	b759                	j	102dc <memset+0x10>
   10358:	00279693          	slli	a3,a5,0x2
   1035c:	00000297          	auipc	t0,0x0
   10360:	9696                	add	a3,a3,t0
   10362:	8286                	mv	t0,ra
   10364:	fa2680e7          	jalr	-94(a3)
   10368:	8096                	mv	ra,t0
   1036a:	17c1                	addi	a5,a5,-16
   1036c:	8f1d                	sub	a4,a4,a5
   1036e:	963e                	add	a2,a2,a5
   10370:	f8c871e3          	bleu	a2,a6,102f2 <memset+0x26>
   10374:	b79d                	j	102da <memset+0xe>

0000000000010376 <__register_exitproc>:
   10376:	8181b703          	ld	a4,-2024(gp) # 11770 <_global_impure_ptr>
   1037a:	832a                	mv	t1,a0
   1037c:	1f873783          	ld	a5,504(a4)
   10380:	e789                	bnez	a5,1038a <__register_exitproc+0x14>
   10382:	20070793          	addi	a5,a4,512
   10386:	1ef73c23          	sd	a5,504(a4)
   1038a:	4798                	lw	a4,8(a5)
   1038c:	487d                	li	a6,31
   1038e:	557d                	li	a0,-1
   10390:	04e84463          	blt	a6,a4,103d8 <__register_exitproc+0x62>
   10394:	02030a63          	beqz	t1,103c8 <__register_exitproc+0x52>
   10398:	00371813          	slli	a6,a4,0x3
   1039c:	983e                	add	a6,a6,a5
   1039e:	10c83823          	sd	a2,272(a6)
   103a2:	3107a883          	lw	a7,784(a5)
   103a6:	4605                	li	a2,1
   103a8:	00e6163b          	sllw	a2,a2,a4
   103ac:	00c8e8b3          	or	a7,a7,a2
   103b0:	3117a823          	sw	a7,784(a5)
   103b4:	20d83823          	sd	a3,528(a6)
   103b8:	4689                	li	a3,2
   103ba:	00d31763          	bne	t1,a3,103c8 <__register_exitproc+0x52>
   103be:	3147a683          	lw	a3,788(a5)
   103c2:	8e55                	or	a2,a2,a3
   103c4:	30c7aa23          	sw	a2,788(a5)
   103c8:	0017069b          	addiw	a3,a4,1
   103cc:	0709                	addi	a4,a4,2
   103ce:	070e                	slli	a4,a4,0x3
   103d0:	c794                	sw	a3,8(a5)
   103d2:	97ba                	add	a5,a5,a4
   103d4:	e38c                	sd	a1,0(a5)
   103d6:	4501                	li	a0,0
   103d8:	8082                	ret
	...

00000000000103dc <__call_exitprocs>:
   103dc:	715d                	addi	sp,sp,-80
   103de:	f44e                	sd	s3,40(sp)
   103e0:	8181b983          	ld	s3,-2024(gp) # 11770 <_global_impure_ptr>
   103e4:	f052                	sd	s4,32(sp)
   103e6:	ec56                	sd	s5,24(sp)
   103e8:	e85a                	sd	s6,16(sp)
   103ea:	e486                	sd	ra,72(sp)
   103ec:	e0a2                	sd	s0,64(sp)
   103ee:	fc26                	sd	s1,56(sp)
   103f0:	f84a                	sd	s2,48(sp)
   103f2:	e45e                	sd	s7,8(sp)
   103f4:	8aaa                	mv	s5,a0
   103f6:	8a2e                	mv	s4,a1
   103f8:	4b05                	li	s6,1
   103fa:	1f89b403          	ld	s0,504(s3)
   103fe:	c801                	beqz	s0,1040e <__call_exitprocs+0x32>
   10400:	4404                	lw	s1,8(s0)
   10402:	34fd                	addiw	s1,s1,-1
   10404:	00349913          	slli	s2,s1,0x3
   10408:	9922                	add	s2,s2,s0
   1040a:	0004dd63          	bgez	s1,10424 <__call_exitprocs+0x48>
   1040e:	60a6                	ld	ra,72(sp)
   10410:	6406                	ld	s0,64(sp)
   10412:	74e2                	ld	s1,56(sp)
   10414:	7942                	ld	s2,48(sp)
   10416:	79a2                	ld	s3,40(sp)
   10418:	7a02                	ld	s4,32(sp)
   1041a:	6ae2                	ld	s5,24(sp)
   1041c:	6b42                	ld	s6,16(sp)
   1041e:	6ba2                	ld	s7,8(sp)
   10420:	6161                	addi	sp,sp,80
   10422:	8082                	ret
   10424:	000a0963          	beqz	s4,10436 <__call_exitprocs+0x5a>
   10428:	21093783          	ld	a5,528(s2)
   1042c:	01478563          	beq	a5,s4,10436 <__call_exitprocs+0x5a>
   10430:	34fd                	addiw	s1,s1,-1
   10432:	1961                	addi	s2,s2,-8
   10434:	bfd9                	j	1040a <__call_exitprocs+0x2e>
   10436:	441c                	lw	a5,8(s0)
   10438:	01093683          	ld	a3,16(s2)
   1043c:	37fd                	addiw	a5,a5,-1
   1043e:	02979663          	bne	a5,s1,1046a <__call_exitprocs+0x8e>
   10442:	c404                	sw	s1,8(s0)
   10444:	d6f5                	beqz	a3,10430 <__call_exitprocs+0x54>
   10446:	31042703          	lw	a4,784(s0)
   1044a:	009b163b          	sllw	a2,s6,s1
   1044e:	00842b83          	lw	s7,8(s0)
   10452:	8f71                	and	a4,a4,a2
   10454:	2701                	sext.w	a4,a4
   10456:	ef09                	bnez	a4,10470 <__call_exitprocs+0x94>
   10458:	9682                	jalr	a3
   1045a:	4418                	lw	a4,8(s0)
   1045c:	1f89b783          	ld	a5,504(s3)
   10460:	f9771de3          	bne	a4,s7,103fa <__call_exitprocs+0x1e>
   10464:	fcf406e3          	beq	s0,a5,10430 <__call_exitprocs+0x54>
   10468:	bf49                	j	103fa <__call_exitprocs+0x1e>
   1046a:	00093823          	sd	zero,16(s2)
   1046e:	bfd9                	j	10444 <__call_exitprocs+0x68>
   10470:	31442783          	lw	a5,788(s0)
   10474:	11093583          	ld	a1,272(s2)
   10478:	8ff1                	and	a5,a5,a2
   1047a:	2781                	sext.w	a5,a5
   1047c:	e781                	bnez	a5,10484 <__call_exitprocs+0xa8>
   1047e:	8556                	mv	a0,s5
   10480:	9682                	jalr	a3
   10482:	bfe1                	j	1045a <__call_exitprocs+0x7e>
   10484:	852e                	mv	a0,a1
   10486:	9682                	jalr	a3
   10488:	bfc9                	j	1045a <__call_exitprocs+0x7e>
	...

000000000001048c <conv_stat>:
   1048c:	619c                	ld	a5,0(a1)
   1048e:	00f51023          	sh	a5,0(a0)
   10492:	659c                	ld	a5,8(a1)
   10494:	00f51123          	sh	a5,2(a0)
   10498:	499c                	lw	a5,16(a1)
   1049a:	c15c                	sw	a5,4(a0)
   1049c:	49dc                	lw	a5,20(a1)
   1049e:	00f51423          	sh	a5,8(a0)
   104a2:	4d9c                	lw	a5,24(a1)
   104a4:	00f51523          	sh	a5,10(a0)
   104a8:	4ddc                	lw	a5,28(a1)
   104aa:	00f51623          	sh	a5,12(a0)
   104ae:	719c                	ld	a5,32(a1)
   104b0:	00f51723          	sh	a5,14(a0)
   104b4:	799c                	ld	a5,48(a1)
   104b6:	e91c                	sd	a5,16(a0)
   104b8:	61bc                	ld	a5,64(a1)
   104ba:	e93c                	sd	a5,80(a0)
   104bc:	5d9c                	lw	a5,56(a1)
   104be:	e53c                	sd	a5,72(a0)
   104c0:	65bc                	ld	a5,72(a1)
   104c2:	ed1c                	sd	a5,24(a0)
   104c4:	6dbc                	ld	a5,88(a1)
   104c6:	f51c                	sd	a5,40(a0)
   104c8:	75bc                	ld	a5,104(a1)
   104ca:	fd1c                	sd	a5,56(a0)
   104cc:	8082                	ret

00000000000104ce <__syscall_error>:
   104ce:	1141                	addi	sp,sp,-16
   104d0:	e022                	sd	s0,0(sp)
   104d2:	e406                	sd	ra,8(sp)
   104d4:	842a                	mv	s0,a0
   104d6:	00000097          	auipc	ra,0x0
   104da:	3ba080e7          	jalr	954(ra) # 10890 <__errno>
   104de:	408007bb          	negw	a5,s0
   104e2:	60a2                	ld	ra,8(sp)
   104e4:	6402                	ld	s0,0(sp)
   104e6:	c11c                	sw	a5,0(a0)
   104e8:	557d                	li	a0,-1
   104ea:	0141                	addi	sp,sp,16
   104ec:	8082                	ret

00000000000104ee <__internal_syscall>:
   104ee:	88aa                	mv	a7,a0
   104f0:	852e                	mv	a0,a1
   104f2:	85b2                	mv	a1,a2
   104f4:	8636                	mv	a2,a3
   104f6:	86ba                	mv	a3,a4
   104f8:	00000073          	ecall
   104fc:	00055663          	bgez	a0,10508 <__internal_syscall+0x1a>
   10500:	00000317          	auipc	t1,0x0
   10504:	fce30067          	jr	-50(t1) # 104ce <__syscall_error>
   10508:	8082                	ret

000000000001050a <open>:
   1050a:	1141                	addi	sp,sp,-16
   1050c:	86b2                	mv	a3,a2
   1050e:	4701                	li	a4,0
   10510:	862e                	mv	a2,a1
   10512:	85aa                	mv	a1,a0
   10514:	40000513          	li	a0,1024
   10518:	e406                	sd	ra,8(sp)
   1051a:	00000097          	auipc	ra,0x0
   1051e:	fd4080e7          	jalr	-44(ra) # 104ee <__internal_syscall>
   10522:	60a2                	ld	ra,8(sp)
   10524:	2501                	sext.w	a0,a0
   10526:	0141                	addi	sp,sp,16
   10528:	8082                	ret

000000000001052a <openat>:
   1052a:	1141                	addi	sp,sp,-16
   1052c:	8736                	mv	a4,a3
   1052e:	86b2                	mv	a3,a2
   10530:	862e                	mv	a2,a1
   10532:	85aa                	mv	a1,a0
   10534:	03800513          	li	a0,56
   10538:	e406                	sd	ra,8(sp)
   1053a:	fb5ff0ef          	jal	ra,104ee <__internal_syscall>
   1053e:	60a2                	ld	ra,8(sp)
   10540:	2501                	sext.w	a0,a0
   10542:	0141                	addi	sp,sp,16
   10544:	8082                	ret

0000000000010546 <lseek>:
   10546:	86b2                	mv	a3,a2
   10548:	4701                	li	a4,0
   1054a:	862e                	mv	a2,a1
   1054c:	85aa                	mv	a1,a0
   1054e:	03e00513          	li	a0,62
   10552:	00000317          	auipc	t1,0x0
   10556:	f9c30067          	jr	-100(t1) # 104ee <__internal_syscall>

000000000001055a <read>:
   1055a:	86b2                	mv	a3,a2
   1055c:	4701                	li	a4,0
   1055e:	862e                	mv	a2,a1
   10560:	85aa                	mv	a1,a0
   10562:	03f00513          	li	a0,63
   10566:	f89ff06f          	j	104ee <__internal_syscall>

000000000001056a <write>:
   1056a:	86b2                	mv	a3,a2
   1056c:	4701                	li	a4,0
   1056e:	862e                	mv	a2,a1
   10570:	85aa                	mv	a1,a0
   10572:	04000513          	li	a0,64
   10576:	00000317          	auipc	t1,0x0
   1057a:	f7830067          	jr	-136(t1) # 104ee <__internal_syscall>

000000000001057e <fstat>:
   1057e:	7135                	addi	sp,sp,-160
   10580:	e526                	sd	s1,136(sp)
   10582:	860a                	mv	a2,sp
   10584:	84ae                	mv	s1,a1
   10586:	4701                	li	a4,0
   10588:	85aa                	mv	a1,a0
   1058a:	4681                	li	a3,0
   1058c:	05000513          	li	a0,80
   10590:	ed06                	sd	ra,152(sp)
   10592:	e922                	sd	s0,144(sp)
   10594:	f5bff0ef          	jal	ra,104ee <__internal_syscall>
   10598:	842a                	mv	s0,a0
   1059a:	858a                	mv	a1,sp
   1059c:	8526                	mv	a0,s1
   1059e:	eefff0ef          	jal	ra,1048c <conv_stat>
   105a2:	0004051b          	sext.w	a0,s0
   105a6:	60ea                	ld	ra,152(sp)
   105a8:	644a                	ld	s0,144(sp)
   105aa:	64aa                	ld	s1,136(sp)
   105ac:	610d                	addi	sp,sp,160
   105ae:	8082                	ret

00000000000105b0 <stat>:
   105b0:	7135                	addi	sp,sp,-160
   105b2:	e526                	sd	s1,136(sp)
   105b4:	860a                	mv	a2,sp
   105b6:	84ae                	mv	s1,a1
   105b8:	4701                	li	a4,0
   105ba:	85aa                	mv	a1,a0
   105bc:	4681                	li	a3,0
   105be:	40e00513          	li	a0,1038
   105c2:	ed06                	sd	ra,152(sp)
   105c4:	e922                	sd	s0,144(sp)
   105c6:	00000097          	auipc	ra,0x0
   105ca:	f28080e7          	jalr	-216(ra) # 104ee <__internal_syscall>
   105ce:	842a                	mv	s0,a0
   105d0:	858a                	mv	a1,sp
   105d2:	8526                	mv	a0,s1
   105d4:	00000097          	auipc	ra,0x0
   105d8:	eb8080e7          	jalr	-328(ra) # 1048c <conv_stat>
   105dc:	0004051b          	sext.w	a0,s0
   105e0:	60ea                	ld	ra,152(sp)
   105e2:	644a                	ld	s0,144(sp)
   105e4:	64aa                	ld	s1,136(sp)
   105e6:	610d                	addi	sp,sp,160
   105e8:	8082                	ret

00000000000105ea <lstat>:
   105ea:	7135                	addi	sp,sp,-160
   105ec:	e526                	sd	s1,136(sp)
   105ee:	860a                	mv	a2,sp
   105f0:	84ae                	mv	s1,a1
   105f2:	4701                	li	a4,0
   105f4:	85aa                	mv	a1,a0
   105f6:	4681                	li	a3,0
   105f8:	40f00513          	li	a0,1039
   105fc:	ed06                	sd	ra,152(sp)
   105fe:	e922                	sd	s0,144(sp)
   10600:	eefff0ef          	jal	ra,104ee <__internal_syscall>
   10604:	842a                	mv	s0,a0
   10606:	858a                	mv	a1,sp
   10608:	8526                	mv	a0,s1
   1060a:	e83ff0ef          	jal	ra,1048c <conv_stat>
   1060e:	0004051b          	sext.w	a0,s0
   10612:	60ea                	ld	ra,152(sp)
   10614:	644a                	ld	s0,144(sp)
   10616:	64aa                	ld	s1,136(sp)
   10618:	610d                	addi	sp,sp,160
   1061a:	8082                	ret

000000000001061c <fstatat>:
   1061c:	7135                	addi	sp,sp,-160
   1061e:	e526                	sd	s1,136(sp)
   10620:	8736                	mv	a4,a3
   10622:	84b2                	mv	s1,a2
   10624:	868a                	mv	a3,sp
   10626:	862e                	mv	a2,a1
   10628:	85aa                	mv	a1,a0
   1062a:	04f00513          	li	a0,79
   1062e:	ed06                	sd	ra,152(sp)
   10630:	e922                	sd	s0,144(sp)
   10632:	00000097          	auipc	ra,0x0
   10636:	ebc080e7          	jalr	-324(ra) # 104ee <__internal_syscall>
   1063a:	842a                	mv	s0,a0
   1063c:	858a                	mv	a1,sp
   1063e:	8526                	mv	a0,s1
   10640:	00000097          	auipc	ra,0x0
   10644:	e4c080e7          	jalr	-436(ra) # 1048c <conv_stat>
   10648:	0004051b          	sext.w	a0,s0
   1064c:	60ea                	ld	ra,152(sp)
   1064e:	644a                	ld	s0,144(sp)
   10650:	64aa                	ld	s1,136(sp)
   10652:	610d                	addi	sp,sp,160
   10654:	8082                	ret

0000000000010656 <access>:
   10656:	1141                	addi	sp,sp,-16
   10658:	862e                	mv	a2,a1
   1065a:	4701                	li	a4,0
   1065c:	85aa                	mv	a1,a0
   1065e:	4681                	li	a3,0
   10660:	40900513          	li	a0,1033
   10664:	e406                	sd	ra,8(sp)
   10666:	e89ff0ef          	jal	ra,104ee <__internal_syscall>
   1066a:	60a2                	ld	ra,8(sp)
   1066c:	2501                	sext.w	a0,a0
   1066e:	0141                	addi	sp,sp,16
   10670:	8082                	ret

0000000000010672 <faccessat>:
   10672:	1141                	addi	sp,sp,-16
   10674:	8736                	mv	a4,a3
   10676:	86b2                	mv	a3,a2
   10678:	862e                	mv	a2,a1
   1067a:	85aa                	mv	a1,a0
   1067c:	03000513          	li	a0,48
   10680:	e406                	sd	ra,8(sp)
   10682:	00000097          	auipc	ra,0x0
   10686:	e6c080e7          	jalr	-404(ra) # 104ee <__internal_syscall>
   1068a:	60a2                	ld	ra,8(sp)
   1068c:	2501                	sext.w	a0,a0
   1068e:	0141                	addi	sp,sp,16
   10690:	8082                	ret

0000000000010692 <close>:
   10692:	1141                	addi	sp,sp,-16
   10694:	85aa                	mv	a1,a0
   10696:	4701                	li	a4,0
   10698:	4681                	li	a3,0
   1069a:	4601                	li	a2,0
   1069c:	03900513          	li	a0,57
   106a0:	e406                	sd	ra,8(sp)
   106a2:	e4dff0ef          	jal	ra,104ee <__internal_syscall>
   106a6:	60a2                	ld	ra,8(sp)
   106a8:	2501                	sext.w	a0,a0
   106aa:	0141                	addi	sp,sp,16
   106ac:	8082                	ret

00000000000106ae <link>:
   106ae:	1141                	addi	sp,sp,-16
   106b0:	862e                	mv	a2,a1
   106b2:	4701                	li	a4,0
   106b4:	85aa                	mv	a1,a0
   106b6:	4681                	li	a3,0
   106b8:	40100513          	li	a0,1025
   106bc:	e406                	sd	ra,8(sp)
   106be:	00000097          	auipc	ra,0x0
   106c2:	e30080e7          	jalr	-464(ra) # 104ee <__internal_syscall>
   106c6:	60a2                	ld	ra,8(sp)
   106c8:	2501                	sext.w	a0,a0
   106ca:	0141                	addi	sp,sp,16
   106cc:	8082                	ret

00000000000106ce <unlink>:
   106ce:	1141                	addi	sp,sp,-16
   106d0:	85aa                	mv	a1,a0
   106d2:	4701                	li	a4,0
   106d4:	4681                	li	a3,0
   106d6:	4601                	li	a2,0
   106d8:	40200513          	li	a0,1026
   106dc:	e406                	sd	ra,8(sp)
   106de:	e11ff0ef          	jal	ra,104ee <__internal_syscall>
   106e2:	60a2                	ld	ra,8(sp)
   106e4:	2501                	sext.w	a0,a0
   106e6:	0141                	addi	sp,sp,16
   106e8:	8082                	ret

00000000000106ea <execve>:
   106ea:	1141                	addi	sp,sp,-16
   106ec:	e406                	sd	ra,8(sp)
   106ee:	00000097          	auipc	ra,0x0
   106f2:	1a2080e7          	jalr	418(ra) # 10890 <__errno>
   106f6:	60a2                	ld	ra,8(sp)
   106f8:	47b1                	li	a5,12
   106fa:	c11c                	sw	a5,0(a0)
   106fc:	557d                	li	a0,-1
   106fe:	0141                	addi	sp,sp,16
   10700:	8082                	ret

0000000000010702 <fork>:
   10702:	1141                	addi	sp,sp,-16
   10704:	e406                	sd	ra,8(sp)
   10706:	18a000ef          	jal	ra,10890 <__errno>
   1070a:	60a2                	ld	ra,8(sp)
   1070c:	47ad                	li	a5,11
   1070e:	c11c                	sw	a5,0(a0)
   10710:	557d                	li	a0,-1
   10712:	0141                	addi	sp,sp,16
   10714:	8082                	ret

0000000000010716 <getpid>:
   10716:	4505                	li	a0,1
   10718:	8082                	ret

000000000001071a <kill>:
   1071a:	1141                	addi	sp,sp,-16
   1071c:	e406                	sd	ra,8(sp)
   1071e:	172000ef          	jal	ra,10890 <__errno>
   10722:	60a2                	ld	ra,8(sp)
   10724:	47d9                	li	a5,22
   10726:	c11c                	sw	a5,0(a0)
   10728:	557d                	li	a0,-1
   1072a:	0141                	addi	sp,sp,16
   1072c:	8082                	ret

000000000001072e <wait>:
   1072e:	1141                	addi	sp,sp,-16
   10730:	e406                	sd	ra,8(sp)
   10732:	00000097          	auipc	ra,0x0
   10736:	15e080e7          	jalr	350(ra) # 10890 <__errno>
   1073a:	60a2                	ld	ra,8(sp)
   1073c:	47a9                	li	a5,10
   1073e:	c11c                	sw	a5,0(a0)
   10740:	557d                	li	a0,-1
   10742:	0141                	addi	sp,sp,16
   10744:	8082                	ret

0000000000010746 <isatty>:
   10746:	7119                	addi	sp,sp,-128
   10748:	002c                	addi	a1,sp,8
   1074a:	fc86                	sd	ra,120(sp)
   1074c:	e33ff0ef          	jal	ra,1057e <fstat>
   10750:	57fd                	li	a5,-1
   10752:	00f50663          	beq	a0,a5,1075e <isatty+0x18>
   10756:	4532                	lw	a0,12(sp)
   10758:	40d5551b          	sraiw	a0,a0,0xd
   1075c:	8905                	andi	a0,a0,1
   1075e:	70e6                	ld	ra,120(sp)
   10760:	6109                	addi	sp,sp,128
   10762:	8082                	ret

0000000000010764 <gettimeofday>:
   10764:	1141                	addi	sp,sp,-16
   10766:	85aa                	mv	a1,a0
   10768:	4701                	li	a4,0
   1076a:	4681                	li	a3,0
   1076c:	4601                	li	a2,0
   1076e:	0a900513          	li	a0,169
   10772:	e406                	sd	ra,8(sp)
   10774:	00000097          	auipc	ra,0x0
   10778:	d7a080e7          	jalr	-646(ra) # 104ee <__internal_syscall>
   1077c:	60a2                	ld	ra,8(sp)
   1077e:	2501                	sext.w	a0,a0
   10780:	0141                	addi	sp,sp,16
   10782:	8082                	ret

0000000000010784 <times>:
   10784:	7179                	addi	sp,sp,-48
   10786:	f022                	sd	s0,32(sp)
   10788:	842a                	mv	s0,a0
   1078a:	8701b783          	ld	a5,-1936(gp) # 117c8 <t0.2574>
   1078e:	ec26                	sd	s1,24(sp)
   10790:	f406                	sd	ra,40(sp)
   10792:	87018493          	addi	s1,gp,-1936 # 117c8 <t0.2574>
   10796:	eb81                	bnez	a5,107a6 <times+0x22>
   10798:	4581                	li	a1,0
   1079a:	87018513          	addi	a0,gp,-1936 # 117c8 <t0.2574>
   1079e:	00000097          	auipc	ra,0x0
   107a2:	fc6080e7          	jalr	-58(ra) # 10764 <gettimeofday>
   107a6:	850a                	mv	a0,sp
   107a8:	4581                	li	a1,0
   107aa:	00000097          	auipc	ra,0x0
   107ae:	fba080e7          	jalr	-70(ra) # 10764 <gettimeofday>
   107b2:	6098                	ld	a4,0(s1)
   107b4:	6782                	ld	a5,0(sp)
   107b6:	6494                	ld	a3,8(s1)
   107b8:	00043823          	sd	zero,16(s0)
   107bc:	8f99                	sub	a5,a5,a4
   107be:	000f4737          	lui	a4,0xf4
   107c2:	24070713          	addi	a4,a4,576 # f4240 <__global_pointer$+0xe22e8>
   107c6:	02e787b3          	mul	a5,a5,a4
   107ca:	6722                	ld	a4,8(sp)
   107cc:	00043c23          	sd	zero,24(s0)
   107d0:	00043423          	sd	zero,8(s0)
   107d4:	8f15                	sub	a4,a4,a3
   107d6:	70a2                	ld	ra,40(sp)
   107d8:	64e2                	ld	s1,24(sp)
   107da:	557d                	li	a0,-1
   107dc:	97ba                	add	a5,a5,a4
   107de:	e01c                	sd	a5,0(s0)
   107e0:	7402                	ld	s0,32(sp)
   107e2:	6145                	addi	sp,sp,48
   107e4:	8082                	ret

00000000000107e6 <ftime>:
   107e6:	00051423          	sh	zero,8(a0)
   107ea:	00053023          	sd	zero,0(a0)
   107ee:	4501                	li	a0,0
   107f0:	8082                	ret

00000000000107f2 <utime>:
   107f2:	557d                	li	a0,-1
   107f4:	8082                	ret

00000000000107f6 <chown>:
   107f6:	557d                	li	a0,-1
   107f8:	8082                	ret

00000000000107fa <chmod>:
   107fa:	557d                	li	a0,-1
   107fc:	8082                	ret

00000000000107fe <chdir>:
   107fe:	557d                	li	a0,-1
   10800:	8082                	ret

0000000000010802 <getcwd>:
   10802:	4501                	li	a0,0
   10804:	8082                	ret

0000000000010806 <sysconf>:
   10806:	4789                	li	a5,2
   10808:	00f50463          	beq	a0,a5,10810 <sysconf+0xa>
   1080c:	557d                	li	a0,-1
   1080e:	8082                	ret
   10810:	000f4537          	lui	a0,0xf4
   10814:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22e8>
   10818:	8082                	ret

000000000001081a <sbrk>:
   1081a:	1101                	addi	sp,sp,-32
   1081c:	e822                	sd	s0,16(sp)
   1081e:	8301b783          	ld	a5,-2000(gp) # 11788 <heap_end.2611>
   10822:	e426                	sd	s1,8(sp)
   10824:	ec06                	sd	ra,24(sp)
   10826:	84aa                	mv	s1,a0
   10828:	e785                	bnez	a5,10850 <sbrk+0x36>
   1082a:	4701                	li	a4,0
   1082c:	4681                	li	a3,0
   1082e:	4601                	li	a2,0
   10830:	4581                	li	a1,0
   10832:	0d600513          	li	a0,214
   10836:	cb9ff0ef          	jal	ra,104ee <__internal_syscall>
   1083a:	57fd                	li	a5,-1
   1083c:	00f51863          	bne	a0,a5,1084c <sbrk+0x32>
   10840:	557d                	li	a0,-1
   10842:	60e2                	ld	ra,24(sp)
   10844:	6442                	ld	s0,16(sp)
   10846:	64a2                	ld	s1,8(sp)
   10848:	6105                	addi	sp,sp,32
   1084a:	8082                	ret
   1084c:	82a1b823          	sd	a0,-2000(gp) # 11788 <heap_end.2611>
   10850:	8301b583          	ld	a1,-2000(gp) # 11788 <heap_end.2611>
   10854:	4701                	li	a4,0
   10856:	4681                	li	a3,0
   10858:	95a6                	add	a1,a1,s1
   1085a:	4601                	li	a2,0
   1085c:	0d600513          	li	a0,214
   10860:	c8fff0ef          	jal	ra,104ee <__internal_syscall>
   10864:	8301b783          	ld	a5,-2000(gp) # 11788 <heap_end.2611>
   10868:	94be                	add	s1,s1,a5
   1086a:	fc951be3          	bne	a0,s1,10840 <sbrk+0x26>
   1086e:	82a1b823          	sd	a0,-2000(gp) # 11788 <heap_end.2611>
   10872:	853e                	mv	a0,a5
   10874:	b7f9                	j	10842 <sbrk+0x28>

0000000000010876 <_exit>:
   10876:	1141                	addi	sp,sp,-16
   10878:	85aa                	mv	a1,a0
   1087a:	4701                	li	a4,0
   1087c:	4681                	li	a3,0
   1087e:	4601                	li	a2,0
   10880:	05d00513          	li	a0,93
   10884:	e406                	sd	ra,8(sp)
   10886:	00000097          	auipc	ra,0x0
   1088a:	c68080e7          	jalr	-920(ra) # 104ee <__internal_syscall>
   1088e:	a001                	j	1088e <_exit+0x18>

0000000000010890 <__errno>:
   10890:	8201b503          	ld	a0,-2016(gp) # 11778 <_impure_ptr>
   10894:	8082                	ret
	...

Disassembly of section .eh_frame:

0000000000010898 <__EH_FRAME_BEGIN__>:
   10898:	0000                	unimp
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
   11760:	0002                	0x2
   11762:	0000                	unimp
   11764:	0000                	unimp
	...

0000000000011768 <b>:
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

0000000000011780 <c>:
	...

0000000000011788 <heap_end.2611>:
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
