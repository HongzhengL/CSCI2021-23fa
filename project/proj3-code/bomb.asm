
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000003000 <_init>:
    3000:	f3 0f 1e fa          	endbr64 
    3004:	48 83 ec 08          	sub    $0x8,%rsp
    3008:	48 8b 05 d9 4f 00 00 	mov    0x4fd9(%rip),%rax        # 7fe8 <__gmon_start__>
    300f:	48 85 c0             	test   %rax,%rax
    3012:	74 02                	je     3016 <_init+0x16>
    3014:	ff d0                	callq  *%rax
    3016:	48 83 c4 08          	add    $0x8,%rsp
    301a:	c3                   	retq   

Disassembly of section .plt:

0000000000003020 <.plt>:
    3020:	ff 35 c2 4e 00 00    	pushq  0x4ec2(%rip)        # 7ee8 <_GLOBAL_OFFSET_TABLE_+0x8>
    3026:	f2 ff 25 c3 4e 00 00 	bnd jmpq *0x4ec3(%rip)        # 7ef0 <_GLOBAL_OFFSET_TABLE_+0x10>
    302d:	0f 1f 00             	nopl   (%rax)
    3030:	f3 0f 1e fa          	endbr64 
    3034:	68 00 00 00 00       	pushq  $0x0
    3039:	f2 e9 e1 ff ff ff    	bnd jmpq 3020 <.plt>
    303f:	90                   	nop
    3040:	f3 0f 1e fa          	endbr64 
    3044:	68 01 00 00 00       	pushq  $0x1
    3049:	f2 e9 d1 ff ff ff    	bnd jmpq 3020 <.plt>
    304f:	90                   	nop
    3050:	f3 0f 1e fa          	endbr64 
    3054:	68 02 00 00 00       	pushq  $0x2
    3059:	f2 e9 c1 ff ff ff    	bnd jmpq 3020 <.plt>
    305f:	90                   	nop
    3060:	f3 0f 1e fa          	endbr64 
    3064:	68 03 00 00 00       	pushq  $0x3
    3069:	f2 e9 b1 ff ff ff    	bnd jmpq 3020 <.plt>
    306f:	90                   	nop
    3070:	f3 0f 1e fa          	endbr64 
    3074:	68 04 00 00 00       	pushq  $0x4
    3079:	f2 e9 a1 ff ff ff    	bnd jmpq 3020 <.plt>
    307f:	90                   	nop
    3080:	f3 0f 1e fa          	endbr64 
    3084:	68 05 00 00 00       	pushq  $0x5
    3089:	f2 e9 91 ff ff ff    	bnd jmpq 3020 <.plt>
    308f:	90                   	nop
    3090:	f3 0f 1e fa          	endbr64 
    3094:	68 06 00 00 00       	pushq  $0x6
    3099:	f2 e9 81 ff ff ff    	bnd jmpq 3020 <.plt>
    309f:	90                   	nop
    30a0:	f3 0f 1e fa          	endbr64 
    30a4:	68 07 00 00 00       	pushq  $0x7
    30a9:	f2 e9 71 ff ff ff    	bnd jmpq 3020 <.plt>
    30af:	90                   	nop
    30b0:	f3 0f 1e fa          	endbr64 
    30b4:	68 08 00 00 00       	pushq  $0x8
    30b9:	f2 e9 61 ff ff ff    	bnd jmpq 3020 <.plt>
    30bf:	90                   	nop
    30c0:	f3 0f 1e fa          	endbr64 
    30c4:	68 09 00 00 00       	pushq  $0x9
    30c9:	f2 e9 51 ff ff ff    	bnd jmpq 3020 <.plt>
    30cf:	90                   	nop
    30d0:	f3 0f 1e fa          	endbr64 
    30d4:	68 0a 00 00 00       	pushq  $0xa
    30d9:	f2 e9 41 ff ff ff    	bnd jmpq 3020 <.plt>
    30df:	90                   	nop
    30e0:	f3 0f 1e fa          	endbr64 
    30e4:	68 0b 00 00 00       	pushq  $0xb
    30e9:	f2 e9 31 ff ff ff    	bnd jmpq 3020 <.plt>
    30ef:	90                   	nop
    30f0:	f3 0f 1e fa          	endbr64 
    30f4:	68 0c 00 00 00       	pushq  $0xc
    30f9:	f2 e9 21 ff ff ff    	bnd jmpq 3020 <.plt>
    30ff:	90                   	nop
    3100:	f3 0f 1e fa          	endbr64 
    3104:	68 0d 00 00 00       	pushq  $0xd
    3109:	f2 e9 11 ff ff ff    	bnd jmpq 3020 <.plt>
    310f:	90                   	nop
    3110:	f3 0f 1e fa          	endbr64 
    3114:	68 0e 00 00 00       	pushq  $0xe
    3119:	f2 e9 01 ff ff ff    	bnd jmpq 3020 <.plt>
    311f:	90                   	nop
    3120:	f3 0f 1e fa          	endbr64 
    3124:	68 0f 00 00 00       	pushq  $0xf
    3129:	f2 e9 f1 fe ff ff    	bnd jmpq 3020 <.plt>
    312f:	90                   	nop
    3130:	f3 0f 1e fa          	endbr64 
    3134:	68 10 00 00 00       	pushq  $0x10
    3139:	f2 e9 e1 fe ff ff    	bnd jmpq 3020 <.plt>
    313f:	90                   	nop
    3140:	f3 0f 1e fa          	endbr64 
    3144:	68 11 00 00 00       	pushq  $0x11
    3149:	f2 e9 d1 fe ff ff    	bnd jmpq 3020 <.plt>
    314f:	90                   	nop
    3150:	f3 0f 1e fa          	endbr64 
    3154:	68 12 00 00 00       	pushq  $0x12
    3159:	f2 e9 c1 fe ff ff    	bnd jmpq 3020 <.plt>
    315f:	90                   	nop
    3160:	f3 0f 1e fa          	endbr64 
    3164:	68 13 00 00 00       	pushq  $0x13
    3169:	f2 e9 b1 fe ff ff    	bnd jmpq 3020 <.plt>
    316f:	90                   	nop
    3170:	f3 0f 1e fa          	endbr64 
    3174:	68 14 00 00 00       	pushq  $0x14
    3179:	f2 e9 a1 fe ff ff    	bnd jmpq 3020 <.plt>
    317f:	90                   	nop
    3180:	f3 0f 1e fa          	endbr64 
    3184:	68 15 00 00 00       	pushq  $0x15
    3189:	f2 e9 91 fe ff ff    	bnd jmpq 3020 <.plt>
    318f:	90                   	nop
    3190:	f3 0f 1e fa          	endbr64 
    3194:	68 16 00 00 00       	pushq  $0x16
    3199:	f2 e9 81 fe ff ff    	bnd jmpq 3020 <.plt>
    319f:	90                   	nop
    31a0:	f3 0f 1e fa          	endbr64 
    31a4:	68 17 00 00 00       	pushq  $0x17
    31a9:	f2 e9 71 fe ff ff    	bnd jmpq 3020 <.plt>
    31af:	90                   	nop
    31b0:	f3 0f 1e fa          	endbr64 
    31b4:	68 18 00 00 00       	pushq  $0x18
    31b9:	f2 e9 61 fe ff ff    	bnd jmpq 3020 <.plt>
    31bf:	90                   	nop
    31c0:	f3 0f 1e fa          	endbr64 
    31c4:	68 19 00 00 00       	pushq  $0x19
    31c9:	f2 e9 51 fe ff ff    	bnd jmpq 3020 <.plt>
    31cf:	90                   	nop
    31d0:	f3 0f 1e fa          	endbr64 
    31d4:	68 1a 00 00 00       	pushq  $0x1a
    31d9:	f2 e9 41 fe ff ff    	bnd jmpq 3020 <.plt>
    31df:	90                   	nop
    31e0:	f3 0f 1e fa          	endbr64 
    31e4:	68 1b 00 00 00       	pushq  $0x1b
    31e9:	f2 e9 31 fe ff ff    	bnd jmpq 3020 <.plt>
    31ef:	90                   	nop

Disassembly of section .plt.got:

00000000000031f0 <__cxa_finalize@plt>:
    31f0:	f3 0f 1e fa          	endbr64 
    31f4:	f2 ff 25 fd 4d 00 00 	bnd jmpq *0x4dfd(%rip)        # 7ff8 <__cxa_finalize@GLIBC_2.2.5>
    31fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000003200 <getenv@plt>:
    3200:	f3 0f 1e fa          	endbr64 
    3204:	f2 ff 25 ed 4c 00 00 	bnd jmpq *0x4ced(%rip)        # 7ef8 <getenv@GLIBC_2.2.5>
    320b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003210 <__snprintf_chk@plt>:
    3210:	f3 0f 1e fa          	endbr64 
    3214:	f2 ff 25 e5 4c 00 00 	bnd jmpq *0x4ce5(%rip)        # 7f00 <__snprintf_chk@GLIBC_2.3.4>
    321b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003220 <strcasecmp@plt>:
    3220:	f3 0f 1e fa          	endbr64 
    3224:	f2 ff 25 dd 4c 00 00 	bnd jmpq *0x4cdd(%rip)        # 7f08 <strcasecmp@GLIBC_2.2.5>
    322b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003230 <__errno_location@plt>:
    3230:	f3 0f 1e fa          	endbr64 
    3234:	f2 ff 25 d5 4c 00 00 	bnd jmpq *0x4cd5(%rip)        # 7f10 <__errno_location@GLIBC_2.2.5>
    323b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003240 <strcpy@plt>:
    3240:	f3 0f 1e fa          	endbr64 
    3244:	f2 ff 25 cd 4c 00 00 	bnd jmpq *0x4ccd(%rip)        # 7f18 <strcpy@GLIBC_2.2.5>
    324b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003250 <puts@plt>:
    3250:	f3 0f 1e fa          	endbr64 
    3254:	f2 ff 25 c5 4c 00 00 	bnd jmpq *0x4cc5(%rip)        # 7f20 <puts@GLIBC_2.2.5>
    325b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003260 <write@plt>:
    3260:	f3 0f 1e fa          	endbr64 
    3264:	f2 ff 25 bd 4c 00 00 	bnd jmpq *0x4cbd(%rip)        # 7f28 <write@GLIBC_2.2.5>
    326b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003270 <__stack_chk_fail@plt>:
    3270:	f3 0f 1e fa          	endbr64 
    3274:	f2 ff 25 b5 4c 00 00 	bnd jmpq *0x4cb5(%rip)        # 7f30 <__stack_chk_fail@GLIBC_2.4>
    327b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003280 <alarm@plt>:
    3280:	f3 0f 1e fa          	endbr64 
    3284:	f2 ff 25 ad 4c 00 00 	bnd jmpq *0x4cad(%rip)        # 7f38 <alarm@GLIBC_2.2.5>
    328b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003290 <close@plt>:
    3290:	f3 0f 1e fa          	endbr64 
    3294:	f2 ff 25 a5 4c 00 00 	bnd jmpq *0x4ca5(%rip)        # 7f40 <close@GLIBC_2.2.5>
    329b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000032a0 <read@plt>:
    32a0:	f3 0f 1e fa          	endbr64 
    32a4:	f2 ff 25 9d 4c 00 00 	bnd jmpq *0x4c9d(%rip)        # 7f48 <read@GLIBC_2.2.5>
    32ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000032b0 <fgets@plt>:
    32b0:	f3 0f 1e fa          	endbr64 
    32b4:	f2 ff 25 95 4c 00 00 	bnd jmpq *0x4c95(%rip)        # 7f50 <fgets@GLIBC_2.2.5>
    32bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000032c0 <signal@plt>:
    32c0:	f3 0f 1e fa          	endbr64 
    32c4:	f2 ff 25 8d 4c 00 00 	bnd jmpq *0x4c8d(%rip)        # 7f58 <signal@GLIBC_2.2.5>
    32cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000032d0 <gethostbyname@plt>:
    32d0:	f3 0f 1e fa          	endbr64 
    32d4:	f2 ff 25 85 4c 00 00 	bnd jmpq *0x4c85(%rip)        # 7f60 <gethostbyname@GLIBC_2.2.5>
    32db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000032e0 <__memmove_chk@plt>:
    32e0:	f3 0f 1e fa          	endbr64 
    32e4:	f2 ff 25 7d 4c 00 00 	bnd jmpq *0x4c7d(%rip)        # 7f68 <__memmove_chk@GLIBC_2.3.4>
    32eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000032f0 <strtol@plt>:
    32f0:	f3 0f 1e fa          	endbr64 
    32f4:	f2 ff 25 75 4c 00 00 	bnd jmpq *0x4c75(%rip)        # 7f70 <strtol@GLIBC_2.2.5>
    32fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003300 <fflush@plt>:
    3300:	f3 0f 1e fa          	endbr64 
    3304:	f2 ff 25 6d 4c 00 00 	bnd jmpq *0x4c6d(%rip)        # 7f78 <fflush@GLIBC_2.2.5>
    330b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003310 <__isoc99_sscanf@plt>:
    3310:	f3 0f 1e fa          	endbr64 
    3314:	f2 ff 25 65 4c 00 00 	bnd jmpq *0x4c65(%rip)        # 7f80 <__isoc99_sscanf@GLIBC_2.7>
    331b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003320 <__printf_chk@plt>:
    3320:	f3 0f 1e fa          	endbr64 
    3324:	f2 ff 25 5d 4c 00 00 	bnd jmpq *0x4c5d(%rip)        # 7f88 <__printf_chk@GLIBC_2.3.4>
    332b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003330 <fopen@plt>:
    3330:	f3 0f 1e fa          	endbr64 
    3334:	f2 ff 25 55 4c 00 00 	bnd jmpq *0x4c55(%rip)        # 7f90 <fopen@GLIBC_2.2.5>
    333b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003340 <gethostname@plt>:
    3340:	f3 0f 1e fa          	endbr64 
    3344:	f2 ff 25 4d 4c 00 00 	bnd jmpq *0x4c4d(%rip)        # 7f98 <gethostname@GLIBC_2.2.5>
    334b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003350 <exit@plt>:
    3350:	f3 0f 1e fa          	endbr64 
    3354:	f2 ff 25 45 4c 00 00 	bnd jmpq *0x4c45(%rip)        # 7fa0 <exit@GLIBC_2.2.5>
    335b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003360 <connect@plt>:
    3360:	f3 0f 1e fa          	endbr64 
    3364:	f2 ff 25 3d 4c 00 00 	bnd jmpq *0x4c3d(%rip)        # 7fa8 <connect@GLIBC_2.2.5>
    336b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003370 <__fprintf_chk@plt>:
    3370:	f3 0f 1e fa          	endbr64 
    3374:	f2 ff 25 35 4c 00 00 	bnd jmpq *0x4c35(%rip)        # 7fb0 <__fprintf_chk@GLIBC_2.3.4>
    337b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003380 <sleep@plt>:
    3380:	f3 0f 1e fa          	endbr64 
    3384:	f2 ff 25 2d 4c 00 00 	bnd jmpq *0x4c2d(%rip)        # 7fb8 <sleep@GLIBC_2.2.5>
    338b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003390 <__ctype_b_loc@plt>:
    3390:	f3 0f 1e fa          	endbr64 
    3394:	f2 ff 25 25 4c 00 00 	bnd jmpq *0x4c25(%rip)        # 7fc0 <__ctype_b_loc@GLIBC_2.3>
    339b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000033a0 <__sprintf_chk@plt>:
    33a0:	f3 0f 1e fa          	endbr64 
    33a4:	f2 ff 25 1d 4c 00 00 	bnd jmpq *0x4c1d(%rip)        # 7fc8 <__sprintf_chk@GLIBC_2.3.4>
    33ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000033b0 <socket@plt>:
    33b0:	f3 0f 1e fa          	endbr64 
    33b4:	f2 ff 25 15 4c 00 00 	bnd jmpq *0x4c15(%rip)        # 7fd0 <socket@GLIBC_2.2.5>
    33bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000033c0 <_start>:
    33c0:	f3 0f 1e fa          	endbr64 
    33c4:	31 ed                	xor    %ebp,%ebp
    33c6:	49 89 d1             	mov    %rdx,%r9
    33c9:	5e                   	pop    %rsi
    33ca:	48 89 e2             	mov    %rsp,%rdx
    33cd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    33d1:	50                   	push   %rax
    33d2:	54                   	push   %rsp
    33d3:	4c 8d 05 b6 1a 00 00 	lea    0x1ab6(%rip),%r8        # 4e90 <__libc_csu_fini>
    33da:	48 8d 0d 3f 1a 00 00 	lea    0x1a3f(%rip),%rcx        # 4e20 <__libc_csu_init>
    33e1:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 34a9 <main>
    33e8:	ff 15 f2 4b 00 00    	callq  *0x4bf2(%rip)        # 7fe0 <__libc_start_main@GLIBC_2.2.5>
    33ee:	f4                   	hlt    
    33ef:	90                   	nop

00000000000033f0 <deregister_tm_clones>:
    33f0:	48 8d 3d 89 5e 00 00 	lea    0x5e89(%rip),%rdi        # 9280 <stdout@@GLIBC_2.2.5>
    33f7:	48 8d 05 82 5e 00 00 	lea    0x5e82(%rip),%rax        # 9280 <stdout@@GLIBC_2.2.5>
    33fe:	48 39 f8             	cmp    %rdi,%rax
    3401:	74 15                	je     3418 <deregister_tm_clones+0x28>
    3403:	48 8b 05 ce 4b 00 00 	mov    0x4bce(%rip),%rax        # 7fd8 <_ITM_deregisterTMCloneTable>
    340a:	48 85 c0             	test   %rax,%rax
    340d:	74 09                	je     3418 <deregister_tm_clones+0x28>
    340f:	ff e0                	jmpq   *%rax
    3411:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3418:	c3                   	retq   
    3419:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000003420 <register_tm_clones>:
    3420:	48 8d 3d 59 5e 00 00 	lea    0x5e59(%rip),%rdi        # 9280 <stdout@@GLIBC_2.2.5>
    3427:	48 8d 35 52 5e 00 00 	lea    0x5e52(%rip),%rsi        # 9280 <stdout@@GLIBC_2.2.5>
    342e:	48 29 fe             	sub    %rdi,%rsi
    3431:	48 89 f0             	mov    %rsi,%rax
    3434:	48 c1 ee 3f          	shr    $0x3f,%rsi
    3438:	48 c1 f8 03          	sar    $0x3,%rax
    343c:	48 01 c6             	add    %rax,%rsi
    343f:	48 d1 fe             	sar    %rsi
    3442:	74 14                	je     3458 <register_tm_clones+0x38>
    3444:	48 8b 05 a5 4b 00 00 	mov    0x4ba5(%rip),%rax        # 7ff0 <_ITM_registerTMCloneTable>
    344b:	48 85 c0             	test   %rax,%rax
    344e:	74 08                	je     3458 <register_tm_clones+0x38>
    3450:	ff e0                	jmpq   *%rax
    3452:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3458:	c3                   	retq   
    3459:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000003460 <__do_global_dtors_aux>:
    3460:	f3 0f 1e fa          	endbr64 
    3464:	80 3d 3d 5e 00 00 00 	cmpb   $0x0,0x5e3d(%rip)        # 92a8 <completed.8061>
    346b:	75 2b                	jne    3498 <__do_global_dtors_aux+0x38>
    346d:	55                   	push   %rbp
    346e:	48 83 3d 82 4b 00 00 	cmpq   $0x0,0x4b82(%rip)        # 7ff8 <__cxa_finalize@GLIBC_2.2.5>
    3475:	00 
    3476:	48 89 e5             	mov    %rsp,%rbp
    3479:	74 0c                	je     3487 <__do_global_dtors_aux+0x27>
    347b:	48 8b 3d 86 4b 00 00 	mov    0x4b86(%rip),%rdi        # 8008 <__dso_handle>
    3482:	e8 69 fd ff ff       	callq  31f0 <__cxa_finalize@plt>
    3487:	e8 64 ff ff ff       	callq  33f0 <deregister_tm_clones>
    348c:	c6 05 15 5e 00 00 01 	movb   $0x1,0x5e15(%rip)        # 92a8 <completed.8061>
    3493:	5d                   	pop    %rbp
    3494:	c3                   	retq   
    3495:	0f 1f 00             	nopl   (%rax)
    3498:	c3                   	retq   
    3499:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000034a0 <frame_dummy>:
    34a0:	f3 0f 1e fa          	endbr64 
    34a4:	e9 77 ff ff ff       	jmpq   3420 <register_tm_clones>

00000000000034a9 <main>:
    34a9:	f3 0f 1e fa          	endbr64 
    34ad:	53                   	push   %rbx
    34ae:	83 ff 01             	cmp    $0x1,%edi
    34b1:	0f 84 f8 00 00 00    	je     35af <main+0x106>
    34b7:	48 89 f3             	mov    %rsi,%rbx
    34ba:	83 ff 02             	cmp    $0x2,%edi
    34bd:	0f 85 21 01 00 00    	jne    35e4 <main+0x13b>
    34c3:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    34c7:	48 8d 35 1d 20 00 00 	lea    0x201d(%rip),%rsi        # 54eb <array.3477+0x33b>
    34ce:	e8 5d fe ff ff       	callq  3330 <fopen@plt>
    34d3:	48 89 05 d6 5d 00 00 	mov    %rax,0x5dd6(%rip)        # 92b0 <infile>
    34da:	48 85 c0             	test   %rax,%rax
    34dd:	0f 84 df 00 00 00    	je     35c2 <main+0x119>
    34e3:	e8 a2 06 00 00       	callq  3b8a <initialize_bomb>
    34e8:	48 8d 3d 99 1b 00 00 	lea    0x1b99(%rip),%rdi        # 5088 <_IO_stdin_used+0x88>
    34ef:	e8 5c fd ff ff       	callq  3250 <puts@plt>
    34f4:	48 8d 3d cd 1b 00 00 	lea    0x1bcd(%rip),%rdi        # 50c8 <_IO_stdin_used+0xc8>
    34fb:	e8 50 fd ff ff       	callq  3250 <puts@plt>
    3500:	e8 f6 09 00 00       	callq  3efb <read_line>
    3505:	48 89 c7             	mov    %rax,%rdi
    3508:	e8 fa 00 00 00       	callq  3607 <phase_1>
    350d:	e8 31 0b 00 00       	callq  4043 <phase_defused>
    3512:	48 8d 3d df 1b 00 00 	lea    0x1bdf(%rip),%rdi        # 50f8 <_IO_stdin_used+0xf8>
    3519:	e8 32 fd ff ff       	callq  3250 <puts@plt>
    351e:	e8 d8 09 00 00       	callq  3efb <read_line>
    3523:	48 89 c7             	mov    %rax,%rdi
    3526:	e8 00 01 00 00       	callq  362b <phase_2>
    352b:	e8 13 0b 00 00       	callq  4043 <phase_defused>
    3530:	48 8d 3d 04 1b 00 00 	lea    0x1b04(%rip),%rdi        # 503b <_IO_stdin_used+0x3b>
    3537:	e8 14 fd ff ff       	callq  3250 <puts@plt>
    353c:	e8 ba 09 00 00       	callq  3efb <read_line>
    3541:	48 89 c7             	mov    %rax,%rdi
    3544:	e8 56 01 00 00       	callq  369f <phase_3>
    3549:	e8 f5 0a 00 00       	callq  4043 <phase_defused>
    354e:	48 8d 3d 04 1b 00 00 	lea    0x1b04(%rip),%rdi        # 5059 <_IO_stdin_used+0x59>
    3555:	e8 f6 fc ff ff       	callq  3250 <puts@plt>
    355a:	e8 9c 09 00 00       	callq  3efb <read_line>
    355f:	48 89 c7             	mov    %rax,%rdi
    3562:	e8 27 02 00 00       	callq  378e <phase_4>
    3567:	e8 d7 0a 00 00       	callq  4043 <phase_defused>
    356c:	48 8d 3d b5 1b 00 00 	lea    0x1bb5(%rip),%rdi        # 5128 <_IO_stdin_used+0x128>
    3573:	e8 d8 fc ff ff       	callq  3250 <puts@plt>
    3578:	e8 7e 09 00 00       	callq  3efb <read_line>
    357d:	48 89 c7             	mov    %rax,%rdi
    3580:	e8 82 02 00 00       	callq  3807 <phase_5>
    3585:	e8 b9 0a 00 00       	callq  4043 <phase_defused>
    358a:	48 8d 3d d7 1a 00 00 	lea    0x1ad7(%rip),%rdi        # 5068 <_IO_stdin_used+0x68>
    3591:	e8 ba fc ff ff       	callq  3250 <puts@plt>
    3596:	e8 60 09 00 00       	callq  3efb <read_line>
    359b:	48 89 c7             	mov    %rax,%rdi
    359e:	e8 11 03 00 00       	callq  38b4 <phase_6>
    35a3:	e8 9b 0a 00 00       	callq  4043 <phase_defused>
    35a8:	b8 00 00 00 00       	mov    $0x0,%eax
    35ad:	5b                   	pop    %rbx
    35ae:	c3                   	retq   
    35af:	48 8b 05 da 5c 00 00 	mov    0x5cda(%rip),%rax        # 9290 <stdin@@GLIBC_2.2.5>
    35b6:	48 89 05 f3 5c 00 00 	mov    %rax,0x5cf3(%rip)        # 92b0 <infile>
    35bd:	e9 21 ff ff ff       	jmpq   34e3 <main+0x3a>
    35c2:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    35c6:	48 8b 13             	mov    (%rbx),%rdx
    35c9:	48 8d 35 34 1a 00 00 	lea    0x1a34(%rip),%rsi        # 5004 <_IO_stdin_used+0x4>
    35d0:	bf 01 00 00 00       	mov    $0x1,%edi
    35d5:	e8 46 fd ff ff       	callq  3320 <__printf_chk@plt>
    35da:	bf 08 00 00 00       	mov    $0x8,%edi
    35df:	e8 6c fd ff ff       	callq  3350 <exit@plt>
    35e4:	48 8b 16             	mov    (%rsi),%rdx
    35e7:	48 8d 35 33 1a 00 00 	lea    0x1a33(%rip),%rsi        # 5021 <_IO_stdin_used+0x21>
    35ee:	bf 01 00 00 00       	mov    $0x1,%edi
    35f3:	b8 00 00 00 00       	mov    $0x0,%eax
    35f8:	e8 23 fd ff ff       	callq  3320 <__printf_chk@plt>
    35fd:	bf 08 00 00 00       	mov    $0x8,%edi
    3602:	e8 49 fd ff ff       	callq  3350 <exit@plt>

0000000000003607 <phase_1>:
    3607:	f3 0f 1e fa          	endbr64 
    360b:	48 83 ec 08          	sub    $0x8,%rsp
    360f:	48 8d 35 3a 1b 00 00 	lea    0x1b3a(%rip),%rsi        # 5150 <_IO_stdin_used+0x150>
    3616:	e8 0f 05 00 00       	callq  3b2a <strings_not_equal>
    361b:	85 c0                	test   %eax,%eax
    361d:	75 05                	jne    3624 <phase_1+0x1d>
    361f:	48 83 c4 08          	add    $0x8,%rsp
    3623:	c3                   	retq   
    3624:	e8 4b 08 00 00       	callq  3e74 <explode_bomb>
    3629:	eb f4                	jmp    361f <phase_1+0x18>

000000000000362b <phase_2>:
    362b:	f3 0f 1e fa          	endbr64 
    362f:	55                   	push   %rbp
    3630:	53                   	push   %rbx
    3631:	48 83 ec 28          	sub    $0x28,%rsp
    3635:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    363c:	00 00 
    363e:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    3643:	31 c0                	xor    %eax,%eax
    3645:	48 89 e6             	mov    %rsp,%rsi
    3648:	e8 69 08 00 00       	callq  3eb6 <read_six_numbers>
    364d:	83 3c 24 64          	cmpl   $0x64,(%rsp)
    3651:	75 07                	jne    365a <phase_2+0x2f>
    3653:	83 7c 24 04 4b       	cmpl   $0x4b,0x4(%rsp)
    3658:	74 05                	je     365f <phase_2+0x34>
    365a:	e8 15 08 00 00       	callq  3e74 <explode_bomb>
    365f:	48 89 e3             	mov    %rsp,%rbx
    3662:	48 8d 6c 24 10       	lea    0x10(%rsp),%rbp
    3667:	eb 0e                	jmp    3677 <phase_2+0x4c>
    3669:	e8 06 08 00 00       	callq  3e74 <explode_bomb>
    366e:	48 83 c3 04          	add    $0x4,%rbx
    3672:	48 39 eb             	cmp    %rbp,%rbx
    3675:	74 0c                	je     3683 <phase_2+0x58>
    3677:	8b 03                	mov    (%rbx),%eax
    3679:	2b 43 04             	sub    0x4(%rbx),%eax
    367c:	39 43 08             	cmp    %eax,0x8(%rbx)
    367f:	74 ed                	je     366e <phase_2+0x43>
    3681:	eb e6                	jmp    3669 <phase_2+0x3e>
    3683:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    3688:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    368f:	00 00 
    3691:	75 07                	jne    369a <phase_2+0x6f>
    3693:	48 83 c4 28          	add    $0x28,%rsp
    3697:	5b                   	pop    %rbx
    3698:	5d                   	pop    %rbp
    3699:	c3                   	retq   
    369a:	e8 d1 fb ff ff       	callq  3270 <__stack_chk_fail@plt>

000000000000369f <phase_3>:
    369f:	f3 0f 1e fa          	endbr64 
    36a3:	48 83 ec 78          	sub    $0x78,%rsp
    36a7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    36ae:	00 00 
    36b0:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    36b5:	31 c0                	xor    %eax,%eax
    36b7:	eb 15                	jmp    36ce <phase_3+0x2f>
    36b9:	89 c2                	mov    %eax,%edx
    36bb:	0f af d0             	imul   %eax,%edx
    36be:	01 d2                	add    %edx,%edx
    36c0:	89 54 84 10          	mov    %edx,0x10(%rsp,%rax,4)
    36c4:	48 83 c0 01          	add    $0x1,%rax
    36c8:	48 83 f8 14          	cmp    $0x14,%rax
    36cc:	74 0d                	je     36db <phase_3+0x3c>
    36ce:	a8 01                	test   $0x1,%al
    36d0:	75 e7                	jne    36b9 <phase_3+0x1a>  # jump if odd
    36d2:	89 c2                	mov    %eax,%edx
    36d4:	0f af d0             	imul   %eax,%edx
    36d7:	01 c2                	add    %eax,%edx
    36d9:	eb e5                	jmp    36c0 <phase_3+0x21>
    36db:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%rsp)
    36e2:	00 
    36e3:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    36e8:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    36ed:	48 8d 35 90 1d 00 00 	lea    0x1d90(%rip),%rsi        # 5484 <array.3477+0x2d4>
    36f4:	b8 00 00 00 00       	mov    $0x0,%eax
    36f9:	e8 12 fc ff ff       	callq  3310 <__isoc99_sscanf@plt>
    36fe:	83 f8 01             	cmp    $0x1,%eax
    3701:	7e 30                	jle    3733 <phase_3+0x94>
    3703:	8b 44 24 08          	mov    0x8(%rsp),%eax
    3707:	83 e8 03             	sub    $0x3,%eax
    370a:	83 f8 10             	cmp    $0x10,%eax
    370d:	77 2b                	ja     373a <phase_3+0x9b>
    370f:	48 63 44 24 08       	movslq 0x8(%rsp),%rax
    3714:	8b 74 24 0c          	mov    0xc(%rsp),%esi
    3718:	39 74 84 10          	cmp    %esi,0x10(%rsp,%rax,4)
    371c:	75 23                	jne    3741 <phase_3+0xa2>
    371e:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    3723:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    372a:	00 00 
    372c:	75 1a                	jne    3748 <phase_3+0xa9>
    372e:	48 83 c4 78          	add    $0x78,%rsp
    3732:	c3                   	retq   
    3733:	e8 3c 07 00 00       	callq  3e74 <explode_bomb>
    3738:	eb c9                	jmp    3703 <phase_3+0x64>
    373a:	e8 35 07 00 00       	callq  3e74 <explode_bomb>
    373f:	eb ce                	jmp    370f <phase_3+0x70>
    3741:	e8 2e 07 00 00       	callq  3e74 <explode_bomb>
    3746:	eb d6                	jmp    371e <phase_3+0x7f>
    3748:	e8 23 fb ff ff       	callq  3270 <__stack_chk_fail@plt>

000000000000374d <func4>:
    374d:	f3 0f 1e fa          	endbr64 
    3751:	48 83 ec 08          	sub    $0x8,%rsp
    3755:	89 d0                	mov    %edx,%eax
    3757:	29 f0                	sub    %esi,%eax
    3759:	89 c1                	mov    %eax,%ecx
    375b:	c1 e9 1f             	shr    $0x1f,%ecx
    375e:	01 c1                	add    %eax,%ecx
    3760:	d1 f9                	sar    %ecx
    3762:	01 f1                	add    %esi,%ecx
    3764:	39 f9                	cmp    %edi,%ecx
    3766:	7f 0c                	jg     3774 <func4+0x27>
    3768:	b8 00 00 00 00       	mov    $0x0,%eax
    376d:	7c 11                	jl     3780 <func4+0x33>
    376f:	48 83 c4 08          	add    $0x8,%rsp
    3773:	c3                   	retq   
    3774:	8d 51 ff             	lea    -0x1(%rcx),%edx
    3777:	e8 d1 ff ff ff       	callq  374d <func4>
    377c:	01 c0                	add    %eax,%eax
    377e:	eb ef                	jmp    376f <func4+0x22>
    3780:	8d 71 01             	lea    0x1(%rcx),%esi
    3783:	e8 c5 ff ff ff       	callq  374d <func4>
    3788:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    378c:	eb e1                	jmp    376f <func4+0x22>

000000000000378e <phase_4>:
    378e:	f3 0f 1e fa          	endbr64 
    3792:	48 83 ec 18          	sub    $0x18,%rsp
    3796:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    379d:	00 00 
    379f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    37a4:	31 c0                	xor    %eax,%eax
    37a6:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    37ab:	48 89 e2             	mov    %rsp,%rdx
    37ae:	48 8d 35 cf 1c 00 00 	lea    0x1ccf(%rip),%rsi        # 5484 <array.3477+0x2d4>
    37b5:	e8 56 fb ff ff       	callq  3310 <__isoc99_sscanf@plt>
    37ba:	83 f8 02             	cmp    $0x2,%eax
    37bd:	75 06                	jne    37c5 <phase_4+0x37>
    37bf:	83 3c 24 0e          	cmpl   $0xe,(%rsp)
    37c3:	76 05                	jbe    37ca <phase_4+0x3c>
    37c5:	e8 aa 06 00 00       	callq  3e74 <explode_bomb>
    37ca:	ba 0e 00 00 00       	mov    $0xe,%edx
    37cf:	be 00 00 00 00       	mov    $0x0,%esi
    37d4:	8b 3c 24             	mov    (%rsp),%edi
    37d7:	e8 71 ff ff ff       	callq  374d <func4>
    37dc:	83 f8 01             	cmp    $0x1,%eax
    37df:	75 07                	jne    37e8 <phase_4+0x5a>
    37e1:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    37e6:	74 05                	je     37ed <phase_4+0x5f>
    37e8:	e8 87 06 00 00       	callq  3e74 <explode_bomb>
    37ed:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    37f2:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    37f9:	00 00 
    37fb:	75 05                	jne    3802 <phase_4+0x74>
    37fd:	48 83 c4 18          	add    $0x18,%rsp
    3801:	c3                   	retq   
    3802:	e8 69 fa ff ff       	callq  3270 <__stack_chk_fail@plt>

0000000000003807 <phase_5>:
    3807:	f3 0f 1e fa          	endbr64 
    380b:	53                   	push   %rbx
    380c:	48 83 ec 70          	sub    $0x70,%rsp
    3810:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3817:	00 00 
    3819:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    381e:	31 c0                	xor    %eax,%eax
    3820:	48 8d 5c 24 10       	lea    0x10(%rsp),%rbx
    3825:	48 89 da             	mov    %rbx,%rdx
    3828:	48 8d 35 c4 1c 00 00 	lea    0x1cc4(%rip),%rsi        # 54f3 <array.3477+0x343>
    382f:	e8 dc fa ff ff       	callq  3310 <__isoc99_sscanf@plt>
    3834:	48 89 df             	mov    %rbx,%rdi
    3837:	e8 cd 02 00 00       	callq  3b09 <string_length>
    383c:	83 f8 06             	cmp    $0x6,%eax
    383f:	75 60                	jne    38a1 <phase_5+0x9a>
    3841:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx      # first input
    3846:	48 8d 44 24 09       	lea    0x9(%rsp),%rax
    384b:	48 8d 7c 24 03       	lea    0x3(%rsp),%rdi
    3850:	48 8d 35 59 19 00 00 	lea    0x1959(%rip),%rsi        # 51b0 <array.3477>
    3857:	0f b6 11             	movzbl (%rcx),%edx
    385a:	83 e2 0f             	and    $0xf,%edx
    385d:	0f b6 14 16          	movzbl (%rsi,%rdx,1),%edx
    3861:	88 50 05             	mov    %dl,0x5(%rax)
    3864:	48 83 c1 01          	add    $0x1,%rcx
    3868:	48 83 e8 01          	sub    $0x1,%rax
    386c:	48 39 f8             	cmp    %rdi,%rax
    386f:	75 e6                	jne    3857 <phase_5+0x50>
    3871:	c6 44 24 0f 00       	movb   $0x0,0xf(%rsp)
    3876:	48 8d 7c 24 09       	lea    0x9(%rsp),%rdi
    387b:	48 8d 35 1c 19 00 00 	lea    0x191c(%rip),%rsi        # 519e <_IO_stdin_used+0x19e>
    3882:	e8 a3 02 00 00       	callq  3b2a <strings_not_equal>
    3887:	85 c0                	test   %eax,%eax
    3889:	75 1d                	jne    38a8 <phase_5+0xa1>
    388b:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    3890:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    3897:	00 00 
    3899:	75 14                	jne    38af <phase_5+0xa8>
    389b:	48 83 c4 70          	add    $0x70,%rsp
    389f:	5b                   	pop    %rbx
    38a0:	c3                   	retq   
    38a1:	e8 ce 05 00 00       	callq  3e74 <explode_bomb>
    38a6:	eb 99                	jmp    3841 <phase_5+0x3a>
    38a8:	e8 c7 05 00 00       	callq  3e74 <explode_bomb>
    38ad:	eb dc                	jmp    388b <phase_5+0x84>
    38af:	e8 bc f9 ff ff       	callq  3270 <__stack_chk_fail@plt>

00000000000038b4 <phase_6>:
    38b4:	f3 0f 1e fa          	endbr64 
    38b8:	41 56                	push   %r14
    38ba:	41 55                	push   %r13
    38bc:	41 54                	push   %r12
    38be:	55                   	push   %rbp
    38bf:	53                   	push   %rbx
    38c0:	48 83 ec 60          	sub    $0x60,%rsp
    38c4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    38cb:	00 00 
    38cd:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    38d2:	31 c0                	xor    %eax,%eax
    38d4:	49 89 e5             	mov    %rsp,%r13
    38d7:	4c 89 ee             	mov    %r13,%rsi
    38da:	e8 d7 05 00 00       	callq  3eb6 <read_six_numbers>
    38df:	41 be 01 00 00 00    	mov    $0x1,%r14d
    38e5:	49 89 e4             	mov    %rsp,%r12
    38e8:	eb 28                	jmp    3912 <phase_6+0x5e>
    38ea:	e8 85 05 00 00       	callq  3e74 <explode_bomb>
    38ef:	eb 30                	jmp    3921 <phase_6+0x6d>
    38f1:	48 83 c3 01          	add    $0x1,%rbx
    38f5:	83 fb 05             	cmp    $0x5,%ebx
    38f8:	7f 10                	jg     390a <phase_6+0x56>
    38fa:	41 8b 04 9c          	mov    (%r12,%rbx,4),%eax
    38fe:	39 45 00             	cmp    %eax,0x0(%rbp)
    3901:	75 ee                	jne    38f1 <phase_6+0x3d>
    3903:	e8 6c 05 00 00       	callq  3e74 <explode_bomb>
    3908:	eb e7                	jmp    38f1 <phase_6+0x3d>
    390a:	49 83 c6 01          	add    $0x1,%r14
    390e:	49 83 c5 04          	add    $0x4,%r13
    3912:	4c 89 ed             	mov    %r13,%rbp
    3915:	41 8b 45 00          	mov    0x0(%r13),%eax
    3919:	83 e8 01             	sub    $0x1,%eax
    391c:	83 f8 05             	cmp    $0x5,%eax
    391f:	77 c9                	ja     38ea <phase_6+0x36>
    3921:	41 83 fe 05          	cmp    $0x5,%r14d
    3925:	7f 05                	jg     392c <phase_6+0x78>
    3927:	4c 89 f3             	mov    %r14,%rbx
    392a:	eb ce                	jmp    38fa <phase_6+0x46>
    392c:	be 00 00 00 00       	mov    $0x0,%esi
    3931:	8b 0c b4             	mov    (%rsp,%rsi,4),%ecx
    3934:	b8 01 00 00 00       	mov    $0x1,%eax
    3939:	48 8d 15 f0 48 00 00 	lea    0x48f0(%rip),%rdx        # 8230 <node1>
    3940:	83 f9 01             	cmp    $0x1,%ecx
    3943:	7e 0b                	jle    3950 <phase_6+0x9c>
    3945:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    3949:	83 c0 01             	add    $0x1,%eax
    394c:	39 c8                	cmp    %ecx,%eax
    394e:	75 f5                	jne    3945 <phase_6+0x91>
    3950:	48 89 54 f4 20       	mov    %rdx,0x20(%rsp,%rsi,8)
    3955:	48 83 c6 01          	add    $0x1,%rsi
    3959:	48 83 fe 06          	cmp    $0x6,%rsi
    395d:	75 d2                	jne    3931 <phase_6+0x7d>
    395f:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    3964:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    3969:	48 89 43 08          	mov    %rax,0x8(%rbx)
    396d:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    3972:	48 89 50 08          	mov    %rdx,0x8(%rax)
    3976:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    397b:	48 89 42 08          	mov    %rax,0x8(%rdx)
    397f:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    3984:	48 89 50 08          	mov    %rdx,0x8(%rax)
    3988:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    398d:	48 89 42 08          	mov    %rax,0x8(%rdx)
    3991:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    3998:	00 
    3999:	bd 05 00 00 00       	mov    $0x5,%ebp
    399e:	eb 09                	jmp    39a9 <phase_6+0xf5>
    39a0:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    39a4:	83 ed 01             	sub    $0x1,%ebp
    39a7:	74 11                	je     39ba <phase_6+0x106>
    39a9:	48 8b 43 08          	mov    0x8(%rbx),%rax
    39ad:	8b 00                	mov    (%rax),%eax
    39af:	39 03                	cmp    %eax,(%rbx)
    39b1:	7d ed                	jge    39a0 <phase_6+0xec>
    39b3:	e8 bc 04 00 00       	callq  3e74 <explode_bomb>
    39b8:	eb e6                	jmp    39a0 <phase_6+0xec>
    39ba:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    39bf:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    39c6:	00 00 
    39c8:	75 0d                	jne    39d7 <phase_6+0x123>
    39ca:	48 83 c4 60          	add    $0x60,%rsp
    39ce:	5b                   	pop    %rbx
    39cf:	5d                   	pop    %rbp
    39d0:	41 5c                	pop    %r12
    39d2:	41 5d                	pop    %r13
    39d4:	41 5e                	pop    %r14
    39d6:	c3                   	retq   
    39d7:	e8 94 f8 ff ff       	callq  3270 <__stack_chk_fail@plt>

00000000000039dc <fun7>:
    39dc:	f3 0f 1e fa          	endbr64 
    39e0:	48 85 ff             	test   %rdi,%rdi
    39e3:	74 32                	je     3a17 <fun7+0x3b>
    39e5:	48 83 ec 08          	sub    $0x8,%rsp
    39e9:	8b 17                	mov    (%rdi),%edx
    39eb:	39 f2                	cmp    %esi,%edx
    39ed:	7f 0c                	jg     39fb <fun7+0x1f>
    39ef:	b8 00 00 00 00       	mov    $0x0,%eax
    39f4:	75 12                	jne    3a08 <fun7+0x2c>
    39f6:	48 83 c4 08          	add    $0x8,%rsp
    39fa:	c3                   	retq   
    39fb:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    39ff:	e8 d8 ff ff ff       	callq  39dc <fun7>
    3a04:	01 c0                	add    %eax,%eax
    3a06:	eb ee                	jmp    39f6 <fun7+0x1a>
    3a08:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    3a0c:	e8 cb ff ff ff       	callq  39dc <fun7>
    3a11:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    3a15:	eb df                	jmp    39f6 <fun7+0x1a>
    3a17:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3a1c:	c3                   	retq   

0000000000003a1d <secret_phase>:
    3a1d:	f3 0f 1e fa          	endbr64 
    3a21:	53                   	push   %rbx
    3a22:	e8 d4 04 00 00       	callq  3efb <read_line>
    3a27:	48 89 c7             	mov    %rax,%rdi
    3a2a:	ba 0a 00 00 00       	mov    $0xa,%edx
    3a2f:	be 00 00 00 00       	mov    $0x0,%esi
    3a34:	e8 b7 f8 ff ff       	callq  32f0 <strtol@plt>
    3a39:	48 89 c3             	mov    %rax,%rbx
    3a3c:	8d 40 ff             	lea    -0x1(%rax),%eax
    3a3f:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    3a44:	77 26                	ja     3a6c <secret_phase+0x4f>
    3a46:	89 de                	mov    %ebx,%esi
    3a48:	48 8d 3d 01 47 00 00 	lea    0x4701(%rip),%rdi        # 8150 <n1>
    3a4f:	e8 88 ff ff ff       	callq  39dc <fun7>
    3a54:	83 f8 02             	cmp    $0x2,%eax
    3a57:	75 1a                	jne    3a73 <secret_phase+0x56>
    3a59:	48 8d 3d 18 17 00 00 	lea    0x1718(%rip),%rdi        # 5178 <_IO_stdin_used+0x178>
    3a60:	e8 eb f7 ff ff       	callq  3250 <puts@plt>
    3a65:	e8 d9 05 00 00       	callq  4043 <phase_defused>
    3a6a:	5b                   	pop    %rbx
    3a6b:	c3                   	retq   
    3a6c:	e8 03 04 00 00       	callq  3e74 <explode_bomb>
    3a71:	eb d3                	jmp    3a46 <secret_phase+0x29>
    3a73:	e8 fc 03 00 00       	callq  3e74 <explode_bomb>
    3a78:	eb df                	jmp    3a59 <secret_phase+0x3c>

0000000000003a7a <sig_handler>:
    3a7a:	f3 0f 1e fa          	endbr64 
    3a7e:	50                   	push   %rax
    3a7f:	58                   	pop    %rax
    3a80:	48 83 ec 08          	sub    $0x8,%rsp
    3a84:	48 8d 3d 35 17 00 00 	lea    0x1735(%rip),%rdi        # 51c0 <array.3477+0x10>
    3a8b:	e8 c0 f7 ff ff       	callq  3250 <puts@plt>
    3a90:	bf 03 00 00 00       	mov    $0x3,%edi
    3a95:	e8 e6 f8 ff ff       	callq  3380 <sleep@plt>
    3a9a:	48 8d 35 3d 19 00 00 	lea    0x193d(%rip),%rsi        # 53de <array.3477+0x22e>
    3aa1:	bf 01 00 00 00       	mov    $0x1,%edi
    3aa6:	b8 00 00 00 00       	mov    $0x0,%eax
    3aab:	e8 70 f8 ff ff       	callq  3320 <__printf_chk@plt>
    3ab0:	48 8b 3d c9 57 00 00 	mov    0x57c9(%rip),%rdi        # 9280 <stdout@@GLIBC_2.2.5>
    3ab7:	e8 44 f8 ff ff       	callq  3300 <fflush@plt>
    3abc:	bf 01 00 00 00       	mov    $0x1,%edi
    3ac1:	e8 ba f8 ff ff       	callq  3380 <sleep@plt>
    3ac6:	48 8d 3d 19 19 00 00 	lea    0x1919(%rip),%rdi        # 53e6 <array.3477+0x236>
    3acd:	e8 7e f7 ff ff       	callq  3250 <puts@plt>
    3ad2:	bf 10 00 00 00       	mov    $0x10,%edi
    3ad7:	e8 74 f8 ff ff       	callq  3350 <exit@plt>

0000000000003adc <invalid_phase>:
    3adc:	f3 0f 1e fa          	endbr64 
    3ae0:	50                   	push   %rax
    3ae1:	58                   	pop    %rax
    3ae2:	48 83 ec 08          	sub    $0x8,%rsp
    3ae6:	48 89 fa             	mov    %rdi,%rdx
    3ae9:	48 8d 35 fe 18 00 00 	lea    0x18fe(%rip),%rsi        # 53ee <array.3477+0x23e>
    3af0:	bf 01 00 00 00       	mov    $0x1,%edi
    3af5:	b8 00 00 00 00       	mov    $0x0,%eax
    3afa:	e8 21 f8 ff ff       	callq  3320 <__printf_chk@plt>
    3aff:	bf 08 00 00 00       	mov    $0x8,%edi
    3b04:	e8 47 f8 ff ff       	callq  3350 <exit@plt>

0000000000003b09 <string_length>:
    3b09:	f3 0f 1e fa          	endbr64 
    3b0d:	80 3f 00             	cmpb   $0x0,(%rdi)
    3b10:	74 12                	je     3b24 <string_length+0x1b>
    3b12:	b8 00 00 00 00       	mov    $0x0,%eax
    3b17:	48 83 c7 01          	add    $0x1,%rdi
    3b1b:	83 c0 01             	add    $0x1,%eax
    3b1e:	80 3f 00             	cmpb   $0x0,(%rdi)
    3b21:	75 f4                	jne    3b17 <string_length+0xe>
    3b23:	c3                   	retq   
    3b24:	b8 00 00 00 00       	mov    $0x0,%eax
    3b29:	c3                   	retq   

0000000000003b2a <strings_not_equal>:
    3b2a:	f3 0f 1e fa          	endbr64 
    3b2e:	41 54                	push   %r12
    3b30:	55                   	push   %rbp
    3b31:	53                   	push   %rbx
    3b32:	48 89 fb             	mov    %rdi,%rbx
    3b35:	48 89 f5             	mov    %rsi,%rbp
    3b38:	e8 cc ff ff ff       	callq  3b09 <string_length>
    3b3d:	41 89 c4             	mov    %eax,%r12d
    3b40:	48 89 ef             	mov    %rbp,%rdi
    3b43:	e8 c1 ff ff ff       	callq  3b09 <string_length>
    3b48:	89 c2                	mov    %eax,%edx
    3b4a:	b8 01 00 00 00       	mov    $0x1,%eax
    3b4f:	41 39 d4             	cmp    %edx,%r12d
    3b52:	75 31                	jne    3b85 <strings_not_equal+0x5b>
    3b54:	0f b6 13             	movzbl (%rbx),%edx
    3b57:	84 d2                	test   %dl,%dl
    3b59:	74 1e                	je     3b79 <strings_not_equal+0x4f>
    3b5b:	b8 00 00 00 00       	mov    $0x0,%eax
    3b60:	38 54 05 00          	cmp    %dl,0x0(%rbp,%rax,1)
    3b64:	75 1a                	jne    3b80 <strings_not_equal+0x56>
    3b66:	48 83 c0 01          	add    $0x1,%rax
    3b6a:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    3b6e:	84 d2                	test   %dl,%dl
    3b70:	75 ee                	jne    3b60 <strings_not_equal+0x36>
    3b72:	b8 00 00 00 00       	mov    $0x0,%eax
    3b77:	eb 0c                	jmp    3b85 <strings_not_equal+0x5b>
    3b79:	b8 00 00 00 00       	mov    $0x0,%eax
    3b7e:	eb 05                	jmp    3b85 <strings_not_equal+0x5b>
    3b80:	b8 01 00 00 00       	mov    $0x1,%eax
    3b85:	5b                   	pop    %rbx
    3b86:	5d                   	pop    %rbp
    3b87:	41 5c                	pop    %r12
    3b89:	c3                   	retq   

0000000000003b8a <initialize_bomb>:
    3b8a:	f3 0f 1e fa          	endbr64 
    3b8e:	55                   	push   %rbp
    3b8f:	53                   	push   %rbx
    3b90:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    3b97:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    3b9c:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    3ba3:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    3ba8:	48 83 ec 58          	sub    $0x58,%rsp
    3bac:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3bb3:	00 00 
    3bb5:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    3bbc:	00 
    3bbd:	31 c0                	xor    %eax,%eax
    3bbf:	48 8d 35 b4 fe ff ff 	lea    -0x14c(%rip),%rsi        # 3a7a <sig_handler>
    3bc6:	bf 02 00 00 00       	mov    $0x2,%edi
    3bcb:	e8 f0 f6 ff ff       	callq  32c0 <signal@plt>
    3bd0:	48 89 e7             	mov    %rsp,%rdi
    3bd3:	be 40 00 00 00       	mov    $0x40,%esi
    3bd8:	e8 63 f7 ff ff       	callq  3340 <gethostname@plt>
    3bdd:	85 c0                	test   %eax,%eax
    3bdf:	0f 85 9b 00 00 00    	jne    3c80 <initialize_bomb+0xf6>
    3be5:	48 8b 3d 94 46 00 00 	mov    0x4694(%rip),%rdi        # 8280 <host_table>
    3bec:	48 8d 1d 95 46 00 00 	lea    0x4695(%rip),%rbx        # 8288 <host_table+0x8>
    3bf3:	48 89 e5             	mov    %rsp,%rbp
    3bf6:	48 85 ff             	test   %rdi,%rdi
    3bf9:	74 1d                	je     3c18 <initialize_bomb+0x8e>
    3bfb:	48 89 ee             	mov    %rbp,%rsi
    3bfe:	e8 1d f6 ff ff       	callq  3220 <strcasecmp@plt>
    3c03:	85 c0                	test   %eax,%eax
    3c05:	0f 84 b0 00 00 00    	je     3cbb <initialize_bomb+0x131>
    3c0b:	48 83 c3 08          	add    $0x8,%rbx
    3c0f:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
    3c13:	48 85 ff             	test   %rdi,%rdi
    3c16:	75 e3                	jne    3bfb <initialize_bomb+0x71>
    3c18:	48 89 e2             	mov    %rsp,%rdx
    3c1b:	48 8d 35 0e 16 00 00 	lea    0x160e(%rip),%rsi        # 5230 <array.3477+0x80>
    3c22:	bf 01 00 00 00       	mov    $0x1,%edi
    3c27:	b8 00 00 00 00       	mov    $0x0,%eax
    3c2c:	e8 ef f6 ff ff       	callq  3320 <__printf_chk@plt>
    3c31:	48 8d 3d e7 17 00 00 	lea    0x17e7(%rip),%rdi        # 541f <array.3477+0x26f>
    3c38:	e8 13 f6 ff ff       	callq  3250 <puts@plt>
    3c3d:	48 8b 15 3c 46 00 00 	mov    0x463c(%rip),%rdx        # 8280 <host_table>
    3c44:	48 8d 1d 3d 46 00 00 	lea    0x463d(%rip),%rbx        # 8288 <host_table+0x8>
    3c4b:	48 8d 2d ad 17 00 00 	lea    0x17ad(%rip),%rbp        # 53ff <array.3477+0x24f>
    3c52:	48 85 d2             	test   %rdx,%rdx
    3c55:	74 1f                	je     3c76 <initialize_bomb+0xec>
    3c57:	48 89 ee             	mov    %rbp,%rsi
    3c5a:	bf 01 00 00 00       	mov    $0x1,%edi
    3c5f:	b8 00 00 00 00       	mov    $0x0,%eax
    3c64:	e8 b7 f6 ff ff       	callq  3320 <__printf_chk@plt>
    3c69:	48 83 c3 08          	add    $0x8,%rbx
    3c6d:	48 8b 53 f8          	mov    -0x8(%rbx),%rdx
    3c71:	48 85 d2             	test   %rdx,%rdx
    3c74:	75 e1                	jne    3c57 <initialize_bomb+0xcd>
    3c76:	bf 08 00 00 00       	mov    $0x8,%edi
    3c7b:	e8 d0 f6 ff ff       	callq  3350 <exit@plt>
    3c80:	48 8d 3d 71 15 00 00 	lea    0x1571(%rip),%rdi        # 51f8 <array.3477+0x48>
    3c87:	e8 c4 f5 ff ff       	callq  3250 <puts@plt>
    3c8c:	bf 08 00 00 00       	mov    $0x8,%edi
    3c91:	e8 ba f6 ff ff       	callq  3350 <exit@plt>
    3c96:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    3c9b:	48 8d 35 63 17 00 00 	lea    0x1763(%rip),%rsi        # 5405 <array.3477+0x255>
    3ca2:	bf 01 00 00 00       	mov    $0x1,%edi
    3ca7:	b8 00 00 00 00       	mov    $0x0,%eax
    3cac:	e8 6f f6 ff ff       	callq  3320 <__printf_chk@plt>
    3cb1:	bf 08 00 00 00       	mov    $0x8,%edi
    3cb6:	e8 95 f6 ff ff       	callq  3350 <exit@plt>
    3cbb:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    3cc0:	e8 ea 0e 00 00       	callq  4baf <init_driver>
    3cc5:	85 c0                	test   %eax,%eax
    3cc7:	78 cd                	js     3c96 <initialize_bomb+0x10c>
    3cc9:	48 8b 84 24 48 20 00 	mov    0x2048(%rsp),%rax
    3cd0:	00 
    3cd1:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    3cd8:	00 00 
    3cda:	75 0a                	jne    3ce6 <initialize_bomb+0x15c>
    3cdc:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    3ce3:	5b                   	pop    %rbx
    3ce4:	5d                   	pop    %rbp
    3ce5:	c3                   	retq   
    3ce6:	e8 85 f5 ff ff       	callq  3270 <__stack_chk_fail@plt>

0000000000003ceb <initialize_bomb_solve>:
    3ceb:	f3 0f 1e fa          	endbr64 
    3cef:	c3                   	retq   

0000000000003cf0 <blank_line>:
    3cf0:	f3 0f 1e fa          	endbr64 
    3cf4:	55                   	push   %rbp
    3cf5:	53                   	push   %rbx
    3cf6:	48 83 ec 08          	sub    $0x8,%rsp
    3cfa:	48 89 fd             	mov    %rdi,%rbp
    3cfd:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    3d01:	84 db                	test   %bl,%bl
    3d03:	74 1e                	je     3d23 <blank_line+0x33>
    3d05:	e8 86 f6 ff ff       	callq  3390 <__ctype_b_loc@plt>
    3d0a:	48 83 c5 01          	add    $0x1,%rbp
    3d0e:	48 0f be db          	movsbq %bl,%rbx
    3d12:	48 8b 00             	mov    (%rax),%rax
    3d15:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    3d1a:	75 e1                	jne    3cfd <blank_line+0xd>
    3d1c:	b8 00 00 00 00       	mov    $0x0,%eax
    3d21:	eb 05                	jmp    3d28 <blank_line+0x38>
    3d23:	b8 01 00 00 00       	mov    $0x1,%eax
    3d28:	48 83 c4 08          	add    $0x8,%rsp
    3d2c:	5b                   	pop    %rbx
    3d2d:	5d                   	pop    %rbp
    3d2e:	c3                   	retq   

0000000000003d2f <skip>:
    3d2f:	f3 0f 1e fa          	endbr64 
    3d33:	55                   	push   %rbp
    3d34:	53                   	push   %rbx
    3d35:	48 83 ec 08          	sub    $0x8,%rsp
    3d39:	48 8d 2d 80 55 00 00 	lea    0x5580(%rip),%rbp        # 92c0 <input_strings>
    3d40:	48 63 05 65 55 00 00 	movslq 0x5565(%rip),%rax        # 92ac <num_input_strings>
    3d47:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    3d4b:	48 c1 e7 04          	shl    $0x4,%rdi
    3d4f:	48 01 ef             	add    %rbp,%rdi
    3d52:	48 8b 15 57 55 00 00 	mov    0x5557(%rip),%rdx        # 92b0 <infile>
    3d59:	be 50 00 00 00       	mov    $0x50,%esi
    3d5e:	e8 4d f5 ff ff       	callq  32b0 <fgets@plt>
    3d63:	48 89 c3             	mov    %rax,%rbx
    3d66:	48 85 c0             	test   %rax,%rax
    3d69:	74 0c                	je     3d77 <skip+0x48>
    3d6b:	48 89 c7             	mov    %rax,%rdi
    3d6e:	e8 7d ff ff ff       	callq  3cf0 <blank_line>
    3d73:	85 c0                	test   %eax,%eax
    3d75:	75 c9                	jne    3d40 <skip+0x11>
    3d77:	48 89 d8             	mov    %rbx,%rax
    3d7a:	48 83 c4 08          	add    $0x8,%rsp
    3d7e:	5b                   	pop    %rbx
    3d7f:	5d                   	pop    %rbp
    3d80:	c3                   	retq   

0000000000003d81 <send_msg>:
    3d81:	f3 0f 1e fa          	endbr64 
    3d85:	53                   	push   %rbx
    3d86:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
    3d8d:	ff 
    3d8e:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    3d95:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    3d9a:	4c 39 dc             	cmp    %r11,%rsp
    3d9d:	75 ef                	jne    3d8e <send_msg+0xd>
    3d9f:	48 83 ec 10          	sub    $0x10,%rsp
    3da3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3daa:	00 00 
    3dac:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    3db3:	00 
    3db4:	31 c0                	xor    %eax,%eax
    3db6:	8b 15 f0 54 00 00    	mov    0x54f0(%rip),%edx        # 92ac <num_input_strings>
    3dbc:	8d 42 ff             	lea    -0x1(%rdx),%eax
    3dbf:	48 98                	cltq   
    3dc1:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    3dc5:	48 c1 e0 04          	shl    $0x4,%rax
    3dc9:	48 8d 0d f0 54 00 00 	lea    0x54f0(%rip),%rcx        # 92c0 <input_strings>
    3dd0:	48 01 c8             	add    %rcx,%rax
    3dd3:	85 ff                	test   %edi,%edi
    3dd5:	4c 8d 0d 5f 16 00 00 	lea    0x165f(%rip),%r9        # 543b <array.3477+0x28b>
    3ddc:	48 8d 0d 60 16 00 00 	lea    0x1660(%rip),%rcx        # 5443 <array.3477+0x293>
    3de3:	4c 0f 44 c9          	cmove  %rcx,%r9
    3de7:	48 89 e3             	mov    %rsp,%rbx
    3dea:	50                   	push   %rax
    3deb:	52                   	push   %rdx
    3dec:	44 8b 05 51 43 00 00 	mov    0x4351(%rip),%r8d        # 8144 <bomb_id>
    3df3:	48 8d 0d 52 16 00 00 	lea    0x1652(%rip),%rcx        # 544c <array.3477+0x29c>
    3dfa:	ba 00 20 00 00       	mov    $0x2000,%edx
    3dff:	be 01 00 00 00       	mov    $0x1,%esi
    3e04:	48 89 df             	mov    %rbx,%rdi
    3e07:	b8 00 00 00 00       	mov    $0x0,%eax
    3e0c:	e8 8f f5 ff ff       	callq  33a0 <__sprintf_chk@plt>
    3e11:	4c 8d 84 24 10 20 00 	lea    0x2010(%rsp),%r8
    3e18:	00 
    3e19:	b9 00 00 00 00       	mov    $0x0,%ecx
    3e1e:	48 89 da             	mov    %rbx,%rdx
    3e21:	48 8d 35 f8 42 00 00 	lea    0x42f8(%rip),%rsi        # 8120 <user_password>
    3e28:	48 8d 3d 09 43 00 00 	lea    0x4309(%rip),%rdi        # 8138 <userid>
    3e2f:	e8 70 0f 00 00       	callq  4da4 <driver_post>
    3e34:	48 83 c4 10          	add    $0x10,%rsp
    3e38:	85 c0                	test   %eax,%eax
    3e3a:	78 1c                	js     3e58 <send_msg+0xd7>
    3e3c:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    3e43:	00 
    3e44:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    3e4b:	00 00 
    3e4d:	75 20                	jne    3e6f <send_msg+0xee>
    3e4f:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
    3e56:	5b                   	pop    %rbx
    3e57:	c3                   	retq   
    3e58:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    3e5f:	00 
    3e60:	e8 eb f3 ff ff       	callq  3250 <puts@plt>
    3e65:	bf 00 00 00 00       	mov    $0x0,%edi
    3e6a:	e8 e1 f4 ff ff       	callq  3350 <exit@plt>
    3e6f:	e8 fc f3 ff ff       	callq  3270 <__stack_chk_fail@plt>

0000000000003e74 <explode_bomb>:
    3e74:	f3 0f 1e fa          	endbr64 
    3e78:	50                   	push   %rax
    3e79:	58                   	pop    %rax
    3e7a:	48 83 ec 08          	sub    $0x8,%rsp
    3e7e:	48 8d 3d d3 15 00 00 	lea    0x15d3(%rip),%rdi        # 5458 <array.3477+0x2a8>
    3e85:	e8 c6 f3 ff ff       	callq  3250 <puts@plt>
    3e8a:	48 8d 3d d0 15 00 00 	lea    0x15d0(%rip),%rdi        # 5461 <array.3477+0x2b1>
    3e91:	e8 ba f3 ff ff       	callq  3250 <puts@plt>
    3e96:	bf 00 00 00 00       	mov    $0x0,%edi
    3e9b:	e8 e1 fe ff ff       	callq  3d81 <send_msg>
    3ea0:	48 8d 3d b9 13 00 00 	lea    0x13b9(%rip),%rdi        # 5260 <array.3477+0xb0>
    3ea7:	e8 a4 f3 ff ff       	callq  3250 <puts@plt>
    3eac:	bf 08 00 00 00       	mov    $0x8,%edi
    3eb1:	e8 9a f4 ff ff       	callq  3350 <exit@plt>

0000000000003eb6 <read_six_numbers>:
    3eb6:	f3 0f 1e fa          	endbr64 
    3eba:	48 83 ec 08          	sub    $0x8,%rsp
    3ebe:	48 89 f2             	mov    %rsi,%rdx
    3ec1:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    3ec5:	48 8d 46 14          	lea    0x14(%rsi),%rax
    3ec9:	50                   	push   %rax
    3eca:	48 8d 46 10          	lea    0x10(%rsi),%rax
    3ece:	50                   	push   %rax
    3ecf:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    3ed3:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    3ed7:	48 8d 35 9a 15 00 00 	lea    0x159a(%rip),%rsi        # 5478 <array.3477+0x2c8>
    3ede:	b8 00 00 00 00       	mov    $0x0,%eax
    3ee3:	e8 28 f4 ff ff       	callq  3310 <__isoc99_sscanf@plt>
    3ee8:	48 83 c4 10          	add    $0x10,%rsp
    3eec:	83 f8 05             	cmp    $0x5,%eax
    3eef:	7e 05                	jle    3ef6 <read_six_numbers+0x40>
    3ef1:	48 83 c4 08          	add    $0x8,%rsp
    3ef5:	c3                   	retq   
    3ef6:	e8 79 ff ff ff       	callq  3e74 <explode_bomb>

0000000000003efb <read_line>:
    3efb:	f3 0f 1e fa          	endbr64 
    3eff:	48 83 ec 08          	sub    $0x8,%rsp
    3f03:	b8 00 00 00 00       	mov    $0x0,%eax
    3f08:	e8 22 fe ff ff       	callq  3d2f <skip>
    3f0d:	48 85 c0             	test   %rax,%rax
    3f10:	74 6f                	je     3f81 <read_line+0x86>
    3f12:	8b 35 94 53 00 00    	mov    0x5394(%rip),%esi        # 92ac <num_input_strings>
    3f18:	48 63 c6             	movslq %esi,%rax
    3f1b:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    3f1f:	48 c1 e2 04          	shl    $0x4,%rdx
    3f23:	48 8d 05 96 53 00 00 	lea    0x5396(%rip),%rax        # 92c0 <input_strings>
    3f2a:	48 01 c2             	add    %rax,%rdx
    3f2d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    3f34:	b8 00 00 00 00       	mov    $0x0,%eax
    3f39:	48 89 d7             	mov    %rdx,%rdi
    3f3c:	f2 ae                	repnz scas %es:(%rdi),%al
    3f3e:	48 f7 d1             	not    %rcx
    3f41:	48 83 e9 01          	sub    $0x1,%rcx
    3f45:	83 f9 4e             	cmp    $0x4e,%ecx
    3f48:	0f 8f ab 00 00 00    	jg     3ff9 <read_line+0xfe>
    3f4e:	83 e9 01             	sub    $0x1,%ecx
    3f51:	48 63 c9             	movslq %ecx,%rcx
    3f54:	48 63 c6             	movslq %esi,%rax
    3f57:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    3f5b:	48 c1 e0 04          	shl    $0x4,%rax
    3f5f:	48 89 c7             	mov    %rax,%rdi
    3f62:	48 8d 05 57 53 00 00 	lea    0x5357(%rip),%rax        # 92c0 <input_strings>
    3f69:	48 01 f8             	add    %rdi,%rax
    3f6c:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
    3f70:	83 c6 01             	add    $0x1,%esi
    3f73:	89 35 33 53 00 00    	mov    %esi,0x5333(%rip)        # 92ac <num_input_strings>
    3f79:	48 89 d0             	mov    %rdx,%rax
    3f7c:	48 83 c4 08          	add    $0x8,%rsp
    3f80:	c3                   	retq   
    3f81:	48 8b 05 08 53 00 00 	mov    0x5308(%rip),%rax        # 9290 <stdin@@GLIBC_2.2.5>
    3f88:	48 39 05 21 53 00 00 	cmp    %rax,0x5321(%rip)        # 92b0 <infile>
    3f8f:	74 1b                	je     3fac <read_line+0xb1>
    3f91:	48 8d 3d 10 15 00 00 	lea    0x1510(%rip),%rdi        # 54a8 <array.3477+0x2f8>
    3f98:	e8 63 f2 ff ff       	callq  3200 <getenv@plt>
    3f9d:	48 85 c0             	test   %rax,%rax
    3fa0:	74 20                	je     3fc2 <read_line+0xc7>
    3fa2:	bf 00 00 00 00       	mov    $0x0,%edi
    3fa7:	e8 a4 f3 ff ff       	callq  3350 <exit@plt>
    3fac:	48 8d 3d d7 14 00 00 	lea    0x14d7(%rip),%rdi        # 548a <array.3477+0x2da>
    3fb3:	e8 98 f2 ff ff       	callq  3250 <puts@plt>
    3fb8:	bf 08 00 00 00       	mov    $0x8,%edi
    3fbd:	e8 8e f3 ff ff       	callq  3350 <exit@plt>
    3fc2:	48 8b 05 c7 52 00 00 	mov    0x52c7(%rip),%rax        # 9290 <stdin@@GLIBC_2.2.5>
    3fc9:	48 89 05 e0 52 00 00 	mov    %rax,0x52e0(%rip)        # 92b0 <infile>
    3fd0:	b8 00 00 00 00       	mov    $0x0,%eax
    3fd5:	e8 55 fd ff ff       	callq  3d2f <skip>
    3fda:	48 85 c0             	test   %rax,%rax
    3fdd:	0f 85 2f ff ff ff    	jne    3f12 <read_line+0x17>
    3fe3:	48 8d 3d a0 14 00 00 	lea    0x14a0(%rip),%rdi        # 548a <array.3477+0x2da>
    3fea:	e8 61 f2 ff ff       	callq  3250 <puts@plt>
    3fef:	bf 00 00 00 00       	mov    $0x0,%edi
    3ff4:	e8 57 f3 ff ff       	callq  3350 <exit@plt>
    3ff9:	48 8d 3d b3 14 00 00 	lea    0x14b3(%rip),%rdi        # 54b3 <array.3477+0x303>
    4000:	e8 4b f2 ff ff       	callq  3250 <puts@plt>
    4005:	8b 05 a1 52 00 00    	mov    0x52a1(%rip),%eax        # 92ac <num_input_strings>
    400b:	8d 50 01             	lea    0x1(%rax),%edx
    400e:	89 15 98 52 00 00    	mov    %edx,0x5298(%rip)        # 92ac <num_input_strings>
    4014:	48 98                	cltq   
    4016:	48 6b c0 50          	imul   $0x50,%rax,%rax
    401a:	48 8d 15 9f 52 00 00 	lea    0x529f(%rip),%rdx        # 92c0 <input_strings>
    4021:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    4028:	75 6e 63 
    402b:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    4032:	2a 2a 00 
    4035:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    4039:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    403e:	e8 31 fe ff ff       	callq  3e74 <explode_bomb>

0000000000004043 <phase_defused>:
    4043:	f3 0f 1e fa          	endbr64 
    4047:	48 81 ec b8 00 00 00 	sub    $0xb8,%rsp
    404e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4055:	00 00 
    4057:	48 89 84 24 a8 00 00 	mov    %rax,0xa8(%rsp)
    405e:	00 
    405f:	31 c0                	xor    %eax,%eax
    4061:	bf 01 00 00 00       	mov    $0x1,%edi
    4066:	e8 16 fd ff ff       	callq  3d81 <send_msg>
    406b:	83 3d 3a 52 00 00 06 	cmpl   $0x6,0x523a(%rip)        # 92ac <num_input_strings>
    4072:	74 1f                	je     4093 <phase_defused+0x50>
    4074:	48 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%rax
    407b:	00 
    407c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    4083:	00 00 
    4085:	0f 85 58 01 00 00    	jne    41e3 <phase_defused+0x1a0>
    408b:	48 81 c4 b8 00 00 00 	add    $0xb8,%rsp
    4092:	c3                   	retq   
    4093:	48 8d 4c 24 30       	lea    0x30(%rsp),%rcx
    4098:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
    409d:	4c 8d 44 24 50       	lea    0x50(%rsp),%r8
    40a2:	48 8d 35 25 14 00 00 	lea    0x1425(%rip),%rsi        # 54ce <array.3477+0x31e>
    40a9:	48 8d 3d 50 53 00 00 	lea    0x5350(%rip),%rdi        # 9400 <input_strings+0x140>
    40b0:	b8 00 00 00 00       	mov    $0x0,%eax
    40b5:	e8 56 f2 ff ff       	callq  3310 <__isoc99_sscanf@plt>
    40ba:	83 f8 03             	cmp    $0x3,%eax
    40bd:	0f 84 e0 00 00 00    	je     41a3 <phase_defused+0x160>
    40c3:	48 8d 3d 26 12 00 00 	lea    0x1226(%rip),%rdi        # 52f0 <array.3477+0x140>
    40ca:	e8 81 f1 ff ff       	callq  3250 <puts@plt>
    40cf:	48 8d 3d 4a 12 00 00 	lea    0x124a(%rip),%rdi        # 5320 <array.3477+0x170>
    40d6:	e8 75 f1 ff ff       	callq  3250 <puts@plt>
    40db:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    40e0:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    40e5:	4c 8d 44 24 50       	lea    0x50(%rsp),%r8
    40ea:	48 8d 35 fc 13 00 00 	lea    0x13fc(%rip),%rsi        # 54ed <array.3477+0x33d>
    40f1:	48 8d 3d b8 52 00 00 	lea    0x52b8(%rip),%rdi        # 93b0 <input_strings+0xf0>
    40f8:	b8 00 00 00 00       	mov    $0x0,%eax
    40fd:	e8 0e f2 ff ff       	callq  3310 <__isoc99_sscanf@plt>
    4102:	83 f8 03             	cmp    $0x3,%eax
    4105:	0f 85 69 ff ff ff    	jne    4074 <phase_defused+0x31>
    410b:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    4110:	48 8d 35 df 13 00 00 	lea    0x13df(%rip),%rsi        # 54f6 <array.3477+0x346>
    4117:	e8 0e fa ff ff       	callq  3b2a <strings_not_equal>
    411c:	85 c0                	test   %eax,%eax
    411e:	0f 85 50 ff ff ff    	jne    4074 <phase_defused+0x31>
    4124:	48 8d 3d f7 13 00 00 	lea    0x13f7(%rip),%rdi        # 5522 <array.3477+0x372>
    412b:	e8 20 f1 ff ff       	callq  3250 <puts@plt>
    4130:	bf 02 00 00 00       	mov    $0x2,%edi
    4135:	e8 46 f2 ff ff       	callq  3380 <sleep@plt>
    413a:	48 8d 3d bc 13 00 00 	lea    0x13bc(%rip),%rdi        # 54fd <array.3477+0x34d>
    4141:	e8 0a f1 ff ff       	callq  3250 <puts@plt>
    4146:	bf 03 00 00 00       	mov    $0x3,%edi
    414b:	e8 30 f2 ff ff       	callq  3380 <sleep@plt>
    4150:	48 8d 3d b9 13 00 00 	lea    0x13b9(%rip),%rdi        # 5510 <array.3477+0x360>
    4157:	e8 f4 f0 ff ff       	callq  3250 <puts@plt>
    415c:	bf 04 00 00 00       	mov    $0x4,%edi
    4161:	e8 1a f2 ff ff       	callq  3380 <sleep@plt>
    4166:	48 8d 3d b9 13 00 00 	lea    0x13b9(%rip),%rdi        # 5526 <array.3477+0x376>
    416d:	e8 de f0 ff ff       	callq  3250 <puts@plt>
    4172:	bf 05 00 00 00       	mov    $0x5,%edi
    4177:	e8 04 f2 ff ff       	callq  3380 <sleep@plt>
    417c:	48 8d 3d e5 11 00 00 	lea    0x11e5(%rip),%rdi        # 5368 <array.3477+0x1b8>
    4183:	e8 c8 f0 ff ff       	callq  3250 <puts@plt>
    4188:	bf 05 00 00 00       	mov    $0x5,%edi
    418d:	e8 ee f1 ff ff       	callq  3380 <sleep@plt>
    4192:	48 8d 3d 07 12 00 00 	lea    0x1207(%rip),%rdi        # 53a0 <array.3477+0x1f0>
    4199:	e8 b2 f0 ff ff       	callq  3250 <puts@plt>
    419e:	e9 d1 fe ff ff       	jmpq   4074 <phase_defused+0x31>
    41a3:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    41a8:	48 8d 35 28 13 00 00 	lea    0x1328(%rip),%rsi        # 54d7 <array.3477+0x327>
    41af:	e8 76 f9 ff ff       	callq  3b2a <strings_not_equal>
    41b4:	85 c0                	test   %eax,%eax
    41b6:	0f 85 07 ff ff ff    	jne    40c3 <phase_defused+0x80>
    41bc:	48 8d 3d c5 10 00 00 	lea    0x10c5(%rip),%rdi        # 5288 <array.3477+0xd8>
    41c3:	e8 88 f0 ff ff       	callq  3250 <puts@plt>
    41c8:	48 8d 3d e9 10 00 00 	lea    0x10e9(%rip),%rdi        # 52b8 <array.3477+0x108>
    41cf:	e8 7c f0 ff ff       	callq  3250 <puts@plt>
    41d4:	b8 00 00 00 00       	mov    $0x0,%eax
    41d9:	e8 3f f8 ff ff       	callq  3a1d <secret_phase>
    41de:	e9 e0 fe ff ff       	jmpq   40c3 <phase_defused+0x80>
    41e3:	e8 88 f0 ff ff       	callq  3270 <__stack_chk_fail@plt>

00000000000041e8 <sigalrm_handler>:
    41e8:	f3 0f 1e fa          	endbr64 
    41ec:	50                   	push   %rax
    41ed:	58                   	pop    %rax
    41ee:	48 83 ec 08          	sub    $0x8,%rsp
    41f2:	b9 00 00 00 00       	mov    $0x0,%ecx
    41f7:	48 8d 15 02 23 00 00 	lea    0x2302(%rip),%rdx        # 6500 <array.3477+0x1350>
    41fe:	be 01 00 00 00       	mov    $0x1,%esi
    4203:	48 8b 3d 96 50 00 00 	mov    0x5096(%rip),%rdi        # 92a0 <stderr@@GLIBC_2.2.5>
    420a:	b8 00 00 00 00       	mov    $0x0,%eax
    420f:	e8 5c f1 ff ff       	callq  3370 <__fprintf_chk@plt>
    4214:	bf 01 00 00 00       	mov    $0x1,%edi
    4219:	e8 32 f1 ff ff       	callq  3350 <exit@plt>

000000000000421e <rio_readlineb>:
    421e:	41 56                	push   %r14
    4220:	41 55                	push   %r13
    4222:	41 54                	push   %r12
    4224:	55                   	push   %rbp
    4225:	53                   	push   %rbx
    4226:	48 89 f5             	mov    %rsi,%rbp
    4229:	48 83 fa 01          	cmp    $0x1,%rdx
    422d:	0f 86 90 00 00 00    	jbe    42c3 <rio_readlineb+0xa5>
    4233:	48 89 fb             	mov    %rdi,%rbx
    4236:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    423b:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    4241:	4c 8d 67 10          	lea    0x10(%rdi),%r12
    4245:	eb 54                	jmp    429b <rio_readlineb+0x7d>
    4247:	e8 e4 ef ff ff       	callq  3230 <__errno_location@plt>
    424c:	83 38 04             	cmpl   $0x4,(%rax)
    424f:	75 53                	jne    42a4 <rio_readlineb+0x86>
    4251:	ba 00 20 00 00       	mov    $0x2000,%edx
    4256:	4c 89 e6             	mov    %r12,%rsi
    4259:	8b 3b                	mov    (%rbx),%edi
    425b:	e8 40 f0 ff ff       	callq  32a0 <read@plt>
    4260:	89 c2                	mov    %eax,%edx
    4262:	89 43 04             	mov    %eax,0x4(%rbx)
    4265:	85 c0                	test   %eax,%eax
    4267:	78 de                	js     4247 <rio_readlineb+0x29>
    4269:	85 c0                	test   %eax,%eax
    426b:	74 40                	je     42ad <rio_readlineb+0x8f>
    426d:	4c 89 63 08          	mov    %r12,0x8(%rbx)
    4271:	48 8b 43 08          	mov    0x8(%rbx),%rax
    4275:	0f b6 08             	movzbl (%rax),%ecx
    4278:	48 83 c0 01          	add    $0x1,%rax
    427c:	48 89 43 08          	mov    %rax,0x8(%rbx)
    4280:	83 ea 01             	sub    $0x1,%edx
    4283:	89 53 04             	mov    %edx,0x4(%rbx)
    4286:	48 83 c5 01          	add    $0x1,%rbp
    428a:	88 4d ff             	mov    %cl,-0x1(%rbp)
    428d:	80 f9 0a             	cmp    $0xa,%cl
    4290:	74 3c                	je     42ce <rio_readlineb+0xb0>
    4292:	41 83 c5 01          	add    $0x1,%r13d
    4296:	4c 39 f5             	cmp    %r14,%rbp
    4299:	74 30                	je     42cb <rio_readlineb+0xad>
    429b:	8b 53 04             	mov    0x4(%rbx),%edx
    429e:	85 d2                	test   %edx,%edx
    42a0:	7e af                	jle    4251 <rio_readlineb+0x33>
    42a2:	eb cd                	jmp    4271 <rio_readlineb+0x53>
    42a4:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    42ab:	eb 05                	jmp    42b2 <rio_readlineb+0x94>
    42ad:	b8 00 00 00 00       	mov    $0x0,%eax
    42b2:	85 c0                	test   %eax,%eax
    42b4:	75 28                	jne    42de <rio_readlineb+0xc0>
    42b6:	b8 00 00 00 00       	mov    $0x0,%eax
    42bb:	41 83 fd 01          	cmp    $0x1,%r13d
    42bf:	75 0d                	jne    42ce <rio_readlineb+0xb0>
    42c1:	eb 12                	jmp    42d5 <rio_readlineb+0xb7>
    42c3:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    42c9:	eb 03                	jmp    42ce <rio_readlineb+0xb0>
    42cb:	4c 89 f5             	mov    %r14,%rbp
    42ce:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
    42d2:	49 63 c5             	movslq %r13d,%rax
    42d5:	5b                   	pop    %rbx
    42d6:	5d                   	pop    %rbp
    42d7:	41 5c                	pop    %r12
    42d9:	41 5d                	pop    %r13
    42db:	41 5e                	pop    %r14
    42dd:	c3                   	retq   
    42de:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    42e5:	eb ee                	jmp    42d5 <rio_readlineb+0xb7>

00000000000042e7 <submitr>:
    42e7:	f3 0f 1e fa          	endbr64 
    42eb:	41 57                	push   %r15
    42ed:	41 56                	push   %r14
    42ef:	41 55                	push   %r13
    42f1:	41 54                	push   %r12
    42f3:	55                   	push   %rbp
    42f4:	53                   	push   %rbx
    42f5:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
    42fc:	ff 
    42fd:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    4304:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    4309:	4c 39 dc             	cmp    %r11,%rsp
    430c:	75 ef                	jne    42fd <submitr+0x16>
    430e:	48 83 ec 68          	sub    $0x68,%rsp
    4312:	49 89 fd             	mov    %rdi,%r13
    4315:	89 f5                	mov    %esi,%ebp
    4317:	48 89 14 24          	mov    %rdx,(%rsp)
    431b:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    4320:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    4325:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
    432a:	48 8b 9c 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbx
    4331:	00 
    4332:	4c 8b bc 24 a8 a0 00 	mov    0xa0a8(%rsp),%r15
    4339:	00 
    433a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4341:	00 00 
    4343:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
    434a:	00 
    434b:	31 c0                	xor    %eax,%eax
    434d:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    4354:	00 
    4355:	ba 00 00 00 00       	mov    $0x0,%edx
    435a:	be 01 00 00 00       	mov    $0x1,%esi
    435f:	bf 02 00 00 00       	mov    $0x2,%edi
    4364:	e8 47 f0 ff ff       	callq  33b0 <socket@plt>
    4369:	85 c0                	test   %eax,%eax
    436b:	0f 88 17 01 00 00    	js     4488 <submitr+0x1a1>
    4371:	41 89 c4             	mov    %eax,%r12d
    4374:	4c 89 ef             	mov    %r13,%rdi
    4377:	e8 54 ef ff ff       	callq  32d0 <gethostbyname@plt>
    437c:	48 85 c0             	test   %rax,%rax
    437f:	0f 84 53 01 00 00    	je     44d8 <submitr+0x1f1>
    4385:	4c 8d 6c 24 30       	lea    0x30(%rsp),%r13
    438a:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
    4391:	00 00 
    4393:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
    439a:	00 00 
    439c:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
    43a3:	48 63 50 14          	movslq 0x14(%rax),%rdx
    43a7:	48 8b 40 18          	mov    0x18(%rax),%rax
    43ab:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
    43b0:	b9 0c 00 00 00       	mov    $0xc,%ecx
    43b5:	48 8b 30             	mov    (%rax),%rsi
    43b8:	e8 23 ef ff ff       	callq  32e0 <__memmove_chk@plt>
    43bd:	66 c1 c5 08          	rol    $0x8,%bp
    43c1:	66 89 6c 24 32       	mov    %bp,0x32(%rsp)
    43c6:	ba 10 00 00 00       	mov    $0x10,%edx
    43cb:	4c 89 ee             	mov    %r13,%rsi
    43ce:	44 89 e7             	mov    %r12d,%edi
    43d1:	e8 8a ef ff ff       	callq  3360 <connect@plt>
    43d6:	85 c0                	test   %eax,%eax
    43d8:	0f 88 65 01 00 00    	js     4543 <submitr+0x25c>
    43de:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
    43e5:	b8 00 00 00 00       	mov    $0x0,%eax
    43ea:	4c 89 c9             	mov    %r9,%rcx
    43ed:	48 89 df             	mov    %rbx,%rdi
    43f0:	f2 ae                	repnz scas %es:(%rdi),%al
    43f2:	48 f7 d1             	not    %rcx
    43f5:	48 89 ce             	mov    %rcx,%rsi
    43f8:	4c 89 c9             	mov    %r9,%rcx
    43fb:	48 8b 3c 24          	mov    (%rsp),%rdi
    43ff:	f2 ae                	repnz scas %es:(%rdi),%al
    4401:	49 89 c8             	mov    %rcx,%r8
    4404:	4c 89 c9             	mov    %r9,%rcx
    4407:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    440c:	f2 ae                	repnz scas %es:(%rdi),%al
    440e:	48 89 ca             	mov    %rcx,%rdx
    4411:	48 f7 d2             	not    %rdx
    4414:	4c 89 c9             	mov    %r9,%rcx
    4417:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    441c:	f2 ae                	repnz scas %es:(%rdi),%al
    441e:	4c 29 c2             	sub    %r8,%rdx
    4421:	48 29 ca             	sub    %rcx,%rdx
    4424:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
    4429:	48 8d 44 02 7b       	lea    0x7b(%rdx,%rax,1),%rax
    442e:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    4434:	0f 87 66 01 00 00    	ja     45a0 <submitr+0x2b9>
    443a:	48 8d 94 24 50 40 00 	lea    0x4050(%rsp),%rdx
    4441:	00 
    4442:	b9 00 04 00 00       	mov    $0x400,%ecx
    4447:	b8 00 00 00 00       	mov    $0x0,%eax
    444c:	48 89 d7             	mov    %rdx,%rdi
    444f:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    4452:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    4459:	48 89 df             	mov    %rbx,%rdi
    445c:	f2 ae                	repnz scas %es:(%rdi),%al
    445e:	48 f7 d1             	not    %rcx
    4461:	48 8d 41 ff          	lea    -0x1(%rcx),%rax
    4465:	83 f9 01             	cmp    $0x1,%ecx
    4468:	0f 84 84 06 00 00    	je     4af2 <submitr+0x80b>
    446e:	8d 40 ff             	lea    -0x1(%rax),%eax
    4471:	4c 8d 74 03 01       	lea    0x1(%rbx,%rax,1),%r14
    4476:	48 89 d5             	mov    %rdx,%rbp
    4479:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
    4480:	00 20 00 
    4483:	e9 a6 01 00 00       	jmpq   462e <submitr+0x347>
    4488:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    448f:	3a 20 43 
    4492:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    4499:	20 75 6e 
    449c:	49 89 07             	mov    %rax,(%r15)
    449f:	49 89 57 08          	mov    %rdx,0x8(%r15)
    44a3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    44aa:	74 6f 20 
    44ad:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    44b4:	65 20 73 
    44b7:	49 89 47 10          	mov    %rax,0x10(%r15)
    44bb:	49 89 57 18          	mov    %rdx,0x18(%r15)
    44bf:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    44c6:	65 
    44c7:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    44ce:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    44d3:	e9 92 04 00 00       	jmpq   496a <submitr+0x683>
    44d8:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    44df:	3a 20 44 
    44e2:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    44e9:	20 75 6e 
    44ec:	49 89 07             	mov    %rax,(%r15)
    44ef:	49 89 57 08          	mov    %rdx,0x8(%r15)
    44f3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    44fa:	74 6f 20 
    44fd:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    4504:	76 65 20 
    4507:	49 89 47 10          	mov    %rax,0x10(%r15)
    450b:	49 89 57 18          	mov    %rdx,0x18(%r15)
    450f:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    4516:	72 20 61 
    4519:	49 89 47 20          	mov    %rax,0x20(%r15)
    451d:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    4524:	65 
    4525:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    452c:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    4531:	44 89 e7             	mov    %r12d,%edi
    4534:	e8 57 ed ff ff       	callq  3290 <close@plt>
    4539:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    453e:	e9 27 04 00 00       	jmpq   496a <submitr+0x683>
    4543:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    454a:	3a 20 55 
    454d:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    4554:	20 74 6f 
    4557:	49 89 07             	mov    %rax,(%r15)
    455a:	49 89 57 08          	mov    %rdx,0x8(%r15)
    455e:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    4565:	65 63 74 
    4568:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    456f:	68 65 20 
    4572:	49 89 47 10          	mov    %rax,0x10(%r15)
    4576:	49 89 57 18          	mov    %rdx,0x18(%r15)
    457a:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    4581:	76 
    4582:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    4589:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    458e:	44 89 e7             	mov    %r12d,%edi
    4591:	e8 fa ec ff ff       	callq  3290 <close@plt>
    4596:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    459b:	e9 ca 03 00 00       	jmpq   496a <submitr+0x683>
    45a0:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    45a7:	3a 20 52 
    45aa:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    45b1:	20 73 74 
    45b4:	49 89 07             	mov    %rax,(%r15)
    45b7:	49 89 57 08          	mov    %rdx,0x8(%r15)
    45bb:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    45c2:	74 6f 6f 
    45c5:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    45cc:	65 2e 20 
    45cf:	49 89 47 10          	mov    %rax,0x10(%r15)
    45d3:	49 89 57 18          	mov    %rdx,0x18(%r15)
    45d7:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    45de:	61 73 65 
    45e1:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    45e8:	49 54 52 
    45eb:	49 89 47 20          	mov    %rax,0x20(%r15)
    45ef:	49 89 57 28          	mov    %rdx,0x28(%r15)
    45f3:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    45fa:	55 46 00 
    45fd:	49 89 47 30          	mov    %rax,0x30(%r15)
    4601:	44 89 e7             	mov    %r12d,%edi
    4604:	e8 87 ec ff ff       	callq  3290 <close@plt>
    4609:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    460e:	e9 57 03 00 00       	jmpq   496a <submitr+0x683>
    4613:	49 0f a3 c5          	bt     %rax,%r13
    4617:	73 21                	jae    463a <submitr+0x353>
    4619:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    461d:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    4621:	48 83 c3 01          	add    $0x1,%rbx
    4625:	4c 39 f3             	cmp    %r14,%rbx
    4628:	0f 84 c4 04 00 00    	je     4af2 <submitr+0x80b>
    462e:	44 0f b6 03          	movzbl (%rbx),%r8d
    4632:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
    4636:	3c 35                	cmp    $0x35,%al
    4638:	76 d9                	jbe    4613 <submitr+0x32c>
    463a:	44 89 c0             	mov    %r8d,%eax
    463d:	83 e0 df             	and    $0xffffffdf,%eax
    4640:	83 e8 41             	sub    $0x41,%eax
    4643:	3c 19                	cmp    $0x19,%al
    4645:	76 d2                	jbe    4619 <submitr+0x332>
    4647:	41 80 f8 20          	cmp    $0x20,%r8b
    464b:	74 63                	je     46b0 <submitr+0x3c9>
    464d:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    4651:	3c 5f                	cmp    $0x5f,%al
    4653:	76 0a                	jbe    465f <submitr+0x378>
    4655:	41 80 f8 09          	cmp    $0x9,%r8b
    4659:	0f 85 06 04 00 00    	jne    4a65 <submitr+0x77e>
    465f:	48 8d bc 24 50 80 00 	lea    0x8050(%rsp),%rdi
    4666:	00 
    4667:	45 0f b6 c0          	movzbl %r8b,%r8d
    466b:	48 8d 0d 64 1f 00 00 	lea    0x1f64(%rip),%rcx        # 65d6 <array.3477+0x1426>
    4672:	ba 08 00 00 00       	mov    $0x8,%edx
    4677:	be 01 00 00 00       	mov    $0x1,%esi
    467c:	b8 00 00 00 00       	mov    $0x0,%eax
    4681:	e8 1a ed ff ff       	callq  33a0 <__sprintf_chk@plt>
    4686:	0f b6 84 24 50 80 00 	movzbl 0x8050(%rsp),%eax
    468d:	00 
    468e:	88 45 00             	mov    %al,0x0(%rbp)
    4691:	0f b6 84 24 51 80 00 	movzbl 0x8051(%rsp),%eax
    4698:	00 
    4699:	88 45 01             	mov    %al,0x1(%rbp)
    469c:	0f b6 84 24 52 80 00 	movzbl 0x8052(%rsp),%eax
    46a3:	00 
    46a4:	88 45 02             	mov    %al,0x2(%rbp)
    46a7:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    46ab:	e9 71 ff ff ff       	jmpq   4621 <submitr+0x33a>
    46b0:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    46b4:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    46b8:	e9 64 ff ff ff       	jmpq   4621 <submitr+0x33a>
    46bd:	48 b8 45 72 72 6f 72 	movabs $0x47203a726f727245,%rax
    46c4:	3a 20 47 
    46c7:	48 ba 45 54 20 72 65 	movabs $0x6575716572205445,%rdx
    46ce:	71 75 65 
    46d1:	49 89 07             	mov    %rax,(%r15)
    46d4:	49 89 57 08          	mov    %rdx,0x8(%r15)
    46d8:	48 b8 73 74 20 65 78 	movabs $0x6565637865207473,%rax
    46df:	63 65 65 
    46e2:	48 ba 64 73 20 62 75 	movabs $0x6566667562207364,%rdx
    46e9:	66 66 65 
    46ec:	49 89 47 10          	mov    %rax,0x10(%r15)
    46f0:	49 89 57 18          	mov    %rdx,0x18(%r15)
    46f4:	41 c7 47 20 72 20 73 	movl   $0x69732072,0x20(%r15)
    46fb:	69 
    46fc:	66 41 c7 47 24 7a 65 	movw   $0x657a,0x24(%r15)
    4703:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    4708:	44 89 e7             	mov    %r12d,%edi
    470b:	e8 80 eb ff ff       	callq  3290 <close@plt>
    4710:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4715:	e9 50 02 00 00       	jmpq   496a <submitr+0x683>
    471a:	48 01 c5             	add    %rax,%rbp
    471d:	48 29 c3             	sub    %rax,%rbx
    4720:	74 26                	je     4748 <submitr+0x461>
    4722:	48 89 da             	mov    %rbx,%rdx
    4725:	48 89 ee             	mov    %rbp,%rsi
    4728:	44 89 e7             	mov    %r12d,%edi
    472b:	e8 30 eb ff ff       	callq  3260 <write@plt>
    4730:	48 85 c0             	test   %rax,%rax
    4733:	7f e5                	jg     471a <submitr+0x433>
    4735:	e8 f6 ea ff ff       	callq  3230 <__errno_location@plt>
    473a:	83 38 04             	cmpl   $0x4,(%rax)
    473d:	0f 85 c3 02 00 00    	jne    4a06 <submitr+0x71f>
    4743:	4c 89 e8             	mov    %r13,%rax
    4746:	eb d2                	jmp    471a <submitr+0x433>
    4748:	44 89 64 24 40       	mov    %r12d,0x40(%rsp)
    474d:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%rsp)
    4754:	00 
    4755:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    475a:	48 8d 44 24 50       	lea    0x50(%rsp),%rax
    475f:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    4764:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    476b:	00 
    476c:	ba 00 20 00 00       	mov    $0x2000,%edx
    4771:	e8 a8 fa ff ff       	callq  421e <rio_readlineb>
    4776:	48 85 c0             	test   %rax,%rax
    4779:	0f 8e ec 00 00 00    	jle    486b <submitr+0x584>
    477f:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
    4784:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
    478b:	00 
    478c:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    4793:	00 
    4794:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
    479b:	00 
    479c:	48 8d 35 3a 1e 00 00 	lea    0x1e3a(%rip),%rsi        # 65dd <array.3477+0x142d>
    47a3:	b8 00 00 00 00       	mov    $0x0,%eax
    47a8:	e8 63 eb ff ff       	callq  3310 <__isoc99_sscanf@plt>
    47ad:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
    47b2:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    47b9:	0f 85 20 01 00 00    	jne    48df <submitr+0x5f8>
    47bf:	48 8d 1d 28 1e 00 00 	lea    0x1e28(%rip),%rbx        # 65ee <array.3477+0x143e>
    47c6:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    47cd:	00 
    47ce:	b9 03 00 00 00       	mov    $0x3,%ecx
    47d3:	48 89 df             	mov    %rbx,%rdi
    47d6:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    47d8:	0f 97 c0             	seta   %al
    47db:	1c 00                	sbb    $0x0,%al
    47dd:	84 c0                	test   %al,%al
    47df:	0f 84 31 01 00 00    	je     4916 <submitr+0x62f>
    47e5:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    47ec:	00 
    47ed:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    47f2:	ba 00 20 00 00       	mov    $0x2000,%edx
    47f7:	e8 22 fa ff ff       	callq  421e <rio_readlineb>
    47fc:	48 85 c0             	test   %rax,%rax
    47ff:	7f c5                	jg     47c6 <submitr+0x4df>
    4801:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    4808:	3a 20 43 
    480b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    4812:	20 75 6e 
    4815:	49 89 07             	mov    %rax,(%r15)
    4818:	49 89 57 08          	mov    %rdx,0x8(%r15)
    481c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    4823:	74 6f 20 
    4826:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    482d:	68 65 61 
    4830:	49 89 47 10          	mov    %rax,0x10(%r15)
    4834:	49 89 57 18          	mov    %rdx,0x18(%r15)
    4838:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    483f:	66 72 6f 
    4842:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    4849:	76 65 72 
    484c:	49 89 47 20          	mov    %rax,0x20(%r15)
    4850:	49 89 57 28          	mov    %rdx,0x28(%r15)
    4854:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    4859:	44 89 e7             	mov    %r12d,%edi
    485c:	e8 2f ea ff ff       	callq  3290 <close@plt>
    4861:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4866:	e9 ff 00 00 00       	jmpq   496a <submitr+0x683>
    486b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    4872:	3a 20 43 
    4875:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    487c:	20 75 6e 
    487f:	49 89 07             	mov    %rax,(%r15)
    4882:	49 89 57 08          	mov    %rdx,0x8(%r15)
    4886:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    488d:	74 6f 20 
    4890:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    4897:	66 69 72 
    489a:	49 89 47 10          	mov    %rax,0x10(%r15)
    489e:	49 89 57 18          	mov    %rdx,0x18(%r15)
    48a2:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    48a9:	61 64 65 
    48ac:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    48b3:	6d 20 73 
    48b6:	49 89 47 20          	mov    %rax,0x20(%r15)
    48ba:	49 89 57 28          	mov    %rdx,0x28(%r15)
    48be:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    48c5:	65 
    48c6:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    48cd:	44 89 e7             	mov    %r12d,%edi
    48d0:	e8 bb e9 ff ff       	callq  3290 <close@plt>
    48d5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    48da:	e9 8b 00 00 00       	jmpq   496a <submitr+0x683>
    48df:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
    48e6:	00 
    48e7:	48 8d 0d 3a 1c 00 00 	lea    0x1c3a(%rip),%rcx        # 6528 <array.3477+0x1378>
    48ee:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    48f5:	be 01 00 00 00       	mov    $0x1,%esi
    48fa:	4c 89 ff             	mov    %r15,%rdi
    48fd:	b8 00 00 00 00       	mov    $0x0,%eax
    4902:	e8 99 ea ff ff       	callq  33a0 <__sprintf_chk@plt>
    4907:	44 89 e7             	mov    %r12d,%edi
    490a:	e8 81 e9 ff ff       	callq  3290 <close@plt>
    490f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4914:	eb 54                	jmp    496a <submitr+0x683>
    4916:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    491d:	00 
    491e:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    4923:	ba 00 20 00 00       	mov    $0x2000,%edx
    4928:	e8 f1 f8 ff ff       	callq  421e <rio_readlineb>
    492d:	48 85 c0             	test   %rax,%rax
    4930:	7e 61                	jle    4993 <submitr+0x6ac>
    4932:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    4939:	00 
    493a:	4c 89 ff             	mov    %r15,%rdi
    493d:	e8 fe e8 ff ff       	callq  3240 <strcpy@plt>
    4942:	44 89 e7             	mov    %r12d,%edi
    4945:	e8 46 e9 ff ff       	callq  3290 <close@plt>
    494a:	b9 03 00 00 00       	mov    $0x3,%ecx
    494f:	48 8d 3d 9b 1c 00 00 	lea    0x1c9b(%rip),%rdi        # 65f1 <array.3477+0x1441>
    4956:	4c 89 fe             	mov    %r15,%rsi
    4959:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    495b:	0f 97 c0             	seta   %al
    495e:	1c 00                	sbb    $0x0,%al
    4960:	84 c0                	test   %al,%al
    4962:	0f 95 c0             	setne  %al
    4965:	0f b6 c0             	movzbl %al,%eax
    4968:	f7 d8                	neg    %eax
    496a:	48 8b 94 24 58 a0 00 	mov    0xa058(%rsp),%rdx
    4971:	00 
    4972:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
    4979:	00 00 
    497b:	0f 85 fb 01 00 00    	jne    4b7c <submitr+0x895>
    4981:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
    4988:	5b                   	pop    %rbx
    4989:	5d                   	pop    %rbp
    498a:	41 5c                	pop    %r12
    498c:	41 5d                	pop    %r13
    498e:	41 5e                	pop    %r14
    4990:	41 5f                	pop    %r15
    4992:	c3                   	retq   
    4993:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    499a:	3a 20 43 
    499d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    49a4:	20 75 6e 
    49a7:	49 89 07             	mov    %rax,(%r15)
    49aa:	49 89 57 08          	mov    %rdx,0x8(%r15)
    49ae:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    49b5:	74 6f 20 
    49b8:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    49bf:	73 74 61 
    49c2:	49 89 47 10          	mov    %rax,0x10(%r15)
    49c6:	49 89 57 18          	mov    %rdx,0x18(%r15)
    49ca:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    49d1:	65 73 73 
    49d4:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    49db:	72 6f 6d 
    49de:	49 89 47 20          	mov    %rax,0x20(%r15)
    49e2:	49 89 57 28          	mov    %rdx,0x28(%r15)
    49e6:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    49ed:	65 72 00 
    49f0:	49 89 47 30          	mov    %rax,0x30(%r15)
    49f4:	44 89 e7             	mov    %r12d,%edi
    49f7:	e8 94 e8 ff ff       	callq  3290 <close@plt>
    49fc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4a01:	e9 64 ff ff ff       	jmpq   496a <submitr+0x683>
    4a06:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    4a0d:	3a 20 43 
    4a10:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    4a17:	20 75 6e 
    4a1a:	49 89 07             	mov    %rax,(%r15)
    4a1d:	49 89 57 08          	mov    %rdx,0x8(%r15)
    4a21:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    4a28:	74 6f 20 
    4a2b:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    4a32:	20 74 6f 
    4a35:	49 89 47 10          	mov    %rax,0x10(%r15)
    4a39:	49 89 57 18          	mov    %rdx,0x18(%r15)
    4a3d:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    4a44:	73 65 72 
    4a47:	49 89 47 20          	mov    %rax,0x20(%r15)
    4a4b:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    4a52:	00 
    4a53:	44 89 e7             	mov    %r12d,%edi
    4a56:	e8 35 e8 ff ff       	callq  3290 <close@plt>
    4a5b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4a60:	e9 05 ff ff ff       	jmpq   496a <submitr+0x683>
    4a65:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    4a6c:	3a 20 52 
    4a6f:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    4a76:	20 73 74 
    4a79:	49 89 07             	mov    %rax,(%r15)
    4a7c:	49 89 57 08          	mov    %rdx,0x8(%r15)
    4a80:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    4a87:	63 6f 6e 
    4a8a:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    4a91:	20 61 6e 
    4a94:	49 89 47 10          	mov    %rax,0x10(%r15)
    4a98:	49 89 57 18          	mov    %rdx,0x18(%r15)
    4a9c:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    4aa3:	67 61 6c 
    4aa6:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    4aad:	6e 70 72 
    4ab0:	49 89 47 20          	mov    %rax,0x20(%r15)
    4ab4:	49 89 57 28          	mov    %rdx,0x28(%r15)
    4ab8:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    4abf:	6c 65 20 
    4ac2:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    4ac9:	63 74 65 
    4acc:	49 89 47 30          	mov    %rax,0x30(%r15)
    4ad0:	49 89 57 38          	mov    %rdx,0x38(%r15)
    4ad4:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    4adb:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    4ae0:	44 89 e7             	mov    %r12d,%edi
    4ae3:	e8 a8 e7 ff ff       	callq  3290 <close@plt>
    4ae8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4aed:	e9 78 fe ff ff       	jmpq   496a <submitr+0x683>
    4af2:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    4af9:	00 
    4afa:	48 8d 84 24 50 40 00 	lea    0x4050(%rsp),%rax
    4b01:	00 
    4b02:	50                   	push   %rax
    4b03:	ff 74 24 18          	pushq  0x18(%rsp)
    4b07:	ff 74 24 28          	pushq  0x28(%rsp)
    4b0b:	ff 74 24 20          	pushq  0x20(%rsp)
    4b0f:	4c 8b 4c 24 20       	mov    0x20(%rsp),%r9
    4b14:	4c 8d 05 3d 1a 00 00 	lea    0x1a3d(%rip),%r8        # 6558 <array.3477+0x13a8>
    4b1b:	b9 00 20 00 00       	mov    $0x2000,%ecx
    4b20:	ba 01 00 00 00       	mov    $0x1,%edx
    4b25:	be 00 20 00 00       	mov    $0x2000,%esi
    4b2a:	b8 00 00 00 00       	mov    $0x0,%eax
    4b2f:	e8 dc e6 ff ff       	callq  3210 <__snprintf_chk@plt>
    4b34:	48 83 c4 20          	add    $0x20,%rsp
    4b38:	3d ff 1f 00 00       	cmp    $0x1fff,%eax
    4b3d:	0f 8f 7a fb ff ff    	jg     46bd <submitr+0x3d6>
    4b43:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    4b4a:	00 
    4b4b:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    4b52:	b8 00 00 00 00       	mov    $0x0,%eax
    4b57:	f2 ae                	repnz scas %es:(%rdi),%al
    4b59:	48 f7 d1             	not    %rcx
    4b5c:	48 89 cb             	mov    %rcx,%rbx
    4b5f:	48 83 eb 01          	sub    $0x1,%rbx
    4b63:	0f 84 df fb ff ff    	je     4748 <submitr+0x461>
    4b69:	48 8d ac 24 50 20 00 	lea    0x2050(%rsp),%rbp
    4b70:	00 
    4b71:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    4b77:	e9 a6 fb ff ff       	jmpq   4722 <submitr+0x43b>
    4b7c:	e8 ef e6 ff ff       	callq  3270 <__stack_chk_fail@plt>

0000000000004b81 <init_timeout>:
    4b81:	f3 0f 1e fa          	endbr64 
    4b85:	85 ff                	test   %edi,%edi
    4b87:	75 01                	jne    4b8a <init_timeout+0x9>
    4b89:	c3                   	retq   
    4b8a:	53                   	push   %rbx
    4b8b:	89 fb                	mov    %edi,%ebx
    4b8d:	48 8d 35 54 f6 ff ff 	lea    -0x9ac(%rip),%rsi        # 41e8 <sigalrm_handler>
    4b94:	bf 0e 00 00 00       	mov    $0xe,%edi
    4b99:	e8 22 e7 ff ff       	callq  32c0 <signal@plt>
    4b9e:	85 db                	test   %ebx,%ebx
    4ba0:	bf 00 00 00 00       	mov    $0x0,%edi
    4ba5:	0f 49 fb             	cmovns %ebx,%edi
    4ba8:	e8 d3 e6 ff ff       	callq  3280 <alarm@plt>
    4bad:	5b                   	pop    %rbx
    4bae:	c3                   	retq   

0000000000004baf <init_driver>:
    4baf:	f3 0f 1e fa          	endbr64 
    4bb3:	41 54                	push   %r12
    4bb5:	55                   	push   %rbp
    4bb6:	53                   	push   %rbx
    4bb7:	48 83 ec 20          	sub    $0x20,%rsp
    4bbb:	48 89 fd             	mov    %rdi,%rbp
    4bbe:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4bc5:	00 00 
    4bc7:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    4bcc:	31 c0                	xor    %eax,%eax
    4bce:	be 01 00 00 00       	mov    $0x1,%esi
    4bd3:	bf 0d 00 00 00       	mov    $0xd,%edi
    4bd8:	e8 e3 e6 ff ff       	callq  32c0 <signal@plt>
    4bdd:	be 01 00 00 00       	mov    $0x1,%esi
    4be2:	bf 1d 00 00 00       	mov    $0x1d,%edi
    4be7:	e8 d4 e6 ff ff       	callq  32c0 <signal@plt>
    4bec:	be 01 00 00 00       	mov    $0x1,%esi
    4bf1:	bf 1d 00 00 00       	mov    $0x1d,%edi
    4bf6:	e8 c5 e6 ff ff       	callq  32c0 <signal@plt>
    4bfb:	ba 00 00 00 00       	mov    $0x0,%edx
    4c00:	be 01 00 00 00       	mov    $0x1,%esi
    4c05:	bf 02 00 00 00       	mov    $0x2,%edi
    4c0a:	e8 a1 e7 ff ff       	callq  33b0 <socket@plt>
    4c0f:	85 c0                	test   %eax,%eax
    4c11:	0f 88 9c 00 00 00    	js     4cb3 <init_driver+0x104>
    4c17:	89 c3                	mov    %eax,%ebx
    4c19:	48 8d 3d d2 18 00 00 	lea    0x18d2(%rip),%rdi        # 64f2 <array.3477+0x1342>
    4c20:	e8 ab e6 ff ff       	callq  32d0 <gethostbyname@plt>
    4c25:	48 85 c0             	test   %rax,%rax
    4c28:	0f 84 d1 00 00 00    	je     4cff <init_driver+0x150>
    4c2e:	49 89 e4             	mov    %rsp,%r12
    4c31:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    4c38:	00 
    4c39:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    4c40:	00 00 
    4c42:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    4c48:	48 63 50 14          	movslq 0x14(%rax),%rdx
    4c4c:	48 8b 40 18          	mov    0x18(%rax),%rax
    4c50:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    4c55:	b9 0c 00 00 00       	mov    $0xc,%ecx
    4c5a:	48 8b 30             	mov    (%rax),%rsi
    4c5d:	e8 7e e6 ff ff       	callq  32e0 <__memmove_chk@plt>
    4c62:	66 c7 44 24 02 3b 6e 	movw   $0x6e3b,0x2(%rsp)
    4c69:	ba 10 00 00 00       	mov    $0x10,%edx
    4c6e:	4c 89 e6             	mov    %r12,%rsi
    4c71:	89 df                	mov    %ebx,%edi
    4c73:	e8 e8 e6 ff ff       	callq  3360 <connect@plt>
    4c78:	85 c0                	test   %eax,%eax
    4c7a:	0f 88 e7 00 00 00    	js     4d67 <init_driver+0x1b8>
    4c80:	89 df                	mov    %ebx,%edi
    4c82:	e8 09 e6 ff ff       	callq  3290 <close@plt>
    4c87:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    4c8d:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    4c91:	b8 00 00 00 00       	mov    $0x0,%eax
    4c96:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    4c9b:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    4ca2:	00 00 
    4ca4:	0f 85 f5 00 00 00    	jne    4d9f <init_driver+0x1f0>
    4caa:	48 83 c4 20          	add    $0x20,%rsp
    4cae:	5b                   	pop    %rbx
    4caf:	5d                   	pop    %rbp
    4cb0:	41 5c                	pop    %r12
    4cb2:	c3                   	retq   
    4cb3:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    4cba:	3a 20 43 
    4cbd:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    4cc4:	20 75 6e 
    4cc7:	48 89 45 00          	mov    %rax,0x0(%rbp)
    4ccb:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    4ccf:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    4cd6:	74 6f 20 
    4cd9:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    4ce0:	65 20 73 
    4ce3:	48 89 45 10          	mov    %rax,0x10(%rbp)
    4ce7:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    4ceb:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    4cf2:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    4cf8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4cfd:	eb 97                	jmp    4c96 <init_driver+0xe7>
    4cff:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    4d06:	3a 20 44 
    4d09:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    4d10:	20 75 6e 
    4d13:	48 89 45 00          	mov    %rax,0x0(%rbp)
    4d17:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    4d1b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    4d22:	74 6f 20 
    4d25:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    4d2c:	76 65 20 
    4d2f:	48 89 45 10          	mov    %rax,0x10(%rbp)
    4d33:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    4d37:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    4d3e:	72 20 61 
    4d41:	48 89 45 20          	mov    %rax,0x20(%rbp)
    4d45:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    4d4c:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    4d52:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    4d56:	89 df                	mov    %ebx,%edi
    4d58:	e8 33 e5 ff ff       	callq  3290 <close@plt>
    4d5d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4d62:	e9 2f ff ff ff       	jmpq   4c96 <init_driver+0xe7>
    4d67:	4c 8d 05 84 17 00 00 	lea    0x1784(%rip),%r8        # 64f2 <array.3477+0x1342>
    4d6e:	48 8d 0d 3b 18 00 00 	lea    0x183b(%rip),%rcx        # 65b0 <array.3477+0x1400>
    4d75:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    4d7c:	be 01 00 00 00       	mov    $0x1,%esi
    4d81:	48 89 ef             	mov    %rbp,%rdi
    4d84:	b8 00 00 00 00       	mov    $0x0,%eax
    4d89:	e8 12 e6 ff ff       	callq  33a0 <__sprintf_chk@plt>
    4d8e:	89 df                	mov    %ebx,%edi
    4d90:	e8 fb e4 ff ff       	callq  3290 <close@plt>
    4d95:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4d9a:	e9 f7 fe ff ff       	jmpq   4c96 <init_driver+0xe7>
    4d9f:	e8 cc e4 ff ff       	callq  3270 <__stack_chk_fail@plt>

0000000000004da4 <driver_post>:
    4da4:	f3 0f 1e fa          	endbr64 
    4da8:	53                   	push   %rbx
    4da9:	4c 89 c3             	mov    %r8,%rbx
    4dac:	85 c9                	test   %ecx,%ecx
    4dae:	75 17                	jne    4dc7 <driver_post+0x23>
    4db0:	48 85 ff             	test   %rdi,%rdi
    4db3:	74 05                	je     4dba <driver_post+0x16>
    4db5:	80 3f 00             	cmpb   $0x0,(%rdi)
    4db8:	75 33                	jne    4ded <driver_post+0x49>
    4dba:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    4dbf:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    4dc3:	89 c8                	mov    %ecx,%eax
    4dc5:	5b                   	pop    %rbx
    4dc6:	c3                   	retq   
    4dc7:	48 8d 35 26 18 00 00 	lea    0x1826(%rip),%rsi        # 65f4 <array.3477+0x1444>
    4dce:	bf 01 00 00 00       	mov    $0x1,%edi
    4dd3:	b8 00 00 00 00       	mov    $0x0,%eax
    4dd8:	e8 43 e5 ff ff       	callq  3320 <__printf_chk@plt>
    4ddd:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    4de2:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    4de6:	b8 00 00 00 00       	mov    $0x0,%eax
    4deb:	eb d8                	jmp    4dc5 <driver_post+0x21>
    4ded:	41 50                	push   %r8
    4def:	52                   	push   %rdx
    4df0:	4c 8d 0d 14 18 00 00 	lea    0x1814(%rip),%r9        # 660b <array.3477+0x145b>
    4df7:	49 89 f0             	mov    %rsi,%r8
    4dfa:	48 89 f9             	mov    %rdi,%rcx
    4dfd:	48 8d 15 10 18 00 00 	lea    0x1810(%rip),%rdx        # 6614 <array.3477+0x1464>
    4e04:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
    4e09:	48 8d 3d e2 16 00 00 	lea    0x16e2(%rip),%rdi        # 64f2 <array.3477+0x1342>
    4e10:	e8 d2 f4 ff ff       	callq  42e7 <submitr>
    4e15:	48 83 c4 10          	add    $0x10,%rsp
    4e19:	eb aa                	jmp    4dc5 <driver_post+0x21>
    4e1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000004e20 <__libc_csu_init>:
    4e20:	f3 0f 1e fa          	endbr64 
    4e24:	41 57                	push   %r15
    4e26:	4c 8d 3d b3 2e 00 00 	lea    0x2eb3(%rip),%r15        # 7ce0 <__frame_dummy_init_array_entry>
    4e2d:	41 56                	push   %r14
    4e2f:	49 89 d6             	mov    %rdx,%r14
    4e32:	41 55                	push   %r13
    4e34:	49 89 f5             	mov    %rsi,%r13
    4e37:	41 54                	push   %r12
    4e39:	41 89 fc             	mov    %edi,%r12d
    4e3c:	55                   	push   %rbp
    4e3d:	48 8d 2d a4 2e 00 00 	lea    0x2ea4(%rip),%rbp        # 7ce8 <__do_global_dtors_aux_fini_array_entry>
    4e44:	53                   	push   %rbx
    4e45:	4c 29 fd             	sub    %r15,%rbp
    4e48:	48 83 ec 08          	sub    $0x8,%rsp
    4e4c:	e8 af e1 ff ff       	callq  3000 <_init>
    4e51:	48 c1 fd 03          	sar    $0x3,%rbp
    4e55:	74 1f                	je     4e76 <__libc_csu_init+0x56>
    4e57:	31 db                	xor    %ebx,%ebx
    4e59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    4e60:	4c 89 f2             	mov    %r14,%rdx
    4e63:	4c 89 ee             	mov    %r13,%rsi
    4e66:	44 89 e7             	mov    %r12d,%edi
    4e69:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    4e6d:	48 83 c3 01          	add    $0x1,%rbx
    4e71:	48 39 dd             	cmp    %rbx,%rbp
    4e74:	75 ea                	jne    4e60 <__libc_csu_init+0x40>
    4e76:	48 83 c4 08          	add    $0x8,%rsp
    4e7a:	5b                   	pop    %rbx
    4e7b:	5d                   	pop    %rbp
    4e7c:	41 5c                	pop    %r12
    4e7e:	41 5d                	pop    %r13
    4e80:	41 5e                	pop    %r14
    4e82:	41 5f                	pop    %r15
    4e84:	c3                   	retq   
    4e85:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    4e8c:	00 00 00 00 

0000000000004e90 <__libc_csu_fini>:
    4e90:	f3 0f 1e fa          	endbr64 
    4e94:	c3                   	retq   

Disassembly of section .fini:

0000000000004e98 <_fini>:
    4e98:	f3 0f 1e fa          	endbr64 
    4e9c:	48 83 ec 08          	sub    $0x8,%rsp
    4ea0:	48 83 c4 08          	add    $0x8,%rsp
    4ea4:	c3                   	retq   
