
Test/1:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ea818193          	addi	gp,gp,-344 # 11f58 <__global_pointer$>
   100b8:	82018513          	addi	a0,gp,-2016 # 11778 <_edata>
   100bc:	87818613          	addi	a2,gp,-1928 # 117d0 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	274000ef          	jal	ra,10338 <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	1ba50513          	addi	a0,a0,442 # 10282 <__libc_fini_array>
   100d0:	00000097          	auipc	ra,0x0
   100d4:	180080e7          	jalr	384(ra) # 10250 <atexit>
   100d8:	00000097          	auipc	ra,0x0
   100dc:	1f8080e7          	jalr	504(ra) # 102d0 <__libc_init_array>
   100e0:	4502                	lw	a0,0(sp)
   100e2:	002c                	addi	a1,sp,8
   100e4:	4601                	li	a2,0
   100e6:	00000097          	auipc	ra,0x0
   100ea:	0c6080e7          	jalr	198(ra) # 101ac <main>
   100ee:	00000317          	auipc	t1,0x0
   100f2:	17030067          	jr	368(t1) # 1025e <exit>

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
   10166:	90850513          	addi	a0,a0,-1784 # 10908 <__EH_FRAME_BEGIN__>
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
   10194:	90850513          	addi	a0,a0,-1784 # 10908 <__EH_FRAME_BEGIN__>
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
   101b8:	8201a783          	lw	a5,-2016(gp) # 11778 <_edata>
   101bc:	0027879b          	addiw	a5,a5,2
   101c0:	0007871b          	sext.w	a4,a5
   101c4:	82e1a023          	sw	a4,-2016(gp) # 11778 <_edata>
   101c8:	000117b7          	lui	a5,0x11
   101cc:	7607a783          	lw	a5,1888(a5) # 11760 <b>
   101d0:	0037879b          	addiw	a5,a5,3
   101d4:	0007871b          	sext.w	a4,a5
   101d8:	000117b7          	lui	a5,0x11
   101dc:	76e7a023          	sw	a4,1888(a5) # 11760 <b>
   101e0:	80c1a783          	lw	a5,-2036(gp) # 11764 <c>
   101e4:	0047879b          	addiw	a5,a5,4
   101e8:	0007871b          	sext.w	a4,a5
   101ec:	80e1a623          	sw	a4,-2036(gp) # 11764 <c>
   101f0:	8201a703          	lw	a4,-2016(gp) # 11778 <_edata>
   101f4:	000117b7          	lui	a5,0x11
   101f8:	7607a783          	lw	a5,1888(a5) # 11760 <b>
   101fc:	00f707bb          	addw	a5,a4,a5
   10200:	0007871b          	sext.w	a4,a5
   10204:	82e1a023          	sw	a4,-2016(gp) # 11778 <_edata>
   10208:	000117b7          	lui	a5,0x11
   1020c:	7607a703          	lw	a4,1888(a5) # 11760 <b>
   10210:	80c1a783          	lw	a5,-2036(gp) # 11764 <c>
   10214:	00f707bb          	addw	a5,a4,a5
   10218:	0007871b          	sext.w	a4,a5
   1021c:	000117b7          	lui	a5,0x11
   10220:	76e7a023          	sw	a4,1888(a5) # 11760 <b>
   10224:	80c1a703          	lw	a4,-2036(gp) # 11764 <c>
   10228:	8201a783          	lw	a5,-2016(gp) # 11778 <_edata>
   1022c:	00f707bb          	addw	a5,a4,a5
   10230:	0007871b          	sext.w	a4,a5
   10234:	80e1a623          	sw	a4,-2036(gp) # 11764 <c>
   10238:	00000793          	li	a5,0
   1023c:	00078513          	mv	a0,a5
   10240:	00813403          	ld	s0,8(sp)
   10244:	01010113          	addi	sp,sp,16
   10248:	00008067          	ret
   1024c:	0000                	unimp
	...

0000000000010250 <atexit>:
   10250:	85aa                	mv	a1,a0
   10252:	4681                	li	a3,0
   10254:	4601                	li	a2,0
   10256:	4501                	li	a0,0
   10258:	18a0006f          	j	103e2 <__register_exitproc>
	...

000000000001025e <exit>:
   1025e:	1141                	addi	sp,sp,-16
   10260:	4581                	li	a1,0
   10262:	e022                	sd	s0,0(sp)
   10264:	e406                	sd	ra,8(sp)
   10266:	842a                	mv	s0,a0
   10268:	1e0000ef          	jal	ra,10448 <__call_exitprocs>
   1026c:	8101b503          	ld	a0,-2032(gp) # 11768 <_global_impure_ptr>
   10270:	6d3c                	ld	a5,88(a0)
   10272:	c391                	beqz	a5,10276 <exit+0x18>
   10274:	9782                	jalr	a5
   10276:	8522                	mv	a0,s0
   10278:	00000097          	auipc	ra,0x0
   1027c:	66a080e7          	jalr	1642(ra) # 108e2 <_exit>
	...

0000000000010282 <__libc_fini_array>:
   10282:	7179                	addi	sp,sp,-48
   10284:	67c5                	lui	a5,0x11
   10286:	6745                	lui	a4,0x11
   10288:	f022                	sd	s0,32(sp)
   1028a:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   1028e:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   10292:	8c19                	sub	s0,s0,a4
   10294:	ec26                	sd	s1,24(sp)
   10296:	e84a                	sd	s2,16(sp)
   10298:	e44e                	sd	s3,8(sp)
   1029a:	f406                	sd	ra,40(sp)
   1029c:	840d                	srai	s0,s0,0x3
   1029e:	4481                	li	s1,0
   102a0:	01078913          	addi	s2,a5,16
   102a4:	59e1                	li	s3,-8
   102a6:	00941c63          	bne	s0,s1,102be <__libc_fini_array+0x3c>
   102aa:	7402                	ld	s0,32(sp)
   102ac:	70a2                	ld	ra,40(sp)
   102ae:	64e2                	ld	s1,24(sp)
   102b0:	6942                	ld	s2,16(sp)
   102b2:	69a2                	ld	s3,8(sp)
   102b4:	6145                	addi	sp,sp,48
   102b6:	00000317          	auipc	t1,0x0
   102ba:	e4030067          	jr	-448(t1) # 100f6 <_fini>
   102be:	033487b3          	mul	a5,s1,s3
   102c2:	0485                	addi	s1,s1,1
   102c4:	97ca                	add	a5,a5,s2
   102c6:	ff87b783          	ld	a5,-8(a5)
   102ca:	9782                	jalr	a5
   102cc:	bfe9                	j	102a6 <__libc_fini_array+0x24>
	...

00000000000102d0 <__libc_init_array>:
   102d0:	1101                	addi	sp,sp,-32
   102d2:	e822                	sd	s0,16(sp)
   102d4:	e426                	sd	s1,8(sp)
   102d6:	6445                	lui	s0,0x11
   102d8:	64c5                	lui	s1,0x11
   102da:	00048793          	mv	a5,s1
   102de:	00040413          	mv	s0,s0
   102e2:	8c1d                	sub	s0,s0,a5
   102e4:	e04a                	sd	s2,0(sp)
   102e6:	ec06                	sd	ra,24(sp)
   102e8:	840d                	srai	s0,s0,0x3
   102ea:	00048493          	mv	s1,s1
   102ee:	4901                	li	s2,0
   102f0:	02891963          	bne	s2,s0,10322 <__libc_init_array+0x52>
   102f4:	64c5                	lui	s1,0x11
   102f6:	00000097          	auipc	ra,0x0
   102fa:	e00080e7          	jalr	-512(ra) # 100f6 <_fini>
   102fe:	6445                	lui	s0,0x11
   10300:	00048793          	mv	a5,s1
   10304:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   10308:	8c1d                	sub	s0,s0,a5
   1030a:	840d                	srai	s0,s0,0x3
   1030c:	00048493          	mv	s1,s1
   10310:	4901                	li	s2,0
   10312:	00891d63          	bne	s2,s0,1032c <__libc_init_array+0x5c>
   10316:	60e2                	ld	ra,24(sp)
   10318:	6442                	ld	s0,16(sp)
   1031a:	64a2                	ld	s1,8(sp)
   1031c:	6902                	ld	s2,0(sp)
   1031e:	6105                	addi	sp,sp,32
   10320:	8082                	ret
   10322:	609c                	ld	a5,0(s1)
   10324:	0905                	addi	s2,s2,1
   10326:	04a1                	addi	s1,s1,8
   10328:	9782                	jalr	a5
   1032a:	b7d9                	j	102f0 <__libc_init_array+0x20>
   1032c:	609c                	ld	a5,0(s1)
   1032e:	0905                	addi	s2,s2,1
   10330:	04a1                	addi	s1,s1,8
   10332:	9782                	jalr	a5
   10334:	bff9                	j	10312 <__libc_init_array+0x42>
	...

0000000000010338 <memset>:
   10338:	483d                	li	a6,15
   1033a:	872a                	mv	a4,a0
   1033c:	02c87163          	bleu	a2,a6,1035e <memset+0x26>
   10340:	00f77793          	andi	a5,a4,15
   10344:	e3c1                	bnez	a5,103c4 <memset+0x8c>
   10346:	e1bd                	bnez	a1,103ac <memset+0x74>
   10348:	ff067693          	andi	a3,a2,-16
   1034c:	8a3d                	andi	a2,a2,15
   1034e:	96ba                	add	a3,a3,a4
   10350:	e30c                	sd	a1,0(a4)
   10352:	e70c                	sd	a1,8(a4)
   10354:	0741                	addi	a4,a4,16
   10356:	fed76de3          	bltu	a4,a3,10350 <memset+0x18>
   1035a:	e211                	bnez	a2,1035e <memset+0x26>
   1035c:	8082                	ret
   1035e:	40c806b3          	sub	a3,a6,a2
   10362:	068a                	slli	a3,a3,0x2
   10364:	00000297          	auipc	t0,0x0
   10368:	9696                	add	a3,a3,t0
   1036a:	00a68067          	jr	10(a3)
   1036e:	00b70723          	sb	a1,14(a4)
   10372:	00b706a3          	sb	a1,13(a4)
   10376:	00b70623          	sb	a1,12(a4)
   1037a:	00b705a3          	sb	a1,11(a4)
   1037e:	00b70523          	sb	a1,10(a4)
   10382:	00b704a3          	sb	a1,9(a4)
   10386:	00b70423          	sb	a1,8(a4)
   1038a:	00b703a3          	sb	a1,7(a4)
   1038e:	00b70323          	sb	a1,6(a4)
   10392:	00b702a3          	sb	a1,5(a4)
   10396:	00b70223          	sb	a1,4(a4)
   1039a:	00b701a3          	sb	a1,3(a4)
   1039e:	00b70123          	sb	a1,2(a4)
   103a2:	00b700a3          	sb	a1,1(a4)
   103a6:	00b70023          	sb	a1,0(a4)
   103aa:	8082                	ret
   103ac:	0ff5f593          	andi	a1,a1,255
   103b0:	00859693          	slli	a3,a1,0x8
   103b4:	8dd5                	or	a1,a1,a3
   103b6:	01059693          	slli	a3,a1,0x10
   103ba:	8dd5                	or	a1,a1,a3
   103bc:	02059693          	slli	a3,a1,0x20
   103c0:	8dd5                	or	a1,a1,a3
   103c2:	b759                	j	10348 <memset+0x10>
   103c4:	00279693          	slli	a3,a5,0x2
   103c8:	00000297          	auipc	t0,0x0
   103cc:	9696                	add	a3,a3,t0
   103ce:	8286                	mv	t0,ra
   103d0:	fa2680e7          	jalr	-94(a3)
   103d4:	8096                	mv	ra,t0
   103d6:	17c1                	addi	a5,a5,-16
   103d8:	8f1d                	sub	a4,a4,a5
   103da:	963e                	add	a2,a2,a5
   103dc:	f8c871e3          	bleu	a2,a6,1035e <memset+0x26>
   103e0:	b79d                	j	10346 <memset+0xe>

00000000000103e2 <__register_exitproc>:
   103e2:	8101b703          	ld	a4,-2032(gp) # 11768 <_global_impure_ptr>
   103e6:	832a                	mv	t1,a0
   103e8:	1f873783          	ld	a5,504(a4)
   103ec:	e789                	bnez	a5,103f6 <__register_exitproc+0x14>
   103ee:	20070793          	addi	a5,a4,512
   103f2:	1ef73c23          	sd	a5,504(a4)
   103f6:	4798                	lw	a4,8(a5)
   103f8:	487d                	li	a6,31
   103fa:	557d                	li	a0,-1
   103fc:	04e84463          	blt	a6,a4,10444 <__register_exitproc+0x62>
   10400:	02030a63          	beqz	t1,10434 <__register_exitproc+0x52>
   10404:	00371813          	slli	a6,a4,0x3
   10408:	983e                	add	a6,a6,a5
   1040a:	10c83823          	sd	a2,272(a6)
   1040e:	3107a883          	lw	a7,784(a5)
   10412:	4605                	li	a2,1
   10414:	00e6163b          	sllw	a2,a2,a4
   10418:	00c8e8b3          	or	a7,a7,a2
   1041c:	3117a823          	sw	a7,784(a5)
   10420:	20d83823          	sd	a3,528(a6)
   10424:	4689                	li	a3,2
   10426:	00d31763          	bne	t1,a3,10434 <__register_exitproc+0x52>
   1042a:	3147a683          	lw	a3,788(a5)
   1042e:	8e55                	or	a2,a2,a3
   10430:	30c7aa23          	sw	a2,788(a5)
   10434:	0017069b          	addiw	a3,a4,1
   10438:	0709                	addi	a4,a4,2
   1043a:	070e                	slli	a4,a4,0x3
   1043c:	c794                	sw	a3,8(a5)
   1043e:	97ba                	add	a5,a5,a4
   10440:	e38c                	sd	a1,0(a5)
   10442:	4501                	li	a0,0
   10444:	8082                	ret
	...

0000000000010448 <__call_exitprocs>:
   10448:	715d                	addi	sp,sp,-80
   1044a:	f44e                	sd	s3,40(sp)
   1044c:	8101b983          	ld	s3,-2032(gp) # 11768 <_global_impure_ptr>
   10450:	f052                	sd	s4,32(sp)
   10452:	ec56                	sd	s5,24(sp)
   10454:	e85a                	sd	s6,16(sp)
   10456:	e486                	sd	ra,72(sp)
   10458:	e0a2                	sd	s0,64(sp)
   1045a:	fc26                	sd	s1,56(sp)
   1045c:	f84a                	sd	s2,48(sp)
   1045e:	e45e                	sd	s7,8(sp)
   10460:	8aaa                	mv	s5,a0
   10462:	8a2e                	mv	s4,a1
   10464:	4b05                	li	s6,1
   10466:	1f89b403          	ld	s0,504(s3)
   1046a:	c801                	beqz	s0,1047a <__call_exitprocs+0x32>
   1046c:	4404                	lw	s1,8(s0)
   1046e:	34fd                	addiw	s1,s1,-1
   10470:	00349913          	slli	s2,s1,0x3
   10474:	9922                	add	s2,s2,s0
   10476:	0004dd63          	bgez	s1,10490 <__call_exitprocs+0x48>
   1047a:	60a6                	ld	ra,72(sp)
   1047c:	6406                	ld	s0,64(sp)
   1047e:	74e2                	ld	s1,56(sp)
   10480:	7942                	ld	s2,48(sp)
   10482:	79a2                	ld	s3,40(sp)
   10484:	7a02                	ld	s4,32(sp)
   10486:	6ae2                	ld	s5,24(sp)
   10488:	6b42                	ld	s6,16(sp)
   1048a:	6ba2                	ld	s7,8(sp)
   1048c:	6161                	addi	sp,sp,80
   1048e:	8082                	ret
   10490:	000a0963          	beqz	s4,104a2 <__call_exitprocs+0x5a>
   10494:	21093783          	ld	a5,528(s2)
   10498:	01478563          	beq	a5,s4,104a2 <__call_exitprocs+0x5a>
   1049c:	34fd                	addiw	s1,s1,-1
   1049e:	1961                	addi	s2,s2,-8
   104a0:	bfd9                	j	10476 <__call_exitprocs+0x2e>
   104a2:	441c                	lw	a5,8(s0)
   104a4:	01093683          	ld	a3,16(s2)
   104a8:	37fd                	addiw	a5,a5,-1
   104aa:	02979663          	bne	a5,s1,104d6 <__call_exitprocs+0x8e>
   104ae:	c404                	sw	s1,8(s0)
   104b0:	d6f5                	beqz	a3,1049c <__call_exitprocs+0x54>
   104b2:	31042703          	lw	a4,784(s0)
   104b6:	009b163b          	sllw	a2,s6,s1
   104ba:	00842b83          	lw	s7,8(s0)
   104be:	8f71                	and	a4,a4,a2
   104c0:	2701                	sext.w	a4,a4
   104c2:	ef09                	bnez	a4,104dc <__call_exitprocs+0x94>
   104c4:	9682                	jalr	a3
   104c6:	4418                	lw	a4,8(s0)
   104c8:	1f89b783          	ld	a5,504(s3)
   104cc:	f9771de3          	bne	a4,s7,10466 <__call_exitprocs+0x1e>
   104d0:	fcf406e3          	beq	s0,a5,1049c <__call_exitprocs+0x54>
   104d4:	bf49                	j	10466 <__call_exitprocs+0x1e>
   104d6:	00093823          	sd	zero,16(s2)
   104da:	bfd9                	j	104b0 <__call_exitprocs+0x68>
   104dc:	31442783          	lw	a5,788(s0)
   104e0:	11093583          	ld	a1,272(s2)
   104e4:	8ff1                	and	a5,a5,a2
   104e6:	2781                	sext.w	a5,a5
   104e8:	e781                	bnez	a5,104f0 <__call_exitprocs+0xa8>
   104ea:	8556                	mv	a0,s5
   104ec:	9682                	jalr	a3
   104ee:	bfe1                	j	104c6 <__call_exitprocs+0x7e>
   104f0:	852e                	mv	a0,a1
   104f2:	9682                	jalr	a3
   104f4:	bfc9                	j	104c6 <__call_exitprocs+0x7e>
	...

00000000000104f8 <conv_stat>:
   104f8:	619c                	ld	a5,0(a1)
   104fa:	00f51023          	sh	a5,0(a0)
   104fe:	659c                	ld	a5,8(a1)
   10500:	00f51123          	sh	a5,2(a0)
   10504:	499c                	lw	a5,16(a1)
   10506:	c15c                	sw	a5,4(a0)
   10508:	49dc                	lw	a5,20(a1)
   1050a:	00f51423          	sh	a5,8(a0)
   1050e:	4d9c                	lw	a5,24(a1)
   10510:	00f51523          	sh	a5,10(a0)
   10514:	4ddc                	lw	a5,28(a1)
   10516:	00f51623          	sh	a5,12(a0)
   1051a:	719c                	ld	a5,32(a1)
   1051c:	00f51723          	sh	a5,14(a0)
   10520:	799c                	ld	a5,48(a1)
   10522:	e91c                	sd	a5,16(a0)
   10524:	61bc                	ld	a5,64(a1)
   10526:	e93c                	sd	a5,80(a0)
   10528:	5d9c                	lw	a5,56(a1)
   1052a:	e53c                	sd	a5,72(a0)
   1052c:	65bc                	ld	a5,72(a1)
   1052e:	ed1c                	sd	a5,24(a0)
   10530:	6dbc                	ld	a5,88(a1)
   10532:	f51c                	sd	a5,40(a0)
   10534:	75bc                	ld	a5,104(a1)
   10536:	fd1c                	sd	a5,56(a0)
   10538:	8082                	ret

000000000001053a <__syscall_error>:
   1053a:	1141                	addi	sp,sp,-16
   1053c:	e022                	sd	s0,0(sp)
   1053e:	e406                	sd	ra,8(sp)
   10540:	842a                	mv	s0,a0
   10542:	00000097          	auipc	ra,0x0
   10546:	3ba080e7          	jalr	954(ra) # 108fc <__errno>
   1054a:	408007bb          	negw	a5,s0
   1054e:	60a2                	ld	ra,8(sp)
   10550:	6402                	ld	s0,0(sp)
   10552:	c11c                	sw	a5,0(a0)
   10554:	557d                	li	a0,-1
   10556:	0141                	addi	sp,sp,16
   10558:	8082                	ret

000000000001055a <__internal_syscall>:
   1055a:	88aa                	mv	a7,a0
   1055c:	852e                	mv	a0,a1
   1055e:	85b2                	mv	a1,a2
   10560:	8636                	mv	a2,a3
   10562:	86ba                	mv	a3,a4
   10564:	00000073          	ecall
   10568:	00055663          	bgez	a0,10574 <__internal_syscall+0x1a>
   1056c:	00000317          	auipc	t1,0x0
   10570:	fce30067          	jr	-50(t1) # 1053a <__syscall_error>
   10574:	8082                	ret

0000000000010576 <open>:
   10576:	1141                	addi	sp,sp,-16
   10578:	86b2                	mv	a3,a2
   1057a:	4701                	li	a4,0
   1057c:	862e                	mv	a2,a1
   1057e:	85aa                	mv	a1,a0
   10580:	40000513          	li	a0,1024
   10584:	e406                	sd	ra,8(sp)
   10586:	00000097          	auipc	ra,0x0
   1058a:	fd4080e7          	jalr	-44(ra) # 1055a <__internal_syscall>
   1058e:	60a2                	ld	ra,8(sp)
   10590:	2501                	sext.w	a0,a0
   10592:	0141                	addi	sp,sp,16
   10594:	8082                	ret

0000000000010596 <openat>:
   10596:	1141                	addi	sp,sp,-16
   10598:	8736                	mv	a4,a3
   1059a:	86b2                	mv	a3,a2
   1059c:	862e                	mv	a2,a1
   1059e:	85aa                	mv	a1,a0
   105a0:	03800513          	li	a0,56
   105a4:	e406                	sd	ra,8(sp)
   105a6:	fb5ff0ef          	jal	ra,1055a <__internal_syscall>
   105aa:	60a2                	ld	ra,8(sp)
   105ac:	2501                	sext.w	a0,a0
   105ae:	0141                	addi	sp,sp,16
   105b0:	8082                	ret

00000000000105b2 <lseek>:
   105b2:	86b2                	mv	a3,a2
   105b4:	4701                	li	a4,0
   105b6:	862e                	mv	a2,a1
   105b8:	85aa                	mv	a1,a0
   105ba:	03e00513          	li	a0,62
   105be:	00000317          	auipc	t1,0x0
   105c2:	f9c30067          	jr	-100(t1) # 1055a <__internal_syscall>

00000000000105c6 <read>:
   105c6:	86b2                	mv	a3,a2
   105c8:	4701                	li	a4,0
   105ca:	862e                	mv	a2,a1
   105cc:	85aa                	mv	a1,a0
   105ce:	03f00513          	li	a0,63
   105d2:	f89ff06f          	j	1055a <__internal_syscall>

00000000000105d6 <write>:
   105d6:	86b2                	mv	a3,a2
   105d8:	4701                	li	a4,0
   105da:	862e                	mv	a2,a1
   105dc:	85aa                	mv	a1,a0
   105de:	04000513          	li	a0,64
   105e2:	00000317          	auipc	t1,0x0
   105e6:	f7830067          	jr	-136(t1) # 1055a <__internal_syscall>

00000000000105ea <fstat>:
   105ea:	7135                	addi	sp,sp,-160
   105ec:	e526                	sd	s1,136(sp)
   105ee:	860a                	mv	a2,sp
   105f0:	84ae                	mv	s1,a1
   105f2:	4701                	li	a4,0
   105f4:	85aa                	mv	a1,a0
   105f6:	4681                	li	a3,0
   105f8:	05000513          	li	a0,80
   105fc:	ed06                	sd	ra,152(sp)
   105fe:	e922                	sd	s0,144(sp)
   10600:	f5bff0ef          	jal	ra,1055a <__internal_syscall>
   10604:	842a                	mv	s0,a0
   10606:	858a                	mv	a1,sp
   10608:	8526                	mv	a0,s1
   1060a:	eefff0ef          	jal	ra,104f8 <conv_stat>
   1060e:	0004051b          	sext.w	a0,s0
   10612:	60ea                	ld	ra,152(sp)
   10614:	644a                	ld	s0,144(sp)
   10616:	64aa                	ld	s1,136(sp)
   10618:	610d                	addi	sp,sp,160
   1061a:	8082                	ret

000000000001061c <stat>:
   1061c:	7135                	addi	sp,sp,-160
   1061e:	e526                	sd	s1,136(sp)
   10620:	860a                	mv	a2,sp
   10622:	84ae                	mv	s1,a1
   10624:	4701                	li	a4,0
   10626:	85aa                	mv	a1,a0
   10628:	4681                	li	a3,0
   1062a:	40e00513          	li	a0,1038
   1062e:	ed06                	sd	ra,152(sp)
   10630:	e922                	sd	s0,144(sp)
   10632:	00000097          	auipc	ra,0x0
   10636:	f28080e7          	jalr	-216(ra) # 1055a <__internal_syscall>
   1063a:	842a                	mv	s0,a0
   1063c:	858a                	mv	a1,sp
   1063e:	8526                	mv	a0,s1
   10640:	00000097          	auipc	ra,0x0
   10644:	eb8080e7          	jalr	-328(ra) # 104f8 <conv_stat>
   10648:	0004051b          	sext.w	a0,s0
   1064c:	60ea                	ld	ra,152(sp)
   1064e:	644a                	ld	s0,144(sp)
   10650:	64aa                	ld	s1,136(sp)
   10652:	610d                	addi	sp,sp,160
   10654:	8082                	ret

0000000000010656 <lstat>:
   10656:	7135                	addi	sp,sp,-160
   10658:	e526                	sd	s1,136(sp)
   1065a:	860a                	mv	a2,sp
   1065c:	84ae                	mv	s1,a1
   1065e:	4701                	li	a4,0
   10660:	85aa                	mv	a1,a0
   10662:	4681                	li	a3,0
   10664:	40f00513          	li	a0,1039
   10668:	ed06                	sd	ra,152(sp)
   1066a:	e922                	sd	s0,144(sp)
   1066c:	eefff0ef          	jal	ra,1055a <__internal_syscall>
   10670:	842a                	mv	s0,a0
   10672:	858a                	mv	a1,sp
   10674:	8526                	mv	a0,s1
   10676:	e83ff0ef          	jal	ra,104f8 <conv_stat>
   1067a:	0004051b          	sext.w	a0,s0
   1067e:	60ea                	ld	ra,152(sp)
   10680:	644a                	ld	s0,144(sp)
   10682:	64aa                	ld	s1,136(sp)
   10684:	610d                	addi	sp,sp,160
   10686:	8082                	ret

0000000000010688 <fstatat>:
   10688:	7135                	addi	sp,sp,-160
   1068a:	e526                	sd	s1,136(sp)
   1068c:	8736                	mv	a4,a3
   1068e:	84b2                	mv	s1,a2
   10690:	868a                	mv	a3,sp
   10692:	862e                	mv	a2,a1
   10694:	85aa                	mv	a1,a0
   10696:	04f00513          	li	a0,79
   1069a:	ed06                	sd	ra,152(sp)
   1069c:	e922                	sd	s0,144(sp)
   1069e:	00000097          	auipc	ra,0x0
   106a2:	ebc080e7          	jalr	-324(ra) # 1055a <__internal_syscall>
   106a6:	842a                	mv	s0,a0
   106a8:	858a                	mv	a1,sp
   106aa:	8526                	mv	a0,s1
   106ac:	00000097          	auipc	ra,0x0
   106b0:	e4c080e7          	jalr	-436(ra) # 104f8 <conv_stat>
   106b4:	0004051b          	sext.w	a0,s0
   106b8:	60ea                	ld	ra,152(sp)
   106ba:	644a                	ld	s0,144(sp)
   106bc:	64aa                	ld	s1,136(sp)
   106be:	610d                	addi	sp,sp,160
   106c0:	8082                	ret

00000000000106c2 <access>:
   106c2:	1141                	addi	sp,sp,-16
   106c4:	862e                	mv	a2,a1
   106c6:	4701                	li	a4,0
   106c8:	85aa                	mv	a1,a0
   106ca:	4681                	li	a3,0
   106cc:	40900513          	li	a0,1033
   106d0:	e406                	sd	ra,8(sp)
   106d2:	e89ff0ef          	jal	ra,1055a <__internal_syscall>
   106d6:	60a2                	ld	ra,8(sp)
   106d8:	2501                	sext.w	a0,a0
   106da:	0141                	addi	sp,sp,16
   106dc:	8082                	ret

00000000000106de <faccessat>:
   106de:	1141                	addi	sp,sp,-16
   106e0:	8736                	mv	a4,a3
   106e2:	86b2                	mv	a3,a2
   106e4:	862e                	mv	a2,a1
   106e6:	85aa                	mv	a1,a0
   106e8:	03000513          	li	a0,48
   106ec:	e406                	sd	ra,8(sp)
   106ee:	00000097          	auipc	ra,0x0
   106f2:	e6c080e7          	jalr	-404(ra) # 1055a <__internal_syscall>
   106f6:	60a2                	ld	ra,8(sp)
   106f8:	2501                	sext.w	a0,a0
   106fa:	0141                	addi	sp,sp,16
   106fc:	8082                	ret

00000000000106fe <close>:
   106fe:	1141                	addi	sp,sp,-16
   10700:	85aa                	mv	a1,a0
   10702:	4701                	li	a4,0
   10704:	4681                	li	a3,0
   10706:	4601                	li	a2,0
   10708:	03900513          	li	a0,57
   1070c:	e406                	sd	ra,8(sp)
   1070e:	e4dff0ef          	jal	ra,1055a <__internal_syscall>
   10712:	60a2                	ld	ra,8(sp)
   10714:	2501                	sext.w	a0,a0
   10716:	0141                	addi	sp,sp,16
   10718:	8082                	ret

000000000001071a <link>:
   1071a:	1141                	addi	sp,sp,-16
   1071c:	862e                	mv	a2,a1
   1071e:	4701                	li	a4,0
   10720:	85aa                	mv	a1,a0
   10722:	4681                	li	a3,0
   10724:	40100513          	li	a0,1025
   10728:	e406                	sd	ra,8(sp)
   1072a:	00000097          	auipc	ra,0x0
   1072e:	e30080e7          	jalr	-464(ra) # 1055a <__internal_syscall>
   10732:	60a2                	ld	ra,8(sp)
   10734:	2501                	sext.w	a0,a0
   10736:	0141                	addi	sp,sp,16
   10738:	8082                	ret

000000000001073a <unlink>:
   1073a:	1141                	addi	sp,sp,-16
   1073c:	85aa                	mv	a1,a0
   1073e:	4701                	li	a4,0
   10740:	4681                	li	a3,0
   10742:	4601                	li	a2,0
   10744:	40200513          	li	a0,1026
   10748:	e406                	sd	ra,8(sp)
   1074a:	e11ff0ef          	jal	ra,1055a <__internal_syscall>
   1074e:	60a2                	ld	ra,8(sp)
   10750:	2501                	sext.w	a0,a0
   10752:	0141                	addi	sp,sp,16
   10754:	8082                	ret

0000000000010756 <execve>:
   10756:	1141                	addi	sp,sp,-16
   10758:	e406                	sd	ra,8(sp)
   1075a:	00000097          	auipc	ra,0x0
   1075e:	1a2080e7          	jalr	418(ra) # 108fc <__errno>
   10762:	60a2                	ld	ra,8(sp)
   10764:	47b1                	li	a5,12
   10766:	c11c                	sw	a5,0(a0)
   10768:	557d                	li	a0,-1
   1076a:	0141                	addi	sp,sp,16
   1076c:	8082                	ret

000000000001076e <fork>:
   1076e:	1141                	addi	sp,sp,-16
   10770:	e406                	sd	ra,8(sp)
   10772:	18a000ef          	jal	ra,108fc <__errno>
   10776:	60a2                	ld	ra,8(sp)
   10778:	47ad                	li	a5,11
   1077a:	c11c                	sw	a5,0(a0)
   1077c:	557d                	li	a0,-1
   1077e:	0141                	addi	sp,sp,16
   10780:	8082                	ret

0000000000010782 <getpid>:
   10782:	4505                	li	a0,1
   10784:	8082                	ret

0000000000010786 <kill>:
   10786:	1141                	addi	sp,sp,-16
   10788:	e406                	sd	ra,8(sp)
   1078a:	172000ef          	jal	ra,108fc <__errno>
   1078e:	60a2                	ld	ra,8(sp)
   10790:	47d9                	li	a5,22
   10792:	c11c                	sw	a5,0(a0)
   10794:	557d                	li	a0,-1
   10796:	0141                	addi	sp,sp,16
   10798:	8082                	ret

000000000001079a <wait>:
   1079a:	1141                	addi	sp,sp,-16
   1079c:	e406                	sd	ra,8(sp)
   1079e:	00000097          	auipc	ra,0x0
   107a2:	15e080e7          	jalr	350(ra) # 108fc <__errno>
   107a6:	60a2                	ld	ra,8(sp)
   107a8:	47a9                	li	a5,10
   107aa:	c11c                	sw	a5,0(a0)
   107ac:	557d                	li	a0,-1
   107ae:	0141                	addi	sp,sp,16
   107b0:	8082                	ret

00000000000107b2 <isatty>:
   107b2:	7119                	addi	sp,sp,-128
   107b4:	002c                	addi	a1,sp,8
   107b6:	fc86                	sd	ra,120(sp)
   107b8:	e33ff0ef          	jal	ra,105ea <fstat>
   107bc:	57fd                	li	a5,-1
   107be:	00f50663          	beq	a0,a5,107ca <isatty+0x18>
   107c2:	4532                	lw	a0,12(sp)
   107c4:	40d5551b          	sraiw	a0,a0,0xd
   107c8:	8905                	andi	a0,a0,1
   107ca:	70e6                	ld	ra,120(sp)
   107cc:	6109                	addi	sp,sp,128
   107ce:	8082                	ret

00000000000107d0 <gettimeofday>:
   107d0:	1141                	addi	sp,sp,-16
   107d2:	85aa                	mv	a1,a0
   107d4:	4701                	li	a4,0
   107d6:	4681                	li	a3,0
   107d8:	4601                	li	a2,0
   107da:	0a900513          	li	a0,169
   107de:	e406                	sd	ra,8(sp)
   107e0:	00000097          	auipc	ra,0x0
   107e4:	d7a080e7          	jalr	-646(ra) # 1055a <__internal_syscall>
   107e8:	60a2                	ld	ra,8(sp)
   107ea:	2501                	sext.w	a0,a0
   107ec:	0141                	addi	sp,sp,16
   107ee:	8082                	ret

00000000000107f0 <times>:
   107f0:	7179                	addi	sp,sp,-48
   107f2:	f022                	sd	s0,32(sp)
   107f4:	842a                	mv	s0,a0
   107f6:	8681b783          	ld	a5,-1944(gp) # 117c0 <t0.2574>
   107fa:	ec26                	sd	s1,24(sp)
   107fc:	f406                	sd	ra,40(sp)
   107fe:	86818493          	addi	s1,gp,-1944 # 117c0 <t0.2574>
   10802:	eb81                	bnez	a5,10812 <times+0x22>
   10804:	4581                	li	a1,0
   10806:	86818513          	addi	a0,gp,-1944 # 117c0 <t0.2574>
   1080a:	00000097          	auipc	ra,0x0
   1080e:	fc6080e7          	jalr	-58(ra) # 107d0 <gettimeofday>
   10812:	850a                	mv	a0,sp
   10814:	4581                	li	a1,0
   10816:	00000097          	auipc	ra,0x0
   1081a:	fba080e7          	jalr	-70(ra) # 107d0 <gettimeofday>
   1081e:	6098                	ld	a4,0(s1)
   10820:	6782                	ld	a5,0(sp)
   10822:	6494                	ld	a3,8(s1)
   10824:	00043823          	sd	zero,16(s0)
   10828:	8f99                	sub	a5,a5,a4
   1082a:	000f4737          	lui	a4,0xf4
   1082e:	24070713          	addi	a4,a4,576 # f4240 <__global_pointer$+0xe22e8>
   10832:	02e787b3          	mul	a5,a5,a4
   10836:	6722                	ld	a4,8(sp)
   10838:	00043c23          	sd	zero,24(s0)
   1083c:	00043423          	sd	zero,8(s0)
   10840:	8f15                	sub	a4,a4,a3
   10842:	70a2                	ld	ra,40(sp)
   10844:	64e2                	ld	s1,24(sp)
   10846:	557d                	li	a0,-1
   10848:	97ba                	add	a5,a5,a4
   1084a:	e01c                	sd	a5,0(s0)
   1084c:	7402                	ld	s0,32(sp)
   1084e:	6145                	addi	sp,sp,48
   10850:	8082                	ret

0000000000010852 <ftime>:
   10852:	00051423          	sh	zero,8(a0)
   10856:	00053023          	sd	zero,0(a0)
   1085a:	4501                	li	a0,0
   1085c:	8082                	ret

000000000001085e <utime>:
   1085e:	557d                	li	a0,-1
   10860:	8082                	ret

0000000000010862 <chown>:
   10862:	557d                	li	a0,-1
   10864:	8082                	ret

0000000000010866 <chmod>:
   10866:	557d                	li	a0,-1
   10868:	8082                	ret

000000000001086a <chdir>:
   1086a:	557d                	li	a0,-1
   1086c:	8082                	ret

000000000001086e <getcwd>:
   1086e:	4501                	li	a0,0
   10870:	8082                	ret

0000000000010872 <sysconf>:
   10872:	4789                	li	a5,2
   10874:	00f50463          	beq	a0,a5,1087c <sysconf+0xa>
   10878:	557d                	li	a0,-1
   1087a:	8082                	ret
   1087c:	000f4537          	lui	a0,0xf4
   10880:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22e8>
   10884:	8082                	ret

0000000000010886 <sbrk>:
   10886:	1101                	addi	sp,sp,-32
   10888:	e822                	sd	s0,16(sp)
   1088a:	8281b783          	ld	a5,-2008(gp) # 11780 <heap_end.2611>
   1088e:	e426                	sd	s1,8(sp)
   10890:	ec06                	sd	ra,24(sp)
   10892:	84aa                	mv	s1,a0
   10894:	e785                	bnez	a5,108bc <sbrk+0x36>
   10896:	4701                	li	a4,0
   10898:	4681                	li	a3,0
   1089a:	4601                	li	a2,0
   1089c:	4581                	li	a1,0
   1089e:	0d600513          	li	a0,214
   108a2:	cb9ff0ef          	jal	ra,1055a <__internal_syscall>
   108a6:	57fd                	li	a5,-1
   108a8:	00f51863          	bne	a0,a5,108b8 <sbrk+0x32>
   108ac:	557d                	li	a0,-1
   108ae:	60e2                	ld	ra,24(sp)
   108b0:	6442                	ld	s0,16(sp)
   108b2:	64a2                	ld	s1,8(sp)
   108b4:	6105                	addi	sp,sp,32
   108b6:	8082                	ret
   108b8:	82a1b423          	sd	a0,-2008(gp) # 11780 <heap_end.2611>
   108bc:	8281b583          	ld	a1,-2008(gp) # 11780 <heap_end.2611>
   108c0:	4701                	li	a4,0
   108c2:	4681                	li	a3,0
   108c4:	95a6                	add	a1,a1,s1
   108c6:	4601                	li	a2,0
   108c8:	0d600513          	li	a0,214
   108cc:	c8fff0ef          	jal	ra,1055a <__internal_syscall>
   108d0:	8281b783          	ld	a5,-2008(gp) # 11780 <heap_end.2611>
   108d4:	94be                	add	s1,s1,a5
   108d6:	fc951be3          	bne	a0,s1,108ac <sbrk+0x26>
   108da:	82a1b423          	sd	a0,-2008(gp) # 11780 <heap_end.2611>
   108de:	853e                	mv	a0,a5
   108e0:	b7f9                	j	108ae <sbrk+0x28>

00000000000108e2 <_exit>:
   108e2:	1141                	addi	sp,sp,-16
   108e4:	85aa                	mv	a1,a0
   108e6:	4701                	li	a4,0
   108e8:	4681                	li	a3,0
   108ea:	4601                	li	a2,0
   108ec:	05d00513          	li	a0,93
   108f0:	e406                	sd	ra,8(sp)
   108f2:	00000097          	auipc	ra,0x0
   108f6:	c68080e7          	jalr	-920(ra) # 1055a <__internal_syscall>
   108fa:	a001                	j	108fa <_exit+0x18>

00000000000108fc <__errno>:
   108fc:	8181b503          	ld	a0,-2024(gp) # 11770 <_impure_ptr>
   10900:	8082                	ret
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
   10924:	f888                	sd	a0,48(s1)
   10926:	ffff                	0xffff
   10928:	00a0                	addi	s0,sp,72
   1092a:	0000                	unimp
   1092c:	4400                	lw	s0,8(s0)
   1092e:	100e                	0x100e
   10930:	8844                	0x8844
   10932:	4402                	lw	s0,0(sp)
   10934:	080c                	addi	a1,sp,16
   10936:	0200                	addi	s0,sp,256
   10938:	c8b4                	sw	a3,80(s1)
   1093a:	0d44                	addi	s1,sp,660
   1093c:	0002                	0x2
	...

0000000000010940 <__FRAME_END__>:
   10940:	0000                	unimp
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

0000000000011760 <b>:
   11760:	0001                	nop
	...

0000000000011764 <c>:
   11764:	0002                	0x2
	...

0000000000011768 <_global_impure_ptr>:
   11768:	1010                	addi	a2,sp,32
   1176a:	0001                	nop
   1176c:	0000                	unimp
	...

0000000000011770 <_impure_ptr>:
   11770:	1010                	addi	a2,sp,32
   11772:	0001                	nop
   11774:	0000                	unimp
	...

Disassembly of section .sbss:

0000000000011778 <a>:
	...

0000000000011780 <heap_end.2611>:
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
