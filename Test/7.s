
Test/7:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ec018193          	addi	gp,gp,-320 # 11f70 <__global_pointer$>
   100b8:	82018513          	addi	a0,gp,-2016 # 11790 <_edata>
   100bc:	87018613          	addi	a2,gp,-1936 # 117e0 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	270000ef          	jal	ra,10334 <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	1b650513          	addi	a0,a0,438 # 1027e <__libc_fini_array>
   100d0:	00000097          	auipc	ra,0x0
   100d4:	17c080e7          	jalr	380(ra) # 1024c <atexit>
   100d8:	00000097          	auipc	ra,0x0
   100dc:	1f4080e7          	jalr	500(ra) # 102cc <__libc_init_array>
   100e0:	4502                	lw	a0,0(sp)
   100e2:	002c                	addi	a1,sp,8
   100e4:	4601                	li	a2,0
   100e6:	00000097          	auipc	ra,0x0
   100ea:	0c6080e7          	jalr	198(ra) # 101ac <main>
   100ee:	00000317          	auipc	t1,0x0
   100f2:	16c30067          	jr	364(t1) # 1025a <exit>

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
   10166:	90050513          	addi	a0,a0,-1792 # 10900 <__EH_FRAME_BEGIN__>
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
   10196:	90050513          	addi	a0,a0,-1792 # 10900 <__EH_FRAME_BEGIN__>
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
   101b8:	00100793          	li	a5,1
   101bc:	fef42623          	sw	a5,-20(s0)
   101c0:	fec42783          	lw	a5,-20(s0)
   101c4:	0007871b          	sext.w	a4,a5
   101c8:	00500793          	li	a5,5
   101cc:	06e7c463          	blt	a5,a4,10234 <main+0x88>
   101d0:	000117b7          	lui	a5,0x11
   101d4:	fec42703          	lw	a4,-20(s0)
   101d8:	00271713          	slli	a4,a4,0x2
   101dc:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   101e0:	00f707b3          	add	a5,a4,a5
   101e4:	0007a783          	lw	a5,0(a5)
   101e8:	0017879b          	addiw	a5,a5,1
   101ec:	0007871b          	sext.w	a4,a5
   101f0:	000117b7          	lui	a5,0x11
   101f4:	fec42683          	lw	a3,-20(s0)
   101f8:	00269693          	slli	a3,a3,0x2
   101fc:	01078793          	addi	a5,a5,16 # 11010 <__fini_array_end>
   10200:	00f687b3          	add	a5,a3,a5
   10204:	00e7a023          	sw	a4,0(a5)
   10208:	000117b7          	lui	a5,0x11
   1020c:	7787a783          	lw	a5,1912(a5) # 11778 <temp>
   10210:	fec42703          	lw	a4,-20(s0)
   10214:	02f707bb          	mulw	a5,a4,a5
   10218:	0007871b          	sext.w	a4,a5
   1021c:	000117b7          	lui	a5,0x11
   10220:	76e7ac23          	sw	a4,1912(a5) # 11778 <temp>
   10224:	fec42783          	lw	a5,-20(s0)
   10228:	0017879b          	addiw	a5,a5,1
   1022c:	fef42623          	sw	a5,-20(s0)
   10230:	f91ff06f          	j	101c0 <main+0x14>
   10234:	00000793          	li	a5,0
   10238:	00078513          	mv	a0,a5
   1023c:	01813403          	ld	s0,24(sp)
   10240:	02010113          	addi	sp,sp,32
   10244:	00008067          	ret
   10248:	0000                	unimp
	...

000000000001024c <atexit>:
   1024c:	85aa                	mv	a1,a0
   1024e:	4681                	li	a3,0
   10250:	4601                	li	a2,0
   10252:	4501                	li	a0,0
   10254:	18a0006f          	j	103de <__register_exitproc>
	...

000000000001025a <exit>:
   1025a:	1141                	addi	sp,sp,-16
   1025c:	4581                	li	a1,0
   1025e:	e022                	sd	s0,0(sp)
   10260:	e406                	sd	ra,8(sp)
   10262:	842a                	mv	s0,a0
   10264:	1e0000ef          	jal	ra,10444 <__call_exitprocs>
   10268:	8101b503          	ld	a0,-2032(gp) # 11780 <_global_impure_ptr>
   1026c:	6d3c                	ld	a5,88(a0)
   1026e:	c391                	beqz	a5,10272 <exit+0x18>
   10270:	9782                	jalr	a5
   10272:	8522                	mv	a0,s0
   10274:	00000097          	auipc	ra,0x0
   10278:	66a080e7          	jalr	1642(ra) # 108de <_exit>
	...

000000000001027e <__libc_fini_array>:
   1027e:	7179                	addi	sp,sp,-48
   10280:	67c5                	lui	a5,0x11
   10282:	6745                	lui	a4,0x11
   10284:	f022                	sd	s0,32(sp)
   10286:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   1028a:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   1028e:	8c19                	sub	s0,s0,a4
   10290:	ec26                	sd	s1,24(sp)
   10292:	e84a                	sd	s2,16(sp)
   10294:	e44e                	sd	s3,8(sp)
   10296:	f406                	sd	ra,40(sp)
   10298:	840d                	srai	s0,s0,0x3
   1029a:	4481                	li	s1,0
   1029c:	01078913          	addi	s2,a5,16
   102a0:	59e1                	li	s3,-8
   102a2:	00941c63          	bne	s0,s1,102ba <__libc_fini_array+0x3c>
   102a6:	7402                	ld	s0,32(sp)
   102a8:	70a2                	ld	ra,40(sp)
   102aa:	64e2                	ld	s1,24(sp)
   102ac:	6942                	ld	s2,16(sp)
   102ae:	69a2                	ld	s3,8(sp)
   102b0:	6145                	addi	sp,sp,48
   102b2:	00000317          	auipc	t1,0x0
   102b6:	e4430067          	jr	-444(t1) # 100f6 <_fini>
   102ba:	033487b3          	mul	a5,s1,s3
   102be:	0485                	addi	s1,s1,1
   102c0:	97ca                	add	a5,a5,s2
   102c2:	ff87b783          	ld	a5,-8(a5)
   102c6:	9782                	jalr	a5
   102c8:	bfe9                	j	102a2 <__libc_fini_array+0x24>
	...

00000000000102cc <__libc_init_array>:
   102cc:	1101                	addi	sp,sp,-32
   102ce:	e822                	sd	s0,16(sp)
   102d0:	e426                	sd	s1,8(sp)
   102d2:	6445                	lui	s0,0x11
   102d4:	64c5                	lui	s1,0x11
   102d6:	00048793          	mv	a5,s1
   102da:	00040413          	mv	s0,s0
   102de:	8c1d                	sub	s0,s0,a5
   102e0:	e04a                	sd	s2,0(sp)
   102e2:	ec06                	sd	ra,24(sp)
   102e4:	840d                	srai	s0,s0,0x3
   102e6:	00048493          	mv	s1,s1
   102ea:	4901                	li	s2,0
   102ec:	02891963          	bne	s2,s0,1031e <__libc_init_array+0x52>
   102f0:	64c5                	lui	s1,0x11
   102f2:	00000097          	auipc	ra,0x0
   102f6:	e04080e7          	jalr	-508(ra) # 100f6 <_fini>
   102fa:	6445                	lui	s0,0x11
   102fc:	00048793          	mv	a5,s1
   10300:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   10304:	8c1d                	sub	s0,s0,a5
   10306:	840d                	srai	s0,s0,0x3
   10308:	00048493          	mv	s1,s1
   1030c:	4901                	li	s2,0
   1030e:	00891d63          	bne	s2,s0,10328 <__libc_init_array+0x5c>
   10312:	60e2                	ld	ra,24(sp)
   10314:	6442                	ld	s0,16(sp)
   10316:	64a2                	ld	s1,8(sp)
   10318:	6902                	ld	s2,0(sp)
   1031a:	6105                	addi	sp,sp,32
   1031c:	8082                	ret
   1031e:	609c                	ld	a5,0(s1)
   10320:	0905                	addi	s2,s2,1
   10322:	04a1                	addi	s1,s1,8
   10324:	9782                	jalr	a5
   10326:	b7d9                	j	102ec <__libc_init_array+0x20>
   10328:	609c                	ld	a5,0(s1)
   1032a:	0905                	addi	s2,s2,1
   1032c:	04a1                	addi	s1,s1,8
   1032e:	9782                	jalr	a5
   10330:	bff9                	j	1030e <__libc_init_array+0x42>
	...

0000000000010334 <memset>:
   10334:	483d                	li	a6,15
   10336:	872a                	mv	a4,a0
   10338:	02c87163          	bleu	a2,a6,1035a <memset+0x26>
   1033c:	00f77793          	andi	a5,a4,15
   10340:	e3c1                	bnez	a5,103c0 <memset+0x8c>
   10342:	e1bd                	bnez	a1,103a8 <memset+0x74>
   10344:	ff067693          	andi	a3,a2,-16
   10348:	8a3d                	andi	a2,a2,15
   1034a:	96ba                	add	a3,a3,a4
   1034c:	e30c                	sd	a1,0(a4)
   1034e:	e70c                	sd	a1,8(a4)
   10350:	0741                	addi	a4,a4,16
   10352:	fed76de3          	bltu	a4,a3,1034c <memset+0x18>
   10356:	e211                	bnez	a2,1035a <memset+0x26>
   10358:	8082                	ret
   1035a:	40c806b3          	sub	a3,a6,a2
   1035e:	068a                	slli	a3,a3,0x2
   10360:	00000297          	auipc	t0,0x0
   10364:	9696                	add	a3,a3,t0
   10366:	00a68067          	jr	10(a3)
   1036a:	00b70723          	sb	a1,14(a4)
   1036e:	00b706a3          	sb	a1,13(a4)
   10372:	00b70623          	sb	a1,12(a4)
   10376:	00b705a3          	sb	a1,11(a4)
   1037a:	00b70523          	sb	a1,10(a4)
   1037e:	00b704a3          	sb	a1,9(a4)
   10382:	00b70423          	sb	a1,8(a4)
   10386:	00b703a3          	sb	a1,7(a4)
   1038a:	00b70323          	sb	a1,6(a4)
   1038e:	00b702a3          	sb	a1,5(a4)
   10392:	00b70223          	sb	a1,4(a4)
   10396:	00b701a3          	sb	a1,3(a4)
   1039a:	00b70123          	sb	a1,2(a4)
   1039e:	00b700a3          	sb	a1,1(a4)
   103a2:	00b70023          	sb	a1,0(a4)
   103a6:	8082                	ret
   103a8:	0ff5f593          	andi	a1,a1,255
   103ac:	00859693          	slli	a3,a1,0x8
   103b0:	8dd5                	or	a1,a1,a3
   103b2:	01059693          	slli	a3,a1,0x10
   103b6:	8dd5                	or	a1,a1,a3
   103b8:	02059693          	slli	a3,a1,0x20
   103bc:	8dd5                	or	a1,a1,a3
   103be:	b759                	j	10344 <memset+0x10>
   103c0:	00279693          	slli	a3,a5,0x2
   103c4:	00000297          	auipc	t0,0x0
   103c8:	9696                	add	a3,a3,t0
   103ca:	8286                	mv	t0,ra
   103cc:	fa2680e7          	jalr	-94(a3)
   103d0:	8096                	mv	ra,t0
   103d2:	17c1                	addi	a5,a5,-16
   103d4:	8f1d                	sub	a4,a4,a5
   103d6:	963e                	add	a2,a2,a5
   103d8:	f8c871e3          	bleu	a2,a6,1035a <memset+0x26>
   103dc:	b79d                	j	10342 <memset+0xe>

00000000000103de <__register_exitproc>:
   103de:	8101b703          	ld	a4,-2032(gp) # 11780 <_global_impure_ptr>
   103e2:	832a                	mv	t1,a0
   103e4:	1f873783          	ld	a5,504(a4)
   103e8:	e789                	bnez	a5,103f2 <__register_exitproc+0x14>
   103ea:	20070793          	addi	a5,a4,512
   103ee:	1ef73c23          	sd	a5,504(a4)
   103f2:	4798                	lw	a4,8(a5)
   103f4:	487d                	li	a6,31
   103f6:	557d                	li	a0,-1
   103f8:	04e84463          	blt	a6,a4,10440 <__register_exitproc+0x62>
   103fc:	02030a63          	beqz	t1,10430 <__register_exitproc+0x52>
   10400:	00371813          	slli	a6,a4,0x3
   10404:	983e                	add	a6,a6,a5
   10406:	10c83823          	sd	a2,272(a6)
   1040a:	3107a883          	lw	a7,784(a5)
   1040e:	4605                	li	a2,1
   10410:	00e6163b          	sllw	a2,a2,a4
   10414:	00c8e8b3          	or	a7,a7,a2
   10418:	3117a823          	sw	a7,784(a5)
   1041c:	20d83823          	sd	a3,528(a6)
   10420:	4689                	li	a3,2
   10422:	00d31763          	bne	t1,a3,10430 <__register_exitproc+0x52>
   10426:	3147a683          	lw	a3,788(a5)
   1042a:	8e55                	or	a2,a2,a3
   1042c:	30c7aa23          	sw	a2,788(a5)
   10430:	0017069b          	addiw	a3,a4,1
   10434:	0709                	addi	a4,a4,2
   10436:	070e                	slli	a4,a4,0x3
   10438:	c794                	sw	a3,8(a5)
   1043a:	97ba                	add	a5,a5,a4
   1043c:	e38c                	sd	a1,0(a5)
   1043e:	4501                	li	a0,0
   10440:	8082                	ret
	...

0000000000010444 <__call_exitprocs>:
   10444:	715d                	addi	sp,sp,-80
   10446:	f44e                	sd	s3,40(sp)
   10448:	8101b983          	ld	s3,-2032(gp) # 11780 <_global_impure_ptr>
   1044c:	f052                	sd	s4,32(sp)
   1044e:	ec56                	sd	s5,24(sp)
   10450:	e85a                	sd	s6,16(sp)
   10452:	e486                	sd	ra,72(sp)
   10454:	e0a2                	sd	s0,64(sp)
   10456:	fc26                	sd	s1,56(sp)
   10458:	f84a                	sd	s2,48(sp)
   1045a:	e45e                	sd	s7,8(sp)
   1045c:	8aaa                	mv	s5,a0
   1045e:	8a2e                	mv	s4,a1
   10460:	4b05                	li	s6,1
   10462:	1f89b403          	ld	s0,504(s3)
   10466:	c801                	beqz	s0,10476 <__call_exitprocs+0x32>
   10468:	4404                	lw	s1,8(s0)
   1046a:	34fd                	addiw	s1,s1,-1
   1046c:	00349913          	slli	s2,s1,0x3
   10470:	9922                	add	s2,s2,s0
   10472:	0004dd63          	bgez	s1,1048c <__call_exitprocs+0x48>
   10476:	60a6                	ld	ra,72(sp)
   10478:	6406                	ld	s0,64(sp)
   1047a:	74e2                	ld	s1,56(sp)
   1047c:	7942                	ld	s2,48(sp)
   1047e:	79a2                	ld	s3,40(sp)
   10480:	7a02                	ld	s4,32(sp)
   10482:	6ae2                	ld	s5,24(sp)
   10484:	6b42                	ld	s6,16(sp)
   10486:	6ba2                	ld	s7,8(sp)
   10488:	6161                	addi	sp,sp,80
   1048a:	8082                	ret
   1048c:	000a0963          	beqz	s4,1049e <__call_exitprocs+0x5a>
   10490:	21093783          	ld	a5,528(s2)
   10494:	01478563          	beq	a5,s4,1049e <__call_exitprocs+0x5a>
   10498:	34fd                	addiw	s1,s1,-1
   1049a:	1961                	addi	s2,s2,-8
   1049c:	bfd9                	j	10472 <__call_exitprocs+0x2e>
   1049e:	441c                	lw	a5,8(s0)
   104a0:	01093683          	ld	a3,16(s2)
   104a4:	37fd                	addiw	a5,a5,-1
   104a6:	02979663          	bne	a5,s1,104d2 <__call_exitprocs+0x8e>
   104aa:	c404                	sw	s1,8(s0)
   104ac:	d6f5                	beqz	a3,10498 <__call_exitprocs+0x54>
   104ae:	31042703          	lw	a4,784(s0)
   104b2:	009b163b          	sllw	a2,s6,s1
   104b6:	00842b83          	lw	s7,8(s0)
   104ba:	8f71                	and	a4,a4,a2
   104bc:	2701                	sext.w	a4,a4
   104be:	ef09                	bnez	a4,104d8 <__call_exitprocs+0x94>
   104c0:	9682                	jalr	a3
   104c2:	4418                	lw	a4,8(s0)
   104c4:	1f89b783          	ld	a5,504(s3)
   104c8:	f9771de3          	bne	a4,s7,10462 <__call_exitprocs+0x1e>
   104cc:	fcf406e3          	beq	s0,a5,10498 <__call_exitprocs+0x54>
   104d0:	bf49                	j	10462 <__call_exitprocs+0x1e>
   104d2:	00093823          	sd	zero,16(s2)
   104d6:	bfd9                	j	104ac <__call_exitprocs+0x68>
   104d8:	31442783          	lw	a5,788(s0)
   104dc:	11093583          	ld	a1,272(s2)
   104e0:	8ff1                	and	a5,a5,a2
   104e2:	2781                	sext.w	a5,a5
   104e4:	e781                	bnez	a5,104ec <__call_exitprocs+0xa8>
   104e6:	8556                	mv	a0,s5
   104e8:	9682                	jalr	a3
   104ea:	bfe1                	j	104c2 <__call_exitprocs+0x7e>
   104ec:	852e                	mv	a0,a1
   104ee:	9682                	jalr	a3
   104f0:	bfc9                	j	104c2 <__call_exitprocs+0x7e>
	...

00000000000104f4 <conv_stat>:
   104f4:	619c                	ld	a5,0(a1)
   104f6:	00f51023          	sh	a5,0(a0)
   104fa:	659c                	ld	a5,8(a1)
   104fc:	00f51123          	sh	a5,2(a0)
   10500:	499c                	lw	a5,16(a1)
   10502:	c15c                	sw	a5,4(a0)
   10504:	49dc                	lw	a5,20(a1)
   10506:	00f51423          	sh	a5,8(a0)
   1050a:	4d9c                	lw	a5,24(a1)
   1050c:	00f51523          	sh	a5,10(a0)
   10510:	4ddc                	lw	a5,28(a1)
   10512:	00f51623          	sh	a5,12(a0)
   10516:	719c                	ld	a5,32(a1)
   10518:	00f51723          	sh	a5,14(a0)
   1051c:	799c                	ld	a5,48(a1)
   1051e:	e91c                	sd	a5,16(a0)
   10520:	61bc                	ld	a5,64(a1)
   10522:	e93c                	sd	a5,80(a0)
   10524:	5d9c                	lw	a5,56(a1)
   10526:	e53c                	sd	a5,72(a0)
   10528:	65bc                	ld	a5,72(a1)
   1052a:	ed1c                	sd	a5,24(a0)
   1052c:	6dbc                	ld	a5,88(a1)
   1052e:	f51c                	sd	a5,40(a0)
   10530:	75bc                	ld	a5,104(a1)
   10532:	fd1c                	sd	a5,56(a0)
   10534:	8082                	ret

0000000000010536 <__syscall_error>:
   10536:	1141                	addi	sp,sp,-16
   10538:	e022                	sd	s0,0(sp)
   1053a:	e406                	sd	ra,8(sp)
   1053c:	842a                	mv	s0,a0
   1053e:	00000097          	auipc	ra,0x0
   10542:	3ba080e7          	jalr	954(ra) # 108f8 <__errno>
   10546:	408007bb          	negw	a5,s0
   1054a:	60a2                	ld	ra,8(sp)
   1054c:	6402                	ld	s0,0(sp)
   1054e:	c11c                	sw	a5,0(a0)
   10550:	557d                	li	a0,-1
   10552:	0141                	addi	sp,sp,16
   10554:	8082                	ret

0000000000010556 <__internal_syscall>:
   10556:	88aa                	mv	a7,a0
   10558:	852e                	mv	a0,a1
   1055a:	85b2                	mv	a1,a2
   1055c:	8636                	mv	a2,a3
   1055e:	86ba                	mv	a3,a4
   10560:	00000073          	ecall
   10564:	00055663          	bgez	a0,10570 <__internal_syscall+0x1a>
   10568:	00000317          	auipc	t1,0x0
   1056c:	fce30067          	jr	-50(t1) # 10536 <__syscall_error>
   10570:	8082                	ret

0000000000010572 <open>:
   10572:	1141                	addi	sp,sp,-16
   10574:	86b2                	mv	a3,a2
   10576:	4701                	li	a4,0
   10578:	862e                	mv	a2,a1
   1057a:	85aa                	mv	a1,a0
   1057c:	40000513          	li	a0,1024
   10580:	e406                	sd	ra,8(sp)
   10582:	00000097          	auipc	ra,0x0
   10586:	fd4080e7          	jalr	-44(ra) # 10556 <__internal_syscall>
   1058a:	60a2                	ld	ra,8(sp)
   1058c:	2501                	sext.w	a0,a0
   1058e:	0141                	addi	sp,sp,16
   10590:	8082                	ret

0000000000010592 <openat>:
   10592:	1141                	addi	sp,sp,-16
   10594:	8736                	mv	a4,a3
   10596:	86b2                	mv	a3,a2
   10598:	862e                	mv	a2,a1
   1059a:	85aa                	mv	a1,a0
   1059c:	03800513          	li	a0,56
   105a0:	e406                	sd	ra,8(sp)
   105a2:	fb5ff0ef          	jal	ra,10556 <__internal_syscall>
   105a6:	60a2                	ld	ra,8(sp)
   105a8:	2501                	sext.w	a0,a0
   105aa:	0141                	addi	sp,sp,16
   105ac:	8082                	ret

00000000000105ae <lseek>:
   105ae:	86b2                	mv	a3,a2
   105b0:	4701                	li	a4,0
   105b2:	862e                	mv	a2,a1
   105b4:	85aa                	mv	a1,a0
   105b6:	03e00513          	li	a0,62
   105ba:	00000317          	auipc	t1,0x0
   105be:	f9c30067          	jr	-100(t1) # 10556 <__internal_syscall>

00000000000105c2 <read>:
   105c2:	86b2                	mv	a3,a2
   105c4:	4701                	li	a4,0
   105c6:	862e                	mv	a2,a1
   105c8:	85aa                	mv	a1,a0
   105ca:	03f00513          	li	a0,63
   105ce:	f89ff06f          	j	10556 <__internal_syscall>

00000000000105d2 <write>:
   105d2:	86b2                	mv	a3,a2
   105d4:	4701                	li	a4,0
   105d6:	862e                	mv	a2,a1
   105d8:	85aa                	mv	a1,a0
   105da:	04000513          	li	a0,64
   105de:	00000317          	auipc	t1,0x0
   105e2:	f7830067          	jr	-136(t1) # 10556 <__internal_syscall>

00000000000105e6 <fstat>:
   105e6:	7135                	addi	sp,sp,-160
   105e8:	e526                	sd	s1,136(sp)
   105ea:	860a                	mv	a2,sp
   105ec:	84ae                	mv	s1,a1
   105ee:	4701                	li	a4,0
   105f0:	85aa                	mv	a1,a0
   105f2:	4681                	li	a3,0
   105f4:	05000513          	li	a0,80
   105f8:	ed06                	sd	ra,152(sp)
   105fa:	e922                	sd	s0,144(sp)
   105fc:	f5bff0ef          	jal	ra,10556 <__internal_syscall>
   10600:	842a                	mv	s0,a0
   10602:	858a                	mv	a1,sp
   10604:	8526                	mv	a0,s1
   10606:	eefff0ef          	jal	ra,104f4 <conv_stat>
   1060a:	0004051b          	sext.w	a0,s0
   1060e:	60ea                	ld	ra,152(sp)
   10610:	644a                	ld	s0,144(sp)
   10612:	64aa                	ld	s1,136(sp)
   10614:	610d                	addi	sp,sp,160
   10616:	8082                	ret

0000000000010618 <stat>:
   10618:	7135                	addi	sp,sp,-160
   1061a:	e526                	sd	s1,136(sp)
   1061c:	860a                	mv	a2,sp
   1061e:	84ae                	mv	s1,a1
   10620:	4701                	li	a4,0
   10622:	85aa                	mv	a1,a0
   10624:	4681                	li	a3,0
   10626:	40e00513          	li	a0,1038
   1062a:	ed06                	sd	ra,152(sp)
   1062c:	e922                	sd	s0,144(sp)
   1062e:	00000097          	auipc	ra,0x0
   10632:	f28080e7          	jalr	-216(ra) # 10556 <__internal_syscall>
   10636:	842a                	mv	s0,a0
   10638:	858a                	mv	a1,sp
   1063a:	8526                	mv	a0,s1
   1063c:	00000097          	auipc	ra,0x0
   10640:	eb8080e7          	jalr	-328(ra) # 104f4 <conv_stat>
   10644:	0004051b          	sext.w	a0,s0
   10648:	60ea                	ld	ra,152(sp)
   1064a:	644a                	ld	s0,144(sp)
   1064c:	64aa                	ld	s1,136(sp)
   1064e:	610d                	addi	sp,sp,160
   10650:	8082                	ret

0000000000010652 <lstat>:
   10652:	7135                	addi	sp,sp,-160
   10654:	e526                	sd	s1,136(sp)
   10656:	860a                	mv	a2,sp
   10658:	84ae                	mv	s1,a1
   1065a:	4701                	li	a4,0
   1065c:	85aa                	mv	a1,a0
   1065e:	4681                	li	a3,0
   10660:	40f00513          	li	a0,1039
   10664:	ed06                	sd	ra,152(sp)
   10666:	e922                	sd	s0,144(sp)
   10668:	eefff0ef          	jal	ra,10556 <__internal_syscall>
   1066c:	842a                	mv	s0,a0
   1066e:	858a                	mv	a1,sp
   10670:	8526                	mv	a0,s1
   10672:	e83ff0ef          	jal	ra,104f4 <conv_stat>
   10676:	0004051b          	sext.w	a0,s0
   1067a:	60ea                	ld	ra,152(sp)
   1067c:	644a                	ld	s0,144(sp)
   1067e:	64aa                	ld	s1,136(sp)
   10680:	610d                	addi	sp,sp,160
   10682:	8082                	ret

0000000000010684 <fstatat>:
   10684:	7135                	addi	sp,sp,-160
   10686:	e526                	sd	s1,136(sp)
   10688:	8736                	mv	a4,a3
   1068a:	84b2                	mv	s1,a2
   1068c:	868a                	mv	a3,sp
   1068e:	862e                	mv	a2,a1
   10690:	85aa                	mv	a1,a0
   10692:	04f00513          	li	a0,79
   10696:	ed06                	sd	ra,152(sp)
   10698:	e922                	sd	s0,144(sp)
   1069a:	00000097          	auipc	ra,0x0
   1069e:	ebc080e7          	jalr	-324(ra) # 10556 <__internal_syscall>
   106a2:	842a                	mv	s0,a0
   106a4:	858a                	mv	a1,sp
   106a6:	8526                	mv	a0,s1
   106a8:	00000097          	auipc	ra,0x0
   106ac:	e4c080e7          	jalr	-436(ra) # 104f4 <conv_stat>
   106b0:	0004051b          	sext.w	a0,s0
   106b4:	60ea                	ld	ra,152(sp)
   106b6:	644a                	ld	s0,144(sp)
   106b8:	64aa                	ld	s1,136(sp)
   106ba:	610d                	addi	sp,sp,160
   106bc:	8082                	ret

00000000000106be <access>:
   106be:	1141                	addi	sp,sp,-16
   106c0:	862e                	mv	a2,a1
   106c2:	4701                	li	a4,0
   106c4:	85aa                	mv	a1,a0
   106c6:	4681                	li	a3,0
   106c8:	40900513          	li	a0,1033
   106cc:	e406                	sd	ra,8(sp)
   106ce:	e89ff0ef          	jal	ra,10556 <__internal_syscall>
   106d2:	60a2                	ld	ra,8(sp)
   106d4:	2501                	sext.w	a0,a0
   106d6:	0141                	addi	sp,sp,16
   106d8:	8082                	ret

00000000000106da <faccessat>:
   106da:	1141                	addi	sp,sp,-16
   106dc:	8736                	mv	a4,a3
   106de:	86b2                	mv	a3,a2
   106e0:	862e                	mv	a2,a1
   106e2:	85aa                	mv	a1,a0
   106e4:	03000513          	li	a0,48
   106e8:	e406                	sd	ra,8(sp)
   106ea:	00000097          	auipc	ra,0x0
   106ee:	e6c080e7          	jalr	-404(ra) # 10556 <__internal_syscall>
   106f2:	60a2                	ld	ra,8(sp)
   106f4:	2501                	sext.w	a0,a0
   106f6:	0141                	addi	sp,sp,16
   106f8:	8082                	ret

00000000000106fa <close>:
   106fa:	1141                	addi	sp,sp,-16
   106fc:	85aa                	mv	a1,a0
   106fe:	4701                	li	a4,0
   10700:	4681                	li	a3,0
   10702:	4601                	li	a2,0
   10704:	03900513          	li	a0,57
   10708:	e406                	sd	ra,8(sp)
   1070a:	e4dff0ef          	jal	ra,10556 <__internal_syscall>
   1070e:	60a2                	ld	ra,8(sp)
   10710:	2501                	sext.w	a0,a0
   10712:	0141                	addi	sp,sp,16
   10714:	8082                	ret

0000000000010716 <link>:
   10716:	1141                	addi	sp,sp,-16
   10718:	862e                	mv	a2,a1
   1071a:	4701                	li	a4,0
   1071c:	85aa                	mv	a1,a0
   1071e:	4681                	li	a3,0
   10720:	40100513          	li	a0,1025
   10724:	e406                	sd	ra,8(sp)
   10726:	00000097          	auipc	ra,0x0
   1072a:	e30080e7          	jalr	-464(ra) # 10556 <__internal_syscall>
   1072e:	60a2                	ld	ra,8(sp)
   10730:	2501                	sext.w	a0,a0
   10732:	0141                	addi	sp,sp,16
   10734:	8082                	ret

0000000000010736 <unlink>:
   10736:	1141                	addi	sp,sp,-16
   10738:	85aa                	mv	a1,a0
   1073a:	4701                	li	a4,0
   1073c:	4681                	li	a3,0
   1073e:	4601                	li	a2,0
   10740:	40200513          	li	a0,1026
   10744:	e406                	sd	ra,8(sp)
   10746:	e11ff0ef          	jal	ra,10556 <__internal_syscall>
   1074a:	60a2                	ld	ra,8(sp)
   1074c:	2501                	sext.w	a0,a0
   1074e:	0141                	addi	sp,sp,16
   10750:	8082                	ret

0000000000010752 <execve>:
   10752:	1141                	addi	sp,sp,-16
   10754:	e406                	sd	ra,8(sp)
   10756:	00000097          	auipc	ra,0x0
   1075a:	1a2080e7          	jalr	418(ra) # 108f8 <__errno>
   1075e:	60a2                	ld	ra,8(sp)
   10760:	47b1                	li	a5,12
   10762:	c11c                	sw	a5,0(a0)
   10764:	557d                	li	a0,-1
   10766:	0141                	addi	sp,sp,16
   10768:	8082                	ret

000000000001076a <fork>:
   1076a:	1141                	addi	sp,sp,-16
   1076c:	e406                	sd	ra,8(sp)
   1076e:	18a000ef          	jal	ra,108f8 <__errno>
   10772:	60a2                	ld	ra,8(sp)
   10774:	47ad                	li	a5,11
   10776:	c11c                	sw	a5,0(a0)
   10778:	557d                	li	a0,-1
   1077a:	0141                	addi	sp,sp,16
   1077c:	8082                	ret

000000000001077e <getpid>:
   1077e:	4505                	li	a0,1
   10780:	8082                	ret

0000000000010782 <kill>:
   10782:	1141                	addi	sp,sp,-16
   10784:	e406                	sd	ra,8(sp)
   10786:	172000ef          	jal	ra,108f8 <__errno>
   1078a:	60a2                	ld	ra,8(sp)
   1078c:	47d9                	li	a5,22
   1078e:	c11c                	sw	a5,0(a0)
   10790:	557d                	li	a0,-1
   10792:	0141                	addi	sp,sp,16
   10794:	8082                	ret

0000000000010796 <wait>:
   10796:	1141                	addi	sp,sp,-16
   10798:	e406                	sd	ra,8(sp)
   1079a:	00000097          	auipc	ra,0x0
   1079e:	15e080e7          	jalr	350(ra) # 108f8 <__errno>
   107a2:	60a2                	ld	ra,8(sp)
   107a4:	47a9                	li	a5,10
   107a6:	c11c                	sw	a5,0(a0)
   107a8:	557d                	li	a0,-1
   107aa:	0141                	addi	sp,sp,16
   107ac:	8082                	ret

00000000000107ae <isatty>:
   107ae:	7119                	addi	sp,sp,-128
   107b0:	002c                	addi	a1,sp,8
   107b2:	fc86                	sd	ra,120(sp)
   107b4:	e33ff0ef          	jal	ra,105e6 <fstat>
   107b8:	57fd                	li	a5,-1
   107ba:	00f50663          	beq	a0,a5,107c6 <isatty+0x18>
   107be:	4532                	lw	a0,12(sp)
   107c0:	40d5551b          	sraiw	a0,a0,0xd
   107c4:	8905                	andi	a0,a0,1
   107c6:	70e6                	ld	ra,120(sp)
   107c8:	6109                	addi	sp,sp,128
   107ca:	8082                	ret

00000000000107cc <gettimeofday>:
   107cc:	1141                	addi	sp,sp,-16
   107ce:	85aa                	mv	a1,a0
   107d0:	4701                	li	a4,0
   107d2:	4681                	li	a3,0
   107d4:	4601                	li	a2,0
   107d6:	0a900513          	li	a0,169
   107da:	e406                	sd	ra,8(sp)
   107dc:	00000097          	auipc	ra,0x0
   107e0:	d7a080e7          	jalr	-646(ra) # 10556 <__internal_syscall>
   107e4:	60a2                	ld	ra,8(sp)
   107e6:	2501                	sext.w	a0,a0
   107e8:	0141                	addi	sp,sp,16
   107ea:	8082                	ret

00000000000107ec <times>:
   107ec:	7179                	addi	sp,sp,-48
   107ee:	f022                	sd	s0,32(sp)
   107f0:	842a                	mv	s0,a0
   107f2:	8601b783          	ld	a5,-1952(gp) # 117d0 <t0.2574>
   107f6:	ec26                	sd	s1,24(sp)
   107f8:	f406                	sd	ra,40(sp)
   107fa:	86018493          	addi	s1,gp,-1952 # 117d0 <t0.2574>
   107fe:	eb81                	bnez	a5,1080e <times+0x22>
   10800:	4581                	li	a1,0
   10802:	86018513          	addi	a0,gp,-1952 # 117d0 <t0.2574>
   10806:	00000097          	auipc	ra,0x0
   1080a:	fc6080e7          	jalr	-58(ra) # 107cc <gettimeofday>
   1080e:	850a                	mv	a0,sp
   10810:	4581                	li	a1,0
   10812:	00000097          	auipc	ra,0x0
   10816:	fba080e7          	jalr	-70(ra) # 107cc <gettimeofday>
   1081a:	6098                	ld	a4,0(s1)
   1081c:	6782                	ld	a5,0(sp)
   1081e:	6494                	ld	a3,8(s1)
   10820:	00043823          	sd	zero,16(s0)
   10824:	8f99                	sub	a5,a5,a4
   10826:	000f4737          	lui	a4,0xf4
   1082a:	24070713          	addi	a4,a4,576 # f4240 <__global_pointer$+0xe22d0>
   1082e:	02e787b3          	mul	a5,a5,a4
   10832:	6722                	ld	a4,8(sp)
   10834:	00043c23          	sd	zero,24(s0)
   10838:	00043423          	sd	zero,8(s0)
   1083c:	8f15                	sub	a4,a4,a3
   1083e:	70a2                	ld	ra,40(sp)
   10840:	64e2                	ld	s1,24(sp)
   10842:	557d                	li	a0,-1
   10844:	97ba                	add	a5,a5,a4
   10846:	e01c                	sd	a5,0(s0)
   10848:	7402                	ld	s0,32(sp)
   1084a:	6145                	addi	sp,sp,48
   1084c:	8082                	ret

000000000001084e <ftime>:
   1084e:	00051423          	sh	zero,8(a0)
   10852:	00053023          	sd	zero,0(a0)
   10856:	4501                	li	a0,0
   10858:	8082                	ret

000000000001085a <utime>:
   1085a:	557d                	li	a0,-1
   1085c:	8082                	ret

000000000001085e <chown>:
   1085e:	557d                	li	a0,-1
   10860:	8082                	ret

0000000000010862 <chmod>:
   10862:	557d                	li	a0,-1
   10864:	8082                	ret

0000000000010866 <chdir>:
   10866:	557d                	li	a0,-1
   10868:	8082                	ret

000000000001086a <getcwd>:
   1086a:	4501                	li	a0,0
   1086c:	8082                	ret

000000000001086e <sysconf>:
   1086e:	4789                	li	a5,2
   10870:	00f50463          	beq	a0,a5,10878 <sysconf+0xa>
   10874:	557d                	li	a0,-1
   10876:	8082                	ret
   10878:	000f4537          	lui	a0,0xf4
   1087c:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22d0>
   10880:	8082                	ret

0000000000010882 <sbrk>:
   10882:	1101                	addi	sp,sp,-32
   10884:	e822                	sd	s0,16(sp)
   10886:	8201b783          	ld	a5,-2016(gp) # 11790 <_edata>
   1088a:	e426                	sd	s1,8(sp)
   1088c:	ec06                	sd	ra,24(sp)
   1088e:	84aa                	mv	s1,a0
   10890:	e785                	bnez	a5,108b8 <sbrk+0x36>
   10892:	4701                	li	a4,0
   10894:	4681                	li	a3,0
   10896:	4601                	li	a2,0
   10898:	4581                	li	a1,0
   1089a:	0d600513          	li	a0,214
   1089e:	cb9ff0ef          	jal	ra,10556 <__internal_syscall>
   108a2:	57fd                	li	a5,-1
   108a4:	00f51863          	bne	a0,a5,108b4 <sbrk+0x32>
   108a8:	557d                	li	a0,-1
   108aa:	60e2                	ld	ra,24(sp)
   108ac:	6442                	ld	s0,16(sp)
   108ae:	64a2                	ld	s1,8(sp)
   108b0:	6105                	addi	sp,sp,32
   108b2:	8082                	ret
   108b4:	82a1b023          	sd	a0,-2016(gp) # 11790 <_edata>
   108b8:	8201b583          	ld	a1,-2016(gp) # 11790 <_edata>
   108bc:	4701                	li	a4,0
   108be:	4681                	li	a3,0
   108c0:	95a6                	add	a1,a1,s1
   108c2:	4601                	li	a2,0
   108c4:	0d600513          	li	a0,214
   108c8:	c8fff0ef          	jal	ra,10556 <__internal_syscall>
   108cc:	8201b783          	ld	a5,-2016(gp) # 11790 <_edata>
   108d0:	94be                	add	s1,s1,a5
   108d2:	fc951be3          	bne	a0,s1,108a8 <sbrk+0x26>
   108d6:	82a1b023          	sd	a0,-2016(gp) # 11790 <_edata>
   108da:	853e                	mv	a0,a5
   108dc:	b7f9                	j	108aa <sbrk+0x28>

00000000000108de <_exit>:
   108de:	1141                	addi	sp,sp,-16
   108e0:	85aa                	mv	a1,a0
   108e2:	4701                	li	a4,0
   108e4:	4681                	li	a3,0
   108e6:	4601                	li	a2,0
   108e8:	05d00513          	li	a0,93
   108ec:	e406                	sd	ra,8(sp)
   108ee:	00000097          	auipc	ra,0x0
   108f2:	c68080e7          	jalr	-920(ra) # 10556 <__internal_syscall>
   108f6:	a001                	j	108f6 <_exit+0x18>

00000000000108f8 <__errno>:
   108f8:	8181b503          	ld	a0,-2024(gp) # 11788 <_impure_ptr>
   108fc:	8082                	ret
	...

Disassembly of section .eh_frame:

0000000000010900 <__EH_FRAME_BEGIN__>:
   10900:	0010                	addi	a2,sp,0
   10902:	0000                	unimp
   10904:	0000                	unimp
   10906:	0000                	unimp
   10908:	7a01                	lui	s4,0xfffe0
   1090a:	0052                	0x52
   1090c:	7c01                	lui	s8,0xfffe0
   1090e:	0101                	addi	sp,sp,0
   10910:	00020d1b          	sext.w	s10,tp
   10914:	0020                	addi	s0,sp,8
   10916:	0000                	unimp
   10918:	0018                	addi	a4,sp,0
   1091a:	0000                	unimp
   1091c:	f890                	sd	a2,48(s1)
   1091e:	ffff                	0xffff
   10920:	009c                	addi	a5,sp,64
   10922:	0000                	unimp
   10924:	4400                	lw	s0,8(s0)
   10926:	200e                	fld	ft0,192(sp)
   10928:	8844                	0x8844
   1092a:	4402                	lw	s0,0(sp)
   1092c:	080c                	addi	a1,sp,16
   1092e:	0200                	addi	s0,sp,256
   10930:	c888                	sw	a0,16(s1)
   10932:	0d44                	addi	s1,sp,660
   10934:	0002                	0x2
	...

0000000000010938 <__FRAME_END__>:
   10938:	0000                	unimp
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
