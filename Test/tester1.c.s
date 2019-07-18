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

getExpectedIdentity:
.LFB59:
	.loc 1 58 0
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
	.loc 1 63 0
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	.loc 1 64 0
	movq	$0, -24(%rbp)
	.loc 1 65 0
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	stSet_getIterator@PLT
	movq	%rax, -16(%rbp)
	.loc 1 67 0
	jmp	.L11
.L12:
	.loc 1 68 0
	movq	-8(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	getExpectedNumberOfMatches
	movapd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	.loc 1 69 0
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	%rax, -24(%rbp)
.L11:
	.loc 1 67 0
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	stSet_getNext@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L12
	.loc 1 71 0
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	stSet_destructIterator@PLT
	.loc 1 72 0
	cvtsi2sdq	-24(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	.loc 1 73 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	getExpectedIdentity, .-getExpectedIdentity
	.globl	getIdentityBetweenHaplotypes
	.type	getIdentityBetweenHaplotypes, @function
