
Test/4:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ec018193          	addi	gp,gp,-320 # 11f70 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11788 <_edata>
   100bc:	87018613          	addi	a2,gp,-1936 # 117e0 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	282000ef          	jal	ra,10346 <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	1c850513          	addi	a0,a0,456 # 10290 <__libc_fini_array>
   100d0:	00000097          	auipc	ra,0x0
   100d4:	18c080e7          	jalr	396(ra) # 1025c <atexit>
   100d8:	00000097          	auipc	ra,0x0
   100dc:	206080e7          	jalr	518(ra) # 102de <__libc_init_array>
   100e0:	4502                	lw	a0,0(sp)
   100e2:	002c                	addi	a1,sp,8
   100e4:	4601                	li	a2,0
   100e6:	00000097          	auipc	ra,0x0
   100ea:	0c6080e7          	jalr	198(ra) # 101ac <main>
   100ee:	00000317          	auipc	t1,0x0
   100f2:	17c30067          	jr	380(t1) # 1026a <exit>

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
   10166:	91850513          	addi	a0,a0,-1768 # 10918 <__EH_FRAME_BEGIN__>
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
   10196:	91850513          	addi	a0,a0,-1768 # 10918 <__EH_FRAME_BEGIN__>
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
   101bc:	fe042623          	sw	zero,-20(s0)
   101c0:	fec42783          	lw	a5,-20(s0)
   101c4:	0007871b          	sext.w	a4,a5
   101c8:	00400793          	li	a5,4
   101cc:	06e7cc63          	blt	a5,a4,10244 <main+0x98>
   101d0:	000117b7          	lui	a5,0x11
   101d4:	fec42703          	lw	a4,-20(s0)
   101d8:	00271713          	slli	a4,a4,0x2
   101dc:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   101e0:	00f707b3          	add	a5,a4,a5
   101e4:	0007a783          	lw	a5,0(a5)
   101e8:	fec42703          	lw	a4,-20(s0)
   101ec:	02f707bb          	mulw	a5,a4,a5
   101f0:	0007871b          	sext.w	a4,a5
   101f4:	000117b7          	lui	a5,0x11
   101f8:	fec42683          	lw	a3,-20(s0)
   101fc:	00269693          	slli	a3,a3,0x2
   10200:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   10204:	00f687b3          	add	a5,a3,a5
   10208:	00e7a023          	sw	a4,0(a5)
   1020c:	000117b7          	lui	a5,0x11
   10210:	fec42703          	lw	a4,-20(s0)
   10214:	00271713          	slli	a4,a4,0x2
   10218:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   1021c:	00f707b3          	add	a5,a4,a5
   10220:	0007a703          	lw	a4,0(a5)
   10224:	8181a783          	lw	a5,-2024(gp) # 11788 <_edata>
   10228:	00f707bb          	addw	a5,a4,a5
   1022c:	0007871b          	sext.w	a4,a5
   10230:	80e1ac23          	sw	a4,-2024(gp) # 11788 <_edata>
   10234:	fec42783          	lw	a5,-20(s0)
   10238:	0017879b          	addiw	a5,a5,1
   1023c:	fef42623          	sw	a5,-20(s0)
   10240:	f81ff06f          	j	101c0 <main+0x14>
   10244:	00000793          	li	a5,0
   10248:	00078513          	mv	a0,a5
   1024c:	01813403          	ld	s0,24(sp)
   10250:	02010113          	addi	sp,sp,32
   10254:	00008067          	ret
   10258:	0000                	unimp
	...

000000000001025c <atexit>:
   1025c:	85aa                	mv	a1,a0
   1025e:	4681                	li	a3,0
   10260:	4601                	li	a2,0
   10262:	4501                	li	a0,0
   10264:	18c0006f          	j	103f0 <__register_exitproc>
	...

000000000001026a <exit>:
   1026a:	1141                	addi	sp,sp,-16
   1026c:	4581                	li	a1,0
   1026e:	e022                	sd	s0,0(sp)
   10270:	e406                	sd	ra,8(sp)
   10272:	842a                	mv	s0,a0
   10274:	1e4000ef          	jal	ra,10458 <__call_exitprocs>
   10278:	67c5                	lui	a5,0x11
   1027a:	7787b503          	ld	a0,1912(a5) # 11778 <_global_impure_ptr>
   1027e:	6d3c                	ld	a5,88(a0)
   10280:	c391                	beqz	a5,10284 <exit+0x1a>
   10282:	9782                	jalr	a5
   10284:	8522                	mv	a0,s0
   10286:	00000097          	auipc	ra,0x0
   1028a:	66e080e7          	jalr	1646(ra) # 108f4 <_exit>
	...

0000000000010290 <__libc_fini_array>:
   10290:	7179                	addi	sp,sp,-48
   10292:	67c5                	lui	a5,0x11
   10294:	6745                	lui	a4,0x11
   10296:	f022                	sd	s0,32(sp)
   10298:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   1029c:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   102a0:	8c19                	sub	s0,s0,a4
   102a2:	ec26                	sd	s1,24(sp)
   102a4:	e84a                	sd	s2,16(sp)
   102a6:	e44e                	sd	s3,8(sp)
   102a8:	f406                	sd	ra,40(sp)
   102aa:	840d                	srai	s0,s0,0x3
   102ac:	4481                	li	s1,0
   102ae:	01078913          	addi	s2,a5,16
   102b2:	59e1                	li	s3,-8
   102b4:	00941c63          	bne	s0,s1,102cc <__libc_fini_array+0x3c>
   102b8:	7402                	ld	s0,32(sp)
   102ba:	70a2                	ld	ra,40(sp)
   102bc:	64e2                	ld	s1,24(sp)
   102be:	6942                	ld	s2,16(sp)
   102c0:	69a2                	ld	s3,8(sp)
   102c2:	6145                	addi	sp,sp,48
   102c4:	00000317          	auipc	t1,0x0
   102c8:	e3230067          	jr	-462(t1) # 100f6 <_fini>
   102cc:	033487b3          	mul	a5,s1,s3
   102d0:	0485                	addi	s1,s1,1
   102d2:	97ca                	add	a5,a5,s2
   102d4:	ff87b783          	ld	a5,-8(a5)
   102d8:	9782                	jalr	a5
   102da:	bfe9                	j	102b4 <__libc_fini_array+0x24>
	...

00000000000102de <__libc_init_array>:
   102de:	1101                	addi	sp,sp,-32
   102e0:	e822                	sd	s0,16(sp)
   102e2:	e426                	sd	s1,8(sp)
   102e4:	6445                	lui	s0,0x11
   102e6:	64c5                	lui	s1,0x11
   102e8:	00048793          	mv	a5,s1
   102ec:	00040413          	mv	s0,s0
   102f0:	8c1d                	sub	s0,s0,a5
   102f2:	e04a                	sd	s2,0(sp)
   102f4:	ec06                	sd	ra,24(sp)
   102f6:	840d                	srai	s0,s0,0x3
   102f8:	00048493          	mv	s1,s1
   102fc:	4901                	li	s2,0
   102fe:	02891963          	bne	s2,s0,10330 <__libc_init_array+0x52>
   10302:	64c5                	lui	s1,0x11
   10304:	00000097          	auipc	ra,0x0
   10308:	df2080e7          	jalr	-526(ra) # 100f6 <_fini>
   1030c:	6445                	lui	s0,0x11
   1030e:	00048793          	mv	a5,s1
   10312:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   10316:	8c1d                	sub	s0,s0,a5
   10318:	840d                	srai	s0,s0,0x3
   1031a:	00048493          	mv	s1,s1
   1031e:	4901                	li	s2,0
   10320:	00891d63          	bne	s2,s0,1033a <__libc_init_array+0x5c>
   10324:	60e2                	ld	ra,24(sp)
   10326:	6442                	ld	s0,16(sp)
   10328:	64a2                	ld	s1,8(sp)
   1032a:	6902                	ld	s2,0(sp)
   1032c:	6105                	addi	sp,sp,32
   1032e:	8082                	ret
   10330:	609c                	ld	a5,0(s1)
   10332:	0905                	addi	s2,s2,1
   10334:	04a1                	addi	s1,s1,8
   10336:	9782                	jalr	a5
   10338:	b7d9                	j	102fe <__libc_init_array+0x20>
   1033a:	609c                	ld	a5,0(s1)
   1033c:	0905                	addi	s2,s2,1
   1033e:	04a1                	addi	s1,s1,8
   10340:	9782                	jalr	a5
   10342:	bff9                	j	10320 <__libc_init_array+0x42>
	...

0000000000010346 <memset>:
   10346:	483d                	li	a6,15
   10348:	872a                	mv	a4,a0
   1034a:	02c87163          	bleu	a2,a6,1036c <memset+0x26>
   1034e:	00f77793          	andi	a5,a4,15
   10352:	e3c1                	bnez	a5,103d2 <memset+0x8c>
   10354:	e1bd                	bnez	a1,103ba <memset+0x74>
   10356:	ff067693          	andi	a3,a2,-16
   1035a:	8a3d                	andi	a2,a2,15
   1035c:	96ba                	add	a3,a3,a4
   1035e:	e30c                	sd	a1,0(a4)
   10360:	e70c                	sd	a1,8(a4)
   10362:	0741                	addi	a4,a4,16
   10364:	fed76de3          	bltu	a4,a3,1035e <memset+0x18>
   10368:	e211                	bnez	a2,1036c <memset+0x26>
   1036a:	8082                	ret
   1036c:	40c806b3          	sub	a3,a6,a2
   10370:	068a                	slli	a3,a3,0x2
   10372:	00000297          	auipc	t0,0x0
   10376:	9696                	add	a3,a3,t0
   10378:	00a68067          	jr	10(a3)
   1037c:	00b70723          	sb	a1,14(a4)
   10380:	00b706a3          	sb	a1,13(a4)
   10384:	00b70623          	sb	a1,12(a4)
   10388:	00b705a3          	sb	a1,11(a4)
   1038c:	00b70523          	sb	a1,10(a4)
   10390:	00b704a3          	sb	a1,9(a4)
   10394:	00b70423          	sb	a1,8(a4)
   10398:	00b703a3          	sb	a1,7(a4)
   1039c:	00b70323          	sb	a1,6(a4)
   103a0:	00b702a3          	sb	a1,5(a4)
   103a4:	00b70223          	sb	a1,4(a4)
   103a8:	00b701a3          	sb	a1,3(a4)
   103ac:	00b70123          	sb	a1,2(a4)
   103b0:	00b700a3          	sb	a1,1(a4)
   103b4:	00b70023          	sb	a1,0(a4)
   103b8:	8082                	ret
   103ba:	0ff5f593          	andi	a1,a1,255
   103be:	00859693          	slli	a3,a1,0x8
   103c2:	8dd5                	or	a1,a1,a3
   103c4:	01059693          	slli	a3,a1,0x10
   103c8:	8dd5                	or	a1,a1,a3
   103ca:	02059693          	slli	a3,a1,0x20
   103ce:	8dd5                	or	a1,a1,a3
   103d0:	b759                	j	10356 <memset+0x10>
   103d2:	00279693          	slli	a3,a5,0x2
   103d6:	00000297          	auipc	t0,0x0
   103da:	9696                	add	a3,a3,t0
   103dc:	8286                	mv	t0,ra
   103de:	fa2680e7          	jalr	-94(a3)
   103e2:	8096                	mv	ra,t0
   103e4:	17c1                	addi	a5,a5,-16
   103e6:	8f1d                	sub	a4,a4,a5
   103e8:	963e                	add	a2,a2,a5
   103ea:	f8c871e3          	bleu	a2,a6,1036c <memset+0x26>
   103ee:	b79d                	j	10354 <memset+0xe>

00000000000103f0 <__register_exitproc>:
   103f0:	67c5                	lui	a5,0x11
   103f2:	7787b703          	ld	a4,1912(a5) # 11778 <_global_impure_ptr>
   103f6:	832a                	mv	t1,a0
   103f8:	1f873783          	ld	a5,504(a4)
   103fc:	e789                	bnez	a5,10406 <__register_exitproc+0x16>
   103fe:	20070793          	addi	a5,a4,512
   10402:	1ef73c23          	sd	a5,504(a4)
   10406:	4798                	lw	a4,8(a5)
   10408:	487d                	li	a6,31
   1040a:	557d                	li	a0,-1
   1040c:	04e84463          	blt	a6,a4,10454 <__register_exitproc+0x64>
   10410:	02030a63          	beqz	t1,10444 <__register_exitproc+0x54>
   10414:	00371813          	slli	a6,a4,0x3
   10418:	983e                	add	a6,a6,a5
   1041a:	10c83823          	sd	a2,272(a6)
   1041e:	3107a883          	lw	a7,784(a5)
   10422:	4605                	li	a2,1
   10424:	00e6163b          	sllw	a2,a2,a4
   10428:	00c8e8b3          	or	a7,a7,a2
   1042c:	3117a823          	sw	a7,784(a5)
   10430:	20d83823          	sd	a3,528(a6)
   10434:	4689                	li	a3,2
   10436:	00d31763          	bne	t1,a3,10444 <__register_exitproc+0x54>
   1043a:	3147a683          	lw	a3,788(a5)
   1043e:	8e55                	or	a2,a2,a3
   10440:	30c7aa23          	sw	a2,788(a5)
   10444:	0017069b          	addiw	a3,a4,1
   10448:	0709                	addi	a4,a4,2
   1044a:	070e                	slli	a4,a4,0x3
   1044c:	c794                	sw	a3,8(a5)
   1044e:	97ba                	add	a5,a5,a4
   10450:	e38c                	sd	a1,0(a5)
   10452:	4501                	li	a0,0
   10454:	8082                	ret
	...

0000000000010458 <__call_exitprocs>:
   10458:	715d                	addi	sp,sp,-80
   1045a:	67c5                	lui	a5,0x11
   1045c:	f44e                	sd	s3,40(sp)
   1045e:	7787b983          	ld	s3,1912(a5) # 11778 <_global_impure_ptr>
   10462:	f052                	sd	s4,32(sp)
   10464:	ec56                	sd	s5,24(sp)
   10466:	e85a                	sd	s6,16(sp)
   10468:	e486                	sd	ra,72(sp)
   1046a:	e0a2                	sd	s0,64(sp)
   1046c:	fc26                	sd	s1,56(sp)
   1046e:	f84a                	sd	s2,48(sp)
   10470:	e45e                	sd	s7,8(sp)
   10472:	8aaa                	mv	s5,a0
   10474:	8a2e                	mv	s4,a1
   10476:	4b05                	li	s6,1
   10478:	1f89b403          	ld	s0,504(s3)
   1047c:	c801                	beqz	s0,1048c <__call_exitprocs+0x34>
   1047e:	4404                	lw	s1,8(s0)
   10480:	34fd                	addiw	s1,s1,-1
   10482:	00349913          	slli	s2,s1,0x3
   10486:	9922                	add	s2,s2,s0
   10488:	0004dd63          	bgez	s1,104a2 <__call_exitprocs+0x4a>
   1048c:	60a6                	ld	ra,72(sp)
   1048e:	6406                	ld	s0,64(sp)
   10490:	74e2                	ld	s1,56(sp)
   10492:	7942                	ld	s2,48(sp)
   10494:	79a2                	ld	s3,40(sp)
   10496:	7a02                	ld	s4,32(sp)
   10498:	6ae2                	ld	s5,24(sp)
   1049a:	6b42                	ld	s6,16(sp)
   1049c:	6ba2                	ld	s7,8(sp)
   1049e:	6161                	addi	sp,sp,80
   104a0:	8082                	ret
   104a2:	000a0963          	beqz	s4,104b4 <__call_exitprocs+0x5c>
   104a6:	21093783          	ld	a5,528(s2)
   104aa:	01478563          	beq	a5,s4,104b4 <__call_exitprocs+0x5c>
   104ae:	34fd                	addiw	s1,s1,-1
   104b0:	1961                	addi	s2,s2,-8
   104b2:	bfd9                	j	10488 <__call_exitprocs+0x30>
   104b4:	441c                	lw	a5,8(s0)
   104b6:	01093683          	ld	a3,16(s2)
   104ba:	37fd                	addiw	a5,a5,-1
   104bc:	02979663          	bne	a5,s1,104e8 <__call_exitprocs+0x90>
   104c0:	c404                	sw	s1,8(s0)
   104c2:	d6f5                	beqz	a3,104ae <__call_exitprocs+0x56>
   104c4:	31042703          	lw	a4,784(s0)
   104c8:	009b163b          	sllw	a2,s6,s1
   104cc:	00842b83          	lw	s7,8(s0)
   104d0:	8f71                	and	a4,a4,a2
   104d2:	2701                	sext.w	a4,a4
   104d4:	ef09                	bnez	a4,104ee <__call_exitprocs+0x96>
   104d6:	9682                	jalr	a3
   104d8:	4418                	lw	a4,8(s0)
   104da:	1f89b783          	ld	a5,504(s3)
   104de:	f9771de3          	bne	a4,s7,10478 <__call_exitprocs+0x20>
   104e2:	fcf406e3          	beq	s0,a5,104ae <__call_exitprocs+0x56>
   104e6:	bf49                	j	10478 <__call_exitprocs+0x20>
   104e8:	00093823          	sd	zero,16(s2)
   104ec:	bfd9                	j	104c2 <__call_exitprocs+0x6a>
   104ee:	31442783          	lw	a5,788(s0)
   104f2:	11093583          	ld	a1,272(s2)
   104f6:	8ff1                	and	a5,a5,a2
   104f8:	2781                	sext.w	a5,a5
   104fa:	e781                	bnez	a5,10502 <__call_exitprocs+0xaa>
   104fc:	8556                	mv	a0,s5
   104fe:	9682                	jalr	a3
   10500:	bfe1                	j	104d8 <__call_exitprocs+0x80>
   10502:	852e                	mv	a0,a1
   10504:	9682                	jalr	a3
   10506:	bfc9                	j	104d8 <__call_exitprocs+0x80>
	...

000000000001050a <conv_stat>:
   1050a:	619c                	ld	a5,0(a1)
   1050c:	00f51023          	sh	a5,0(a0)
   10510:	659c                	ld	a5,8(a1)
   10512:	00f51123          	sh	a5,2(a0)
   10516:	499c                	lw	a5,16(a1)
   10518:	c15c                	sw	a5,4(a0)
   1051a:	49dc                	lw	a5,20(a1)
   1051c:	00f51423          	sh	a5,8(a0)
   10520:	4d9c                	lw	a5,24(a1)
   10522:	00f51523          	sh	a5,10(a0)
   10526:	4ddc                	lw	a5,28(a1)
   10528:	00f51623          	sh	a5,12(a0)
   1052c:	719c                	ld	a5,32(a1)
   1052e:	00f51723          	sh	a5,14(a0)
   10532:	799c                	ld	a5,48(a1)
   10534:	e91c                	sd	a5,16(a0)
   10536:	61bc                	ld	a5,64(a1)
   10538:	e93c                	sd	a5,80(a0)
   1053a:	5d9c                	lw	a5,56(a1)
   1053c:	e53c                	sd	a5,72(a0)
   1053e:	65bc                	ld	a5,72(a1)
   10540:	ed1c                	sd	a5,24(a0)
   10542:	6dbc                	ld	a5,88(a1)
   10544:	f51c                	sd	a5,40(a0)
   10546:	75bc                	ld	a5,104(a1)
   10548:	fd1c                	sd	a5,56(a0)
   1054a:	8082                	ret

000000000001054c <__syscall_error>:
   1054c:	1141                	addi	sp,sp,-16
   1054e:	e022                	sd	s0,0(sp)
   10550:	e406                	sd	ra,8(sp)
   10552:	842a                	mv	s0,a0
   10554:	00000097          	auipc	ra,0x0
   10558:	3ba080e7          	jalr	954(ra) # 1090e <__errno>
   1055c:	408007bb          	negw	a5,s0
   10560:	60a2                	ld	ra,8(sp)
   10562:	6402                	ld	s0,0(sp)
   10564:	c11c                	sw	a5,0(a0)
   10566:	557d                	li	a0,-1
   10568:	0141                	addi	sp,sp,16
   1056a:	8082                	ret

000000000001056c <__internal_syscall>:
   1056c:	88aa                	mv	a7,a0
   1056e:	852e                	mv	a0,a1
   10570:	85b2                	mv	a1,a2
   10572:	8636                	mv	a2,a3
   10574:	86ba                	mv	a3,a4
   10576:	00000073          	ecall
   1057a:	00055663          	bgez	a0,10586 <__internal_syscall+0x1a>
   1057e:	00000317          	auipc	t1,0x0
   10582:	fce30067          	jr	-50(t1) # 1054c <__syscall_error>
   10586:	8082                	ret

0000000000010588 <open>:
   10588:	1141                	addi	sp,sp,-16
   1058a:	86b2                	mv	a3,a2
   1058c:	4701                	li	a4,0
   1058e:	862e                	mv	a2,a1
   10590:	85aa                	mv	a1,a0
   10592:	40000513          	li	a0,1024
   10596:	e406                	sd	ra,8(sp)
   10598:	00000097          	auipc	ra,0x0
   1059c:	fd4080e7          	jalr	-44(ra) # 1056c <__internal_syscall>
   105a0:	60a2                	ld	ra,8(sp)
   105a2:	2501                	sext.w	a0,a0
   105a4:	0141                	addi	sp,sp,16
   105a6:	8082                	ret

00000000000105a8 <openat>:
   105a8:	1141                	addi	sp,sp,-16
   105aa:	8736                	mv	a4,a3
   105ac:	86b2                	mv	a3,a2
   105ae:	862e                	mv	a2,a1
   105b0:	85aa                	mv	a1,a0
   105b2:	03800513          	li	a0,56
   105b6:	e406                	sd	ra,8(sp)
   105b8:	fb5ff0ef          	jal	ra,1056c <__internal_syscall>
   105bc:	60a2                	ld	ra,8(sp)
   105be:	2501                	sext.w	a0,a0
   105c0:	0141                	addi	sp,sp,16
   105c2:	8082                	ret

00000000000105c4 <lseek>:
   105c4:	86b2                	mv	a3,a2
   105c6:	4701                	li	a4,0
   105c8:	862e                	mv	a2,a1
   105ca:	85aa                	mv	a1,a0
   105cc:	03e00513          	li	a0,62
   105d0:	00000317          	auipc	t1,0x0
   105d4:	f9c30067          	jr	-100(t1) # 1056c <__internal_syscall>

00000000000105d8 <read>:
   105d8:	86b2                	mv	a3,a2
   105da:	4701                	li	a4,0
   105dc:	862e                	mv	a2,a1
   105de:	85aa                	mv	a1,a0
   105e0:	03f00513          	li	a0,63
   105e4:	f89ff06f          	j	1056c <__internal_syscall>

00000000000105e8 <write>:
   105e8:	86b2                	mv	a3,a2
   105ea:	4701                	li	a4,0
   105ec:	862e                	mv	a2,a1
   105ee:	85aa                	mv	a1,a0
   105f0:	04000513          	li	a0,64
   105f4:	00000317          	auipc	t1,0x0
   105f8:	f7830067          	jr	-136(t1) # 1056c <__internal_syscall>

00000000000105fc <fstat>:
   105fc:	7135                	addi	sp,sp,-160
   105fe:	e526                	sd	s1,136(sp)
   10600:	860a                	mv	a2,sp
   10602:	84ae                	mv	s1,a1
   10604:	4701                	li	a4,0
   10606:	85aa                	mv	a1,a0
   10608:	4681                	li	a3,0
   1060a:	05000513          	li	a0,80
   1060e:	ed06                	sd	ra,152(sp)
   10610:	e922                	sd	s0,144(sp)
   10612:	f5bff0ef          	jal	ra,1056c <__internal_syscall>
   10616:	842a                	mv	s0,a0
   10618:	858a                	mv	a1,sp
   1061a:	8526                	mv	a0,s1
   1061c:	eefff0ef          	jal	ra,1050a <conv_stat>
   10620:	0004051b          	sext.w	a0,s0
   10624:	60ea                	ld	ra,152(sp)
   10626:	644a                	ld	s0,144(sp)
   10628:	64aa                	ld	s1,136(sp)
   1062a:	610d                	addi	sp,sp,160
   1062c:	8082                	ret

000000000001062e <stat>:
   1062e:	7135                	addi	sp,sp,-160
   10630:	e526                	sd	s1,136(sp)
   10632:	860a                	mv	a2,sp
   10634:	84ae                	mv	s1,a1
   10636:	4701                	li	a4,0
   10638:	85aa                	mv	a1,a0
   1063a:	4681                	li	a3,0
   1063c:	40e00513          	li	a0,1038
   10640:	ed06                	sd	ra,152(sp)
   10642:	e922                	sd	s0,144(sp)
   10644:	00000097          	auipc	ra,0x0
   10648:	f28080e7          	jalr	-216(ra) # 1056c <__internal_syscall>
   1064c:	842a                	mv	s0,a0
   1064e:	858a                	mv	a1,sp
   10650:	8526                	mv	a0,s1
   10652:	00000097          	auipc	ra,0x0
   10656:	eb8080e7          	jalr	-328(ra) # 1050a <conv_stat>
   1065a:	0004051b          	sext.w	a0,s0
   1065e:	60ea                	ld	ra,152(sp)
   10660:	644a                	ld	s0,144(sp)
   10662:	64aa                	ld	s1,136(sp)
   10664:	610d                	addi	sp,sp,160
   10666:	8082                	ret

0000000000010668 <lstat>:
   10668:	7135                	addi	sp,sp,-160
   1066a:	e526                	sd	s1,136(sp)
   1066c:	860a                	mv	a2,sp
   1066e:	84ae                	mv	s1,a1
   10670:	4701                	li	a4,0
   10672:	85aa                	mv	a1,a0
   10674:	4681                	li	a3,0
   10676:	40f00513          	li	a0,1039
   1067a:	ed06                	sd	ra,152(sp)
   1067c:	e922                	sd	s0,144(sp)
   1067e:	eefff0ef          	jal	ra,1056c <__internal_syscall>
   10682:	842a                	mv	s0,a0
   10684:	858a                	mv	a1,sp
   10686:	8526                	mv	a0,s1
   10688:	e83ff0ef          	jal	ra,1050a <conv_stat>
   1068c:	0004051b          	sext.w	a0,s0
   10690:	60ea                	ld	ra,152(sp)
   10692:	644a                	ld	s0,144(sp)
   10694:	64aa                	ld	s1,136(sp)
   10696:	610d                	addi	sp,sp,160
   10698:	8082                	ret

000000000001069a <fstatat>:
   1069a:	7135                	addi	sp,sp,-160
   1069c:	e526                	sd	s1,136(sp)
   1069e:	8736                	mv	a4,a3
   106a0:	84b2                	mv	s1,a2
   106a2:	868a                	mv	a3,sp
   106a4:	862e                	mv	a2,a1
   106a6:	85aa                	mv	a1,a0
   106a8:	04f00513          	li	a0,79
   106ac:	ed06                	sd	ra,152(sp)
   106ae:	e922                	sd	s0,144(sp)
   106b0:	00000097          	auipc	ra,0x0
   106b4:	ebc080e7          	jalr	-324(ra) # 1056c <__internal_syscall>
   106b8:	842a                	mv	s0,a0
   106ba:	858a                	mv	a1,sp
   106bc:	8526                	mv	a0,s1
   106be:	00000097          	auipc	ra,0x0
   106c2:	e4c080e7          	jalr	-436(ra) # 1050a <conv_stat>
   106c6:	0004051b          	sext.w	a0,s0
   106ca:	60ea                	ld	ra,152(sp)
   106cc:	644a                	ld	s0,144(sp)
   106ce:	64aa                	ld	s1,136(sp)
   106d0:	610d                	addi	sp,sp,160
   106d2:	8082                	ret

00000000000106d4 <access>:
   106d4:	1141                	addi	sp,sp,-16
   106d6:	862e                	mv	a2,a1
   106d8:	4701                	li	a4,0
   106da:	85aa                	mv	a1,a0
   106dc:	4681                	li	a3,0
   106de:	40900513          	li	a0,1033
   106e2:	e406                	sd	ra,8(sp)
   106e4:	e89ff0ef          	jal	ra,1056c <__internal_syscall>
   106e8:	60a2                	ld	ra,8(sp)
   106ea:	2501                	sext.w	a0,a0
   106ec:	0141                	addi	sp,sp,16
   106ee:	8082                	ret

00000000000106f0 <faccessat>:
   106f0:	1141                	addi	sp,sp,-16
   106f2:	8736                	mv	a4,a3
   106f4:	86b2                	mv	a3,a2
   106f6:	862e                	mv	a2,a1
   106f8:	85aa                	mv	a1,a0
   106fa:	03000513          	li	a0,48
   106fe:	e406                	sd	ra,8(sp)
   10700:	00000097          	auipc	ra,0x0
   10704:	e6c080e7          	jalr	-404(ra) # 1056c <__internal_syscall>
   10708:	60a2                	ld	ra,8(sp)
   1070a:	2501                	sext.w	a0,a0
   1070c:	0141                	addi	sp,sp,16
   1070e:	8082                	ret

0000000000010710 <close>:
   10710:	1141                	addi	sp,sp,-16
   10712:	85aa                	mv	a1,a0
   10714:	4701                	li	a4,0
   10716:	4681                	li	a3,0
   10718:	4601                	li	a2,0
   1071a:	03900513          	li	a0,57
   1071e:	e406                	sd	ra,8(sp)
   10720:	e4dff0ef          	jal	ra,1056c <__internal_syscall>
   10724:	60a2                	ld	ra,8(sp)
   10726:	2501                	sext.w	a0,a0
   10728:	0141                	addi	sp,sp,16
   1072a:	8082                	ret

000000000001072c <link>:
   1072c:	1141                	addi	sp,sp,-16
   1072e:	862e                	mv	a2,a1
   10730:	4701                	li	a4,0
   10732:	85aa                	mv	a1,a0
   10734:	4681                	li	a3,0
   10736:	40100513          	li	a0,1025
   1073a:	e406                	sd	ra,8(sp)
   1073c:	00000097          	auipc	ra,0x0
   10740:	e30080e7          	jalr	-464(ra) # 1056c <__internal_syscall>
   10744:	60a2                	ld	ra,8(sp)
   10746:	2501                	sext.w	a0,a0
   10748:	0141                	addi	sp,sp,16
   1074a:	8082                	ret

000000000001074c <unlink>:
   1074c:	1141                	addi	sp,sp,-16
   1074e:	85aa                	mv	a1,a0
   10750:	4701                	li	a4,0
   10752:	4681                	li	a3,0
   10754:	4601                	li	a2,0
   10756:	40200513          	li	a0,1026
   1075a:	e406                	sd	ra,8(sp)
   1075c:	e11ff0ef          	jal	ra,1056c <__internal_syscall>
   10760:	60a2                	ld	ra,8(sp)
   10762:	2501                	sext.w	a0,a0
   10764:	0141                	addi	sp,sp,16
   10766:	8082                	ret

0000000000010768 <execve>:
   10768:	1141                	addi	sp,sp,-16
   1076a:	e406                	sd	ra,8(sp)
   1076c:	00000097          	auipc	ra,0x0
   10770:	1a2080e7          	jalr	418(ra) # 1090e <__errno>
   10774:	60a2                	ld	ra,8(sp)
   10776:	47b1                	li	a5,12
   10778:	c11c                	sw	a5,0(a0)
   1077a:	557d                	li	a0,-1
   1077c:	0141                	addi	sp,sp,16
   1077e:	8082                	ret

0000000000010780 <fork>:
   10780:	1141                	addi	sp,sp,-16
   10782:	e406                	sd	ra,8(sp)
   10784:	18a000ef          	jal	ra,1090e <__errno>
   10788:	60a2                	ld	ra,8(sp)
   1078a:	47ad                	li	a5,11
   1078c:	c11c                	sw	a5,0(a0)
   1078e:	557d                	li	a0,-1
   10790:	0141                	addi	sp,sp,16
   10792:	8082                	ret

0000000000010794 <getpid>:
   10794:	4505                	li	a0,1
   10796:	8082                	ret

0000000000010798 <kill>:
   10798:	1141                	addi	sp,sp,-16
   1079a:	e406                	sd	ra,8(sp)
   1079c:	172000ef          	jal	ra,1090e <__errno>
   107a0:	60a2                	ld	ra,8(sp)
   107a2:	47d9                	li	a5,22
   107a4:	c11c                	sw	a5,0(a0)
   107a6:	557d                	li	a0,-1
   107a8:	0141                	addi	sp,sp,16
   107aa:	8082                	ret

00000000000107ac <wait>:
   107ac:	1141                	addi	sp,sp,-16
   107ae:	e406                	sd	ra,8(sp)
   107b0:	00000097          	auipc	ra,0x0
   107b4:	15e080e7          	jalr	350(ra) # 1090e <__errno>
   107b8:	60a2                	ld	ra,8(sp)
   107ba:	47a9                	li	a5,10
   107bc:	c11c                	sw	a5,0(a0)
   107be:	557d                	li	a0,-1
   107c0:	0141                	addi	sp,sp,16
   107c2:	8082                	ret

00000000000107c4 <isatty>:
   107c4:	7119                	addi	sp,sp,-128
   107c6:	002c                	addi	a1,sp,8
   107c8:	fc86                	sd	ra,120(sp)
   107ca:	e33ff0ef          	jal	ra,105fc <fstat>
   107ce:	57fd                	li	a5,-1
   107d0:	00f50663          	beq	a0,a5,107dc <isatty+0x18>
   107d4:	4532                	lw	a0,12(sp)
   107d6:	40d5551b          	sraiw	a0,a0,0xd
   107da:	8905                	andi	a0,a0,1
   107dc:	70e6                	ld	ra,120(sp)
   107de:	6109                	addi	sp,sp,128
   107e0:	8082                	ret

00000000000107e2 <gettimeofday>:
   107e2:	1141                	addi	sp,sp,-16
   107e4:	85aa                	mv	a1,a0
   107e6:	4701                	li	a4,0
   107e8:	4681                	li	a3,0
   107ea:	4601                	li	a2,0
   107ec:	0a900513          	li	a0,169
   107f0:	e406                	sd	ra,8(sp)
   107f2:	00000097          	auipc	ra,0x0
   107f6:	d7a080e7          	jalr	-646(ra) # 1056c <__internal_syscall>
   107fa:	60a2                	ld	ra,8(sp)
   107fc:	2501                	sext.w	a0,a0
   107fe:	0141                	addi	sp,sp,16
   10800:	8082                	ret

0000000000010802 <times>:
   10802:	7179                	addi	sp,sp,-48
   10804:	f022                	sd	s0,32(sp)
   10806:	842a                	mv	s0,a0
   10808:	8601b783          	ld	a5,-1952(gp) # 117d0 <t0.2574>
   1080c:	ec26                	sd	s1,24(sp)
   1080e:	f406                	sd	ra,40(sp)
   10810:	86018493          	addi	s1,gp,-1952 # 117d0 <t0.2574>
   10814:	eb81                	bnez	a5,10824 <times+0x22>
   10816:	4581                	li	a1,0
   10818:	86018513          	addi	a0,gp,-1952 # 117d0 <t0.2574>
   1081c:	00000097          	auipc	ra,0x0
   10820:	fc6080e7          	jalr	-58(ra) # 107e2 <gettimeofday>
   10824:	850a                	mv	a0,sp
   10826:	4581                	li	a1,0
   10828:	00000097          	auipc	ra,0x0
   1082c:	fba080e7          	jalr	-70(ra) # 107e2 <gettimeofday>
   10830:	6098                	ld	a4,0(s1)
   10832:	6782                	ld	a5,0(sp)
   10834:	6494                	ld	a3,8(s1)
   10836:	00043823          	sd	zero,16(s0)
   1083a:	8f99                	sub	a5,a5,a4
   1083c:	000f4737          	lui	a4,0xf4
   10840:	24070713          	addi	a4,a4,576 # f4240 <__global_pointer$+0xe22d0>
   10844:	02e787b3          	mul	a5,a5,a4
   10848:	6722                	ld	a4,8(sp)
   1084a:	00043c23          	sd	zero,24(s0)
   1084e:	00043423          	sd	zero,8(s0)
   10852:	8f15                	sub	a4,a4,a3
   10854:	70a2                	ld	ra,40(sp)
   10856:	64e2                	ld	s1,24(sp)
   10858:	557d                	li	a0,-1
   1085a:	97ba                	add	a5,a5,a4
   1085c:	e01c                	sd	a5,0(s0)
   1085e:	7402                	ld	s0,32(sp)
   10860:	6145                	addi	sp,sp,48
   10862:	8082                	ret

0000000000010864 <ftime>:
   10864:	00051423          	sh	zero,8(a0)
   10868:	00053023          	sd	zero,0(a0)
   1086c:	4501                	li	a0,0
   1086e:	8082                	ret

0000000000010870 <utime>:
   10870:	557d                	li	a0,-1
   10872:	8082                	ret

0000000000010874 <chown>:
   10874:	557d                	li	a0,-1
   10876:	8082                	ret

0000000000010878 <chmod>:
   10878:	557d                	li	a0,-1
   1087a:	8082                	ret

000000000001087c <chdir>:
   1087c:	557d                	li	a0,-1
   1087e:	8082                	ret

0000000000010880 <getcwd>:
   10880:	4501                	li	a0,0
   10882:	8082                	ret

0000000000010884 <sysconf>:
   10884:	4789                	li	a5,2
   10886:	00f50463          	beq	a0,a5,1088e <sysconf+0xa>
   1088a:	557d                	li	a0,-1
   1088c:	8082                	ret
   1088e:	000f4537          	lui	a0,0xf4
   10892:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22d0>
   10896:	8082                	ret

0000000000010898 <sbrk>:
   10898:	1101                	addi	sp,sp,-32
   1089a:	e822                	sd	s0,16(sp)
   1089c:	8201b783          	ld	a5,-2016(gp) # 11790 <heap_end.2611>
   108a0:	e426                	sd	s1,8(sp)
   108a2:	ec06                	sd	ra,24(sp)
   108a4:	84aa                	mv	s1,a0
   108a6:	e785                	bnez	a5,108ce <sbrk+0x36>
   108a8:	4701                	li	a4,0
   108aa:	4681                	li	a3,0
   108ac:	4601                	li	a2,0
   108ae:	4581                	li	a1,0
   108b0:	0d600513          	li	a0,214
   108b4:	cb9ff0ef          	jal	ra,1056c <__internal_syscall>
   108b8:	57fd                	li	a5,-1
   108ba:	00f51863          	bne	a0,a5,108ca <sbrk+0x32>
   108be:	557d                	li	a0,-1
   108c0:	60e2                	ld	ra,24(sp)
   108c2:	6442                	ld	s0,16(sp)
   108c4:	64a2                	ld	s1,8(sp)
   108c6:	6105                	addi	sp,sp,32
   108c8:	8082                	ret
   108ca:	82a1b023          	sd	a0,-2016(gp) # 11790 <heap_end.2611>
   108ce:	8201b583          	ld	a1,-2016(gp) # 11790 <heap_end.2611>
   108d2:	4701                	li	a4,0
   108d4:	4681                	li	a3,0
   108d6:	95a6                	add	a1,a1,s1
   108d8:	4601                	li	a2,0
   108da:	0d600513          	li	a0,214
   108de:	c8fff0ef          	jal	ra,1056c <__internal_syscall>
   108e2:	8201b783          	ld	a5,-2016(gp) # 11790 <heap_end.2611>
   108e6:	94be                	add	s1,s1,a5
   108e8:	fc951be3          	bne	a0,s1,108be <sbrk+0x26>
   108ec:	82a1b023          	sd	a0,-2016(gp) # 11790 <heap_end.2611>
   108f0:	853e                	mv	a0,a5
   108f2:	b7f9                	j	108c0 <sbrk+0x28>

00000000000108f4 <_exit>:
   108f4:	1141                	addi	sp,sp,-16
   108f6:	85aa                	mv	a1,a0
   108f8:	4701                	li	a4,0
   108fa:	4681                	li	a3,0
   108fc:	4601                	li	a2,0
   108fe:	05d00513          	li	a0,93
   10902:	e406                	sd	ra,8(sp)
   10904:	00000097          	auipc	ra,0x0
   10908:	c68080e7          	jalr	-920(ra) # 1056c <__internal_syscall>
   1090c:	a001                	j	1090c <_exit+0x18>

000000000001090e <__errno>:
   1090e:	8101b503          	ld	a0,-2032(gp) # 11780 <_impure_ptr>
   10912:	8082                	ret
	...

Disassembly of section .eh_frame:

0000000000010918 <__EH_FRAME_BEGIN__>:
   10918:	0010                	addi	a2,sp,0
   1091a:	0000                	unimp
   1091c:	0000                	unimp
   1091e:	0000                	unimp
   10920:	7a01                	lui	s4,0xfffe0
   10922:	0052                	0x52
   10924:	7c01                	lui	s8,0xfffe0
   10926:	0101                	addi	sp,sp,0
   10928:	00020d1b          	sext.w	s10,tp
   1092c:	0020                	addi	s0,sp,8
   1092e:	0000                	unimp
   10930:	0018                	addi	a4,sp,0
   10932:	0000                	unimp
   10934:	f878                	sd	a4,240(s0)
   10936:	ffff                	0xffff
   10938:	00ac                	addi	a1,sp,72
   1093a:	0000                	unimp
   1093c:	4400                	lw	s0,8(s0)
   1093e:	200e                	fld	ft0,192(sp)
   10940:	8844                	0x8844
   10942:	4402                	lw	s0,0(sp)
   10944:	080c                	addi	a1,sp,16
   10946:	0200                	addi	s0,sp,256
   10948:	c898                	sw	a4,16(s1)
   1094a:	0d44                	addi	s1,sp,660
   1094c:	0002                	0x2
	...

0000000000010950 <__FRAME_END__>:
   10950:	0000                	unimp
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
   11024:	0000                	unimp
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

0000000000011788 <sum>:
	...

0000000000011790 <heap_end.2611>:
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
