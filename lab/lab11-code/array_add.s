	.file	"array_add.c"
	.text
	.globl	get_elapsed_time_sec
	.type	get_elapsed_time_sec, @function
get_elapsed_time_sec:
.LFB4203:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	imulq	$1000000000, %rax, %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	imulq	$1000000000, %rax, %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovsd	.LC0(%rip), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4203:
	.size	get_elapsed_time_sec, .-get_elapsed_time_sec
	.globl	array_add
	.type	array_add, @function
array_add:
.LFB4204:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L4
.L5:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	-40(%rbp), %rax
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	addl	$1, -4(%rbp)
.L4:
	movl	-4(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L5
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4204:
	.size	array_add, .-array_add
	.globl	array_add_vec
	.type	array_add_vec, @function
array_add_vec:
.LFB4205:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	andq	$-32, %rsp
	subq	$136, %rsp
	movq	%rdi, -96(%rsp)
	movq	%rsi, -104(%rsp)
	movq	%rdx, -112(%rsp)
	movl	%ecx, -116(%rsp)
	movl	$0, -84(%rsp)
	jmp	.L7
.L11:
	movl	-84(%rsp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rsp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rsp)
	movq	-64(%rsp), %rax
	vmovdqa	(%rax), %ymm0
	vmovdqa	%ymm0, -56(%rsp)
	movl	-84(%rsp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-104(%rsp), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rsp)
	movq	-72(%rsp), %rax
	vmovdqa	(%rax), %ymm0
	vmovdqa	%ymm0, -24(%rsp)
	vmovdqa	-56(%rsp), %ymm0
	vmovdqa	%ymm0, 72(%rsp)
	vmovdqa	-24(%rsp), %ymm0
	vmovdqa	%ymm0, 104(%rsp)
	vmovdqa	72(%rsp), %ymm1
	vmovdqa	104(%rsp), %ymm0
	vpaddd	%ymm0, %ymm1, %ymm0
	vmovdqa	%ymm0, 8(%rsp)
	movl	-84(%rsp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-112(%rsp), %rax
	addq	%rdx, %rax
	movq	%rax, -80(%rsp)
	vmovdqa	8(%rsp), %ymm0
	vmovdqa	%ymm0, 40(%rsp)
	movq	-80(%rsp), %rax
	vmovdqa	40(%rsp), %ymm0
	vmovdqa	%ymm0, (%rax)
	nop
	addl	$8, -84(%rsp)
.L7:
	movl	-116(%rsp), %eax
	subl	$7, %eax
	cmpl	%eax, -84(%rsp)
	jl	.L11
	jmp	.L12
.L13:
	movl	-84(%rsp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-96(%rsp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-84(%rsp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-104(%rsp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-84(%rsp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	movq	-112(%rsp), %rax
	addq	%rsi, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	addl	$1, -84(%rsp)
.L12:
	movl	-84(%rsp), %eax
	cmpl	-116(%rsp), %eax
	jl	.L13
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4205:
	.size	array_add_vec, .-array_add_vec
	.globl	fill_array
	.type	fill_array, @function
fill_array:
.LFB4206:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L15
.L16:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	call	rand@PLT
	movl	%eax, (%rbx)
	addl	$1, -20(%rbp)
.L15:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L16
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4206:
	.size	fill_array, .-fill_array
	.globl	array_equals
	.type	array_equals, @function
array_equals:
.LFB4207:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L18
.L21:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L19
	movl	$0, %eax
	jmp	.L20
.L19:
	addl	$1, -4(%rbp)
.L18:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L21
	movl	$1, %eax
.L20:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4207:
	.size	array_equals, .-array_equals
	.section	.rodata
.LC1:
	.string	"Error: posix_memalign failed"
	.text
	.globl	alloc_aligned_int_array
	.type	alloc_aligned_int_array, @function
alloc_aligned_int_array:
.LFB4208:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	leaq	-16(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	posix_memalign@PLT
	testl	%eax, %eax
	je	.L23
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L25
.L23:
	movq	-16(%rbp), %rax
.L25:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L26
	call	__stack_chk_fail@PLT
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4208:
	.size	alloc_aligned_int_array, .-alloc_aligned_int_array
	.section	.rodata
.LC2:
	.string	"Setting up arrays..."
.LC3:
	.string	"Starting array addition..."
.LC4:
	.string	"array_add: %.3f sec.\n"
.LC5:
	.string	"array_add_vec: %.3f sec.\n"
	.align 8
.LC6:
	.string	"Array add functions produced inconsistent results"
	.text
	.globl	main
	.type	main, @function
main:
.LFB4209:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$2021, %edi
	call	srand@PLT
	movl	$300000005, %edi
	call	alloc_aligned_int_array
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movl	$300000005, %esi
	movq	%rax, %rdi
	call	fill_array
	movl	$300000005, %edi
	call	alloc_aligned_int_array
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	$300000005, %esi
	movq	%rax, %rdi
	call	fill_array
	movl	$300000005, %edi
	call	alloc_aligned_int_array
	movq	%rax, -64(%rbp)
	movl	$300000005, %edi
	call	alloc_aligned_int_array
	movq	%rax, -56(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	clock_gettime@PLT
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rax
	movl	$300000005, %ecx
	movq	%rax, %rdi
	call	array_add
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	clock_gettime@PLT
	leaq	-32(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_elapsed_time_sec
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	clock_gettime@PLT
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rax
	movl	$300000005, %ecx
	movq	%rax, %rdi
	call	array_add_vec
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	clock_gettime@PLT
	leaq	-32(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_elapsed_time_sec
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rax
	movl	$300000005, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	array_equals
	testl	%eax, %eax
	jne	.L28
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L28:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L30
	call	__stack_chk_fail@PLT
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4209:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1104006501
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
