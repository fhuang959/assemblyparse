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

printSequenceStats:
.LFB57:
	.file 1 "/soe/smittal2/marginPhase/marginPhase.c"
	.loc 1 23 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 1 27 0
	movq	$0, -24(%rbp)
.LBB2:
	.loc 1 28 0
	movq	$0, -16(%rbp)
	jmp	.L2
.L3:
.LBB3:
	.loc 1 29 0 discriminator 3
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stList_get@PLT
	movq	%rax, -8(%rbp)
	.loc 1 30 0 discriminator 3
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	%rax, -24(%rbp)
.LBE3:
	.loc 1 28 0 discriminator 3
	addq	$1, -16(%rbp)
.L2:
	.loc 1 28 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	stList_length@PLT
	cmpq	%rax, -16(%rbp)
	jl	.L3
.LBE2:
	.loc 1 33 0 is_stmt 1
	cvtsi2ssq	-24(%rbp), %xmm1
	movss	%xmm1, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	stList_length@PLT
	cvtsi2ssq	%rax, %xmm0
	movss	-56(%rbp), %xmm1
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	.loc 1 32 0
	cvtss2sd	%xmm0, %xmm2
	movsd	%xmm2, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	stList_length@PLT
	movq	%rax, %rsi
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movsd	-56(%rbp), %xmm0
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	.loc 1 34 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	printSequenceStats, .-printSequenceStats
	.section	.rodata
	.align 8
.LC2:
	.string	"/soe/smittal2/marginPhase/marginPhase.c"
.LC3:
	.string	"hapBase < ALPHABET_SIZE"
	.text
	.globl	getExpectedNumberOfMatches
	.type	getExpectedNumberOfMatches, @function
