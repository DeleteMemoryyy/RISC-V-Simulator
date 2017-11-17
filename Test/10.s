
Test/10:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ea818193          	addi	gp,gp,-344 # 11f58 <__global_pointer$>
   100b8:	82818513          	addi	a0,gp,-2008 # 11780 <_edata>
   100bc:	87818613          	addi	a2,gp,-1928 # 117d0 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	250000ef          	jal	ra,10314 <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	19650513          	addi	a0,a0,406 # 1025e <__libc_fini_array>
   100d0:	00000097          	auipc	ra,0x0
   100d4:	15c080e7          	jalr	348(ra) # 1022c <atexit>
   100d8:	00000097          	auipc	ra,0x0
   100dc:	1d4080e7          	jalr	468(ra) # 102ac <__libc_init_array>
   100e0:	4502                	lw	a0,0(sp)
   100e2:	002c                	addi	a1,sp,8
   100e4:	4601                	li	a2,0
   100e6:	00000097          	auipc	ra,0x0
   100ea:	0c6080e7          	jalr	198(ra) # 101ac <main>
   100ee:	00000317          	auipc	t1,0x0
   100f2:	14c30067          	jr	332(t1) # 1023a <exit>

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
   10148:	8301c703          	lbu	a4,-2000(gp) # 11788 <completed.5184>
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
   10166:	8e050513          	addi	a0,a0,-1824 # 108e0 <__EH_FRAME_BEGIN__>
   1016a:	ffff0097          	auipc	ra,0xffff0
   1016e:	e96080e7          	jalr	-362(ra) # 0 <_start-0x100b0>
   10172:	4785                	li	a5,1
   10174:	82f18823          	sb	a5,-2000(gp) # 11788 <completed.5184>
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
   10190:	83818593          	addi	a1,gp,-1992 # 11790 <object.5189>
   10194:	8e050513          	addi	a0,a0,-1824 # 108e0 <__EH_FRAME_BEGIN__>
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
   101b8:	80c1a703          	lw	a4,-2036(gp) # 11764 <b>
   101bc:	8101a783          	lw	a5,-2032(gp) # 11768 <c>
   101c0:	00f707bb          	addw	a5,a4,a5
   101c4:	0007871b          	sext.w	a4,a5
   101c8:	000117b7          	lui	a5,0x11
   101cc:	76e7a023          	sw	a4,1888(a5) # 11760 <a>
   101d0:	000117b7          	lui	a5,0x11
   101d4:	7607a703          	lw	a4,1888(a5) # 11760 <a>
   101d8:	8101a783          	lw	a5,-2032(gp) # 11768 <c>
   101dc:	02f707bb          	mulw	a5,a4,a5
   101e0:	0007871b          	sext.w	a4,a5
   101e4:	80e1a623          	sw	a4,-2036(gp) # 11764 <b>
   101e8:	80c1a703          	lw	a4,-2036(gp) # 11764 <b>
   101ec:	8101a783          	lw	a5,-2032(gp) # 11768 <c>
   101f0:	40f707bb          	subw	a5,a4,a5
   101f4:	0007871b          	sext.w	a4,a5
   101f8:	80e1a823          	sw	a4,-2032(gp) # 11768 <c>
   101fc:	80c1a703          	lw	a4,-2036(gp) # 11764 <b>
   10200:	8101a783          	lw	a5,-2032(gp) # 11768 <c>
   10204:	02f747bb          	divw	a5,a4,a5
   10208:	0007871b          	sext.w	a4,a5
   1020c:	000117b7          	lui	a5,0x11
   10210:	76e7a023          	sw	a4,1888(a5) # 11760 <a>
   10214:	00000793          	li	a5,0
   10218:	00078513          	mv	a0,a5
   1021c:	00813403          	ld	s0,8(sp)
   10220:	01010113          	addi	sp,sp,16
   10224:	00008067          	ret
   10228:	0000                	unimp
	...

000000000001022c <atexit>:
   1022c:	85aa                	mv	a1,a0
   1022e:	4681                	li	a3,0
   10230:	4601                	li	a2,0
   10232:	4501                	li	a0,0
   10234:	18a0006f          	j	103be <__register_exitproc>
	...

000000000001023a <exit>:
   1023a:	1141                	addi	sp,sp,-16
   1023c:	4581                	li	a1,0
   1023e:	e022                	sd	s0,0(sp)
   10240:	e406                	sd	ra,8(sp)
   10242:	842a                	mv	s0,a0
   10244:	1e0000ef          	jal	ra,10424 <__call_exitprocs>
   10248:	8181b503          	ld	a0,-2024(gp) # 11770 <_global_impure_ptr>
   1024c:	6d3c                	ld	a5,88(a0)
   1024e:	c391                	beqz	a5,10252 <exit+0x18>
   10250:	9782                	jalr	a5
   10252:	8522                	mv	a0,s0
   10254:	00000097          	auipc	ra,0x0
   10258:	66a080e7          	jalr	1642(ra) # 108be <_exit>
	...

000000000001025e <__libc_fini_array>:
   1025e:	7179                	addi	sp,sp,-48
   10260:	67c5                	lui	a5,0x11
   10262:	6745                	lui	a4,0x11
   10264:	f022                	sd	s0,32(sp)
   10266:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   1026a:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   1026e:	8c19                	sub	s0,s0,a4
   10270:	ec26                	sd	s1,24(sp)
   10272:	e84a                	sd	s2,16(sp)
   10274:	e44e                	sd	s3,8(sp)
   10276:	f406                	sd	ra,40(sp)
   10278:	840d                	srai	s0,s0,0x3
   1027a:	4481                	li	s1,0
   1027c:	01078913          	addi	s2,a5,16
   10280:	59e1                	li	s3,-8
   10282:	00941c63          	bne	s0,s1,1029a <__libc_fini_array+0x3c>
   10286:	7402                	ld	s0,32(sp)
   10288:	70a2                	ld	ra,40(sp)
   1028a:	64e2                	ld	s1,24(sp)
   1028c:	6942                	ld	s2,16(sp)
   1028e:	69a2                	ld	s3,8(sp)
   10290:	6145                	addi	sp,sp,48
   10292:	00000317          	auipc	t1,0x0
   10296:	e6430067          	jr	-412(t1) # 100f6 <_fini>
   1029a:	033487b3          	mul	a5,s1,s3
   1029e:	0485                	addi	s1,s1,1
   102a0:	97ca                	add	a5,a5,s2
   102a2:	ff87b783          	ld	a5,-8(a5)
   102a6:	9782                	jalr	a5
   102a8:	bfe9                	j	10282 <__libc_fini_array+0x24>
	...

00000000000102ac <__libc_init_array>:
   102ac:	1101                	addi	sp,sp,-32
   102ae:	e822                	sd	s0,16(sp)
   102b0:	e426                	sd	s1,8(sp)
   102b2:	6445                	lui	s0,0x11
   102b4:	64c5                	lui	s1,0x11
   102b6:	00048793          	mv	a5,s1
   102ba:	00040413          	mv	s0,s0
   102be:	8c1d                	sub	s0,s0,a5
   102c0:	e04a                	sd	s2,0(sp)
   102c2:	ec06                	sd	ra,24(sp)
   102c4:	840d                	srai	s0,s0,0x3
   102c6:	00048493          	mv	s1,s1
   102ca:	4901                	li	s2,0
   102cc:	02891963          	bne	s2,s0,102fe <__libc_init_array+0x52>
   102d0:	64c5                	lui	s1,0x11
   102d2:	00000097          	auipc	ra,0x0
   102d6:	e24080e7          	jalr	-476(ra) # 100f6 <_fini>
   102da:	6445                	lui	s0,0x11
   102dc:	00048793          	mv	a5,s1
   102e0:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   102e4:	8c1d                	sub	s0,s0,a5
   102e6:	840d                	srai	s0,s0,0x3
   102e8:	00048493          	mv	s1,s1
   102ec:	4901                	li	s2,0
   102ee:	00891d63          	bne	s2,s0,10308 <__libc_init_array+0x5c>
   102f2:	60e2                	ld	ra,24(sp)
   102f4:	6442                	ld	s0,16(sp)
   102f6:	64a2                	ld	s1,8(sp)
   102f8:	6902                	ld	s2,0(sp)
   102fa:	6105                	addi	sp,sp,32
   102fc:	8082                	ret
   102fe:	609c                	ld	a5,0(s1)
   10300:	0905                	addi	s2,s2,1
   10302:	04a1                	addi	s1,s1,8
   10304:	9782                	jalr	a5
   10306:	b7d9                	j	102cc <__libc_init_array+0x20>
   10308:	609c                	ld	a5,0(s1)
   1030a:	0905                	addi	s2,s2,1
   1030c:	04a1                	addi	s1,s1,8
   1030e:	9782                	jalr	a5
   10310:	bff9                	j	102ee <__libc_init_array+0x42>
	...

0000000000010314 <memset>:
   10314:	483d                	li	a6,15
   10316:	872a                	mv	a4,a0
   10318:	02c87163          	bleu	a2,a6,1033a <memset+0x26>
   1031c:	00f77793          	andi	a5,a4,15
   10320:	e3c1                	bnez	a5,103a0 <memset+0x8c>
   10322:	e1bd                	bnez	a1,10388 <memset+0x74>
   10324:	ff067693          	andi	a3,a2,-16
   10328:	8a3d                	andi	a2,a2,15
   1032a:	96ba                	add	a3,a3,a4
   1032c:	e30c                	sd	a1,0(a4)
   1032e:	e70c                	sd	a1,8(a4)
   10330:	0741                	addi	a4,a4,16
   10332:	fed76de3          	bltu	a4,a3,1032c <memset+0x18>
   10336:	e211                	bnez	a2,1033a <memset+0x26>
   10338:	8082                	ret
   1033a:	40c806b3          	sub	a3,a6,a2
   1033e:	068a                	slli	a3,a3,0x2
   10340:	00000297          	auipc	t0,0x0
   10344:	9696                	add	a3,a3,t0
   10346:	00a68067          	jr	10(a3)
   1034a:	00b70723          	sb	a1,14(a4)
   1034e:	00b706a3          	sb	a1,13(a4)
   10352:	00b70623          	sb	a1,12(a4)
   10356:	00b705a3          	sb	a1,11(a4)
   1035a:	00b70523          	sb	a1,10(a4)
   1035e:	00b704a3          	sb	a1,9(a4)
   10362:	00b70423          	sb	a1,8(a4)
   10366:	00b703a3          	sb	a1,7(a4)
   1036a:	00b70323          	sb	a1,6(a4)
   1036e:	00b702a3          	sb	a1,5(a4)
   10372:	00b70223          	sb	a1,4(a4)
   10376:	00b701a3          	sb	a1,3(a4)
   1037a:	00b70123          	sb	a1,2(a4)
   1037e:	00b700a3          	sb	a1,1(a4)
   10382:	00b70023          	sb	a1,0(a4)
   10386:	8082                	ret
   10388:	0ff5f593          	andi	a1,a1,255
   1038c:	00859693          	slli	a3,a1,0x8
   10390:	8dd5                	or	a1,a1,a3
   10392:	01059693          	slli	a3,a1,0x10
   10396:	8dd5                	or	a1,a1,a3
   10398:	02059693          	slli	a3,a1,0x20
   1039c:	8dd5                	or	a1,a1,a3
   1039e:	b759                	j	10324 <memset+0x10>
   103a0:	00279693          	slli	a3,a5,0x2
   103a4:	00000297          	auipc	t0,0x0
   103a8:	9696                	add	a3,a3,t0
   103aa:	8286                	mv	t0,ra
   103ac:	fa2680e7          	jalr	-94(a3)
   103b0:	8096                	mv	ra,t0
   103b2:	17c1                	addi	a5,a5,-16
   103b4:	8f1d                	sub	a4,a4,a5
   103b6:	963e                	add	a2,a2,a5
   103b8:	f8c871e3          	bleu	a2,a6,1033a <memset+0x26>
   103bc:	b79d                	j	10322 <memset+0xe>

00000000000103be <__register_exitproc>:
   103be:	8181b703          	ld	a4,-2024(gp) # 11770 <_global_impure_ptr>
   103c2:	832a                	mv	t1,a0
   103c4:	1f873783          	ld	a5,504(a4)
   103c8:	e789                	bnez	a5,103d2 <__register_exitproc+0x14>
   103ca:	20070793          	addi	a5,a4,512
   103ce:	1ef73c23          	sd	a5,504(a4)
   103d2:	4798                	lw	a4,8(a5)
   103d4:	487d                	li	a6,31
   103d6:	557d                	li	a0,-1
   103d8:	04e84463          	blt	a6,a4,10420 <__register_exitproc+0x62>
   103dc:	02030a63          	beqz	t1,10410 <__register_exitproc+0x52>
   103e0:	00371813          	slli	a6,a4,0x3
   103e4:	983e                	add	a6,a6,a5
   103e6:	10c83823          	sd	a2,272(a6)
   103ea:	3107a883          	lw	a7,784(a5)
   103ee:	4605                	li	a2,1
   103f0:	00e6163b          	sllw	a2,a2,a4
   103f4:	00c8e8b3          	or	a7,a7,a2
   103f8:	3117a823          	sw	a7,784(a5)
   103fc:	20d83823          	sd	a3,528(a6)
   10400:	4689                	li	a3,2
   10402:	00d31763          	bne	t1,a3,10410 <__register_exitproc+0x52>
   10406:	3147a683          	lw	a3,788(a5)
   1040a:	8e55                	or	a2,a2,a3
   1040c:	30c7aa23          	sw	a2,788(a5)
   10410:	0017069b          	addiw	a3,a4,1
   10414:	0709                	addi	a4,a4,2
   10416:	070e                	slli	a4,a4,0x3
   10418:	c794                	sw	a3,8(a5)
   1041a:	97ba                	add	a5,a5,a4
   1041c:	e38c                	sd	a1,0(a5)
   1041e:	4501                	li	a0,0
   10420:	8082                	ret
	...

0000000000010424 <__call_exitprocs>:
   10424:	715d                	addi	sp,sp,-80
   10426:	f44e                	sd	s3,40(sp)
   10428:	8181b983          	ld	s3,-2024(gp) # 11770 <_global_impure_ptr>
   1042c:	f052                	sd	s4,32(sp)
   1042e:	ec56                	sd	s5,24(sp)
   10430:	e85a                	sd	s6,16(sp)
   10432:	e486                	sd	ra,72(sp)
   10434:	e0a2                	sd	s0,64(sp)
   10436:	fc26                	sd	s1,56(sp)
   10438:	f84a                	sd	s2,48(sp)
   1043a:	e45e                	sd	s7,8(sp)
   1043c:	8aaa                	mv	s5,a0
   1043e:	8a2e                	mv	s4,a1
   10440:	4b05                	li	s6,1
   10442:	1f89b403          	ld	s0,504(s3)
   10446:	c801                	beqz	s0,10456 <__call_exitprocs+0x32>
   10448:	4404                	lw	s1,8(s0)
   1044a:	34fd                	addiw	s1,s1,-1
   1044c:	00349913          	slli	s2,s1,0x3
   10450:	9922                	add	s2,s2,s0
   10452:	0004dd63          	bgez	s1,1046c <__call_exitprocs+0x48>
   10456:	60a6                	ld	ra,72(sp)
   10458:	6406                	ld	s0,64(sp)
   1045a:	74e2                	ld	s1,56(sp)
   1045c:	7942                	ld	s2,48(sp)
   1045e:	79a2                	ld	s3,40(sp)
   10460:	7a02                	ld	s4,32(sp)
   10462:	6ae2                	ld	s5,24(sp)
   10464:	6b42                	ld	s6,16(sp)
   10466:	6ba2                	ld	s7,8(sp)
   10468:	6161                	addi	sp,sp,80
   1046a:	8082                	ret
   1046c:	000a0963          	beqz	s4,1047e <__call_exitprocs+0x5a>
   10470:	21093783          	ld	a5,528(s2)
   10474:	01478563          	beq	a5,s4,1047e <__call_exitprocs+0x5a>
   10478:	34fd                	addiw	s1,s1,-1
   1047a:	1961                	addi	s2,s2,-8
   1047c:	bfd9                	j	10452 <__call_exitprocs+0x2e>
   1047e:	441c                	lw	a5,8(s0)
   10480:	01093683          	ld	a3,16(s2)
   10484:	37fd                	addiw	a5,a5,-1
   10486:	02979663          	bne	a5,s1,104b2 <__call_exitprocs+0x8e>
   1048a:	c404                	sw	s1,8(s0)
   1048c:	d6f5                	beqz	a3,10478 <__call_exitprocs+0x54>
   1048e:	31042703          	lw	a4,784(s0)
   10492:	009b163b          	sllw	a2,s6,s1
   10496:	00842b83          	lw	s7,8(s0)
   1049a:	8f71                	and	a4,a4,a2
   1049c:	2701                	sext.w	a4,a4
   1049e:	ef09                	bnez	a4,104b8 <__call_exitprocs+0x94>
   104a0:	9682                	jalr	a3
   104a2:	4418                	lw	a4,8(s0)
   104a4:	1f89b783          	ld	a5,504(s3)
   104a8:	f9771de3          	bne	a4,s7,10442 <__call_exitprocs+0x1e>
   104ac:	fcf406e3          	beq	s0,a5,10478 <__call_exitprocs+0x54>
   104b0:	bf49                	j	10442 <__call_exitprocs+0x1e>
   104b2:	00093823          	sd	zero,16(s2)
   104b6:	bfd9                	j	1048c <__call_exitprocs+0x68>
   104b8:	31442783          	lw	a5,788(s0)
   104bc:	11093583          	ld	a1,272(s2)
   104c0:	8ff1                	and	a5,a5,a2
   104c2:	2781                	sext.w	a5,a5
   104c4:	e781                	bnez	a5,104cc <__call_exitprocs+0xa8>
   104c6:	8556                	mv	a0,s5
   104c8:	9682                	jalr	a3
   104ca:	bfe1                	j	104a2 <__call_exitprocs+0x7e>
   104cc:	852e                	mv	a0,a1
   104ce:	9682                	jalr	a3
   104d0:	bfc9                	j	104a2 <__call_exitprocs+0x7e>
	...

00000000000104d4 <conv_stat>:
   104d4:	619c                	ld	a5,0(a1)
   104d6:	00f51023          	sh	a5,0(a0)
   104da:	659c                	ld	a5,8(a1)
   104dc:	00f51123          	sh	a5,2(a0)
   104e0:	499c                	lw	a5,16(a1)
   104e2:	c15c                	sw	a5,4(a0)
   104e4:	49dc                	lw	a5,20(a1)
   104e6:	00f51423          	sh	a5,8(a0)
   104ea:	4d9c                	lw	a5,24(a1)
   104ec:	00f51523          	sh	a5,10(a0)
   104f0:	4ddc                	lw	a5,28(a1)
   104f2:	00f51623          	sh	a5,12(a0)
   104f6:	719c                	ld	a5,32(a1)
   104f8:	00f51723          	sh	a5,14(a0)
   104fc:	799c                	ld	a5,48(a1)
   104fe:	e91c                	sd	a5,16(a0)
   10500:	61bc                	ld	a5,64(a1)
   10502:	e93c                	sd	a5,80(a0)
   10504:	5d9c                	lw	a5,56(a1)
   10506:	e53c                	sd	a5,72(a0)
   10508:	65bc                	ld	a5,72(a1)
   1050a:	ed1c                	sd	a5,24(a0)
   1050c:	6dbc                	ld	a5,88(a1)
   1050e:	f51c                	sd	a5,40(a0)
   10510:	75bc                	ld	a5,104(a1)
   10512:	fd1c                	sd	a5,56(a0)
   10514:	8082                	ret

0000000000010516 <__syscall_error>:
   10516:	1141                	addi	sp,sp,-16
   10518:	e022                	sd	s0,0(sp)
   1051a:	e406                	sd	ra,8(sp)
   1051c:	842a                	mv	s0,a0
   1051e:	00000097          	auipc	ra,0x0
   10522:	3ba080e7          	jalr	954(ra) # 108d8 <__errno>
   10526:	408007bb          	negw	a5,s0
   1052a:	60a2                	ld	ra,8(sp)
   1052c:	6402                	ld	s0,0(sp)
   1052e:	c11c                	sw	a5,0(a0)
   10530:	557d                	li	a0,-1
   10532:	0141                	addi	sp,sp,16
   10534:	8082                	ret

0000000000010536 <__internal_syscall>:
   10536:	88aa                	mv	a7,a0
   10538:	852e                	mv	a0,a1
   1053a:	85b2                	mv	a1,a2
   1053c:	8636                	mv	a2,a3
   1053e:	86ba                	mv	a3,a4
   10540:	00000073          	ecall
   10544:	00055663          	bgez	a0,10550 <__internal_syscall+0x1a>
   10548:	00000317          	auipc	t1,0x0
   1054c:	fce30067          	jr	-50(t1) # 10516 <__syscall_error>
   10550:	8082                	ret

0000000000010552 <open>:
   10552:	1141                	addi	sp,sp,-16
   10554:	86b2                	mv	a3,a2
   10556:	4701                	li	a4,0
   10558:	862e                	mv	a2,a1
   1055a:	85aa                	mv	a1,a0
   1055c:	40000513          	li	a0,1024
   10560:	e406                	sd	ra,8(sp)
   10562:	00000097          	auipc	ra,0x0
   10566:	fd4080e7          	jalr	-44(ra) # 10536 <__internal_syscall>
   1056a:	60a2                	ld	ra,8(sp)
   1056c:	2501                	sext.w	a0,a0
   1056e:	0141                	addi	sp,sp,16
   10570:	8082                	ret

0000000000010572 <openat>:
   10572:	1141                	addi	sp,sp,-16
   10574:	8736                	mv	a4,a3
   10576:	86b2                	mv	a3,a2
   10578:	862e                	mv	a2,a1
   1057a:	85aa                	mv	a1,a0
   1057c:	03800513          	li	a0,56
   10580:	e406                	sd	ra,8(sp)
   10582:	fb5ff0ef          	jal	ra,10536 <__internal_syscall>
   10586:	60a2                	ld	ra,8(sp)
   10588:	2501                	sext.w	a0,a0
   1058a:	0141                	addi	sp,sp,16
   1058c:	8082                	ret

000000000001058e <lseek>:
   1058e:	86b2                	mv	a3,a2
   10590:	4701                	li	a4,0
   10592:	862e                	mv	a2,a1
   10594:	85aa                	mv	a1,a0
   10596:	03e00513          	li	a0,62
   1059a:	00000317          	auipc	t1,0x0
   1059e:	f9c30067          	jr	-100(t1) # 10536 <__internal_syscall>

00000000000105a2 <read>:
   105a2:	86b2                	mv	a3,a2
   105a4:	4701                	li	a4,0
   105a6:	862e                	mv	a2,a1
   105a8:	85aa                	mv	a1,a0
   105aa:	03f00513          	li	a0,63
   105ae:	f89ff06f          	j	10536 <__internal_syscall>

00000000000105b2 <write>:
   105b2:	86b2                	mv	a3,a2
   105b4:	4701                	li	a4,0
   105b6:	862e                	mv	a2,a1
   105b8:	85aa                	mv	a1,a0
   105ba:	04000513          	li	a0,64
   105be:	00000317          	auipc	t1,0x0
   105c2:	f7830067          	jr	-136(t1) # 10536 <__internal_syscall>

00000000000105c6 <fstat>:
   105c6:	7135                	addi	sp,sp,-160
   105c8:	e526                	sd	s1,136(sp)
   105ca:	860a                	mv	a2,sp
   105cc:	84ae                	mv	s1,a1
   105ce:	4701                	li	a4,0
   105d0:	85aa                	mv	a1,a0
   105d2:	4681                	li	a3,0
   105d4:	05000513          	li	a0,80
   105d8:	ed06                	sd	ra,152(sp)
   105da:	e922                	sd	s0,144(sp)
   105dc:	f5bff0ef          	jal	ra,10536 <__internal_syscall>
   105e0:	842a                	mv	s0,a0
   105e2:	858a                	mv	a1,sp
   105e4:	8526                	mv	a0,s1
   105e6:	eefff0ef          	jal	ra,104d4 <conv_stat>
   105ea:	0004051b          	sext.w	a0,s0
   105ee:	60ea                	ld	ra,152(sp)
   105f0:	644a                	ld	s0,144(sp)
   105f2:	64aa                	ld	s1,136(sp)
   105f4:	610d                	addi	sp,sp,160
   105f6:	8082                	ret

00000000000105f8 <stat>:
   105f8:	7135                	addi	sp,sp,-160
   105fa:	e526                	sd	s1,136(sp)
   105fc:	860a                	mv	a2,sp
   105fe:	84ae                	mv	s1,a1
   10600:	4701                	li	a4,0
   10602:	85aa                	mv	a1,a0
   10604:	4681                	li	a3,0
   10606:	40e00513          	li	a0,1038
   1060a:	ed06                	sd	ra,152(sp)
   1060c:	e922                	sd	s0,144(sp)
   1060e:	00000097          	auipc	ra,0x0
   10612:	f28080e7          	jalr	-216(ra) # 10536 <__internal_syscall>
   10616:	842a                	mv	s0,a0
   10618:	858a                	mv	a1,sp
   1061a:	8526                	mv	a0,s1
   1061c:	00000097          	auipc	ra,0x0
   10620:	eb8080e7          	jalr	-328(ra) # 104d4 <conv_stat>
   10624:	0004051b          	sext.w	a0,s0
   10628:	60ea                	ld	ra,152(sp)
   1062a:	644a                	ld	s0,144(sp)
   1062c:	64aa                	ld	s1,136(sp)
   1062e:	610d                	addi	sp,sp,160
   10630:	8082                	ret

0000000000010632 <lstat>:
   10632:	7135                	addi	sp,sp,-160
   10634:	e526                	sd	s1,136(sp)
   10636:	860a                	mv	a2,sp
   10638:	84ae                	mv	s1,a1
   1063a:	4701                	li	a4,0
   1063c:	85aa                	mv	a1,a0
   1063e:	4681                	li	a3,0
   10640:	40f00513          	li	a0,1039
   10644:	ed06                	sd	ra,152(sp)
   10646:	e922                	sd	s0,144(sp)
   10648:	eefff0ef          	jal	ra,10536 <__internal_syscall>
   1064c:	842a                	mv	s0,a0
   1064e:	858a                	mv	a1,sp
   10650:	8526                	mv	a0,s1
   10652:	e83ff0ef          	jal	ra,104d4 <conv_stat>
   10656:	0004051b          	sext.w	a0,s0
   1065a:	60ea                	ld	ra,152(sp)
   1065c:	644a                	ld	s0,144(sp)
   1065e:	64aa                	ld	s1,136(sp)
   10660:	610d                	addi	sp,sp,160
   10662:	8082                	ret

0000000000010664 <fstatat>:
   10664:	7135                	addi	sp,sp,-160
   10666:	e526                	sd	s1,136(sp)
   10668:	8736                	mv	a4,a3
   1066a:	84b2                	mv	s1,a2
   1066c:	868a                	mv	a3,sp
   1066e:	862e                	mv	a2,a1
   10670:	85aa                	mv	a1,a0
   10672:	04f00513          	li	a0,79
   10676:	ed06                	sd	ra,152(sp)
   10678:	e922                	sd	s0,144(sp)
   1067a:	00000097          	auipc	ra,0x0
   1067e:	ebc080e7          	jalr	-324(ra) # 10536 <__internal_syscall>
   10682:	842a                	mv	s0,a0
   10684:	858a                	mv	a1,sp
   10686:	8526                	mv	a0,s1
   10688:	00000097          	auipc	ra,0x0
   1068c:	e4c080e7          	jalr	-436(ra) # 104d4 <conv_stat>
   10690:	0004051b          	sext.w	a0,s0
   10694:	60ea                	ld	ra,152(sp)
   10696:	644a                	ld	s0,144(sp)
   10698:	64aa                	ld	s1,136(sp)
   1069a:	610d                	addi	sp,sp,160
   1069c:	8082                	ret

000000000001069e <access>:
   1069e:	1141                	addi	sp,sp,-16
   106a0:	862e                	mv	a2,a1
   106a2:	4701                	li	a4,0
   106a4:	85aa                	mv	a1,a0
   106a6:	4681                	li	a3,0
   106a8:	40900513          	li	a0,1033
   106ac:	e406                	sd	ra,8(sp)
   106ae:	e89ff0ef          	jal	ra,10536 <__internal_syscall>
   106b2:	60a2                	ld	ra,8(sp)
   106b4:	2501                	sext.w	a0,a0
   106b6:	0141                	addi	sp,sp,16
   106b8:	8082                	ret

00000000000106ba <faccessat>:
   106ba:	1141                	addi	sp,sp,-16
   106bc:	8736                	mv	a4,a3
   106be:	86b2                	mv	a3,a2
   106c0:	862e                	mv	a2,a1
   106c2:	85aa                	mv	a1,a0
   106c4:	03000513          	li	a0,48
   106c8:	e406                	sd	ra,8(sp)
   106ca:	00000097          	auipc	ra,0x0
   106ce:	e6c080e7          	jalr	-404(ra) # 10536 <__internal_syscall>
   106d2:	60a2                	ld	ra,8(sp)
   106d4:	2501                	sext.w	a0,a0
   106d6:	0141                	addi	sp,sp,16
   106d8:	8082                	ret

00000000000106da <close>:
   106da:	1141                	addi	sp,sp,-16
   106dc:	85aa                	mv	a1,a0
   106de:	4701                	li	a4,0
   106e0:	4681                	li	a3,0
   106e2:	4601                	li	a2,0
   106e4:	03900513          	li	a0,57
   106e8:	e406                	sd	ra,8(sp)
   106ea:	e4dff0ef          	jal	ra,10536 <__internal_syscall>
   106ee:	60a2                	ld	ra,8(sp)
   106f0:	2501                	sext.w	a0,a0
   106f2:	0141                	addi	sp,sp,16
   106f4:	8082                	ret

00000000000106f6 <link>:
   106f6:	1141                	addi	sp,sp,-16
   106f8:	862e                	mv	a2,a1
   106fa:	4701                	li	a4,0
   106fc:	85aa                	mv	a1,a0
   106fe:	4681                	li	a3,0
   10700:	40100513          	li	a0,1025
   10704:	e406                	sd	ra,8(sp)
   10706:	00000097          	auipc	ra,0x0
   1070a:	e30080e7          	jalr	-464(ra) # 10536 <__internal_syscall>
   1070e:	60a2                	ld	ra,8(sp)
   10710:	2501                	sext.w	a0,a0
   10712:	0141                	addi	sp,sp,16
   10714:	8082                	ret

0000000000010716 <unlink>:
   10716:	1141                	addi	sp,sp,-16
   10718:	85aa                	mv	a1,a0
   1071a:	4701                	li	a4,0
   1071c:	4681                	li	a3,0
   1071e:	4601                	li	a2,0
   10720:	40200513          	li	a0,1026
   10724:	e406                	sd	ra,8(sp)
   10726:	e11ff0ef          	jal	ra,10536 <__internal_syscall>
   1072a:	60a2                	ld	ra,8(sp)
   1072c:	2501                	sext.w	a0,a0
   1072e:	0141                	addi	sp,sp,16
   10730:	8082                	ret

0000000000010732 <execve>:
   10732:	1141                	addi	sp,sp,-16
   10734:	e406                	sd	ra,8(sp)
   10736:	00000097          	auipc	ra,0x0
   1073a:	1a2080e7          	jalr	418(ra) # 108d8 <__errno>
   1073e:	60a2                	ld	ra,8(sp)
   10740:	47b1                	li	a5,12
   10742:	c11c                	sw	a5,0(a0)
   10744:	557d                	li	a0,-1
   10746:	0141                	addi	sp,sp,16
   10748:	8082                	ret

000000000001074a <fork>:
   1074a:	1141                	addi	sp,sp,-16
   1074c:	e406                	sd	ra,8(sp)
   1074e:	18a000ef          	jal	ra,108d8 <__errno>
   10752:	60a2                	ld	ra,8(sp)
   10754:	47ad                	li	a5,11
   10756:	c11c                	sw	a5,0(a0)
   10758:	557d                	li	a0,-1
   1075a:	0141                	addi	sp,sp,16
   1075c:	8082                	ret

000000000001075e <getpid>:
   1075e:	4505                	li	a0,1
   10760:	8082                	ret

0000000000010762 <kill>:
   10762:	1141                	addi	sp,sp,-16
   10764:	e406                	sd	ra,8(sp)
   10766:	172000ef          	jal	ra,108d8 <__errno>
   1076a:	60a2                	ld	ra,8(sp)
   1076c:	47d9                	li	a5,22
   1076e:	c11c                	sw	a5,0(a0)
   10770:	557d                	li	a0,-1
   10772:	0141                	addi	sp,sp,16
   10774:	8082                	ret

0000000000010776 <wait>:
   10776:	1141                	addi	sp,sp,-16
   10778:	e406                	sd	ra,8(sp)
   1077a:	00000097          	auipc	ra,0x0
   1077e:	15e080e7          	jalr	350(ra) # 108d8 <__errno>
   10782:	60a2                	ld	ra,8(sp)
   10784:	47a9                	li	a5,10
   10786:	c11c                	sw	a5,0(a0)
   10788:	557d                	li	a0,-1
   1078a:	0141                	addi	sp,sp,16
   1078c:	8082                	ret

000000000001078e <isatty>:
   1078e:	7119                	addi	sp,sp,-128
   10790:	002c                	addi	a1,sp,8
   10792:	fc86                	sd	ra,120(sp)
   10794:	e33ff0ef          	jal	ra,105c6 <fstat>
   10798:	57fd                	li	a5,-1
   1079a:	00f50663          	beq	a0,a5,107a6 <isatty+0x18>
   1079e:	4532                	lw	a0,12(sp)
   107a0:	40d5551b          	sraiw	a0,a0,0xd
   107a4:	8905                	andi	a0,a0,1
   107a6:	70e6                	ld	ra,120(sp)
   107a8:	6109                	addi	sp,sp,128
   107aa:	8082                	ret

00000000000107ac <gettimeofday>:
   107ac:	1141                	addi	sp,sp,-16
   107ae:	85aa                	mv	a1,a0
   107b0:	4701                	li	a4,0
   107b2:	4681                	li	a3,0
   107b4:	4601                	li	a2,0
   107b6:	0a900513          	li	a0,169
   107ba:	e406                	sd	ra,8(sp)
   107bc:	00000097          	auipc	ra,0x0
   107c0:	d7a080e7          	jalr	-646(ra) # 10536 <__internal_syscall>
   107c4:	60a2                	ld	ra,8(sp)
   107c6:	2501                	sext.w	a0,a0
   107c8:	0141                	addi	sp,sp,16
   107ca:	8082                	ret

00000000000107cc <times>:
   107cc:	7179                	addi	sp,sp,-48
   107ce:	f022                	sd	s0,32(sp)
   107d0:	842a                	mv	s0,a0
   107d2:	8681b783          	ld	a5,-1944(gp) # 117c0 <t0.2574>
   107d6:	ec26                	sd	s1,24(sp)
   107d8:	f406                	sd	ra,40(sp)
   107da:	86818493          	addi	s1,gp,-1944 # 117c0 <t0.2574>
   107de:	eb81                	bnez	a5,107ee <times+0x22>
   107e0:	4581                	li	a1,0
   107e2:	86818513          	addi	a0,gp,-1944 # 117c0 <t0.2574>
   107e6:	00000097          	auipc	ra,0x0
   107ea:	fc6080e7          	jalr	-58(ra) # 107ac <gettimeofday>
   107ee:	850a                	mv	a0,sp
   107f0:	4581                	li	a1,0
   107f2:	00000097          	auipc	ra,0x0
   107f6:	fba080e7          	jalr	-70(ra) # 107ac <gettimeofday>
   107fa:	6098                	ld	a4,0(s1)
   107fc:	6782                	ld	a5,0(sp)
   107fe:	6494                	ld	a3,8(s1)
   10800:	00043823          	sd	zero,16(s0)
   10804:	8f99                	sub	a5,a5,a4
   10806:	000f4737          	lui	a4,0xf4
   1080a:	24070713          	addi	a4,a4,576 # f4240 <__global_pointer$+0xe22e8>
   1080e:	02e787b3          	mul	a5,a5,a4
   10812:	6722                	ld	a4,8(sp)
   10814:	00043c23          	sd	zero,24(s0)
   10818:	00043423          	sd	zero,8(s0)
   1081c:	8f15                	sub	a4,a4,a3
   1081e:	70a2                	ld	ra,40(sp)
   10820:	64e2                	ld	s1,24(sp)
   10822:	557d                	li	a0,-1
   10824:	97ba                	add	a5,a5,a4
   10826:	e01c                	sd	a5,0(s0)
   10828:	7402                	ld	s0,32(sp)
   1082a:	6145                	addi	sp,sp,48
   1082c:	8082                	ret

000000000001082e <ftime>:
   1082e:	00051423          	sh	zero,8(a0)
   10832:	00053023          	sd	zero,0(a0)
   10836:	4501                	li	a0,0
   10838:	8082                	ret

000000000001083a <utime>:
   1083a:	557d                	li	a0,-1
   1083c:	8082                	ret

000000000001083e <chown>:
   1083e:	557d                	li	a0,-1
   10840:	8082                	ret

0000000000010842 <chmod>:
   10842:	557d                	li	a0,-1
   10844:	8082                	ret

0000000000010846 <chdir>:
   10846:	557d                	li	a0,-1
   10848:	8082                	ret

000000000001084a <getcwd>:
   1084a:	4501                	li	a0,0
   1084c:	8082                	ret

000000000001084e <sysconf>:
   1084e:	4789                	li	a5,2
   10850:	00f50463          	beq	a0,a5,10858 <sysconf+0xa>
   10854:	557d                	li	a0,-1
   10856:	8082                	ret
   10858:	000f4537          	lui	a0,0xf4
   1085c:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22e8>
   10860:	8082                	ret

0000000000010862 <sbrk>:
   10862:	1101                	addi	sp,sp,-32
   10864:	e822                	sd	s0,16(sp)
   10866:	8281b783          	ld	a5,-2008(gp) # 11780 <_edata>
   1086a:	e426                	sd	s1,8(sp)
   1086c:	ec06                	sd	ra,24(sp)
   1086e:	84aa                	mv	s1,a0
   10870:	e785                	bnez	a5,10898 <sbrk+0x36>
   10872:	4701                	li	a4,0
   10874:	4681                	li	a3,0
   10876:	4601                	li	a2,0
   10878:	4581                	li	a1,0
   1087a:	0d600513          	li	a0,214
   1087e:	cb9ff0ef          	jal	ra,10536 <__internal_syscall>
   10882:	57fd                	li	a5,-1
   10884:	00f51863          	bne	a0,a5,10894 <sbrk+0x32>
   10888:	557d                	li	a0,-1
   1088a:	60e2                	ld	ra,24(sp)
   1088c:	6442                	ld	s0,16(sp)
   1088e:	64a2                	ld	s1,8(sp)
   10890:	6105                	addi	sp,sp,32
   10892:	8082                	ret
   10894:	82a1b423          	sd	a0,-2008(gp) # 11780 <_edata>
   10898:	8281b583          	ld	a1,-2008(gp) # 11780 <_edata>
   1089c:	4701                	li	a4,0
   1089e:	4681                	li	a3,0
   108a0:	95a6                	add	a1,a1,s1
   108a2:	4601                	li	a2,0
   108a4:	0d600513          	li	a0,214
   108a8:	c8fff0ef          	jal	ra,10536 <__internal_syscall>
   108ac:	8281b783          	ld	a5,-2008(gp) # 11780 <_edata>
   108b0:	94be                	add	s1,s1,a5
   108b2:	fc951be3          	bne	a0,s1,10888 <sbrk+0x26>
   108b6:	82a1b423          	sd	a0,-2008(gp) # 11780 <_edata>
   108ba:	853e                	mv	a0,a5
   108bc:	b7f9                	j	1088a <sbrk+0x28>

00000000000108be <_exit>:
   108be:	1141                	addi	sp,sp,-16
   108c0:	85aa                	mv	a1,a0
   108c2:	4701                	li	a4,0
   108c4:	4681                	li	a3,0
   108c6:	4601                	li	a2,0
   108c8:	05d00513          	li	a0,93
   108cc:	e406                	sd	ra,8(sp)
   108ce:	00000097          	auipc	ra,0x0
   108d2:	c68080e7          	jalr	-920(ra) # 10536 <__internal_syscall>
   108d6:	a001                	j	108d6 <_exit+0x18>

00000000000108d8 <__errno>:
   108d8:	8201b503          	ld	a0,-2016(gp) # 11778 <_impure_ptr>
   108dc:	8082                	ret
	...

Disassembly of section .eh_frame:

00000000000108e0 <__EH_FRAME_BEGIN__>:
   108e0:	0010                	addi	a2,sp,0
   108e2:	0000                	unimp
   108e4:	0000                	unimp
   108e6:	0000                	unimp
   108e8:	7a01                	lui	s4,0xfffe0
   108ea:	0052                	0x52
   108ec:	7c01                	lui	s8,0xfffe0
   108ee:	0101                	addi	sp,sp,0
   108f0:	00020d1b          	sext.w	s10,tp
   108f4:	0020                	addi	s0,sp,8
   108f6:	0000                	unimp
   108f8:	0018                	addi	a4,sp,0
   108fa:	0000                	unimp
   108fc:	f8b0                	sd	a2,112(s1)
   108fe:	ffff                	0xffff
   10900:	007c                	addi	a5,sp,12
   10902:	0000                	unimp
   10904:	4400                	lw	s0,8(s0)
   10906:	100e                	0x100e
   10908:	8844                	0x8844
   1090a:	4402                	lw	s0,0(sp)
   1090c:	080c                	addi	a1,sp,16
   1090e:	0200                	addi	s0,sp,256
   10910:	c88c                	sw	a1,16(s1)
   10912:	0d44                	addi	s1,sp,660
   10914:	0002                	0x2
	...

0000000000010918 <__FRAME_END__>:
   10918:	0000                	unimp
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
