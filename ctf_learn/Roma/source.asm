Roma:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 e1 2f 00 00 	mov    0x2fe1(%rip),%rax        # 3ff0 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 52 2f 00 00    	push   0x2f52(%rip)        # 3f78 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 53 2f 00 00 	bnd jmp *0x2f53(%rip)        # 3f80 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <.plt>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <.plt>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <.plt>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <.plt>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <.plt>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <.plt>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <.plt>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <.plt>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <.plt>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmp 1020 <.plt>
    10cf:	90                   	nop

Disassembly of section .plt.got:

00000000000010d0 <__cxa_finalize@plt>:
    10d0:	f3 0f 1e fa          	endbr64
    10d4:	f2 ff 25 fd 2e 00 00 	bnd jmp *0x2efd(%rip)        # 3fd8 <__cxa_finalize@GLIBC_2.2.5>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010e0 <__printf_chk@plt>:
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	f2 ff 25 9d 2e 00 00 	bnd jmp *0x2e9d(%rip)        # 3f88 <__printf_chk@GLIBC_2.3.4>
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010f0 <strlen@plt>:
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	f2 ff 25 95 2e 00 00 	bnd jmp *0x2e95(%rip)        # 3f90 <strlen@GLIBC_2.2.5>
    10fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001100 <strncpy@plt>:
    1100:	f3 0f 1e fa          	endbr64
    1104:	f2 ff 25 8d 2e 00 00 	bnd jmp *0x2e8d(%rip)        # 3f98 <strncpy@GLIBC_2.2.5>
    110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001110 <fclose@plt>:
    1110:	f3 0f 1e fa          	endbr64
    1114:	f2 ff 25 85 2e 00 00 	bnd jmp *0x2e85(%rip)        # 3fa0 <fclose@GLIBC_2.2.5>
    111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001120 <_Znwm@plt>:
    1120:	f3 0f 1e fa          	endbr64
    1124:	f2 ff 25 7d 2e 00 00 	bnd jmp *0x2e7d(%rip)        # 3fa8 <_Znwm@GLIBCXX_3.4>
    112b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001130 <_ZdlPvm@plt>:
    1130:	f3 0f 1e fa          	endbr64
    1134:	f2 ff 25 75 2e 00 00 	bnd jmp *0x2e75(%rip)        # 3fb0 <_ZdlPvm@CXXABI_1.3.9>
    113b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001140 <fopen@plt>:
    1140:	f3 0f 1e fa          	endbr64
    1144:	f2 ff 25 6d 2e 00 00 	bnd jmp *0x2e6d(%rip)        # 3fb8 <fopen@GLIBC_2.2.5>
    114b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001150 <puts@plt>:
    1150:	f3 0f 1e fa          	endbr64
    1154:	f2 ff 25 65 2e 00 00 	bnd jmp *0x2e65(%rip)        # 3fc0 <puts@GLIBC_2.2.5>
    115b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001160 <__fprintf_chk@plt>:
    1160:	f3 0f 1e fa          	endbr64
    1164:	f2 ff 25 5d 2e 00 00 	bnd jmp *0x2e5d(%rip)        # 3fc8 <__fprintf_chk@GLIBC_2.3.4>
    116b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001170 <fwrite@plt>:
    1170:	f3 0f 1e fa          	endbr64
    1174:	f2 ff 25 55 2e 00 00 	bnd jmp *0x2e55(%rip)        # 3fd0 <fwrite@GLIBC_2.2.5>
    117b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001180 <main>:
    1180:	f3 0f 1e fa          	endbr64
    1184:	41 55                	push   %r13
    1186:	41 54                	push   %r12
    1188:	49 89 f4             	mov    %rsi,%r12
    118b:	55                   	push   %rbp
    118c:	89 fd                	mov    %edi,%ebp
    118e:	48 8d 3d 73 0e 00 00 	lea    0xe73(%rip),%rdi        # 2008 <_IO_stdin_used+0x8>
    1195:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
    119c:	e8 af ff ff ff       	call   1150 <puts@plt>
    11a1:	4c 8d 6c 24 20       	lea    0x20(%rsp),%r13
    11a6:	66 0f ef c0          	pxor   %xmm0,%xmm0
    11aa:	89 ef                	mov    %ebp,%edi
    11ac:	4c 8d 44 24 1f       	lea    0x1f(%rsp),%r8
    11b1:	48 8d 4c 24 1e       	lea    0x1e(%rsp),%rcx
    11b6:	4c 89 ea             	mov    %r13,%rdx
    11b9:	4c 89 e6             	mov    %r12,%rsi
    11bc:	c6 44 24 1e 00       	movb   $0x0,0x1e(%rsp)
    11c1:	c6 44 24 1f 00       	movb   $0x0,0x1f(%rsp)
    11c6:	0f 29 44 24 20       	movaps %xmm0,0x20(%rsp)
    11cb:	0f 29 44 24 30       	movaps %xmm0,0x30(%rsp)
    11d0:	0f 29 44 24 40       	movaps %xmm0,0x40(%rsp)
    11d5:	0f 29 44 24 50       	movaps %xmm0,0x50(%rsp)
    11da:	e8 11 02 00 00       	call   13f0 <_Z8SardiniaiPPcS_RbS1_>
    11df:	41 89 c0             	mov    %eax,%r8d
    11e2:	b8 01 00 00 00       	mov    $0x1,%eax
    11e7:	45 84 c0             	test   %r8b,%r8b
    11ea:	75 0d                	jne    11f9 <main+0x79>
    11ec:	48 81 c4 a0 00 00 00 	add    $0xa0,%rsp
    11f3:	5d                   	pop    %rbp
    11f4:	41 5c                	pop    %r12
    11f6:	41 5d                	pop    %r13
    11f8:	c3                   	ret
    11f9:	bf 01 00 00 00       	mov    $0x1,%edi
    11fe:	31 c0                	xor    %eax,%eax
    1200:	48 8d 6c 24 60       	lea    0x60(%rsp),%rbp
    1205:	4c 89 ea             	mov    %r13,%rdx
    1208:	48 8d 35 85 0e 00 00 	lea    0xe85(%rip),%rsi        # 2094 <_IO_stdin_used+0x94>
    120f:	e8 cc fe ff ff       	call   10e0 <__printf_chk@plt>
    1214:	31 c0                	xor    %eax,%eax
    1216:	b9 10 00 00 00       	mov    $0x10,%ecx
    121b:	48 89 ef             	mov    %rbp,%rdi
    121e:	f3 ab                	rep stos %eax,%es:(%rdi)
    1220:	48 89 ee             	mov    %rbp,%rsi
    1223:	4c 89 ef             	mov    %r13,%rdi
    1226:	e8 85 03 00 00       	call   15b0 <_Z5LazioPcS_>
    122b:	84 c0                	test   %al,%al
    122d:	0f 84 ad 00 00 00    	je     12e0 <main+0x160>
    1233:	48 89 ea             	mov    %rbp,%rdx
    1236:	48 8d 35 71 0e 00 00 	lea    0xe71(%rip),%rsi        # 20ae <_IO_stdin_used+0xae>
    123d:	bf 01 00 00 00       	mov    $0x1,%edi
    1242:	31 c0                	xor    %eax,%eax
    1244:	e8 97 fe ff ff       	call   10e0 <__printf_chk@plt>
    1249:	e8 22 05 00 00       	call   1770 <_Z8Lombardiv>
    124e:	80 7c 24 1f 00       	cmpb   $0x0,0x1f(%rsp)
    1253:	0f 85 91 00 00 00    	jne    12ea <main+0x16a>
    1259:	0f b6 74 24 1e       	movzbl 0x1e(%rsp),%esi
    125e:	48 89 ef             	mov    %rbp,%rdi
    1261:	e8 1a 09 00 00       	call   1b80 <_Z8CalabriaPKcb>
    1266:	4c 89 ea             	mov    %r13,%rdx
    1269:	84 c0                	test   %al,%al
    126b:	75 5e                	jne    12cb <main+0x14b>
    126d:	48 8d 35 fc 0d 00 00 	lea    0xdfc(%rip),%rsi        # 2070 <_IO_stdin_used+0x70>
    1274:	bf 01 00 00 00       	mov    $0x1,%edi
    1279:	31 c0                	xor    %eax,%eax
    127b:	e8 60 fe ff ff       	call   10e0 <__printf_chk@plt>
    1280:	48 8d 3d 41 0e 00 00 	lea    0xe41(%rip),%rdi        # 20c8 <_IO_stdin_used+0xc8>
    1287:	e8 c4 fe ff ff       	call   1150 <puts@plt>
    128c:	48 8b 3d bd 2d 00 00 	mov    0x2dbd(%rip),%rdi        # 4050 <Tuscany>
    1293:	48 85 ff             	test   %rdi,%rdi
    1296:	74 0a                	je     12a2 <main+0x122>
    1298:	be 04 00 00 00       	mov    $0x4,%esi
    129d:	e8 8e fe ff ff       	call   1130 <_ZdlPvm@plt>
    12a2:	48 8b 3d 9f 2d 00 00 	mov    0x2d9f(%rip),%rdi        # 4048 <Umbria>
    12a9:	31 c0                	xor    %eax,%eax
    12ab:	48 85 ff             	test   %rdi,%rdi
    12ae:	0f 84 38 ff ff ff    	je     11ec <main+0x6c>
    12b4:	be 04 00 00 00       	mov    $0x4,%esi
    12b9:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    12bd:	e8 6e fe ff ff       	call   1130 <_ZdlPvm@plt>
    12c2:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    12c6:	e9 21 ff ff ff       	jmp    11ec <main+0x6c>
    12cb:	48 8d 35 6e 0d 00 00 	lea    0xd6e(%rip),%rsi        # 2040 <_IO_stdin_used+0x40>
    12d2:	bf 01 00 00 00       	mov    $0x1,%edi
    12d7:	31 c0                	xor    %eax,%eax
    12d9:	e8 02 fe ff ff       	call   10e0 <__printf_chk@plt>
    12de:	eb a0                	jmp    1280 <main+0x100>
    12e0:	b8 02 00 00 00       	mov    $0x2,%eax
    12e5:	e9 02 ff ff ff       	jmp    11ec <main+0x6c>
    12ea:	e8 a1 03 00 00       	call   1690 <_Z7Abruzzov>
    12ef:	e9 65 ff ff ff       	jmp    1259 <main+0xd9>
    12f4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    12fb:	00 00 00 
    12fe:	66 90                	xchg   %ax,%ax

0000000000001300 <_start>:
    1300:	f3 0f 1e fa          	endbr64
    1304:	31 ed                	xor    %ebp,%ebp
    1306:	49 89 d1             	mov    %rdx,%r9
    1309:	5e                   	pop    %rsi
    130a:	48 89 e2             	mov    %rsp,%rdx
    130d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1311:	50                   	push   %rax
    1312:	54                   	push   %rsp
    1313:	4c 8d 05 36 0b 00 00 	lea    0xb36(%rip),%r8        # 1e50 <__libc_csu_fini>
    131a:	48 8d 0d bf 0a 00 00 	lea    0xabf(%rip),%rcx        # 1de0 <__libc_csu_init>
    1321:	48 8d 3d 58 fe ff ff 	lea    -0x1a8(%rip),%rdi        # 1180 <main>
    1328:	ff 15 ba 2c 00 00    	call   *0x2cba(%rip)        # 3fe8 <__libc_start_main@GLIBC_2.2.5>
    132e:	f4                   	hlt
    132f:	90                   	nop

0000000000001330 <deregister_tm_clones>:
    1330:	48 8d 3d f1 2c 00 00 	lea    0x2cf1(%rip),%rdi        # 4028 <__TMC_END__>
    1337:	48 8d 05 ea 2c 00 00 	lea    0x2cea(%rip),%rax        # 4028 <__TMC_END__>
    133e:	48 39 f8             	cmp    %rdi,%rax
    1341:	74 15                	je     1358 <deregister_tm_clones+0x28>
    1343:	48 8b 05 96 2c 00 00 	mov    0x2c96(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable>
    134a:	48 85 c0             	test   %rax,%rax
    134d:	74 09                	je     1358 <deregister_tm_clones+0x28>
    134f:	ff e0                	jmp    *%rax
    1351:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1358:	c3                   	ret
    1359:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001360 <register_tm_clones>:
    1360:	48 8d 3d c1 2c 00 00 	lea    0x2cc1(%rip),%rdi        # 4028 <__TMC_END__>
    1367:	48 8d 35 ba 2c 00 00 	lea    0x2cba(%rip),%rsi        # 4028 <__TMC_END__>
    136e:	48 29 fe             	sub    %rdi,%rsi
    1371:	48 89 f0             	mov    %rsi,%rax
    1374:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1378:	48 c1 f8 03          	sar    $0x3,%rax
    137c:	48 01 c6             	add    %rax,%rsi
    137f:	48 d1 fe             	sar    $1,%rsi
    1382:	74 14                	je     1398 <register_tm_clones+0x38>
    1384:	48 8b 05 6d 2c 00 00 	mov    0x2c6d(%rip),%rax        # 3ff8 <_ITM_registerTMCloneTable>
    138b:	48 85 c0             	test   %rax,%rax
    138e:	74 08                	je     1398 <register_tm_clones+0x38>
    1390:	ff e0                	jmp    *%rax
    1392:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1398:	c3                   	ret
    1399:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013a0 <__do_global_dtors_aux>:
    13a0:	f3 0f 1e fa          	endbr64
    13a4:	80 3d 95 2c 00 00 00 	cmpb   $0x0,0x2c95(%rip)        # 4040 <completed.8059>
    13ab:	75 2b                	jne    13d8 <__do_global_dtors_aux+0x38>
    13ad:	55                   	push   %rbp
    13ae:	48 83 3d 22 2c 00 00 	cmpq   $0x0,0x2c22(%rip)        # 3fd8 <__cxa_finalize@GLIBC_2.2.5>
    13b5:	00 
    13b6:	48 89 e5             	mov    %rsp,%rbp
    13b9:	74 0c                	je     13c7 <__do_global_dtors_aux+0x27>
    13bb:	48 8b 3d 46 2c 00 00 	mov    0x2c46(%rip),%rdi        # 4008 <__dso_handle>
    13c2:	e8 09 fd ff ff       	call   10d0 <__cxa_finalize@plt>
    13c7:	e8 64 ff ff ff       	call   1330 <deregister_tm_clones>
    13cc:	c6 05 6d 2c 00 00 01 	movb   $0x1,0x2c6d(%rip)        # 4040 <completed.8059>
    13d3:	5d                   	pop    %rbp
    13d4:	c3                   	ret
    13d5:	0f 1f 00             	nopl   (%rax)
    13d8:	c3                   	ret
    13d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013e0 <frame_dummy>:
    13e0:	f3 0f 1e fa          	endbr64
    13e4:	e9 77 ff ff ff       	jmp    1360 <register_tm_clones>
    13e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013f0 <_Z8SardiniaiPPcS_RbS1_>:
    13f0:	f3 0f 1e fa          	endbr64
    13f4:	41 57                	push   %r15
    13f6:	41 56                	push   %r14
    13f8:	41 55                	push   %r13
    13fa:	41 54                	push   %r12
    13fc:	55                   	push   %rbp
    13fd:	53                   	push   %rbx
    13fe:	48 83 ec 08          	sub    $0x8,%rsp
    1402:	c6 01 00             	movb   $0x0,(%rcx)
    1405:	41 c6 00 00          	movb   $0x0,(%r8)
    1409:	83 ff 01             	cmp    $0x1,%edi
    140c:	0f 84 5e 01 00 00    	je     1570 <_Z8SardiniaiPPcS_RbS1_+0x180>
    1412:	4c 8b 7e 08          	mov    0x8(%rsi),%r15
    1416:	89 fd                	mov    %edi,%ebp
    1418:	49 89 f4             	mov    %rsi,%r12
    141b:	48 89 d3             	mov    %rdx,%rbx
    141e:	49 89 cd             	mov    %rcx,%r13
    1421:	4d 89 c6             	mov    %r8,%r14
    1424:	4c 89 ff             	mov    %r15,%rdi
    1427:	e8 c4 fc ff ff       	call   10f0 <strlen@plt>
    142c:	48 83 f8 3c          	cmp    $0x3c,%rax
    1430:	0f 87 da 00 00 00    	ja     1510 <_Z8SardiniaiPPcS_RbS1_+0x120>
    1436:	48 83 c0 01          	add    $0x1,%rax
    143a:	83 f8 08             	cmp    $0x8,%eax
    143d:	0f 82 a5 00 00 00    	jb     14e8 <_Z8SardiniaiPPcS_RbS1_+0xf8>
    1443:	49 8b 17             	mov    (%r15),%rdx
    1446:	48 8d 73 08          	lea    0x8(%rbx),%rsi
    144a:	48 83 e6 f8          	and    $0xfffffffffffffff8,%rsi
    144e:	48 89 13             	mov    %rdx,(%rbx)
    1451:	89 c2                	mov    %eax,%edx
    1453:	49 8b 4c 17 f8       	mov    -0x8(%r15,%rdx,1),%rcx
    1458:	48 89 4c 13 f8       	mov    %rcx,-0x8(%rbx,%rdx,1)
    145d:	48 29 f3             	sub    %rsi,%rbx
    1460:	01 d8                	add    %ebx,%eax
    1462:	49 29 df             	sub    %rbx,%r15
    1465:	83 e0 f8             	and    $0xfffffff8,%eax
    1468:	83 f8 08             	cmp    $0x8,%eax
    146b:	72 16                	jb     1483 <_Z8SardiniaiPPcS_RbS1_+0x93>
    146d:	83 e0 f8             	and    $0xfffffff8,%eax
    1470:	31 d2                	xor    %edx,%edx
    1472:	89 d1                	mov    %edx,%ecx
    1474:	83 c2 08             	add    $0x8,%edx
    1477:	49 8b 3c 0f          	mov    (%r15,%rcx,1),%rdi
    147b:	48 89 3c 0e          	mov    %rdi,(%rsi,%rcx,1)
    147f:	39 c2                	cmp    %eax,%edx
    1481:	72 ef                	jb     1472 <_Z8SardiniaiPPcS_RbS1_+0x82>
    1483:	83 fd 02             	cmp    $0x2,%ebp
    1486:	7e 0e                	jle    1496 <_Z8SardiniaiPPcS_RbS1_+0xa6>
    1488:	49 8b 44 24 10       	mov    0x10(%r12),%rax
    148d:	80 38 2d             	cmpb   $0x2d,(%rax)
    1490:	0f 84 9a 00 00 00    	je     1530 <_Z8SardiniaiPPcS_RbS1_+0x140>
    1496:	83 fd 04             	cmp    $0x4,%ebp
    1499:	0f 84 a9 00 00 00    	je     1548 <_Z8SardiniaiPPcS_RbS1_+0x158>
    149f:	bf 04 00 00 00       	mov    $0x4,%edi
    14a4:	e8 77 fc ff ff       	call   1120 <_Znwm@plt>
    14a9:	bf 04 00 00 00       	mov    $0x4,%edi
    14ae:	c7 00 0d f0 ad ba    	movl   $0xbaadf00d,(%rax)
    14b4:	48 89 05 95 2b 00 00 	mov    %rax,0x2b95(%rip)        # 4050 <Tuscany>
    14bb:	e8 60 fc ff ff       	call   1120 <_Znwm@plt>
    14c0:	c7 00 0d f0 ad ba    	movl   $0xbaadf00d,(%rax)
    14c6:	48 89 05 7b 2b 00 00 	mov    %rax,0x2b7b(%rip)        # 4048 <Umbria>
    14cd:	48 83 c4 08          	add    $0x8,%rsp
    14d1:	b8 01 00 00 00       	mov    $0x1,%eax
    14d6:	5b                   	pop    %rbx
    14d7:	5d                   	pop    %rbp
    14d8:	41 5c                	pop    %r12
    14da:	41 5d                	pop    %r13
    14dc:	41 5e                	pop    %r14
    14de:	41 5f                	pop    %r15
    14e0:	c3                   	ret
    14e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    14e8:	a8 04                	test   $0x4,%al
    14ea:	0f 85 a0 00 00 00    	jne    1590 <_Z8SardiniaiPPcS_RbS1_+0x1a0>
    14f0:	85 c0                	test   %eax,%eax
    14f2:	74 8f                	je     1483 <_Z8SardiniaiPPcS_RbS1_+0x93>
    14f4:	41 0f b6 17          	movzbl (%r15),%edx
    14f8:	88 13                	mov    %dl,(%rbx)
    14fa:	a8 02                	test   $0x2,%al
    14fc:	74 85                	je     1483 <_Z8SardiniaiPPcS_RbS1_+0x93>
    14fe:	89 c7                	mov    %eax,%edi
    1500:	41 0f b7 44 3f fe    	movzwl -0x2(%r15,%rdi,1),%eax
    1506:	66 89 44 3b fe       	mov    %ax,-0x2(%rbx,%rdi,1)
    150b:	e9 73 ff ff ff       	jmp    1483 <_Z8SardiniaiPPcS_RbS1_+0x93>
    1510:	48 8d 3d e1 0b 00 00 	lea    0xbe1(%rip),%rdi        # 20f8 <_IO_stdin_used+0xf8>
    1517:	e8 34 fc ff ff       	call   1150 <puts@plt>
    151c:	48 83 c4 08          	add    $0x8,%rsp
    1520:	31 c0                	xor    %eax,%eax
    1522:	5b                   	pop    %rbx
    1523:	5d                   	pop    %rbp
    1524:	41 5c                	pop    %r12
    1526:	41 5d                	pop    %r13
    1528:	41 5e                	pop    %r14
    152a:	41 5f                	pop    %r15
    152c:	c3                   	ret
    152d:	0f 1f 00             	nopl   (%rax)
    1530:	80 78 01 76          	cmpb   $0x76,0x1(%rax)
    1534:	0f 85 5c ff ff ff    	jne    1496 <_Z8SardiniaiPPcS_RbS1_+0xa6>
    153a:	41 c6 45 00 01       	movb   $0x1,0x0(%r13)
    153f:	83 fd 04             	cmp    $0x4,%ebp
    1542:	0f 85 57 ff ff ff    	jne    149f <_Z8SardiniaiPPcS_RbS1_+0xaf>
    1548:	49 8b 44 24 18       	mov    0x18(%r12),%rax
    154d:	80 38 2d             	cmpb   $0x2d,(%rax)
    1550:	0f 85 49 ff ff ff    	jne    149f <_Z8SardiniaiPPcS_RbS1_+0xaf>
    1556:	80 78 01 64          	cmpb   $0x64,0x1(%rax)
    155a:	0f 85 3f ff ff ff    	jne    149f <_Z8SardiniaiPPcS_RbS1_+0xaf>
    1560:	41 c6 06 01          	movb   $0x1,(%r14)
    1564:	e9 36 ff ff ff       	jmp    149f <_Z8SardiniaiPPcS_RbS1_+0xaf>
    1569:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1570:	48 8d 3d 61 0b 00 00 	lea    0xb61(%rip),%rdi        # 20d8 <_IO_stdin_used+0xd8>
    1577:	e8 d4 fb ff ff       	call   1150 <puts@plt>
    157c:	48 83 c4 08          	add    $0x8,%rsp
    1580:	31 c0                	xor    %eax,%eax
    1582:	5b                   	pop    %rbx
    1583:	5d                   	pop    %rbp
    1584:	41 5c                	pop    %r12
    1586:	41 5d                	pop    %r13
    1588:	41 5e                	pop    %r14
    158a:	41 5f                	pop    %r15
    158c:	c3                   	ret
    158d:	0f 1f 00             	nopl   (%rax)
    1590:	41 8b 17             	mov    (%r15),%edx
    1593:	89 c7                	mov    %eax,%edi
    1595:	89 13                	mov    %edx,(%rbx)
    1597:	41 8b 44 3f fc       	mov    -0x4(%r15,%rdi,1),%eax
    159c:	89 44 3b fc          	mov    %eax,-0x4(%rbx,%rdi,1)
    15a0:	e9 de fe ff ff       	jmp    1483 <_Z8SardiniaiPPcS_RbS1_+0x93>
    15a5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    15ac:	00 00 00 
    15af:	90                   	nop

00000000000015b0 <_Z5LazioPcS_>:
    15b0:	f3 0f 1e fa          	endbr64
    15b4:	55                   	push   %rbp
    15b5:	48 89 fd             	mov    %rdi,%rbp
    15b8:	b9 09 00 00 00       	mov    $0x9,%ecx
    15bd:	48 8d 3d 5b 0b 00 00 	lea    0xb5b(%rip),%rdi        # 211f <_IO_stdin_used+0x11f>
    15c4:	53                   	push   %rbx
    15c5:	48 89 f3             	mov    %rsi,%rbx
    15c8:	48 89 ee             	mov    %rbp,%rsi
    15cb:	48 83 ec 08          	sub    $0x8,%rsp
    15cf:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    15d1:	0f 97 c0             	seta   %al
    15d4:	1c 00                	sbb    $0x0,%al
    15d6:	84 c0                	test   %al,%al
    15d8:	75 6e                	jne    1648 <_Z5LazioPcS_+0x98>
    15da:	48 89 ef             	mov    %rbp,%rdi
    15dd:	e8 0e fb ff ff       	call   10f0 <strlen@plt>
    15e2:	80 7c 05 ff 7d       	cmpb   $0x7d,-0x1(%rbp,%rax,1)
    15e7:	75 47                	jne    1630 <_Z5LazioPcS_+0x80>
    15e9:	48 8d 50 f6          	lea    -0xa(%rax),%rdx
    15ed:	48 8d 75 09          	lea    0x9(%rbp),%rsi
    15f1:	48 89 df             	mov    %rbx,%rdi
    15f4:	e8 07 fb ff ff       	call   1100 <strncpy@plt>
    15f9:	80 7b 07 6d          	cmpb   $0x6d,0x7(%rbx)
    15fd:	48 8b 05 4c 2a 00 00 	mov    0x2a4c(%rip),%rax        # 4050 <Tuscany>
    1604:	74 5a                	je     1660 <_Z5LazioPcS_+0xb0>
    1606:	c7 00 b2 78 00 00    	movl   $0x78b2,(%rax)
    160c:	80 7b 0d 54          	cmpb   $0x54,0xd(%rbx)
    1610:	48 8b 05 31 2a 00 00 	mov    0x2a31(%rip),%rax        # 4048 <Umbria>
    1617:	74 5a                	je     1673 <_Z5LazioPcS_+0xc3>
    1619:	c7 00 f4 e3 00 00    	movl   $0xe3f4,(%rax)
    161f:	48 83 c4 08          	add    $0x8,%rsp
    1623:	b8 01 00 00 00       	mov    $0x1,%eax
    1628:	5b                   	pop    %rbx
    1629:	5d                   	pop    %rbp
    162a:	c3                   	ret
    162b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1630:	48 8d 3d 29 0b 00 00 	lea    0xb29(%rip),%rdi        # 2160 <_IO_stdin_used+0x160>
    1637:	e8 14 fb ff ff       	call   1150 <puts@plt>
    163c:	48 83 c4 08          	add    $0x8,%rsp
    1640:	31 c0                	xor    %eax,%eax
    1642:	5b                   	pop    %rbx
    1643:	5d                   	pop    %rbp
    1644:	c3                   	ret
    1645:	0f 1f 00             	nopl   (%rax)
    1648:	48 8d 3d e1 0a 00 00 	lea    0xae1(%rip),%rdi        # 2130 <_IO_stdin_used+0x130>
    164f:	e8 fc fa ff ff       	call   1150 <puts@plt>
    1654:	48 83 c4 08          	add    $0x8,%rsp
    1658:	31 c0                	xor    %eax,%eax
    165a:	5b                   	pop    %rbx
    165b:	5d                   	pop    %rbp
    165c:	c3                   	ret
    165d:	0f 1f 00             	nopl   (%rax)
    1660:	c7 00 c8 a2 00 00    	movl   $0xa2c8,(%rax)
    1666:	80 7b 0d 54          	cmpb   $0x54,0xd(%rbx)
    166a:	48 8b 05 d7 29 00 00 	mov    0x29d7(%rip),%rax        # 4048 <Umbria>
    1671:	75 a6                	jne    1619 <_Z5LazioPcS_+0x69>
    1673:	c7 00 c1 4f 00 00    	movl   $0x4fc1,(%rax)
    1679:	48 83 c4 08          	add    $0x8,%rsp
    167d:	b8 01 00 00 00       	mov    $0x1,%eax
    1682:	5b                   	pop    %rbx
    1683:	5d                   	pop    %rbp
    1684:	c3                   	ret
    1685:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    168c:	00 00 00 
    168f:	90                   	nop

0000000000001690 <_Z7Abruzzov>:
    1690:	f3 0f 1e fa          	endbr64
    1694:	41 55                	push   %r13
    1696:	48 8d 35 e6 0a 00 00 	lea    0xae6(%rip),%rsi        # 2183 <_IO_stdin_used+0x183>
    169d:	48 8d 3d e2 0a 00 00 	lea    0xae2(%rip),%rdi        # 2186 <_IO_stdin_used+0x186>
    16a4:	41 54                	push   %r12
    16a6:	55                   	push   %rbp
    16a7:	53                   	push   %rbx
    16a8:	48 83 ec 08          	sub    $0x8,%rsp
    16ac:	e8 8f fa ff ff       	call   1140 <fopen@plt>
    16b1:	48 85 c0             	test   %rax,%rax
    16b4:	0f 84 9e 00 00 00    	je     1758 <_Z7Abruzzov+0xc8>
    16ba:	48 89 c5             	mov    %rax,%rbp
    16bd:	48 89 c1             	mov    %rax,%rcx
    16c0:	ba 2c 00 00 00       	mov    $0x2c,%edx
    16c5:	be 01 00 00 00       	mov    $0x1,%esi
    16ca:	48 8d 3d cf 0a 00 00 	lea    0xacf(%rip),%rdi        # 21a0 <_IO_stdin_used+0x1a0>
    16d1:	31 db                	xor    %ebx,%ebx
    16d3:	4c 8d 2d 86 29 00 00 	lea    0x2986(%rip),%r13        # 4060 <Apulia>
    16da:	e8 91 fa ff ff       	call   1170 <fwrite@plt>
    16df:	48 89 e9             	mov    %rbp,%rcx
    16e2:	ba 3d 00 00 00       	mov    $0x3d,%edx
    16e7:	be 01 00 00 00       	mov    $0x1,%esi
    16ec:	48 8d 3d dd 0a 00 00 	lea    0xadd(%rip),%rdi        # 21d0 <_IO_stdin_used+0x1d0>
    16f3:	4c 8d 25 98 0a 00 00 	lea    0xa98(%rip),%r12        # 2192 <_IO_stdin_used+0x192>
    16fa:	e8 71 fa ff ff       	call   1170 <fwrite@plt>
    16ff:	48 89 e9             	mov    %rbp,%rcx
    1702:	ba 2c 00 00 00       	mov    $0x2c,%edx
    1707:	be 01 00 00 00       	mov    $0x1,%esi
    170c:	48 8d 3d fd 0a 00 00 	lea    0xafd(%rip),%rdi        # 2210 <_IO_stdin_used+0x210>
    1713:	e8 58 fa ff ff       	call   1170 <fwrite@plt>
    1718:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    171f:	00 
    1720:	45 8b 44 9d 00       	mov    0x0(%r13,%rbx,4),%r8d
    1725:	89 d9                	mov    %ebx,%ecx
    1727:	4c 89 e2             	mov    %r12,%rdx
    172a:	be 01 00 00 00       	mov    $0x1,%esi
    172f:	48 89 ef             	mov    %rbp,%rdi
    1732:	31 c0                	xor    %eax,%eax
    1734:	48 83 c3 01          	add    $0x1,%rbx
    1738:	e8 23 fa ff ff       	call   1160 <__fprintf_chk@plt>
    173d:	48 81 fb 00 01 00 00 	cmp    $0x100,%rbx
    1744:	75 da                	jne    1720 <_Z7Abruzzov+0x90>
    1746:	48 83 c4 08          	add    $0x8,%rsp
    174a:	48 89 ef             	mov    %rbp,%rdi
    174d:	5b                   	pop    %rbx
    174e:	5d                   	pop    %rbp
    174f:	41 5c                	pop    %r12
    1751:	41 5d                	pop    %r13
    1753:	e9 b8 f9 ff ff       	jmp    1110 <fclose@plt>
    1758:	48 83 c4 08          	add    $0x8,%rsp
    175c:	5b                   	pop    %rbx
    175d:	5d                   	pop    %rbp
    175e:	41 5c                	pop    %r12
    1760:	41 5d                	pop    %r13
    1762:	c3                   	ret
    1763:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    176a:	00 00 00 00 
    176e:	66 90                	xchg   %ax,%ax

0000000000001770 <_Z8Lombardiv>:
    1770:	f3 0f 1e fa          	endbr64
    1774:	66 0f 6f 05 c4 0a 00 	movdqa 0xac4(%rip),%xmm0        # 2240 <_IO_stdin_used+0x240>
    177b:	00 
    177c:	0f 29 05 dd 28 00 00 	movaps %xmm0,0x28dd(%rip)        # 4060 <Apulia>
    1783:	66 0f 6f 05 c5 0a 00 	movdqa 0xac5(%rip),%xmm0        # 2250 <_IO_stdin_used+0x250>
    178a:	00 
    178b:	0f 29 05 de 28 00 00 	movaps %xmm0,0x28de(%rip)        # 4070 <Apulia+0x10>
    1792:	66 0f 6f 05 c6 0a 00 	movdqa 0xac6(%rip),%xmm0        # 2260 <_IO_stdin_used+0x260>
    1799:	00 
    179a:	0f 29 05 df 28 00 00 	movaps %xmm0,0x28df(%rip)        # 4080 <Apulia+0x20>
    17a1:	66 0f 6f 05 c7 0a 00 	movdqa 0xac7(%rip),%xmm0        # 2270 <_IO_stdin_used+0x270>
    17a8:	00 
    17a9:	0f 29 05 e0 28 00 00 	movaps %xmm0,0x28e0(%rip)        # 4090 <Apulia+0x30>
    17b0:	66 0f 6f 05 c8 0a 00 	movdqa 0xac8(%rip),%xmm0        # 2280 <_IO_stdin_used+0x280>
    17b7:	00 
    17b8:	0f 29 05 e1 28 00 00 	movaps %xmm0,0x28e1(%rip)        # 40a0 <Apulia+0x40>
    17bf:	66 0f 6f 05 c9 0a 00 	movdqa 0xac9(%rip),%xmm0        # 2290 <_IO_stdin_used+0x290>
    17c6:	00 
    17c7:	0f 29 05 e2 28 00 00 	movaps %xmm0,0x28e2(%rip)        # 40b0 <Apulia+0x50>
    17ce:	66 0f 6f 05 ca 0a 00 	movdqa 0xaca(%rip),%xmm0        # 22a0 <_IO_stdin_used+0x2a0>
    17d5:	00 
    17d6:	0f 29 05 e3 28 00 00 	movaps %xmm0,0x28e3(%rip)        # 40c0 <Apulia+0x60>
    17dd:	66 0f 6f 05 cb 0a 00 	movdqa 0xacb(%rip),%xmm0        # 22b0 <_IO_stdin_used+0x2b0>
    17e4:	00 
    17e5:	0f 29 05 e4 28 00 00 	movaps %xmm0,0x28e4(%rip)        # 40d0 <Apulia+0x70>
    17ec:	66 0f 6f 05 cc 0a 00 	movdqa 0xacc(%rip),%xmm0        # 22c0 <_IO_stdin_used+0x2c0>
    17f3:	00 
    17f4:	0f 29 05 e5 28 00 00 	movaps %xmm0,0x28e5(%rip)        # 40e0 <Apulia+0x80>
    17fb:	66 0f 6f 05 cd 0a 00 	movdqa 0xacd(%rip),%xmm0        # 22d0 <_IO_stdin_used+0x2d0>
    1802:	00 
    1803:	0f 29 05 e6 28 00 00 	movaps %xmm0,0x28e6(%rip)        # 40f0 <Apulia+0x90>
    180a:	66 0f 6f 05 ce 0a 00 	movdqa 0xace(%rip),%xmm0        # 22e0 <_IO_stdin_used+0x2e0>
    1811:	00 
    1812:	0f 29 05 e7 28 00 00 	movaps %xmm0,0x28e7(%rip)        # 4100 <Apulia+0xa0>
    1819:	66 0f 6f 05 cf 0a 00 	movdqa 0xacf(%rip),%xmm0        # 22f0 <_IO_stdin_used+0x2f0>
    1820:	00 
    1821:	0f 29 05 e8 28 00 00 	movaps %xmm0,0x28e8(%rip)        # 4110 <Apulia+0xb0>
    1828:	66 0f 6f 05 d0 0a 00 	movdqa 0xad0(%rip),%xmm0        # 2300 <_IO_stdin_used+0x300>
    182f:	00 
    1830:	0f 29 05 e9 28 00 00 	movaps %xmm0,0x28e9(%rip)        # 4120 <Apulia+0xc0>
    1837:	66 0f 6f 05 d1 0a 00 	movdqa 0xad1(%rip),%xmm0        # 2310 <_IO_stdin_used+0x310>
    183e:	00 
    183f:	0f 29 05 ea 28 00 00 	movaps %xmm0,0x28ea(%rip)        # 4130 <Apulia+0xd0>
    1846:	66 0f 6f 05 d2 0a 00 	movdqa 0xad2(%rip),%xmm0        # 2320 <_IO_stdin_used+0x320>
    184d:	00 
    184e:	0f 29 05 eb 28 00 00 	movaps %xmm0,0x28eb(%rip)        # 4140 <Apulia+0xe0>
    1855:	66 0f 6f 05 d3 0a 00 	movdqa 0xad3(%rip),%xmm0        # 2330 <_IO_stdin_used+0x330>
    185c:	00 
    185d:	0f 29 05 ec 28 00 00 	movaps %xmm0,0x28ec(%rip)        # 4150 <Apulia+0xf0>
    1864:	66 0f 6f 05 d4 0a 00 	movdqa 0xad4(%rip),%xmm0        # 2340 <_IO_stdin_used+0x340>
    186b:	00 
    186c:	0f 29 05 ed 28 00 00 	movaps %xmm0,0x28ed(%rip)        # 4160 <Apulia+0x100>
    1873:	66 0f 6f 05 d5 0a 00 	movdqa 0xad5(%rip),%xmm0        # 2350 <_IO_stdin_used+0x350>
    187a:	00 
    187b:	0f 29 05 ee 28 00 00 	movaps %xmm0,0x28ee(%rip)        # 4170 <Apulia+0x110>
    1882:	66 0f 6f 05 d6 0a 00 	movdqa 0xad6(%rip),%xmm0        # 2360 <_IO_stdin_used+0x360>
    1889:	00 
    188a:	0f 29 05 ef 28 00 00 	movaps %xmm0,0x28ef(%rip)        # 4180 <Apulia+0x120>
    1891:	66 0f 6f 05 d7 0a 00 	movdqa 0xad7(%rip),%xmm0        # 2370 <_IO_stdin_used+0x370>
    1898:	00 
    1899:	0f 29 05 f0 28 00 00 	movaps %xmm0,0x28f0(%rip)        # 4190 <Apulia+0x130>
    18a0:	66 0f 6f 05 d8 0a 00 	movdqa 0xad8(%rip),%xmm0        # 2380 <_IO_stdin_used+0x380>
    18a7:	00 
    18a8:	0f 29 05 f1 28 00 00 	movaps %xmm0,0x28f1(%rip)        # 41a0 <Apulia+0x140>
    18af:	66 0f 6f 05 d9 0a 00 	movdqa 0xad9(%rip),%xmm0        # 2390 <_IO_stdin_used+0x390>
    18b6:	00 
    18b7:	0f 29 05 f2 28 00 00 	movaps %xmm0,0x28f2(%rip)        # 41b0 <Apulia+0x150>
    18be:	66 0f 6f 05 da 0a 00 	movdqa 0xada(%rip),%xmm0        # 23a0 <_IO_stdin_used+0x3a0>
    18c5:	00 
    18c6:	0f 29 05 f3 28 00 00 	movaps %xmm0,0x28f3(%rip)        # 41c0 <Apulia+0x160>
    18cd:	66 0f 6f 05 db 0a 00 	movdqa 0xadb(%rip),%xmm0        # 23b0 <_IO_stdin_used+0x3b0>
    18d4:	00 
    18d5:	0f 29 05 f4 28 00 00 	movaps %xmm0,0x28f4(%rip)        # 41d0 <Apulia+0x170>
    18dc:	66 0f 6f 05 dc 0a 00 	movdqa 0xadc(%rip),%xmm0        # 23c0 <_IO_stdin_used+0x3c0>
    18e3:	00 
    18e4:	0f 29 05 f5 28 00 00 	movaps %xmm0,0x28f5(%rip)        # 41e0 <Apulia+0x180>
    18eb:	66 0f 6f 05 dd 0a 00 	movdqa 0xadd(%rip),%xmm0        # 23d0 <_IO_stdin_used+0x3d0>
    18f2:	00 
    18f3:	0f 29 05 f6 28 00 00 	movaps %xmm0,0x28f6(%rip)        # 41f0 <Apulia+0x190>
    18fa:	66 0f 6f 05 de 0a 00 	movdqa 0xade(%rip),%xmm0        # 23e0 <_IO_stdin_used+0x3e0>
    1901:	00 
    1902:	0f 29 05 f7 28 00 00 	movaps %xmm0,0x28f7(%rip)        # 4200 <Apulia+0x1a0>
    1909:	66 0f 6f 05 df 0a 00 	movdqa 0xadf(%rip),%xmm0        # 23f0 <_IO_stdin_used+0x3f0>
    1910:	00 
    1911:	0f 29 05 f8 28 00 00 	movaps %xmm0,0x28f8(%rip)        # 4210 <Apulia+0x1b0>
    1918:	66 0f 6f 05 e0 0a 00 	movdqa 0xae0(%rip),%xmm0        # 2400 <_IO_stdin_used+0x400>
    191f:	00 
    1920:	0f 29 05 f9 28 00 00 	movaps %xmm0,0x28f9(%rip)        # 4220 <Apulia+0x1c0>
    1927:	66 0f 6f 05 e1 0a 00 	movdqa 0xae1(%rip),%xmm0        # 2410 <_IO_stdin_used+0x410>
    192e:	00 
    192f:	0f 29 05 fa 28 00 00 	movaps %xmm0,0x28fa(%rip)        # 4230 <Apulia+0x1d0>
    1936:	66 0f 6f 05 e2 0a 00 	movdqa 0xae2(%rip),%xmm0        # 2420 <_IO_stdin_used+0x420>
    193d:	00 
    193e:	0f 29 05 fb 28 00 00 	movaps %xmm0,0x28fb(%rip)        # 4240 <Apulia+0x1e0>
    1945:	66 0f 6f 05 e3 0a 00 	movdqa 0xae3(%rip),%xmm0        # 2430 <_IO_stdin_used+0x430>
    194c:	00 
    194d:	0f 29 05 fc 28 00 00 	movaps %xmm0,0x28fc(%rip)        # 4250 <Apulia+0x1f0>
    1954:	66 0f 6f 05 e4 0a 00 	movdqa 0xae4(%rip),%xmm0        # 2440 <_IO_stdin_used+0x440>
    195b:	00 
    195c:	0f 29 05 fd 28 00 00 	movaps %xmm0,0x28fd(%rip)        # 4260 <Apulia+0x200>
    1963:	66 0f 6f 05 e5 0a 00 	movdqa 0xae5(%rip),%xmm0        # 2450 <_IO_stdin_used+0x450>
    196a:	00 
    196b:	0f 29 05 fe 28 00 00 	movaps %xmm0,0x28fe(%rip)        # 4270 <Apulia+0x210>
    1972:	66 0f 6f 05 e6 0a 00 	movdqa 0xae6(%rip),%xmm0        # 2460 <_IO_stdin_used+0x460>
    1979:	00 
    197a:	0f 29 05 ff 28 00 00 	movaps %xmm0,0x28ff(%rip)        # 4280 <Apulia+0x220>
    1981:	66 0f 6f 05 e7 0a 00 	movdqa 0xae7(%rip),%xmm0        # 2470 <_IO_stdin_used+0x470>
    1988:	00 
    1989:	0f 29 05 00 29 00 00 	movaps %xmm0,0x2900(%rip)        # 4290 <Apulia+0x230>
    1990:	66 0f 6f 05 e8 0a 00 	movdqa 0xae8(%rip),%xmm0        # 2480 <_IO_stdin_used+0x480>
    1997:	00 
    1998:	0f 29 05 01 29 00 00 	movaps %xmm0,0x2901(%rip)        # 42a0 <Apulia+0x240>
    199f:	66 0f 6f 05 e9 0a 00 	movdqa 0xae9(%rip),%xmm0        # 2490 <_IO_stdin_used+0x490>
    19a6:	00 
    19a7:	0f 29 05 02 29 00 00 	movaps %xmm0,0x2902(%rip)        # 42b0 <Apulia+0x250>
    19ae:	66 0f 6f 05 ea 0a 00 	movdqa 0xaea(%rip),%xmm0        # 24a0 <_IO_stdin_used+0x4a0>
    19b5:	00 
    19b6:	0f 29 05 03 29 00 00 	movaps %xmm0,0x2903(%rip)        # 42c0 <Apulia+0x260>
    19bd:	66 0f 6f 05 eb 0a 00 	movdqa 0xaeb(%rip),%xmm0        # 24b0 <_IO_stdin_used+0x4b0>
    19c4:	00 
    19c5:	0f 29 05 04 29 00 00 	movaps %xmm0,0x2904(%rip)        # 42d0 <Apulia+0x270>
    19cc:	66 0f 6f 05 ec 0a 00 	movdqa 0xaec(%rip),%xmm0        # 24c0 <_IO_stdin_used+0x4c0>
    19d3:	00 
    19d4:	0f 29 05 05 29 00 00 	movaps %xmm0,0x2905(%rip)        # 42e0 <Apulia+0x280>
    19db:	66 0f 6f 05 ed 0a 00 	movdqa 0xaed(%rip),%xmm0        # 24d0 <_IO_stdin_used+0x4d0>
    19e2:	00 
    19e3:	0f 29 05 06 29 00 00 	movaps %xmm0,0x2906(%rip)        # 42f0 <Apulia+0x290>
    19ea:	66 0f 6f 05 ee 0a 00 	movdqa 0xaee(%rip),%xmm0        # 24e0 <_IO_stdin_used+0x4e0>
    19f1:	00 
    19f2:	0f 29 05 07 29 00 00 	movaps %xmm0,0x2907(%rip)        # 4300 <Apulia+0x2a0>
    19f9:	66 0f 6f 05 ef 0a 00 	movdqa 0xaef(%rip),%xmm0        # 24f0 <_IO_stdin_used+0x4f0>
    1a00:	00 
    1a01:	0f 29 05 08 29 00 00 	movaps %xmm0,0x2908(%rip)        # 4310 <Apulia+0x2b0>
    1a08:	66 0f 6f 05 f0 0a 00 	movdqa 0xaf0(%rip),%xmm0        # 2500 <_IO_stdin_used+0x500>
    1a0f:	00 
    1a10:	0f 29 05 09 29 00 00 	movaps %xmm0,0x2909(%rip)        # 4320 <Apulia+0x2c0>
    1a17:	66 0f 6f 05 f1 0a 00 	movdqa 0xaf1(%rip),%xmm0        # 2510 <_IO_stdin_used+0x510>
    1a1e:	00 
    1a1f:	0f 29 05 0a 29 00 00 	movaps %xmm0,0x290a(%rip)        # 4330 <Apulia+0x2d0>
    1a26:	66 0f 6f 05 f2 0a 00 	movdqa 0xaf2(%rip),%xmm0        # 2520 <_IO_stdin_used+0x520>
    1a2d:	00 
    1a2e:	0f 29 05 0b 29 00 00 	movaps %xmm0,0x290b(%rip)        # 4340 <Apulia+0x2e0>
    1a35:	66 0f 6f 05 f3 0a 00 	movdqa 0xaf3(%rip),%xmm0        # 2530 <_IO_stdin_used+0x530>
    1a3c:	00 
    1a3d:	0f 29 05 0c 29 00 00 	movaps %xmm0,0x290c(%rip)        # 4350 <Apulia+0x2f0>
    1a44:	66 0f 6f 05 f4 0a 00 	movdqa 0xaf4(%rip),%xmm0        # 2540 <_IO_stdin_used+0x540>
    1a4b:	00 
    1a4c:	0f 29 05 0d 29 00 00 	movaps %xmm0,0x290d(%rip)        # 4360 <Apulia+0x300>
    1a53:	66 0f 6f 05 f5 0a 00 	movdqa 0xaf5(%rip),%xmm0        # 2550 <_IO_stdin_used+0x550>
    1a5a:	00 
    1a5b:	0f 29 05 0e 29 00 00 	movaps %xmm0,0x290e(%rip)        # 4370 <Apulia+0x310>
    1a62:	66 0f 6f 05 f6 0a 00 	movdqa 0xaf6(%rip),%xmm0        # 2560 <_IO_stdin_used+0x560>
    1a69:	00 
    1a6a:	0f 29 05 0f 29 00 00 	movaps %xmm0,0x290f(%rip)        # 4380 <Apulia+0x320>
    1a71:	66 0f 6f 05 f7 0a 00 	movdqa 0xaf7(%rip),%xmm0        # 2570 <_IO_stdin_used+0x570>
    1a78:	00 
    1a79:	0f 29 05 10 29 00 00 	movaps %xmm0,0x2910(%rip)        # 4390 <Apulia+0x330>
    1a80:	66 0f 6f 05 f8 0a 00 	movdqa 0xaf8(%rip),%xmm0        # 2580 <_IO_stdin_used+0x580>
    1a87:	00 
    1a88:	0f 29 05 11 29 00 00 	movaps %xmm0,0x2911(%rip)        # 43a0 <Apulia+0x340>
    1a8f:	66 0f 6f 05 f9 0a 00 	movdqa 0xaf9(%rip),%xmm0        # 2590 <_IO_stdin_used+0x590>
    1a96:	00 
    1a97:	0f 29 05 12 29 00 00 	movaps %xmm0,0x2912(%rip)        # 43b0 <Apulia+0x350>
    1a9e:	66 0f 6f 05 fa 0a 00 	movdqa 0xafa(%rip),%xmm0        # 25a0 <_IO_stdin_used+0x5a0>
    1aa5:	00 
    1aa6:	0f 29 05 13 29 00 00 	movaps %xmm0,0x2913(%rip)        # 43c0 <Apulia+0x360>
    1aad:	66 0f 6f 05 fb 0a 00 	movdqa 0xafb(%rip),%xmm0        # 25b0 <_IO_stdin_used+0x5b0>
    1ab4:	00 
    1ab5:	0f 29 05 14 29 00 00 	movaps %xmm0,0x2914(%rip)        # 43d0 <Apulia+0x370>
    1abc:	66 0f 6f 05 fc 0a 00 	movdqa 0xafc(%rip),%xmm0        # 25c0 <_IO_stdin_used+0x5c0>
    1ac3:	00 
    1ac4:	0f 29 05 15 29 00 00 	movaps %xmm0,0x2915(%rip)        # 43e0 <Apulia+0x380>
    1acb:	66 0f 6f 05 fd 0a 00 	movdqa 0xafd(%rip),%xmm0        # 25d0 <_IO_stdin_used+0x5d0>
    1ad2:	00 
    1ad3:	0f 29 05 16 29 00 00 	movaps %xmm0,0x2916(%rip)        # 43f0 <Apulia+0x390>
    1ada:	66 0f 6f 05 fe 0a 00 	movdqa 0xafe(%rip),%xmm0        # 25e0 <_IO_stdin_used+0x5e0>
    1ae1:	00 
    1ae2:	0f 29 05 17 29 00 00 	movaps %xmm0,0x2917(%rip)        # 4400 <Apulia+0x3a0>
    1ae9:	66 0f 6f 05 ff 0a 00 	movdqa 0xaff(%rip),%xmm0        # 25f0 <_IO_stdin_used+0x5f0>
    1af0:	00 
    1af1:	0f 29 05 18 29 00 00 	movaps %xmm0,0x2918(%rip)        # 4410 <Apulia+0x3b0>
    1af8:	66 0f 6f 05 00 0b 00 	movdqa 0xb00(%rip),%xmm0        # 2600 <_IO_stdin_used+0x600>
    1aff:	00 
    1b00:	0f 29 05 19 29 00 00 	movaps %xmm0,0x2919(%rip)        # 4420 <Apulia+0x3c0>
    1b07:	66 0f 6f 05 01 0b 00 	movdqa 0xb01(%rip),%xmm0        # 2610 <_IO_stdin_used+0x610>
    1b0e:	00 
    1b0f:	0f 29 05 1a 29 00 00 	movaps %xmm0,0x291a(%rip)        # 4430 <Apulia+0x3d0>
    1b16:	66 0f 6f 05 02 0b 00 	movdqa 0xb02(%rip),%xmm0        # 2620 <_IO_stdin_used+0x620>
    1b1d:	00 
    1b1e:	0f 29 05 1b 29 00 00 	movaps %xmm0,0x291b(%rip)        # 4440 <Apulia+0x3e0>
    1b25:	66 0f 6f 05 03 0b 00 	movdqa 0xb03(%rip),%xmm0        # 2630 <_IO_stdin_used+0x630>
    1b2c:	00 
    1b2d:	0f 29 05 1c 29 00 00 	movaps %xmm0,0x291c(%rip)        # 4450 <Apulia+0x3f0>
    1b34:	c3                   	ret
    1b35:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1b3c:	00 00 00 
    1b3f:	90                   	nop

0000000000001b40 <_Z7Liguriaj>:
    1b40:	f3 0f 1e fa          	endbr64
    1b44:	48 ba 05 00 00 00 02 	movabs $0x200000005,%rdx
    1b4b:	00 00 00 
    1b4e:	89 ff                	mov    %edi,%edi
    1b50:	48 69 ff 8f bc 00 00 	imul   $0xbc8f,%rdi,%rdi
    1b57:	48 89 f8             	mov    %rdi,%rax
    1b5a:	48 f7 e2             	mul    %rdx
    1b5d:	48 89 f8             	mov    %rdi,%rax
    1b60:	48 29 d0             	sub    %rdx,%rax
    1b63:	48 d1 e8             	shr    $1,%rax
    1b66:	48 01 d0             	add    %rdx,%rax
    1b69:	48 c1 e8 1e          	shr    $0x1e,%rax
    1b6d:	48 89 c2             	mov    %rax,%rdx
    1b70:	48 c1 e2 1f          	shl    $0x1f,%rdx
    1b74:	48 29 c2             	sub    %rax,%rdx
    1b77:	48 89 f8             	mov    %rdi,%rax
    1b7a:	48 29 d0             	sub    %rdx,%rax
    1b7d:	c3                   	ret
    1b7e:	66 90                	xchg   %ax,%ax

0000000000001b80 <_Z8CalabriaPKcb>:
    1b80:	f3 0f 1e fa          	endbr64
    1b84:	41 57                	push   %r15
    1b86:	41 56                	push   %r14
    1b88:	41 55                	push   %r13
    1b8a:	41 54                	push   %r12
    1b8c:	55                   	push   %rbp
    1b8d:	48 89 fd             	mov    %rdi,%rbp
    1b90:	48 bf 05 00 00 00 02 	movabs $0x200000005,%rdi
    1b97:	00 00 00 
    1b9a:	53                   	push   %rbx
    1b9b:	48 81 ec 18 04 00 00 	sub    $0x418,%rsp
    1ba2:	48 8b 05 a7 24 00 00 	mov    0x24a7(%rip),%rax        # 4050 <Tuscany>
    1ba9:	48 8b 15 98 24 00 00 	mov    0x2498(%rip),%rdx        # 4048 <Umbria>
    1bb0:	4c 8d 64 24 10       	lea    0x10(%rsp),%r12
    1bb5:	89 74 24 08          	mov    %esi,0x8(%rsp)
    1bb9:	4c 8d 84 24 10 04 00 	lea    0x410(%rsp),%r8
    1bc0:	00 
    1bc1:	8b 00                	mov    (%rax),%eax
    1bc3:	4c 89 e6             	mov    %r12,%rsi
    1bc6:	c1 e0 10             	shl    $0x10,%eax
    1bc9:	03 02                	add    (%rdx),%eax
    1bcb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1bd0:	89 c1                	mov    %eax,%ecx
    1bd2:	48 83 c6 04          	add    $0x4,%rsi
    1bd6:	48 69 c9 8f bc 00 00 	imul   $0xbc8f,%rcx,%rcx
    1bdd:	48 89 c8             	mov    %rcx,%rax
    1be0:	48 f7 e7             	mul    %rdi
    1be3:	48 89 c8             	mov    %rcx,%rax
    1be6:	48 29 d0             	sub    %rdx,%rax
    1be9:	48 d1 e8             	shr    $1,%rax
    1bec:	48 01 c2             	add    %rax,%rdx
    1bef:	48 c1 ea 1e          	shr    $0x1e,%rdx
    1bf3:	48 89 d0             	mov    %rdx,%rax
    1bf6:	48 c1 e0 1f          	shl    $0x1f,%rax
    1bfa:	48 29 d0             	sub    %rdx,%rax
    1bfd:	48 29 c1             	sub    %rax,%rcx
    1c00:	89 4e fc             	mov    %ecx,-0x4(%rsi)
    1c03:	89 c8                	mov    %ecx,%eax
    1c05:	49 39 f0             	cmp    %rsi,%r8
    1c08:	75 c6                	jne    1bd0 <_Z8CalabriaPKcb+0x50>
    1c0a:	48 89 ef             	mov    %rbp,%rdi
    1c0d:	e8 de f4 ff ff       	call   10f0 <strlen@plt>
    1c12:	49 89 c5             	mov    %rax,%r13
    1c15:	48 85 c0             	test   %rax,%rax
    1c18:	0f 84 b5 00 00 00    	je     1cd3 <_Z8CalabriaPKcb+0x153>
    1c1e:	80 7c 24 08 00       	cmpb   $0x0,0x8(%rsp)
    1c23:	0f 85 ae 00 00 00    	jne    1cd7 <_Z8CalabriaPKcb+0x157>
    1c29:	45 31 c0             	xor    %r8d,%r8d
    1c2c:	45 31 f6             	xor    %r14d,%r14d
    1c2f:	4c 8d 3d 2a 24 00 00 	lea    0x242a(%rip),%r15        # 4060 <Apulia>
    1c36:	eb 0b                	jmp    1c43 <_Z8CalabriaPKcb+0xc3>
    1c38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1c3f:	00 
    1c40:	49 89 c0             	mov    %rax,%r8
    1c43:	42 0f b6 74 05 00    	movzbl 0x0(%rbp,%r8,1),%esi
    1c49:	43 8b 04 84          	mov    (%r12,%r8,4),%eax
    1c4d:	48 8d 14 f6          	lea    (%rsi,%rsi,8),%rdx
    1c51:	48 89 f7             	mov    %rsi,%rdi
    1c54:	48 8d 4c 96 17       	lea    0x17(%rsi,%rdx,4),%rcx
    1c59:	48 89 f2             	mov    %rsi,%rdx
    1c5c:	48 0f af ce          	imul   %rsi,%rcx
    1c60:	48 0f af d6          	imul   %rsi,%rdx
    1c64:	48 83 c1 09          	add    $0x9,%rcx
    1c68:	48 0f af ca          	imul   %rdx,%rcx
    1c6c:	31 d2                	xor    %edx,%edx
    1c6e:	48 8d 4c 0e 25       	lea    0x25(%rsi,%rcx,1),%rcx
    1c73:	48 f7 f1             	div    %rcx
    1c76:	0f b6 d2             	movzbl %dl,%edx
    1c79:	03 7c 94 10          	add    0x10(%rsp,%rdx,4),%edi
    1c7d:	41 3b 3c 97          	cmp    (%r15,%rdx,4),%edi
    1c81:	74 04                	je     1c87 <_Z8CalabriaPKcb+0x107>
    1c83:	41 83 c6 01          	add    $0x1,%r14d
    1c87:	49 8d 40 01          	lea    0x1(%r8),%rax
    1c8b:	49 39 c5             	cmp    %rax,%r13
    1c8e:	75 b0                	jne    1c40 <_Z8CalabriaPKcb+0xc0>
    1c90:	41 83 c0 01          	add    $0x1,%r8d
    1c94:	41 83 f8 14          	cmp    $0x14,%r8d
    1c98:	75 39                	jne    1cd3 <_Z8CalabriaPKcb+0x153>
    1c9a:	b8 01 00 00 00       	mov    $0x1,%eax
    1c9f:	45 85 f6             	test   %r14d,%r14d
    1ca2:	75 12                	jne    1cb6 <_Z8CalabriaPKcb+0x136>
    1ca4:	48 81 c4 18 04 00 00 	add    $0x418,%rsp
    1cab:	5b                   	pop    %rbx
    1cac:	5d                   	pop    %rbp
    1cad:	41 5c                	pop    %r12
    1caf:	41 5d                	pop    %r13
    1cb1:	41 5e                	pop    %r14
    1cb3:	41 5f                	pop    %r15
    1cb5:	c3                   	ret
    1cb6:	80 7c 24 08 00       	cmpb   $0x0,0x8(%rsp)
    1cbb:	74 16                	je     1cd3 <_Z8CalabriaPKcb+0x153>
    1cbd:	44 89 f2             	mov    %r14d,%edx
    1cc0:	48 8d 35 0b 0a 00 00 	lea    0xa0b(%rip),%rsi        # 26d2 <_IO_stdin_used+0x6d2>
    1cc7:	bf 01 00 00 00       	mov    $0x1,%edi
    1ccc:	31 c0                	xor    %eax,%eax
    1cce:	e8 0d f4 ff ff       	call   10e0 <__printf_chk@plt>
    1cd3:	31 c0                	xor    %eax,%eax
    1cd5:	eb cd                	jmp    1ca4 <_Z8CalabriaPKcb+0x124>
    1cd7:	31 db                	xor    %ebx,%ebx
    1cd9:	45 31 f6             	xor    %r14d,%r14d
    1cdc:	48 89 04 24          	mov    %rax,(%rsp)
    1ce0:	4c 8d 3d 79 23 00 00 	lea    0x2379(%rip),%r15        # 4060 <Apulia>
    1ce7:	44 89 74 24 0c       	mov    %r14d,0xc(%rsp)
    1cec:	49 89 de             	mov    %rbx,%r14
    1cef:	4c 89 e3             	mov    %r12,%rbx
    1cf2:	49 89 ec             	mov    %rbp,%r12
    1cf5:	eb 38                	jmp    1d2f <_Z8CalabriaPKcb+0x1af>
    1cf7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1cfe:	00 00 
    1d00:	44 89 e9             	mov    %r13d,%ecx
    1d03:	44 89 f2             	mov    %r14d,%edx
    1d06:	48 8d 35 6b 09 00 00 	lea    0x96b(%rip),%rsi        # 2678 <_IO_stdin_used+0x678>
    1d0d:	31 c0                	xor    %eax,%eax
    1d0f:	bf 01 00 00 00       	mov    $0x1,%edi
    1d14:	83 44 24 0c 01       	addl   $0x1,0xc(%rsp)
    1d19:	e8 c2 f3 ff ff       	call   10e0 <__printf_chk@plt>
    1d1e:	49 8d 46 01          	lea    0x1(%r14),%rax
    1d22:	48 39 04 24          	cmp    %rax,(%rsp)
    1d26:	0f 84 9b 00 00 00    	je     1dc7 <_Z8CalabriaPKcb+0x247>
    1d2c:	49 89 c6             	mov    %rax,%r14
    1d2f:	47 0f b6 04 34       	movzbl (%r12,%r14,1),%r8d
    1d34:	42 8b 04 b3          	mov    (%rbx,%r14,4),%eax
    1d38:	48 83 ec 08          	sub    $0x8,%rsp
    1d3c:	48 8d 35 fd 08 00 00 	lea    0x8fd(%rip),%rsi        # 2640 <_IO_stdin_used+0x640>
    1d43:	4b 8d 14 c0          	lea    (%r8,%r8,8),%rdx
    1d47:	48 89 c7             	mov    %rax,%rdi
    1d4a:	45 0f b6 e8          	movzbl %r8b,%r13d
    1d4e:	49 8d 4c 90 17       	lea    0x17(%r8,%rdx,4),%rcx
    1d53:	4c 89 c2             	mov    %r8,%rdx
    1d56:	57                   	push   %rdi
    1d57:	bf 01 00 00 00       	mov    $0x1,%edi
    1d5c:	49 0f af c8          	imul   %r8,%rcx
    1d60:	49 0f af d0          	imul   %r8,%rdx
    1d64:	48 83 c1 09          	add    $0x9,%rcx
    1d68:	48 0f af ca          	imul   %rdx,%rcx
    1d6c:	31 d2                	xor    %edx,%edx
    1d6e:	49 8d 4c 08 25       	lea    0x25(%r8,%rcx,1),%rcx
    1d73:	45 89 e8             	mov    %r13d,%r8d
    1d76:	48 f7 f1             	div    %rcx
    1d79:	44 89 e9             	mov    %r13d,%ecx
    1d7c:	31 c0                	xor    %eax,%eax
    1d7e:	0f b6 ea             	movzbl %dl,%ebp
    1d81:	44 89 f2             	mov    %r14d,%edx
    1d84:	41 89 e9             	mov    %ebp,%r9d
    1d87:	e8 54 f3 ff ff       	call   10e0 <__printf_chk@plt>
    1d8c:	44 8b 4c ac 20       	mov    0x20(%rsp,%rbp,4),%r9d
    1d91:	45 8b 04 af          	mov    (%r15,%rbp,4),%r8d
    1d95:	58                   	pop    %rax
    1d96:	5a                   	pop    %rdx
    1d97:	45 01 e9             	add    %r13d,%r9d
    1d9a:	45 39 c8             	cmp    %r9d,%r8d
    1d9d:	0f 85 5d ff ff ff    	jne    1d00 <_Z8CalabriaPKcb+0x180>
    1da3:	44 89 ea             	mov    %r13d,%edx
    1da6:	48 8d 35 03 09 00 00 	lea    0x903(%rip),%rsi        # 26b0 <_IO_stdin_used+0x6b0>
    1dad:	bf 01 00 00 00       	mov    $0x1,%edi
    1db2:	31 c0                	xor    %eax,%eax
    1db4:	e8 27 f3 ff ff       	call   10e0 <__printf_chk@plt>
    1db9:	49 8d 46 01          	lea    0x1(%r14),%rax
    1dbd:	48 39 04 24          	cmp    %rax,(%rsp)
    1dc1:	0f 85 65 ff ff ff    	jne    1d2c <_Z8CalabriaPKcb+0x1ac>
    1dc7:	4c 89 f3             	mov    %r14,%rbx
    1dca:	44 8b 74 24 0c       	mov    0xc(%rsp),%r14d
    1dcf:	44 8d 43 01          	lea    0x1(%rbx),%r8d
    1dd3:	e9 bc fe ff ff       	jmp    1c94 <_Z8CalabriaPKcb+0x114>
    1dd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1ddf:	00 

0000000000001de0 <__libc_csu_init>:
    1de0:	f3 0f 1e fa          	endbr64
    1de4:	41 57                	push   %r15
    1de6:	4c 8d 3d 73 1f 00 00 	lea    0x1f73(%rip),%r15        # 3d60 <__frame_dummy_init_array_entry>
    1ded:	41 56                	push   %r14
    1def:	49 89 d6             	mov    %rdx,%r14
    1df2:	41 55                	push   %r13
    1df4:	49 89 f5             	mov    %rsi,%r13
    1df7:	41 54                	push   %r12
    1df9:	41 89 fc             	mov    %edi,%r12d
    1dfc:	55                   	push   %rbp
    1dfd:	48 8d 2d 64 1f 00 00 	lea    0x1f64(%rip),%rbp        # 3d68 <__do_global_dtors_aux_fini_array_entry>
    1e04:	53                   	push   %rbx
    1e05:	4c 29 fd             	sub    %r15,%rbp
    1e08:	48 83 ec 08          	sub    $0x8,%rsp
    1e0c:	e8 ef f1 ff ff       	call   1000 <_init>
    1e11:	48 c1 fd 03          	sar    $0x3,%rbp
    1e15:	74 1f                	je     1e36 <__libc_csu_init+0x56>
    1e17:	31 db                	xor    %ebx,%ebx
    1e19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1e20:	4c 89 f2             	mov    %r14,%rdx
    1e23:	4c 89 ee             	mov    %r13,%rsi
    1e26:	44 89 e7             	mov    %r12d,%edi
    1e29:	41 ff 14 df          	call   *(%r15,%rbx,8)
    1e2d:	48 83 c3 01          	add    $0x1,%rbx
    1e31:	48 39 dd             	cmp    %rbx,%rbp
    1e34:	75 ea                	jne    1e20 <__libc_csu_init+0x40>
    1e36:	48 83 c4 08          	add    $0x8,%rsp
    1e3a:	5b                   	pop    %rbx
    1e3b:	5d                   	pop    %rbp
    1e3c:	41 5c                	pop    %r12
    1e3e:	41 5d                	pop    %r13
    1e40:	41 5e                	pop    %r14
    1e42:	41 5f                	pop    %r15
    1e44:	c3                   	ret
    1e45:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1e4c:	00 00 00 00 

0000000000001e50 <__libc_csu_fini>:
    1e50:	f3 0f 1e fa          	endbr64
    1e54:	c3                   	ret

Disassembly of section .fini:

0000000000001e58 <_fini>:
    1e58:	f3 0f 1e fa          	endbr64
    1e5c:	48 83 ec 08          	sub    $0x8,%rsp
    1e60:	48 83 c4 08          	add    $0x8,%rsp
    1e64:	c3                   	ret
