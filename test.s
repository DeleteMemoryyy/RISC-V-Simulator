
test:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	ea818193          	addi	gp,gp,-344 # 11f58 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11770 <_edata>
   100bc:	86818613          	addi	a2,gp,-1944 # 117c0 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	1fe000ef          	jal	ra,102c2 <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	14450513          	addi	a0,a0,324 # 1020c <__libc_fini_array>
   100d0:	00000097          	auipc	ra,0x0
   100d4:	108080e7          	jalr	264(ra) # 101d8 <atexit>
   100d8:	00000097          	auipc	ra,0x0
   100dc:	182080e7          	jalr	386(ra) # 1025a <__libc_init_array>
   100e0:	4502                	lw	a0,0(sp)
   100e2:	002c                	addi	a1,sp,8
   100e4:	4601                	li	a2,0
   100e6:	00000097          	auipc	ra,0x0
   100ea:	0c6080e7          	jalr	198(ra) # 101ac <main>
   100ee:	00000317          	auipc	t1,0x0
   100f2:	0f830067          	jr	248(t1) # 101e6 <exit>

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
   10166:	89850513          	addi	a0,a0,-1896 # 10898 <__EH_FRAME_BEGIN__>
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
   10196:	89850513          	addi	a0,a0,-1896 # 10898 <__EH_FRAME_BEGIN__>
   1019a:	e406                	sd	ra,8(sp)
   1019c:	ffff0097          	auipc	ra,0xffff0
   101a0:	e64080e7          	jalr	-412(ra) # 0 <_start-0x100b0>
   101a4:	60a2                	ld	ra,8(sp)
   101a6:	0141                	addi	sp,sp,16
   101a8:	f75ff06f          	j	1011c <register_tm_clones>

00000000000101ac <main>:
   101ac:	1101                	addi	sp,sp,-32
   101ae:	ec22                	sd	s0,24(sp)
   101b0:	1000                	addi	s0,sp,32
   101b2:	4785                	li	a5,1
   101b4:	fef42623          	sw	a5,-20(s0)
   101b8:	4789                	li	a5,2
   101ba:	fef42423          	sw	a5,-24(s0)
   101be:	fec42703          	lw	a4,-20(s0)
   101c2:	fe842783          	lw	a5,-24(s0)
   101c6:	9fb9                	addw	a5,a5,a4
   101c8:	fef42223          	sw	a5,-28(s0)
   101cc:	4781                	li	a5,0
   101ce:	853e                	mv	a0,a5
   101d0:	6462                	ld	s0,24(sp)
   101d2:	6105                	addi	sp,sp,32
   101d4:	8082                	ret
	...

00000000000101d8 <atexit>:
   101d8:	85aa                	mv	a1,a0
   101da:	4681                	li	a3,0
   101dc:	4601                	li	a2,0
   101de:	4501                	li	a0,0
   101e0:	18c0006f          	j	1036c <__register_exitproc>
	...

00000000000101e6 <exit>:
   101e6:	1141                	addi	sp,sp,-16
   101e8:	4581                	li	a1,0
   101ea:	e022                	sd	s0,0(sp)
   101ec:	e406                	sd	ra,8(sp)
   101ee:	842a                	mv	s0,a0
   101f0:	1e4000ef          	jal	ra,103d4 <__call_exitprocs>
   101f4:	67c5                	lui	a5,0x11
   101f6:	7607b503          	ld	a0,1888(a5) # 11760 <_global_impure_ptr>
   101fa:	6d3c                	ld	a5,88(a0)
   101fc:	c391                	beqz	a5,10200 <exit+0x1a>
   101fe:	9782                	jalr	a5
   10200:	8522                	mv	a0,s0
   10202:	00000097          	auipc	ra,0x0
   10206:	66e080e7          	jalr	1646(ra) # 10870 <_exit>
	...

000000000001020c <__libc_fini_array>:
   1020c:	7179                	addi	sp,sp,-48
   1020e:	67c5                	lui	a5,0x11
   10210:	6745                	lui	a4,0x11
   10212:	f022                	sd	s0,32(sp)
   10214:	00870713          	addi	a4,a4,8 # 11008 <__init_array_end>
   10218:	01078413          	addi	s0,a5,16 # 11010 <__fini_array_end>
   1021c:	8c19                	sub	s0,s0,a4
   1021e:	ec26                	sd	s1,24(sp)
   10220:	e84a                	sd	s2,16(sp)
   10222:	e44e                	sd	s3,8(sp)
   10224:	f406                	sd	ra,40(sp)
   10226:	840d                	srai	s0,s0,0x3
   10228:	4481                	li	s1,0
   1022a:	01078913          	addi	s2,a5,16
   1022e:	59e1                	li	s3,-8
   10230:	00941c63          	bne	s0,s1,10248 <__libc_fini_array+0x3c>
   10234:	7402                	ld	s0,32(sp)
   10236:	70a2                	ld	ra,40(sp)
   10238:	64e2                	ld	s1,24(sp)
   1023a:	6942                	ld	s2,16(sp)
   1023c:	69a2                	ld	s3,8(sp)
   1023e:	6145                	addi	sp,sp,48
   10240:	00000317          	auipc	t1,0x0
   10244:	eb630067          	jr	-330(t1) # 100f6 <_fini>
   10248:	033487b3          	mul	a5,s1,s3
   1024c:	0485                	addi	s1,s1,1
   1024e:	97ca                	add	a5,a5,s2
   10250:	ff87b783          	ld	a5,-8(a5)
   10254:	9782                	jalr	a5
   10256:	bfe9                	j	10230 <__libc_fini_array+0x24>
	...

000000000001025a <__libc_init_array>:
   1025a:	1101                	addi	sp,sp,-32
   1025c:	e822                	sd	s0,16(sp)
   1025e:	e426                	sd	s1,8(sp)
   10260:	6445                	lui	s0,0x11
   10262:	64c5                	lui	s1,0x11
   10264:	00048793          	mv	a5,s1
   10268:	00040413          	mv	s0,s0
   1026c:	8c1d                	sub	s0,s0,a5
   1026e:	e04a                	sd	s2,0(sp)
   10270:	ec06                	sd	ra,24(sp)
   10272:	840d                	srai	s0,s0,0x3
   10274:	00048493          	mv	s1,s1
   10278:	4901                	li	s2,0
   1027a:	02891963          	bne	s2,s0,102ac <__libc_init_array+0x52>
   1027e:	64c5                	lui	s1,0x11
   10280:	00000097          	auipc	ra,0x0
   10284:	e76080e7          	jalr	-394(ra) # 100f6 <_fini>
   10288:	6445                	lui	s0,0x11
   1028a:	00048793          	mv	a5,s1
   1028e:	00840413          	addi	s0,s0,8 # 11008 <__init_array_end>
   10292:	8c1d                	sub	s0,s0,a5
   10294:	840d                	srai	s0,s0,0x3
   10296:	00048493          	mv	s1,s1
   1029a:	4901                	li	s2,0
   1029c:	00891d63          	bne	s2,s0,102b6 <__libc_init_array+0x5c>
   102a0:	60e2                	ld	ra,24(sp)
   102a2:	6442                	ld	s0,16(sp)
   102a4:	64a2                	ld	s1,8(sp)
   102a6:	6902                	ld	s2,0(sp)
   102a8:	6105                	addi	sp,sp,32
   102aa:	8082                	ret
   102ac:	609c                	ld	a5,0(s1)
   102ae:	0905                	addi	s2,s2,1
   102b0:	04a1                	addi	s1,s1,8
   102b2:	9782                	jalr	a5
   102b4:	b7d9                	j	1027a <__libc_init_array+0x20>
   102b6:	609c                	ld	a5,0(s1)
   102b8:	0905                	addi	s2,s2,1
   102ba:	04a1                	addi	s1,s1,8
   102bc:	9782                	jalr	a5
   102be:	bff9                	j	1029c <__libc_init_array+0x42>
	...

00000000000102c2 <memset>:
   102c2:	483d                	li	a6,15
   102c4:	872a                	mv	a4,a0
   102c6:	02c87163          	bleu	a2,a6,102e8 <memset+0x26>
   102ca:	00f77793          	andi	a5,a4,15
   102ce:	e3c1                	bnez	a5,1034e <memset+0x8c>
   102d0:	e1bd                	bnez	a1,10336 <memset+0x74>
   102d2:	ff067693          	andi	a3,a2,-16
   102d6:	8a3d                	andi	a2,a2,15
   102d8:	96ba                	add	a3,a3,a4
   102da:	e30c                	sd	a1,0(a4)
   102dc:	e70c                	sd	a1,8(a4)
   102de:	0741                	addi	a4,a4,16
   102e0:	fed76de3          	bltu	a4,a3,102da <memset+0x18>
   102e4:	e211                	bnez	a2,102e8 <memset+0x26>
   102e6:	8082                	ret
   102e8:	40c806b3          	sub	a3,a6,a2
   102ec:	068a                	slli	a3,a3,0x2
   102ee:	00000297          	auipc	t0,0x0
   102f2:	9696                	add	a3,a3,t0
   102f4:	00a68067          	jr	10(a3)
   102f8:	00b70723          	sb	a1,14(a4)
   102fc:	00b706a3          	sb	a1,13(a4)
   10300:	00b70623          	sb	a1,12(a4)
   10304:	00b705a3          	sb	a1,11(a4)
   10308:	00b70523          	sb	a1,10(a4)
   1030c:	00b704a3          	sb	a1,9(a4)
   10310:	00b70423          	sb	a1,8(a4)
   10314:	00b703a3          	sb	a1,7(a4)
   10318:	00b70323          	sb	a1,6(a4)
   1031c:	00b702a3          	sb	a1,5(a4)
   10320:	00b70223          	sb	a1,4(a4)
   10324:	00b701a3          	sb	a1,3(a4)
   10328:	00b70123          	sb	a1,2(a4)
   1032c:	00b700a3          	sb	a1,1(a4)
   10330:	00b70023          	sb	a1,0(a4)
   10334:	8082                	ret
   10336:	0ff5f593          	andi	a1,a1,255
   1033a:	00859693          	slli	a3,a1,0x8
   1033e:	8dd5                	or	a1,a1,a3
   10340:	01059693          	slli	a3,a1,0x10
   10344:	8dd5                	or	a1,a1,a3
   10346:	02059693          	slli	a3,a1,0x20
   1034a:	8dd5                	or	a1,a1,a3
   1034c:	b759                	j	102d2 <memset+0x10>
   1034e:	00279693          	slli	a3,a5,0x2
   10352:	00000297          	auipc	t0,0x0
   10356:	9696                	add	a3,a3,t0
   10358:	8286                	mv	t0,ra
   1035a:	fa2680e7          	jalr	-94(a3)
   1035e:	8096                	mv	ra,t0
   10360:	17c1                	addi	a5,a5,-16
   10362:	8f1d                	sub	a4,a4,a5
   10364:	963e                	add	a2,a2,a5
   10366:	f8c871e3          	bleu	a2,a6,102e8 <memset+0x26>
   1036a:	b79d                	j	102d0 <memset+0xe>

000000000001036c <__register_exitproc>:
   1036c:	67c5                	lui	a5,0x11
   1036e:	7607b703          	ld	a4,1888(a5) # 11760 <_global_impure_ptr>
   10372:	832a                	mv	t1,a0
   10374:	1f873783          	ld	a5,504(a4)
   10378:	e789                	bnez	a5,10382 <__register_exitproc+0x16>
   1037a:	20070793          	addi	a5,a4,512
   1037e:	1ef73c23          	sd	a5,504(a4)
   10382:	4798                	lw	a4,8(a5)
   10384:	487d                	li	a6,31
   10386:	557d                	li	a0,-1
   10388:	04e84463          	blt	a6,a4,103d0 <__register_exitproc+0x64>
   1038c:	02030a63          	beqz	t1,103c0 <__register_exitproc+0x54>
   10390:	00371813          	slli	a6,a4,0x3
   10394:	983e                	add	a6,a6,a5
   10396:	10c83823          	sd	a2,272(a6)
   1039a:	3107a883          	lw	a7,784(a5)
   1039e:	4605                	li	a2,1
   103a0:	00e6163b          	sllw	a2,a2,a4
   103a4:	00c8e8b3          	or	a7,a7,a2
   103a8:	3117a823          	sw	a7,784(a5)
   103ac:	20d83823          	sd	a3,528(a6)
   103b0:	4689                	li	a3,2
   103b2:	00d31763          	bne	t1,a3,103c0 <__register_exitproc+0x54>
   103b6:	3147a683          	lw	a3,788(a5)
   103ba:	8e55                	or	a2,a2,a3
   103bc:	30c7aa23          	sw	a2,788(a5)
   103c0:	0017069b          	addiw	a3,a4,1
   103c4:	0709                	addi	a4,a4,2
   103c6:	070e                	slli	a4,a4,0x3
   103c8:	c794                	sw	a3,8(a5)
   103ca:	97ba                	add	a5,a5,a4
   103cc:	e38c                	sd	a1,0(a5)
   103ce:	4501                	li	a0,0
   103d0:	8082                	ret
	...

00000000000103d4 <__call_exitprocs>:
   103d4:	715d                	addi	sp,sp,-80
   103d6:	67c5                	lui	a5,0x11
   103d8:	f44e                	sd	s3,40(sp)
   103da:	7607b983          	ld	s3,1888(a5) # 11760 <_global_impure_ptr>
   103de:	f052                	sd	s4,32(sp)
   103e0:	ec56                	sd	s5,24(sp)
   103e2:	e85a                	sd	s6,16(sp)
   103e4:	e486                	sd	ra,72(sp)
   103e6:	e0a2                	sd	s0,64(sp)
   103e8:	fc26                	sd	s1,56(sp)
   103ea:	f84a                	sd	s2,48(sp)
   103ec:	e45e                	sd	s7,8(sp)
   103ee:	8aaa                	mv	s5,a0
   103f0:	8a2e                	mv	s4,a1
   103f2:	4b05                	li	s6,1
   103f4:	1f89b403          	ld	s0,504(s3)
   103f8:	c801                	beqz	s0,10408 <__call_exitprocs+0x34>
   103fa:	4404                	lw	s1,8(s0)
   103fc:	34fd                	addiw	s1,s1,-1
   103fe:	00349913          	slli	s2,s1,0x3
   10402:	9922                	add	s2,s2,s0
   10404:	0004dd63          	bgez	s1,1041e <__call_exitprocs+0x4a>
   10408:	60a6                	ld	ra,72(sp)
   1040a:	6406                	ld	s0,64(sp)
   1040c:	74e2                	ld	s1,56(sp)
   1040e:	7942                	ld	s2,48(sp)
   10410:	79a2                	ld	s3,40(sp)
   10412:	7a02                	ld	s4,32(sp)
   10414:	6ae2                	ld	s5,24(sp)
   10416:	6b42                	ld	s6,16(sp)
   10418:	6ba2                	ld	s7,8(sp)
   1041a:	6161                	addi	sp,sp,80
   1041c:	8082                	ret
   1041e:	000a0963          	beqz	s4,10430 <__call_exitprocs+0x5c>
   10422:	21093783          	ld	a5,528(s2)
   10426:	01478563          	beq	a5,s4,10430 <__call_exitprocs+0x5c>
   1042a:	34fd                	addiw	s1,s1,-1
   1042c:	1961                	addi	s2,s2,-8
   1042e:	bfd9                	j	10404 <__call_exitprocs+0x30>
   10430:	441c                	lw	a5,8(s0)
   10432:	01093683          	ld	a3,16(s2)
   10436:	37fd                	addiw	a5,a5,-1
   10438:	02979663          	bne	a5,s1,10464 <__call_exitprocs+0x90>
   1043c:	c404                	sw	s1,8(s0)
   1043e:	d6f5                	beqz	a3,1042a <__call_exitprocs+0x56>
   10440:	31042703          	lw	a4,784(s0)
   10444:	009b163b          	sllw	a2,s6,s1
   10448:	00842b83          	lw	s7,8(s0)
   1044c:	8f71                	and	a4,a4,a2
   1044e:	2701                	sext.w	a4,a4
   10450:	ef09                	bnez	a4,1046a <__call_exitprocs+0x96>
   10452:	9682                	jalr	a3
   10454:	4418                	lw	a4,8(s0)
   10456:	1f89b783          	ld	a5,504(s3)
   1045a:	f9771de3          	bne	a4,s7,103f4 <__call_exitprocs+0x20>
   1045e:	fcf406e3          	beq	s0,a5,1042a <__call_exitprocs+0x56>
   10462:	bf49                	j	103f4 <__call_exitprocs+0x20>
   10464:	00093823          	sd	zero,16(s2)
   10468:	bfd9                	j	1043e <__call_exitprocs+0x6a>
   1046a:	31442783          	lw	a5,788(s0)
   1046e:	11093583          	ld	a1,272(s2)
   10472:	8ff1                	and	a5,a5,a2
   10474:	2781                	sext.w	a5,a5
   10476:	e781                	bnez	a5,1047e <__call_exitprocs+0xaa>
   10478:	8556                	mv	a0,s5
   1047a:	9682                	jalr	a3
   1047c:	bfe1                	j	10454 <__call_exitprocs+0x80>
   1047e:	852e                	mv	a0,a1
   10480:	9682                	jalr	a3
   10482:	bfc9                	j	10454 <__call_exitprocs+0x80>
	...

0000000000010486 <conv_stat>:
   10486:	619c                	ld	a5,0(a1)
   10488:	00f51023          	sh	a5,0(a0)
   1048c:	659c                	ld	a5,8(a1)
   1048e:	00f51123          	sh	a5,2(a0)
   10492:	499c                	lw	a5,16(a1)
   10494:	c15c                	sw	a5,4(a0)
   10496:	49dc                	lw	a5,20(a1)
   10498:	00f51423          	sh	a5,8(a0)
   1049c:	4d9c                	lw	a5,24(a1)
   1049e:	00f51523          	sh	a5,10(a0)
   104a2:	4ddc                	lw	a5,28(a1)
   104a4:	00f51623          	sh	a5,12(a0)
   104a8:	719c                	ld	a5,32(a1)
   104aa:	00f51723          	sh	a5,14(a0)
   104ae:	799c                	ld	a5,48(a1)
   104b0:	e91c                	sd	a5,16(a0)
   104b2:	61bc                	ld	a5,64(a1)
   104b4:	e93c                	sd	a5,80(a0)
   104b6:	5d9c                	lw	a5,56(a1)
   104b8:	e53c                	sd	a5,72(a0)
   104ba:	65bc                	ld	a5,72(a1)
   104bc:	ed1c                	sd	a5,24(a0)
   104be:	6dbc                	ld	a5,88(a1)
   104c0:	f51c                	sd	a5,40(a0)
   104c2:	75bc                	ld	a5,104(a1)
   104c4:	fd1c                	sd	a5,56(a0)
   104c6:	8082                	ret

00000000000104c8 <__syscall_error>:
   104c8:	1141                	addi	sp,sp,-16
   104ca:	e022                	sd	s0,0(sp)
   104cc:	e406                	sd	ra,8(sp)
   104ce:	842a                	mv	s0,a0
   104d0:	00000097          	auipc	ra,0x0
   104d4:	3ba080e7          	jalr	954(ra) # 1088a <__errno>
   104d8:	408007bb          	negw	a5,s0
   104dc:	60a2                	ld	ra,8(sp)
   104de:	6402                	ld	s0,0(sp)
   104e0:	c11c                	sw	a5,0(a0)
   104e2:	557d                	li	a0,-1
   104e4:	0141                	addi	sp,sp,16
   104e6:	8082                	ret

00000000000104e8 <__internal_syscall>:
   104e8:	88aa                	mv	a7,a0
   104ea:	852e                	mv	a0,a1
   104ec:	85b2                	mv	a1,a2
   104ee:	8636                	mv	a2,a3
   104f0:	86ba                	mv	a3,a4
   104f2:	00000073          	ecall
   104f6:	00055663          	bgez	a0,10502 <__internal_syscall+0x1a>
   104fa:	00000317          	auipc	t1,0x0
   104fe:	fce30067          	jr	-50(t1) # 104c8 <__syscall_error>
   10502:	8082                	ret

0000000000010504 <open>:
   10504:	1141                	addi	sp,sp,-16
   10506:	86b2                	mv	a3,a2
   10508:	4701                	li	a4,0
   1050a:	862e                	mv	a2,a1
   1050c:	85aa                	mv	a1,a0
   1050e:	40000513          	li	a0,1024
   10512:	e406                	sd	ra,8(sp)
   10514:	00000097          	auipc	ra,0x0
   10518:	fd4080e7          	jalr	-44(ra) # 104e8 <__internal_syscall>
   1051c:	60a2                	ld	ra,8(sp)
   1051e:	2501                	sext.w	a0,a0
   10520:	0141                	addi	sp,sp,16
   10522:	8082                	ret

0000000000010524 <openat>:
   10524:	1141                	addi	sp,sp,-16
   10526:	8736                	mv	a4,a3
   10528:	86b2                	mv	a3,a2
   1052a:	862e                	mv	a2,a1
   1052c:	85aa                	mv	a1,a0
   1052e:	03800513          	li	a0,56
   10532:	e406                	sd	ra,8(sp)
   10534:	fb5ff0ef          	jal	ra,104e8 <__internal_syscall>
   10538:	60a2                	ld	ra,8(sp)
   1053a:	2501                	sext.w	a0,a0
   1053c:	0141                	addi	sp,sp,16
   1053e:	8082                	ret

0000000000010540 <lseek>:
   10540:	86b2                	mv	a3,a2
   10542:	4701                	li	a4,0
   10544:	862e                	mv	a2,a1
   10546:	85aa                	mv	a1,a0
   10548:	03e00513          	li	a0,62
   1054c:	00000317          	auipc	t1,0x0
   10550:	f9c30067          	jr	-100(t1) # 104e8 <__internal_syscall>

0000000000010554 <read>:
   10554:	86b2                	mv	a3,a2
   10556:	4701                	li	a4,0
   10558:	862e                	mv	a2,a1
   1055a:	85aa                	mv	a1,a0
   1055c:	03f00513          	li	a0,63
   10560:	f89ff06f          	j	104e8 <__internal_syscall>

0000000000010564 <write>:
   10564:	86b2                	mv	a3,a2
   10566:	4701                	li	a4,0
   10568:	862e                	mv	a2,a1
   1056a:	85aa                	mv	a1,a0
   1056c:	04000513          	li	a0,64
   10570:	00000317          	auipc	t1,0x0
   10574:	f7830067          	jr	-136(t1) # 104e8 <__internal_syscall>

0000000000010578 <fstat>:
   10578:	7135                	addi	sp,sp,-160
   1057a:	e526                	sd	s1,136(sp)
   1057c:	860a                	mv	a2,sp
   1057e:	84ae                	mv	s1,a1
   10580:	4701                	li	a4,0
   10582:	85aa                	mv	a1,a0
   10584:	4681                	li	a3,0
   10586:	05000513          	li	a0,80
   1058a:	ed06                	sd	ra,152(sp)
   1058c:	e922                	sd	s0,144(sp)
   1058e:	f5bff0ef          	jal	ra,104e8 <__internal_syscall>
   10592:	842a                	mv	s0,a0
   10594:	858a                	mv	a1,sp
   10596:	8526                	mv	a0,s1
   10598:	eefff0ef          	jal	ra,10486 <conv_stat>
   1059c:	0004051b          	sext.w	a0,s0
   105a0:	60ea                	ld	ra,152(sp)
   105a2:	644a                	ld	s0,144(sp)
   105a4:	64aa                	ld	s1,136(sp)
   105a6:	610d                	addi	sp,sp,160
   105a8:	8082                	ret

00000000000105aa <stat>:
   105aa:	7135                	addi	sp,sp,-160
   105ac:	e526                	sd	s1,136(sp)
   105ae:	860a                	mv	a2,sp
   105b0:	84ae                	mv	s1,a1
   105b2:	4701                	li	a4,0
   105b4:	85aa                	mv	a1,a0
   105b6:	4681                	li	a3,0
   105b8:	40e00513          	li	a0,1038
   105bc:	ed06                	sd	ra,152(sp)
   105be:	e922                	sd	s0,144(sp)
   105c0:	00000097          	auipc	ra,0x0
   105c4:	f28080e7          	jalr	-216(ra) # 104e8 <__internal_syscall>
   105c8:	842a                	mv	s0,a0
   105ca:	858a                	mv	a1,sp
   105cc:	8526                	mv	a0,s1
   105ce:	00000097          	auipc	ra,0x0
   105d2:	eb8080e7          	jalr	-328(ra) # 10486 <conv_stat>
   105d6:	0004051b          	sext.w	a0,s0
   105da:	60ea                	ld	ra,152(sp)
   105dc:	644a                	ld	s0,144(sp)
   105de:	64aa                	ld	s1,136(sp)
   105e0:	610d                	addi	sp,sp,160
   105e2:	8082                	ret

00000000000105e4 <lstat>:
   105e4:	7135                	addi	sp,sp,-160
   105e6:	e526                	sd	s1,136(sp)
   105e8:	860a                	mv	a2,sp
   105ea:	84ae                	mv	s1,a1
   105ec:	4701                	li	a4,0
   105ee:	85aa                	mv	a1,a0
   105f0:	4681                	li	a3,0
   105f2:	40f00513          	li	a0,1039
   105f6:	ed06                	sd	ra,152(sp)
   105f8:	e922                	sd	s0,144(sp)
   105fa:	eefff0ef          	jal	ra,104e8 <__internal_syscall>
   105fe:	842a                	mv	s0,a0
   10600:	858a                	mv	a1,sp
   10602:	8526                	mv	a0,s1
   10604:	e83ff0ef          	jal	ra,10486 <conv_stat>
   10608:	0004051b          	sext.w	a0,s0
   1060c:	60ea                	ld	ra,152(sp)
   1060e:	644a                	ld	s0,144(sp)
   10610:	64aa                	ld	s1,136(sp)
   10612:	610d                	addi	sp,sp,160
   10614:	8082                	ret

0000000000010616 <fstatat>:
   10616:	7135                	addi	sp,sp,-160
   10618:	e526                	sd	s1,136(sp)
   1061a:	8736                	mv	a4,a3
   1061c:	84b2                	mv	s1,a2
   1061e:	868a                	mv	a3,sp
   10620:	862e                	mv	a2,a1
   10622:	85aa                	mv	a1,a0
   10624:	04f00513          	li	a0,79
   10628:	ed06                	sd	ra,152(sp)
   1062a:	e922                	sd	s0,144(sp)
   1062c:	00000097          	auipc	ra,0x0
   10630:	ebc080e7          	jalr	-324(ra) # 104e8 <__internal_syscall>
   10634:	842a                	mv	s0,a0
   10636:	858a                	mv	a1,sp
   10638:	8526                	mv	a0,s1
   1063a:	00000097          	auipc	ra,0x0
   1063e:	e4c080e7          	jalr	-436(ra) # 10486 <conv_stat>
   10642:	0004051b          	sext.w	a0,s0
   10646:	60ea                	ld	ra,152(sp)
   10648:	644a                	ld	s0,144(sp)
   1064a:	64aa                	ld	s1,136(sp)
   1064c:	610d                	addi	sp,sp,160
   1064e:	8082                	ret

0000000000010650 <access>:
   10650:	1141                	addi	sp,sp,-16
   10652:	862e                	mv	a2,a1
   10654:	4701                	li	a4,0
   10656:	85aa                	mv	a1,a0
   10658:	4681                	li	a3,0
   1065a:	40900513          	li	a0,1033
   1065e:	e406                	sd	ra,8(sp)
   10660:	e89ff0ef          	jal	ra,104e8 <__internal_syscall>
   10664:	60a2                	ld	ra,8(sp)
   10666:	2501                	sext.w	a0,a0
   10668:	0141                	addi	sp,sp,16
   1066a:	8082                	ret

000000000001066c <faccessat>:
   1066c:	1141                	addi	sp,sp,-16
   1066e:	8736                	mv	a4,a3
   10670:	86b2                	mv	a3,a2
   10672:	862e                	mv	a2,a1
   10674:	85aa                	mv	a1,a0
   10676:	03000513          	li	a0,48
   1067a:	e406                	sd	ra,8(sp)
   1067c:	00000097          	auipc	ra,0x0
   10680:	e6c080e7          	jalr	-404(ra) # 104e8 <__internal_syscall>
   10684:	60a2                	ld	ra,8(sp)
   10686:	2501                	sext.w	a0,a0
   10688:	0141                	addi	sp,sp,16
   1068a:	8082                	ret

000000000001068c <close>:
   1068c:	1141                	addi	sp,sp,-16
   1068e:	85aa                	mv	a1,a0
   10690:	4701                	li	a4,0
   10692:	4681                	li	a3,0
   10694:	4601                	li	a2,0
   10696:	03900513          	li	a0,57
   1069a:	e406                	sd	ra,8(sp)
   1069c:	e4dff0ef          	jal	ra,104e8 <__internal_syscall>
   106a0:	60a2                	ld	ra,8(sp)
   106a2:	2501                	sext.w	a0,a0
   106a4:	0141                	addi	sp,sp,16
   106a6:	8082                	ret

00000000000106a8 <link>:
   106a8:	1141                	addi	sp,sp,-16
   106aa:	862e                	mv	a2,a1
   106ac:	4701                	li	a4,0
   106ae:	85aa                	mv	a1,a0
   106b0:	4681                	li	a3,0
   106b2:	40100513          	li	a0,1025
   106b6:	e406                	sd	ra,8(sp)
   106b8:	00000097          	auipc	ra,0x0
   106bc:	e30080e7          	jalr	-464(ra) # 104e8 <__internal_syscall>
   106c0:	60a2                	ld	ra,8(sp)
   106c2:	2501                	sext.w	a0,a0
   106c4:	0141                	addi	sp,sp,16
   106c6:	8082                	ret

00000000000106c8 <unlink>:
   106c8:	1141                	addi	sp,sp,-16
   106ca:	85aa                	mv	a1,a0
   106cc:	4701                	li	a4,0
   106ce:	4681                	li	a3,0
   106d0:	4601                	li	a2,0
   106d2:	40200513          	li	a0,1026
   106d6:	e406                	sd	ra,8(sp)
   106d8:	e11ff0ef          	jal	ra,104e8 <__internal_syscall>
   106dc:	60a2                	ld	ra,8(sp)
   106de:	2501                	sext.w	a0,a0
   106e0:	0141                	addi	sp,sp,16
   106e2:	8082                	ret

00000000000106e4 <execve>:
   106e4:	1141                	addi	sp,sp,-16
   106e6:	e406                	sd	ra,8(sp)
   106e8:	00000097          	auipc	ra,0x0
   106ec:	1a2080e7          	jalr	418(ra) # 1088a <__errno>
   106f0:	60a2                	ld	ra,8(sp)
   106f2:	47b1                	li	a5,12
   106f4:	c11c                	sw	a5,0(a0)
   106f6:	557d                	li	a0,-1
   106f8:	0141                	addi	sp,sp,16
   106fa:	8082                	ret

00000000000106fc <fork>:
   106fc:	1141                	addi	sp,sp,-16
   106fe:	e406                	sd	ra,8(sp)
   10700:	18a000ef          	jal	ra,1088a <__errno>
   10704:	60a2                	ld	ra,8(sp)
   10706:	47ad                	li	a5,11
   10708:	c11c                	sw	a5,0(a0)
   1070a:	557d                	li	a0,-1
   1070c:	0141                	addi	sp,sp,16
   1070e:	8082                	ret

0000000000010710 <getpid>:
   10710:	4505                	li	a0,1
   10712:	8082                	ret

0000000000010714 <kill>:
   10714:	1141                	addi	sp,sp,-16
   10716:	e406                	sd	ra,8(sp)
   10718:	172000ef          	jal	ra,1088a <__errno>
   1071c:	60a2                	ld	ra,8(sp)
   1071e:	47d9                	li	a5,22
   10720:	c11c                	sw	a5,0(a0)
   10722:	557d                	li	a0,-1
   10724:	0141                	addi	sp,sp,16
   10726:	8082                	ret

0000000000010728 <wait>:
   10728:	1141                	addi	sp,sp,-16
   1072a:	e406                	sd	ra,8(sp)
   1072c:	00000097          	auipc	ra,0x0
   10730:	15e080e7          	jalr	350(ra) # 1088a <__errno>
   10734:	60a2                	ld	ra,8(sp)
   10736:	47a9                	li	a5,10
   10738:	c11c                	sw	a5,0(a0)
   1073a:	557d                	li	a0,-1
   1073c:	0141                	addi	sp,sp,16
   1073e:	8082                	ret

0000000000010740 <isatty>:
   10740:	7119                	addi	sp,sp,-128
   10742:	002c                	addi	a1,sp,8
   10744:	fc86                	sd	ra,120(sp)
   10746:	e33ff0ef          	jal	ra,10578 <fstat>
   1074a:	57fd                	li	a5,-1
   1074c:	00f50663          	beq	a0,a5,10758 <isatty+0x18>
   10750:	4532                	lw	a0,12(sp)
   10752:	40d5551b          	sraiw	a0,a0,0xd
   10756:	8905                	andi	a0,a0,1
   10758:	70e6                	ld	ra,120(sp)
   1075a:	6109                	addi	sp,sp,128
   1075c:	8082                	ret

000000000001075e <gettimeofday>:
   1075e:	1141                	addi	sp,sp,-16
   10760:	85aa                	mv	a1,a0
   10762:	4701                	li	a4,0
   10764:	4681                	li	a3,0
   10766:	4601                	li	a2,0
   10768:	0a900513          	li	a0,169
   1076c:	e406                	sd	ra,8(sp)
   1076e:	00000097          	auipc	ra,0x0
   10772:	d7a080e7          	jalr	-646(ra) # 104e8 <__internal_syscall>
   10776:	60a2                	ld	ra,8(sp)
   10778:	2501                	sext.w	a0,a0
   1077a:	0141                	addi	sp,sp,16
   1077c:	8082                	ret

000000000001077e <times>:
   1077e:	7179                	addi	sp,sp,-48
   10780:	f022                	sd	s0,32(sp)
   10782:	842a                	mv	s0,a0
   10784:	8581b783          	ld	a5,-1960(gp) # 117b0 <t0.2574>
   10788:	ec26                	sd	s1,24(sp)
   1078a:	f406                	sd	ra,40(sp)
   1078c:	85818493          	addi	s1,gp,-1960 # 117b0 <t0.2574>
   10790:	eb81                	bnez	a5,107a0 <times+0x22>
   10792:	4581                	li	a1,0
   10794:	85818513          	addi	a0,gp,-1960 # 117b0 <t0.2574>
   10798:	00000097          	auipc	ra,0x0
   1079c:	fc6080e7          	jalr	-58(ra) # 1075e <gettimeofday>
   107a0:	850a                	mv	a0,sp
   107a2:	4581                	li	a1,0
   107a4:	00000097          	auipc	ra,0x0
   107a8:	fba080e7          	jalr	-70(ra) # 1075e <gettimeofday>
   107ac:	6098                	ld	a4,0(s1)
   107ae:	6782                	ld	a5,0(sp)
   107b0:	6494                	ld	a3,8(s1)
   107b2:	00043823          	sd	zero,16(s0)
   107b6:	8f99                	sub	a5,a5,a4
   107b8:	000f4737          	lui	a4,0xf4
   107bc:	24070713          	addi	a4,a4,576 # f4240 <__global_pointer$+0xe22e8>
   107c0:	02e787b3          	mul	a5,a5,a4
   107c4:	6722                	ld	a4,8(sp)
   107c6:	00043c23          	sd	zero,24(s0)
   107ca:	00043423          	sd	zero,8(s0)
   107ce:	8f15                	sub	a4,a4,a3
   107d0:	70a2                	ld	ra,40(sp)
   107d2:	64e2                	ld	s1,24(sp)
   107d4:	557d                	li	a0,-1
   107d6:	97ba                	add	a5,a5,a4
   107d8:	e01c                	sd	a5,0(s0)
   107da:	7402                	ld	s0,32(sp)
   107dc:	6145                	addi	sp,sp,48
   107de:	8082                	ret

00000000000107e0 <ftime>:
   107e0:	00051423          	sh	zero,8(a0)
   107e4:	00053023          	sd	zero,0(a0)
   107e8:	4501                	li	a0,0
   107ea:	8082                	ret

00000000000107ec <utime>:
   107ec:	557d                	li	a0,-1
   107ee:	8082                	ret

00000000000107f0 <chown>:
   107f0:	557d                	li	a0,-1
   107f2:	8082                	ret

00000000000107f4 <chmod>:
   107f4:	557d                	li	a0,-1
   107f6:	8082                	ret

00000000000107f8 <chdir>:
   107f8:	557d                	li	a0,-1
   107fa:	8082                	ret

00000000000107fc <getcwd>:
   107fc:	4501                	li	a0,0
   107fe:	8082                	ret

0000000000010800 <sysconf>:
   10800:	4789                	li	a5,2
   10802:	00f50463          	beq	a0,a5,1080a <sysconf+0xa>
   10806:	557d                	li	a0,-1
   10808:	8082                	ret
   1080a:	000f4537          	lui	a0,0xf4
   1080e:	24050513          	addi	a0,a0,576 # f4240 <__global_pointer$+0xe22e8>
   10812:	8082                	ret

0000000000010814 <sbrk>:
   10814:	1101                	addi	sp,sp,-32
   10816:	e822                	sd	s0,16(sp)
   10818:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   1081c:	e426                	sd	s1,8(sp)
   1081e:	ec06                	sd	ra,24(sp)
   10820:	84aa                	mv	s1,a0
   10822:	e785                	bnez	a5,1084a <sbrk+0x36>
   10824:	4701                	li	a4,0
   10826:	4681                	li	a3,0
   10828:	4601                	li	a2,0
   1082a:	4581                	li	a1,0
   1082c:	0d600513          	li	a0,214
   10830:	cb9ff0ef          	jal	ra,104e8 <__internal_syscall>
   10834:	57fd                	li	a5,-1
   10836:	00f51863          	bne	a0,a5,10846 <sbrk+0x32>
   1083a:	557d                	li	a0,-1
   1083c:	60e2                	ld	ra,24(sp)
   1083e:	6442                	ld	s0,16(sp)
   10840:	64a2                	ld	s1,8(sp)
   10842:	6105                	addi	sp,sp,32
   10844:	8082                	ret
   10846:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   1084a:	8181b583          	ld	a1,-2024(gp) # 11770 <_edata>
   1084e:	4701                	li	a4,0
   10850:	4681                	li	a3,0
   10852:	95a6                	add	a1,a1,s1
   10854:	4601                	li	a2,0
   10856:	0d600513          	li	a0,214
   1085a:	c8fff0ef          	jal	ra,104e8 <__internal_syscall>
   1085e:	8181b783          	ld	a5,-2024(gp) # 11770 <_edata>
   10862:	94be                	add	s1,s1,a5
   10864:	fc951be3          	bne	a0,s1,1083a <sbrk+0x26>
   10868:	80a1bc23          	sd	a0,-2024(gp) # 11770 <_edata>
   1086c:	853e                	mv	a0,a5
   1086e:	b7f9                	j	1083c <sbrk+0x28>

0000000000010870 <_exit>:
   10870:	1141                	addi	sp,sp,-16
   10872:	85aa                	mv	a1,a0
   10874:	4701                	li	a4,0
   10876:	4681                	li	a3,0
   10878:	4601                	li	a2,0
   1087a:	05d00513          	li	a0,93
   1087e:	e406                	sd	ra,8(sp)
   10880:	00000097          	auipc	ra,0x0
   10884:	c68080e7          	jalr	-920(ra) # 104e8 <__internal_syscall>
   10888:	a001                	j	10888 <_exit+0x18>

000000000001088a <__errno>:
   1088a:	8101b503          	ld	a0,-2032(gp) # 11768 <_impure_ptr>
   1088e:	8082                	ret
	...

Disassembly of section .eh_frame:

0000000000010898 <__EH_FRAME_BEGIN__>:
   10898:	0010                	addi	a2,sp,0
   1089a:	0000                	unimp
   1089c:	0000                	unimp
   1089e:	0000                	unimp
   108a0:	7a01                	lui	s4,0xfffe0
   108a2:	0052                	0x52
   108a4:	7c01                	lui	s8,0xfffe0
   108a6:	0101                	addi	sp,sp,0
   108a8:	00020d1b          	sext.w	s10,tp
   108ac:	001c                	addi	a5,sp,0
   108ae:	0000                	unimp
   108b0:	0018                	addi	a4,sp,0
   108b2:	0000                	unimp
   108b4:	f8f8                	sd	a4,240(s1)
   108b6:	ffff                	0xffff
   108b8:	002a                	0x2a
   108ba:	0000                	unimp
   108bc:	4200                	lw	s0,0(a2)
   108be:	200e                	fld	ft0,192(sp)
   108c0:	8842                	mv	a6,a6
   108c2:	4202                	lw	tp,0(sp)
   108c4:	080c                	addi	a1,sp,16
   108c6:	6000                	ld	s0,0(s0)
   108c8:	42c8                	lw	a0,4(a3)
   108ca:	020d                	addi	tp,tp,3

00000000000108cc <__FRAME_END__>:
   108cc:	0000                	unimp
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
