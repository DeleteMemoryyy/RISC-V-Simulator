
print:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00005197          	auipc	gp,0x5
   100b4:	9e818193          	addi	gp,gp,-1560 # 14a98 <__global_pointer$>
   100b8:	82818513          	addi	a0,gp,-2008 # 142c0 <_edata>
   100bc:	8c018613          	addi	a2,gp,-1856 # 14358 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	20e000ef          	jal	ra,102d2 <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	15450513          	addi	a0,a0,340 # 1021c <__libc_fini_array>
   100d0:	00000097          	auipc	ra,0x0
   100d4:	118080e7          	jalr	280(ra) # 101e8 <atexit>
   100d8:	00000097          	auipc	ra,0x0
   100dc:	192080e7          	jalr	402(ra) # 1026a <__libc_init_array>
   100e0:	4502                	lw	a0,0(sp)
   100e2:	002c                	addi	a1,sp,8
   100e4:	4601                	li	a2,0
   100e6:	00000097          	auipc	ra,0x0
   100ea:	0c6080e7          	jalr	198(ra) # 101ac <main>
   100ee:	00000317          	auipc	t1,0x0
   100f2:	10830067          	jr	264(t1) # 101f6 <exit>

00000000000100f6 <_fini>:
   100f6:	8082                	ret

00000000000100f8 <deregister_tm_clones>:
   100f8:	6551                	lui	a0,0x14
   100fa:	67d1                	lui	a5,0x14
   100fc:	29850713          	addi	a4,a0,664 # 14298 <__TMC_END__>
   10100:	29878793          	addi	a5,a5,664 # 14298 <__TMC_END__>
   10104:	00e78b63          	beq	a5,a4,1011a <deregister_tm_clones+0x22>
   10108:	00000337          	lui	t1,0x0
   1010c:	00030313          	mv	t1,t1
   10110:	00030563          	beqz	t1,1011a <deregister_tm_clones+0x22>
   10114:	29850513          	addi	a0,a0,664
   10118:	8302                	jr	t1
   1011a:	8082                	ret

000000000001011c <register_tm_clones>:
   1011c:	67d1                	lui	a5,0x14
   1011e:	6551                	lui	a0,0x14
   10120:	29878593          	addi	a1,a5,664 # 14298 <__TMC_END__>
   10124:	29850793          	addi	a5,a0,664 # 14298 <__TMC_END__>
   10128:	8d9d                	sub	a1,a1,a5
   1012a:	858d                	srai	a1,a1,0x3
   1012c:	4789                	li	a5,2
   1012e:	02f5c5b3          	div	a1,a1,a5
   10132:	c991                	beqz	a1,10146 <register_tm_clones+0x2a>
   10134:	00000337          	lui	t1,0x0
   10138:	00030313          	mv	t1,t1
   1013c:	00030563          	beqz	t1,10146 <register_tm_clones+0x2a>
   10140:	29850513          	addi	a0,a0,664
   10144:	8302                	jr	t1
   10146:	8082                	ret

0000000000010148 <__do_global_dtors_aux>:
   10148:	8481c703          	lbu	a4,-1976(gp) # 142e0 <completed.5184>
   1014c:	eb15                	bnez	a4,10180 <__do_global_dtors_aux+0x38>
   1014e:	1141                	addi	sp,sp,-16
   10150:	e022                	sd	s0,0(sp)
   10152:	e406                	sd	ra,8(sp)
   10154:	843e                	mv	s0,a5
   10156:	fa3ff0ef          	jal	ra,100f8 <deregister_tm_clones>
   1015a:	000007b7          	lui	a5,0x0
   1015e:	00078793          	mv	a5,a5
   10162:	cb81                	beqz	a5,10172 <__do_global_dtors_aux+0x2a>
   10164:	6549                	lui	a0,0x12
   10166:	2f050513          	addi	a0,a0,752 # 122f0 <__EH_FRAME_BEGIN__>
   1016a:	ffff0097          	auipc	ra,0xffff0
   1016e:	e96080e7          	jalr	-362(ra) # 0 <_start-0x100b0>
   10172:	4785                	li	a5,1
   10174:	84f18423          	sb	a5,-1976(gp) # 142e0 <completed.5184>
   10178:	60a2                	ld	ra,8(sp)
   1017a:	6402                	ld	s0,0(sp)
   1017c:	0141                	addi	sp,sp,16
   1017e:	8082                	ret
   10180:	8082                	ret

0000000000010182 <frame_dummy>:
   10182:	000007b7          	lui	a5,0x0
   10186:	00078793          	mv	a5,a5
   1018a:	cf91                	beqz	a5,101a6 <frame_dummy+0x24>
   1018c:	6549                	lui	a0,0x12
   1018e:	1141                	addi	sp,sp,-16
   10190:	85018593          	addi	a1,gp,-1968 # 142e8 <object.5189>
   10194:	2f050513          	addi	a0,a0,752 # 122f0 <__EH_FRAME_BEGIN__>
   10198:	e406                	sd	ra,8(sp)
   1019a:	ffff0097          	auipc	ra,0xffff0
   1019e:	e66080e7          	jalr	-410(ra) # 0 <_start-0x100b0>
   101a2:	60a2                	ld	ra,8(sp)
   101a4:	0141                	addi	sp,sp,16
   101a6:	f77ff06f          	j	1011c <register_tm_clones>
	...

00000000000101ac <main>:
   101ac:	ff010113          	addi	sp,sp,-16
   101b0:	00113423          	sd	ra,8(sp)
   101b4:	00813023          	sd	s0,0(sp)
   101b8:	01010413          	addi	s0,sp,16
   101bc:	000127b7          	lui	a5,0x12
   101c0:	2d878513          	addi	a0,a5,728 # 122d8 <__errno+0xe>
   101c4:	00000097          	auipc	ra,0x0
   101c8:	232080e7          	jalr	562(ra) # 103f6 <puts>
   101cc:	00000793          	li	a5,0
   101d0:	00078513          	mv	a0,a5
   101d4:	00813083          	ld	ra,8(sp)
   101d8:	00013403          	ld	s0,0(sp)
   101dc:	01010113          	addi	sp,sp,16
   101e0:	00008067          	ret
   101e4:	0000                	unimp
	...

00000000000101e8 <atexit>:
   101e8:	85aa                	mv	a1,a0
   101ea:	4681                	li	a3,0
   101ec:	4601                	li	a2,0
   101ee:	4501                	li	a0,0
   101f0:	2280006f          	j	10418 <__register_exitproc>
	...

00000000000101f6 <exit>:
   101f6:	1141                	addi	sp,sp,-16
   101f8:	4581                	li	a1,0
   101fa:	e022                	sd	s0,0(sp)
   101fc:	e406                	sd	ra,8(sp)
   101fe:	842a                	mv	s0,a0
   10200:	280000ef          	jal	ra,10480 <__call_exitprocs>
   10204:	67d1                	lui	a5,0x14
   10206:	2a07b503          	ld	a0,672(a5) # 142a0 <_global_impure_ptr>
   1020a:	6d3c                	ld	a5,88(a0)
   1020c:	c391                	beqz	a5,10210 <exit+0x1a>
   1020e:	9782                	jalr	a5
   10210:	8522                	mv	a0,s0
   10212:	00002097          	auipc	ra,0x2
   10216:	09e080e7          	jalr	158(ra) # 122b0 <_exit>
	...

000000000001021c <__libc_fini_array>:
   1021c:	7179                	addi	sp,sp,-48
   1021e:	67cd                	lui	a5,0x13
   10220:	674d                	lui	a4,0x13
   10222:	f022                	sd	s0,32(sp)
   10224:	33870713          	addi	a4,a4,824 # 13338 <__init_array_end>
   10228:	34078413          	addi	s0,a5,832 # 13340 <__fini_array_end>
   1022c:	8c19                	sub	s0,s0,a4
   1022e:	ec26                	sd	s1,24(sp)
   10230:	e84a                	sd	s2,16(sp)
   10232:	e44e                	sd	s3,8(sp)
   10234:	f406                	sd	ra,40(sp)
   10236:	840d                	srai	s0,s0,0x3
   10238:	4481                	li	s1,0
   1023a:	34078913          	addi	s2,a5,832
   1023e:	59e1                	li	s3,-8
   10240:	00941c63          	bne	s0,s1,10258 <__libc_fini_array+0x3c>
   10244:	7402                	ld	s0,32(sp)
   10246:	70a2                	ld	ra,40(sp)
   10248:	64e2                	ld	s1,24(sp)
   1024a:	6942                	ld	s2,16(sp)
   1024c:	69a2                	ld	s3,8(sp)
   1024e:	6145                	addi	sp,sp,48
   10250:	00000317          	auipc	t1,0x0
   10254:	ea630067          	jr	-346(t1) # 100f6 <_fini>
   10258:	033487b3          	mul	a5,s1,s3
   1025c:	0485                	addi	s1,s1,1
   1025e:	97ca                	add	a5,a5,s2
   10260:	ff87b783          	ld	a5,-8(a5)
   10264:	9782                	jalr	a5
   10266:	bfe9                	j	10240 <__libc_fini_array+0x24>
	...

000000000001026a <__libc_init_array>:
   1026a:	1101                	addi	sp,sp,-32
   1026c:	e822                	sd	s0,16(sp)
   1026e:	e426                	sd	s1,8(sp)
   10270:	644d                	lui	s0,0x13
   10272:	64cd                	lui	s1,0x13
   10274:	32c48793          	addi	a5,s1,812 # 1332c <__preinit_array_end>
   10278:	32c40413          	addi	s0,s0,812 # 1332c <__preinit_array_end>
   1027c:	8c1d                	sub	s0,s0,a5
   1027e:	e04a                	sd	s2,0(sp)
   10280:	ec06                	sd	ra,24(sp)
   10282:	840d                	srai	s0,s0,0x3
   10284:	32c48493          	addi	s1,s1,812
   10288:	4901                	li	s2,0
   1028a:	02891963          	bne	s2,s0,102bc <__libc_init_array+0x52>
   1028e:	64cd                	lui	s1,0x13
   10290:	00000097          	auipc	ra,0x0
   10294:	e66080e7          	jalr	-410(ra) # 100f6 <_fini>
   10298:	644d                	lui	s0,0x13
   1029a:	33048793          	addi	a5,s1,816 # 13330 <__frame_dummy_init_array_entry>
   1029e:	33840413          	addi	s0,s0,824 # 13338 <__init_array_end>
   102a2:	8c1d                	sub	s0,s0,a5
   102a4:	840d                	srai	s0,s0,0x3
   102a6:	33048493          	addi	s1,s1,816
   102aa:	4901                	li	s2,0
   102ac:	00891d63          	bne	s2,s0,102c6 <__libc_init_array+0x5c>
   102b0:	60e2                	ld	ra,24(sp)
   102b2:	6442                	ld	s0,16(sp)
   102b4:	64a2                	ld	s1,8(sp)
   102b6:	6902                	ld	s2,0(sp)
   102b8:	6105                	addi	sp,sp,32
   102ba:	8082                	ret
   102bc:	609c                	ld	a5,0(s1)
   102be:	0905                	addi	s2,s2,1
   102c0:	04a1                	addi	s1,s1,8
   102c2:	9782                	jalr	a5
   102c4:	b7d9                	j	1028a <__libc_init_array+0x20>
   102c6:	609c                	ld	a5,0(s1)
   102c8:	0905                	addi	s2,s2,1
   102ca:	04a1                	addi	s1,s1,8
   102cc:	9782                	jalr	a5
   102ce:	bff9                	j	102ac <__libc_init_array+0x42>
	...

00000000000102d2 <memset>:
   102d2:	483d                	li	a6,15
   102d4:	872a                	mv	a4,a0
   102d6:	02c87163          	bleu	a2,a6,102f8 <memset+0x26>
   102da:	00f77793          	andi	a5,a4,15
   102de:	e3c1                	bnez	a5,1035e <memset+0x8c>
   102e0:	e1bd                	bnez	a1,10346 <memset+0x74>
   102e2:	ff067693          	andi	a3,a2,-16
   102e6:	8a3d                	andi	a2,a2,15
   102e8:	96ba                	add	a3,a3,a4
   102ea:	e30c                	sd	a1,0(a4)
   102ec:	e70c                	sd	a1,8(a4)
   102ee:	0741                	addi	a4,a4,16
   102f0:	fed76de3          	bltu	a4,a3,102ea <memset+0x18>
   102f4:	e211                	bnez	a2,102f8 <memset+0x26>
   102f6:	8082                	ret
   102f8:	40c806b3          	sub	a3,a6,a2
   102fc:	068a                	slli	a3,a3,0x2
   102fe:	00000297          	auipc	t0,0x0
   10302:	9696                	add	a3,a3,t0
   10304:	00a68067          	jr	10(a3)
   10308:	00b70723          	sb	a1,14(a4)
   1030c:	00b706a3          	sb	a1,13(a4)
   10310:	00b70623          	sb	a1,12(a4)
   10314:	00b705a3          	sb	a1,11(a4)
   10318:	00b70523          	sb	a1,10(a4)
   1031c:	00b704a3          	sb	a1,9(a4)
   10320:	00b70423          	sb	a1,8(a4)
   10324:	00b703a3          	sb	a1,7(a4)
   10328:	00b70323          	sb	a1,6(a4)
   1032c:	00b702a3          	sb	a1,5(a4)
   10330:	00b70223          	sb	a1,4(a4)
   10334:	00b701a3          	sb	a1,3(a4)
   10338:	00b70123          	sb	a1,2(a4)
   1033c:	00b700a3          	sb	a1,1(a4)
   10340:	00b70023          	sb	a1,0(a4)
   10344:	8082                	ret
   10346:	0ff5f593          	andi	a1,a1,255
   1034a:	00859693          	slli	a3,a1,0x8
   1034e:	8dd5                	or	a1,a1,a3
   10350:	01059693          	slli	a3,a1,0x10
   10354:	8dd5                	or	a1,a1,a3
   10356:	02059693          	slli	a3,a1,0x20
   1035a:	8dd5                	or	a1,a1,a3
   1035c:	b759                	j	102e2 <memset+0x10>
   1035e:	00279693          	slli	a3,a5,0x2
   10362:	00000297          	auipc	t0,0x0
   10366:	9696                	add	a3,a3,t0
   10368:	8286                	mv	t0,ra
   1036a:	fa2680e7          	jalr	-94(a3)
   1036e:	8096                	mv	ra,t0
   10370:	17c1                	addi	a5,a5,-16
   10372:	8f1d                	sub	a4,a4,a5
   10374:	963e                	add	a2,a2,a5
   10376:	f8c871e3          	bleu	a2,a6,102f8 <memset+0x26>
   1037a:	b79d                	j	102e0 <memset+0xe>

000000000001037c <_puts_r>:
   1037c:	711d                	addi	sp,sp,-96
   1037e:	e8a2                	sd	s0,80(sp)
   10380:	842a                	mv	s0,a0
   10382:	852e                	mv	a0,a1
   10384:	e42e                	sd	a1,8(sp)
   10386:	ec86                	sd	ra,88(sp)
   10388:	07c000ef          	jal	ra,10404 <strlen>
   1038c:	000127b7          	lui	a5,0x12
   10390:	2e878793          	addi	a5,a5,744 # 122e8 <__errno+0x1e>
   10394:	e0be                	sd	a5,64(sp)
   10396:	4785                	li	a5,1
   10398:	e4be                	sd	a5,72(sp)
   1039a:	181c                	addi	a5,sp,48
   1039c:	65a2                	ld	a1,8(sp)
   1039e:	ec3e                	sd	a5,24(sp)
   103a0:	4789                	li	a5,2
   103a2:	d03e                	sw	a5,32(sp)
   103a4:	483c                	lw	a5,80(s0)
   103a6:	fc2a                	sd	a0,56(sp)
   103a8:	0505                	addi	a0,a0,1
   103aa:	f82e                	sd	a1,48(sp)
   103ac:	f42a                	sd	a0,40(sp)
   103ae:	680c                	ld	a1,16(s0)
   103b0:	e791                	bnez	a5,103bc <_puts_r+0x40>
   103b2:	8522                	mv	a0,s0
   103b4:	e42e                	sd	a1,8(sp)
   103b6:	250000ef          	jal	ra,10606 <__sinit>
   103ba:	65a2                	ld	a1,8(sp)
   103bc:	01059783          	lh	a5,16(a1)
   103c0:	03279713          	slli	a4,a5,0x32
   103c4:	00074d63          	bltz	a4,103de <_puts_r+0x62>
   103c8:	6689                	lui	a3,0x2
   103ca:	0ac5a703          	lw	a4,172(a1)
   103ce:	8fd5                	or	a5,a5,a3
   103d0:	00f59823          	sh	a5,16(a1)
   103d4:	77f9                	lui	a5,0xffffe
   103d6:	17fd                	addi	a5,a5,-1
   103d8:	8ff9                	and	a5,a5,a4
   103da:	0af5a623          	sw	a5,172(a1)
   103de:	0830                	addi	a2,sp,24
   103e0:	8522                	mv	a0,s0
   103e2:	348000ef          	jal	ra,1072a <__sfvwrite_r>
   103e6:	57fd                	li	a5,-1
   103e8:	e111                	bnez	a0,103ec <_puts_r+0x70>
   103ea:	47a9                	li	a5,10
   103ec:	60e6                	ld	ra,88(sp)
   103ee:	6446                	ld	s0,80(sp)
   103f0:	853e                	mv	a0,a5
   103f2:	6125                	addi	sp,sp,96
   103f4:	8082                	ret

00000000000103f6 <puts>:
   103f6:	85aa                	mv	a1,a0
   103f8:	8101b503          	ld	a0,-2032(gp) # 142a8 <_impure_ptr>
   103fc:	00000317          	auipc	t1,0x0
   10400:	f8030067          	jr	-128(t1) # 1037c <_puts_r>

0000000000010404 <strlen>:
   10404:	87aa                	mv	a5,a0
   10406:	0785                	addi	a5,a5,1
   10408:	fff7c703          	lbu	a4,-1(a5) # ffffffffffffdfff <__global_pointer$+0xfffffffffffe9567>
   1040c:	ff6d                	bnez	a4,10406 <strlen+0x2>
   1040e:	40a78533          	sub	a0,a5,a0
   10412:	157d                	addi	a0,a0,-1
   10414:	8082                	ret
	...

0000000000010418 <__register_exitproc>:
   10418:	67d1                	lui	a5,0x14
   1041a:	2a07b703          	ld	a4,672(a5) # 142a0 <_global_impure_ptr>
   1041e:	832a                	mv	t1,a0
   10420:	1f873783          	ld	a5,504(a4)
   10424:	e789                	bnez	a5,1042e <__register_exitproc+0x16>
   10426:	20070793          	addi	a5,a4,512
   1042a:	1ef73c23          	sd	a5,504(a4)
   1042e:	4798                	lw	a4,8(a5)
   10430:	487d                	li	a6,31
   10432:	557d                	li	a0,-1
   10434:	04e84463          	blt	a6,a4,1047c <__register_exitproc+0x64>
   10438:	02030a63          	beqz	t1,1046c <__register_exitproc+0x54>
   1043c:	00371813          	slli	a6,a4,0x3
   10440:	983e                	add	a6,a6,a5
   10442:	10c83823          	sd	a2,272(a6)
   10446:	3107a883          	lw	a7,784(a5)
   1044a:	4605                	li	a2,1
   1044c:	00e6163b          	sllw	a2,a2,a4
   10450:	00c8e8b3          	or	a7,a7,a2
   10454:	3117a823          	sw	a7,784(a5)
   10458:	20d83823          	sd	a3,528(a6)
   1045c:	4689                	li	a3,2
   1045e:	00d31763          	bne	t1,a3,1046c <__register_exitproc+0x54>
   10462:	3147a683          	lw	a3,788(a5)
   10466:	8e55                	or	a2,a2,a3
   10468:	30c7aa23          	sw	a2,788(a5)
   1046c:	0017069b          	addiw	a3,a4,1
   10470:	0709                	addi	a4,a4,2
   10472:	070e                	slli	a4,a4,0x3
   10474:	c794                	sw	a3,8(a5)
   10476:	97ba                	add	a5,a5,a4
   10478:	e38c                	sd	a1,0(a5)
   1047a:	4501                	li	a0,0
   1047c:	8082                	ret
	...

0000000000010480 <__call_exitprocs>:
   10480:	715d                	addi	sp,sp,-80
   10482:	67d1                	lui	a5,0x14
   10484:	f44e                	sd	s3,40(sp)
   10486:	2a07b983          	ld	s3,672(a5) # 142a0 <_global_impure_ptr>
   1048a:	f052                	sd	s4,32(sp)
   1048c:	ec56                	sd	s5,24(sp)
   1048e:	e85a                	sd	s6,16(sp)
   10490:	e486                	sd	ra,72(sp)
   10492:	e0a2                	sd	s0,64(sp)
   10494:	fc26                	sd	s1,56(sp)
   10496:	f84a                	sd	s2,48(sp)
   10498:	e45e                	sd	s7,8(sp)
   1049a:	8aaa                	mv	s5,a0
   1049c:	8a2e                	mv	s4,a1
   1049e:	4b05                	li	s6,1
   104a0:	1f89b403          	ld	s0,504(s3)
   104a4:	c801                	beqz	s0,104b4 <__call_exitprocs+0x34>
   104a6:	4404                	lw	s1,8(s0)
   104a8:	34fd                	addiw	s1,s1,-1
   104aa:	00349913          	slli	s2,s1,0x3
   104ae:	9922                	add	s2,s2,s0
   104b0:	0004dd63          	bgez	s1,104ca <__call_exitprocs+0x4a>
   104b4:	60a6                	ld	ra,72(sp)
   104b6:	6406                	ld	s0,64(sp)
   104b8:	74e2                	ld	s1,56(sp)
   104ba:	7942                	ld	s2,48(sp)
   104bc:	79a2                	ld	s3,40(sp)
   104be:	7a02                	ld	s4,32(sp)
   104c0:	6ae2                	ld	s5,24(sp)
   104c2:	6b42                	ld	s6,16(sp)
   104c4:	6ba2                	ld	s7,8(sp)
   104c6:	6161                	addi	sp,sp,80
   104c8:	8082                	ret
   104ca:	000a0963          	beqz	s4,104dc <__call_exitprocs+0x5c>
   104ce:	21093783          	ld	a5,528(s2)
   104d2:	01478563          	beq	a5,s4,104dc <__call_exitprocs+0x5c>
   104d6:	34fd                	addiw	s1,s1,-1
   104d8:	1961                	addi	s2,s2,-8
   104da:	bfd9                	j	104b0 <__call_exitprocs+0x30>
   104dc:	441c                	lw	a5,8(s0)
   104de:	01093683          	ld	a3,16(s2)
   104e2:	37fd                	addiw	a5,a5,-1
   104e4:	02979663          	bne	a5,s1,10510 <__call_exitprocs+0x90>
   104e8:	c404                	sw	s1,8(s0)
   104ea:	d6f5                	beqz	a3,104d6 <__call_exitprocs+0x56>
   104ec:	31042703          	lw	a4,784(s0)
   104f0:	009b163b          	sllw	a2,s6,s1
   104f4:	00842b83          	lw	s7,8(s0)
   104f8:	8f71                	and	a4,a4,a2
   104fa:	2701                	sext.w	a4,a4
   104fc:	ef09                	bnez	a4,10516 <__call_exitprocs+0x96>
   104fe:	9682                	jalr	a3
   10500:	4418                	lw	a4,8(s0)
   10502:	1f89b783          	ld	a5,504(s3)
   10506:	f9771de3          	bne	a4,s7,104a0 <__call_exitprocs+0x20>
   1050a:	fcf406e3          	beq	s0,a5,104d6 <__call_exitprocs+0x56>
   1050e:	bf49                	j	104a0 <__call_exitprocs+0x20>
   10510:	00093823          	sd	zero,16(s2)
   10514:	bfd9                	j	104ea <__call_exitprocs+0x6a>
   10516:	31442783          	lw	a5,788(s0)
   1051a:	11093583          	ld	a1,272(s2)
   1051e:	8ff1                	and	a5,a5,a2
   10520:	2781                	sext.w	a5,a5
   10522:	e781                	bnez	a5,1052a <__call_exitprocs+0xaa>
   10524:	8556                	mv	a0,s5
   10526:	9682                	jalr	a3
   10528:	bfe1                	j	10500 <__call_exitprocs+0x80>
   1052a:	852e                	mv	a0,a1
   1052c:	9682                	jalr	a3
   1052e:	bfc9                	j	10500 <__call_exitprocs+0x80>
	...

0000000000010532 <__fp_lock>:
   10532:	4501                	li	a0,0
   10534:	8082                	ret

0000000000010536 <_cleanup_r>:
   10536:	000115b7          	lui	a1,0x11
   1053a:	72a58593          	addi	a1,a1,1834 # 1172a <_fclose_r>
   1053e:	54c0006f          	j	10a8a <_fwalk_reent>

0000000000010542 <std.isra.0>:
   10542:	1141                	addi	sp,sp,-16
   10544:	e022                	sd	s0,0(sp)
   10546:	e406                	sd	ra,8(sp)
   10548:	842a                	mv	s0,a0
   1054a:	00b51823          	sh	a1,16(a0)
   1054e:	00c51923          	sh	a2,18(a0)
   10552:	00053023          	sd	zero,0(a0)
   10556:	00053423          	sd	zero,8(a0)
   1055a:	0a052623          	sw	zero,172(a0)
   1055e:	00053c23          	sd	zero,24(a0)
   10562:	02052023          	sw	zero,32(a0)
   10566:	02052423          	sw	zero,40(a0)
   1056a:	4621                	li	a2,8
   1056c:	4581                	li	a1,0
   1056e:	0a450513          	addi	a0,a0,164
   10572:	00000097          	auipc	ra,0x0
   10576:	d60080e7          	jalr	-672(ra) # 102d2 <memset>
   1057a:	000117b7          	lui	a5,0x11
   1057e:	51478793          	addi	a5,a5,1300 # 11514 <__sread>
   10582:	fc1c                	sd	a5,56(s0)
   10584:	000117b7          	lui	a5,0x11
   10588:	54a78793          	addi	a5,a5,1354 # 1154a <__swrite>
   1058c:	e03c                	sd	a5,64(s0)
   1058e:	000117b7          	lui	a5,0x11
   10592:	59c78793          	addi	a5,a5,1436 # 1159c <__sseek>
   10596:	e43c                	sd	a5,72(s0)
   10598:	000117b7          	lui	a5,0x11
   1059c:	5d878793          	addi	a5,a5,1496 # 115d8 <__sclose>
   105a0:	f800                	sd	s0,48(s0)
   105a2:	e83c                	sd	a5,80(s0)
   105a4:	60a2                	ld	ra,8(sp)
   105a6:	6402                	ld	s0,0(sp)
   105a8:	0141                	addi	sp,sp,16
   105aa:	8082                	ret

00000000000105ac <__fp_unlock>:
   105ac:	4501                	li	a0,0
   105ae:	8082                	ret

00000000000105b0 <__sfmoreglue>:
   105b0:	1101                	addi	sp,sp,-32
   105b2:	e426                	sd	s1,8(sp)
   105b4:	0b000613          	li	a2,176
   105b8:	fff5849b          	addiw	s1,a1,-1
   105bc:	02c484b3          	mul	s1,s1,a2
   105c0:	e04a                	sd	s2,0(sp)
   105c2:	892e                	mv	s2,a1
   105c4:	e822                	sd	s0,16(sp)
   105c6:	ec06                	sd	ra,24(sp)
   105c8:	0c848593          	addi	a1,s1,200
   105cc:	52c000ef          	jal	ra,10af8 <_malloc_r>
   105d0:	842a                	mv	s0,a0
   105d2:	cd11                	beqz	a0,105ee <__sfmoreglue+0x3e>
   105d4:	00053023          	sd	zero,0(a0)
   105d8:	01252423          	sw	s2,8(a0)
   105dc:	0561                	addi	a0,a0,24
   105de:	e808                	sd	a0,16(s0)
   105e0:	0b048613          	addi	a2,s1,176
   105e4:	4581                	li	a1,0
   105e6:	00000097          	auipc	ra,0x0
   105ea:	cec080e7          	jalr	-788(ra) # 102d2 <memset>
   105ee:	8522                	mv	a0,s0
   105f0:	60e2                	ld	ra,24(sp)
   105f2:	6442                	ld	s0,16(sp)
   105f4:	64a2                	ld	s1,8(sp)
   105f6:	6902                	ld	s2,0(sp)
   105f8:	6105                	addi	sp,sp,32
   105fa:	8082                	ret

00000000000105fc <_cleanup>:
   105fc:	67d1                	lui	a5,0x14
   105fe:	2a07b503          	ld	a0,672(a5) # 142a0 <_global_impure_ptr>
   10602:	f35ff06f          	j	10536 <_cleanup_r>

0000000000010606 <__sinit>:
   10606:	493c                	lw	a5,80(a0)
   10608:	eba1                	bnez	a5,10658 <__sinit+0x52>
   1060a:	1141                	addi	sp,sp,-16
   1060c:	000107b7          	lui	a5,0x10
   10610:	e406                	sd	ra,8(sp)
   10612:	e022                	sd	s0,0(sp)
   10614:	53678793          	addi	a5,a5,1334 # 10536 <_cleanup_r>
   10618:	ed3c                	sd	a5,88(a0)
   1061a:	478d                	li	a5,3
   1061c:	52f52423          	sw	a5,1320(a0)
   10620:	53850793          	addi	a5,a0,1336
   10624:	842a                	mv	s0,a0
   10626:	52f53823          	sd	a5,1328(a0)
   1062a:	52053023          	sd	zero,1312(a0)
   1062e:	6508                	ld	a0,8(a0)
   10630:	4601                	li	a2,0
   10632:	4591                	li	a1,4
   10634:	f0fff0ef          	jal	ra,10542 <std.isra.0>
   10638:	6808                	ld	a0,16(s0)
   1063a:	4605                	li	a2,1
   1063c:	45a5                	li	a1,9
   1063e:	f05ff0ef          	jal	ra,10542 <std.isra.0>
   10642:	6c08                	ld	a0,24(s0)
   10644:	4609                	li	a2,2
   10646:	45c9                	li	a1,18
   10648:	efbff0ef          	jal	ra,10542 <std.isra.0>
   1064c:	4785                	li	a5,1
   1064e:	c83c                	sw	a5,80(s0)
   10650:	60a2                	ld	ra,8(sp)
   10652:	6402                	ld	s0,0(sp)
   10654:	0141                	addi	sp,sp,16
   10656:	8082                	ret
   10658:	8082                	ret

000000000001065a <__sfp>:
   1065a:	1101                	addi	sp,sp,-32
   1065c:	67d1                	lui	a5,0x14
   1065e:	e426                	sd	s1,8(sp)
   10660:	2a07b483          	ld	s1,672(a5) # 142a0 <_global_impure_ptr>
   10664:	e04a                	sd	s2,0(sp)
   10666:	ec06                	sd	ra,24(sp)
   10668:	48bc                	lw	a5,80(s1)
   1066a:	e822                	sd	s0,16(sp)
   1066c:	892a                	mv	s2,a0
   1066e:	e791                	bnez	a5,1067a <__sfp+0x20>
   10670:	8526                	mv	a0,s1
   10672:	00000097          	auipc	ra,0x0
   10676:	f94080e7          	jalr	-108(ra) # 10606 <__sinit>
   1067a:	52048493          	addi	s1,s1,1312
   1067e:	6880                	ld	s0,16(s1)
   10680:	449c                	lw	a5,8(s1)
   10682:	37fd                	addiw	a5,a5,-1
   10684:	0007d663          	bgez	a5,10690 <__sfp+0x36>
   10688:	609c                	ld	a5,0(s1)
   1068a:	cb89                	beqz	a5,1069c <__sfp+0x42>
   1068c:	6084                	ld	s1,0(s1)
   1068e:	bfc5                	j	1067e <__sfp+0x24>
   10690:	01041703          	lh	a4,16(s0)
   10694:	c71d                	beqz	a4,106c2 <__sfp+0x68>
   10696:	0b040413          	addi	s0,s0,176
   1069a:	b7e5                	j	10682 <__sfp+0x28>
   1069c:	4591                	li	a1,4
   1069e:	854a                	mv	a0,s2
   106a0:	00000097          	auipc	ra,0x0
   106a4:	f10080e7          	jalr	-240(ra) # 105b0 <__sfmoreglue>
   106a8:	e088                	sd	a0,0(s1)
   106aa:	f16d                	bnez	a0,1068c <__sfp+0x32>
   106ac:	47b1                	li	a5,12
   106ae:	00f92023          	sw	a5,0(s2)
   106b2:	4401                	li	s0,0
   106b4:	8522                	mv	a0,s0
   106b6:	60e2                	ld	ra,24(sp)
   106b8:	6442                	ld	s0,16(sp)
   106ba:	64a2                	ld	s1,8(sp)
   106bc:	6902                	ld	s2,0(sp)
   106be:	6105                	addi	sp,sp,32
   106c0:	8082                	ret
   106c2:	77c1                	lui	a5,0xffff0
   106c4:	2785                	addiw	a5,a5,1
   106c6:	0a042623          	sw	zero,172(s0)
   106ca:	00043023          	sd	zero,0(s0)
   106ce:	00043423          	sd	zero,8(s0)
   106d2:	c81c                	sw	a5,16(s0)
   106d4:	00043c23          	sd	zero,24(s0)
   106d8:	02042023          	sw	zero,32(s0)
   106dc:	02042423          	sw	zero,40(s0)
   106e0:	4621                	li	a2,8
   106e2:	4581                	li	a1,0
   106e4:	0a440513          	addi	a0,s0,164
   106e8:	bebff0ef          	jal	ra,102d2 <memset>
   106ec:	04043c23          	sd	zero,88(s0)
   106f0:	06042023          	sw	zero,96(s0)
   106f4:	06043c23          	sd	zero,120(s0)
   106f8:	08042023          	sw	zero,128(s0)
   106fc:	bf65                	j	106b4 <__sfp+0x5a>

00000000000106fe <__sfp_lock_acquire>:
   106fe:	8082                	ret

0000000000010700 <__sfp_lock_release>:
   10700:	8082                	ret

0000000000010702 <__sinit_lock_acquire>:
   10702:	8082                	ret

0000000000010704 <__sinit_lock_release>:
   10704:	8082                	ret

0000000000010706 <__fp_lock_all>:
   10706:	8101b503          	ld	a0,-2032(gp) # 142a8 <_impure_ptr>
   1070a:	000105b7          	lui	a1,0x10
   1070e:	53258593          	addi	a1,a1,1330 # 10532 <__fp_lock>
   10712:	3140006f          	j	10a26 <_fwalk>

0000000000010716 <__fp_unlock_all>:
   10716:	8101b503          	ld	a0,-2032(gp) # 142a8 <_impure_ptr>
   1071a:	000105b7          	lui	a1,0x10
   1071e:	5ac58593          	addi	a1,a1,1452 # 105ac <__fp_unlock>
   10722:	00000317          	auipc	t1,0x0
   10726:	30430067          	jr	772(t1) # 10a26 <_fwalk>

000000000001072a <__sfvwrite_r>:
   1072a:	6a1c                	ld	a5,16(a2)
   1072c:	e781                	bnez	a5,10734 <__sfvwrite_r+0xa>
   1072e:	4781                	li	a5,0
   10730:	853e                	mv	a0,a5
   10732:	8082                	ret
   10734:	0105d783          	lhu	a5,16(a1)
   10738:	7119                	addi	sp,sp,-128
   1073a:	f8a2                	sd	s0,112(sp)
   1073c:	f0ca                	sd	s2,96(sp)
   1073e:	e8d2                	sd	s4,80(sp)
   10740:	fc86                	sd	ra,120(sp)
   10742:	f4a6                	sd	s1,104(sp)
   10744:	ecce                	sd	s3,88(sp)
   10746:	e4d6                	sd	s5,72(sp)
   10748:	e0da                	sd	s6,64(sp)
   1074a:	fc5e                	sd	s7,56(sp)
   1074c:	f862                	sd	s8,48(sp)
   1074e:	f466                	sd	s9,40(sp)
   10750:	f06a                	sd	s10,32(sp)
   10752:	ec6e                	sd	s11,24(sp)
   10754:	8ba1                	andi	a5,a5,8
   10756:	8a32                	mv	s4,a2
   10758:	842e                	mv	s0,a1
   1075a:	892a                	mv	s2,a0
   1075c:	c3d5                	beqz	a5,10800 <__sfvwrite_r+0xd6>
   1075e:	6d9c                	ld	a5,24(a1)
   10760:	c3c5                	beqz	a5,10800 <__sfvwrite_r+0xd6>
   10762:	01045783          	lhu	a5,16(s0)
   10766:	000a3983          	ld	s3,0(s4)
   1076a:	0027f713          	andi	a4,a5,2
   1076e:	0e071c63          	bnez	a4,10866 <__sfvwrite_r+0x13c>
   10772:	8b85                	andi	a5,a5,1
   10774:	4a81                	li	s5,0
   10776:	16078863          	beqz	a5,108e6 <__sfvwrite_r+0x1bc>
   1077a:	4501                	li	a0,0
   1077c:	4b81                	li	s7,0
   1077e:	4b01                	li	s6,0
   10780:	260b0063          	beqz	s6,109e0 <__sfvwrite_r+0x2b6>
   10784:	e919                	bnez	a0,1079a <__sfvwrite_r+0x70>
   10786:	865a                	mv	a2,s6
   10788:	45a9                	li	a1,10
   1078a:	855e                	mv	a0,s7
   1078c:	05b000ef          	jal	ra,10fe6 <memchr>
   10790:	24050f63          	beqz	a0,109ee <__sfvwrite_r+0x2c4>
   10794:	0505                	addi	a0,a0,1
   10796:	41750abb          	subw	s5,a0,s7
   1079a:	8c56                	mv	s8,s5
   1079c:	015b7363          	bleu	s5,s6,107a2 <__sfvwrite_r+0x78>
   107a0:	8c5a                	mv	s8,s6
   107a2:	6008                	ld	a0,0(s0)
   107a4:	6c1c                	ld	a5,24(s0)
   107a6:	5014                	lw	a3,32(s0)
   107a8:	24a7f663          	bleu	a0,a5,109f4 <__sfvwrite_r+0x2ca>
   107ac:	4444                	lw	s1,12(s0)
   107ae:	9cb5                	addw	s1,s1,a3
   107b0:	2584d263          	ble	s8,s1,109f4 <__sfvwrite_r+0x2ca>
   107b4:	85de                	mv	a1,s7
   107b6:	8626                	mv	a2,s1
   107b8:	10b000ef          	jal	ra,110c2 <memmove>
   107bc:	601c                	ld	a5,0(s0)
   107be:	85a2                	mv	a1,s0
   107c0:	854a                	mv	a0,s2
   107c2:	97a6                	add	a5,a5,s1
   107c4:	e01c                	sd	a5,0(s0)
   107c6:	00001097          	auipc	ra,0x1
   107ca:	176080e7          	jalr	374(ra) # 1193c <_fflush_r>
   107ce:	10051463          	bnez	a0,108d6 <__sfvwrite_r+0x1ac>
   107d2:	409a8abb          	subw	s5,s5,s1
   107d6:	4505                	li	a0,1
   107d8:	000a9963          	bnez	s5,107ea <__sfvwrite_r+0xc0>
   107dc:	85a2                	mv	a1,s0
   107de:	854a                	mv	a0,s2
   107e0:	00001097          	auipc	ra,0x1
   107e4:	15c080e7          	jalr	348(ra) # 1193c <_fflush_r>
   107e8:	e57d                	bnez	a0,108d6 <__sfvwrite_r+0x1ac>
   107ea:	010a3783          	ld	a5,16(s4)
   107ee:	9ba6                	add	s7,s7,s1
   107f0:	409b0b33          	sub	s6,s6,s1
   107f4:	409784b3          	sub	s1,a5,s1
   107f8:	009a3823          	sd	s1,16(s4)
   107fc:	f0d1                	bnez	s1,10780 <__sfvwrite_r+0x56>
   107fe:	a099                	j	10844 <__sfvwrite_r+0x11a>
   10800:	85a2                	mv	a1,s0
   10802:	854a                	mv	a0,s2
   10804:	615000ef          	jal	ra,11618 <__swsetup_r>
   10808:	57fd                	li	a5,-1
   1080a:	dd21                	beqz	a0,10762 <__sfvwrite_r+0x38>
   1080c:	a82d                	j	10846 <__sfvwrite_r+0x11c>
   1080e:	0009ba83          	ld	s5,0(s3)
   10812:	0089b483          	ld	s1,8(s3)
   10816:	09c1                	addi	s3,s3,16
   10818:	d8fd                	beqz	s1,1080e <__sfvwrite_r+0xe4>
   1081a:	86a6                	mv	a3,s1
   1081c:	009b7363          	bleu	s1,s6,10822 <__sfvwrite_r+0xf8>
   10820:	86da                	mv	a3,s6
   10822:	603c                	ld	a5,64(s0)
   10824:	780c                	ld	a1,48(s0)
   10826:	2681                	sext.w	a3,a3
   10828:	8656                	mv	a2,s5
   1082a:	854a                	mv	a0,s2
   1082c:	9782                	jalr	a5
   1082e:	0aa05463          	blez	a0,108d6 <__sfvwrite_r+0x1ac>
   10832:	010a3783          	ld	a5,16(s4)
   10836:	9aaa                	add	s5,s5,a0
   10838:	8c89                	sub	s1,s1,a0
   1083a:	40a78533          	sub	a0,a5,a0
   1083e:	00aa3823          	sd	a0,16(s4)
   10842:	f979                	bnez	a0,10818 <__sfvwrite_r+0xee>
   10844:	4781                	li	a5,0
   10846:	70e6                	ld	ra,120(sp)
   10848:	7446                	ld	s0,112(sp)
   1084a:	74a6                	ld	s1,104(sp)
   1084c:	7906                	ld	s2,96(sp)
   1084e:	69e6                	ld	s3,88(sp)
   10850:	6a46                	ld	s4,80(sp)
   10852:	6aa6                	ld	s5,72(sp)
   10854:	6b06                	ld	s6,64(sp)
   10856:	7be2                	ld	s7,56(sp)
   10858:	7c42                	ld	s8,48(sp)
   1085a:	7ca2                	ld	s9,40(sp)
   1085c:	7d02                	ld	s10,32(sp)
   1085e:	6de2                	ld	s11,24(sp)
   10860:	853e                	mv	a0,a5
   10862:	6109                	addi	sp,sp,128
   10864:	8082                	ret
   10866:	80000b37          	lui	s6,0x80000
   1086a:	4a81                	li	s5,0
   1086c:	4481                	li	s1,0
   1086e:	c00b4b13          	xori	s6,s6,-1024
   10872:	b75d                	j	10818 <__sfvwrite_r+0xee>
   10874:	0009ba83          	ld	s5,0(s3)
   10878:	0089bd03          	ld	s10,8(s3)
   1087c:	09c1                	addi	s3,s3,16
   1087e:	4444                	lw	s1,12(s0)
   10880:	87a6                	mv	a5,s1
   10882:	fe0d09e3          	beqz	s10,10874 <__sfvwrite_r+0x14a>
   10886:	01045703          	lhu	a4,16(s0)
   1088a:	6008                	ld	a0,0(s0)
   1088c:	20077693          	andi	a3,a4,512
   10890:	0e068a63          	beqz	a3,10984 <__sfvwrite_r+0x25a>
   10894:	089d6963          	bltu	s10,s1,10926 <__sfvwrite_r+0x1fc>
   10898:	48077693          	andi	a3,a4,1152
   1089c:	c6c9                	beqz	a3,10926 <__sfvwrite_r+0x1fc>
   1089e:	5004                	lw	s1,32(s0)
   108a0:	6c0c                	ld	a1,24(s0)
   108a2:	029c04bb          	mulw	s1,s8,s1
   108a6:	8d0d                	sub	a0,a0,a1
   108a8:	00050d9b          	sext.w	s11,a0
   108ac:	001d8793          	addi	a5,s11,1
   108b0:	97ea                	add	a5,a5,s10
   108b2:	0394c4bb          	divw	s1,s1,s9
   108b6:	00f4f563          	bleu	a5,s1,108c0 <__sfvwrite_r+0x196>
   108ba:	2505                	addiw	a0,a0,1
   108bc:	01a504bb          	addw	s1,a0,s10
   108c0:	40077713          	andi	a4,a4,1024
   108c4:	cf49                	beqz	a4,1095e <__sfvwrite_r+0x234>
   108c6:	85a6                	mv	a1,s1
   108c8:	854a                	mv	a0,s2
   108ca:	22e000ef          	jal	ra,10af8 <_malloc_r>
   108ce:	e515                	bnez	a0,108fa <__sfvwrite_r+0x1d0>
   108d0:	47b1                	li	a5,12
   108d2:	00f92023          	sw	a5,0(s2)
   108d6:	01045783          	lhu	a5,16(s0)
   108da:	0407e793          	ori	a5,a5,64
   108de:	00f41823          	sh	a5,16(s0)
   108e2:	57fd                	li	a5,-1
   108e4:	b78d                	j	10846 <__sfvwrite_r+0x11c>
   108e6:	80000b37          	lui	s6,0x80000
   108ea:	ffeb4b93          	xori	s7,s6,-2
   108ee:	4d01                	li	s10,0
   108f0:	fffb4b13          	not	s6,s6
   108f4:	4c0d                	li	s8,3
   108f6:	4c89                	li	s9,2
   108f8:	b759                	j	1087e <__sfvwrite_r+0x154>
   108fa:	6c0c                	ld	a1,24(s0)
   108fc:	866e                	mv	a2,s11
   108fe:	e42a                	sd	a0,8(sp)
   10900:	702000ef          	jal	ra,11002 <memcpy>
   10904:	01045703          	lhu	a4,16(s0)
   10908:	67a2                	ld	a5,8(sp)
   1090a:	b7f77713          	andi	a4,a4,-1153
   1090e:	08076713          	ori	a4,a4,128
   10912:	00e41823          	sh	a4,16(s0)
   10916:	ec1c                	sd	a5,24(s0)
   10918:	d004                	sw	s1,32(s0)
   1091a:	97ee                	add	a5,a5,s11
   1091c:	41b484bb          	subw	s1,s1,s11
   10920:	e01c                	sd	a5,0(s0)
   10922:	c444                	sw	s1,12(s0)
   10924:	87ea                	mv	a5,s10
   10926:	84ea                	mv	s1,s10
   10928:	00fd7363          	bleu	a5,s10,1092e <__sfvwrite_r+0x204>
   1092c:	87ea                	mv	a5,s10
   1092e:	6008                	ld	a0,0(s0)
   10930:	863e                	mv	a2,a5
   10932:	85d6                	mv	a1,s5
   10934:	e43e                	sd	a5,8(sp)
   10936:	78c000ef          	jal	ra,110c2 <memmove>
   1093a:	4458                	lw	a4,12(s0)
   1093c:	67a2                	ld	a5,8(sp)
   1093e:	9f1d                	subw	a4,a4,a5
   10940:	c458                	sw	a4,12(s0)
   10942:	6018                	ld	a4,0(s0)
   10944:	97ba                	add	a5,a5,a4
   10946:	e01c                	sd	a5,0(s0)
   10948:	010a3783          	ld	a5,16(s4)
   1094c:	9aa6                	add	s5,s5,s1
   1094e:	409d0d33          	sub	s10,s10,s1
   10952:	409784b3          	sub	s1,a5,s1
   10956:	009a3823          	sd	s1,16(s4)
   1095a:	f095                	bnez	s1,1087e <__sfvwrite_r+0x154>
   1095c:	b5e5                	j	10844 <__sfvwrite_r+0x11a>
   1095e:	8626                	mv	a2,s1
   10960:	854a                	mv	a0,s2
   10962:	7a4000ef          	jal	ra,11106 <_realloc_r>
   10966:	87aa                	mv	a5,a0
   10968:	f55d                	bnez	a0,10916 <__sfvwrite_r+0x1ec>
   1096a:	6c0c                	ld	a1,24(s0)
   1096c:	854a                	mv	a0,s2
   1096e:	00001097          	auipc	ra,0x1
   10972:	0f2080e7          	jalr	242(ra) # 11a60 <_free_r>
   10976:	01045783          	lhu	a5,16(s0)
   1097a:	f7f7f793          	andi	a5,a5,-129
   1097e:	00f41823          	sh	a5,16(s0)
   10982:	b7b9                	j	108d0 <__sfvwrite_r+0x1a6>
   10984:	6c1c                	ld	a5,24(s0)
   10986:	00a7e563          	bltu	a5,a0,10990 <__sfvwrite_r+0x266>
   1098a:	5014                	lw	a3,32(s0)
   1098c:	02dd7963          	bleu	a3,s10,109be <__sfvwrite_r+0x294>
   10990:	009d7363          	bleu	s1,s10,10996 <__sfvwrite_r+0x26c>
   10994:	84ea                	mv	s1,s10
   10996:	8626                	mv	a2,s1
   10998:	85d6                	mv	a1,s5
   1099a:	728000ef          	jal	ra,110c2 <memmove>
   1099e:	445c                	lw	a5,12(s0)
   109a0:	4097873b          	subw	a4,a5,s1
   109a4:	601c                	ld	a5,0(s0)
   109a6:	c458                	sw	a4,12(s0)
   109a8:	97a6                	add	a5,a5,s1
   109aa:	e01c                	sd	a5,0(s0)
   109ac:	ff51                	bnez	a4,10948 <__sfvwrite_r+0x21e>
   109ae:	85a2                	mv	a1,s0
   109b0:	854a                	mv	a0,s2
   109b2:	00001097          	auipc	ra,0x1
   109b6:	f8a080e7          	jalr	-118(ra) # 1193c <_fflush_r>
   109ba:	d559                	beqz	a0,10948 <__sfvwrite_r+0x21e>
   109bc:	bf29                	j	108d6 <__sfvwrite_r+0x1ac>
   109be:	87da                	mv	a5,s6
   109c0:	01abe363          	bltu	s7,s10,109c6 <__sfvwrite_r+0x29c>
   109c4:	87ea                	mv	a5,s10
   109c6:	02d7c7bb          	divw	a5,a5,a3
   109ca:	6038                	ld	a4,64(s0)
   109cc:	780c                	ld	a1,48(s0)
   109ce:	8656                	mv	a2,s5
   109d0:	854a                	mv	a0,s2
   109d2:	02d786bb          	mulw	a3,a5,a3
   109d6:	9702                	jalr	a4
   109d8:	84aa                	mv	s1,a0
   109da:	f6a047e3          	bgtz	a0,10948 <__sfvwrite_r+0x21e>
   109de:	bde5                	j	108d6 <__sfvwrite_r+0x1ac>
   109e0:	0009bb83          	ld	s7,0(s3)
   109e4:	0089bb03          	ld	s6,8(s3)
   109e8:	4501                	li	a0,0
   109ea:	09c1                	addi	s3,s3,16
   109ec:	bb51                	j	10780 <__sfvwrite_r+0x56>
   109ee:	001b0a9b          	addiw	s5,s6,1
   109f2:	b365                	j	1079a <__sfvwrite_r+0x70>
   109f4:	00dc4b63          	blt	s8,a3,10a0a <__sfvwrite_r+0x2e0>
   109f8:	603c                	ld	a5,64(s0)
   109fa:	780c                	ld	a1,48(s0)
   109fc:	865e                	mv	a2,s7
   109fe:	854a                	mv	a0,s2
   10a00:	9782                	jalr	a5
   10a02:	84aa                	mv	s1,a0
   10a04:	dca047e3          	bgtz	a0,107d2 <__sfvwrite_r+0xa8>
   10a08:	b5f9                	j	108d6 <__sfvwrite_r+0x1ac>
   10a0a:	8662                	mv	a2,s8
   10a0c:	85de                	mv	a1,s7
   10a0e:	6b4000ef          	jal	ra,110c2 <memmove>
   10a12:	445c                	lw	a5,12(s0)
   10a14:	84e2                	mv	s1,s8
   10a16:	418787bb          	subw	a5,a5,s8
   10a1a:	c45c                	sw	a5,12(s0)
   10a1c:	601c                	ld	a5,0(s0)
   10a1e:	97e2                	add	a5,a5,s8
   10a20:	e01c                	sd	a5,0(s0)
   10a22:	bb45                	j	107d2 <__sfvwrite_r+0xa8>
	...

0000000000010a26 <_fwalk>:
   10a26:	715d                	addi	sp,sp,-80
   10a28:	e0a2                	sd	s0,64(sp)
   10a2a:	fc26                	sd	s1,56(sp)
   10a2c:	f052                	sd	s4,32(sp)
   10a2e:	ec56                	sd	s5,24(sp)
   10a30:	e486                	sd	ra,72(sp)
   10a32:	f84a                	sd	s2,48(sp)
   10a34:	f44e                	sd	s3,40(sp)
   10a36:	52050493          	addi	s1,a0,1312
   10a3a:	4401                	li	s0,0
   10a3c:	4a05                	li	s4,1
   10a3e:	5afd                	li	s5,-1
   10a40:	e899                	bnez	s1,10a56 <_fwalk+0x30>
   10a42:	8522                	mv	a0,s0
   10a44:	60a6                	ld	ra,72(sp)
   10a46:	6406                	ld	s0,64(sp)
   10a48:	74e2                	ld	s1,56(sp)
   10a4a:	7942                	ld	s2,48(sp)
   10a4c:	79a2                	ld	s3,40(sp)
   10a4e:	7a02                	ld	s4,32(sp)
   10a50:	6ae2                	ld	s5,24(sp)
   10a52:	6161                	addi	sp,sp,80
   10a54:	8082                	ret
   10a56:	0104b903          	ld	s2,16(s1)
   10a5a:	0084a983          	lw	s3,8(s1)
   10a5e:	39fd                	addiw	s3,s3,-1
   10a60:	0009d463          	bgez	s3,10a68 <_fwalk+0x42>
   10a64:	6084                	ld	s1,0(s1)
   10a66:	bfe9                	j	10a40 <_fwalk+0x1a>
   10a68:	01095783          	lhu	a5,16(s2)
   10a6c:	00fa7c63          	bleu	a5,s4,10a84 <_fwalk+0x5e>
   10a70:	01291783          	lh	a5,18(s2)
   10a74:	01578863          	beq	a5,s5,10a84 <_fwalk+0x5e>
   10a78:	854a                	mv	a0,s2
   10a7a:	e42e                	sd	a1,8(sp)
   10a7c:	9582                	jalr	a1
   10a7e:	65a2                	ld	a1,8(sp)
   10a80:	8c49                	or	s0,s0,a0
   10a82:	2401                	sext.w	s0,s0
   10a84:	0b090913          	addi	s2,s2,176
   10a88:	bfd9                	j	10a5e <_fwalk+0x38>

0000000000010a8a <_fwalk_reent>:
   10a8a:	715d                	addi	sp,sp,-80
   10a8c:	e0a2                	sd	s0,64(sp)
   10a8e:	fc26                	sd	s1,56(sp)
   10a90:	f052                	sd	s4,32(sp)
   10a92:	ec56                	sd	s5,24(sp)
   10a94:	e85a                	sd	s6,16(sp)
   10a96:	e45e                	sd	s7,8(sp)
   10a98:	e486                	sd	ra,72(sp)
   10a9a:	f84a                	sd	s2,48(sp)
   10a9c:	f44e                	sd	s3,40(sp)
   10a9e:	8a2a                	mv	s4,a0
   10aa0:	8aae                	mv	s5,a1
   10aa2:	52050493          	addi	s1,a0,1312
   10aa6:	4401                	li	s0,0
   10aa8:	4b05                	li	s6,1
   10aaa:	5bfd                	li	s7,-1
   10aac:	ec89                	bnez	s1,10ac6 <_fwalk_reent+0x3c>
   10aae:	8522                	mv	a0,s0
   10ab0:	60a6                	ld	ra,72(sp)
   10ab2:	6406                	ld	s0,64(sp)
   10ab4:	74e2                	ld	s1,56(sp)
   10ab6:	7942                	ld	s2,48(sp)
   10ab8:	79a2                	ld	s3,40(sp)
   10aba:	7a02                	ld	s4,32(sp)
   10abc:	6ae2                	ld	s5,24(sp)
   10abe:	6b42                	ld	s6,16(sp)
   10ac0:	6ba2                	ld	s7,8(sp)
   10ac2:	6161                	addi	sp,sp,80
   10ac4:	8082                	ret
   10ac6:	0104b903          	ld	s2,16(s1)
   10aca:	0084a983          	lw	s3,8(s1)
   10ace:	39fd                	addiw	s3,s3,-1
   10ad0:	0009d463          	bgez	s3,10ad8 <_fwalk_reent+0x4e>
   10ad4:	6084                	ld	s1,0(s1)
   10ad6:	bfd9                	j	10aac <_fwalk_reent+0x22>
   10ad8:	01095783          	lhu	a5,16(s2)
   10adc:	00fb7b63          	bleu	a5,s6,10af2 <_fwalk_reent+0x68>
   10ae0:	01291783          	lh	a5,18(s2)
   10ae4:	01778763          	beq	a5,s7,10af2 <_fwalk_reent+0x68>
   10ae8:	85ca                	mv	a1,s2
   10aea:	8552                	mv	a0,s4
   10aec:	9a82                	jalr	s5
   10aee:	8c49                	or	s0,s0,a0
   10af0:	2401                	sext.w	s0,s0
   10af2:	0b090913          	addi	s2,s2,176
   10af6:	bfe1                	j	10ace <_fwalk_reent+0x44>

0000000000010af8 <_malloc_r>:
   10af8:	715d                	addi	sp,sp,-80
   10afa:	fc26                	sd	s1,56(sp)
   10afc:	f84a                	sd	s2,48(sp)
   10afe:	e486                	sd	ra,72(sp)
   10b00:	e0a2                	sd	s0,64(sp)
   10b02:	f44e                	sd	s3,40(sp)
   10b04:	f052                	sd	s4,32(sp)
   10b06:	ec56                	sd	s5,24(sp)
   10b08:	e85a                	sd	s6,16(sp)
   10b0a:	e45e                	sd	s7,8(sp)
   10b0c:	e062                	sd	s8,0(sp)
   10b0e:	01758493          	addi	s1,a1,23
   10b12:	02e00793          	li	a5,46
   10b16:	892a                	mv	s2,a0
   10b18:	4a97fd63          	bleu	s1,a5,10fd2 <_malloc_r+0x4da>
   10b1c:	800007b7          	lui	a5,0x80000
   10b20:	98c1                	andi	s1,s1,-16
   10b22:	fff7c793          	not	a5,a5
   10b26:	0097e463          	bltu	a5,s1,10b2e <_malloc_r+0x36>
   10b2a:	02b4f263          	bleu	a1,s1,10b4e <_malloc_r+0x56>
   10b2e:	47b1                	li	a5,12
   10b30:	00f92023          	sw	a5,0(s2)
   10b34:	4501                	li	a0,0
   10b36:	60a6                	ld	ra,72(sp)
   10b38:	6406                	ld	s0,64(sp)
   10b3a:	74e2                	ld	s1,56(sp)
   10b3c:	7942                	ld	s2,48(sp)
   10b3e:	79a2                	ld	s3,40(sp)
   10b40:	7a02                	ld	s4,32(sp)
   10b42:	6ae2                	ld	s5,24(sp)
   10b44:	6b42                	ld	s6,16(sp)
   10b46:	6ba2                	ld	s7,8(sp)
   10b48:	6c02                	ld	s8,0(sp)
   10b4a:	6161                	addi	sp,sp,80
   10b4c:	8082                	ret
   10b4e:	5b4000ef          	jal	ra,11102 <__malloc_lock>
   10b52:	1f700793          	li	a5,503
   10b56:	0497ea63          	bltu	a5,s1,10baa <_malloc_r+0xb2>
   10b5a:	0034d793          	srli	a5,s1,0x3
   10b5e:	2781                	sext.w	a5,a5
   10b60:	0017871b          	addiw	a4,a5,1
   10b64:	0017171b          	slliw	a4,a4,0x1
   10b68:	66d1                	lui	a3,0x14
   10b6a:	a8868693          	addi	a3,a3,-1400 # 13a88 <__malloc_av_>
   10b6e:	070e                	slli	a4,a4,0x3
   10b70:	9736                	add	a4,a4,a3
   10b72:	6700                	ld	s0,8(a4)
   10b74:	ff070693          	addi	a3,a4,-16
   10b78:	00d41663          	bne	s0,a3,10b84 <_malloc_r+0x8c>
   10b7c:	6f00                	ld	s0,24(a4)
   10b7e:	2789                	addiw	a5,a5,2
   10b80:	06870863          	beq	a4,s0,10bf0 <_malloc_r+0xf8>
   10b84:	641c                	ld	a5,8(s0)
   10b86:	6c18                	ld	a4,24(s0)
   10b88:	6814                	ld	a3,16(s0)
   10b8a:	9bf1                	andi	a5,a5,-4
   10b8c:	97a2                	add	a5,a5,s0
   10b8e:	ee98                	sd	a4,24(a3)
   10b90:	eb14                	sd	a3,16(a4)
   10b92:	6798                	ld	a4,8(a5)
   10b94:	00176713          	ori	a4,a4,1
   10b98:	e798                	sd	a4,8(a5)
   10b9a:	854a                	mv	a0,s2
   10b9c:	00000097          	auipc	ra,0x0
   10ba0:	568080e7          	jalr	1384(ra) # 11104 <__malloc_unlock>
   10ba4:	01040513          	addi	a0,s0,16
   10ba8:	b779                	j	10b36 <_malloc_r+0x3e>
   10baa:	0094d713          	srli	a4,s1,0x9
   10bae:	03f00793          	li	a5,63
   10bb2:	cb01                	beqz	a4,10bc2 <_malloc_r+0xca>
   10bb4:	4791                	li	a5,4
   10bb6:	08e7e063          	bltu	a5,a4,10c36 <_malloc_r+0x13e>
   10bba:	0064d793          	srli	a5,s1,0x6
   10bbe:	0387879b          	addiw	a5,a5,56
   10bc2:	0017871b          	addiw	a4,a5,1
   10bc6:	0017171b          	slliw	a4,a4,0x1
   10bca:	66d1                	lui	a3,0x14
   10bcc:	070e                	slli	a4,a4,0x3
   10bce:	a8868693          	addi	a3,a3,-1400 # 13a88 <__malloc_av_>
   10bd2:	9736                	add	a4,a4,a3
   10bd4:	6700                	ld	s0,8(a4)
   10bd6:	ff070593          	addi	a1,a4,-16
   10bda:	457d                	li	a0,31
   10bdc:	00b40963          	beq	s0,a1,10bee <_malloc_r+0xf6>
   10be0:	6418                	ld	a4,8(s0)
   10be2:	9b71                	andi	a4,a4,-4
   10be4:	40970633          	sub	a2,a4,s1
   10be8:	08c55a63          	ble	a2,a0,10c7c <_malloc_r+0x184>
   10bec:	37fd                	addiw	a5,a5,-1
   10bee:	2785                	addiw	a5,a5,1
   10bf0:	69d1                	lui	s3,0x14
   10bf2:	a8898693          	addi	a3,s3,-1400 # 13a88 <__malloc_av_>
   10bf6:	7280                	ld	s0,32(a3)
   10bf8:	65d1                	lui	a1,0x14
   10bfa:	a9858613          	addi	a2,a1,-1384 # 13a98 <__malloc_av_+0x10>
   10bfe:	a8898993          	addi	s3,s3,-1400
   10c02:	a9858593          	addi	a1,a1,-1384
   10c06:	0cc40c63          	beq	s0,a2,10cde <_malloc_r+0x1e6>
   10c0a:	6418                	ld	a4,8(s0)
   10c0c:	487d                	li	a6,31
   10c0e:	9b71                	andi	a4,a4,-4
   10c10:	40970533          	sub	a0,a4,s1
   10c14:	06a85f63          	ble	a0,a6,10c92 <_malloc_r+0x19a>
   10c18:	009407b3          	add	a5,s0,s1
   10c1c:	0014e493          	ori	s1,s1,1
   10c20:	e404                	sd	s1,8(s0)
   10c22:	f69c                	sd	a5,40(a3)
   10c24:	f29c                	sd	a5,32(a3)
   10c26:	00156693          	ori	a3,a0,1
   10c2a:	ef90                	sd	a2,24(a5)
   10c2c:	eb90                	sd	a2,16(a5)
   10c2e:	e794                	sd	a3,8(a5)
   10c30:	9722                	add	a4,a4,s0
   10c32:	e308                	sd	a0,0(a4)
   10c34:	b79d                	j	10b9a <_malloc_r+0xa2>
   10c36:	47d1                	li	a5,20
   10c38:	00e7e563          	bltu	a5,a4,10c42 <_malloc_r+0x14a>
   10c3c:	05b7079b          	addiw	a5,a4,91
   10c40:	b749                	j	10bc2 <_malloc_r+0xca>
   10c42:	05400793          	li	a5,84
   10c46:	00e7e763          	bltu	a5,a4,10c54 <_malloc_r+0x15c>
   10c4a:	00c4d793          	srli	a5,s1,0xc
   10c4e:	06e7879b          	addiw	a5,a5,110
   10c52:	bf85                	j	10bc2 <_malloc_r+0xca>
   10c54:	15400793          	li	a5,340
   10c58:	00e7e763          	bltu	a5,a4,10c66 <_malloc_r+0x16e>
   10c5c:	00f4d793          	srli	a5,s1,0xf
   10c60:	0777879b          	addiw	a5,a5,119
   10c64:	bfb9                	j	10bc2 <_malloc_r+0xca>
   10c66:	55400693          	li	a3,1364
   10c6a:	07e00793          	li	a5,126
   10c6e:	f4e6eae3          	bltu	a3,a4,10bc2 <_malloc_r+0xca>
   10c72:	0124d793          	srli	a5,s1,0x12
   10c76:	07c7879b          	addiw	a5,a5,124
   10c7a:	b7a1                	j	10bc2 <_malloc_r+0xca>
   10c7c:	6c14                	ld	a3,24(s0)
   10c7e:	00064863          	bltz	a2,10c8e <_malloc_r+0x196>
   10c82:	681c                	ld	a5,16(s0)
   10c84:	ef94                	sd	a3,24(a5)
   10c86:	ea9c                	sd	a5,16(a3)
   10c88:	00e407b3          	add	a5,s0,a4
   10c8c:	b719                	j	10b92 <_malloc_r+0x9a>
   10c8e:	8436                	mv	s0,a3
   10c90:	b7b1                	j	10bdc <_malloc_r+0xe4>
   10c92:	f690                	sd	a2,40(a3)
   10c94:	f290                	sd	a2,32(a3)
   10c96:	00054863          	bltz	a0,10ca6 <_malloc_r+0x1ae>
   10c9a:	9722                	add	a4,a4,s0
   10c9c:	671c                	ld	a5,8(a4)
   10c9e:	0017e793          	ori	a5,a5,1
   10ca2:	e71c                	sd	a5,8(a4)
   10ca4:	bddd                	j	10b9a <_malloc_r+0xa2>
   10ca6:	1ff00693          	li	a3,511
   10caa:	12e6e863          	bltu	a3,a4,10dda <_malloc_r+0x2e2>
   10cae:	830d                	srli	a4,a4,0x3
   10cb0:	2701                	sext.w	a4,a4
   10cb2:	4027561b          	sraiw	a2,a4,0x2
   10cb6:	4685                	li	a3,1
   10cb8:	00c696b3          	sll	a3,a3,a2
   10cbc:	2705                	addiw	a4,a4,1
   10cbe:	0089b603          	ld	a2,8(s3)
   10cc2:	0017171b          	slliw	a4,a4,0x1
   10cc6:	070e                	slli	a4,a4,0x3
   10cc8:	8ed1                	or	a3,a3,a2
   10cca:	974e                	add	a4,a4,s3
   10ccc:	00d9b423          	sd	a3,8(s3)
   10cd0:	6314                	ld	a3,0(a4)
   10cd2:	ff070613          	addi	a2,a4,-16
   10cd6:	ec10                	sd	a2,24(s0)
   10cd8:	e814                	sd	a3,16(s0)
   10cda:	e300                	sd	s0,0(a4)
   10cdc:	ee80                	sd	s0,24(a3)
   10cde:	4027d71b          	sraiw	a4,a5,0x2
   10ce2:	4305                	li	t1,1
   10ce4:	00e31333          	sll	t1,t1,a4
   10ce8:	0089b703          	ld	a4,8(s3)
   10cec:	06676063          	bltu	a4,t1,10d4c <_malloc_r+0x254>
   10cf0:	006776b3          	and	a3,a4,t1
   10cf4:	e699                	bnez	a3,10d02 <_malloc_r+0x20a>
   10cf6:	9bf1                	andi	a5,a5,-4
   10cf8:	0306                	slli	t1,t1,0x1
   10cfa:	006776b3          	and	a3,a4,t1
   10cfe:	2791                	addiw	a5,a5,4
   10d00:	dee5                	beqz	a3,10cf8 <_malloc_r+0x200>
   10d02:	4e7d                	li	t3,31
   10d04:	0017871b          	addiw	a4,a5,1
   10d08:	0017171b          	slliw	a4,a4,0x1
   10d0c:	070e                	slli	a4,a4,0x3
   10d0e:	1741                	addi	a4,a4,-16
   10d10:	974e                	add	a4,a4,s3
   10d12:	883a                	mv	a6,a4
   10d14:	853e                	mv	a0,a5
   10d16:	01883403          	ld	s0,24(a6)
   10d1a:	15041f63          	bne	s0,a6,10e78 <_malloc_r+0x380>
   10d1e:	2505                	addiw	a0,a0,1
   10d20:	00357693          	andi	a3,a0,3
   10d24:	0841                	addi	a6,a6,16
   10d26:	fae5                	bnez	a3,10d16 <_malloc_r+0x21e>
   10d28:	0037f693          	andi	a3,a5,3
   10d2c:	18069f63          	bnez	a3,10eca <_malloc_r+0x3d2>
   10d30:	0089b703          	ld	a4,8(s3)
   10d34:	fff34793          	not	a5,t1
   10d38:	8ff9                	and	a5,a5,a4
   10d3a:	00f9b423          	sd	a5,8(s3)
   10d3e:	0089b683          	ld	a3,8(s3)
   10d42:	0306                	slli	t1,t1,0x1
   10d44:	0066e463          	bltu	a3,t1,10d4c <_malloc_r+0x254>
   10d48:	18031e63          	bnez	t1,10ee4 <_malloc_r+0x3ec>
   10d4c:	0109bb03          	ld	s6,16(s3)
   10d50:	008b3403          	ld	s0,8(s6) # ffffffff80000008 <__global_pointer$+0xffffffff7ffeb570>
   10d54:	ffc47a13          	andi	s4,s0,-4
   10d58:	009a6763          	bltu	s4,s1,10d66 <_malloc_r+0x26e>
   10d5c:	409a07b3          	sub	a5,s4,s1
   10d60:	477d                	li	a4,31
   10d62:	24f74c63          	blt	a4,a5,10fba <_malloc_r+0x4c2>
   10d66:	8381b403          	ld	s0,-1992(gp) # 142d0 <__malloc_top_pad>
   10d6a:	8181b703          	ld	a4,-2024(gp) # 142b0 <__malloc_sbrk_base>
   10d6e:	57fd                	li	a5,-1
   10d70:	9426                	add	s0,s0,s1
   10d72:	16f71b63          	bne	a4,a5,10ee8 <_malloc_r+0x3f0>
   10d76:	02040413          	addi	s0,s0,32
   10d7a:	85a2                	mv	a1,s0
   10d7c:	854a                	mv	a0,s2
   10d7e:	768000ef          	jal	ra,114e6 <_sbrk_r>
   10d82:	57fd                	li	a5,-1
   10d84:	8aaa                	mv	s5,a0
   10d86:	1cf50b63          	beq	a0,a5,10f5c <_malloc_r+0x464>
   10d8a:	014b07b3          	add	a5,s6,s4
   10d8e:	00f57463          	bleu	a5,a0,10d96 <_malloc_r+0x29e>
   10d92:	1d3b1563          	bne	s6,s3,10f5c <_malloc_r+0x464>
   10d96:	88018693          	addi	a3,gp,-1920 # 14318 <__malloc_current_mallinfo>
   10d9a:	4298                	lw	a4,0(a3)
   10d9c:	88018b93          	addi	s7,gp,-1920 # 14318 <__malloc_current_mallinfo>
   10da0:	9f21                	addw	a4,a4,s0
   10da2:	c298                	sw	a4,0(a3)
   10da4:	15579863          	bne	a5,s5,10ef4 <_malloc_r+0x3fc>
   10da8:	03479693          	slli	a3,a5,0x34
   10dac:	14069463          	bnez	a3,10ef4 <_malloc_r+0x3fc>
   10db0:	0109b783          	ld	a5,16(s3)
   10db4:	9452                	add	s0,s0,s4
   10db6:	00146413          	ori	s0,s0,1
   10dba:	e780                	sd	s0,8(a5)
   10dbc:	000ba783          	lw	a5,0(s7)
   10dc0:	8301b683          	ld	a3,-2000(gp) # 142c8 <__malloc_max_sbrked_mem>
   10dc4:	00f6f463          	bleu	a5,a3,10dcc <_malloc_r+0x2d4>
   10dc8:	82f1b823          	sd	a5,-2000(gp) # 142c8 <__malloc_max_sbrked_mem>
   10dcc:	8281b683          	ld	a3,-2008(gp) # 142c0 <_edata>
   10dd0:	18f6f663          	bleu	a5,a3,10f5c <_malloc_r+0x464>
   10dd4:	82f1b423          	sd	a5,-2008(gp) # 142c0 <_edata>
   10dd8:	a251                	j	10f5c <_malloc_r+0x464>
   10dda:	00975613          	srli	a2,a4,0x9
   10dde:	4691                	li	a3,4
   10de0:	04c6e063          	bltu	a3,a2,10e20 <_malloc_r+0x328>
   10de4:	00675693          	srli	a3,a4,0x6
   10de8:	0386869b          	addiw	a3,a3,56
   10dec:	0016861b          	addiw	a2,a3,1
   10df0:	0016161b          	slliw	a2,a2,0x1
   10df4:	060e                	slli	a2,a2,0x3
   10df6:	964e                	add	a2,a2,s3
   10df8:	ff060513          	addi	a0,a2,-16
   10dfc:	6210                	ld	a2,0(a2)
   10dfe:	06c51763          	bne	a0,a2,10e6c <_malloc_r+0x374>
   10e02:	4705                	li	a4,1
   10e04:	4026d69b          	sraiw	a3,a3,0x2
   10e08:	00d716b3          	sll	a3,a4,a3
   10e0c:	0089b703          	ld	a4,8(s3)
   10e10:	8ed9                	or	a3,a3,a4
   10e12:	00d9b423          	sd	a3,8(s3)
   10e16:	ec08                	sd	a0,24(s0)
   10e18:	e810                	sd	a2,16(s0)
   10e1a:	e900                	sd	s0,16(a0)
   10e1c:	ee00                	sd	s0,24(a2)
   10e1e:	b5c1                	j	10cde <_malloc_r+0x1e6>
   10e20:	46d1                	li	a3,20
   10e22:	00c6e563          	bltu	a3,a2,10e2c <_malloc_r+0x334>
   10e26:	05b6069b          	addiw	a3,a2,91
   10e2a:	b7c9                	j	10dec <_malloc_r+0x2f4>
   10e2c:	05400693          	li	a3,84
   10e30:	00c6e763          	bltu	a3,a2,10e3e <_malloc_r+0x346>
   10e34:	00c75693          	srli	a3,a4,0xc
   10e38:	06e6869b          	addiw	a3,a3,110
   10e3c:	bf45                	j	10dec <_malloc_r+0x2f4>
   10e3e:	15400693          	li	a3,340
   10e42:	00c6e763          	bltu	a3,a2,10e50 <_malloc_r+0x358>
   10e46:	00f75693          	srli	a3,a4,0xf
   10e4a:	0776869b          	addiw	a3,a3,119
   10e4e:	bf79                	j	10dec <_malloc_r+0x2f4>
   10e50:	55400513          	li	a0,1364
   10e54:	07e00693          	li	a3,126
   10e58:	f8c56ae3          	bltu	a0,a2,10dec <_malloc_r+0x2f4>
   10e5c:	01275693          	srli	a3,a4,0x12
   10e60:	07c6869b          	addiw	a3,a3,124
   10e64:	b761                	j	10dec <_malloc_r+0x2f4>
   10e66:	6a10                	ld	a2,16(a2)
   10e68:	00c50663          	beq	a0,a2,10e74 <_malloc_r+0x37c>
   10e6c:	6614                	ld	a3,8(a2)
   10e6e:	9af1                	andi	a3,a3,-4
   10e70:	fed76be3          	bltu	a4,a3,10e66 <_malloc_r+0x36e>
   10e74:	6e08                	ld	a0,24(a2)
   10e76:	b745                	j	10e16 <_malloc_r+0x31e>
   10e78:	6414                	ld	a3,8(s0)
   10e7a:	6c10                	ld	a2,24(s0)
   10e7c:	9af1                	andi	a3,a3,-4
   10e7e:	409688b3          	sub	a7,a3,s1
   10e82:	031e5763          	ble	a7,t3,10eb0 <_malloc_r+0x3b8>
   10e86:	6818                	ld	a4,16(s0)
   10e88:	009407b3          	add	a5,s0,s1
   10e8c:	0014e493          	ori	s1,s1,1
   10e90:	e404                	sd	s1,8(s0)
   10e92:	ef10                	sd	a2,24(a4)
   10e94:	ea18                	sd	a4,16(a2)
   10e96:	02f9b423          	sd	a5,40(s3)
   10e9a:	02f9b023          	sd	a5,32(s3)
   10e9e:	0018e713          	ori	a4,a7,1
   10ea2:	ef8c                	sd	a1,24(a5)
   10ea4:	eb8c                	sd	a1,16(a5)
   10ea6:	e798                	sd	a4,8(a5)
   10ea8:	96a2                	add	a3,a3,s0
   10eaa:	0116b023          	sd	a7,0(a3)
   10eae:	b1f5                	j	10b9a <_malloc_r+0xa2>
   10eb0:	0008cb63          	bltz	a7,10ec6 <_malloc_r+0x3ce>
   10eb4:	96a2                	add	a3,a3,s0
   10eb6:	669c                	ld	a5,8(a3)
   10eb8:	0017e793          	ori	a5,a5,1
   10ebc:	e69c                	sd	a5,8(a3)
   10ebe:	681c                	ld	a5,16(s0)
   10ec0:	ef90                	sd	a2,24(a5)
   10ec2:	ea1c                	sd	a5,16(a2)
   10ec4:	b9d9                	j	10b9a <_malloc_r+0xa2>
   10ec6:	8432                	mv	s0,a2
   10ec8:	bd89                	j	10d1a <_malloc_r+0x222>
   10eca:	ff070693          	addi	a3,a4,-16
   10ece:	6318                	ld	a4,0(a4)
   10ed0:	37fd                	addiw	a5,a5,-1
   10ed2:	e4d70be3          	beq	a4,a3,10d28 <_malloc_r+0x230>
   10ed6:	b5a5                	j	10d3e <_malloc_r+0x246>
   10ed8:	2791                	addiw	a5,a5,4
   10eda:	0306                	slli	t1,t1,0x1
   10edc:	0066f733          	and	a4,a3,t1
   10ee0:	df65                	beqz	a4,10ed8 <_malloc_r+0x3e0>
   10ee2:	b50d                	j	10d04 <_malloc_r+0x20c>
   10ee4:	87aa                	mv	a5,a0
   10ee6:	bfdd                	j	10edc <_malloc_r+0x3e4>
   10ee8:	6785                	lui	a5,0x1
   10eea:	07fd                	addi	a5,a5,31
   10eec:	943e                	add	s0,s0,a5
   10eee:	77fd                	lui	a5,0xfffff
   10ef0:	8c7d                	and	s0,s0,a5
   10ef2:	b561                	j	10d7a <_malloc_r+0x282>
   10ef4:	8181b603          	ld	a2,-2024(gp) # 142b0 <__malloc_sbrk_base>
   10ef8:	56fd                	li	a3,-1
   10efa:	08d61263          	bne	a2,a3,10f7e <_malloc_r+0x486>
   10efe:	8151bc23          	sd	s5,-2024(gp) # 142b0 <__malloc_sbrk_base>
   10f02:	00faf593          	andi	a1,s5,15
   10f06:	c589                	beqz	a1,10f10 <_malloc_r+0x418>
   10f08:	47c1                	li	a5,16
   10f0a:	40b785b3          	sub	a1,a5,a1
   10f0e:	9aae                	add	s5,s5,a1
   10f10:	6785                	lui	a5,0x1
   10f12:	95be                	add	a1,a1,a5
   10f14:	9456                	add	s0,s0,s5
   10f16:	17fd                	addi	a5,a5,-1
   10f18:	8c7d                	and	s0,s0,a5
   10f1a:	40858433          	sub	s0,a1,s0
   10f1e:	85a2                	mv	a1,s0
   10f20:	854a                	mv	a0,s2
   10f22:	5c4000ef          	jal	ra,114e6 <_sbrk_r>
   10f26:	57fd                	li	a5,-1
   10f28:	00f51463          	bne	a0,a5,10f30 <_malloc_r+0x438>
   10f2c:	8556                	mv	a0,s5
   10f2e:	4401                	li	s0,0
   10f30:	000ba783          	lw	a5,0(s7)
   10f34:	41550533          	sub	a0,a0,s5
   10f38:	0159b823          	sd	s5,16(s3)
   10f3c:	9fa1                	addw	a5,a5,s0
   10f3e:	942a                	add	s0,s0,a0
   10f40:	00146413          	ori	s0,s0,1
   10f44:	00fba023          	sw	a5,0(s7)
   10f48:	008ab423          	sd	s0,8(s5)
   10f4c:	e73b08e3          	beq	s6,s3,10dbc <_malloc_r+0x2c4>
   10f50:	477d                	li	a4,31
   10f52:	03476c63          	bltu	a4,s4,10f8a <_malloc_r+0x492>
   10f56:	4785                	li	a5,1
   10f58:	00fab423          	sd	a5,8(s5)
   10f5c:	0109b783          	ld	a5,16(s3)
   10f60:	6798                	ld	a4,8(a5)
   10f62:	9b71                	andi	a4,a4,-4
   10f64:	409707b3          	sub	a5,a4,s1
   10f68:	00976563          	bltu	a4,s1,10f72 <_malloc_r+0x47a>
   10f6c:	477d                	li	a4,31
   10f6e:	04f74663          	blt	a4,a5,10fba <_malloc_r+0x4c2>
   10f72:	854a                	mv	a0,s2
   10f74:	00000097          	auipc	ra,0x0
   10f78:	190080e7          	jalr	400(ra) # 11104 <__malloc_unlock>
   10f7c:	be65                	j	10b34 <_malloc_r+0x3c>
   10f7e:	40fa87b3          	sub	a5,s5,a5
   10f82:	9fb9                	addw	a5,a5,a4
   10f84:	00fba023          	sw	a5,0(s7)
   10f88:	bfad                	j	10f02 <_malloc_r+0x40a>
   10f8a:	008b3783          	ld	a5,8(s6)
   10f8e:	fe8a0413          	addi	s0,s4,-24
   10f92:	9841                	andi	s0,s0,-16
   10f94:	8b85                	andi	a5,a5,1
   10f96:	8fc1                	or	a5,a5,s0
   10f98:	00fb3423          	sd	a5,8(s6)
   10f9c:	46a5                	li	a3,9
   10f9e:	008b07b3          	add	a5,s6,s0
   10fa2:	e794                	sd	a3,8(a5)
   10fa4:	eb94                	sd	a3,16(a5)
   10fa6:	e0877be3          	bleu	s0,a4,10dbc <_malloc_r+0x2c4>
   10faa:	010b0593          	addi	a1,s6,16
   10fae:	854a                	mv	a0,s2
   10fb0:	00001097          	auipc	ra,0x1
   10fb4:	ab0080e7          	jalr	-1360(ra) # 11a60 <_free_r>
   10fb8:	b511                	j	10dbc <_malloc_r+0x2c4>
   10fba:	0109b403          	ld	s0,16(s3)
   10fbe:	0014e713          	ori	a4,s1,1
   10fc2:	0017e793          	ori	a5,a5,1
   10fc6:	e418                	sd	a4,8(s0)
   10fc8:	94a2                	add	s1,s1,s0
   10fca:	0099b823          	sd	s1,16(s3)
   10fce:	e49c                	sd	a5,8(s1)
   10fd0:	b6e9                	j	10b9a <_malloc_r+0xa2>
   10fd2:	02000793          	li	a5,32
   10fd6:	b4b7ece3          	bltu	a5,a1,10b2e <_malloc_r+0x36>
   10fda:	128000ef          	jal	ra,11102 <__malloc_lock>
   10fde:	02000493          	li	s1,32
   10fe2:	bea5                	j	10b5a <_malloc_r+0x62>
	...

0000000000010fe6 <memchr>:
   10fe6:	0ff5f593          	andi	a1,a1,255
   10fea:	962a                	add	a2,a2,a0
   10fec:	00c51463          	bne	a0,a2,10ff4 <memchr+0xe>
   10ff0:	4501                	li	a0,0
   10ff2:	8082                	ret
   10ff4:	00054783          	lbu	a5,0(a0)
   10ff8:	feb78de3          	beq	a5,a1,10ff2 <memchr+0xc>
   10ffc:	0505                	addi	a0,a0,1
   10ffe:	b7fd                	j	10fec <memchr+0x6>
	...

0000000000011002 <memcpy>:
   11002:	00a5c7b3          	xor	a5,a1,a0
   11006:	8b9d                	andi	a5,a5,7
   11008:	00c50733          	add	a4,a0,a2
   1100c:	e781                	bnez	a5,11014 <memcpy+0x12>
   1100e:	479d                	li	a5,7
   11010:	00c7ef63          	bltu	a5,a2,1102e <memcpy+0x2c>
   11014:	87aa                	mv	a5,a0
   11016:	00e56963          	bltu	a0,a4,11028 <memcpy+0x26>
   1101a:	8082                	ret
   1101c:	0005c683          	lbu	a3,0(a1)
   11020:	0785                	addi	a5,a5,1
   11022:	0585                	addi	a1,a1,1
   11024:	fed78fa3          	sb	a3,-1(a5) # fff <_start-0xf0b1>
   11028:	fee7eae3          	bltu	a5,a4,1101c <memcpy+0x1a>
   1102c:	8082                	ret
   1102e:	00757793          	andi	a5,a0,7
   11032:	ebbd                	bnez	a5,110a8 <memcpy+0xa6>
   11034:	87aa                	mv	a5,a0
   11036:	ff877693          	andi	a3,a4,-8
   1103a:	fc068613          	addi	a2,a3,-64
   1103e:	06c7fc63          	bleu	a2,a5,110b6 <memcpy+0xb4>
   11042:	0005b383          	ld	t2,0(a1)
   11046:	0085b283          	ld	t0,8(a1)
   1104a:	0105bf83          	ld	t6,16(a1)
   1104e:	0185bf03          	ld	t5,24(a1)
   11052:	0205be83          	ld	t4,32(a1)
   11056:	0285be03          	ld	t3,40(a1)
   1105a:	0305b303          	ld	t1,48(a1)
   1105e:	0385b883          	ld	a7,56(a1)
   11062:	04858593          	addi	a1,a1,72
   11066:	04878793          	addi	a5,a5,72
   1106a:	ff85b803          	ld	a6,-8(a1)
   1106e:	fa77bc23          	sd	t2,-72(a5)
   11072:	fc57b023          	sd	t0,-64(a5)
   11076:	fdf7b423          	sd	t6,-56(a5)
   1107a:	fde7b823          	sd	t5,-48(a5)
   1107e:	fdd7bc23          	sd	t4,-40(a5)
   11082:	ffc7b023          	sd	t3,-32(a5)
   11086:	fe67b423          	sd	t1,-24(a5)
   1108a:	ff17b823          	sd	a7,-16(a5)
   1108e:	ff07bc23          	sd	a6,-8(a5)
   11092:	b775                	j	1103e <memcpy+0x3c>
   11094:	0005c683          	lbu	a3,0(a1)
   11098:	0785                	addi	a5,a5,1
   1109a:	0585                	addi	a1,a1,1
   1109c:	fed78fa3          	sb	a3,-1(a5)
   110a0:	0077f693          	andi	a3,a5,7
   110a4:	fae5                	bnez	a3,11094 <memcpy+0x92>
   110a6:	bf41                	j	11036 <memcpy+0x34>
   110a8:	87aa                	mv	a5,a0
   110aa:	bfdd                	j	110a0 <memcpy+0x9e>
   110ac:	6190                	ld	a2,0(a1)
   110ae:	07a1                	addi	a5,a5,8
   110b0:	05a1                	addi	a1,a1,8
   110b2:	fec7bc23          	sd	a2,-8(a5)
   110b6:	fed7ebe3          	bltu	a5,a3,110ac <memcpy+0xaa>
   110ba:	f6e7e7e3          	bltu	a5,a4,11028 <memcpy+0x26>
   110be:	8082                	ret
	...

00000000000110c2 <memmove>:
   110c2:	00c50733          	add	a4,a0,a2
   110c6:	00a5e663          	bltu	a1,a0,110d2 <memmove+0x10>
   110ca:	87aa                	mv	a5,a0
   110cc:	02f71363          	bne	a4,a5,110f2 <memmove+0x30>
   110d0:	8082                	ret
   110d2:	00c587b3          	add	a5,a1,a2
   110d6:	8e1d                	sub	a2,a2,a5
   110d8:	fef579e3          	bleu	a5,a0,110ca <memmove+0x8>
   110dc:	00c786b3          	add	a3,a5,a2
   110e0:	e291                	bnez	a3,110e4 <memmove+0x22>
   110e2:	8082                	ret
   110e4:	17fd                	addi	a5,a5,-1
   110e6:	0007c683          	lbu	a3,0(a5)
   110ea:	177d                	addi	a4,a4,-1
   110ec:	00d70023          	sb	a3,0(a4)
   110f0:	b7f5                	j	110dc <memmove+0x1a>
   110f2:	0585                	addi	a1,a1,1
   110f4:	fff5c683          	lbu	a3,-1(a1)
   110f8:	0785                	addi	a5,a5,1
   110fa:	fed78fa3          	sb	a3,-1(a5)
   110fe:	b7f9                	j	110cc <memmove+0xa>
	...

0000000000011102 <__malloc_lock>:
   11102:	8082                	ret

0000000000011104 <__malloc_unlock>:
   11104:	8082                	ret

0000000000011106 <_realloc_r>:
   11106:	711d                	addi	sp,sp,-96
   11108:	e8a2                	sd	s0,80(sp)
   1110a:	ec86                	sd	ra,88(sp)
   1110c:	842e                	mv	s0,a1
   1110e:	e4a6                	sd	s1,72(sp)
   11110:	e0ca                	sd	s2,64(sp)
   11112:	fc4e                	sd	s3,56(sp)
   11114:	f852                	sd	s4,48(sp)
   11116:	f456                	sd	s5,40(sp)
   11118:	f05a                	sd	s6,32(sp)
   1111a:	ec5e                	sd	s7,24(sp)
   1111c:	e862                	sd	s8,16(sp)
   1111e:	85b2                	mv	a1,a2
   11120:	ec11                	bnez	s0,1113c <_realloc_r+0x36>
   11122:	6446                	ld	s0,80(sp)
   11124:	60e6                	ld	ra,88(sp)
   11126:	64a6                	ld	s1,72(sp)
   11128:	6906                	ld	s2,64(sp)
   1112a:	79e2                	ld	s3,56(sp)
   1112c:	7a42                	ld	s4,48(sp)
   1112e:	7aa2                	ld	s5,40(sp)
   11130:	7b02                	ld	s6,32(sp)
   11132:	6be2                	ld	s7,24(sp)
   11134:	6c42                	ld	s8,16(sp)
   11136:	6125                	addi	sp,sp,96
   11138:	9c1ff06f          	j	10af8 <_malloc_r>
   1113c:	8aaa                	mv	s5,a0
   1113e:	e432                	sd	a2,8(sp)
   11140:	fc3ff0ef          	jal	ra,11102 <__malloc_lock>
   11144:	65a2                	ld	a1,8(sp)
   11146:	ff843683          	ld	a3,-8(s0)
   1114a:	02e00793          	li	a5,46
   1114e:	01758993          	addi	s3,a1,23
   11152:	ff040b93          	addi	s7,s0,-16
   11156:	ffc6f913          	andi	s2,a3,-4
   1115a:	0337fb63          	bleu	s3,a5,11190 <_realloc_r+0x8a>
   1115e:	800007b7          	lui	a5,0x80000
   11162:	ff09fb13          	andi	s6,s3,-16
   11166:	fff7c793          	not	a5,a5
   1116a:	0367f563          	bleu	s6,a5,11194 <_realloc_r+0x8e>
   1116e:	47b1                	li	a5,12
   11170:	00faa023          	sw	a5,0(s5)
   11174:	4a01                	li	s4,0
   11176:	60e6                	ld	ra,88(sp)
   11178:	6446                	ld	s0,80(sp)
   1117a:	8552                	mv	a0,s4
   1117c:	64a6                	ld	s1,72(sp)
   1117e:	6906                	ld	s2,64(sp)
   11180:	79e2                	ld	s3,56(sp)
   11182:	7a42                	ld	s4,48(sp)
   11184:	7aa2                	ld	s5,40(sp)
   11186:	7b02                	ld	s6,32(sp)
   11188:	6be2                	ld	s7,24(sp)
   1118a:	6c42                	ld	s8,16(sp)
   1118c:	6125                	addi	sp,sp,96
   1118e:	8082                	ret
   11190:	02000b13          	li	s6,32
   11194:	fcbb6de3          	bltu	s6,a1,1116e <_realloc_r+0x68>
   11198:	33695b63          	ble	s6,s2,114ce <_realloc_r+0x3c8>
   1119c:	6c51                	lui	s8,0x14
   1119e:	a88c0713          	addi	a4,s8,-1400 # 13a88 <__malloc_av_>
   111a2:	6b10                	ld	a2,16(a4)
   111a4:	012b87b3          	add	a5,s7,s2
   111a8:	6798                	ld	a4,8(a5)
   111aa:	a88c0c13          	addi	s8,s8,-1400
   111ae:	00f60863          	beq	a2,a5,111be <_realloc_r+0xb8>
   111b2:	ffe77513          	andi	a0,a4,-2
   111b6:	953e                	add	a0,a0,a5
   111b8:	6508                	ld	a0,8(a0)
   111ba:	8905                	andi	a0,a0,1
   111bc:	ed49                	bnez	a0,11256 <_realloc_r+0x150>
   111be:	9b71                	andi	a4,a4,-4
   111c0:	00e909b3          	add	s3,s2,a4
   111c4:	02f61e63          	bne	a2,a5,11200 <_realloc_r+0xfa>
   111c8:	020b0513          	addi	a0,s6,32
   111cc:	08a9c763          	blt	s3,a0,1125a <_realloc_r+0x154>
   111d0:	9bda                	add	s7,s7,s6
   111d2:	416989b3          	sub	s3,s3,s6
   111d6:	017c3823          	sd	s7,16(s8)
   111da:	0019e993          	ori	s3,s3,1
   111de:	013bb423          	sd	s3,8(s7)
   111e2:	ff843983          	ld	s3,-8(s0)
   111e6:	8556                	mv	a0,s5
   111e8:	8a22                	mv	s4,s0
   111ea:	0019f993          	andi	s3,s3,1
   111ee:	0169e9b3          	or	s3,s3,s6
   111f2:	ff343c23          	sd	s3,-8(s0)
   111f6:	00000097          	auipc	ra,0x0
   111fa:	f0e080e7          	jalr	-242(ra) # 11104 <__malloc_unlock>
   111fe:	bfa5                	j	11176 <_realloc_r+0x70>
   11200:	0569cd63          	blt	s3,s6,1125a <_realloc_r+0x154>
   11204:	6f98                	ld	a4,24(a5)
   11206:	6b9c                	ld	a5,16(a5)
   11208:	ef98                	sd	a4,24(a5)
   1120a:	eb1c                	sd	a5,16(a4)
   1120c:	008bb703          	ld	a4,8(s7)
   11210:	416986b3          	sub	a3,s3,s6
   11214:	467d                	li	a2,31
   11216:	8b05                	andi	a4,a4,1
   11218:	013b87b3          	add	a5,s7,s3
   1121c:	2ad67b63          	bleu	a3,a2,114d2 <_realloc_r+0x3cc>
   11220:	00eb69b3          	or	s3,s6,a4
   11224:	013bb423          	sd	s3,8(s7)
   11228:	016b85b3          	add	a1,s7,s6
   1122c:	0016e693          	ori	a3,a3,1
   11230:	e594                	sd	a3,8(a1)
   11232:	6798                	ld	a4,8(a5)
   11234:	05c1                	addi	a1,a1,16
   11236:	8556                	mv	a0,s5
   11238:	00176713          	ori	a4,a4,1
   1123c:	e798                	sd	a4,8(a5)
   1123e:	00001097          	auipc	ra,0x1
   11242:	822080e7          	jalr	-2014(ra) # 11a60 <_free_r>
   11246:	8556                	mv	a0,s5
   11248:	00000097          	auipc	ra,0x0
   1124c:	ebc080e7          	jalr	-324(ra) # 11104 <__malloc_unlock>
   11250:	010b8a13          	addi	s4,s7,16
   11254:	b70d                	j	11176 <_realloc_r+0x70>
   11256:	4701                	li	a4,0
   11258:	4781                	li	a5,0
   1125a:	8a85                	andi	a3,a3,1
   1125c:	1c069763          	bnez	a3,1142a <_realloc_r+0x324>
   11260:	ff043483          	ld	s1,-16(s0)
   11264:	409b84b3          	sub	s1,s7,s1
   11268:	0084ba03          	ld	s4,8(s1)
   1126c:	ffca7a13          	andi	s4,s4,-4
   11270:	9a4a                	add	s4,s4,s2
   11272:	12078e63          	beqz	a5,113ae <_realloc_r+0x2a8>
   11276:	014709b3          	add	s3,a4,s4
   1127a:	0af61863          	bne	a2,a5,1132a <_realloc_r+0x224>
   1127e:	020b0793          	addi	a5,s6,32
   11282:	12f9c663          	blt	s3,a5,113ae <_realloc_r+0x2a8>
   11286:	6898                	ld	a4,16(s1)
   11288:	6c9c                	ld	a5,24(s1)
   1128a:	ff890613          	addi	a2,s2,-8
   1128e:	01048a13          	addi	s4,s1,16
   11292:	ef1c                	sd	a5,24(a4)
   11294:	eb98                	sd	a4,16(a5)
   11296:	04800713          	li	a4,72
   1129a:	08c76363          	bltu	a4,a2,11320 <_realloc_r+0x21a>
   1129e:	02700693          	li	a3,39
   112a2:	87d2                	mv	a5,s4
   112a4:	00c6fd63          	bleu	a2,a3,112be <_realloc_r+0x1b8>
   112a8:	601c                	ld	a5,0(s0)
   112aa:	e89c                	sd	a5,16(s1)
   112ac:	641c                	ld	a5,8(s0)
   112ae:	ec9c                	sd	a5,24(s1)
   112b0:	03700793          	li	a5,55
   112b4:	04c7e163          	bltu	a5,a2,112f6 <_realloc_r+0x1f0>
   112b8:	0441                	addi	s0,s0,16
   112ba:	02048793          	addi	a5,s1,32
   112be:	6018                	ld	a4,0(s0)
   112c0:	e398                	sd	a4,0(a5)
   112c2:	6418                	ld	a4,8(s0)
   112c4:	e798                	sd	a4,8(a5)
   112c6:	6818                	ld	a4,16(s0)
   112c8:	eb98                	sd	a4,16(a5)
   112ca:	016487b3          	add	a5,s1,s6
   112ce:	416989b3          	sub	s3,s3,s6
   112d2:	00fc3823          	sd	a5,16(s8)
   112d6:	0019e993          	ori	s3,s3,1
   112da:	0137b423          	sd	s3,8(a5) # ffffffff80000008 <__global_pointer$+0xffffffff7ffeb570>
   112de:	649c                	ld	a5,8(s1)
   112e0:	8b85                	andi	a5,a5,1
   112e2:	0167e9b3          	or	s3,a5,s6
   112e6:	0134b423          	sd	s3,8(s1)
   112ea:	8556                	mv	a0,s5
   112ec:	00000097          	auipc	ra,0x0
   112f0:	e18080e7          	jalr	-488(ra) # 11104 <__malloc_unlock>
   112f4:	b549                	j	11176 <_realloc_r+0x70>
   112f6:	681c                	ld	a5,16(s0)
   112f8:	f09c                	sd	a5,32(s1)
   112fa:	6c1c                	ld	a5,24(s0)
   112fc:	f49c                	sd	a5,40(s1)
   112fe:	00e60763          	beq	a2,a4,1130c <_realloc_r+0x206>
   11302:	02040413          	addi	s0,s0,32
   11306:	03048793          	addi	a5,s1,48
   1130a:	bf55                	j	112be <_realloc_r+0x1b8>
   1130c:	701c                	ld	a5,32(s0)
   1130e:	03040413          	addi	s0,s0,48
   11312:	f89c                	sd	a5,48(s1)
   11314:	ff843703          	ld	a4,-8(s0)
   11318:	04048793          	addi	a5,s1,64
   1131c:	fc98                	sd	a4,56(s1)
   1131e:	b745                	j	112be <_realloc_r+0x1b8>
   11320:	85a2                	mv	a1,s0
   11322:	8552                	mv	a0,s4
   11324:	d9fff0ef          	jal	ra,110c2 <memmove>
   11328:	b74d                	j	112ca <_realloc_r+0x1c4>
   1132a:	0969c263          	blt	s3,s6,113ae <_realloc_r+0x2a8>
   1132e:	6f98                	ld	a4,24(a5)
   11330:	6b9c                	ld	a5,16(a5)
   11332:	ff890613          	addi	a2,s2,-8
   11336:	01048513          	addi	a0,s1,16
   1133a:	ef98                	sd	a4,24(a5)
   1133c:	eb1c                	sd	a5,16(a4)
   1133e:	6898                	ld	a4,16(s1)
   11340:	6c9c                	ld	a5,24(s1)
   11342:	ef1c                	sd	a5,24(a4)
   11344:	eb98                	sd	a4,16(a5)
   11346:	04800793          	li	a5,72
   1134a:	04c7ee63          	bltu	a5,a2,113a6 <_realloc_r+0x2a0>
   1134e:	02700713          	li	a4,39
   11352:	00c77d63          	bleu	a2,a4,1136c <_realloc_r+0x266>
   11356:	6018                	ld	a4,0(s0)
   11358:	e898                	sd	a4,16(s1)
   1135a:	6418                	ld	a4,8(s0)
   1135c:	ec98                	sd	a4,24(s1)
   1135e:	03700713          	li	a4,55
   11362:	00c76d63          	bltu	a4,a2,1137c <_realloc_r+0x276>
   11366:	0441                	addi	s0,s0,16
   11368:	02048513          	addi	a0,s1,32
   1136c:	601c                	ld	a5,0(s0)
   1136e:	e11c                	sd	a5,0(a0)
   11370:	641c                	ld	a5,8(s0)
   11372:	e51c                	sd	a5,8(a0)
   11374:	681c                	ld	a5,16(s0)
   11376:	e91c                	sd	a5,16(a0)
   11378:	8ba6                	mv	s7,s1
   1137a:	bd49                	j	1120c <_realloc_r+0x106>
   1137c:	6818                	ld	a4,16(s0)
   1137e:	f098                	sd	a4,32(s1)
   11380:	6c18                	ld	a4,24(s0)
   11382:	f498                	sd	a4,40(s1)
   11384:	00f60763          	beq	a2,a5,11392 <_realloc_r+0x28c>
   11388:	02040413          	addi	s0,s0,32
   1138c:	03048513          	addi	a0,s1,48
   11390:	bff1                	j	1136c <_realloc_r+0x266>
   11392:	701c                	ld	a5,32(s0)
   11394:	04048513          	addi	a0,s1,64
   11398:	03040413          	addi	s0,s0,48
   1139c:	f89c                	sd	a5,48(s1)
   1139e:	ff843783          	ld	a5,-8(s0)
   113a2:	fc9c                	sd	a5,56(s1)
   113a4:	b7e1                	j	1136c <_realloc_r+0x266>
   113a6:	85a2                	mv	a1,s0
   113a8:	d1bff0ef          	jal	ra,110c2 <memmove>
   113ac:	b7f1                	j	11378 <_realloc_r+0x272>
   113ae:	076a4e63          	blt	s4,s6,1142a <_realloc_r+0x324>
   113b2:	6c9c                	ld	a5,24(s1)
   113b4:	6898                	ld	a4,16(s1)
   113b6:	ff890613          	addi	a2,s2,-8
   113ba:	01048513          	addi	a0,s1,16
   113be:	ef1c                	sd	a5,24(a4)
   113c0:	eb98                	sd	a4,16(a5)
   113c2:	04800793          	li	a5,72
   113c6:	04c7ee63          	bltu	a5,a2,11422 <_realloc_r+0x31c>
   113ca:	02700713          	li	a4,39
   113ce:	00c77d63          	bleu	a2,a4,113e8 <_realloc_r+0x2e2>
   113d2:	6018                	ld	a4,0(s0)
   113d4:	e898                	sd	a4,16(s1)
   113d6:	6418                	ld	a4,8(s0)
   113d8:	ec98                	sd	a4,24(s1)
   113da:	03700713          	li	a4,55
   113de:	00c76d63          	bltu	a4,a2,113f8 <_realloc_r+0x2f2>
   113e2:	0441                	addi	s0,s0,16
   113e4:	02048513          	addi	a0,s1,32
   113e8:	601c                	ld	a5,0(s0)
   113ea:	e11c                	sd	a5,0(a0)
   113ec:	641c                	ld	a5,8(s0)
   113ee:	e51c                	sd	a5,8(a0)
   113f0:	681c                	ld	a5,16(s0)
   113f2:	e91c                	sd	a5,16(a0)
   113f4:	89d2                	mv	s3,s4
   113f6:	b749                	j	11378 <_realloc_r+0x272>
   113f8:	6818                	ld	a4,16(s0)
   113fa:	f098                	sd	a4,32(s1)
   113fc:	6c18                	ld	a4,24(s0)
   113fe:	f498                	sd	a4,40(s1)
   11400:	00f60763          	beq	a2,a5,1140e <_realloc_r+0x308>
   11404:	02040413          	addi	s0,s0,32
   11408:	03048513          	addi	a0,s1,48
   1140c:	bff1                	j	113e8 <_realloc_r+0x2e2>
   1140e:	701c                	ld	a5,32(s0)
   11410:	04048513          	addi	a0,s1,64
   11414:	03040413          	addi	s0,s0,48
   11418:	f89c                	sd	a5,48(s1)
   1141a:	ff843783          	ld	a5,-8(s0)
   1141e:	fc9c                	sd	a5,56(s1)
   11420:	b7e1                	j	113e8 <_realloc_r+0x2e2>
   11422:	85a2                	mv	a1,s0
   11424:	c9fff0ef          	jal	ra,110c2 <memmove>
   11428:	b7f1                	j	113f4 <_realloc_r+0x2ee>
   1142a:	8556                	mv	a0,s5
   1142c:	eccff0ef          	jal	ra,10af8 <_malloc_r>
   11430:	8a2a                	mv	s4,a0
   11432:	ea050ce3          	beqz	a0,112ea <_realloc_r+0x1e4>
   11436:	ff843783          	ld	a5,-8(s0)
   1143a:	ff050713          	addi	a4,a0,-16
   1143e:	9bf9                	andi	a5,a5,-2
   11440:	97de                	add	a5,a5,s7
   11442:	00e79863          	bne	a5,a4,11452 <_realloc_r+0x34c>
   11446:	ff853983          	ld	s3,-8(a0)
   1144a:	ffc9f993          	andi	s3,s3,-4
   1144e:	99ca                	add	s3,s3,s2
   11450:	bb75                	j	1120c <_realloc_r+0x106>
   11452:	ff890613          	addi	a2,s2,-8
   11456:	04800793          	li	a5,72
   1145a:	06c7e663          	bltu	a5,a2,114c6 <_realloc_r+0x3c0>
   1145e:	02700713          	li	a4,39
   11462:	04c77f63          	bleu	a2,a4,114c0 <_realloc_r+0x3ba>
   11466:	6018                	ld	a4,0(s0)
   11468:	e118                	sd	a4,0(a0)
   1146a:	6418                	ld	a4,8(s0)
   1146c:	e518                	sd	a4,8(a0)
   1146e:	03700713          	li	a4,55
   11472:	02c76363          	bltu	a4,a2,11498 <_realloc_r+0x392>
   11476:	01040713          	addi	a4,s0,16
   1147a:	01050793          	addi	a5,a0,16
   1147e:	6314                	ld	a3,0(a4)
   11480:	e394                	sd	a3,0(a5)
   11482:	6714                	ld	a3,8(a4)
   11484:	e794                	sd	a3,8(a5)
   11486:	6b18                	ld	a4,16(a4)
   11488:	eb98                	sd	a4,16(a5)
   1148a:	85a2                	mv	a1,s0
   1148c:	8556                	mv	a0,s5
   1148e:	00000097          	auipc	ra,0x0
   11492:	5d2080e7          	jalr	1490(ra) # 11a60 <_free_r>
   11496:	bd91                	j	112ea <_realloc_r+0x1e4>
   11498:	6818                	ld	a4,16(s0)
   1149a:	e918                	sd	a4,16(a0)
   1149c:	6c18                	ld	a4,24(s0)
   1149e:	ed18                	sd	a4,24(a0)
   114a0:	00f60763          	beq	a2,a5,114ae <_realloc_r+0x3a8>
   114a4:	02040713          	addi	a4,s0,32
   114a8:	02050793          	addi	a5,a0,32
   114ac:	bfc9                	j	1147e <_realloc_r+0x378>
   114ae:	701c                	ld	a5,32(s0)
   114b0:	03040713          	addi	a4,s0,48
   114b4:	f11c                	sd	a5,32(a0)
   114b6:	7414                	ld	a3,40(s0)
   114b8:	03050793          	addi	a5,a0,48
   114bc:	f514                	sd	a3,40(a0)
   114be:	b7c1                	j	1147e <_realloc_r+0x378>
   114c0:	87aa                	mv	a5,a0
   114c2:	8722                	mv	a4,s0
   114c4:	bf6d                	j	1147e <_realloc_r+0x378>
   114c6:	85a2                	mv	a1,s0
   114c8:	bfbff0ef          	jal	ra,110c2 <memmove>
   114cc:	bf7d                	j	1148a <_realloc_r+0x384>
   114ce:	89ca                	mv	s3,s2
   114d0:	bb35                	j	1120c <_realloc_r+0x106>
   114d2:	00e9e9b3          	or	s3,s3,a4
   114d6:	013bb423          	sd	s3,8(s7)
   114da:	6798                	ld	a4,8(a5)
   114dc:	00176713          	ori	a4,a4,1
   114e0:	e798                	sd	a4,8(a5)
   114e2:	b395                	j	11246 <_realloc_r+0x140>
	...

00000000000114e6 <_sbrk_r>:
   114e6:	1101                	addi	sp,sp,-32
   114e8:	e822                	sd	s0,16(sp)
   114ea:	e426                	sd	s1,8(sp)
   114ec:	84aa                	mv	s1,a0
   114ee:	852e                	mv	a0,a1
   114f0:	ec06                	sd	ra,24(sp)
   114f2:	8a01ac23          	sw	zero,-1864(gp) # 14350 <errno>
   114f6:	55f000ef          	jal	ra,12254 <sbrk>
   114fa:	57fd                	li	a5,-1
   114fc:	00f51663          	bne	a0,a5,11508 <_sbrk_r+0x22>
   11500:	8b81a783          	lw	a5,-1864(gp) # 14350 <errno>
   11504:	c391                	beqz	a5,11508 <_sbrk_r+0x22>
   11506:	c09c                	sw	a5,0(s1)
   11508:	60e2                	ld	ra,24(sp)
   1150a:	6442                	ld	s0,16(sp)
   1150c:	64a2                	ld	s1,8(sp)
   1150e:	6105                	addi	sp,sp,32
   11510:	8082                	ret
	...

0000000000011514 <__sread>:
   11514:	1141                	addi	sp,sp,-16
   11516:	e022                	sd	s0,0(sp)
   11518:	842e                	mv	s0,a1
   1151a:	01259583          	lh	a1,18(a1)
   1151e:	e406                	sd	ra,8(sp)
   11520:	045000ef          	jal	ra,11d64 <_read_r>
   11524:	00054963          	bltz	a0,11536 <__sread+0x22>
   11528:	685c                	ld	a5,144(s0)
   1152a:	97aa                	add	a5,a5,a0
   1152c:	e85c                	sd	a5,144(s0)
   1152e:	60a2                	ld	ra,8(sp)
   11530:	6402                	ld	s0,0(sp)
   11532:	0141                	addi	sp,sp,16
   11534:	8082                	ret
   11536:	01045783          	lhu	a5,16(s0)
   1153a:	777d                	lui	a4,0xfffff
   1153c:	177d                	addi	a4,a4,-1
   1153e:	8ff9                	and	a5,a5,a4
   11540:	00f41823          	sh	a5,16(s0)
   11544:	b7ed                	j	1152e <__sread+0x1a>

0000000000011546 <__seofread>:
   11546:	4501                	li	a0,0
   11548:	8082                	ret

000000000001154a <__swrite>:
   1154a:	0105d783          	lhu	a5,16(a1)
   1154e:	7179                	addi	sp,sp,-48
   11550:	f022                	sd	s0,32(sp)
   11552:	ec26                	sd	s1,24(sp)
   11554:	e84a                	sd	s2,16(sp)
   11556:	e44e                	sd	s3,8(sp)
   11558:	f406                	sd	ra,40(sp)
   1155a:	1007f793          	andi	a5,a5,256
   1155e:	84aa                	mv	s1,a0
   11560:	842e                	mv	s0,a1
   11562:	8932                	mv	s2,a2
   11564:	89b6                	mv	s3,a3
   11566:	c799                	beqz	a5,11574 <__swrite+0x2a>
   11568:	01259583          	lh	a1,18(a1)
   1156c:	4689                	li	a3,2
   1156e:	4601                	li	a2,0
   11570:	6aa000ef          	jal	ra,11c1a <_lseek_r>
   11574:	01045783          	lhu	a5,16(s0)
   11578:	777d                	lui	a4,0xfffff
   1157a:	177d                	addi	a4,a4,-1
   1157c:	8ff9                	and	a5,a5,a4
   1157e:	00f41823          	sh	a5,16(s0)
   11582:	01241583          	lh	a1,18(s0)
   11586:	7402                	ld	s0,32(sp)
   11588:	70a2                	ld	ra,40(sp)
   1158a:	86ce                	mv	a3,s3
   1158c:	864a                	mv	a2,s2
   1158e:	69a2                	ld	s3,8(sp)
   11590:	6942                	ld	s2,16(sp)
   11592:	8526                	mv	a0,s1
   11594:	64e2                	ld	s1,24(sp)
   11596:	6145                	addi	sp,sp,48
   11598:	04a0006f          	j	115e2 <_write_r>

000000000001159c <__sseek>:
   1159c:	1141                	addi	sp,sp,-16
   1159e:	e022                	sd	s0,0(sp)
   115a0:	842e                	mv	s0,a1
   115a2:	01259583          	lh	a1,18(a1)
   115a6:	e406                	sd	ra,8(sp)
   115a8:	00000097          	auipc	ra,0x0
   115ac:	672080e7          	jalr	1650(ra) # 11c1a <_lseek_r>
   115b0:	57fd                	li	a5,-1
   115b2:	01045703          	lhu	a4,16(s0)
   115b6:	00f51b63          	bne	a0,a5,115cc <__sseek+0x30>
   115ba:	77fd                	lui	a5,0xfffff
   115bc:	17fd                	addi	a5,a5,-1
   115be:	8ff9                	and	a5,a5,a4
   115c0:	00f41823          	sh	a5,16(s0)
   115c4:	60a2                	ld	ra,8(sp)
   115c6:	6402                	ld	s0,0(sp)
   115c8:	0141                	addi	sp,sp,16
   115ca:	8082                	ret
   115cc:	6785                	lui	a5,0x1
   115ce:	8fd9                	or	a5,a5,a4
   115d0:	00f41823          	sh	a5,16(s0)
   115d4:	e848                	sd	a0,144(s0)
   115d6:	b7fd                	j	115c4 <__sseek+0x28>

00000000000115d8 <__sclose>:
   115d8:	01259583          	lh	a1,18(a1)
   115dc:	1200006f          	j	116fc <_close_r>
	...

00000000000115e2 <_write_r>:
   115e2:	1101                	addi	sp,sp,-32
   115e4:	e822                	sd	s0,16(sp)
   115e6:	e426                	sd	s1,8(sp)
   115e8:	84aa                	mv	s1,a0
   115ea:	852e                	mv	a0,a1
   115ec:	85b2                	mv	a1,a2
   115ee:	8636                	mv	a2,a3
   115f0:	ec06                	sd	ra,24(sp)
   115f2:	8a01ac23          	sw	zero,-1864(gp) # 14350 <errno>
   115f6:	00001097          	auipc	ra,0x1
   115fa:	9ae080e7          	jalr	-1618(ra) # 11fa4 <write>
   115fe:	57fd                	li	a5,-1
   11600:	00f51663          	bne	a0,a5,1160c <_write_r+0x2a>
   11604:	8b81a783          	lw	a5,-1864(gp) # 14350 <errno>
   11608:	c391                	beqz	a5,1160c <_write_r+0x2a>
   1160a:	c09c                	sw	a5,0(s1)
   1160c:	60e2                	ld	ra,24(sp)
   1160e:	6442                	ld	s0,16(sp)
   11610:	64a2                	ld	s1,8(sp)
   11612:	6105                	addi	sp,sp,32
   11614:	8082                	ret
	...

0000000000011618 <__swsetup_r>:
   11618:	1101                	addi	sp,sp,-32
   1161a:	e426                	sd	s1,8(sp)
   1161c:	84aa                	mv	s1,a0
   1161e:	8101b503          	ld	a0,-2032(gp) # 142a8 <_impure_ptr>
   11622:	e822                	sd	s0,16(sp)
   11624:	ec06                	sd	ra,24(sp)
   11626:	842e                	mv	s0,a1
   11628:	c509                	beqz	a0,11632 <__swsetup_r+0x1a>
   1162a:	493c                	lw	a5,80(a0)
   1162c:	e399                	bnez	a5,11632 <__swsetup_r+0x1a>
   1162e:	fd9fe0ef          	jal	ra,10606 <__sinit>
   11632:	01041703          	lh	a4,16(s0)
   11636:	03071793          	slli	a5,a4,0x30
   1163a:	93c1                	srli	a5,a5,0x30
   1163c:	0087f693          	andi	a3,a5,8
   11640:	eeb9                	bnez	a3,1169e <__swsetup_r+0x86>
   11642:	0107f693          	andi	a3,a5,16
   11646:	ee89                	bnez	a3,11660 <__swsetup_r+0x48>
   11648:	47a5                	li	a5,9
   1164a:	c09c                	sw	a5,0(s1)
   1164c:	04076713          	ori	a4,a4,64
   11650:	00e41823          	sh	a4,16(s0)
   11654:	557d                	li	a0,-1
   11656:	60e2                	ld	ra,24(sp)
   11658:	6442                	ld	s0,16(sp)
   1165a:	64a2                	ld	s1,8(sp)
   1165c:	6105                	addi	sp,sp,32
   1165e:	8082                	ret
   11660:	8b91                	andi	a5,a5,4
   11662:	cb85                	beqz	a5,11692 <__swsetup_r+0x7a>
   11664:	6c2c                	ld	a1,88(s0)
   11666:	cd81                	beqz	a1,1167e <__swsetup_r+0x66>
   11668:	07440793          	addi	a5,s0,116
   1166c:	00f58763          	beq	a1,a5,1167a <__swsetup_r+0x62>
   11670:	8526                	mv	a0,s1
   11672:	00000097          	auipc	ra,0x0
   11676:	3ee080e7          	jalr	1006(ra) # 11a60 <_free_r>
   1167a:	04043c23          	sd	zero,88(s0)
   1167e:	01045783          	lhu	a5,16(s0)
   11682:	00042423          	sw	zero,8(s0)
   11686:	fdb7f793          	andi	a5,a5,-37
   1168a:	00f41823          	sh	a5,16(s0)
   1168e:	6c1c                	ld	a5,24(s0)
   11690:	e01c                	sd	a5,0(s0)
   11692:	01045783          	lhu	a5,16(s0)
   11696:	0087e793          	ori	a5,a5,8
   1169a:	00f41823          	sh	a5,16(s0)
   1169e:	6c1c                	ld	a5,24(s0)
   116a0:	ef99                	bnez	a5,116be <__swsetup_r+0xa6>
   116a2:	01045783          	lhu	a5,16(s0)
   116a6:	20000713          	li	a4,512
   116aa:	2807f793          	andi	a5,a5,640
   116ae:	00e78863          	beq	a5,a4,116be <__swsetup_r+0xa6>
   116b2:	85a2                	mv	a1,s0
   116b4:	8526                	mv	a0,s1
   116b6:	00000097          	auipc	ra,0x0
   116ba:	600080e7          	jalr	1536(ra) # 11cb6 <__smakebuf_r>
   116be:	01045783          	lhu	a5,16(s0)
   116c2:	0017f713          	andi	a4,a5,1
   116c6:	c705                	beqz	a4,116ee <__swsetup_r+0xd6>
   116c8:	501c                	lw	a5,32(s0)
   116ca:	00042623          	sw	zero,12(s0)
   116ce:	40f007bb          	negw	a5,a5
   116d2:	d41c                	sw	a5,40(s0)
   116d4:	6c1c                	ld	a5,24(s0)
   116d6:	4501                	li	a0,0
   116d8:	ffbd                	bnez	a5,11656 <__swsetup_r+0x3e>
   116da:	01041783          	lh	a5,16(s0)
   116de:	0807f713          	andi	a4,a5,128
   116e2:	db35                	beqz	a4,11656 <__swsetup_r+0x3e>
   116e4:	0407e793          	ori	a5,a5,64
   116e8:	00f41823          	sh	a5,16(s0)
   116ec:	b7a5                	j	11654 <__swsetup_r+0x3c>
   116ee:	8b89                	andi	a5,a5,2
   116f0:	4701                	li	a4,0
   116f2:	e391                	bnez	a5,116f6 <__swsetup_r+0xde>
   116f4:	5018                	lw	a4,32(s0)
   116f6:	c458                	sw	a4,12(s0)
   116f8:	bff1                	j	116d4 <__swsetup_r+0xbc>
	...

00000000000116fc <_close_r>:
   116fc:	1101                	addi	sp,sp,-32
   116fe:	e822                	sd	s0,16(sp)
   11700:	e426                	sd	s1,8(sp)
   11702:	84aa                	mv	s1,a0
   11704:	852e                	mv	a0,a1
   11706:	ec06                	sd	ra,24(sp)
   11708:	8a01ac23          	sw	zero,-1864(gp) # 14350 <errno>
   1170c:	1c1000ef          	jal	ra,120cc <close>
   11710:	57fd                	li	a5,-1
   11712:	00f51663          	bne	a0,a5,1171e <_close_r+0x22>
   11716:	8b81a783          	lw	a5,-1864(gp) # 14350 <errno>
   1171a:	c391                	beqz	a5,1171e <_close_r+0x22>
   1171c:	c09c                	sw	a5,0(s1)
   1171e:	60e2                	ld	ra,24(sp)
   11720:	6442                	ld	s0,16(sp)
   11722:	64a2                	ld	s1,8(sp)
   11724:	6105                	addi	sp,sp,32
   11726:	8082                	ret
	...

000000000001172a <_fclose_r>:
   1172a:	1101                	addi	sp,sp,-32
   1172c:	ec06                	sd	ra,24(sp)
   1172e:	e822                	sd	s0,16(sp)
   11730:	e426                	sd	s1,8(sp)
   11732:	e04a                	sd	s2,0(sp)
   11734:	e989                	bnez	a1,11746 <_fclose_r+0x1c>
   11736:	4901                	li	s2,0
   11738:	60e2                	ld	ra,24(sp)
   1173a:	6442                	ld	s0,16(sp)
   1173c:	854a                	mv	a0,s2
   1173e:	64a2                	ld	s1,8(sp)
   11740:	6902                	ld	s2,0(sp)
   11742:	6105                	addi	sp,sp,32
   11744:	8082                	ret
   11746:	84aa                	mv	s1,a0
   11748:	842e                	mv	s0,a1
   1174a:	c509                	beqz	a0,11754 <_fclose_r+0x2a>
   1174c:	493c                	lw	a5,80(a0)
   1174e:	e399                	bnez	a5,11754 <_fclose_r+0x2a>
   11750:	eb7fe0ef          	jal	ra,10606 <__sinit>
   11754:	01041783          	lh	a5,16(s0)
   11758:	dff9                	beqz	a5,11736 <_fclose_r+0xc>
   1175a:	85a2                	mv	a1,s0
   1175c:	8526                	mv	a0,s1
   1175e:	078000ef          	jal	ra,117d6 <__sflush_r>
   11762:	683c                	ld	a5,80(s0)
   11764:	892a                	mv	s2,a0
   11766:	c799                	beqz	a5,11774 <_fclose_r+0x4a>
   11768:	780c                	ld	a1,48(s0)
   1176a:	8526                	mv	a0,s1
   1176c:	9782                	jalr	a5
   1176e:	00055363          	bgez	a0,11774 <_fclose_r+0x4a>
   11772:	597d                	li	s2,-1
   11774:	01045783          	lhu	a5,16(s0)
   11778:	0807f793          	andi	a5,a5,128
   1177c:	c799                	beqz	a5,1178a <_fclose_r+0x60>
   1177e:	6c0c                	ld	a1,24(s0)
   11780:	8526                	mv	a0,s1
   11782:	00000097          	auipc	ra,0x0
   11786:	2de080e7          	jalr	734(ra) # 11a60 <_free_r>
   1178a:	6c2c                	ld	a1,88(s0)
   1178c:	cd81                	beqz	a1,117a4 <_fclose_r+0x7a>
   1178e:	07440793          	addi	a5,s0,116
   11792:	00f58763          	beq	a1,a5,117a0 <_fclose_r+0x76>
   11796:	8526                	mv	a0,s1
   11798:	00000097          	auipc	ra,0x0
   1179c:	2c8080e7          	jalr	712(ra) # 11a60 <_free_r>
   117a0:	04043c23          	sd	zero,88(s0)
   117a4:	7c2c                	ld	a1,120(s0)
   117a6:	c981                	beqz	a1,117b6 <_fclose_r+0x8c>
   117a8:	8526                	mv	a0,s1
   117aa:	00000097          	auipc	ra,0x0
   117ae:	2b6080e7          	jalr	694(ra) # 11a60 <_free_r>
   117b2:	06043c23          	sd	zero,120(s0)
   117b6:	f49fe0ef          	jal	ra,106fe <__sfp_lock_acquire>
   117ba:	00041823          	sh	zero,16(s0)
   117be:	fffff097          	auipc	ra,0xfffff
   117c2:	f42080e7          	jalr	-190(ra) # 10700 <__sfp_lock_release>
   117c6:	bf8d                	j	11738 <_fclose_r+0xe>

00000000000117c8 <fclose>:
   117c8:	85aa                	mv	a1,a0
   117ca:	8101b503          	ld	a0,-2032(gp) # 142a8 <_impure_ptr>
   117ce:	00000317          	auipc	t1,0x0
   117d2:	f5c30067          	jr	-164(t1) # 1172a <_fclose_r>

00000000000117d6 <__sflush_r>:
   117d6:	01059783          	lh	a5,16(a1)
   117da:	7179                	addi	sp,sp,-48
   117dc:	f022                	sd	s0,32(sp)
   117de:	03079713          	slli	a4,a5,0x30
   117e2:	9341                	srli	a4,a4,0x30
   117e4:	ec26                	sd	s1,24(sp)
   117e6:	f406                	sd	ra,40(sp)
   117e8:	e84a                	sd	s2,16(sp)
   117ea:	e44e                	sd	s3,8(sp)
   117ec:	00877693          	andi	a3,a4,8
   117f0:	84aa                	mv	s1,a0
   117f2:	842e                	mv	s0,a1
   117f4:	10069263          	bnez	a3,118f8 <__sflush_r+0x122>
   117f8:	6705                	lui	a4,0x1
   117fa:	80070713          	addi	a4,a4,-2048 # 800 <_start-0xf8b0>
   117fe:	8fd9                	or	a5,a5,a4
   11800:	4598                	lw	a4,8(a1)
   11802:	00f59823          	sh	a5,16(a1)
   11806:	00e04d63          	bgtz	a4,11820 <__sflush_r+0x4a>
   1180a:	59b8                	lw	a4,112(a1)
   1180c:	00e04a63          	bgtz	a4,11820 <__sflush_r+0x4a>
   11810:	4501                	li	a0,0
   11812:	70a2                	ld	ra,40(sp)
   11814:	7402                	ld	s0,32(sp)
   11816:	64e2                	ld	s1,24(sp)
   11818:	6942                	ld	s2,16(sp)
   1181a:	69a2                	ld	s3,8(sp)
   1181c:	6145                	addi	sp,sp,48
   1181e:	8082                	ret
   11820:	6438                	ld	a4,72(s0)
   11822:	d77d                	beqz	a4,11810 <__sflush_r+0x3a>
   11824:	0004a903          	lw	s2,0(s1)
   11828:	03379693          	slli	a3,a5,0x33
   1182c:	0004a023          	sw	zero,0(s1)
   11830:	780c                	ld	a1,48(s0)
   11832:	0806da63          	bgez	a3,118c6 <__sflush_r+0xf0>
   11836:	6850                	ld	a2,144(s0)
   11838:	01045783          	lhu	a5,16(s0)
   1183c:	8b91                	andi	a5,a5,4
   1183e:	c799                	beqz	a5,1184c <__sflush_r+0x76>
   11840:	441c                	lw	a5,8(s0)
   11842:	8e1d                	sub	a2,a2,a5
   11844:	6c3c                	ld	a5,88(s0)
   11846:	c399                	beqz	a5,1184c <__sflush_r+0x76>
   11848:	583c                	lw	a5,112(s0)
   1184a:	8e1d                	sub	a2,a2,a5
   1184c:	643c                	ld	a5,72(s0)
   1184e:	780c                	ld	a1,48(s0)
   11850:	4681                	li	a3,0
   11852:	8526                	mv	a0,s1
   11854:	9782                	jalr	a5
   11856:	57fd                	li	a5,-1
   11858:	01045683          	lhu	a3,16(s0)
   1185c:	00f51d63          	bne	a0,a5,11876 <__sflush_r+0xa0>
   11860:	409c                	lw	a5,0(s1)
   11862:	4775                	li	a4,29
   11864:	08f76463          	bltu	a4,a5,118ec <__sflush_r+0x116>
   11868:	20400737          	lui	a4,0x20400
   1186c:	0705                	addi	a4,a4,1
   1186e:	00f75733          	srl	a4,a4,a5
   11872:	8b05                	andi	a4,a4,1
   11874:	cf25                	beqz	a4,118ec <__sflush_r+0x116>
   11876:	77fd                	lui	a5,0xfffff
   11878:	7ff78793          	addi	a5,a5,2047 # fffffffffffff7ff <__global_pointer$+0xfffffffffffead67>
   1187c:	6c18                	ld	a4,24(s0)
   1187e:	8ff5                	and	a5,a5,a3
   11880:	0107979b          	slliw	a5,a5,0x10
   11884:	4107d79b          	sraiw	a5,a5,0x10
   11888:	e018                	sd	a4,0(s0)
   1188a:	00f41823          	sh	a5,16(s0)
   1188e:	00042423          	sw	zero,8(s0)
   11892:	03379713          	slli	a4,a5,0x33
   11896:	00075863          	bgez	a4,118a6 <__sflush_r+0xd0>
   1189a:	57fd                	li	a5,-1
   1189c:	00f51463          	bne	a0,a5,118a4 <__sflush_r+0xce>
   118a0:	409c                	lw	a5,0(s1)
   118a2:	e391                	bnez	a5,118a6 <__sflush_r+0xd0>
   118a4:	e848                	sd	a0,144(s0)
   118a6:	6c2c                	ld	a1,88(s0)
   118a8:	0124a023          	sw	s2,0(s1)
   118ac:	d1b5                	beqz	a1,11810 <__sflush_r+0x3a>
   118ae:	07440793          	addi	a5,s0,116
   118b2:	00f58763          	beq	a1,a5,118c0 <__sflush_r+0xea>
   118b6:	8526                	mv	a0,s1
   118b8:	00000097          	auipc	ra,0x0
   118bc:	1a8080e7          	jalr	424(ra) # 11a60 <_free_r>
   118c0:	04043c23          	sd	zero,88(s0)
   118c4:	b7b1                	j	11810 <__sflush_r+0x3a>
   118c6:	4601                	li	a2,0
   118c8:	4685                	li	a3,1
   118ca:	8526                	mv	a0,s1
   118cc:	9702                	jalr	a4
   118ce:	57fd                	li	a5,-1
   118d0:	862a                	mv	a2,a0
   118d2:	f6f513e3          	bne	a0,a5,11838 <__sflush_r+0x62>
   118d6:	409c                	lw	a5,0(s1)
   118d8:	d3a5                	beqz	a5,11838 <__sflush_r+0x62>
   118da:	4775                	li	a4,29
   118dc:	00e78563          	beq	a5,a4,118e6 <__sflush_r+0x110>
   118e0:	4759                	li	a4,22
   118e2:	04e79463          	bne	a5,a4,1192a <__sflush_r+0x154>
   118e6:	0124a023          	sw	s2,0(s1)
   118ea:	b71d                	j	11810 <__sflush_r+0x3a>
   118ec:	0406e793          	ori	a5,a3,64
   118f0:	00f41823          	sh	a5,16(s0)
   118f4:	557d                	li	a0,-1
   118f6:	bf31                	j	11812 <__sflush_r+0x3c>
   118f8:	0185b983          	ld	s3,24(a1)
   118fc:	f0098ae3          	beqz	s3,11810 <__sflush_r+0x3a>
   11900:	0005b903          	ld	s2,0(a1)
   11904:	8b0d                	andi	a4,a4,3
   11906:	0135b023          	sd	s3,0(a1)
   1190a:	4139093b          	subw	s2,s2,s3
   1190e:	4781                	li	a5,0
   11910:	e311                	bnez	a4,11914 <__sflush_r+0x13e>
   11912:	519c                	lw	a5,32(a1)
   11914:	c45c                	sw	a5,12(s0)
   11916:	ef205de3          	blez	s2,11810 <__sflush_r+0x3a>
   1191a:	603c                	ld	a5,64(s0)
   1191c:	780c                	ld	a1,48(s0)
   1191e:	86ca                	mv	a3,s2
   11920:	864e                	mv	a2,s3
   11922:	8526                	mv	a0,s1
   11924:	9782                	jalr	a5
   11926:	00a04763          	bgtz	a0,11934 <__sflush_r+0x15e>
   1192a:	01045783          	lhu	a5,16(s0)
   1192e:	0407e793          	ori	a5,a5,64
   11932:	bf7d                	j	118f0 <__sflush_r+0x11a>
   11934:	99aa                	add	s3,s3,a0
   11936:	40a9093b          	subw	s2,s2,a0
   1193a:	bff1                	j	11916 <__sflush_r+0x140>

000000000001193c <_fflush_r>:
   1193c:	1101                	addi	sp,sp,-32
   1193e:	e822                	sd	s0,16(sp)
   11940:	ec06                	sd	ra,24(sp)
   11942:	842a                	mv	s0,a0
   11944:	c909                	beqz	a0,11956 <_fflush_r+0x1a>
   11946:	493c                	lw	a5,80(a0)
   11948:	e799                	bnez	a5,11956 <_fflush_r+0x1a>
   1194a:	e42e                	sd	a1,8(sp)
   1194c:	fffff097          	auipc	ra,0xfffff
   11950:	cba080e7          	jalr	-838(ra) # 10606 <__sinit>
   11954:	65a2                	ld	a1,8(sp)
   11956:	01059783          	lh	a5,16(a1)
   1195a:	cb89                	beqz	a5,1196c <_fflush_r+0x30>
   1195c:	8522                	mv	a0,s0
   1195e:	6442                	ld	s0,16(sp)
   11960:	60e2                	ld	ra,24(sp)
   11962:	6105                	addi	sp,sp,32
   11964:	00000317          	auipc	t1,0x0
   11968:	e7230067          	jr	-398(t1) # 117d6 <__sflush_r>
   1196c:	60e2                	ld	ra,24(sp)
   1196e:	6442                	ld	s0,16(sp)
   11970:	4501                	li	a0,0
   11972:	6105                	addi	sp,sp,32
   11974:	8082                	ret

0000000000011976 <fflush>:
   11976:	85aa                	mv	a1,a0
   11978:	ed01                	bnez	a0,11990 <fflush+0x1a>
   1197a:	67d1                	lui	a5,0x14
   1197c:	2a07b503          	ld	a0,672(a5) # 142a0 <_global_impure_ptr>
   11980:	000125b7          	lui	a1,0x12
   11984:	93c58593          	addi	a1,a1,-1732 # 1193c <_fflush_r>
   11988:	fffff317          	auipc	t1,0xfffff
   1198c:	10230067          	jr	258(t1) # 10a8a <_fwalk_reent>
   11990:	8101b503          	ld	a0,-2032(gp) # 142a8 <_impure_ptr>
   11994:	00000317          	auipc	t1,0x0
   11998:	fa830067          	jr	-88(t1) # 1193c <_fflush_r>
	...

000000000001199e <_malloc_trim_r>:
   1199e:	7139                	addi	sp,sp,-64
   119a0:	f04a                	sd	s2,32(sp)
   119a2:	6951                	lui	s2,0x14
   119a4:	f822                	sd	s0,48(sp)
   119a6:	f426                	sd	s1,40(sp)
   119a8:	ec4e                	sd	s3,24(sp)
   119aa:	e42e                	sd	a1,8(sp)
   119ac:	fc06                	sd	ra,56(sp)
   119ae:	89aa                	mv	s3,a0
   119b0:	a8890913          	addi	s2,s2,-1400 # 13a88 <__malloc_av_>
   119b4:	f4eff0ef          	jal	ra,11102 <__malloc_lock>
   119b8:	01093783          	ld	a5,16(s2)
   119bc:	65a2                	ld	a1,8(sp)
   119be:	6784                	ld	s1,8(a5)
   119c0:	6785                	lui	a5,0x1
   119c2:	fdf78413          	addi	s0,a5,-33 # fdf <_start-0xf0d1>
   119c6:	98f1                	andi	s1,s1,-4
   119c8:	8c0d                	sub	s0,s0,a1
   119ca:	9426                	add	s0,s0,s1
   119cc:	8031                	srli	s0,s0,0xc
   119ce:	147d                	addi	s0,s0,-1
   119d0:	0432                	slli	s0,s0,0xc
   119d2:	00f45f63          	ble	a5,s0,119f0 <_malloc_trim_r+0x52>
   119d6:	854e                	mv	a0,s3
   119d8:	fffff097          	auipc	ra,0xfffff
   119dc:	72c080e7          	jalr	1836(ra) # 11104 <__malloc_unlock>
   119e0:	4501                	li	a0,0
   119e2:	70e2                	ld	ra,56(sp)
   119e4:	7442                	ld	s0,48(sp)
   119e6:	74a2                	ld	s1,40(sp)
   119e8:	7902                	ld	s2,32(sp)
   119ea:	69e2                	ld	s3,24(sp)
   119ec:	6121                	addi	sp,sp,64
   119ee:	8082                	ret
   119f0:	4581                	li	a1,0
   119f2:	854e                	mv	a0,s3
   119f4:	af3ff0ef          	jal	ra,114e6 <_sbrk_r>
   119f8:	01093783          	ld	a5,16(s2)
   119fc:	97a6                	add	a5,a5,s1
   119fe:	fcf51ce3          	bne	a0,a5,119d6 <_malloc_trim_r+0x38>
   11a02:	408005b3          	neg	a1,s0
   11a06:	854e                	mv	a0,s3
   11a08:	adfff0ef          	jal	ra,114e6 <_sbrk_r>
   11a0c:	57fd                	li	a5,-1
   11a0e:	02f51663          	bne	a0,a5,11a3a <_malloc_trim_r+0x9c>
   11a12:	4581                	li	a1,0
   11a14:	854e                	mv	a0,s3
   11a16:	ad1ff0ef          	jal	ra,114e6 <_sbrk_r>
   11a1a:	01093703          	ld	a4,16(s2)
   11a1e:	46fd                	li	a3,31
   11a20:	40e507b3          	sub	a5,a0,a4
   11a24:	faf6d9e3          	ble	a5,a3,119d6 <_malloc_trim_r+0x38>
   11a28:	8181b683          	ld	a3,-2024(gp) # 142b0 <__malloc_sbrk_base>
   11a2c:	0017e793          	ori	a5,a5,1
   11a30:	e71c                	sd	a5,8(a4)
   11a32:	8d15                	sub	a0,a0,a3
   11a34:	88a1a023          	sw	a0,-1920(gp) # 14318 <__malloc_current_mallinfo>
   11a38:	bf79                	j	119d6 <_malloc_trim_r+0x38>
   11a3a:	01093783          	ld	a5,16(s2)
   11a3e:	8c81                	sub	s1,s1,s0
   11a40:	0014e493          	ori	s1,s1,1
   11a44:	e784                	sd	s1,8(a5)
   11a46:	8801a783          	lw	a5,-1920(gp) # 14318 <__malloc_current_mallinfo>
   11a4a:	854e                	mv	a0,s3
   11a4c:	4087843b          	subw	s0,a5,s0
   11a50:	8881a023          	sw	s0,-1920(gp) # 14318 <__malloc_current_mallinfo>
   11a54:	fffff097          	auipc	ra,0xfffff
   11a58:	6b0080e7          	jalr	1712(ra) # 11104 <__malloc_unlock>
   11a5c:	4505                	li	a0,1
   11a5e:	b751                	j	119e2 <_malloc_trim_r+0x44>

0000000000011a60 <_free_r>:
   11a60:	1a058c63          	beqz	a1,11c18 <_free_r+0x1b8>
   11a64:	1101                	addi	sp,sp,-32
   11a66:	e822                	sd	s0,16(sp)
   11a68:	e426                	sd	s1,8(sp)
   11a6a:	842a                	mv	s0,a0
   11a6c:	84ae                	mv	s1,a1
   11a6e:	ec06                	sd	ra,24(sp)
   11a70:	fffff097          	auipc	ra,0xfffff
   11a74:	692080e7          	jalr	1682(ra) # 11102 <__malloc_lock>
   11a78:	ff84b503          	ld	a0,-8(s1)
   11a7c:	6651                	lui	a2,0x14
   11a7e:	ff048693          	addi	a3,s1,-16
   11a82:	ffe57793          	andi	a5,a0,-2
   11a86:	a8860813          	addi	a6,a2,-1400 # 13a88 <__malloc_av_>
   11a8a:	00f685b3          	add	a1,a3,a5
   11a8e:	6598                	ld	a4,8(a1)
   11a90:	01083803          	ld	a6,16(a6)
   11a94:	a8860613          	addi	a2,a2,-1400
   11a98:	9b71                	andi	a4,a4,-4
   11a9a:	8905                	andi	a0,a0,1
   11a9c:	04b81263          	bne	a6,a1,11ae0 <_free_r+0x80>
   11aa0:	97ba                	add	a5,a5,a4
   11aa2:	e909                	bnez	a0,11ab4 <_free_r+0x54>
   11aa4:	ff04b703          	ld	a4,-16(s1)
   11aa8:	8e99                	sub	a3,a3,a4
   11aaa:	6a8c                	ld	a1,16(a3)
   11aac:	97ba                	add	a5,a5,a4
   11aae:	6e98                	ld	a4,24(a3)
   11ab0:	ed98                	sd	a4,24(a1)
   11ab2:	eb0c                	sd	a1,16(a4)
   11ab4:	0017e713          	ori	a4,a5,1
   11ab8:	e698                	sd	a4,8(a3)
   11aba:	8201b703          	ld	a4,-2016(gp) # 142b8 <__malloc_trim_threshold>
   11abe:	ea14                	sd	a3,16(a2)
   11ac0:	00e7e963          	bltu	a5,a4,11ad2 <_free_r+0x72>
   11ac4:	8381b583          	ld	a1,-1992(gp) # 142d0 <__malloc_top_pad>
   11ac8:	8522                	mv	a0,s0
   11aca:	00000097          	auipc	ra,0x0
   11ace:	ed4080e7          	jalr	-300(ra) # 1199e <_malloc_trim_r>
   11ad2:	8522                	mv	a0,s0
   11ad4:	6442                	ld	s0,16(sp)
   11ad6:	60e2                	ld	ra,24(sp)
   11ad8:	64a2                	ld	s1,8(sp)
   11ada:	6105                	addi	sp,sp,32
   11adc:	e28ff06f          	j	11104 <__malloc_unlock>
   11ae0:	e598                	sd	a4,8(a1)
   11ae2:	4801                	li	a6,0
   11ae4:	e10d                	bnez	a0,11b06 <_free_r+0xa6>
   11ae6:	ff04b503          	ld	a0,-16(s1)
   11aea:	68d1                	lui	a7,0x14
   11aec:	a9888893          	addi	a7,a7,-1384 # 13a98 <__malloc_av_+0x10>
   11af0:	8e89                	sub	a3,a3,a0
   11af2:	97aa                	add	a5,a5,a0
   11af4:	6a88                	ld	a0,16(a3)
   11af6:	07150e63          	beq	a0,a7,11b72 <_free_r+0x112>
   11afa:	0186b883          	ld	a7,24(a3)
   11afe:	01153c23          	sd	a7,24(a0)
   11b02:	00a8b823          	sd	a0,16(a7)
   11b06:	00e58533          	add	a0,a1,a4
   11b0a:	6508                	ld	a0,8(a0)
   11b0c:	8905                	andi	a0,a0,1
   11b0e:	ed19                	bnez	a0,11b2c <_free_r+0xcc>
   11b10:	97ba                	add	a5,a5,a4
   11b12:	6998                	ld	a4,16(a1)
   11b14:	06081163          	bnez	a6,11b76 <_free_r+0x116>
   11b18:	6551                	lui	a0,0x14
   11b1a:	a9850513          	addi	a0,a0,-1384 # 13a98 <__malloc_av_+0x10>
   11b1e:	04a71c63          	bne	a4,a0,11b76 <_free_r+0x116>
   11b22:	f614                	sd	a3,40(a2)
   11b24:	f214                	sd	a3,32(a2)
   11b26:	ee98                	sd	a4,24(a3)
   11b28:	ea98                	sd	a4,16(a3)
   11b2a:	4805                	li	a6,1
   11b2c:	0017e713          	ori	a4,a5,1
   11b30:	e698                	sd	a4,8(a3)
   11b32:	00f68733          	add	a4,a3,a5
   11b36:	e31c                	sd	a5,0(a4)
   11b38:	f8081de3          	bnez	a6,11ad2 <_free_r+0x72>
   11b3c:	1ff00713          	li	a4,511
   11b40:	02f76f63          	bltu	a4,a5,11b7e <_free_r+0x11e>
   11b44:	838d                	srli	a5,a5,0x3
   11b46:	2781                	sext.w	a5,a5
   11b48:	4027d59b          	sraiw	a1,a5,0x2
   11b4c:	4705                	li	a4,1
   11b4e:	00b71733          	sll	a4,a4,a1
   11b52:	2785                	addiw	a5,a5,1
   11b54:	660c                	ld	a1,8(a2)
   11b56:	0017979b          	slliw	a5,a5,0x1
   11b5a:	078e                	slli	a5,a5,0x3
   11b5c:	97b2                	add	a5,a5,a2
   11b5e:	8f4d                	or	a4,a4,a1
   11b60:	e618                	sd	a4,8(a2)
   11b62:	6398                	ld	a4,0(a5)
   11b64:	ff078613          	addi	a2,a5,-16
   11b68:	ee90                	sd	a2,24(a3)
   11b6a:	ea98                	sd	a4,16(a3)
   11b6c:	e394                	sd	a3,0(a5)
   11b6e:	ef14                	sd	a3,24(a4)
   11b70:	b78d                	j	11ad2 <_free_r+0x72>
   11b72:	4805                	li	a6,1
   11b74:	bf49                	j	11b06 <_free_r+0xa6>
   11b76:	6d8c                	ld	a1,24(a1)
   11b78:	ef0c                	sd	a1,24(a4)
   11b7a:	e998                	sd	a4,16(a1)
   11b7c:	bf45                	j	11b2c <_free_r+0xcc>
   11b7e:	0097d593          	srli	a1,a5,0x9
   11b82:	4711                	li	a4,4
   11b84:	02b76e63          	bltu	a4,a1,11bc0 <_free_r+0x160>
   11b88:	0067d713          	srli	a4,a5,0x6
   11b8c:	0387071b          	addiw	a4,a4,56
   11b90:	0017059b          	addiw	a1,a4,1
   11b94:	0015959b          	slliw	a1,a1,0x1
   11b98:	058e                	slli	a1,a1,0x3
   11b9a:	95b2                	add	a1,a1,a2
   11b9c:	ff058513          	addi	a0,a1,-16
   11ba0:	618c                	ld	a1,0(a1)
   11ba2:	06b51563          	bne	a0,a1,11c0c <_free_r+0x1ac>
   11ba6:	4785                	li	a5,1
   11ba8:	4027571b          	sraiw	a4,a4,0x2
   11bac:	00e79733          	sll	a4,a5,a4
   11bb0:	661c                	ld	a5,8(a2)
   11bb2:	8f5d                	or	a4,a4,a5
   11bb4:	e618                	sd	a4,8(a2)
   11bb6:	ee88                	sd	a0,24(a3)
   11bb8:	ea8c                	sd	a1,16(a3)
   11bba:	e914                	sd	a3,16(a0)
   11bbc:	ed94                	sd	a3,24(a1)
   11bbe:	bf11                	j	11ad2 <_free_r+0x72>
   11bc0:	4751                	li	a4,20
   11bc2:	00b76563          	bltu	a4,a1,11bcc <_free_r+0x16c>
   11bc6:	05b5871b          	addiw	a4,a1,91
   11bca:	b7d9                	j	11b90 <_free_r+0x130>
   11bcc:	05400713          	li	a4,84
   11bd0:	00b76763          	bltu	a4,a1,11bde <_free_r+0x17e>
   11bd4:	00c7d713          	srli	a4,a5,0xc
   11bd8:	06e7071b          	addiw	a4,a4,110
   11bdc:	bf55                	j	11b90 <_free_r+0x130>
   11bde:	15400713          	li	a4,340
   11be2:	00b76763          	bltu	a4,a1,11bf0 <_free_r+0x190>
   11be6:	00f7d713          	srli	a4,a5,0xf
   11bea:	0777071b          	addiw	a4,a4,119
   11bee:	b74d                	j	11b90 <_free_r+0x130>
   11bf0:	55400513          	li	a0,1364
   11bf4:	07e00713          	li	a4,126
   11bf8:	f8b56ce3          	bltu	a0,a1,11b90 <_free_r+0x130>
   11bfc:	0127d713          	srli	a4,a5,0x12
   11c00:	07c7071b          	addiw	a4,a4,124
   11c04:	b771                	j	11b90 <_free_r+0x130>
   11c06:	698c                	ld	a1,16(a1)
   11c08:	00b50663          	beq	a0,a1,11c14 <_free_r+0x1b4>
   11c0c:	6598                	ld	a4,8(a1)
   11c0e:	9b71                	andi	a4,a4,-4
   11c10:	fee7ebe3          	bltu	a5,a4,11c06 <_free_r+0x1a6>
   11c14:	6d88                	ld	a0,24(a1)
   11c16:	b745                	j	11bb6 <_free_r+0x156>
   11c18:	8082                	ret

0000000000011c1a <_lseek_r>:
   11c1a:	1101                	addi	sp,sp,-32
   11c1c:	e822                	sd	s0,16(sp)
   11c1e:	e426                	sd	s1,8(sp)
   11c20:	84aa                	mv	s1,a0
   11c22:	852e                	mv	a0,a1
   11c24:	85b2                	mv	a1,a2
   11c26:	8636                	mv	a2,a3
   11c28:	ec06                	sd	ra,24(sp)
   11c2a:	8a01ac23          	sw	zero,-1864(gp) # 14350 <errno>
   11c2e:	00000097          	auipc	ra,0x0
   11c32:	352080e7          	jalr	850(ra) # 11f80 <lseek>
   11c36:	57fd                	li	a5,-1
   11c38:	00f51663          	bne	a0,a5,11c44 <_lseek_r+0x2a>
   11c3c:	8b81a783          	lw	a5,-1864(gp) # 14350 <errno>
   11c40:	c391                	beqz	a5,11c44 <_lseek_r+0x2a>
   11c42:	c09c                	sw	a5,0(s1)
   11c44:	60e2                	ld	ra,24(sp)
   11c46:	6442                	ld	s0,16(sp)
   11c48:	64a2                	ld	s1,8(sp)
   11c4a:	6105                	addi	sp,sp,32
   11c4c:	8082                	ret
	...

0000000000011c50 <__swhatbuf_r>:
   11c50:	7135                	addi	sp,sp,-160
   11c52:	e526                	sd	s1,136(sp)
   11c54:	84ae                	mv	s1,a1
   11c56:	01259583          	lh	a1,18(a1)
   11c5a:	e922                	sd	s0,144(sp)
   11c5c:	ed06                	sd	ra,152(sp)
   11c5e:	8432                	mv	s0,a2
   11c60:	0005dc63          	bgez	a1,11c78 <__swhatbuf_r+0x28>
   11c64:	0104d783          	lhu	a5,16(s1)
   11c68:	0006a023          	sw	zero,0(a3)
   11c6c:	0807f793          	andi	a5,a5,128
   11c70:	eb95                	bnez	a5,11ca4 <__swhatbuf_r+0x54>
   11c72:	40000793          	li	a5,1024
   11c76:	a80d                	j	11ca8 <__swhatbuf_r+0x58>
   11c78:	0830                	addi	a2,sp,24
   11c7a:	e436                	sd	a3,8(sp)
   11c7c:	1ec000ef          	jal	ra,11e68 <_fstat_r>
   11c80:	66a2                	ld	a3,8(sp)
   11c82:	fe0541e3          	bltz	a0,11c64 <__swhatbuf_r+0x14>
   11c86:	47f2                	lw	a5,28(sp)
   11c88:	673d                	lui	a4,0xf
   11c8a:	6505                	lui	a0,0x1
   11c8c:	8ff9                	and	a5,a5,a4
   11c8e:	6709                	lui	a4,0x2
   11c90:	8f99                	sub	a5,a5,a4
   11c92:	0017b793          	seqz	a5,a5
   11c96:	c29c                	sw	a5,0(a3)
   11c98:	40000793          	li	a5,1024
   11c9c:	e01c                	sd	a5,0(s0)
   11c9e:	80050513          	addi	a0,a0,-2048 # 800 <_start-0xf8b0>
   11ca2:	a029                	j	11cac <__swhatbuf_r+0x5c>
   11ca4:	04000793          	li	a5,64
   11ca8:	e01c                	sd	a5,0(s0)
   11caa:	4501                	li	a0,0
   11cac:	60ea                	ld	ra,152(sp)
   11cae:	644a                	ld	s0,144(sp)
   11cb0:	64aa                	ld	s1,136(sp)
   11cb2:	610d                	addi	sp,sp,160
   11cb4:	8082                	ret

0000000000011cb6 <__smakebuf_r>:
   11cb6:	0105d783          	lhu	a5,16(a1)
   11cba:	7179                	addi	sp,sp,-48
   11cbc:	f022                	sd	s0,32(sp)
   11cbe:	f406                	sd	ra,40(sp)
   11cc0:	ec26                	sd	s1,24(sp)
   11cc2:	e84a                	sd	s2,16(sp)
   11cc4:	8b89                	andi	a5,a5,2
   11cc6:	842e                	mv	s0,a1
   11cc8:	cf89                	beqz	a5,11ce2 <__smakebuf_r+0x2c>
   11cca:	07740793          	addi	a5,s0,119
   11cce:	e01c                	sd	a5,0(s0)
   11cd0:	ec1c                	sd	a5,24(s0)
   11cd2:	4785                	li	a5,1
   11cd4:	d01c                	sw	a5,32(s0)
   11cd6:	70a2                	ld	ra,40(sp)
   11cd8:	7402                	ld	s0,32(sp)
   11cda:	64e2                	ld	s1,24(sp)
   11cdc:	6942                	ld	s2,16(sp)
   11cde:	6145                	addi	sp,sp,48
   11ce0:	8082                	ret
   11ce2:	0054                	addi	a3,sp,4
   11ce4:	0030                	addi	a2,sp,8
   11ce6:	84aa                	mv	s1,a0
   11ce8:	00000097          	auipc	ra,0x0
   11cec:	f68080e7          	jalr	-152(ra) # 11c50 <__swhatbuf_r>
   11cf0:	65a2                	ld	a1,8(sp)
   11cf2:	892a                	mv	s2,a0
   11cf4:	8526                	mv	a0,s1
   11cf6:	fffff097          	auipc	ra,0xfffff
   11cfa:	e02080e7          	jalr	-510(ra) # 10af8 <_malloc_r>
   11cfe:	ed01                	bnez	a0,11d16 <__smakebuf_r+0x60>
   11d00:	01041783          	lh	a5,16(s0)
   11d04:	2007f713          	andi	a4,a5,512
   11d08:	f779                	bnez	a4,11cd6 <__smakebuf_r+0x20>
   11d0a:	9bf1                	andi	a5,a5,-4
   11d0c:	0027e793          	ori	a5,a5,2
   11d10:	00f41823          	sh	a5,16(s0)
   11d14:	bf5d                	j	11cca <__smakebuf_r+0x14>
   11d16:	000107b7          	lui	a5,0x10
   11d1a:	53678793          	addi	a5,a5,1334 # 10536 <_cleanup_r>
   11d1e:	ecbc                	sd	a5,88(s1)
   11d20:	01045783          	lhu	a5,16(s0)
   11d24:	e008                	sd	a0,0(s0)
   11d26:	ec08                	sd	a0,24(s0)
   11d28:	0807e793          	ori	a5,a5,128
   11d2c:	00f41823          	sh	a5,16(s0)
   11d30:	67a2                	ld	a5,8(sp)
   11d32:	d01c                	sw	a5,32(s0)
   11d34:	4792                	lw	a5,4(sp)
   11d36:	c385                	beqz	a5,11d56 <__smakebuf_r+0xa0>
   11d38:	01241583          	lh	a1,18(s0)
   11d3c:	8526                	mv	a0,s1
   11d3e:	00000097          	auipc	ra,0x0
   11d42:	15a080e7          	jalr	346(ra) # 11e98 <_isatty_r>
   11d46:	c901                	beqz	a0,11d56 <__smakebuf_r+0xa0>
   11d48:	01045783          	lhu	a5,16(s0)
   11d4c:	9bf1                	andi	a5,a5,-4
   11d4e:	0017e793          	ori	a5,a5,1
   11d52:	00f41823          	sh	a5,16(s0)
   11d56:	01045783          	lhu	a5,16(s0)
   11d5a:	00f96933          	or	s2,s2,a5
   11d5e:	01241823          	sh	s2,16(s0)
   11d62:	bf95                	j	11cd6 <__smakebuf_r+0x20>

0000000000011d64 <_read_r>:
   11d64:	1101                	addi	sp,sp,-32
   11d66:	e822                	sd	s0,16(sp)
   11d68:	e426                	sd	s1,8(sp)
   11d6a:	84aa                	mv	s1,a0
   11d6c:	852e                	mv	a0,a1
   11d6e:	85b2                	mv	a1,a2
   11d70:	8636                	mv	a2,a3
   11d72:	ec06                	sd	ra,24(sp)
   11d74:	8a01ac23          	sw	zero,-1864(gp) # 14350 <errno>
   11d78:	21c000ef          	jal	ra,11f94 <read>
   11d7c:	57fd                	li	a5,-1
   11d7e:	00f51663          	bne	a0,a5,11d8a <_read_r+0x26>
   11d82:	8b81a783          	lw	a5,-1864(gp) # 14350 <errno>
   11d86:	c391                	beqz	a5,11d8a <_read_r+0x26>
   11d88:	c09c                	sw	a5,0(s1)
   11d8a:	60e2                	ld	ra,24(sp)
   11d8c:	6442                	ld	s0,16(sp)
   11d8e:	64a2                	ld	s1,8(sp)
   11d90:	6105                	addi	sp,sp,32
   11d92:	8082                	ret
	...

0000000000011d96 <cleanup_glue>:
   11d96:	1101                	addi	sp,sp,-32
   11d98:	e822                	sd	s0,16(sp)
   11d9a:	842e                	mv	s0,a1
   11d9c:	618c                	ld	a1,0(a1)
   11d9e:	e426                	sd	s1,8(sp)
   11da0:	ec06                	sd	ra,24(sp)
   11da2:	84aa                	mv	s1,a0
   11da4:	c199                	beqz	a1,11daa <cleanup_glue+0x14>
   11da6:	ff1ff0ef          	jal	ra,11d96 <cleanup_glue>
   11daa:	85a2                	mv	a1,s0
   11dac:	6442                	ld	s0,16(sp)
   11dae:	60e2                	ld	ra,24(sp)
   11db0:	8526                	mv	a0,s1
   11db2:	64a2                	ld	s1,8(sp)
   11db4:	6105                	addi	sp,sp,32
   11db6:	00000317          	auipc	t1,0x0
   11dba:	caa30067          	jr	-854(t1) # 11a60 <_free_r>

0000000000011dbe <_reclaim_reent>:
   11dbe:	8101b783          	ld	a5,-2032(gp) # 142a8 <_impure_ptr>
   11dc2:	0aa78263          	beq	a5,a0,11e66 <_reclaim_reent+0xa8>
   11dc6:	7d3c                	ld	a5,120(a0)
   11dc8:	7179                	addi	sp,sp,-48
   11dca:	f022                	sd	s0,32(sp)
   11dcc:	ec26                	sd	s1,24(sp)
   11dce:	e84a                	sd	s2,16(sp)
   11dd0:	f406                	sd	ra,40(sp)
   11dd2:	e44e                	sd	s3,8(sp)
   11dd4:	842a                	mv	s0,a0
   11dd6:	4481                	li	s1,0
   11dd8:	20000913          	li	s2,512
   11ddc:	eb85                	bnez	a5,11e0c <_reclaim_reent+0x4e>
   11dde:	702c                	ld	a1,96(s0)
   11de0:	c581                	beqz	a1,11de8 <_reclaim_reent+0x2a>
   11de2:	8522                	mv	a0,s0
   11de4:	c7dff0ef          	jal	ra,11a60 <_free_r>
   11de8:	1f843583          	ld	a1,504(s0)
   11dec:	cd95                	beqz	a1,11e28 <_reclaim_reent+0x6a>
   11dee:	20040493          	addi	s1,s0,512
   11df2:	02958b63          	beq	a1,s1,11e28 <_reclaim_reent+0x6a>
   11df6:	0005b903          	ld	s2,0(a1)
   11dfa:	8522                	mv	a0,s0
   11dfc:	c65ff0ef          	jal	ra,11a60 <_free_r>
   11e00:	85ca                	mv	a1,s2
   11e02:	bfc5                	j	11df2 <_reclaim_reent+0x34>
   11e04:	95a6                	add	a1,a1,s1
   11e06:	618c                	ld	a1,0(a1)
   11e08:	e989                	bnez	a1,11e1a <_reclaim_reent+0x5c>
   11e0a:	04a1                	addi	s1,s1,8
   11e0c:	7c2c                	ld	a1,120(s0)
   11e0e:	ff249be3          	bne	s1,s2,11e04 <_reclaim_reent+0x46>
   11e12:	8522                	mv	a0,s0
   11e14:	c4dff0ef          	jal	ra,11a60 <_free_r>
   11e18:	b7d9                	j	11dde <_reclaim_reent+0x20>
   11e1a:	0005b983          	ld	s3,0(a1)
   11e1e:	8522                	mv	a0,s0
   11e20:	c41ff0ef          	jal	ra,11a60 <_free_r>
   11e24:	85ce                	mv	a1,s3
   11e26:	b7cd                	j	11e08 <_reclaim_reent+0x4a>
   11e28:	644c                	ld	a1,136(s0)
   11e2a:	c581                	beqz	a1,11e32 <_reclaim_reent+0x74>
   11e2c:	8522                	mv	a0,s0
   11e2e:	c33ff0ef          	jal	ra,11a60 <_free_r>
   11e32:	483c                	lw	a5,80(s0)
   11e34:	c395                	beqz	a5,11e58 <_reclaim_reent+0x9a>
   11e36:	6c3c                	ld	a5,88(s0)
   11e38:	8522                	mv	a0,s0
   11e3a:	9782                	jalr	a5
   11e3c:	52043583          	ld	a1,1312(s0)
   11e40:	cd81                	beqz	a1,11e58 <_reclaim_reent+0x9a>
   11e42:	8522                	mv	a0,s0
   11e44:	7402                	ld	s0,32(sp)
   11e46:	70a2                	ld	ra,40(sp)
   11e48:	64e2                	ld	s1,24(sp)
   11e4a:	6942                	ld	s2,16(sp)
   11e4c:	69a2                	ld	s3,8(sp)
   11e4e:	6145                	addi	sp,sp,48
   11e50:	00000317          	auipc	t1,0x0
   11e54:	f4630067          	jr	-186(t1) # 11d96 <cleanup_glue>
   11e58:	70a2                	ld	ra,40(sp)
   11e5a:	7402                	ld	s0,32(sp)
   11e5c:	64e2                	ld	s1,24(sp)
   11e5e:	6942                	ld	s2,16(sp)
   11e60:	69a2                	ld	s3,8(sp)
   11e62:	6145                	addi	sp,sp,48
   11e64:	8082                	ret
   11e66:	8082                	ret

0000000000011e68 <_fstat_r>:
   11e68:	1101                	addi	sp,sp,-32
   11e6a:	e822                	sd	s0,16(sp)
   11e6c:	e426                	sd	s1,8(sp)
   11e6e:	84aa                	mv	s1,a0
   11e70:	852e                	mv	a0,a1
   11e72:	85b2                	mv	a1,a2
   11e74:	ec06                	sd	ra,24(sp)
   11e76:	8a01ac23          	sw	zero,-1864(gp) # 14350 <errno>
   11e7a:	13e000ef          	jal	ra,11fb8 <fstat>
   11e7e:	57fd                	li	a5,-1
   11e80:	00f51663          	bne	a0,a5,11e8c <_fstat_r+0x24>
   11e84:	8b81a783          	lw	a5,-1864(gp) # 14350 <errno>
   11e88:	c391                	beqz	a5,11e8c <_fstat_r+0x24>
   11e8a:	c09c                	sw	a5,0(s1)
   11e8c:	60e2                	ld	ra,24(sp)
   11e8e:	6442                	ld	s0,16(sp)
   11e90:	64a2                	ld	s1,8(sp)
   11e92:	6105                	addi	sp,sp,32
   11e94:	8082                	ret
	...

0000000000011e98 <_isatty_r>:
   11e98:	1101                	addi	sp,sp,-32
   11e9a:	e822                	sd	s0,16(sp)
   11e9c:	e426                	sd	s1,8(sp)
   11e9e:	84aa                	mv	s1,a0
   11ea0:	852e                	mv	a0,a1
   11ea2:	ec06                	sd	ra,24(sp)
   11ea4:	8a01ac23          	sw	zero,-1864(gp) # 14350 <errno>
   11ea8:	2d8000ef          	jal	ra,12180 <isatty>
   11eac:	57fd                	li	a5,-1
   11eae:	00f51663          	bne	a0,a5,11eba <_isatty_r+0x22>
   11eb2:	8b81a783          	lw	a5,-1864(gp) # 14350 <errno>
   11eb6:	c391                	beqz	a5,11eba <_isatty_r+0x22>
   11eb8:	c09c                	sw	a5,0(s1)
   11eba:	60e2                	ld	ra,24(sp)
   11ebc:	6442                	ld	s0,16(sp)
   11ebe:	64a2                	ld	s1,8(sp)
   11ec0:	6105                	addi	sp,sp,32
   11ec2:	8082                	ret
	...

0000000000011ec6 <conv_stat>:
   11ec6:	619c                	ld	a5,0(a1)
   11ec8:	00f51023          	sh	a5,0(a0)
   11ecc:	659c                	ld	a5,8(a1)
   11ece:	00f51123          	sh	a5,2(a0)
   11ed2:	499c                	lw	a5,16(a1)
   11ed4:	c15c                	sw	a5,4(a0)
   11ed6:	49dc                	lw	a5,20(a1)
   11ed8:	00f51423          	sh	a5,8(a0)
   11edc:	4d9c                	lw	a5,24(a1)
   11ede:	00f51523          	sh	a5,10(a0)
   11ee2:	4ddc                	lw	a5,28(a1)
   11ee4:	00f51623          	sh	a5,12(a0)
   11ee8:	719c                	ld	a5,32(a1)
   11eea:	00f51723          	sh	a5,14(a0)
   11eee:	799c                	ld	a5,48(a1)
   11ef0:	e91c                	sd	a5,16(a0)
   11ef2:	61bc                	ld	a5,64(a1)
   11ef4:	e93c                	sd	a5,80(a0)
   11ef6:	5d9c                	lw	a5,56(a1)
   11ef8:	e53c                	sd	a5,72(a0)
   11efa:	65bc                	ld	a5,72(a1)
   11efc:	ed1c                	sd	a5,24(a0)
   11efe:	6dbc                	ld	a5,88(a1)
   11f00:	f51c                	sd	a5,40(a0)
   11f02:	75bc                	ld	a5,104(a1)
   11f04:	fd1c                	sd	a5,56(a0)
   11f06:	8082                	ret

0000000000011f08 <__syscall_error>:
   11f08:	1141                	addi	sp,sp,-16
   11f0a:	e022                	sd	s0,0(sp)
   11f0c:	e406                	sd	ra,8(sp)
   11f0e:	842a                	mv	s0,a0
   11f10:	00000097          	auipc	ra,0x0
   11f14:	3ba080e7          	jalr	954(ra) # 122ca <__errno>
   11f18:	408007bb          	negw	a5,s0
   11f1c:	60a2                	ld	ra,8(sp)
   11f1e:	6402                	ld	s0,0(sp)
   11f20:	c11c                	sw	a5,0(a0)
   11f22:	557d                	li	a0,-1
   11f24:	0141                	addi	sp,sp,16
   11f26:	8082                	ret

0000000000011f28 <__internal_syscall>:
   11f28:	88aa                	mv	a7,a0
   11f2a:	852e                	mv	a0,a1
   11f2c:	85b2                	mv	a1,a2
   11f2e:	8636                	mv	a2,a3
   11f30:	86ba                	mv	a3,a4
   11f32:	00000073          	ecall
   11f36:	00055663          	bgez	a0,11f42 <__internal_syscall+0x1a>
   11f3a:	00000317          	auipc	t1,0x0
   11f3e:	fce30067          	jr	-50(t1) # 11f08 <__syscall_error>
   11f42:	8082                	ret

0000000000011f44 <open>:
   11f44:	1141                	addi	sp,sp,-16
   11f46:	86b2                	mv	a3,a2
   11f48:	4701                	li	a4,0
   11f4a:	862e                	mv	a2,a1
   11f4c:	85aa                	mv	a1,a0
   11f4e:	40000513          	li	a0,1024
   11f52:	e406                	sd	ra,8(sp)
   11f54:	00000097          	auipc	ra,0x0
   11f58:	fd4080e7          	jalr	-44(ra) # 11f28 <__internal_syscall>
   11f5c:	60a2                	ld	ra,8(sp)
   11f5e:	2501                	sext.w	a0,a0
   11f60:	0141                	addi	sp,sp,16
   11f62:	8082                	ret

0000000000011f64 <openat>:
   11f64:	1141                	addi	sp,sp,-16
   11f66:	8736                	mv	a4,a3
   11f68:	86b2                	mv	a3,a2
   11f6a:	862e                	mv	a2,a1
   11f6c:	85aa                	mv	a1,a0
   11f6e:	03800513          	li	a0,56
   11f72:	e406                	sd	ra,8(sp)
   11f74:	fb5ff0ef          	jal	ra,11f28 <__internal_syscall>
   11f78:	60a2                	ld	ra,8(sp)
   11f7a:	2501                	sext.w	a0,a0
   11f7c:	0141                	addi	sp,sp,16
   11f7e:	8082                	ret

0000000000011f80 <lseek>:
   11f80:	86b2                	mv	a3,a2
   11f82:	4701                	li	a4,0
   11f84:	862e                	mv	a2,a1
   11f86:	85aa                	mv	a1,a0
   11f88:	03e00513          	li	a0,62
   11f8c:	00000317          	auipc	t1,0x0
   11f90:	f9c30067          	jr	-100(t1) # 11f28 <__internal_syscall>

0000000000011f94 <read>:
   11f94:	86b2                	mv	a3,a2
   11f96:	4701                	li	a4,0
   11f98:	862e                	mv	a2,a1
   11f9a:	85aa                	mv	a1,a0
   11f9c:	03f00513          	li	a0,63
   11fa0:	f89ff06f          	j	11f28 <__internal_syscall>

0000000000011fa4 <write>:
   11fa4:	86b2                	mv	a3,a2
   11fa6:	4701                	li	a4,0
   11fa8:	862e                	mv	a2,a1
   11faa:	85aa                	mv	a1,a0
   11fac:	04000513          	li	a0,64
   11fb0:	00000317          	auipc	t1,0x0
   11fb4:	f7830067          	jr	-136(t1) # 11f28 <__internal_syscall>

0000000000011fb8 <fstat>:
   11fb8:	7135                	addi	sp,sp,-160
   11fba:	e526                	sd	s1,136(sp)
   11fbc:	860a                	mv	a2,sp
   11fbe:	84ae                	mv	s1,a1
   11fc0:	4701                	li	a4,0
   11fc2:	85aa                	mv	a1,a0
   11fc4:	4681                	li	a3,0
   11fc6:	05000513          	li	a0,80
   11fca:	ed06                	sd	ra,152(sp)
   11fcc:	e922                	sd	s0,144(sp)
   11fce:	f5bff0ef          	jal	ra,11f28 <__internal_syscall>
   11fd2:	842a                	mv	s0,a0
   11fd4:	858a                	mv	a1,sp
   11fd6:	8526                	mv	a0,s1
   11fd8:	eefff0ef          	jal	ra,11ec6 <conv_stat>
   11fdc:	0004051b          	sext.w	a0,s0
   11fe0:	60ea                	ld	ra,152(sp)
   11fe2:	644a                	ld	s0,144(sp)
   11fe4:	64aa                	ld	s1,136(sp)
   11fe6:	610d                	addi	sp,sp,160
   11fe8:	8082                	ret

0000000000011fea <stat>:
   11fea:	7135                	addi	sp,sp,-160
   11fec:	e526                	sd	s1,136(sp)
   11fee:	860a                	mv	a2,sp
   11ff0:	84ae                	mv	s1,a1
   11ff2:	4701                	li	a4,0
   11ff4:	85aa                	mv	a1,a0
   11ff6:	4681                	li	a3,0
   11ff8:	40e00513          	li	a0,1038
   11ffc:	ed06                	sd	ra,152(sp)
   11ffe:	e922                	sd	s0,144(sp)
   12000:	00000097          	auipc	ra,0x0
   12004:	f28080e7          	jalr	-216(ra) # 11f28 <__internal_syscall>
   12008:	842a                	mv	s0,a0
   1200a:	858a                	mv	a1,sp
   1200c:	8526                	mv	a0,s1
   1200e:	00000097          	auipc	ra,0x0
   12012:	eb8080e7          	jalr	-328(ra) # 11ec6 <conv_stat>
   12016:	0004051b          	sext.w	a0,s0
   1201a:	60ea                	ld	ra,152(sp)
   1201c:	644a                	ld	s0,144(sp)
   1201e:	64aa                	ld	s1,136(sp)
   12020:	610d                	addi	sp,sp,160
   12022:	8082                	ret

0000000000012024 <lstat>:
   12024:	7135                	addi	sp,sp,-160
   12026:	e526                	sd	s1,136(sp)
   12028:	860a                	mv	a2,sp
   1202a:	84ae                	mv	s1,a1
   1202c:	4701                	li	a4,0
   1202e:	85aa                	mv	a1,a0
   12030:	4681                	li	a3,0
   12032:	40f00513          	li	a0,1039
   12036:	ed06                	sd	ra,152(sp)
   12038:	e922                	sd	s0,144(sp)
   1203a:	eefff0ef          	jal	ra,11f28 <__internal_syscall>
   1203e:	842a                	mv	s0,a0
   12040:	858a                	mv	a1,sp
   12042:	8526                	mv	a0,s1
   12044:	e83ff0ef          	jal	ra,11ec6 <conv_stat>
   12048:	0004051b          	sext.w	a0,s0
   1204c:	60ea                	ld	ra,152(sp)
   1204e:	644a                	ld	s0,144(sp)
   12050:	64aa                	ld	s1,136(sp)
   12052:	610d                	addi	sp,sp,160
   12054:	8082                	ret

0000000000012056 <fstatat>:
   12056:	7135                	addi	sp,sp,-160
   12058:	e526                	sd	s1,136(sp)
   1205a:	8736                	mv	a4,a3
   1205c:	84b2                	mv	s1,a2
   1205e:	868a                	mv	a3,sp
   12060:	862e                	mv	a2,a1
   12062:	85aa                	mv	a1,a0
   12064:	04f00513          	li	a0,79
   12068:	ed06                	sd	ra,152(sp)
   1206a:	e922                	sd	s0,144(sp)
   1206c:	00000097          	auipc	ra,0x0
   12070:	ebc080e7          	jalr	-324(ra) # 11f28 <__internal_syscall>
   12074:	842a                	mv	s0,a0
   12076:	858a                	mv	a1,sp
   12078:	8526                	mv	a0,s1
   1207a:	00000097          	auipc	ra,0x0
   1207e:	e4c080e7          	jalr	-436(ra) # 11ec6 <conv_stat>
   12082:	0004051b          	sext.w	a0,s0
   12086:	60ea                	ld	ra,152(sp)
   12088:	644a                	ld	s0,144(sp)
   1208a:	64aa                	ld	s1,136(sp)
   1208c:	610d                	addi	sp,sp,160
   1208e:	8082                	ret

0000000000012090 <access>:
   12090:	1141                	addi	sp,sp,-16
   12092:	862e                	mv	a2,a1
   12094:	4701                	li	a4,0
   12096:	85aa                	mv	a1,a0
   12098:	4681                	li	a3,0
   1209a:	40900513          	li	a0,1033
   1209e:	e406                	sd	ra,8(sp)
   120a0:	e89ff0ef          	jal	ra,11f28 <__internal_syscall>
   120a4:	60a2                	ld	ra,8(sp)
   120a6:	2501                	sext.w	a0,a0
   120a8:	0141                	addi	sp,sp,16
   120aa:	8082                	ret

00000000000120ac <faccessat>:
   120ac:	1141                	addi	sp,sp,-16
   120ae:	8736                	mv	a4,a3
   120b0:	86b2                	mv	a3,a2
   120b2:	862e                	mv	a2,a1
   120b4:	85aa                	mv	a1,a0
   120b6:	03000513          	li	a0,48
   120ba:	e406                	sd	ra,8(sp)
   120bc:	00000097          	auipc	ra,0x0
   120c0:	e6c080e7          	jalr	-404(ra) # 11f28 <__internal_syscall>
   120c4:	60a2                	ld	ra,8(sp)
   120c6:	2501                	sext.w	a0,a0
   120c8:	0141                	addi	sp,sp,16
   120ca:	8082                	ret

00000000000120cc <close>:
   120cc:	1141                	addi	sp,sp,-16
   120ce:	85aa                	mv	a1,a0
   120d0:	4701                	li	a4,0
   120d2:	4681                	li	a3,0
   120d4:	4601                	li	a2,0
   120d6:	03900513          	li	a0,57
   120da:	e406                	sd	ra,8(sp)
   120dc:	e4dff0ef          	jal	ra,11f28 <__internal_syscall>
   120e0:	60a2                	ld	ra,8(sp)
   120e2:	2501                	sext.w	a0,a0
   120e4:	0141                	addi	sp,sp,16
   120e6:	8082                	ret

00000000000120e8 <link>:
   120e8:	1141                	addi	sp,sp,-16
   120ea:	862e                	mv	a2,a1
   120ec:	4701                	li	a4,0
   120ee:	85aa                	mv	a1,a0
   120f0:	4681                	li	a3,0
   120f2:	40100513          	li	a0,1025
   120f6:	e406                	sd	ra,8(sp)
   120f8:	00000097          	auipc	ra,0x0
   120fc:	e30080e7          	jalr	-464(ra) # 11f28 <__internal_syscall>
   12100:	60a2                	ld	ra,8(sp)
   12102:	2501                	sext.w	a0,a0
   12104:	0141                	addi	sp,sp,16
   12106:	8082                	ret

0000000000012108 <unlink>:
   12108:	1141                	addi	sp,sp,-16
   1210a:	85aa                	mv	a1,a0
   1210c:	4701                	li	a4,0
   1210e:	4681                	li	a3,0
   12110:	4601                	li	a2,0
   12112:	40200513          	li	a0,1026
   12116:	e406                	sd	ra,8(sp)
   12118:	e11ff0ef          	jal	ra,11f28 <__internal_syscall>
   1211c:	60a2                	ld	ra,8(sp)
   1211e:	2501                	sext.w	a0,a0
   12120:	0141                	addi	sp,sp,16
   12122:	8082                	ret

0000000000012124 <execve>:
   12124:	1141                	addi	sp,sp,-16
   12126:	e406                	sd	ra,8(sp)
   12128:	00000097          	auipc	ra,0x0
   1212c:	1a2080e7          	jalr	418(ra) # 122ca <__errno>
   12130:	60a2                	ld	ra,8(sp)
   12132:	47b1                	li	a5,12
   12134:	c11c                	sw	a5,0(a0)
   12136:	557d                	li	a0,-1
   12138:	0141                	addi	sp,sp,16
   1213a:	8082                	ret

000000000001213c <fork>:
   1213c:	1141                	addi	sp,sp,-16
   1213e:	e406                	sd	ra,8(sp)
   12140:	18a000ef          	jal	ra,122ca <__errno>
   12144:	60a2                	ld	ra,8(sp)
   12146:	47ad                	li	a5,11
   12148:	c11c                	sw	a5,0(a0)
   1214a:	557d                	li	a0,-1
   1214c:	0141                	addi	sp,sp,16
   1214e:	8082                	ret

0000000000012150 <getpid>:
   12150:	4505                	li	a0,1
   12152:	8082                	ret

0000000000012154 <kill>:
   12154:	1141                	addi	sp,sp,-16
   12156:	e406                	sd	ra,8(sp)
   12158:	172000ef          	jal	ra,122ca <__errno>
   1215c:	60a2                	ld	ra,8(sp)
   1215e:	47d9                	li	a5,22
   12160:	c11c                	sw	a5,0(a0)
   12162:	557d                	li	a0,-1
   12164:	0141                	addi	sp,sp,16
   12166:	8082                	ret

0000000000012168 <wait>:
   12168:	1141                	addi	sp,sp,-16
   1216a:	e406                	sd	ra,8(sp)
   1216c:	00000097          	auipc	ra,0x0
   12170:	15e080e7          	jalr	350(ra) # 122ca <__errno>
   12174:	60a2                	ld	ra,8(sp)
   12176:	47a9                	li	a5,10
   12178:	c11c                	sw	a5,0(a0)
   1217a:	557d                	li	a0,-1
   1217c:	0141                	addi	sp,sp,16
   1217e:	8082                	ret

0000000000012180 <isatty>:
   12180:	7119                	addi	sp,sp,-128
   12182:	002c                	addi	a1,sp,8
   12184:	fc86                	sd	ra,120(sp)
   12186:	e33ff0ef          	jal	ra,11fb8 <fstat>
   1218a:	57fd                	li	a5,-1
   1218c:	00f50663          	beq	a0,a5,12198 <isatty+0x18>
   12190:	4532                	lw	a0,12(sp)
   12192:	40d5551b          	sraiw	a0,a0,0xd
   12196:	8905                	andi	a0,a0,1
   12198:	70e6                	ld	ra,120(sp)
   1219a:	6109                	addi	sp,sp,128
   1219c:	8082                	ret

000000000001219e <gettimeofday>:
   1219e:	1141                	addi	sp,sp,-16
   121a0:	85aa                	mv	a1,a0
   121a2:	4701                	li	a4,0
   121a4:	4681                	li	a3,0
   121a6:	4601                	li	a2,0
   121a8:	0a900513          	li	a0,169
   121ac:	e406                	sd	ra,8(sp)
   121ae:	00000097          	auipc	ra,0x0
   121b2:	d7a080e7          	jalr	-646(ra) # 11f28 <__internal_syscall>
   121b6:	60a2                	ld	ra,8(sp)
   121b8:	2501                	sext.w	a0,a0
   121ba:	0141                	addi	sp,sp,16
   121bc:	8082                	ret

00000000000121be <times>:
   121be:	7179                	addi	sp,sp,-48
   121c0:	f022                	sd	s0,32(sp)
   121c2:	842a                	mv	s0,a0
   121c4:	8a81b783          	ld	a5,-1880(gp) # 14340 <t0.2574>
   121c8:	ec26                	sd	s1,24(sp)
   121ca:	f406                	sd	ra,40(sp)
   121cc:	8a818493          	addi	s1,gp,-1880 # 14340 <t0.2574>
   121d0:	eb81                	bnez	a5,121e0 <times+0x22>
   121d2:	4581                	li	a1,0
   121d4:	8a818513          	addi	a0,gp,-1880 # 14340 <t0.2574>
   121d8:	00000097          	auipc	ra,0x0
   121dc:	fc6080e7          	jalr	-58(ra) # 1219e <gettimeofday>
   121e0:	850a                	mv	a0,sp
   121e2:	4581                	li	a1,0
   121e4:	00000097          	auipc	ra,0x0
   121e8:	fba080e7          	jalr	-70(ra) # 1219e <gettimeofday>
   121ec:	6098                	ld	a4,0(s1)
   121ee:	6782                	ld	a5,0(sp)
   121f0:	6494                	ld	a3,8(s1)
   121f2:	00043823          	sd	zero,16(s0)
   121f6:	8f99                	sub	a5,a5,a4
   121f8:	000f4737          	lui	a4,0xf4
   121fc:	24070713          	addi	a4,a4,576 # f4240 <__global_pointer$+0xdf7a8>
   12200:	02e787b3          	mul	a5,a5,a4
   12204:	6722                	ld	a4,8(sp)
   12206:	00043c23          	sd	zero,24(s0)
   1220a:	00043423          	sd	zero,8(s0)
   1220e:	8f15                	sub	a4,a4,a3
   12210:	70a2                	ld	ra,40(sp)
   12212:	64e2                	ld	s1,24(sp)
   12214:	557d                	li	a0,-1
   12216:	97ba                	add	a5,a5,a4
   12218:	e01c                	sd	a5,0(s0)
   1221a:	7402                	ld	s0,32(sp)
   1221c:	6145                	addi	sp,sp,48
   1221e:	8082                	ret

0000000000012220 <ftime>:
   12220:	00051423          	sh	zero,8(a0)
   12224:	00053023          	sd	zero,0(a0)
   12228:	4501                	li	a0,0
   1222a:	8082                	ret

000000000001222c <utime>:
   1222c:	557d                	li	a0,-1
   1222e:	8082                	ret

0000000000012230 <chown>:
   12230:	557d                	li	a0,-1
   12232:	8082                	ret

0000000000012234 <chmod>:
   12234:	557d                	li	a0,-1
   12236:	8082                	ret

0000000000012238 <chdir>:
   12238:	557d                	li	a0,-1
   1223a:	8082                	ret

000000000001223c <getcwd>:
   1223c:	4501                	li	a0,0
   1223e:	8082                	ret

0000000000012240 <sysconf>:
   12240:	4789                	li	a5,2
   12242:	00f50463          	beq	a0,a5,1224a <sysconf+0xa>
   12246:	557d                	li	a0,-1
   12248:	8082                	ret
   1224a:	000f4537          	lui	a0,0xf4
   1224e:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xdf7a8>
   12252:	8082                	ret

0000000000012254 <sbrk>:
   12254:	1101                	addi	sp,sp,-32
   12256:	e822                	sd	s0,16(sp)
   12258:	8401b783          	ld	a5,-1984(gp) # 142d8 <heap_end.2611>
   1225c:	e426                	sd	s1,8(sp)
   1225e:	ec06                	sd	ra,24(sp)
   12260:	84aa                	mv	s1,a0
   12262:	e785                	bnez	a5,1228a <sbrk+0x36>
   12264:	4701                	li	a4,0
   12266:	4681                	li	a3,0
   12268:	4601                	li	a2,0
   1226a:	4581                	li	a1,0
   1226c:	0d600513          	li	a0,214
   12270:	cb9ff0ef          	jal	ra,11f28 <__internal_syscall>
   12274:	57fd                	li	a5,-1
   12276:	00f51863          	bne	a0,a5,12286 <sbrk+0x32>
   1227a:	557d                	li	a0,-1
   1227c:	60e2                	ld	ra,24(sp)
   1227e:	6442                	ld	s0,16(sp)
   12280:	64a2                	ld	s1,8(sp)
   12282:	6105                	addi	sp,sp,32
   12284:	8082                	ret
   12286:	84a1b023          	sd	a0,-1984(gp) # 142d8 <heap_end.2611>
   1228a:	8401b583          	ld	a1,-1984(gp) # 142d8 <heap_end.2611>
   1228e:	4701                	li	a4,0
   12290:	4681                	li	a3,0
   12292:	95a6                	add	a1,a1,s1
   12294:	4601                	li	a2,0
   12296:	0d600513          	li	a0,214
   1229a:	c8fff0ef          	jal	ra,11f28 <__internal_syscall>
   1229e:	8401b783          	ld	a5,-1984(gp) # 142d8 <heap_end.2611>
   122a2:	94be                	add	s1,s1,a5
   122a4:	fc951be3          	bne	a0,s1,1227a <sbrk+0x26>
   122a8:	84a1b023          	sd	a0,-1984(gp) # 142d8 <heap_end.2611>
   122ac:	853e                	mv	a0,a5
   122ae:	b7f9                	j	1227c <sbrk+0x28>

00000000000122b0 <_exit>:
   122b0:	1141                	addi	sp,sp,-16
   122b2:	85aa                	mv	a1,a0
   122b4:	4701                	li	a4,0
   122b6:	4681                	li	a3,0
   122b8:	4601                	li	a2,0
   122ba:	05d00513          	li	a0,93
   122be:	e406                	sd	ra,8(sp)
   122c0:	00000097          	auipc	ra,0x0
   122c4:	c68080e7          	jalr	-920(ra) # 11f28 <__internal_syscall>
   122c8:	a001                	j	122c8 <_exit+0x18>

00000000000122ca <__errno>:
   122ca:	8101b503          	ld	a0,-2032(gp) # 142a8 <_impure_ptr>
   122ce:	8082                	ret
	...

Disassembly of section .rodata:

00000000000122d8 <.rodata>:
   122d8:	6548                	ld	a0,136(a0)
   122da:	6c6c                	ld	a1,216(s0)
   122dc:	6f77206f          	j	851d2 <__global_pointer$+0x7073a>
   122e0:	6c72                	ld	s8,280(sp)
   122e2:	2164                	fld	fs1,192(a0)
   122e4:	0000                	unimp
   122e6:	0000                	unimp
   122e8:	000a                	0xa
   122ea:	0000                	unimp
   122ec:	0000                	unimp
	...

Disassembly of section .eh_frame:

00000000000122f0 <__EH_FRAME_BEGIN__>:
   122f0:	0010                	addi	a2,sp,0
   122f2:	0000                	unimp
   122f4:	0000                	unimp
   122f6:	0000                	unimp
   122f8:	7a01                	lui	s4,0xfffe0
   122fa:	0052                	0x52
   122fc:	7c01                	lui	s8,0xfffe0
   122fe:	0101                	addi	sp,sp,0
   12300:	00020d1b          	sext.w	s10,tp
   12304:	0020                	addi	s0,sp,8
   12306:	0000                	unimp
   12308:	0018                	addi	a4,sp,0
   1230a:	0000                	unimp
   1230c:	dea0                	sw	s0,120(a3)
   1230e:	ffff                	0xffff
   12310:	0038                	addi	a4,sp,8
   12312:	0000                	unimp
   12314:	4400                	lw	s0,8(s0)
   12316:	100e                	0x100e
   12318:	8148                	0x8148
   1231a:	8802                	jr	a6
   1231c:	4404                	lw	s1,8(s0)
   1231e:	080c                	addi	a1,sp,16
   12320:	5c00                	lw	s0,56(s0)
   12322:	44c1                	li	s1,16
   12324:	44c8                	lw	a0,12(s1)
   12326:	020d                	addi	tp,tp,3

0000000000012328 <__FRAME_END__>:
   12328:	0000                	unimp
	...

Disassembly of section .init_array:

0000000000013330 <__frame_dummy_init_array_entry>:
   13330:	0182                	slli	gp,gp,0x0
   13332:	0001                	nop
   13334:	0000                	unimp
	...

Disassembly of section .fini_array:

0000000000013338 <__do_global_dtors_aux_fini_array_entry>:
   13338:	0148                	addi	a0,sp,132
   1333a:	0001                	nop
   1333c:	0000                	unimp
	...

Disassembly of section .data:

0000000000013340 <impure_data>:
	...
   13348:	3878                	fld	fa4,240(s0)
   1334a:	0001                	nop
   1334c:	0000                	unimp
   1334e:	0000                	unimp
   13350:	3928                	fld	fa0,112(a0)
   13352:	0001                	nop
   13354:	0000                	unimp
   13356:	0000                	unimp
   13358:	39d8                	fld	fa4,176(a1)
   1335a:	0001                	nop
	...
   13428:	0001                	nop
   1342a:	0000                	unimp
   1342c:	0000                	unimp
   1342e:	0000                	unimp
   13430:	330e                	fld	ft6,224(sp)
   13432:	abcd                	j	13a24 <impure_data+0x6e4>
   13434:	1234                	addi	a3,sp,296
   13436:	e66d                	bnez	a2,13520 <impure_data+0x1e0>
   13438:	deec                	sw	a1,124(a3)
   1343a:	0005                	c.addi	zero,1
   1343c:	0000000b          	0xb
	...

0000000000013a88 <__malloc_av_>:
	...
   13a98:	3a88                	fld	fa0,48(a3)
   13a9a:	0001                	nop
   13a9c:	0000                	unimp
   13a9e:	0000                	unimp
   13aa0:	3a88                	fld	fa0,48(a3)
   13aa2:	0001                	nop
   13aa4:	0000                	unimp
   13aa6:	0000                	unimp
   13aa8:	3a98                	fld	fa4,48(a3)
   13aaa:	0001                	nop
   13aac:	0000                	unimp
   13aae:	0000                	unimp
   13ab0:	3a98                	fld	fa4,48(a3)
   13ab2:	0001                	nop
   13ab4:	0000                	unimp
   13ab6:	0000                	unimp
   13ab8:	3aa8                	fld	fa0,112(a3)
   13aba:	0001                	nop
   13abc:	0000                	unimp
   13abe:	0000                	unimp
   13ac0:	3aa8                	fld	fa0,112(a3)
   13ac2:	0001                	nop
   13ac4:	0000                	unimp
   13ac6:	0000                	unimp
   13ac8:	3ab8                	fld	fa4,112(a3)
   13aca:	0001                	nop
   13acc:	0000                	unimp
   13ace:	0000                	unimp
   13ad0:	3ab8                	fld	fa4,112(a3)
   13ad2:	0001                	nop
   13ad4:	0000                	unimp
   13ad6:	0000                	unimp
   13ad8:	3ac8                	fld	fa0,176(a3)
   13ada:	0001                	nop
   13adc:	0000                	unimp
   13ade:	0000                	unimp
   13ae0:	3ac8                	fld	fa0,176(a3)
   13ae2:	0001                	nop
   13ae4:	0000                	unimp
   13ae6:	0000                	unimp
   13ae8:	3ad8                	fld	fa4,176(a3)
   13aea:	0001                	nop
   13aec:	0000                	unimp
   13aee:	0000                	unimp
   13af0:	3ad8                	fld	fa4,176(a3)
   13af2:	0001                	nop
   13af4:	0000                	unimp
   13af6:	0000                	unimp
   13af8:	3ae8                	fld	fa0,240(a3)
   13afa:	0001                	nop
   13afc:	0000                	unimp
   13afe:	0000                	unimp
   13b00:	3ae8                	fld	fa0,240(a3)
   13b02:	0001                	nop
   13b04:	0000                	unimp
   13b06:	0000                	unimp
   13b08:	3af8                	fld	fa4,240(a3)
   13b0a:	0001                	nop
   13b0c:	0000                	unimp
   13b0e:	0000                	unimp
   13b10:	3af8                	fld	fa4,240(a3)
   13b12:	0001                	nop
   13b14:	0000                	unimp
   13b16:	0000                	unimp
   13b18:	3b08                	fld	fa0,48(a4)
   13b1a:	0001                	nop
   13b1c:	0000                	unimp
   13b1e:	0000                	unimp
   13b20:	3b08                	fld	fa0,48(a4)
   13b22:	0001                	nop
   13b24:	0000                	unimp
   13b26:	0000                	unimp
   13b28:	3b18                	fld	fa4,48(a4)
   13b2a:	0001                	nop
   13b2c:	0000                	unimp
   13b2e:	0000                	unimp
   13b30:	3b18                	fld	fa4,48(a4)
   13b32:	0001                	nop
   13b34:	0000                	unimp
   13b36:	0000                	unimp
   13b38:	3b28                	fld	fa0,112(a4)
   13b3a:	0001                	nop
   13b3c:	0000                	unimp
   13b3e:	0000                	unimp
   13b40:	3b28                	fld	fa0,112(a4)
   13b42:	0001                	nop
   13b44:	0000                	unimp
   13b46:	0000                	unimp
   13b48:	3b38                	fld	fa4,112(a4)
   13b4a:	0001                	nop
   13b4c:	0000                	unimp
   13b4e:	0000                	unimp
   13b50:	3b38                	fld	fa4,112(a4)
   13b52:	0001                	nop
   13b54:	0000                	unimp
   13b56:	0000                	unimp
   13b58:	3b48                	fld	fa0,176(a4)
   13b5a:	0001                	nop
   13b5c:	0000                	unimp
   13b5e:	0000                	unimp
   13b60:	3b48                	fld	fa0,176(a4)
   13b62:	0001                	nop
   13b64:	0000                	unimp
   13b66:	0000                	unimp
   13b68:	3b58                	fld	fa4,176(a4)
   13b6a:	0001                	nop
   13b6c:	0000                	unimp
   13b6e:	0000                	unimp
   13b70:	3b58                	fld	fa4,176(a4)
   13b72:	0001                	nop
   13b74:	0000                	unimp
   13b76:	0000                	unimp
   13b78:	3b68                	fld	fa0,240(a4)
   13b7a:	0001                	nop
   13b7c:	0000                	unimp
   13b7e:	0000                	unimp
   13b80:	3b68                	fld	fa0,240(a4)
   13b82:	0001                	nop
   13b84:	0000                	unimp
   13b86:	0000                	unimp
   13b88:	3b78                	fld	fa4,240(a4)
   13b8a:	0001                	nop
   13b8c:	0000                	unimp
   13b8e:	0000                	unimp
   13b90:	3b78                	fld	fa4,240(a4)
   13b92:	0001                	nop
   13b94:	0000                	unimp
   13b96:	0000                	unimp
   13b98:	3b88                	fld	fa0,48(a5)
   13b9a:	0001                	nop
   13b9c:	0000                	unimp
   13b9e:	0000                	unimp
   13ba0:	3b88                	fld	fa0,48(a5)
   13ba2:	0001                	nop
   13ba4:	0000                	unimp
   13ba6:	0000                	unimp
   13ba8:	3b98                	fld	fa4,48(a5)
   13baa:	0001                	nop
   13bac:	0000                	unimp
   13bae:	0000                	unimp
   13bb0:	3b98                	fld	fa4,48(a5)
   13bb2:	0001                	nop
   13bb4:	0000                	unimp
   13bb6:	0000                	unimp
   13bb8:	3ba8                	fld	fa0,112(a5)
   13bba:	0001                	nop
   13bbc:	0000                	unimp
   13bbe:	0000                	unimp
   13bc0:	3ba8                	fld	fa0,112(a5)
   13bc2:	0001                	nop
   13bc4:	0000                	unimp
   13bc6:	0000                	unimp
   13bc8:	3bb8                	fld	fa4,112(a5)
   13bca:	0001                	nop
   13bcc:	0000                	unimp
   13bce:	0000                	unimp
   13bd0:	3bb8                	fld	fa4,112(a5)
   13bd2:	0001                	nop
   13bd4:	0000                	unimp
   13bd6:	0000                	unimp
   13bd8:	3bc8                	fld	fa0,176(a5)
   13bda:	0001                	nop
   13bdc:	0000                	unimp
   13bde:	0000                	unimp
   13be0:	3bc8                	fld	fa0,176(a5)
   13be2:	0001                	nop
   13be4:	0000                	unimp
   13be6:	0000                	unimp
   13be8:	3bd8                	fld	fa4,176(a5)
   13bea:	0001                	nop
   13bec:	0000                	unimp
   13bee:	0000                	unimp
   13bf0:	3bd8                	fld	fa4,176(a5)
   13bf2:	0001                	nop
   13bf4:	0000                	unimp
   13bf6:	0000                	unimp
   13bf8:	3be8                	fld	fa0,240(a5)
   13bfa:	0001                	nop
   13bfc:	0000                	unimp
   13bfe:	0000                	unimp
   13c00:	3be8                	fld	fa0,240(a5)
   13c02:	0001                	nop
   13c04:	0000                	unimp
   13c06:	0000                	unimp
   13c08:	3bf8                	fld	fa4,240(a5)
   13c0a:	0001                	nop
   13c0c:	0000                	unimp
   13c0e:	0000                	unimp
   13c10:	3bf8                	fld	fa4,240(a5)
   13c12:	0001                	nop
   13c14:	0000                	unimp
   13c16:	0000                	unimp
   13c18:	3c08                	fld	fa0,56(s0)
   13c1a:	0001                	nop
   13c1c:	0000                	unimp
   13c1e:	0000                	unimp
   13c20:	3c08                	fld	fa0,56(s0)
   13c22:	0001                	nop
   13c24:	0000                	unimp
   13c26:	0000                	unimp
   13c28:	3c18                	fld	fa4,56(s0)
   13c2a:	0001                	nop
   13c2c:	0000                	unimp
   13c2e:	0000                	unimp
   13c30:	3c18                	fld	fa4,56(s0)
   13c32:	0001                	nop
   13c34:	0000                	unimp
   13c36:	0000                	unimp
   13c38:	3c28                	fld	fa0,120(s0)
   13c3a:	0001                	nop
   13c3c:	0000                	unimp
   13c3e:	0000                	unimp
   13c40:	3c28                	fld	fa0,120(s0)
   13c42:	0001                	nop
   13c44:	0000                	unimp
   13c46:	0000                	unimp
   13c48:	3c38                	fld	fa4,120(s0)
   13c4a:	0001                	nop
   13c4c:	0000                	unimp
   13c4e:	0000                	unimp
   13c50:	3c38                	fld	fa4,120(s0)
   13c52:	0001                	nop
   13c54:	0000                	unimp
   13c56:	0000                	unimp
   13c58:	3c48                	fld	fa0,184(s0)
   13c5a:	0001                	nop
   13c5c:	0000                	unimp
   13c5e:	0000                	unimp
   13c60:	3c48                	fld	fa0,184(s0)
   13c62:	0001                	nop
   13c64:	0000                	unimp
   13c66:	0000                	unimp
   13c68:	3c58                	fld	fa4,184(s0)
   13c6a:	0001                	nop
   13c6c:	0000                	unimp
   13c6e:	0000                	unimp
   13c70:	3c58                	fld	fa4,184(s0)
   13c72:	0001                	nop
   13c74:	0000                	unimp
   13c76:	0000                	unimp
   13c78:	3c68                	fld	fa0,248(s0)
   13c7a:	0001                	nop
   13c7c:	0000                	unimp
   13c7e:	0000                	unimp
   13c80:	3c68                	fld	fa0,248(s0)
   13c82:	0001                	nop
   13c84:	0000                	unimp
   13c86:	0000                	unimp
   13c88:	3c78                	fld	fa4,248(s0)
   13c8a:	0001                	nop
   13c8c:	0000                	unimp
   13c8e:	0000                	unimp
   13c90:	3c78                	fld	fa4,248(s0)
   13c92:	0001                	nop
   13c94:	0000                	unimp
   13c96:	0000                	unimp
   13c98:	3c88                	fld	fa0,56(s1)
   13c9a:	0001                	nop
   13c9c:	0000                	unimp
   13c9e:	0000                	unimp
   13ca0:	3c88                	fld	fa0,56(s1)
   13ca2:	0001                	nop
   13ca4:	0000                	unimp
   13ca6:	0000                	unimp
   13ca8:	3c98                	fld	fa4,56(s1)
   13caa:	0001                	nop
   13cac:	0000                	unimp
   13cae:	0000                	unimp
   13cb0:	3c98                	fld	fa4,56(s1)
   13cb2:	0001                	nop
   13cb4:	0000                	unimp
   13cb6:	0000                	unimp
   13cb8:	3ca8                	fld	fa0,120(s1)
   13cba:	0001                	nop
   13cbc:	0000                	unimp
   13cbe:	0000                	unimp
   13cc0:	3ca8                	fld	fa0,120(s1)
   13cc2:	0001                	nop
   13cc4:	0000                	unimp
   13cc6:	0000                	unimp
   13cc8:	3cb8                	fld	fa4,120(s1)
   13cca:	0001                	nop
   13ccc:	0000                	unimp
   13cce:	0000                	unimp
   13cd0:	3cb8                	fld	fa4,120(s1)
   13cd2:	0001                	nop
   13cd4:	0000                	unimp
   13cd6:	0000                	unimp
   13cd8:	3cc8                	fld	fa0,184(s1)
   13cda:	0001                	nop
   13cdc:	0000                	unimp
   13cde:	0000                	unimp
   13ce0:	3cc8                	fld	fa0,184(s1)
   13ce2:	0001                	nop
   13ce4:	0000                	unimp
   13ce6:	0000                	unimp
   13ce8:	3cd8                	fld	fa4,184(s1)
   13cea:	0001                	nop
   13cec:	0000                	unimp
   13cee:	0000                	unimp
   13cf0:	3cd8                	fld	fa4,184(s1)
   13cf2:	0001                	nop
   13cf4:	0000                	unimp
   13cf6:	0000                	unimp
   13cf8:	3ce8                	fld	fa0,248(s1)
   13cfa:	0001                	nop
   13cfc:	0000                	unimp
   13cfe:	0000                	unimp
   13d00:	3ce8                	fld	fa0,248(s1)
   13d02:	0001                	nop
   13d04:	0000                	unimp
   13d06:	0000                	unimp
   13d08:	3cf8                	fld	fa4,248(s1)
   13d0a:	0001                	nop
   13d0c:	0000                	unimp
   13d0e:	0000                	unimp
   13d10:	3cf8                	fld	fa4,248(s1)
   13d12:	0001                	nop
   13d14:	0000                	unimp
   13d16:	0000                	unimp
   13d18:	3d08                	fld	fa0,56(a0)
   13d1a:	0001                	nop
   13d1c:	0000                	unimp
   13d1e:	0000                	unimp
   13d20:	3d08                	fld	fa0,56(a0)
   13d22:	0001                	nop
   13d24:	0000                	unimp
   13d26:	0000                	unimp
   13d28:	3d18                	fld	fa4,56(a0)
   13d2a:	0001                	nop
   13d2c:	0000                	unimp
   13d2e:	0000                	unimp
   13d30:	3d18                	fld	fa4,56(a0)
   13d32:	0001                	nop
   13d34:	0000                	unimp
   13d36:	0000                	unimp
   13d38:	3d28                	fld	fa0,120(a0)
   13d3a:	0001                	nop
   13d3c:	0000                	unimp
   13d3e:	0000                	unimp
   13d40:	3d28                	fld	fa0,120(a0)
   13d42:	0001                	nop
   13d44:	0000                	unimp
   13d46:	0000                	unimp
   13d48:	3d38                	fld	fa4,120(a0)
   13d4a:	0001                	nop
   13d4c:	0000                	unimp
   13d4e:	0000                	unimp
   13d50:	3d38                	fld	fa4,120(a0)
   13d52:	0001                	nop
   13d54:	0000                	unimp
   13d56:	0000                	unimp
   13d58:	3d48                	fld	fa0,184(a0)
   13d5a:	0001                	nop
   13d5c:	0000                	unimp
   13d5e:	0000                	unimp
   13d60:	3d48                	fld	fa0,184(a0)
   13d62:	0001                	nop
   13d64:	0000                	unimp
   13d66:	0000                	unimp
   13d68:	3d58                	fld	fa4,184(a0)
   13d6a:	0001                	nop
   13d6c:	0000                	unimp
   13d6e:	0000                	unimp
   13d70:	3d58                	fld	fa4,184(a0)
   13d72:	0001                	nop
   13d74:	0000                	unimp
   13d76:	0000                	unimp
   13d78:	3d68                	fld	fa0,248(a0)
   13d7a:	0001                	nop
   13d7c:	0000                	unimp
   13d7e:	0000                	unimp
   13d80:	3d68                	fld	fa0,248(a0)
   13d82:	0001                	nop
   13d84:	0000                	unimp
   13d86:	0000                	unimp
   13d88:	3d78                	fld	fa4,248(a0)
   13d8a:	0001                	nop
   13d8c:	0000                	unimp
   13d8e:	0000                	unimp
   13d90:	3d78                	fld	fa4,248(a0)
   13d92:	0001                	nop
   13d94:	0000                	unimp
   13d96:	0000                	unimp
   13d98:	3d88                	fld	fa0,56(a1)
   13d9a:	0001                	nop
   13d9c:	0000                	unimp
   13d9e:	0000                	unimp
   13da0:	3d88                	fld	fa0,56(a1)
   13da2:	0001                	nop
   13da4:	0000                	unimp
   13da6:	0000                	unimp
   13da8:	3d98                	fld	fa4,56(a1)
   13daa:	0001                	nop
   13dac:	0000                	unimp
   13dae:	0000                	unimp
   13db0:	3d98                	fld	fa4,56(a1)
   13db2:	0001                	nop
   13db4:	0000                	unimp
   13db6:	0000                	unimp
   13db8:	3da8                	fld	fa0,120(a1)
   13dba:	0001                	nop
   13dbc:	0000                	unimp
   13dbe:	0000                	unimp
   13dc0:	3da8                	fld	fa0,120(a1)
   13dc2:	0001                	nop
   13dc4:	0000                	unimp
   13dc6:	0000                	unimp
   13dc8:	3db8                	fld	fa4,120(a1)
   13dca:	0001                	nop
   13dcc:	0000                	unimp
   13dce:	0000                	unimp
   13dd0:	3db8                	fld	fa4,120(a1)
   13dd2:	0001                	nop
   13dd4:	0000                	unimp
   13dd6:	0000                	unimp
   13dd8:	3dc8                	fld	fa0,184(a1)
   13dda:	0001                	nop
   13ddc:	0000                	unimp
   13dde:	0000                	unimp
   13de0:	3dc8                	fld	fa0,184(a1)
   13de2:	0001                	nop
   13de4:	0000                	unimp
   13de6:	0000                	unimp
   13de8:	3dd8                	fld	fa4,184(a1)
   13dea:	0001                	nop
   13dec:	0000                	unimp
   13dee:	0000                	unimp
   13df0:	3dd8                	fld	fa4,184(a1)
   13df2:	0001                	nop
   13df4:	0000                	unimp
   13df6:	0000                	unimp
   13df8:	3de8                	fld	fa0,248(a1)
   13dfa:	0001                	nop
   13dfc:	0000                	unimp
   13dfe:	0000                	unimp
   13e00:	3de8                	fld	fa0,248(a1)
   13e02:	0001                	nop
   13e04:	0000                	unimp
   13e06:	0000                	unimp
   13e08:	3df8                	fld	fa4,248(a1)
   13e0a:	0001                	nop
   13e0c:	0000                	unimp
   13e0e:	0000                	unimp
   13e10:	3df8                	fld	fa4,248(a1)
   13e12:	0001                	nop
   13e14:	0000                	unimp
   13e16:	0000                	unimp
   13e18:	3e08                	fld	fa0,56(a2)
   13e1a:	0001                	nop
   13e1c:	0000                	unimp
   13e1e:	0000                	unimp
   13e20:	3e08                	fld	fa0,56(a2)
   13e22:	0001                	nop
   13e24:	0000                	unimp
   13e26:	0000                	unimp
   13e28:	3e18                	fld	fa4,56(a2)
   13e2a:	0001                	nop
   13e2c:	0000                	unimp
   13e2e:	0000                	unimp
   13e30:	3e18                	fld	fa4,56(a2)
   13e32:	0001                	nop
   13e34:	0000                	unimp
   13e36:	0000                	unimp
   13e38:	3e28                	fld	fa0,120(a2)
   13e3a:	0001                	nop
   13e3c:	0000                	unimp
   13e3e:	0000                	unimp
   13e40:	3e28                	fld	fa0,120(a2)
   13e42:	0001                	nop
   13e44:	0000                	unimp
   13e46:	0000                	unimp
   13e48:	3e38                	fld	fa4,120(a2)
   13e4a:	0001                	nop
   13e4c:	0000                	unimp
   13e4e:	0000                	unimp
   13e50:	3e38                	fld	fa4,120(a2)
   13e52:	0001                	nop
   13e54:	0000                	unimp
   13e56:	0000                	unimp
   13e58:	3e48                	fld	fa0,184(a2)
   13e5a:	0001                	nop
   13e5c:	0000                	unimp
   13e5e:	0000                	unimp
   13e60:	3e48                	fld	fa0,184(a2)
   13e62:	0001                	nop
   13e64:	0000                	unimp
   13e66:	0000                	unimp
   13e68:	3e58                	fld	fa4,184(a2)
   13e6a:	0001                	nop
   13e6c:	0000                	unimp
   13e6e:	0000                	unimp
   13e70:	3e58                	fld	fa4,184(a2)
   13e72:	0001                	nop
   13e74:	0000                	unimp
   13e76:	0000                	unimp
   13e78:	3e68                	fld	fa0,248(a2)
   13e7a:	0001                	nop
   13e7c:	0000                	unimp
   13e7e:	0000                	unimp
   13e80:	3e68                	fld	fa0,248(a2)
   13e82:	0001                	nop
   13e84:	0000                	unimp
   13e86:	0000                	unimp
   13e88:	3e78                	fld	fa4,248(a2)
   13e8a:	0001                	nop
   13e8c:	0000                	unimp
   13e8e:	0000                	unimp
   13e90:	3e78                	fld	fa4,248(a2)
   13e92:	0001                	nop
   13e94:	0000                	unimp
   13e96:	0000                	unimp
   13e98:	3e88                	fld	fa0,56(a3)
   13e9a:	0001                	nop
   13e9c:	0000                	unimp
   13e9e:	0000                	unimp
   13ea0:	3e88                	fld	fa0,56(a3)
   13ea2:	0001                	nop
   13ea4:	0000                	unimp
   13ea6:	0000                	unimp
   13ea8:	3e98                	fld	fa4,56(a3)
   13eaa:	0001                	nop
   13eac:	0000                	unimp
   13eae:	0000                	unimp
   13eb0:	3e98                	fld	fa4,56(a3)
   13eb2:	0001                	nop
   13eb4:	0000                	unimp
   13eb6:	0000                	unimp
   13eb8:	3ea8                	fld	fa0,120(a3)
   13eba:	0001                	nop
   13ebc:	0000                	unimp
   13ebe:	0000                	unimp
   13ec0:	3ea8                	fld	fa0,120(a3)
   13ec2:	0001                	nop
   13ec4:	0000                	unimp
   13ec6:	0000                	unimp
   13ec8:	3eb8                	fld	fa4,120(a3)
   13eca:	0001                	nop
   13ecc:	0000                	unimp
   13ece:	0000                	unimp
   13ed0:	3eb8                	fld	fa4,120(a3)
   13ed2:	0001                	nop
   13ed4:	0000                	unimp
   13ed6:	0000                	unimp
   13ed8:	3ec8                	fld	fa0,184(a3)
   13eda:	0001                	nop
   13edc:	0000                	unimp
   13ede:	0000                	unimp
   13ee0:	3ec8                	fld	fa0,184(a3)
   13ee2:	0001                	nop
   13ee4:	0000                	unimp
   13ee6:	0000                	unimp
   13ee8:	3ed8                	fld	fa4,184(a3)
   13eea:	0001                	nop
   13eec:	0000                	unimp
   13eee:	0000                	unimp
   13ef0:	3ed8                	fld	fa4,184(a3)
   13ef2:	0001                	nop
   13ef4:	0000                	unimp
   13ef6:	0000                	unimp
   13ef8:	3ee8                	fld	fa0,248(a3)
   13efa:	0001                	nop
   13efc:	0000                	unimp
   13efe:	0000                	unimp
   13f00:	3ee8                	fld	fa0,248(a3)
   13f02:	0001                	nop
   13f04:	0000                	unimp
   13f06:	0000                	unimp
   13f08:	3ef8                	fld	fa4,248(a3)
   13f0a:	0001                	nop
   13f0c:	0000                	unimp
   13f0e:	0000                	unimp
   13f10:	3ef8                	fld	fa4,248(a3)
   13f12:	0001                	nop
   13f14:	0000                	unimp
   13f16:	0000                	unimp
   13f18:	3f08                	fld	fa0,56(a4)
   13f1a:	0001                	nop
   13f1c:	0000                	unimp
   13f1e:	0000                	unimp
   13f20:	3f08                	fld	fa0,56(a4)
   13f22:	0001                	nop
   13f24:	0000                	unimp
   13f26:	0000                	unimp
   13f28:	3f18                	fld	fa4,56(a4)
   13f2a:	0001                	nop
   13f2c:	0000                	unimp
   13f2e:	0000                	unimp
   13f30:	3f18                	fld	fa4,56(a4)
   13f32:	0001                	nop
   13f34:	0000                	unimp
   13f36:	0000                	unimp
   13f38:	3f28                	fld	fa0,120(a4)
   13f3a:	0001                	nop
   13f3c:	0000                	unimp
   13f3e:	0000                	unimp
   13f40:	3f28                	fld	fa0,120(a4)
   13f42:	0001                	nop
   13f44:	0000                	unimp
   13f46:	0000                	unimp
   13f48:	3f38                	fld	fa4,120(a4)
   13f4a:	0001                	nop
   13f4c:	0000                	unimp
   13f4e:	0000                	unimp
   13f50:	3f38                	fld	fa4,120(a4)
   13f52:	0001                	nop
   13f54:	0000                	unimp
   13f56:	0000                	unimp
   13f58:	3f48                	fld	fa0,184(a4)
   13f5a:	0001                	nop
   13f5c:	0000                	unimp
   13f5e:	0000                	unimp
   13f60:	3f48                	fld	fa0,184(a4)
   13f62:	0001                	nop
   13f64:	0000                	unimp
   13f66:	0000                	unimp
   13f68:	3f58                	fld	fa4,184(a4)
   13f6a:	0001                	nop
   13f6c:	0000                	unimp
   13f6e:	0000                	unimp
   13f70:	3f58                	fld	fa4,184(a4)
   13f72:	0001                	nop
   13f74:	0000                	unimp
   13f76:	0000                	unimp
   13f78:	3f68                	fld	fa0,248(a4)
   13f7a:	0001                	nop
   13f7c:	0000                	unimp
   13f7e:	0000                	unimp
   13f80:	3f68                	fld	fa0,248(a4)
   13f82:	0001                	nop
   13f84:	0000                	unimp
   13f86:	0000                	unimp
   13f88:	3f78                	fld	fa4,248(a4)
   13f8a:	0001                	nop
   13f8c:	0000                	unimp
   13f8e:	0000                	unimp
   13f90:	3f78                	fld	fa4,248(a4)
   13f92:	0001                	nop
   13f94:	0000                	unimp
   13f96:	0000                	unimp
   13f98:	3f88                	fld	fa0,56(a5)
   13f9a:	0001                	nop
   13f9c:	0000                	unimp
   13f9e:	0000                	unimp
   13fa0:	3f88                	fld	fa0,56(a5)
   13fa2:	0001                	nop
   13fa4:	0000                	unimp
   13fa6:	0000                	unimp
   13fa8:	3f98                	fld	fa4,56(a5)
   13faa:	0001                	nop
   13fac:	0000                	unimp
   13fae:	0000                	unimp
   13fb0:	3f98                	fld	fa4,56(a5)
   13fb2:	0001                	nop
   13fb4:	0000                	unimp
   13fb6:	0000                	unimp
   13fb8:	3fa8                	fld	fa0,120(a5)
   13fba:	0001                	nop
   13fbc:	0000                	unimp
   13fbe:	0000                	unimp
   13fc0:	3fa8                	fld	fa0,120(a5)
   13fc2:	0001                	nop
   13fc4:	0000                	unimp
   13fc6:	0000                	unimp
   13fc8:	3fb8                	fld	fa4,120(a5)
   13fca:	0001                	nop
   13fcc:	0000                	unimp
   13fce:	0000                	unimp
   13fd0:	3fb8                	fld	fa4,120(a5)
   13fd2:	0001                	nop
   13fd4:	0000                	unimp
   13fd6:	0000                	unimp
   13fd8:	3fc8                	fld	fa0,184(a5)
   13fda:	0001                	nop
   13fdc:	0000                	unimp
   13fde:	0000                	unimp
   13fe0:	3fc8                	fld	fa0,184(a5)
   13fe2:	0001                	nop
   13fe4:	0000                	unimp
   13fe6:	0000                	unimp
   13fe8:	3fd8                	fld	fa4,184(a5)
   13fea:	0001                	nop
   13fec:	0000                	unimp
   13fee:	0000                	unimp
   13ff0:	3fd8                	fld	fa4,184(a5)
   13ff2:	0001                	nop
   13ff4:	0000                	unimp
   13ff6:	0000                	unimp
   13ff8:	3fe8                	fld	fa0,248(a5)
   13ffa:	0001                	nop
   13ffc:	0000                	unimp
   13ffe:	0000                	unimp
   14000:	3fe8                	fld	fa0,248(a5)
   14002:	0001                	nop
   14004:	0000                	unimp
   14006:	0000                	unimp
   14008:	3ff8                	fld	fa4,248(a5)
   1400a:	0001                	nop
   1400c:	0000                	unimp
   1400e:	0000                	unimp
   14010:	3ff8                	fld	fa4,248(a5)
   14012:	0001                	nop
   14014:	0000                	unimp
   14016:	0000                	unimp
   14018:	4008                	lw	a0,0(s0)
   1401a:	0001                	nop
   1401c:	0000                	unimp
   1401e:	0000                	unimp
   14020:	4008                	lw	a0,0(s0)
   14022:	0001                	nop
   14024:	0000                	unimp
   14026:	0000                	unimp
   14028:	4018                	lw	a4,0(s0)
   1402a:	0001                	nop
   1402c:	0000                	unimp
   1402e:	0000                	unimp
   14030:	4018                	lw	a4,0(s0)
   14032:	0001                	nop
   14034:	0000                	unimp
   14036:	0000                	unimp
   14038:	4028                	lw	a0,64(s0)
   1403a:	0001                	nop
   1403c:	0000                	unimp
   1403e:	0000                	unimp
   14040:	4028                	lw	a0,64(s0)
   14042:	0001                	nop
   14044:	0000                	unimp
   14046:	0000                	unimp
   14048:	4038                	lw	a4,64(s0)
   1404a:	0001                	nop
   1404c:	0000                	unimp
   1404e:	0000                	unimp
   14050:	4038                	lw	a4,64(s0)
   14052:	0001                	nop
   14054:	0000                	unimp
   14056:	0000                	unimp
   14058:	4048                	lw	a0,4(s0)
   1405a:	0001                	nop
   1405c:	0000                	unimp
   1405e:	0000                	unimp
   14060:	4048                	lw	a0,4(s0)
   14062:	0001                	nop
   14064:	0000                	unimp
   14066:	0000                	unimp
   14068:	4058                	lw	a4,4(s0)
   1406a:	0001                	nop
   1406c:	0000                	unimp
   1406e:	0000                	unimp
   14070:	4058                	lw	a4,4(s0)
   14072:	0001                	nop
   14074:	0000                	unimp
   14076:	0000                	unimp
   14078:	4068                	lw	a0,68(s0)
   1407a:	0001                	nop
   1407c:	0000                	unimp
   1407e:	0000                	unimp
   14080:	4068                	lw	a0,68(s0)
   14082:	0001                	nop
   14084:	0000                	unimp
   14086:	0000                	unimp
   14088:	4078                	lw	a4,68(s0)
   1408a:	0001                	nop
   1408c:	0000                	unimp
   1408e:	0000                	unimp
   14090:	4078                	lw	a4,68(s0)
   14092:	0001                	nop
   14094:	0000                	unimp
   14096:	0000                	unimp
   14098:	4088                	lw	a0,0(s1)
   1409a:	0001                	nop
   1409c:	0000                	unimp
   1409e:	0000                	unimp
   140a0:	4088                	lw	a0,0(s1)
   140a2:	0001                	nop
   140a4:	0000                	unimp
   140a6:	0000                	unimp
   140a8:	4098                	lw	a4,0(s1)
   140aa:	0001                	nop
   140ac:	0000                	unimp
   140ae:	0000                	unimp
   140b0:	4098                	lw	a4,0(s1)
   140b2:	0001                	nop
   140b4:	0000                	unimp
   140b6:	0000                	unimp
   140b8:	40a8                	lw	a0,64(s1)
   140ba:	0001                	nop
   140bc:	0000                	unimp
   140be:	0000                	unimp
   140c0:	40a8                	lw	a0,64(s1)
   140c2:	0001                	nop
   140c4:	0000                	unimp
   140c6:	0000                	unimp
   140c8:	40b8                	lw	a4,64(s1)
   140ca:	0001                	nop
   140cc:	0000                	unimp
   140ce:	0000                	unimp
   140d0:	40b8                	lw	a4,64(s1)
   140d2:	0001                	nop
   140d4:	0000                	unimp
   140d6:	0000                	unimp
   140d8:	40c8                	lw	a0,4(s1)
   140da:	0001                	nop
   140dc:	0000                	unimp
   140de:	0000                	unimp
   140e0:	40c8                	lw	a0,4(s1)
   140e2:	0001                	nop
   140e4:	0000                	unimp
   140e6:	0000                	unimp
   140e8:	40d8                	lw	a4,4(s1)
   140ea:	0001                	nop
   140ec:	0000                	unimp
   140ee:	0000                	unimp
   140f0:	40d8                	lw	a4,4(s1)
   140f2:	0001                	nop
   140f4:	0000                	unimp
   140f6:	0000                	unimp
   140f8:	40e8                	lw	a0,68(s1)
   140fa:	0001                	nop
   140fc:	0000                	unimp
   140fe:	0000                	unimp
   14100:	40e8                	lw	a0,68(s1)
   14102:	0001                	nop
   14104:	0000                	unimp
   14106:	0000                	unimp
   14108:	40f8                	lw	a4,68(s1)
   1410a:	0001                	nop
   1410c:	0000                	unimp
   1410e:	0000                	unimp
   14110:	40f8                	lw	a4,68(s1)
   14112:	0001                	nop
   14114:	0000                	unimp
   14116:	0000                	unimp
   14118:	4108                	lw	a0,0(a0)
   1411a:	0001                	nop
   1411c:	0000                	unimp
   1411e:	0000                	unimp
   14120:	4108                	lw	a0,0(a0)
   14122:	0001                	nop
   14124:	0000                	unimp
   14126:	0000                	unimp
   14128:	4118                	lw	a4,0(a0)
   1412a:	0001                	nop
   1412c:	0000                	unimp
   1412e:	0000                	unimp
   14130:	4118                	lw	a4,0(a0)
   14132:	0001                	nop
   14134:	0000                	unimp
   14136:	0000                	unimp
   14138:	4128                	lw	a0,64(a0)
   1413a:	0001                	nop
   1413c:	0000                	unimp
   1413e:	0000                	unimp
   14140:	4128                	lw	a0,64(a0)
   14142:	0001                	nop
   14144:	0000                	unimp
   14146:	0000                	unimp
   14148:	4138                	lw	a4,64(a0)
   1414a:	0001                	nop
   1414c:	0000                	unimp
   1414e:	0000                	unimp
   14150:	4138                	lw	a4,64(a0)
   14152:	0001                	nop
   14154:	0000                	unimp
   14156:	0000                	unimp
   14158:	4148                	lw	a0,4(a0)
   1415a:	0001                	nop
   1415c:	0000                	unimp
   1415e:	0000                	unimp
   14160:	4148                	lw	a0,4(a0)
   14162:	0001                	nop
   14164:	0000                	unimp
   14166:	0000                	unimp
   14168:	4158                	lw	a4,4(a0)
   1416a:	0001                	nop
   1416c:	0000                	unimp
   1416e:	0000                	unimp
   14170:	4158                	lw	a4,4(a0)
   14172:	0001                	nop
   14174:	0000                	unimp
   14176:	0000                	unimp
   14178:	4168                	lw	a0,68(a0)
   1417a:	0001                	nop
   1417c:	0000                	unimp
   1417e:	0000                	unimp
   14180:	4168                	lw	a0,68(a0)
   14182:	0001                	nop
   14184:	0000                	unimp
   14186:	0000                	unimp
   14188:	4178                	lw	a4,68(a0)
   1418a:	0001                	nop
   1418c:	0000                	unimp
   1418e:	0000                	unimp
   14190:	4178                	lw	a4,68(a0)
   14192:	0001                	nop
   14194:	0000                	unimp
   14196:	0000                	unimp
   14198:	4188                	lw	a0,0(a1)
   1419a:	0001                	nop
   1419c:	0000                	unimp
   1419e:	0000                	unimp
   141a0:	4188                	lw	a0,0(a1)
   141a2:	0001                	nop
   141a4:	0000                	unimp
   141a6:	0000                	unimp
   141a8:	4198                	lw	a4,0(a1)
   141aa:	0001                	nop
   141ac:	0000                	unimp
   141ae:	0000                	unimp
   141b0:	4198                	lw	a4,0(a1)
   141b2:	0001                	nop
   141b4:	0000                	unimp
   141b6:	0000                	unimp
   141b8:	41a8                	lw	a0,64(a1)
   141ba:	0001                	nop
   141bc:	0000                	unimp
   141be:	0000                	unimp
   141c0:	41a8                	lw	a0,64(a1)
   141c2:	0001                	nop
   141c4:	0000                	unimp
   141c6:	0000                	unimp
   141c8:	41b8                	lw	a4,64(a1)
   141ca:	0001                	nop
   141cc:	0000                	unimp
   141ce:	0000                	unimp
   141d0:	41b8                	lw	a4,64(a1)
   141d2:	0001                	nop
   141d4:	0000                	unimp
   141d6:	0000                	unimp
   141d8:	41c8                	lw	a0,4(a1)
   141da:	0001                	nop
   141dc:	0000                	unimp
   141de:	0000                	unimp
   141e0:	41c8                	lw	a0,4(a1)
   141e2:	0001                	nop
   141e4:	0000                	unimp
   141e6:	0000                	unimp
   141e8:	41d8                	lw	a4,4(a1)
   141ea:	0001                	nop
   141ec:	0000                	unimp
   141ee:	0000                	unimp
   141f0:	41d8                	lw	a4,4(a1)
   141f2:	0001                	nop
   141f4:	0000                	unimp
   141f6:	0000                	unimp
   141f8:	41e8                	lw	a0,68(a1)
   141fa:	0001                	nop
   141fc:	0000                	unimp
   141fe:	0000                	unimp
   14200:	41e8                	lw	a0,68(a1)
   14202:	0001                	nop
   14204:	0000                	unimp
   14206:	0000                	unimp
   14208:	41f8                	lw	a4,68(a1)
   1420a:	0001                	nop
   1420c:	0000                	unimp
   1420e:	0000                	unimp
   14210:	41f8                	lw	a4,68(a1)
   14212:	0001                	nop
   14214:	0000                	unimp
   14216:	0000                	unimp
   14218:	4208                	lw	a0,0(a2)
   1421a:	0001                	nop
   1421c:	0000                	unimp
   1421e:	0000                	unimp
   14220:	4208                	lw	a0,0(a2)
   14222:	0001                	nop
   14224:	0000                	unimp
   14226:	0000                	unimp
   14228:	4218                	lw	a4,0(a2)
   1422a:	0001                	nop
   1422c:	0000                	unimp
   1422e:	0000                	unimp
   14230:	4218                	lw	a4,0(a2)
   14232:	0001                	nop
   14234:	0000                	unimp
   14236:	0000                	unimp
   14238:	4228                	lw	a0,64(a2)
   1423a:	0001                	nop
   1423c:	0000                	unimp
   1423e:	0000                	unimp
   14240:	4228                	lw	a0,64(a2)
   14242:	0001                	nop
   14244:	0000                	unimp
   14246:	0000                	unimp
   14248:	4238                	lw	a4,64(a2)
   1424a:	0001                	nop
   1424c:	0000                	unimp
   1424e:	0000                	unimp
   14250:	4238                	lw	a4,64(a2)
   14252:	0001                	nop
   14254:	0000                	unimp
   14256:	0000                	unimp
   14258:	4248                	lw	a0,4(a2)
   1425a:	0001                	nop
   1425c:	0000                	unimp
   1425e:	0000                	unimp
   14260:	4248                	lw	a0,4(a2)
   14262:	0001                	nop
   14264:	0000                	unimp
   14266:	0000                	unimp
   14268:	4258                	lw	a4,4(a2)
   1426a:	0001                	nop
   1426c:	0000                	unimp
   1426e:	0000                	unimp
   14270:	4258                	lw	a4,4(a2)
   14272:	0001                	nop
   14274:	0000                	unimp
   14276:	0000                	unimp
   14278:	4268                	lw	a0,68(a2)
   1427a:	0001                	nop
   1427c:	0000                	unimp
   1427e:	0000                	unimp
   14280:	4268                	lw	a0,68(a2)
   14282:	0001                	nop
   14284:	0000                	unimp
   14286:	0000                	unimp
   14288:	4278                	lw	a4,68(a2)
   1428a:	0001                	nop
   1428c:	0000                	unimp
   1428e:	0000                	unimp
   14290:	4278                	lw	a4,68(a2)
   14292:	0001                	nop
   14294:	0000                	unimp
	...

Disassembly of section .sdata:

0000000000014298 <__TMC_END__>:
	...

00000000000142a0 <_global_impure_ptr>:
   142a0:	3340                	fld	fs0,160(a4)
   142a2:	0001                	nop
   142a4:	0000                	unimp
	...

00000000000142a8 <_impure_ptr>:
   142a8:	3340                	fld	fs0,160(a4)
   142aa:	0001                	nop
   142ac:	0000                	unimp
	...

00000000000142b0 <__malloc_sbrk_base>:
   142b0:	ffff                	0xffff
   142b2:	ffff                	0xffff
   142b4:	ffff                	0xffff
   142b6:	ffff                	0xffff

00000000000142b8 <__malloc_trim_threshold>:
   142b8:	0000                	unimp
   142ba:	0002                	0x2
   142bc:	0000                	unimp
	...

Disassembly of section .sbss:

00000000000142c0 <__malloc_max_total_mem>:
	...

00000000000142c8 <__malloc_max_sbrked_mem>:
	...

00000000000142d0 <__malloc_top_pad>:
	...

00000000000142d8 <heap_end.2611>:
	...

Disassembly of section .bss:

00000000000142e0 <completed.5184>:
	...

00000000000142e8 <object.5189>:
	...

0000000000014318 <__malloc_current_mallinfo>:
	...

0000000000014340 <t0.2574>:
	...

0000000000014350 <errno>:
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
