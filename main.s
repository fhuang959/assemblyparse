	.file	"main.c"
	.text
	.data
	.align 32
	.type	KETOPT_INIT, @object
	.size	KETOPT_INIT, 32
KETOPT_INIT:
	.long	1
	.long	0
	.quad	0
	.long	-1
	.long	1
	.long	0
	.long	0
	.text
	.type	ketopt_permute, @function
ketopt_permute:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L2
.L3:
	movl	-28(%rbp), %eax
	subl	-12(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-28(%rbp), %eax
	subl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
	addl	$1, -12(%rbp)
.L2:
	movl	-12(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L3
	movl	-28(%rbp), %eax
	subl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	ketopt_permute, .-ketopt_permute
	.type	ketopt, @function
ketopt:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	movl	%ecx, -80(%rbp)
	movq	%r8, -96(%rbp)
	movq	%r9, -104(%rbp)
	movl	$-1, -56(%rbp)
	cmpl	$0, -80(%rbp)
	je	.L5
	jmp	.L6
.L7:
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-72(%rbp), %rax
	movl	28(%rax), %eax
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 28(%rax)
.L6:
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -76(%rbp)
	jle	.L5
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L7
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L7
.L5:
	movq	-72(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-72(%rbp), %rax
	movl	$-1, 16(%rax)
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -76(%rbp)
	jle	.L8
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L8
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L9
.L8:
	movq	-72(%rbp), %rax
	movl	20(%rax), %edx
	movq	-72(%rbp), %rax
	movl	28(%rax), %eax
	subl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
	movl	$-1, %eax
	jmp	.L10
.L9:
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L11
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L11
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L12
	movq	-72(%rbp), %rax
	movl	28(%rax), %edx
	movq	-72(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-88(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ketopt_permute
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-72(%rbp), %rax
	movl	20(%rax), %edx
	movq	-72(%rbp), %rax
	movl	28(%rax), %eax
	subl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
	movl	$-1, %eax
	jmp	.L10
.L12:
	movq	-72(%rbp), %rax
	movl	$0, 4(%rax)
	movl	$63, -56(%rbp)
	movq	-72(%rbp), %rax
	movl	$-1, 24(%rax)
	cmpq	$0, -104(%rbp)
	je	.L40
	movl	$0, -44(%rbp)
	movl	$0, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	$2, -52(%rbp)
	jmp	.L14
.L16:
	addl	$1, -52(%rbp)
.L14:
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L15
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L16
.L15:
	movl	$0, -48(%rbp)
	jmp	.L17
.L20:
	movl	-52(%rbp), %eax
	subl	$2, %eax
	movslq	%eax, %rdx
	movl	-48(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rcx
	movq	-104(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rcx
	movl	20(%rcx), %ecx
	movslq	%ecx, %rcx
	leaq	0(,%rcx,8), %rsi
	movq	-88(%rbp), %rcx
	addq	%rsi, %rcx
	movq	(%rcx), %rcx
	addq	$2, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L18
	movl	-48(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	subq	$2, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L19
	addl	$1, -44(%rbp)
	movl	-48(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	jmp	.L18
.L19:
	addl	$1, -40(%rbp)
	movl	-48(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
.L18:
	addl	$1, -48(%rbp)
.L17:
	movl	-48(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20
	cmpl	$1, -44(%rbp)
	jg	.L21
	cmpl	$0, -44(%rbp)
	jne	.L22
	cmpl	$1, -40(%rbp)
	jle	.L22
.L21:
	movl	$63, %eax
	jmp	.L10
.L22:
	cmpl	$1, -44(%rbp)
	je	.L23
	cmpl	$1, -40(%rbp)
	jne	.L24
	movq	-24(%rbp), %rax
	jmp	.L26
.L24:
	movl	$0, %eax
	jmp	.L26
.L23:
	movq	-32(%rbp), %rax
.L26:
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L40
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -56(%rbp)
	movq	-72(%rbp), %rax
	movl	-56(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-16(%rbp), %rdx
	movq	-104(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$4, %rax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L27
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 8(%rax)
.L27:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L40
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L40
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	movl	-76(%rbp), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.L28
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L40
.L28:
	movl	$58, -56(%rbp)
	jmp	.L40
.L11:
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L30
	movq	-72(%rbp), %rax
	movl	$1, 24(%rax)
.L30:
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	leal	1(%rax), %ecx
	movq	-72(%rbp), %rdx
	movl	%ecx, 24(%rdx)
	cltq
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %edx
	movq	-96(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L31
	movl	$63, -56(%rbp)
	jmp	.L29
.L31:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	jne	.L29
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L32
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	movl	-76(%rbp), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.L33
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L35
.L33:
	movl	$58, -56(%rbp)
	jmp	.L35
.L32:
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 8(%rax)
.L35:
	movq	-72(%rbp), %rax
	movl	$-1, 24(%rax)
	jmp	.L29
.L40:
	nop
.L29:
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	js	.L36
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L37
.L36:
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-72(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-72(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jle	.L37
	movl	-36(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.L38
.L39:
	movq	-72(%rbp), %rax
	movl	28(%rax), %edx
	movl	-52(%rbp), %ecx
	movq	-88(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ketopt_permute
	addl	$1, -52(%rbp)
.L38:
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jl	.L39
.L37:
	movq	-72(%rbp), %rax
	movl	20(%rax), %edx
	movq	-72(%rbp), %rax
	movl	28(%rax), %eax
	subl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
	movl	-56(%rbp), %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	ketopt, .-ketopt
	.globl	liftrlimit
	.type	liftrlimit, @function
liftrlimit:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$9, %edi
	call	getrlimit@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$9, %edi
	call	setrlimit@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L42
	call	__stack_chk_fail@PLT
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	liftrlimit, .-liftrlimit
	.section	.rodata
.LC0:
	.string	"bucket-bits"
.LC1:
	.string	"mb-size"
.LC2:
	.string	"seed"
.LC3:
	.string	"no-kalloc"
.LC4:
	.string	"print-qname"
.LC5:
	.string	"no-self"
.LC6:
	.string	"print-seeds"
.LC7:
	.string	"max-chain-skip"
.LC8:
	.string	"min-dp-len"
.LC9:
	.string	"print-aln-seq"
.LC10:
	.string	"splice"
.LC11:
	.string	"cost-non-gt-ag"
.LC12:
	.string	"no-long-join"
.LC13:
	.string	"sr"
.LC14:
	.string	"frag"
.LC15:
	.string	"secondary"
.LC16:
	.string	"cs"
.LC17:
	.string	"end-bonus"
.LC18:
	.string	"no-pairing"
.LC19:
	.string	"splice-flank"
.LC20:
	.string	"idx-no-seq"
.LC21:
	.string	"end-seed-pen"
.LC22:
	.string	"for-only"
.LC23:
	.string	"rev-only"
.LC24:
	.string	"heap-sort"
.LC25:
	.string	"all-chain"
.LC26:
	.string	"dual"
.LC27:
	.string	"max-clip-ratio"
.LC28:
	.string	"min-occ-floor"
.LC29:
	.string	"MD"
.LC30:
	.string	"lj-min-ratio"
.LC31:
	.string	"score-N"
.LC32:
	.string	"eqx"
.LC33:
	.string	"paf-no-hit"
.LC34:
	.string	"split-prefix"
.LC35:
	.string	"no-end-flt"
.LC36:
	.string	"hard-mask-level"
.LC37:
	.string	"cap-sw-mem"
.LC38:
	.string	"max-qlen"
.LC39:
	.string	"max-chain-iter"
.LC40:
	.string	"junc-bed"
.LC41:
	.string	"junc-bonus"
.LC42:
	.string	"sam-hit-only"
.LC43:
	.string	"help"
.LC44:
	.string	"max-intron-len"
.LC45:
	.string	"version"
.LC46:
	.string	"min-count"
.LC47:
	.string	"min-chain-score"
.LC48:
	.string	"mask-level"
.LC49:
	.string	"min-dp-score"
.LC50:
	.string	"sam"
	.section	.data.rel.local,"aw",@progbits
	.align 32
	.type	long_options, @object
	.size	long_options, 832
long_options:
	.quad	.LC0
	.long	1
	.long	300
	.quad	.LC1
	.long	1
	.long	75
	.quad	.LC2
	.long	1
	.long	302
	.quad	.LC3
	.long	0
	.long	303
	.quad	.LC4
	.long	0
	.long	304
	.quad	.LC5
	.long	0
	.long	68
	.quad	.LC6
	.long	0
	.long	306
	.quad	.LC7
	.long	1
	.long	307
	.quad	.LC8
	.long	1
	.long	308
	.quad	.LC9
	.long	0
	.long	309
	.quad	.LC10
	.long	0
	.long	310
	.quad	.LC11
	.long	1
	.long	67
	.quad	.LC12
	.long	0
	.long	312
	.quad	.LC13
	.long	0
	.long	313
	.quad	.LC14
	.long	1
	.long	314
	.quad	.LC15
	.long	1
	.long	315
	.quad	.LC16
	.long	2
	.long	316
	.quad	.LC17
	.long	1
	.long	317
	.quad	.LC18
	.long	0
	.long	318
	.quad	.LC19
	.long	1
	.long	319
	.quad	.LC20
	.long	0
	.long	320
	.quad	.LC21
	.long	1
	.long	321
	.quad	.LC22
	.long	0
	.long	322
	.quad	.LC23
	.long	0
	.long	323
	.quad	.LC24
	.long	1
	.long	324
	.quad	.LC25
	.long	0
	.long	80
	.quad	.LC26
	.long	1
	.long	326
	.quad	.LC27
	.long	1
	.long	327
	.quad	.LC28
	.long	1
	.long	328
	.quad	.LC29
	.long	0
	.long	329
	.quad	.LC30
	.long	1
	.long	330
	.quad	.LC31
	.long	1
	.long	331
	.quad	.LC32
	.long	0
	.long	332
	.quad	.LC33
	.long	0
	.long	333
	.quad	.LC34
	.long	1
	.long	334
	.quad	.LC35
	.long	0
	.long	335
	.quad	.LC36
	.long	0
	.long	336
	.quad	.LC37
	.long	1
	.long	337
	.quad	.LC38
	.long	1
	.long	338
	.quad	.LC39
	.long	1
	.long	339
	.quad	.LC40
	.long	1
	.long	340
	.quad	.LC41
	.long	1
	.long	341
	.quad	.LC42
	.long	0
	.long	342
	.quad	.LC43
	.long	0
	.long	104
	.quad	.LC44
	.long	1
	.long	71
	.quad	.LC45
	.long	0
	.long	86
	.quad	.LC46
	.long	1
	.long	110
	.quad	.LC47
	.long	1
	.long	109
	.quad	.LC48
	.long	1
	.long	77
	.quad	.LC49
	.long	1
	.long	115
	.quad	.LC50
	.long	0
	.long	97
	.quad	0
	.long	0
	.long	0
	.text
	.type	mm_parse_num, @function
mm_parse_num:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strtod@PLT
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$71, %al
	je	.L44
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$103, %al
	jne	.L45
.L44:
	movsd	-16(%rbp), %xmm1
	movsd	.LC51(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L46
.L45:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$77, %al
	je	.L47
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$109, %al
	jne	.L48
.L47:
	movsd	-16(%rbp), %xmm1
	movsd	.LC52(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L46
.L48:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$75, %al
	je	.L49
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$107, %al
	jne	.L46
.L49:
	movsd	-16(%rbp), %xmm1
	movsd	.LC53(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
.L46:
	movsd	-16(%rbp), %xmm1
	movsd	.LC54(%rip), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L51
	call	__stack_chk_fail@PLT
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	mm_parse_num, .-mm_parse_num
	.section	.rodata
.LC55:
	.string	"yes"
.LC56:
	.string	"y"
.LC57:
	.string	"no"
.LC58:
	.string	"n"
	.align 8
.LC59:
	.string	"[WARNING]\033[1;31m option '--%s' only accepts 'yes' or 'no'.\033[0m\n"
	.text
	.type	yes_or_no, @function
yes_or_no:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L53
	movq	-24(%rbp), %rax
	leaq	.LC55(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L54
	movq	-24(%rbp), %rax
	leaq	.LC56(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L55
.L54:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	orq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L59
.L55:
	movq	-24(%rbp), %rax
	leaq	.LC57(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L57
	movq	-24(%rbp), %rax
	leaq	.LC58(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L58
.L57:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	notl	%eax
	cltq
	andq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L59
.L58:
	movl	-16(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	long_options(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC59(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L64
.L53:
	movq	-24(%rbp), %rax
	leaq	.LC55(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L60
	movq	-24(%rbp), %rax
	leaq	.LC56(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L61
.L60:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	notl	%eax
	cltq
	andq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L59
.L61:
	movq	-24(%rbp), %rax
	leaq	.LC57(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L62
	movq	-24(%rbp), %rax
	leaq	.LC58(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L63
.L62:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	orq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L59
.L63:
	movl	-16(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	long_options(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC59(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L64
.L59:
.L64:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	yes_or_no, .-yes_or_no
	.section	.rodata
	.align 8
.LC60:
	.string	"2aSDw:k:K:t:r:f:Vv:g:G:I:d:XT:s:x:Hcp:M:n:z:A:B:O:E:m:N:Qu:R:hF:LC:yYPo:"
.LC61:
	.string	"[ERROR] unknown preset '%s'\n"
	.align 8
.LC62:
	.string	"[ERROR] missing option argument\n"
	.align 8
.LC63:
	.string	"[ERROR] unknown option in \"%s\"\n"
.LC64:
	.string	"-"
.LC65:
	.string	"wb"
	.align 8
.LC66:
	.string	"[ERROR]\033[1;31m failed to write the output to file '%s'\033[0m: %s\n"
.LC67:
	.string	"short"
.LC68:
	.string	"long"
.LC69:
	.string	"none"
	.align 8
.LC70:
	.string	"[WARNING]\033[1;31m --cs only takes 'short' or 'long'. Invalid values are assumed to be 'short'.\033[0m\n"
	.align 8
.LC71:
	.string	"[WARNING]\033[1;31m option -S is deprecated and may be removed in future. Please use --cs=long instead.\033[0m\n"
.LC72:
	.string	"2.17-r954-dirty"
	.align 8
.LC74:
	.string	"[ERROR]\033[1;31m unrecognized cDNA direction\033[0m\n"
	.align 8
.LC75:
	.string	"[ERROR]\033[1;31m --splice and --frag should not be specified at the same time.\033[0m\n"
	.align 8
.LC76:
	.string	"[WARNING]\033[1;31m changed '-N 0' to '-N %d --secondary=no'.\033[0m\n"
	.align 8
.LC77:
	.string	"Usage: minimap2 [options] <target.fa>|<target.idx> [query.fa] [...]\n"
.LC78:
	.string	"Options:\n"
.LC79:
	.string	"  Indexing:\n"
	.align 8
.LC80:
	.string	"    -H           use homopolymer-compressed k-mer (preferrable for PacBio)\n"
	.align 8
.LC81:
	.string	"    -k INT       k-mer size (no larger than 28) [%d]\n"
	.align 8
.LC82:
	.string	"    -w INT       minimizer window size [%d]\n"
	.align 8
.LC83:
	.string	"    -I NUM       split index for every ~NUM input bases [4G]\n"
	.align 8
.LC84:
	.string	"    -d FILE      dump index to FILE []\n"
.LC85:
	.string	"  Mapping:\n"
	.align 8
.LC86:
	.string	"    -f FLOAT     filter out top FLOAT fraction of repetitive minimizers [%g]\n"
	.align 8
.LC87:
	.string	"    -g NUM       stop chain enlongation if there are no minimizers in INT-bp [%d]\n"
	.align 8
.LC88:
	.string	"    -G NUM       max intron length (effective with -xsplice; changing -r) [200k]\n"
	.align 8
.LC89:
	.string	"    -F NUM       max fragment length (effective with -xsr or in the fragment mode) [800]\n"
	.align 8
.LC90:
	.string	"    -r NUM       bandwidth used in chaining and DP-based alignment [%d]\n"
	.align 8
.LC91:
	.string	"    -n INT       minimal number of minimizers on a chain [%d]\n"
	.align 8
.LC92:
	.string	"    -m INT       minimal chaining score (matching bases minus log gap penalty) [%d]\n"
	.align 8
.LC93:
	.string	"    -X           skip self and dual mappings (for the all-vs-all mode)\n"
	.align 8
.LC94:
	.string	"    -p FLOAT     min secondary-to-primary score ratio [%g]\n"
	.align 8
.LC95:
	.string	"    -N INT       retain at most INT secondary alignments [%d]\n"
.LC96:
	.string	"  Alignment:\n"
	.align 8
.LC97:
	.string	"    -A INT       matching score [%d]\n"
	.align 8
.LC98:
	.string	"    -B INT       mismatch penalty [%d]\n"
	.align 8
.LC99:
	.string	"    -O INT[,INT] gap open penalty [%d,%d]\n"
	.align 8
.LC100:
	.string	"    -E INT[,INT] gap extension penalty; a k-long gap costs min{O1+k*E1,O2+k*E2} [%d,%d]\n"
	.align 8
.LC101:
	.string	"    -z INT[,INT] Z-drop score and inversion Z-drop score [%d,%d]\n"
	.align 8
.LC102:
	.string	"    -s INT       minimal peak DP alignment score [%d]\n"
	.align 8
.LC103:
	.string	"    -u CHAR      how to find GT-AG. f:transcript strand, b:both strands, n:don't match GT-AG [n]\n"
.LC104:
	.string	"  Input/Output:\n"
	.align 8
.LC105:
	.string	"    -a           output in the SAM format (PAF by default)\n"
	.align 8
.LC106:
	.string	"    -o FILE      output alignments to FILE [stdout]\n"
	.align 8
.LC107:
	.string	"    -L           write CIGAR with >65535 ops at the CG tag\n"
	.align 8
.LC108:
	.string	"    -R STR       SAM read group line in a format like '@RG\\tID:foo\\tSM:bar' []\n"
	.align 8
.LC109:
	.string	"    -c           output CIGAR in PAF\n"
	.align 8
.LC110:
	.string	"    --cs[=STR]   output the cs tag; STR is 'short' (if absent) or 'long' [none]\n"
	.align 8
.LC111:
	.string	"    --MD         output the MD tag\n"
	.align 8
.LC112:
	.string	"    --eqx        write =/X CIGAR operators\n"
	.align 8
.LC113:
	.string	"    -Y           use soft clipping for supplementary alignments\n"
	.align 8
.LC114:
	.string	"    -t INT       number of threads [%d]\n"
	.align 8
.LC115:
	.string	"    -K NUM       minibatch size for mapping [500M]\n"
	.align 8
.LC116:
	.string	"    --version    show version number\n"
.LC117:
	.string	"  Preset:\n"
	.align 8
.LC118:
	.string	"    -x STR       preset (always applied before other options; see minimap2.1 for details) []\n"
	.align 8
.LC119:
	.string	"                 - map-pb/map-ont: PacBio/Nanopore vs reference mapping\n"
	.align 8
.LC120:
	.string	"                 - ava-pb/ava-ont: PacBio/Nanopore read overlap\n"
	.align 8
.LC121:
	.string	"                 - asm5/asm10/asm20: asm-to-ref mapping, for ~0.1/1/5%% sequence divergence\n"
	.align 8
.LC122:
	.string	"                 - splice: long-read spliced alignment\n"
	.align 8
.LC123:
	.string	"                 - sr: genomic short-read mapping\n"
	.align 8
.LC124:
	.string	"\nSee `man ./minimap2.1' for detailed description of these and other advanced command-line options.\n"
	.align 8
.LC125:
	.string	"[ERROR] incorrect input: in the sr mode, please specify no more than two query files.\n"
	.align 8
.LC126:
	.string	"[ERROR] failed to open file '%s': %s\n"
	.align 8
.LC127:
	.string	"[ERROR] missing input: please specify a query file to map or option -d to keep the index\n"
	.align 8
.LC128:
	.string	"[WARNING]\033[1;31m `-N 0' reduces alignment accuracy. Please use --secondary=no to suppress secondary alignments.\033[0m\n"
	.align 8
.LC129:
	.string	"[ERROR] the prebuilt index doesn't contain sequences.\n"
	.align 8
.LC130:
	.string	"[WARNING]\033[1;31m For a multi-part index, no @SQ lines will be outputted. Please use --split-prefix.\033[0m\n"
	.align 8
.LC131:
	.string	"[M::%s::%.3f*%.2f] loaded/built the index for %d target sequence(s)\n"
	.align 8
.LC132:
	.string	"[ERROR] failed to write the results"
.LC133:
	.string	"[M::%s] Version: %s\n"
.LC134:
	.string	"[M::%s] CMD:"
.LC135:
	.string	" %s"
	.align 8
.LC137:
	.string	"\n[M::%s] Real time: %.3f sec; CPU: %.3f sec; Peak RSS: %.3f GB\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$424, %rsp
	.cfi_offset 3, -24
	movl	%edi, -404(%rbp)
	movq	%rsi, -416(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	.LC60(%rip), %rax
	movq	%rax, -320(%rbp)
	movq	KETOPT_INIT(%rip), %rax
	movq	8+KETOPT_INIT(%rip), %rdx
	movq	%rax, -256(%rbp)
	movq	%rdx, -248(%rbp)
	movq	16+KETOPT_INIT(%rip), %rax
	movq	24+KETOPT_INIT(%rip), %rdx
	movq	%rax, -240(%rbp)
	movq	%rdx, -232(%rbp)
	movl	$3, -384(%rbp)
	movl	$-1, -380(%rbp)
	movq	$0, -352(%rbp)
	movq	$0, -344(%rbp)
	movq	$0, -336(%rbp)
	movq	stderr(%rip), %rax
	movq	%rax, -328(%rbp)
	movl	$3, mm_verbose(%rip)
	movl	$0, %eax
	call	liftrlimit
	call	realtime@PLT
	movq	%xmm0, %rax
	movq	%rax, mm_realtime0(%rip)
	leaq	-224(%rbp), %rdx
	leaq	-288(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	mm_set_opt@PLT
	jmp	.L66
.L70:
	cmpl	$120, -376(%rbp)
	jne	.L67
	movq	-248(%rbp), %rax
	leaq	-224(%rbp), %rdx
	leaq	-288(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mm_set_opt@PLT
	testl	%eax, %eax
	jns	.L66
	movq	-248(%rbp), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC61(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$1, %eax
	jmp	.L196
.L67:
	cmpl	$58, -376(%rbp)
	jne	.L69
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$32, %edx
	movl	$1, %esi
	leaq	.LC62(%rip), %rdi
	call	fwrite@PLT
	movl	$1, %eax
	jmp	.L196
.L69:
	cmpl	$63, -376(%rbp)
	jne	.L66
	movl	-236(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-416(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC63(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$1, %eax
	jmp	.L196
.L66:
	movq	-320(%rbp), %rcx
	movq	-416(%rbp), %rdx
	movl	-404(%rbp), %esi
	leaq	-256(%rbp), %rax
	leaq	long_options(%rip), %r9
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ketopt
	movl	%eax, -376(%rbp)
	cmpl	$0, -376(%rbp)
	jns	.L70
	movq	KETOPT_INIT(%rip), %rax
	movq	8+KETOPT_INIT(%rip), %rdx
	movq	%rax, -256(%rbp)
	movq	%rdx, -248(%rbp)
	movq	16+KETOPT_INIT(%rip), %rax
	movq	24+KETOPT_INIT(%rip), %rdx
	movq	%rax, -240(%rbp)
	movq	%rdx, -232(%rbp)
	jmp	.L71
.L167:
	cmpl	$119, -376(%rbp)
	jne	.L72
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movw	%ax, -286(%rbp)
	jmp	.L71
.L72:
	cmpl	$107, -376(%rbp)
	jne	.L73
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movw	%ax, -288(%rbp)
	jmp	.L71
.L73:
	cmpl	$72, -376(%rbp)
	jne	.L74
	movzwl	-284(%rbp), %eax
	orl	$1, %eax
	movw	%ax, -284(%rbp)
	jmp	.L71
.L74:
	cmpl	$100, -376(%rbp)
	jne	.L75
	movq	-248(%rbp), %rax
	movq	%rax, -352(%rbp)
	jmp	.L71
.L75:
	cmpl	$114, -376(%rbp)
	jne	.L76
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	mm_parse_num
	movl	%eax, -204(%rbp)
	jmp	.L71
.L76:
	cmpl	$116, -376(%rbp)
	jne	.L77
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -384(%rbp)
	jmp	.L71
.L77:
	cmpl	$118, -376(%rbp)
	jne	.L78
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, mm_verbose(%rip)
	jmp	.L71
.L78:
	cmpl	$103, -376(%rbp)
	jne	.L79
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	mm_parse_num
	movl	%eax, -200(%rbp)
	jmp	.L71
.L79:
	cmpl	$71, -376(%rbp)
	jne	.L80
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	mm_parse_num
	movl	%eax, %edx
	leaq	-224(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	mm_mapopt_max_intron_len@PLT
	jmp	.L71
.L80:
	cmpl	$70, -376(%rbp)
	jne	.L81
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	mm_parse_num
	movl	%eax, -192(%rbp)
	jmp	.L71
.L81:
	cmpl	$78, -376(%rbp)
	jne	.L82
	movl	-164(%rbp), %eax
	movl	%eax, -380(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -164(%rbp)
	jmp	.L71
.L82:
	cmpl	$112, -376(%rbp)
	jne	.L83
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -168(%rbp)
	jmp	.L71
.L83:
	cmpl	$77, -376(%rbp)
	jne	.L84
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -172(%rbp)
	jmp	.L71
.L84:
	cmpl	$99, -376(%rbp)
	jne	.L85
	movq	-224(%rbp), %rax
	orq	$36, %rax
	movq	%rax, -224(%rbp)
	jmp	.L71
.L85:
	cmpl	$68, -376(%rbp)
	jne	.L86
	movq	-224(%rbp), %rax
	orq	$1, %rax
	movq	%rax, -224(%rbp)
	jmp	.L71
.L86:
	cmpl	$80, -376(%rbp)
	jne	.L87
	movq	-224(%rbp), %rax
	orq	$8388608, %rax
	movq	%rax, -224(%rbp)
	jmp	.L71
.L87:
	cmpl	$88, -376(%rbp)
	jne	.L88
	movq	-224(%rbp), %rax
	orq	$8389635, %rax
	movq	%rax, -224(%rbp)
	jmp	.L71
.L88:
	cmpl	$97, -376(%rbp)
	jne	.L89
	movq	-224(%rbp), %rax
	orq	$12, %rax
	movq	%rax, -224(%rbp)
	jmp	.L71
.L89:
	cmpl	$81, -376(%rbp)
	jne	.L90
	movq	-224(%rbp), %rax
	orq	$16, %rax
	movq	%rax, -224(%rbp)
	jmp	.L71
.L90:
	cmpl	$89, -376(%rbp)
	jne	.L91
	movq	-224(%rbp), %rax
	orq	$524288, %rax
	movq	%rax, -224(%rbp)
	jmp	.L71
.L91:
	cmpl	$76, -376(%rbp)
	jne	.L92
	movq	-224(%rbp), %rax
	orq	$65536, %rax
	movq	%rax, -224(%rbp)
	jmp	.L71
.L92:
	cmpl	$121, -376(%rbp)
	jne	.L93
	movq	-224(%rbp), %rax
	orq	$33554432, %rax
	movq	%rax, -224(%rbp)
	jmp	.L71
.L93:
	cmpl	$84, -376(%rbp)
	jne	.L94
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -212(%rbp)
	jmp	.L71
.L94:
	cmpl	$110, -376(%rbp)
	jne	.L95
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -180(%rbp)
	jmp	.L71
.L95:
	cmpl	$109, -376(%rbp)
	jne	.L96
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -176(%rbp)
	jmp	.L71
.L96:
	cmpl	$65, -376(%rbp)
	jne	.L97
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -144(%rbp)
	jmp	.L71
.L97:
	cmpl	$66, -376(%rbp)
	jne	.L98
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -140(%rbp)
	jmp	.L71
.L98:
	cmpl	$115, -376(%rbp)
	jne	.L99
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -96(%rbp)
	jmp	.L71
.L99:
	cmpl	$67, -376(%rbp)
	jne	.L100
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -116(%rbp)
	jmp	.L71
.L100:
	cmpl	$73, -376(%rbp)
	jne	.L101
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	mm_parse_num
	movq	%rax, -272(%rbp)
	jmp	.L71
.L101:
	cmpl	$75, -376(%rbp)
	jne	.L102
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	mm_parse_num
	movl	%eax, -52(%rbp)
	jmp	.L71
.L102:
	cmpl	$82, -376(%rbp)
	jne	.L103
	movq	-248(%rbp), %rax
	movq	%rax, -344(%rbp)
	jmp	.L71
.L103:
	cmpl	$104, -376(%rbp)
	jne	.L104
	movq	stdout(%rip), %rax
	movq	%rax, -328(%rbp)
	jmp	.L71
.L104:
	cmpl	$50, -376(%rbp)
	jne	.L105
	movq	-224(%rbp), %rax
	orb	$-128, %ah
	movq	%rax, -224(%rbp)
	jmp	.L71
.L105:
	cmpl	$111, -376(%rbp)
	jne	.L106
	movq	-248(%rbp), %rax
	leaq	.LC64(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L71
	movq	stdout(%rip), %rdx
	movq	-248(%rbp), %rax
	leaq	.LC65(%rip), %rsi
	movq	%rax, %rdi
	call	freopen@PLT
	testq	%rax, %rax
	jne	.L71
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movq	-248(%rbp), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC66(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$1, %edi
	call	exit@PLT
.L106:
	cmpl	$300, -376(%rbp)
	jne	.L107
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movw	%ax, -282(%rbp)
	jmp	.L71
.L107:
	cmpl	$302, -376(%rbp)
	jne	.L108
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -216(%rbp)
	jmp	.L71
.L108:
	cmpl	$303, -376(%rbp)
	jne	.L109
	movl	mm_dbg_flag(%rip), %eax
	orl	$1, %eax
	movl	%eax, mm_dbg_flag(%rip)
	jmp	.L71
.L109:
	cmpl	$304, -376(%rbp)
	jne	.L110
	movl	mm_dbg_flag(%rip), %eax
	orl	$2, %eax
	movl	%eax, mm_dbg_flag(%rip)
	jmp	.L71
.L110:
	cmpl	$306, -376(%rbp)
	jne	.L111
	movl	mm_dbg_flag(%rip), %eax
	orl	$6, %eax
	movl	%eax, mm_dbg_flag(%rip)
	movl	$1, -384(%rbp)
	jmp	.L71
.L111:
	cmpl	$307, -376(%rbp)
	jne	.L112
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -188(%rbp)
	jmp	.L71
.L112:
	cmpl	$339, -376(%rbp)
	jne	.L113
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -184(%rbp)
	jmp	.L71
.L113:
	cmpl	$308, -376(%rbp)
	jne	.L114
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -92(%rbp)
	jmp	.L71
.L114:
	cmpl	$309, -376(%rbp)
	jne	.L115
	movl	mm_dbg_flag(%rip), %eax
	orl	$10, %eax
	movl	%eax, mm_dbg_flag(%rip)
	movl	$1, -384(%rbp)
	jmp	.L71
.L115:
	cmpl	$310, -376(%rbp)
	jne	.L116
	movq	-224(%rbp), %rax
	orb	$-128, %al
	movq	%rax, -224(%rbp)
	jmp	.L71
.L116:
	cmpl	$312, -376(%rbp)
	jne	.L117
	movq	-224(%rbp), %rax
	orb	$4, %ah
	movq	%rax, -224(%rbp)
	jmp	.L71
.L117:
	cmpl	$313, -376(%rbp)
	jne	.L118
	movq	-224(%rbp), %rax
	orb	$16, %ah
	movq	%rax, -224(%rbp)
	jmp	.L71
.L118:
	cmpl	$317, -376(%rbp)
	jne	.L119
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -100(%rbp)
	jmp	.L71
.L119:
	cmpl	$318, -376(%rbp)
	jne	.L120
	movq	-224(%rbp), %rax
	orq	$131072, %rax
	movq	%rax, -224(%rbp)
	jmp	.L71
.L120:
	cmpl	$320, -376(%rbp)
	jne	.L121
	movzwl	-284(%rbp), %eax
	orl	$2, %eax
	movw	%ax, -284(%rbp)
	jmp	.L71
.L121:
	cmpl	$321, -376(%rbp)
	jne	.L122
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -84(%rbp)
	jmp	.L71
.L122:
	cmpl	$322, -376(%rbp)
	jne	.L123
	movq	-224(%rbp), %rax
	orq	$1048576, %rax
	movq	%rax, -224(%rbp)
	jmp	.L71
.L123:
	cmpl	$323, -376(%rbp)
	jne	.L124
	movq	-224(%rbp), %rax
	orq	$2097152, %rax
	movq	%rax, -224(%rbp)
	jmp	.L71
.L124:
	cmpl	$327, -376(%rbp)
	jne	.L125
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -80(%rbp)
	jmp	.L71
.L125:
	cmpl	$328, -376(%rbp)
	jne	.L126
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -64(%rbp)
	jmp	.L71
.L126:
	cmpl	$329, -376(%rbp)
	jne	.L127
	movq	-224(%rbp), %rax
	orq	$16777216, %rax
	movq	%rax, -224(%rbp)
	jmp	.L71
.L127:
	cmpl	$330, -376(%rbp)
	jne	.L128
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -148(%rbp)
	jmp	.L71
.L128:
	cmpl	$331, -376(%rbp)
	jne	.L129
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -120(%rbp)
	jmp	.L71
.L129:
	cmpl	$332, -376(%rbp)
	jne	.L130
	movq	-224(%rbp), %rax
	orq	$67108864, %rax
	movq	%rax, -224(%rbp)
	jmp	.L71
.L130:
	cmpl	$333, -376(%rbp)
	jne	.L131
	movq	-224(%rbp), %rax
	orq	$134217728, %rax
	movq	%rax, -224(%rbp)
	jmp	.L71
.L131:
	cmpl	$334, -376(%rbp)
	jne	.L132
	movq	-248(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L71
.L132:
	cmpl	$335, -376(%rbp)
	jne	.L133
	movq	-224(%rbp), %rax
	orq	$268435456, %rax
	movq	%rax, -224(%rbp)
	jmp	.L71
.L133:
	cmpl	$336, -376(%rbp)
	jne	.L134
	movq	-224(%rbp), %rax
	orq	$536870912, %rax
	movq	%rax, -224(%rbp)
	jmp	.L71
.L134:
	cmpl	$337, -376(%rbp)
	jne	.L135
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	mm_parse_num
	movq	%rax, -48(%rbp)
	jmp	.L71
.L135:
	cmpl	$338, -376(%rbp)
	jne	.L136
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	mm_parse_num
	movl	%eax, -208(%rbp)
	jmp	.L71
.L136:
	cmpl	$340, -376(%rbp)
	jne	.L137
	movq	-248(%rbp), %rax
	movq	%rax, -336(%rbp)
	jmp	.L71
.L137:
	cmpl	$342, -376(%rbp)
	jne	.L138
	movq	-224(%rbp), %rax
	orq	$1073741824, %rax
	movq	%rax, -224(%rbp)
	jmp	.L71
.L138:
	cmpl	$314, -376(%rbp)
	jne	.L139
	movq	-248(%rbp), %rcx
	movl	-240(%rbp), %edx
	leaq	-224(%rbp), %rax
	movl	$1, %r8d
	movl	$8192, %esi
	movq	%rax, %rdi
	call	yes_or_no
	jmp	.L71
.L139:
	cmpl	$315, -376(%rbp)
	jne	.L140
	movq	-248(%rbp), %rcx
	movl	-240(%rbp), %edx
	leaq	-224(%rbp), %rax
	movl	$0, %r8d
	movl	$16384, %esi
	movq	%rax, %rdi
	call	yes_or_no
	jmp	.L71
.L140:
	cmpl	$316, -376(%rbp)
	jne	.L141
	movq	-224(%rbp), %rax
	orq	$68, %rax
	movq	%rax, -224(%rbp)
	movq	-248(%rbp), %rax
	testq	%rax, %rax
	je	.L142
	movq	-248(%rbp), %rax
	leaq	.LC67(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L143
.L142:
	movq	-224(%rbp), %rax
	andb	$-9, %ah
	movq	%rax, -224(%rbp)
	jmp	.L71
.L143:
	movq	-248(%rbp), %rax
	leaq	.LC68(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L145
	movq	-224(%rbp), %rax
	orb	$8, %ah
	movq	%rax, -224(%rbp)
	jmp	.L71
.L145:
	movq	-248(%rbp), %rax
	leaq	.LC69(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L146
	movq	-224(%rbp), %rax
	andq	$-65, %rax
	movq	%rax, -224(%rbp)
	jmp	.L71
.L146:
	movl	mm_verbose(%rip), %eax
	cmpl	$1, %eax
	jle	.L71
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$98, %edx
	movl	$1, %esi
	leaq	.LC70(%rip), %rdi
	call	fwrite@PLT
	jmp	.L71
.L141:
	cmpl	$319, -376(%rbp)
	jne	.L147
	movq	-248(%rbp), %rcx
	movl	-240(%rbp), %edx
	leaq	-224(%rbp), %rax
	movl	$1, %r8d
	movl	$262144, %esi
	movq	%rax, %rdi
	call	yes_or_no
	jmp	.L71
.L147:
	cmpl	$324, -376(%rbp)
	jne	.L148
	movq	-248(%rbp), %rcx
	movl	-240(%rbp), %edx
	leaq	-224(%rbp), %rax
	movl	$1, %r8d
	movl	$4194304, %esi
	movq	%rax, %rdi
	call	yes_or_no
	jmp	.L71
.L148:
	cmpl	$326, -376(%rbp)
	jne	.L149
	movq	-248(%rbp), %rcx
	movl	-240(%rbp), %edx
	leaq	-224(%rbp), %rax
	movl	$0, %r8d
	movl	$2, %esi
	movq	%rax, %rdi
	call	yes_or_no
	jmp	.L71
.L149:
	cmpl	$83, -376(%rbp)
	jne	.L150
	movq	-224(%rbp), %rax
	orq	$2116, %rax
	movq	%rax, -224(%rbp)
	movl	mm_verbose(%rip), %eax
	cmpl	$1, %eax
	jle	.L71
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$105, %edx
	movl	$1, %esi
	leaq	.LC71(%rip), %rdi
	call	fwrite@PLT
	jmp	.L71
.L150:
	cmpl	$86, -376(%rbp)
	jne	.L152
	leaq	.LC72(%rip), %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L196
.L152:
	cmpl	$102, -376(%rbp)
	jne	.L153
	movq	-248(%rbp), %rax
	leaq	-360(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strtod@PLT
	movq	%xmm0, %rax
	movq	%rax, -296(%rbp)
	movsd	.LC73(%rip), %xmm0
	ucomisd	-296(%rbp), %xmm0
	jbe	.L199
	cvtsd2ss	-296(%rbp), %xmm0
	movss	%xmm0, -68(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L156
.L199:
	movsd	-296(%rbp), %xmm1
	movsd	.LC54(%rip), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -60(%rbp)
.L156:
	movq	-360(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	jne	.L71
	movq	-360(%rbp), %rax
	leaq	1(%rax), %rdx
	leaq	-360(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strtod@PLT
	movapd	%xmm0, %xmm1
	movsd	.LC54(%rip), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -56(%rbp)
	jmp	.L71
.L153:
	cmpl	$117, -376(%rbp)
	jne	.L158
	movq	-248(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$98, %al
	jne	.L159
	movq	-224(%rbp), %rax
	orb	$3, %ah
	movq	%rax, -224(%rbp)
	jmp	.L71
.L159:
	movq	-248(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$102, %al
	jne	.L160
	movq	-224(%rbp), %rax
	orb	$1, %ah
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	andb	$-3, %ah
	movq	%rax, -224(%rbp)
	jmp	.L71
.L160:
	movq	-248(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$114, %al
	jne	.L161
	movq	-224(%rbp), %rax
	orb	$2, %ah
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	andb	$-2, %ah
	movq	%rax, -224(%rbp)
	jmp	.L71
.L161:
	movq	-248(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$110, %al
	jne	.L162
	movq	-224(%rbp), %rax
	andb	$-4, %ah
	movq	%rax, -224(%rbp)
	jmp	.L71
.L162:
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$47, %edx
	movl	$1, %esi
	leaq	.LC74(%rip), %rdi
	call	fwrite@PLT
	movl	$1, %eax
	jmp	.L196
.L158:
	cmpl	$122, -376(%rbp)
	jne	.L163
	movq	-248(%rbp), %rax
	leaq	-368(%rbp), %rcx
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtol@PLT
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -108(%rbp)
	movq	-368(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	jne	.L71
	movq	-368(%rbp), %rax
	leaq	1(%rax), %rcx
	leaq	-368(%rbp), %rax
	movl	$10, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strtol@PLT
	movl	%eax, -104(%rbp)
	jmp	.L71
.L163:
	cmpl	$79, -376(%rbp)
	jne	.L165
	movq	-248(%rbp), %rax
	leaq	-368(%rbp), %rcx
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtol@PLT
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
	movl	%eax, -136(%rbp)
	movq	-368(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	jne	.L71
	movq	-368(%rbp), %rax
	leaq	1(%rax), %rcx
	leaq	-368(%rbp), %rax
	movl	$10, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strtol@PLT
	movl	%eax, -128(%rbp)
	jmp	.L71
.L165:
	cmpl	$69, -376(%rbp)
	jne	.L71
	movq	-248(%rbp), %rax
	leaq	-368(%rbp), %rcx
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtol@PLT
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %eax
	movl	%eax, -132(%rbp)
	movq	-368(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	jne	.L71
	movq	-368(%rbp), %rax
	leaq	1(%rax), %rcx
	leaq	-368(%rbp), %rax
	movl	$10, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strtol@PLT
	movl	%eax, -124(%rbp)
.L71:
	movq	-320(%rbp), %rcx
	movq	-416(%rbp), %rdx
	movl	-404(%rbp), %esi
	leaq	-256(%rbp), %rax
	leaq	long_options(%rip), %r9
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ketopt
	movl	%eax, -376(%rbp)
	cmpl	$0, -376(%rbp)
	jns	.L167
	movq	-224(%rbp), %rax
	andl	$128, %eax
	testq	%rax, %rax
	je	.L168
	movq	-224(%rbp), %rax
	andl	$8192, %eax
	testq	%rax, %rax
	je	.L168
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$81, %edx
	movl	$1, %esi
	leaq	.LC75(%rip), %rdi
	call	fwrite@PLT
	movl	$1, %eax
	jmp	.L196
.L168:
	cmpq	$0, -352(%rbp)
	jne	.L169
	movq	-224(%rbp), %rax
	andl	$4, %eax
	testq	%rax, %rax
	jne	.L169
	movzwl	-284(%rbp), %eax
	orl	$2, %eax
	movw	%ax, -284(%rbp)
.L169:
	leaq	-224(%rbp), %rdx
	leaq	-288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mm_check_opt@PLT
	testl	%eax, %eax
	jns	.L170
	movl	$1, %eax
	jmp	.L196
.L170:
	movl	-164(%rbp), %eax
	testl	%eax, %eax
	jne	.L171
	movq	stderr(%rip), %rax
	movl	-380(%rbp), %edx
	leaq	.LC76(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	-380(%rbp), %eax
	movl	%eax, -164(%rbp)
	movq	-224(%rbp), %rax
	orb	$64, %ah
	movq	%rax, -224(%rbp)
.L171:
	movl	-256(%rbp), %eax
	cmpl	%eax, -404(%rbp)
	je	.L172
	movq	stdout(%rip), %rax
	cmpq	%rax, -328(%rbp)
	jne	.L173
.L172:
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$68, %edx
	movl	$1, %esi
	leaq	.LC77(%rip), %rdi
	call	fwrite@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$9, %edx
	movl	$1, %esi
	leaq	.LC78(%rip), %rdi
	call	fwrite@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$12, %edx
	movl	$1, %esi
	leaq	.LC79(%rip), %rdi
	call	fwrite@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$75, %edx
	movl	$1, %esi
	leaq	.LC80(%rip), %rdi
	call	fwrite@PLT
	movzwl	-288(%rbp), %eax
	movswl	%ax, %edx
	movq	-328(%rbp), %rax
	leaq	.LC81(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movzwl	-286(%rbp), %eax
	movswl	%ax, %edx
	movq	-328(%rbp), %rax
	leaq	.LC82(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$61, %edx
	movl	$1, %esi
	leaq	.LC83(%rip), %rdi
	call	fwrite@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$39, %edx
	movl	$1, %esi
	leaq	.LC84(%rip), %rdi
	call	fwrite@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$11, %edx
	movl	$1, %esi
	leaq	.LC85(%rip), %rdi
	call	fwrite@PLT
	movss	-68(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-328(%rbp), %rax
	leaq	.LC86(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	movl	-200(%rbp), %edx
	movq	-328(%rbp), %rax
	leaq	.LC87(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$81, %edx
	movl	$1, %esi
	leaq	.LC88(%rip), %rdi
	call	fwrite@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$89, %edx
	movl	$1, %esi
	leaq	.LC89(%rip), %rdi
	call	fwrite@PLT
	movl	-204(%rbp), %edx
	movq	-328(%rbp), %rax
	leaq	.LC90(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	-180(%rbp), %edx
	movq	-328(%rbp), %rax
	leaq	.LC91(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	-176(%rbp), %edx
	movq	-328(%rbp), %rax
	leaq	.LC92(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$71, %edx
	movl	$1, %esi
	leaq	.LC93(%rip), %rdi
	call	fwrite@PLT
	movss	-168(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-328(%rbp), %rax
	leaq	.LC94(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	movl	-164(%rbp), %edx
	movq	-328(%rbp), %rax
	leaq	.LC95(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$13, %edx
	movl	$1, %esi
	leaq	.LC96(%rip), %rdi
	call	fwrite@PLT
	movl	-144(%rbp), %edx
	movq	-328(%rbp), %rax
	leaq	.LC97(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	-140(%rbp), %edx
	movq	-328(%rbp), %rax
	leaq	.LC98(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	-128(%rbp), %ecx
	movl	-136(%rbp), %edx
	movq	-328(%rbp), %rax
	leaq	.LC99(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	-124(%rbp), %ecx
	movl	-132(%rbp), %edx
	movq	-328(%rbp), %rax
	leaq	.LC100(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	-104(%rbp), %ecx
	movl	-108(%rbp), %edx
	movq	-328(%rbp), %rax
	leaq	.LC101(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	-96(%rbp), %edx
	movq	-328(%rbp), %rax
	leaq	.LC102(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$97, %edx
	movl	$1, %esi
	leaq	.LC103(%rip), %rdi
	call	fwrite@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$16, %edx
	movl	$1, %esi
	leaq	.LC104(%rip), %rdi
	call	fwrite@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$59, %edx
	movl	$1, %esi
	leaq	.LC105(%rip), %rdi
	call	fwrite@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$52, %edx
	movl	$1, %esi
	leaq	.LC106(%rip), %rdi
	call	fwrite@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$59, %edx
	movl	$1, %esi
	leaq	.LC107(%rip), %rdi
	call	fwrite@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$79, %edx
	movl	$1, %esi
	leaq	.LC108(%rip), %rdi
	call	fwrite@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$37, %edx
	movl	$1, %esi
	leaq	.LC109(%rip), %rdi
	call	fwrite@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$80, %edx
	movl	$1, %esi
	leaq	.LC110(%rip), %rdi
	call	fwrite@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$35, %edx
	movl	$1, %esi
	leaq	.LC111(%rip), %rdi
	call	fwrite@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$43, %edx
	movl	$1, %esi
	leaq	.LC112(%rip), %rdi
	call	fwrite@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$64, %edx
	movl	$1, %esi
	leaq	.LC113(%rip), %rdi
	call	fwrite@PLT
	movl	-384(%rbp), %edx
	movq	-328(%rbp), %rax
	leaq	.LC114(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$51, %edx
	movl	$1, %esi
	leaq	.LC115(%rip), %rdi
	call	fwrite@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$37, %edx
	movl	$1, %esi
	leaq	.LC116(%rip), %rdi
	call	fwrite@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$10, %edx
	movl	$1, %esi
	leaq	.LC117(%rip), %rdi
	call	fwrite@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$93, %edx
	movl	$1, %esi
	leaq	.LC118(%rip), %rdi
	call	fwrite@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$72, %edx
	movl	$1, %esi
	leaq	.LC119(%rip), %rdi
	call	fwrite@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$64, %edx
	movl	$1, %esi
	leaq	.LC120(%rip), %rdi
	call	fwrite@PLT
	movq	-328(%rbp), %rax
	leaq	.LC121(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$55, %edx
	movl	$1, %esi
	leaq	.LC122(%rip), %rdi
	call	fwrite@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$50, %edx
	movl	$1, %esi
	leaq	.LC123(%rip), %rdi
	call	fwrite@PLT
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	movl	$99, %edx
	movl	$1, %esi
	leaq	.LC124(%rip), %rdi
	call	fwrite@PLT
	movq	stdout(%rip), %rax
	cmpq	%rax, -328(%rbp)
	setne	%al
	movzbl	%al, %eax
	jmp	.L196
.L173:
	movq	-224(%rbp), %rax
	andl	$4096, %eax
	testq	%rax, %rax
	je	.L174
	movl	-256(%rbp), %eax
	movl	-404(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$3, %eax
	jle	.L174
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$86, %edx
	movl	$1, %esi
	leaq	.LC125(%rip), %rdi
	call	fwrite@PLT
	movl	$1, %eax
	jmp	.L196
.L174:
	movl	-256(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-416(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-352(%rbp), %rdx
	leaq	-288(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mm_idx_reader_open@PLT
	movq	%rax, -312(%rbp)
	cmpq	$0, -312(%rbp)
	jne	.L175
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movl	-256(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-416(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC126(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$1, %eax
	jmp	.L196
.L175:
	movq	-312(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L176
	cmpq	$0, -352(%rbp)
	jne	.L176
	movl	-256(%rbp), %eax
	movl	-404(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$1, %eax
	jg	.L176
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$89, %edx
	movl	$1, %esi
	leaq	.LC127(%rip), %rdi
	call	fwrite@PLT
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	mm_idx_reader_close@PLT
	movl	$1, %eax
	jmp	.L196
.L176:
	movl	-164(%rbp), %eax
	testl	%eax, %eax
	jne	.L178
	movq	-224(%rbp), %rax
	andl	$4, %eax
	testq	%rax, %rax
	je	.L178
	movl	mm_verbose(%rip), %eax
	cmpl	$1, %eax
	jle	.L178
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$116, %edx
	movl	$1, %esi
	leaq	.LC128(%rip), %rdi
	call	fwrite@PLT
	jmp	.L178
.L190:
	movq	-224(%rbp), %rax
	andl	$4, %eax
	testq	%rax, %rax
	je	.L179
	movq	-304(%rbp), %rax
	movl	12(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L179
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$54, %edx
	movl	$1, %esi
	leaq	.LC129(%rip), %rdi
	call	fwrite@PLT
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	mm_idx_destroy@PLT
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	mm_idx_reader_close@PLT
	movl	$1, %eax
	jmp	.L196
.L179:
	movq	-224(%rbp), %rax
	andl	$8, %eax
	testq	%rax, %rax
	je	.L180
	movq	-312(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$1, %eax
	jne	.L180
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	mm_idx_reader_eof@PLT
	testl	%eax, %eax
	je	.L181
	movq	-416(%rbp), %rcx
	movl	-404(%rbp), %edx
	movq	-344(%rbp), %rsi
	movq	-304(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC72(%rip), %rdx
	movq	%rax, %rdi
	call	mm_write_sam_hdr@PLT
	jmp	.L180
.L181:
	movq	-416(%rbp), %rcx
	movl	-404(%rbp), %edx
	movq	-344(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC72(%rip), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	mm_write_sam_hdr@PLT
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L180
	movl	mm_verbose(%rip), %eax
	cmpl	$1, %eax
	jle	.L180
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$104, %edx
	movl	$1, %esi
	leaq	.LC130(%rip), %rdi
	call	fwrite@PLT
.L180:
	movl	mm_verbose(%rip), %eax
	cmpl	$2, %eax
	jle	.L182
	movq	-304(%rbp), %rax
	movl	16(%rax), %ebx
	call	cputime@PLT
	movsd	%xmm0, -424(%rbp)
	call	realtime@PLT
	movapd	%xmm0, %xmm1
	movsd	mm_realtime0(%rip), %xmm0
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	-424(%rbp), %xmm3
	divsd	%xmm0, %xmm3
	movsd	%xmm3, -424(%rbp)
	call	realtime@PLT
	movapd	%xmm0, %xmm1
	movsd	mm_realtime0(%rip), %xmm0
	movapd	%xmm1, %xmm4
	subsd	%xmm0, %xmm4
	movapd	%xmm4, %xmm0
	movq	stderr(%rip), %rax
	movl	%ebx, %ecx
	movsd	-424(%rbp), %xmm1
	leaq	__func__.3817(%rip), %rdx
	leaq	.LC131(%rip), %rsi
	movq	%rax, %rdi
	movl	$2, %eax
	call	fprintf@PLT
.L182:
	movl	-256(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -404(%rbp)
	je	.L183
	movq	-304(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mm_mapopt_update@PLT
.L183:
	movl	mm_verbose(%rip), %eax
	cmpl	$2, %eax
	jle	.L184
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	mm_idx_stat@PLT
.L184:
	cmpq	$0, -336(%rbp)
	je	.L185
	movq	-336(%rbp), %rcx
	movq	-304(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mm_idx_bed_read@PLT
.L185:
	movq	-224(%rbp), %rax
	andl	$8192, %eax
	testq	%rax, %rax
	jne	.L186
	movl	-256(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -388(%rbp)
	jmp	.L187
.L188:
	movl	-388(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-416(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movl	-384(%rbp), %ecx
	leaq	-224(%rbp), %rdx
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	mm_map_file@PLT
	addl	$1, -388(%rbp)
.L187:
	movl	-388(%rbp), %eax
	cmpl	-404(%rbp), %eax
	jl	.L188
	jmp	.L189
.L186:
	movl	-256(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-416(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-256(%rbp), %eax
	leal	1(%rax), %edx
	movl	-404(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, %esi
	movl	-384(%rbp), %ecx
	leaq	-224(%rbp), %rdx
	movq	-304(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	mm_map_file_frag@PLT
.L189:
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	mm_idx_destroy@PLT
.L178:
	movl	-384(%rbp), %edx
	movq	-312(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	mm_idx_reader_read@PLT
	movq	%rax, -304(%rbp)
	cmpq	$0, -304(%rbp)
	jne	.L190
	movq	-312(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -372(%rbp)
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	mm_idx_reader_close@PLT
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L191
	movl	-256(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-416(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-256(%rbp), %eax
	leal	1(%rax), %edx
	movl	-404(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, %edi
	movl	-372(%rbp), %edx
	leaq	-224(%rbp), %rax
	movl	%edx, %ecx
	movq	%rax, %rdx
	call	mm_split_merge@PLT
.L191:
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	cmpl	$-1, %eax
	jne	.L192
	leaq	.LC132(%rip), %rdi
	call	perror@PLT
	movl	$1, %edi
	call	exit@PLT
.L192:
	movl	mm_verbose(%rip), %eax
	cmpl	$2, %eax
	jle	.L193
	movq	stderr(%rip), %rax
	leaq	.LC72(%rip), %rcx
	leaq	__func__.3817(%rip), %rdx
	leaq	.LC133(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	stderr(%rip), %rax
	leaq	__func__.3817(%rip), %rdx
	leaq	.LC134(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, -388(%rbp)
	jmp	.L194
.L195:
	movl	-388(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-416(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC135(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -388(%rbp)
.L194:
	movl	-388(%rbp), %eax
	cmpl	-404(%rbp), %eax
	jl	.L195
	call	peakrss@PLT
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC136(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	.LC136(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	.LC136(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -424(%rbp)
	call	cputime@PLT
	movsd	%xmm0, -432(%rbp)
	call	realtime@PLT
	movapd	%xmm0, %xmm1
	movsd	mm_realtime0(%rip), %xmm0
	movapd	%xmm1, %xmm5
	subsd	%xmm0, %xmm5
	movapd	%xmm5, %xmm0
	movq	stderr(%rip), %rax
	movsd	-424(%rbp), %xmm2
	movsd	-432(%rbp), %xmm1
	leaq	__func__.3817(%rip), %rdx
	leaq	.LC137(%rip), %rsi
	movq	%rax, %rdi
	movl	$3, %eax
	call	fprintf@PLT
.L193:
	movl	$0, %eax
.L196:
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L197
	call	__stack_chk_fail@PLT
.L197:
	addq	$424, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	main, .-main
	.section	.rodata
	.type	__func__.3817, @object
	.size	__func__.3817, 5
__func__.3817:
	.string	"main"
	.align 8
.LC51:
	.long	0
	.long	1104006501
	.align 8
.LC52:
	.long	0
	.long	1093567616
	.align 8
.LC53:
	.long	0
	.long	1083129856
	.align 8
.LC54:
	.long	2989297238
	.long	1071640477
	.align 8
.LC73:
	.long	0
	.long	1072693248
	.align 8
.LC136:
	.long	0
	.long	1083179008
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
