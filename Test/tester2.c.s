.file	"marginPhase.c"
.text
.Ltext0:
.section	.rodata
.align 8
.LC0:
.string	"\tGot %li profile sequences, with total length: %li, average length: %f\n"
.text
.globl	printSequenceStats
.type	printSequenceStats, @function

getExpectedNumberOfMatches:
.LFB58:
	.loc 1 37 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	.loc 1 42 0
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
.LBB4:
	.loc 1 44 0
	movq	$0, -24(%rbp)
	jmp	.L5
.L8:
.LBB5:
	.loc 1 46 0
	movq	-64(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	subq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 1 47 0
	cmpq	$0, -16(%rbp)
	js	.L6
	.loc 1 47 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jge	.L6
.LBB6:
	.loc 1 48 0 is_stmt 1
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 1 49 0
	cmpq	$4, -8(%rbp)
	jbe	.L7
	.loc 1 49 0 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.7939(%rip), %rcx
	movl	$49, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	call	__assert_fail@PLT
.L7:
	.loc 1 52 0 is_stmt 1
	movq	-8(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getProb@PLT
	cvtss2sd	%xmm0, %xmm0
	movsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
.L6:
.LBE6:
.LBE5:
	.loc 1 44 0 discriminator 2
	addq	$1, -24(%rbp)
.L5:
	.loc 1 44 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jl	.L8
.LBE4:
	.loc 1 55 0 is_stmt 1
	movsd	-32(%rbp), %xmm0
	.loc 1 56 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	getExpectedNumberOfMatches, .-getExpectedNumberOfMatches
	.globl	getExpectedIdentity
	.type	getExpectedIdentity, @function
