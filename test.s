
test:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ea818193          	addi	gp,gp,-344 # 11f58 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11770 <_edata>
   100bc:	86818613          	addi	a2,gp,-1944 # 117c0 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	216000ef          	jal	ra,102da <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	15c50513          	addi	a0,a0,348 # 10224 <__libc_fini_array>
   100d0:	00000097          	auipc	ra,0x0
   100d4:	120080e7          	jalr	288(ra) # 101f0 <atexit>
   100d8:	00000097          	auipc	ra,0x0
   100dc:	19a080e7          	jalr	410(ra) # 10272 <__libc_init_array>
   100e0:	4502                	lw	a0,0(sp)
   100e2:	002c                	addi	a1,sp,8
   100e4:	4601                	li	a2,0
   100e6:	00000097          	auipc	ra,0x0
   100ea:	0c6080e7          	jalr	198(ra) # 101ac <main>
   100ee:	00000317          	auipc	t1,0x0
   100f2:	11030067          	jr	272(t1) # 101fe <exit>

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
   10148:	8201c703          	lbu	a4,-2016(gp) # 11778 <completed.5184>
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
   10166:	8b050513          	addi	a0,a0,-1872 # 108b0 <__EH_FRAME_BEGIN__>
   1016a:	ffff0097          	auipc	ra,0xffff0
   1016e:	e96080e7          	jalr	-362(ra) # 0 <_start-0x100b0>
   10172:	4785                	li	a5,1
   10174:	82f18023          	sb	a5,-2016(gp) # 11778 <completed.5184>
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
   10192:	78058593          	addi	a1,a1,1920 # 11780 <object.5189>
   10196:	8b050513          	addi	a0,a0,-1872 # 108b0 <__EH_FRAME_BEGIN__>
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
   101c0:	00200793          	li	a5,2
   101c4:	fef42423          	sw	a5,-24(s0)
   101c8:	fec42703          	lw	a4,-20(s0)
   101cc:	fe842783          	lw	a5,-24(s0)
   101d0:	00f707bb          	addw	a5,a4,a5
   101d4:	fef42223          	sw	a5,-28(s0)
   101d8:	00000793          	li	a5,0
   101dc:	00078513          	mv	a0,a5
   101e0:	01813403          	ld	s0,24(sp)
   101e4:	02010113          	addi	sp,sp,32
   101e8:	00008067          	ret
   101ec:	0000                	unimp
	...

00000000000101f0 <atexit>:
   101f0:	85aa                	mv	a1,a0
   101f2:	4681                	li	a3,0
   101f4:	4601                	li	a2,0
   101f6:	4501                	li	a0,0
   101f8:	18c0006f          	j	10384 <__register_exitproc>
	...

00000000000101fe <exit>:
   101fe:	1141                	addi	sp,sp,-16
   10200:	4581                	li	a1,0
   10202:	e022                	sd	s0,0(sp)
   10204:	e406                	sd	ra,8(sp)
   10206:	842a                	mv	s0,a0
   10208:	1e4000ef          	jal	ra,103ec <__call_exitprocs>
   1020c:	67c5                	lui	a5,0x11
   1020e:	7607b503          	ld	a0,1888(a5) # 11760 <_global_impure_ptr>
   10212:	6d3c                	ld	a5,88(a0)
   10214:	c391                	beqz	a5,10218 <exit+0x1a>
   10216:	9782                	jalr	a5
   10218:	8522                	mv	a0,s0
   1021a:	00000097          	auipc	ra,0x0
   1021e:	66e080e7          	jalr	1646(ra) # 10888 <_exit>
	...

0000000000010224 <__libc_fini_array>:
   10224:	7179                	addi	sp,sp,-48
   10226:	67c5                	lui	a5,0x11
   10228:	6745                	lui	a4,0x11
   1022a:	f022                	sd	s0,32(sp)
   1022c:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   10230:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   10234:	8c19                	sub	s0,s0,a4
   10236:	ec26                	sd	s1,24(sp)
   10238:	e84a                	sd	s2,16(sp)
   1023a:	e44e                	sd	s3,8(sp)
   1023c:	f406                	sd	ra,40(sp)
   1023e:	840d                	srai	s0,s0,0x3
   10240:	4481                	li	s1,0
   10242:	01078913          	addi	s2,a5,16
   10246:	59e1                	li	s3,-8
   10248:	00941c63          	bne	s0,s1,10260 <__libc_fini_array+0x3c>
   1024c:	7402                	ld	s0,32(sp)
   1024e:	70a2                	ld	ra,40(sp)
   10250:	64e2                	ld	s1,24(sp)
   10252:	6942                	ld	s2,16(sp)
   10254:	69a2                	ld	s3,8(sp)
   10256:	6145                	addi	sp,sp,48
   10258:	00000317          	auipc	t1,0x0
   1025c:	e9e30067          	jr	-354(t1) # 100f6 <_fini>
   10260:	033487b3          	mul	a5,s1,s3
   10264:	0485                	addi	s1,s1,1
   10266:	97ca                	add	a5,a5,s2
   10268:	ff87b783          	ld	a5,-8(a5)
   1026c:	9782                	jalr	a5
   1026e:	bfe9                	j	10248 <__libc_fini_array+0x24>
	...

0000000000010272 <__libc_init_array>:
   10272:	1101                	addi	sp,sp,-32
   10274:	e822                	sd	s0,16(sp)
   10276:	e426                	sd	s1,8(sp)
   10278:	6445                	lui	s0,0x11
   1027a:	64c5                	lui	s1,0x11
   1027c:	00048793          	mv	a5,s1
   10280:	00040413          	mv	s0,s0
   10284:	8c1d                	sub	s0,s0,a5
   10286:	e04a                	sd	s2,0(sp)
   10288:	ec06                	sd	ra,24(sp)
   1028a:	840d                	srai	s0,s0,0x3
   1028c:	00048493          	mv	s1,s1
   10290:	4901                	li	s2,0
   10292:	02891963          	bne	s2,s0,102c4 <__libc_init_array+0x52>
   10296:	64c5                	lui	s1,0x11
   10298:	00000097          	auipc	ra,0x0
   1029c:	e5e080e7          	jalr	-418(ra) # 100f6 <_fini>
   102a0:	6445                	lui	s0,0x11
   102a2:	00048793          	mv	a5,s1
   102a6:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   102aa:	8c1d                	sub	s0,s0,a5
   102ac:	840d                	srai	s0,s0,0x3
   102ae:	00048493          	mv	s1,s1
   102b2:	4901                	li	s2,0
   102b4:	00891d63          	bne	s2,s0,102ce <__libc_init_array+0x5c>
   102b8:	60e2                	ld	ra,24(sp)
   102ba:	6442                	ld	s0,16(sp)
   102bc:	64a2                	ld	s1,8(sp)
   102be:	6902                	ld	s2,0(sp)
   102c0:	6105                	addi	sp,sp,32
   102c2:	8082                	ret
   102c4:	609c                	ld	a5,0(s1)
   102c6:	0905                	addi	s2,s2,1
   102c8:	04a1                	addi	s1,s1,8
   102ca:	9782                	jalr	a5
   102cc:	b7d9                	j	10292 <__libc_init_array+0x20>
   102ce:	609c                	ld	a5,0(s1)
   102d0:	0905                	addi	s2,s2,1
   102d2:	04a1                	addi	s1,s1,8
   102d4:	9782                	jalr	a5
   102d6:	bff9                	j	102b4 <__libc_init_array+0x42>
	...

00000000000102da <memset>:
   102da:	483d                	li	a6,15
   102dc:	872a                	mv	a4,a0
   102de:	02c87163          	bleu	a2,a6,10300 <memset+0x26>
   102e2:	00f77793          	andi	a5,a4,15
   102e6:	e3c1                	bnez	a5,10366 <memset+0x8c>
   102e8:	e1bd                	bnez	a1,1034e <memset+0x74>
   102ea:	ff067693          	andi	a3,a2,-16
   102ee:	8a3d                	andi	a2,a2,15
   102f0:	96ba                	add	a3,a3,a4
   102f2:	e30c                	sd	a1,0(a4)
   102f4:	e70c                	sd	a1,8(a4)
   102f6:	0741                	addi	a4,a4,16
   102f8:	fed76de3          	bltu	a4,a3,102f2 <memset+0x18>
   102fc:	e211                	bnez	a2,10300 <memset+0x26>
   102fe:	8082                	ret
   10300:	40c806b3          	sub	a3,a6,a2
   10304:	068a                	slli	a3,a3,0x2
   10306:	00000297          	auipc	t0,0x0
   1030a:	9696                	add	a3,a3,t0
   1030c:	00a68067          	jr	10(a3)
   10310:	00b70723          	sb	a1,14(a4)
   10314:	00b706a3          	sb	a1,13(a4)
   10318:	00b70623          	sb	a1,12(a4)
   1031c:	00b705a3          	sb	a1,11(a4)
   10320:	00b70523          	sb	a1,10(a4)
   10324:	00b704a3          	sb	a1,9(a4)
   10328:	00b70423          	sb	a1,8(a4)
   1032c:	00b703a3          	sb	a1,7(a4)
   10330:	00b70323          	sb	a1,6(a4)
   10334:	00b702a3          	sb	a1,5(a4)
   10338:	00b70223          	sb	a1,4(a4)
   1033c:	00b701a3          	sb	a1,3(a4)
   10340:	00b70123          	sb	a1,2(a4)
   10344:	00b700a3          	sb	a1,1(a4)
   10348:	00b70023          	sb	a1,0(a4)
   1034c:	8082                	ret
   1034e:	0ff5f593          	andi	a1,a1,255
   10352:	00859693          	slli	a3,a1,0x8
   10356:	8dd5                	or	a1,a1,a3
   10358:	01059693          	slli	a3,a1,0x10
   1035c:	8dd5                	or	a1,a1,a3
   1035e:	02059693          	slli	a3,a1,0x20
   10362:	8dd5                	or	a1,a1,a3
   10364:	b759                	j	102ea <memset+0x10>
   10366:	00279693          	slli	a3,a5,0x2
   1036a:	00000297          	auipc	t0,0x0
   1036e:	9696                	add	a3,a3,t0
   10370:	8286                	mv	t0,ra
   10372:	fa2680e7          	jalr	-94(a3)
   10376:	8096                	mv	ra,t0
   10378:	17c1                	addi	a5,a5,-16
   1037a:	8f1d                	sub	a4,a4,a5
   1037c:	963e                	add	a2,a2,a5
   1037e:	f8c871e3          	bleu	a2,a6,10300 <memset+0x26>
   10382:	b79d                	j	102e8 <memset+0xe>

0000000000010384 <__register_exitproc>:
   10384:	67c5                	lui	a5,0x11
   10386:	7607b703          	ld	a4,1888(a5) # 11760 <_global_impure_ptr>
   1038a:	832a                	mv	t1,a0
   1038c:	1f873783          	ld	a5,504(a4)
   10390:	e789                	bnez	a5,1039a <__register_exitproc+0x16>
   10392:	20070793          	addi	a5,a4,512
   10396:	1ef73c23          	sd	a5,504(a4)
   1039a:	4798                	lw	a4,8(a5)
   1039c:	487d                	li	a6,31
   1039e:	557d                	li	a0,-1
   103a0:	04e84463          	blt	a6,a4,103e8 <__register_exitproc+0x64>
   103a4:	02030a63          	beqz	t1,103d8 <__register_exitproc+0x54>
   103a8:	00371813          	slli	a6,a4,0x3
   103ac:	983e                	add	a6,a6,a5
   103ae:	10c83823          	sd	a2,272(a6)
   103b2:	3107a883          	lw	a7,784(a5)
   103b6:	4605                	li	a2,1
   103b8:	00e6163b          	sllw	a2,a2,a4
   103bc:	00c8e8b3          	or	a7,a7,a2
   103c0:	3117a823          	sw	a7,784(a5)
   103c4:	20d83823          	sd	a3,528(a6)
   103c8:	4689                	li	a3,2
   103ca:	00d31763          	bne	t1,a3,103d8 <__register_exitproc+0x54>
   103ce:	3147a683          	lw	a3,788(a5)
   103d2:	8e55                	or	a2,a2,a3
   103d4:	30c7aa23          	sw	a2,788(a5)
   103d8:	0017069b          	addiw	a3,a4,1
   103dc:	0709                	addi	a4,a4,2
   103de:	070e                	slli	a4,a4,0x3
   103e0:	c794                	sw	a3,8(a5)
   103e2:	97ba                	add	a5,a5,a4
   103e4:	e38c                	sd	a1,0(a5)
   103e6:	4501                	li	a0,0
   103e8:	8082                	ret
	...

00000000000103ec <__call_exitprocs>:
   103ec:	715d                	addi	sp,sp,-80
   103ee:	67c5                	lui	a5,0x11
   103f0:	f44e                	sd	s3,40(sp)
   103f2:	7607b983          	ld	s3,1888(a5) # 11760 <_global_impure_ptr>
   103f6:	f052                	sd	s4,32(sp)
   103f8:	ec56                	sd	s5,24(sp)
   103fa:	e85a                	sd	s6,16(sp)
   103fc:	e486                	sd	ra,72(sp)
   103fe:	e0a2                	sd	s0,64(sp)
   10400:	fc26                	sd	s1,56(sp)
   10402:	f84a                	sd	s2,48(sp)
   10404:	e45e                	sd	s7,8(sp)
   10406:	8aaa                	mv	s5,a0
   10408:	8a2e                	mv	s4,a1
   1040a:	4b05                	li	s6,1
   1040c:	1f89b403          	ld	s0,504(s3)
   10410:	c801                	beqz	s0,10420 <__call_exitprocs+0x34>
   10412:	4404                	lw	s1,8(s0)
   10414:	34fd                	addiw	s1,s1,-1
   10416:	00349913          	slli	s2,s1,0x3
   1041a:	9922                	add	s2,s2,s0
   1041c:	0004dd63          	bgez	s1,10436 <__call_exitprocs+0x4a>
   10420:	60a6                	ld	ra,72(sp)
   10422:	6406                	ld	s0,64(sp)
   10424:	74e2                	ld	s1,56(sp)
   10426:	7942                	ld	s2,48(sp)
   10428:	79a2                	ld	s3,40(sp)
   1042a:	7a02                	ld	s4,32(sp)
   1042c:	6ae2                	ld	s5,24(sp)
   1042e:	6b42                	ld	s6,16(sp)
   10430:	6ba2                	ld	s7,8(sp)
   10432:	6161                	addi	sp,sp,80
   10434:	8082                	ret
   10436:	000a0963          	beqz	s4,10448 <__call_exitprocs+0x5c>
   1043a:	21093783          	ld	a5,528(s2)
   1043e:	01478563          	beq	a5,s4,10448 <__call_exitprocs+0x5c>
   10442:	34fd                	addiw	s1,s1,-1
   10444:	1961                	addi	s2,s2,-8
   10446:	bfd9                	j	1041c <__call_exitprocs+0x30>
   10448:	441c                	lw	a5,8(s0)
   1044a:	01093683          	ld	a3,16(s2)
   1044e:	37fd                	addiw	a5,a5,-1
   10450:	02979663          	bne	a5,s1,1047c <__call_exitprocs+0x90>
   10454:	c404                	sw	s1,8(s0)
   10456:	d6f5                	beqz	a3,10442 <__call_exitprocs+0x56>
   10458:	31042703          	lw	a4,784(s0)
   1045c:	009b163b          	sllw	a2,s6,s1
   10460:	00842b83          	lw	s7,8(s0)
   10464:	8f71                	and	a4,a4,a2
   10466:	2701                	sext.w	a4,a4
   10468:	ef09                	bnez	a4,10482 <__call_exitprocs+0x96>
   1046a:	9682                	jalr	a3
   1046c:	4418                	lw	a4,8(s0)
   1046e:	1f89b783          	ld	a5,504(s3)
   10472:	f9771de3          	bne	a4,s7,1040c <__call_exitprocs+0x20>
   10476:	fcf406e3          	beq	s0,a5,10442 <__call_exitprocs+0x56>
   1047a:	bf49                	j	1040c <__call_exitprocs+0x20>
   1047c:	00093823          	sd	zero,16(s2)
   10480:	bfd9                	j	10456 <__call_exitprocs+0x6a>
   10482:	31442783          	lw	a5,788(s0)
   10486:	11093583          	ld	a1,272(s2)
   1048a:	8ff1                	and	a5,a5,a2
   1048c:	2781                	sext.w	a5,a5
   1048e:	e781                	bnez	a5,10496 <__call_exitprocs+0xaa>
   10490:	8556                	mv	a0,s5
   10492:	9682                	jalr	a3
   10494:	bfe1                	j	1046c <__call_exitprocs+0x80>
   10496:	852e                	mv	a0,a1
   10498:	9682                	jalr	a3
   1049a:	bfc9                	j	1046c <__call_exitprocs+0x80>
	...

000000000001049e <conv_stat>:
   1049e:	619c                	ld	a5,0(a1)
   104a0:	00f51023          	sh	a5,0(a0)
   104a4:	659c                	ld	a5,8(a1)
   104a6:	00f51123          	sh	a5,2(a0)
   104aa:	499c                	lw	a5,16(a1)
   104ac:	c15c                	sw	a5,4(a0)
   104ae:	49dc                	lw	a5,20(a1)
   104b0:	00f51423          	sh	a5,8(a0)
   104b4:	4d9c                	lw	a5,24(a1)
   104b6:	00f51523          	sh	a5,10(a0)
   104ba:	4ddc                	lw	a5,28(a1)
   104bc:	00f51623          	sh	a5,12(a0)
   104c0:	719c                	ld	a5,32(a1)
   104c2:	00f51723          	sh	a5,14(a0)
   104c6:	799c                	ld	a5,48(a1)
   104c8:	e91c                	sd	a5,16(a0)
   104ca:	61bc                	ld	a5,64(a1)
   104cc:	e93c                	sd	a5,80(a0)
   104ce:	5d9c                	lw	a5,56(a1)
   104d0:	e53c                	sd	a5,72(a0)
   104d2:	65bc                	ld	a5,72(a1)
   104d4:	ed1c                	sd	a5,24(a0)
   104d6:	6dbc                	ld	a5,88(a1)
   104d8:	f51c                	sd	a5,40(a0)
   104da:	75bc                	ld	a5,104(a1)
   104dc:	fd1c                	sd	a5,56(a0)
   104de:	8082                	ret

00000000000104e0 <__syscall_error>:
   104e0:	1141                	addi	sp,sp,-16
   104e2:	e022                	sd	s0,0(sp)
   104e4:	e406                	sd	ra,8(sp)
   104e6:	842a                	mv	s0,a0
   104e8:	00000097          	auipc	ra,0x0
   104ec:	3ba080e7          	jalr	954(ra) # 108a2 <__errno>
   104f0:	408007bb          	negw	a5,s0
   104f4:	60a2                	ld	ra,8(sp)
   104f6:	6402                	ld	s0,0(sp)
   104f8:	c11c                	sw	a5,0(a0)
   104fa:	557d                	li	a0,-1
   104fc:	0141                	addi	sp,sp,16
   104fe:	8082                	ret

0000000000010500 <__internal_syscall>:
   10500:	88aa                	mv	a7,a0
   10502:	852e                	mv	a0,a1
   10504:	85b2                	mv	a1,a2
   10506:	8636                	mv	a2,a3
   10508:	86ba                	mv	a3,a4
   1050a:	00000073          	ecall
   1050e:	00055663          	bgez	a0,1051a <__internal_syscall+0x1a>
   10512:	00000317          	auipc	t1,0x0
   10516:	fce30067          	jr	-50(t1) # 104e0 <__syscall_error>
   1051a:	8082                	ret

000000000001051c <open>:
   1051c:	1141                	addi	sp,sp,-16
   1051e:	86b2                	mv	a3,a2
   10520:	4701                	li	a4,0
   10522:	862e                	mv	a2,a1
   10524:	85aa                	mv	a1,a0
   10526:	40000513          	li	a0,1024
   1052a:	e406                	sd	ra,8(sp)
   1052c:	00000097          	auipc	ra,0x0
   10530:	fd4080e7          	jalr	-44(ra) # 10500 <__internal_syscall>
   10534:	60a2                	ld	ra,8(sp)
   10536:	2501                	sext.w	a0,a0
   10538:	0141                	addi	sp,sp,16
   1053a:	8082                	ret

000000000001053c <openat>:
   1053c:	1141                	addi	sp,sp,-16
   1053e:	8736                	mv	a4,a3
   10540:	86b2                	mv	a3,a2
   10542:	862e                	mv	a2,a1
   10544:	85aa                	mv	a1,a0
   10546:	03800513          	li	a0,56
   1054a:	e406                	sd	ra,8(sp)
   1054c:	fb5ff0ef          	jal	ra,10500 <__internal_syscall>
   10550:	60a2                	ld	ra,8(sp)
   10552:	2501                	sext.w	a0,a0
   10554:	0141                	addi	sp,sp,16
   10556:	8082                	ret

0000000000010558 <lseek>:
   10558:	86b2                	mv	a3,a2
   1055a:	4701                	li	a4,0
   1055c:	862e                	mv	a2,a1
   1055e:	85aa                	mv	a1,a0
   10560:	03e00513          	li	a0,62
   10564:	00000317          	auipc	t1,0x0
   10568:	f9c30067          	jr	-100(t1) # 10500 <__internal_syscall>

000000000001056c <read>:
   1056c:	86b2                	mv	a3,a2
   1056e:	4701                	li	a4,0
   10570:	862e                	mv	a2,a1
   10572:	85aa                	mv	a1,a0
   10574:	03f00513          	li	a0,63
   10578:	f89ff06f          	j	10500 <__internal_syscall>

000000000001057c <write>:
   1057c:	86b2                	mv	a3,a2
   1057e:	4701                	li	a4,0
   10580:	862e                	mv	a2,a1
   10582:	85aa                	mv	a1,a0
   10584:	04000513          	li	a0,64
   10588:	00000317          	auipc	t1,0x0
   1058c:	f7830067          	jr	-136(t1) # 10500 <__internal_syscall>

0000000000010590 <fstat>:
   10590:	7135                	addi	sp,sp,-160
   10592:	e526                	sd	s1,136(sp)
   10594:	860a                	mv	a2,sp
   10596:	84ae                	mv	s1,a1
   10598:	4701                	li	a4,0
   1059a:	85aa                	mv	a1,a0
   1059c:	4681                	li	a3,0
   1059e:	05000513          	li	a0,80
   105a2:	ed06                	sd	ra,152(sp)
   105a4:	e922                	sd	s0,144(sp)
   105a6:	f5bff0ef          	jal	ra,10500 <__internal_syscall>
   105aa:	842a                	mv	s0,a0
   105ac:	858a                	mv	a1,sp
   105ae:	8526                	mv	a0,s1
   105b0:	eefff0ef          	jal	ra,1049e <conv_stat>
   105b4:	0004051b          	sext.w	a0,s0
   105b8:	60ea                	ld	ra,152(sp)
   105ba:	644a                	ld	s0,144(sp)
   105bc:	64aa                	ld	s1,136(sp)
   105be:	610d                	addi	sp,sp,160
   105c0:	8082                	ret

00000000000105c2 <stat>:
   105c2:	7135                	addi	sp,sp,-160
   105c4:	e526                	sd	s1,136(sp)
   105c6:	860a                	mv	a2,sp
   105c8:	84ae                	mv	s1,a1
   105ca:	4701                	li	a4,0
   105cc:	85aa                	mv	a1,a0
   105ce:	4681                	li	a3,0
   105d0:	40e00513          	li	a0,1038
   105d4:	ed06                	sd	ra,152(sp)
   105d6:	e922                	sd	s0,144(sp)
   105d8:	00000097          	auipc	ra,0x0
   105dc:	f28080e7          	jalr	-216(ra) # 10500 <__internal_syscall>
   105e0:	842a                	mv	s0,a0
   105e2:	858a                	mv	a1,sp
   105e4:	8526                	mv	a0,s1
   105e6:	00000097          	auipc	ra,0x0
   105ea:	eb8080e7          	jalr	-328(ra) # 1049e <conv_stat>
   105ee:	0004051b          	sext.w	a0,s0
   105f2:	60ea                	ld	ra,152(sp)
   105f4:	644a                	ld	s0,144(sp)
   105f6:	64aa                	ld	s1,136(sp)
   105f8:	610d                	addi	sp,sp,160
   105fa:	8082                	ret

00000000000105fc <lstat>:
   105fc:	7135                	addi	sp,sp,-160
   105fe:	e526                	sd	s1,136(sp)
   10600:	860a                	mv	a2,sp
   10602:	84ae                	mv	s1,a1
   10604:	4701                	li	a4,0
   10606:	85aa                	mv	a1,a0
   10608:	4681                	li	a3,0
   1060a:	40f00513          	li	a0,1039
   1060e:	ed06                	sd	ra,152(sp)
   10610:	e922                	sd	s0,144(sp)
   10612:	eefff0ef          	jal	ra,10500 <__internal_syscall>
   10616:	842a                	mv	s0,a0
   10618:	858a                	mv	a1,sp
   1061a:	8526                	mv	a0,s1
   1061c:	e83ff0ef          	jal	ra,1049e <conv_stat>
   10620:	0004051b          	sext.w	a0,s0
   10624:	60ea                	ld	ra,152(sp)
   10626:	644a                	ld	s0,144(sp)
   10628:	64aa                	ld	s1,136(sp)
   1062a:	610d                	addi	sp,sp,160
   1062c:	8082                	ret

000000000001062e <fstatat>:
   1062e:	7135                	addi	sp,sp,-160
   10630:	e526                	sd	s1,136(sp)
   10632:	8736                	mv	a4,a3
   10634:	84b2                	mv	s1,a2
   10636:	868a                	mv	a3,sp
   10638:	862e                	mv	a2,a1
   1063a:	85aa                	mv	a1,a0
   1063c:	04f00513          	li	a0,79
   10640:	ed06                	sd	ra,152(sp)
   10642:	e922                	sd	s0,144(sp)
   10644:	00000097          	auipc	ra,0x0
   10648:	ebc080e7          	jalr	-324(ra) # 10500 <__internal_syscall>
   1064c:	842a                	mv	s0,a0
   1064e:	858a                	mv	a1,sp
   10650:	8526                	mv	a0,s1
   10652:	00000097          	auipc	ra,0x0
   10656:	e4c080e7          	jalr	-436(ra) # 1049e <conv_stat>
   1065a:	0004051b          	sext.w	a0,s0
   1065e:	60ea                	ld	ra,152(sp)
   10660:	644a                	ld	s0,144(sp)
   10662:	64aa                	ld	s1,136(sp)
   10664:	610d                	addi	sp,sp,160
   10666:	8082                	ret

0000000000010668 <access>:
   10668:	1141                	addi	sp,sp,-16
   1066a:	862e                	mv	a2,a1
   1066c:	4701                	li	a4,0
   1066e:	85aa                	mv	a1,a0
   10670:	4681                	li	a3,0
   10672:	40900513          	li	a0,1033
   10676:	e406                	sd	ra,8(sp)
   10678:	e89ff0ef          	jal	ra,10500 <__internal_syscall>
   1067c:	60a2                	ld	ra,8(sp)
   1067e:	2501                	sext.w	a0,a0
   10680:	0141                	addi	sp,sp,16
   10682:	8082                	ret

0000000000010684 <faccessat>:
   10684:	1141                	addi	sp,sp,-16
   10686:	8736                	mv	a4,a3
   10688:	86b2                	mv	a3,a2
   1068a:	862e                	mv	a2,a1
   1068c:	85aa                	mv	a1,a0
   1068e:	03000513          	li	a0,48
   10692:	e406                	sd	ra,8(sp)
   10694:	00000097          	auipc	ra,0x0
   10698:	e6c080e7          	jalr	-404(ra) # 10500 <__internal_syscall>
   1069c:	60a2                	ld	ra,8(sp)
   1069e:	2501                	sext.w	a0,a0
   106a0:	0141                	addi	sp,sp,16
   106a2:	8082                	ret

00000000000106a4 <close>:
   106a4:	1141                	addi	sp,sp,-16
   106a6:	85aa                	mv	a1,a0
   106a8:	4701                	li	a4,0
   106aa:	4681                	li	a3,0
   106ac:	4601                	li	a2,0
   106ae:	03900513          	li	a0,57
   106b2:	e406                	sd	ra,8(sp)
   106b4:	e4dff0ef          	jal	ra,10500 <__internal_syscall>
   106b8:	60a2                	ld	ra,8(sp)
   106ba:	2501                	sext.w	a0,a0
   106bc:	0141                	addi	sp,sp,16
   106be:	8082                	ret

00000000000106c0 <link>:
   106c0:	1141                	addi	sp,sp,-16
   106c2:	862e                	mv	a2,a1
   106c4:	4701                	li	a4,0
   106c6:	85aa                	mv	a1,a0
   106c8:	4681                	li	a3,0
   106ca:	40100513          	li	a0,1025
   106ce:	e406                	sd	ra,8(sp)
   106d0:	00000097          	auipc	ra,0x0
   106d4:	e30080e7          	jalr	-464(ra) # 10500 <__internal_syscall>
   106d8:	60a2                	ld	ra,8(sp)
   106da:	2501                	sext.w	a0,a0
   106dc:	0141                	addi	sp,sp,16
   106de:	8082                	ret

00000000000106e0 <unlink>:
   106e0:	1141                	addi	sp,sp,-16
   106e2:	85aa                	mv	a1,a0
   106e4:	4701                	li	a4,0
   106e6:	4681                	li	a3,0
   106e8:	4601                	li	a2,0
   106ea:	40200513          	li	a0,1026
   106ee:	e406                	sd	ra,8(sp)
   106f0:	e11ff0ef          	jal	ra,10500 <__internal_syscall>
   106f4:	60a2                	ld	ra,8(sp)
   106f6:	2501                	sext.w	a0,a0
   106f8:	0141                	addi	sp,sp,16
   106fa:	8082                	ret

00000000000106fc <execve>:
   106fc:	1141                	addi	sp,sp,-16
   106fe:	e406                	sd	ra,8(sp)
   10700:	00000097          	auipc	ra,0x0
   10704:	1a2080e7          	jalr	418(ra) # 108a2 <__errno>
   10708:	60a2                	ld	ra,8(sp)
   1070a:	47b1                	li	a5,12
   1070c:	c11c                	sw	a5,0(a0)
   1070e:	557d                	li	a0,-1
   10710:	0141                	addi	sp,sp,16
   10712:	8082                	ret

0000000000010714 <fork>:
   10714:	1141                	addi	sp,sp,-16
   10716:	e406                	sd	ra,8(sp)
   10718:	18a000ef          	jal	ra,108a2 <__errno>
   1071c:	60a2                	ld	ra,8(sp)
   1071e:	47ad                	li	a5,11
   10720:	c11c                	sw	a5,0(a0)
   10722:	557d                	li	a0,-1
   10724:	0141                	addi	sp,sp,16
   10726:	8082                	ret

0000000000010728 <getpid>:
   10728:	4505                	li	a0,1
   1072a:	8082                	ret

000000000001072c <kill>:
   1072c:	1141                	addi	sp,sp,-16
   1072e:	e406                	sd	ra,8(sp)
   10730:	172000ef          	jal	ra,108a2 <__errno>
   10734:	60a2                	ld	ra,8(sp)
   10736:	47d9                	li	a5,22
   10738:	c11c                	sw	a5,0(a0)
   1073a:	557d                	li	a0,-1
   1073c:	0141                	addi	sp,sp,16
   1073e:	8082                	ret

0000000000010740 <wait>:
   10740:	1141                	addi	sp,sp,-16
   10742:	e406                	sd	ra,8(sp)
   10744:	00000097          	auipc	ra,0x0
   10748:	15e080e7          	jalr	350(ra) # 108a2 <__errno>
   1074c:	60a2                	ld	ra,8(sp)
   1074e:	47a9                	li	a5,10
   10750:	c11c                	sw	a5,0(a0)
   10752:	557d                	li	a0,-1
   10754:	0141                	addi	sp,sp,16
   10756:	8082                	ret

0000000000010758 <isatty>:
   10758:	7119                	addi	sp,sp,-128
   1075a:	002c                	addi	a1,sp,8
   1075c:	fc86                	sd	ra,120(sp)
   1075e:	e33ff0ef          	jal	ra,10590 <fstat>
   10762:	57fd                	li	a5,-1
   10764:	00f50663          	beq	a0,a5,10770 <isatty+0x18>
   10768:	4532                	lw	a0,12(sp)
   1076a:	40d5551b          	sraiw	a0,a0,0xd
   1076e:	8905                	andi	a0,a0,1
   10770:	70e6                	ld	ra,120(sp)
   10772:	6109                	addi	sp,sp,128
   10774:	8082                	ret

0000000000010776 <gettimeofday>:
   10776:	1141                	addi	sp,sp,-16
   10778:	85aa                	mv	a1,a0
   1077a:	4701                	li	a4,0
   1077c:	4681                	li	a3,0
   1077e:	4601                	li	a2,0
   10780:	0a900513          	li	a0,169
   10784:	e406                	sd	ra,8(sp)
   10786:	00000097          	auipc	ra,0x0
   1078a:	d7a080e7          	jalr	-646(ra) # 10500 <__internal_syscall>
   1078e:	60a2                	ld	ra,8(sp)
   10790:	2501                	sext.w	a0,a0
   10792:	0141                	addi	sp,sp,16
   10794:	8082                	ret

0000000000010796 <times>:
   10796:	7179                	addi	sp,sp,-48
   10798:	f022                	sd	s0,32(sp)
   1079a:	842a                	mv	s0,a0
   1079c:	8581b783          	ld	a5,-1960(gp) # 117b0 <t0.2574>
   107a0:	ec26                	sd	s1,24(sp)
   107a2:	f406                	sd	ra,40(sp)
   107a4:	85818493          	addi	s1,gp,-1960 # 117b0 <t0.2574>
   107a8:	eb81                	bnez	a5,107b8 <times+0x22>
   107aa:	4581                	li	a1,0
   107ac:	85818513          	addi	a0,gp,-1960 # 117b0 <t0.2574>
   107b0:	00000097          	auipc	ra,0x0
   107b4:	fc6080e7          	jalr	-58(ra) # 10776 <gettimeofday>
   107b8:	850a                	mv	a0,sp
   107ba:	4581                	li	a1,0
   107bc:	00000097          	auipc	ra,0x0
   107c0:	fba080e7          	jalr	-70(ra) # 10776 <gettimeofday>
   107c4:	6098                	ld	a4,0(s1)
   107c6:	6782                	ld	a5,0(sp)
   107c8:	6494                	ld	a3,8(s1)
   107ca:	00043823          	sd	zero,16(s0)
   107ce:	8f99                	sub	a5,a5,a4
   107d0:	000f4737          	lui	a4,0xf4
   107d4:	24070713          	addi	a4,a4,576 # f4240 <__global_pointer$+0xe22e8>
   107d8:	02e787b3          	mul	a5,a5,a4
   107dc:	6722                	ld	a4,8(sp)
   107de:	00043c23          	sd	zero,24(s0)
   107e2:	00043423          	sd	zero,8(s0)
   107e6:	8f15                	sub	a4,a4,a3
   107e8:	70a2                	ld	ra,40(sp)
   107ea:	64e2                	ld	s1,24(sp)
   107ec:	557d                	li	a0,-1
   107ee:	97ba                	add	a5,a5,a4
   107f0:	e01c                	sd	a5,0(s0)
   107f2:	7402                	ld	s0,32(sp)
   107f4:	6145                	addi	sp,sp,48
   107f6:	8082                	ret

00000000000107f8 <ftime>:
   107f8:	00051423          	sh	zero,8(a0)
   107fc:	00053023          	sd	zero,0(a0)
   10800:	4501                	li	a0,0
   10802:	8082                	ret

0000000000010804 <utime>:
   10804:	557d                	li	a0,-1
   10806:	8082                	ret

0000000000010808 <chown>:
   10808:	557d                	li	a0,-1
   1080a:	8082                	ret

000000000001080c <chmod>:
   1080c:	557d                	li	a0,-1
   1080e:	8082                	ret

0000000000010810 <chdir>:
   10810:	557d                	li	a0,-1
   10812:	8082                	ret

0000000000010814 <getcwd>:
   10814:	4501                	li	a0,0
   10816:	8082                	ret

0000000000010818 <sysconf>:
   10818:	4789                	li	a5,2
   1081a:	00f50463          	beq	a0,a5,10822 <sysconf+0xa>
   1081e:	557d                	li	a0,-1
   10820:	8082                	ret
   10822:	000f4537          	lui	a0,0xf4
   10826:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22e8>
   1082a:	8082                	ret

000000000001082c <sbrk>:
   1082c:	1101                	addi	sp,sp,-32
   1082e:	e822                	sd	s0,16(sp)
   10830:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10834:	e426                	sd	s1,8(sp)
   10836:	ec06                	sd	ra,24(sp)
   10838:	84aa                	mv	s1,a0
   1083a:	e785                	bnez	a5,10862 <sbrk+0x36>
   1083c:	4701                	li	a4,0
   1083e:	4681                	li	a3,0
   10840:	4601                	li	a2,0
   10842:	4581                	li	a1,0
   10844:	0d600513          	li	a0,214
   10848:	cb9ff0ef          	jal	ra,10500 <__internal_syscall>
   1084c:	57fd                	li	a5,-1
   1084e:	00f51863          	bne	a0,a5,1085e <sbrk+0x32>
   10852:	557d                	li	a0,-1
   10854:	60e2                	ld	ra,24(sp)
   10856:	6442                	ld	s0,16(sp)
   10858:	64a2                	ld	s1,8(sp)
   1085a:	6105                	addi	sp,sp,32
   1085c:	8082                	ret
   1085e:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10862:	8181b583          	ld	a1,-2024(gp) # 11770 <_edata>
   10866:	4701                	li	a4,0
   10868:	4681                	li	a3,0
   1086a:	95a6                	add	a1,a1,s1
   1086c:	4601                	li	a2,0
   1086e:	0d600513          	li	a0,214
   10872:	c8fff0ef          	jal	ra,10500 <__internal_syscall>
   10876:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   1087a:	94be                	add	s1,s1,a5
   1087c:	fc951be3          	bne	a0,s1,10852 <sbrk+0x26>
   10880:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   10884:	853e                	mv	a0,a5
   10886:	b7f9                	j	10854 <sbrk+0x28>

0000000000010888 <_exit>:
   10888:	1141                	addi	sp,sp,-16
   1088a:	85aa                	mv	a1,a0
   1088c:	4701                	li	a4,0
   1088e:	4681                	li	a3,0
   10890:	4601                	li	a2,0
   10892:	05d00513          	li	a0,93
   10896:	e406                	sd	ra,8(sp)
   10898:	00000097          	auipc	ra,0x0
   1089c:	c68080e7          	jalr	-920(ra) # 10500 <__internal_syscall>
   108a0:	a001                	j	108a0 <_exit+0x18>

00000000000108a2 <__errno>:
   108a2:	8101b503          	ld	a0,-2032(gp) # 11768 <_impure_ptr>
   108a6:	8082                	ret
	...

Disassembly of section .eh_frame:

00000000000108b0 <__EH_FRAME_BEGIN__>:
   108b0:	0010                	addi	a2,sp,0
   108b2:	0000                	unimp
   108b4:	0000                	unimp
   108b6:	0000                	unimp
   108b8:	7a01                	lui	s4,0xfffe0
   108ba:	0052                	0x52
   108bc:	7c01                	lui	s8,0xfffe0
   108be:	0101                	addi	sp,sp,0
   108c0:	00020d1b          	sext.w	s10,tp
   108c4:	001c                	addi	a5,sp,0
   108c6:	0000                	unimp
   108c8:	0018                	addi	a4,sp,0
   108ca:	0000                	unimp
   108cc:	f8e0                	sd	s0,240(s1)
   108ce:	ffff                	0xffff
   108d0:	0040                	addi	s0,sp,4
   108d2:	0000                	unimp
   108d4:	4400                	lw	s0,8(s0)
   108d6:	200e                	fld	ft0,192(sp)
   108d8:	8844                	0x8844
   108da:	4402                	lw	s0,0(sp)
   108dc:	080c                	addi	a1,sp,16
   108de:	6c00                	ld	s0,24(s0)
   108e0:	44c8                	lw	a0,12(s1)
   108e2:	020d                	addi	tp,tp,3

00000000000108e4 <__FRAME_END__>:
   108e4:	0000                	unimp
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

0000000000011770 <__bss_start>:
	...

Disassembly of section .bss:

0000000000011778 <completed.5184>:
	...

0000000000011780 <object.5189>:
	...

00000000000117b0 <t0.2574>:
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
