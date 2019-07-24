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
getIdentityBetweenHaplotypes:
.LFB60:
	.loc 1 75 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 79 0
	movq	$0, -16(%rbp)
.LBB7:
	.loc 1 80 0
	movq	$0, -8(%rbp)
	jmp	.L15
.L17:
	.loc 1 81 0
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L16
	.loc 1 82 0
	addq	$1, -16(%rbp)
.L16:
	.loc 1 80 0 discriminator 2
	addq	$1, -8(%rbp)
.L15:
	.loc 1 80 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jl	.L17
.LBE7:
	.loc 1 85 0 is_stmt 1
	cvtsi2sdq	-16(%rbp), %xmm0
	cvtsi2sdq	-40(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	.loc 1 86 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	getIdentityBetweenHaplotypes, .-getIdentityBetweenHaplotypes
	.globl	getIdentityBetweenHaplotypesExcludingIndels
	.type	getIdentityBetweenHaplotypesExcludingIndels, @function
getIdentityBetweenHaplotypesExcludingIndels:
.LFB61:
	.loc 1 88 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	.loc 1 92 0
	movq	$0, -24(%rbp)
	.loc 1 93 0
	movq	$0, -16(%rbp)
.LBB8:
	.loc 1 94 0
	movq	$0, -8(%rbp)
	jmp	.L20
.L24:
	.loc 1 95 0
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L21
	.loc 1 96 0
	addq	$1, -24(%rbp)
	jmp	.L22
.L21:
	.loc 1 97 0
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	$4, %rax
	je	.L23
	.loc 1 97 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	$4, %rax
	jne	.L22
.L23:
	.loc 1 98 0 is_stmt 1
	addq	$1, -16(%rbp)
.L22:
	.loc 1 94 0 discriminator 2
	addq	$1, -8(%rbp)
.L20:
	.loc 1 94 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.L24
.LBE8:
	.loc 1 101 0 is_stmt 1
	cvtsi2sdq	-24(%rbp), %xmm0
	movq	-56(%rbp), %rax
	subq	-16(%rbp), %rax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm1, %xmm0
	.loc 1 102 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	getIdentityBetweenHaplotypesExcludingIndels, .-getIdentityBetweenHaplotypesExcludingIndels
	.section	.rodata
.LC5:
	.string	"e1 * e2 <= 1.0"
	.text
	.globl	getExpectedMatchesBetweenProfileSeqs
	.type	getExpectedMatchesBetweenProfileSeqs, @function
getExpectedMatchesBetweenProfileSeqs:
.LFB62:
	.loc 1 105 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
.LBB9:
	.loc 1 109 0
	movq	$0, -40(%rbp)
	jmp	.L27
.L32:
.LBB10:
	.loc 1 111 0
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -24(%rbp)
	.loc 1 112 0
	cmpq	$0, -24(%rbp)
	js	.L28
	.loc 1 112 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jge	.L28
	.loc 1 113 0 is_stmt 1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
.LBB11:
	.loc 1 116 0
	movq	$0, -32(%rbp)
	jmp	.L29
.L31:
.LBB12:
	.loc 1 117 0
	movq	-56(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	getProb@PLT
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	.loc 1 118 0
	movq	-64(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	getProb@PLT
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	.loc 1 119 0
	movsd	-16(%rbp), %xmm0
	mulsd	-8(%rbp), %xmm0
	movsd	.LC4(%rip), %xmm1
	ucomisd	%xmm0, %xmm1
	jnb	.L30
	.loc 1 119 0 is_stmt 0 discriminator 1
	leaq	__PRETTY_FUNCTION__.7988(%rip), %rcx
	movl	$119, %edx
	leaq	.LC2(%rip), %rsi
	leaq	.LC5(%rip), %rdi
	call	__assert_fail@PLT
.L30:
	.loc 1 120 0 is_stmt 1 discriminator 2
	movq	-80(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	-16(%rbp), %xmm0
	mulsd	-8(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movq	-80(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBE12:
	.loc 1 116 0 discriminator 2
	addq	$1, -32(%rbp)
.L29:
	.loc 1 116 0 is_stmt 0 discriminator 1
	cmpq	$4, -32(%rbp)
	jle	.L31
.L28:
.LBE11:
.LBE10:
	.loc 1 109 0 is_stmt 1 discriminator 2
	addq	$1, -40(%rbp)
.L27:
	.loc 1 109 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -40(%rbp)
	jl	.L32
.LBE9:
	.loc 1 124 0 is_stmt 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	getExpectedMatchesBetweenProfileSeqs, .-getExpectedMatchesBetweenProfileSeqs
	.section	.rodata
	.align 8
.LC6:
	.string	"\tAvg. pairwise identity between profile sequences: %f measured at %li overlapping sites\n"
	.text
	.globl	printAvgIdentityBetweenProfileSequences
	.type	printAvgIdentityBetweenProfileSequences, @function
printAvgIdentityBetweenProfileSequences:
.LFB63:
	.loc 1 126 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	.loc 1 126 0
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 1 130 0
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
	.loc 1 131 0
	movq	$0, -48(%rbp)
.LBB13:
	.loc 1 133 0
	movq	$0, -40(%rbp)
	jmp	.L34
.L39:
.LBB14:
	.loc 1 134 0
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.L35
.L37:
	.loc 1 135 0 discriminator 4
	movq	-32(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stList_get@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stList_get@PLT
	movq	%rax, %rdi
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rbx, %rsi
	call	getExpectedMatchesBetweenProfileSeqs
	.loc 1 134 0 discriminator 4
	addq	$1, -32(%rbp)
.L35:
	.loc 1 134 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	stList_length@PLT
	cmpq	%rax, -32(%rbp)
	jge	.L36
	.loc 1 134 0 discriminator 3
	movq	-32(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jl	.L37
.L36:
.LBE14:
	.loc 1 133 0 is_stmt 1 discriminator 2
	addq	$1, -40(%rbp)
.L34:
	.loc 1 133 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	stList_length@PLT
	cmpq	%rax, -40(%rbp)
	jge	.L38
	.loc 1 133 0 discriminator 3
	movq	-40(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jl	.L39
.L38:
.LBE13:
	.loc 1 141 0 is_stmt 1
	movq	-48(%rbp), %rdx
	movsd	-56(%rbp), %xmm1
	movq	-48(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	-72(%rbp), %rax
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	.loc 1 143 0
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L40
	call	__stack_chk_fail@PLT
.L40:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	printAvgIdentityBetweenProfileSequences, .-printAvgIdentityBetweenProfileSequences
	.globl	getHaplotypeBaseComposition
	.type	getHaplotypeBaseComposition, @function
getHaplotypeBaseComposition:
.LFB64:
	.loc 1 144 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 149 0
	movl	$8, %esi
	movl	$5, %edi
	call	st_calloc@PLT
	movq	%rax, -8(%rbp)
.LBB15:
	.loc 1 150 0
	movq	$0, -16(%rbp)
	jmp	.L42
.L43:
	.loc 1 151 0 discriminator 3
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movsd	.LC4(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	.loc 1 150 0 discriminator 3
	addq	$1, -16(%rbp)
.L42:
	.loc 1 150 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jl	.L43
.LBE15:
	.loc 1 153 0 is_stmt 1
	movq	-8(%rbp), %rax
	.loc 1 154 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	getHaplotypeBaseComposition, .-getHaplotypeBaseComposition
	.globl	getExpectedProfileSequenceBaseComposition
	.type	getExpectedProfileSequenceBaseComposition, @function
getExpectedProfileSequenceBaseComposition:
.LFB65:
	.loc 1 156 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	.loc 1 161 0
	movl	$8, %esi
	movl	$5, %edi
	call	st_calloc@PLT
	movq	%rax, -24(%rbp)
	.loc 1 162 0
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	stSet_getIterator@PLT
	movq	%rax, -16(%rbp)
	.loc 1 164 0
	jmp	.L46
.L51:
.LBB16:
	.loc 1 165 0
	movq	$0, -40(%rbp)
	jmp	.L47
.L50:
.LBB17:
	.loc 1 166 0
	movq	$0, -32(%rbp)
	jmp	.L48
.L49:
	.loc 1 167 0 discriminator 3
	movq	-8(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	getProb@PLT
	movq	-32(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm1
	cvtss2sd	%xmm0, %xmm0
	movq	-32(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax)
	.loc 1 166 0 discriminator 3
	addq	$1, -32(%rbp)
.L48:
	.loc 1 166 0 is_stmt 0 discriminator 1
	cmpq	$4, -32(%rbp)
	jle	.L49
.LBE17:
	.loc 1 165 0 is_stmt 1 discriminator 2
	addq	$1, -40(%rbp)
.L47:
	.loc 1 165 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -40(%rbp)
	jl	.L50
.L46:
.LBE16:
	.loc 1 164 0 is_stmt 1
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	stSet_getNext@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L51
	.loc 1 171 0
	movq	-24(%rbp), %rax
	.loc 1 172 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	getExpectedProfileSequenceBaseComposition, .-getExpectedProfileSequenceBaseComposition
	.section	.rodata
	.align 8
.LC7:
	.string	"\t\tBase %li count: %f fraction: %f\n"
	.text
	.globl	printBaseComposition
	.type	printBaseComposition, @function
printBaseComposition:
.LFB66:
	.loc 1 174 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 1 178 0
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
.LBB18:
	.loc 1 179 0
	movq	$0, -16(%rbp)
	jmp	.L54
.L55:
	.loc 1 180 0 discriminator 3
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	.loc 1 179 0 discriminator 3
	addq	$1, -16(%rbp)
.L54:
	.loc 1 179 0 is_stmt 0 discriminator 1
	cmpq	$4, -16(%rbp)
	jle	.L55
.LBE18:
.LBB19:
	.loc 1 182 0 is_stmt 1
	movq	$0, -8(%rbp)
	jmp	.L56
.L57:
	.loc 1 183 0 discriminator 3
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	divsd	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rcx, -56(%rbp)
	movsd	-56(%rbp), %xmm0
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	movl	$2, %eax
	call	fprintf@PLT
	.loc 1 182 0 discriminator 3
	addq	$1, -8(%rbp)
.L56:
	.loc 1 182 0 is_stmt 0 discriminator 1
	cmpq	$4, -8(%rbp)
	jle	.L57
.LBE19:
	.loc 1 185 0 is_stmt 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	printBaseComposition, .-printBaseComposition
	.globl	matchesTopTwoBases
	.type	matchesTopTwoBases, @function
matchesTopTwoBases:
.LFB67:
	.loc 1 187 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	.loc 1 194 0
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	.loc 1 195 0
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
.LBB20:
	.loc 1 196 0
	movb	$0, -41(%rbp)
	jmp	.L59
.L64:
.LBB21:
	.loc 1 197 0
	movq	-72(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rax, %rdx
	movzbl	-41(%rbp), %eax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -8(%rbp)
	.loc 1 198 0
	movsd	-8(%rbp), %xmm0
	ucomisd	-32(%rbp), %xmm0
	jbe	.L60
	.loc 1 199 0
	movsd	-8(%rbp), %xmm0
	ucomisd	-40(%rbp), %xmm0
	jbe	.L73
	.loc 1 200 0
	movsd	-40(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	.loc 1 201 0
	movsd	-8(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	.loc 1 202 0
	movzbl	-43(%rbp), %eax
	movb	%al, -42(%rbp)
	.loc 1 203 0
	movzbl	-41(%rbp), %eax
	movb	%al, -43(%rbp)
	jmp	.L60
.L73:
	.loc 1 205 0
	movsd	-8(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	.loc 1 206 0
	movzbl	-41(%rbp), %eax
	movb	%al, -42(%rbp)
.L60:
.LBE21:
	.loc 1 196 0 discriminator 2
	movzbl	-41(%rbp), %eax
	addl	$1, %eax
	movb	%al, -41(%rbp)
.L59:
	.loc 1 196 0 is_stmt 0 discriminator 1
	cmpb	$4, -41(%rbp)
	jbe	.L64
.LBE20:
	.loc 1 210 0 is_stmt 1
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	subq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 1 211 0
	movzbl	-43(%rbp), %ecx
	movq	-64(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getProb@PLT
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	.loc 1 213 0
	movsd	-40(%rbp), %xmm0
	movsd	.LC8(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	-32(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.L65
	.loc 1 213 0 is_stmt 0 discriminator 1
	movsd	-32(%rbp), %xmm0
	ucomisd	.LC9(%rip), %xmm0
	jbe	.L65
	.loc 1 214 0 is_stmt 1
	movzbl	-42(%rbp), %ecx
	movq	-64(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getProb@PLT
	cvtss2sd	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
.L65:
	.loc 1 216 0
	movsd	-24(%rbp), %xmm0
	.loc 1 217 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	matchesTopTwoBases, .-matchesTopTwoBases
	.globl	getExpectedNumberOfConsensusMatches
	.type	getExpectedNumberOfConsensusMatches, @function
getExpectedNumberOfConsensusMatches:
.LFB68:
	.loc 1 219 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 1 225 0
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
.LBB22:
	.loc 1 227 0
	movq	$0, -16(%rbp)
	jmp	.L75
.L77:
.LBB23:
	.loc 1 229 0
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 1 230 0
	cmpq	$0, -8(%rbp)
	js	.L76
	.loc 1 230 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jge	.L76
	.loc 1 232 0 is_stmt 1
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	matchesTopTwoBases
	movapd	%xmm0, %xmm1
	movsd	-24(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
.L76:
.LBE23:
	.loc 1 227 0 discriminator 2
	addq	$1, -16(%rbp)
.L75:
	.loc 1 227 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jl	.L77
.LBE22:
	.loc 1 235 0 is_stmt 1
	movsd	-24(%rbp), %xmm0
	.loc 1 236 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	getExpectedNumberOfConsensusMatches, .-getExpectedNumberOfConsensusMatches
	.globl	prefilterReads
	.type	prefilterReads, @function
prefilterReads:
.LFB69:
	.loc 1 239 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	.loc 1 245 0
	movq	stProfileSeq_destruct@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	stList_construct3@PLT
	movq	%rax, -32(%rbp)
.LBB24:
	.loc 1 247 0
	movq	$0, -40(%rbp)
	jmp	.L80
.L84:
.LBB25:
	.loc 1 248 0
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stList_get@PLT
	movq	%rax, -24(%rbp)
	.loc 1 249 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stHash_search@PLT
	movq	%rax, -16(%rbp)
	.loc 1 250 0
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getExpectedNumberOfConsensusMatches
	movapd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	.loc 1 251 0
	movq	-80(%rbp), %rax
	movsd	112(%rax), %xmm0
	ucomisd	-8(%rbp), %xmm0
	jbe	.L87
	.loc 1 252 0
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 1 253 0
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	stProfileSeq_destruct@PLT
	jmp	.L83
.L87:
	.loc 1 255 0
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stList_append@PLT
.L83:
.LBE25:
	.loc 1 247 0 discriminator 2
	addq	$1, -40(%rbp)
.L80:
	.loc 1 247 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	stList_length@PLT
	cmpq	%rax, -40(%rbp)
	jl	.L84
.LBE24:
	.loc 1 258 0 is_stmt 1
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	stList_setDestructor@PLT
	.loc 1 259 0
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	stList_destruct@PLT
	.loc 1 260 0
	movq	-32(%rbp), %rax
	.loc 1 261 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	prefilterReads, .-prefilterReads
	.section	.rodata
	.align 8
.LC10:
	.string	"> Creating read partitioning HMMs\n"
	.align 8
.LC11:
	.string	"\tGot %li hmms before splitting\n"
	.align 8
.LC12:
	.string	"> Breaking apart HMMs where the phasing is uncertain\n"
	.align 8
.LC13:
	.string	"\tCreated %d hmms after splitting at uncertain regions of phasing (previously %d)\n"
	.align 8
.LC14:
	.string	"\thmm %3d: \tstart pos: %8d \tend pos: %8d\n"
	.text
	.globl	createHMMs
	.type	createHMMs, @function
createHMMs:
.LFB70:
	.loc 1 263 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	.loc 1 269 0
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	st_logInfo@PLT
	.loc 1 270 0
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getRPHmms@PLT
	movq	%rax, -40(%rbp)
	.loc 1 271 0
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stList_length@PLT
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	st_logInfo@PLT
	.loc 1 274 0
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	st_logInfo@PLT
	.loc 1 276 0
	movq	stRPHmm_destruct2@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	stList_construct3@PLT
	movq	%rax, -32(%rbp)
	.loc 1 277 0
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stList_length@PLT
	movq	%rax, -24(%rbp)
	.loc 1 280 0
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stList_reverse@PLT
	.loc 1 281 0
	jmp	.L89
.L90:
	.loc 1 282 0
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stList_pop@PLT
	movq	%rax, %rdi
	call	stRPHMM_splitWherePhasingIsUncertain@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stList_appendAll@PLT
.L89:
	.loc 1 281 0
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stList_length@PLT
	testq	%rax, %rax
	jg	.L90
	.loc 1 284 0
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 1 285 0
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stList_length@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	leaq	.LC13(%rip), %rdi
	movl	$0, %eax
	call	st_logInfo@PLT
	.loc 1 288 0
	movq	$0, -48(%rbp)
	.loc 1 289 0
	call	st_getLogLevel@PLT
	cmpl	$3, %eax
	jne	.L91
	.loc 1 289 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stList_length@PLT
	cmpq	%rax, -24(%rbp)
	je	.L91
.LBB26:
	.loc 1 290 0 is_stmt 1
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stList_getIterator@PLT
	movq	%rax, -16(%rbp)
	.loc 1 291 0
	movq	$0, -8(%rbp)
	.loc 1 292 0
	jmp	.L92
.L93:
	.loc 1 294 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 1 293 0
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rdi
	movl	$0, %eax
	call	st_logDebug@PLT
	.loc 1 295 0
	addq	$1, -48(%rbp)
.L92:
	.loc 1 292 0
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	stList_getNext@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L93
.L91:
.LBE26:
	.loc 1 298 0
	movq	-40(%rbp), %rax
	.loc 1 299 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	createHMMs, .-createHMMs
	.section	.rodata
	.align 8
.LC15:
	.string	"> Creating genome fragment for reference sequence: %s, start: %li, length: %li\n"
	.align 8
.LC16:
	.string	"\n\tThere are %li reads covered by the hmm, bipartitioned into sets of %li and %li reads\n"
	.align 8
.LC17:
	.string	"\tThe haplotypes have identity: %f \n"
	.align 8
.LC18:
	.string	"\tIdentity excluding indels:    %f \n\n"
	.align 8
.LC19:
	.string	"\tThe base composition of haplotype 1:\n"
	.align 8
.LC20:
	.string	"\tThe base composition of haplotype 2:\n"
	.align 8
.LC21:
	.string	"\tThe base composition of reads1 set:\n"
	.align 8
.LC22:
	.string	"\tThe base composition of reads2 set:\n"
	.align 8
.LC23:
	.string	"\thap1 vs. reads1 identity: %f\n"
	.align 8
.LC24:
	.string	"\thap1 vs. reads2 identity: %f\n"
	.align 8
.LC25:
	.string	"\thap2 vs. reads2 identity: %f\n"
	.align 8
.LC26:
	.string	"\thap2 vs. reads1 identity: %f\n"
	.text
	.globl	logHmm
	.type	logHmm, @function
logHmm:
.LFB71:
	.loc 1 301 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	.loc 1 306 0
	call	st_getLogLevel@PLT
	cmpl	$3, %eax
	jne	.L97
.LBB27:
	.loc 1 307 0
	movq	-56(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rdi
	movl	$0, %eax
	call	st_logDebug@PLT
	.loc 1 309 0
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	stSet_size@PLT
	movq	%rax, %r12
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	stSet_size@PLT
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	stList_length@PLT
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rdi
	movl	$0, %eax
	call	st_logDebug@PLT
	.loc 1 314 0
	movq	-80(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getIdentityBetweenHaplotypes
	leaq	.LC17(%rip), %rdi
	movl	$1, %eax
	call	st_logDebug@PLT
	.loc 1 316 0
	movq	-80(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getIdentityBetweenHaplotypesExcludingIndels
	leaq	.LC18(%rip), %rdi
	movl	$1, %eax
	call	st_logDebug@PLT
	.loc 1 320 0
	movq	-80(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getHaplotypeBaseComposition
	movq	%rax, -48(%rbp)
	.loc 1 321 0
	leaq	.LC19(%rip), %rdi
	movl	$0, %eax
	call	st_logDebug@PLT
	.loc 1 322 0
	movq	stderr(%rip), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	printBaseComposition
	.loc 1 323 0
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 325 0
	movq	-80(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getHaplotypeBaseComposition
	movq	%rax, -40(%rbp)
	.loc 1 326 0
	leaq	.LC20(%rip), %rdi
	movl	$0, %eax
	call	st_logDebug@PLT
	.loc 1 327 0
	movq	stderr(%rip), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	printBaseComposition
	.loc 1 328 0
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 331 0
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	getExpectedProfileSequenceBaseComposition
	movq	%rax, -32(%rbp)
	.loc 1 332 0
	leaq	.LC21(%rip), %rdi
	movl	$0, %eax
	call	st_logDebug@PLT
	.loc 1 333 0
	movq	stderr(%rip), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	printBaseComposition
	.loc 1 334 0
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 336 0
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	getExpectedProfileSequenceBaseComposition
	movq	%rax, -24(%rbp)
	.loc 1 337 0
	leaq	.LC22(%rip), %rdi
	movl	$0, %eax
	call	st_logDebug@PLT
	.loc 1 338 0
	movq	stderr(%rip), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	printBaseComposition
	.loc 1 339 0
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 342 0
	movq	-80(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, %rdi
	call	getExpectedIdentity
	leaq	.LC23(%rip), %rdi
	movl	$1, %eax
	call	st_logDebug@PLT
	.loc 1 344 0
	movq	-80(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, %rdi
	call	getExpectedIdentity
	leaq	.LC24(%rip), %rdi
	movl	$1, %eax
	call	st_logDebug@PLT
	.loc 1 346 0
	movq	-80(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, %rdi
	call	getExpectedIdentity
	leaq	.LC25(%rip), %rdi
	movl	$1, %eax
	call	st_logDebug@PLT
	.loc 1 348 0
	movq	-80(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, %rdi
	call	getExpectedIdentity
	leaq	.LC26(%rip), %rdi
	movl	$1, %eax
	call	st_logDebug@PLT
.L97:
.LBE27:
	.loc 1 351 0
	nop
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	logHmm, .-logHmm
	.section	.rodata
	.align 8
.LC27:
	.string	"usage: marginPhase <BAM> <REFERENCE_FASTA> <PARAMS> [options]\n"
.LC28:
	.string	"1.0.0"
.LC29:
	.string	"Version: %s \n\n"
	.align 8
.LC30:
	.string	"Phases the reads in a BAM file and produces:\n"
	.align 8
.LC31:
	.string	"    1) a VCF file giving genotypes and haplotypes.\n"
	.align 8
.LC32:
	.string	"    2) a SAM file where each read is annotated with haplotype information\n"
.LC33:
	.string	"\nRequired arguments:\n"
	.align 8
.LC34:
	.string	"    BAM is the alignment of reads.  All reads must be aligned to the same contig \n"
	.align 8
.LC35:
	.string	"        and be in bam format.\n"
	.align 8
.LC36:
	.string	"    REFERENCE_FASTA is the reference sequence for the BAM's contig in fasta format.\n"
	.align 8
.LC37:
	.string	"    PARAMS is the file with marginPhase parameters.\n"
.LC38:
	.string	"\nDefault options:\n"
	.align 8
.LC39:
	.string	"    -h --help              : Print this help screen\n"
	.align 8
.LC40:
	.string	"    -o --outputBase        : Base output identifier [default = \"output\"]\n"
	.align 8
.LC41:
	.string	"                               \"example\" -> \"example.sam\", \"example.vcf\"\n"
	.align 8
.LC42:
	.string	"    -a --logLevel          : Set the log level [default = info]\n"
	.align 8
.LC43:
	.string	"    -t --tag               : Annotate all output reads with this value for the \n"
	.align 8
.LC44:
	.string	"                               'mp' tag\n"
	.align 8
.LC45:
	.string	"\nNucleotide probabilities options:\n"
	.align 8
.LC46:
	.string	"    -s --singleNuclProbDir : Directory of single nucleotide probabilities files\n"
	.align 8
.LC47:
	.string	"    -S --onlySNP           : Use only single nucleotide probabilities information,\n"
	.align 8
.LC48:
	.string	"                               so reads that aren't in SNP dir are discarded\n"
.LC49:
	.string	"\nVCF Comparison options:\n"
	.align 8
.LC50:
	.string	"    -r --referenceVCF      : Reference vcf file for output comparison\n"
	.align 8
.LC51:
	.string	"    -v --verbose           : Bitmask controlling outputs \n"
	.align 8
.LC52:
	.string	"                               %3d - LOG_TRUE_POSITIVES\n"
	.align 8
.LC53:
	.string	"                               %3d - LOG_FALSE_POSITIVES\n"
	.align 8
.LC54:
	.string	"                               %3d - LOG_FALSE_NEGATIVES\n"
	.align 8
.LC55:
	.string	"                               example: 0 -> N/A; 2 -> LFP; 7 -> LTP,LFP,LFN)\n"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB72:
	.loc 1 358 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 359 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$62, %edx
	movl	$1, %esi
	leaq	.LC27(%rip), %rdi
	call	fwrite@PLT
	.loc 1 360 0
	movq	stderr(%rip), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 361 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$45, %edx
	movl	$1, %esi
	leaq	.LC30(%rip), %rdi
	call	fwrite@PLT
	.loc 1 362 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$51, %edx
	movl	$1, %esi
	leaq	.LC31(%rip), %rdi
	call	fwrite@PLT
	.loc 1 363 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$74, %edx
	movl	$1, %esi
	leaq	.LC32(%rip), %rdi
	call	fwrite@PLT
	.loc 1 365 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$21, %edx
	movl	$1, %esi
	leaq	.LC33(%rip), %rdi
	call	fwrite@PLT
	.loc 1 366 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$82, %edx
	movl	$1, %esi
	leaq	.LC34(%rip), %rdi
	call	fwrite@PLT
	.loc 1 367 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$30, %edx
	movl	$1, %esi
	leaq	.LC35(%rip), %rdi
	call	fwrite@PLT
	.loc 1 368 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$84, %edx
	movl	$1, %esi
	leaq	.LC36(%rip), %rdi
	call	fwrite@PLT
	.loc 1 369 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$52, %edx
	movl	$1, %esi
	leaq	.LC37(%rip), %rdi
	call	fwrite@PLT
	.loc 1 371 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$18, %edx
	movl	$1, %esi
	leaq	.LC38(%rip), %rdi
	call	fwrite@PLT
	.loc 1 372 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$52, %edx
	movl	$1, %esi
	leaq	.LC39(%rip), %rdi
	call	fwrite@PLT
	.loc 1 373 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$73, %edx
	movl	$1, %esi
	leaq	.LC40(%rip), %rdi
	call	fwrite@PLT
	.loc 1 374 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$73, %edx
	movl	$1, %esi
	leaq	.LC41(%rip), %rdi
	call	fwrite@PLT
	.loc 1 375 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$64, %edx
	movl	$1, %esi
	leaq	.LC42(%rip), %rdi
	call	fwrite@PLT
	.loc 1 376 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$80, %edx
	movl	$1, %esi
	leaq	.LC43(%rip), %rdi
	call	fwrite@PLT
	.loc 1 377 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$40, %edx
	movl	$1, %esi
	leaq	.LC44(%rip), %rdi
	call	fwrite@PLT
	.loc 1 379 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$35, %edx
	movl	$1, %esi
	leaq	.LC45(%rip), %rdi
	call	fwrite@PLT
	.loc 1 380 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$80, %edx
	movl	$1, %esi
	leaq	.LC46(%rip), %rdi
	call	fwrite@PLT
	.loc 1 381 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$83, %edx
	movl	$1, %esi
	leaq	.LC47(%rip), %rdi
	call	fwrite@PLT
	.loc 1 382 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$77, %edx
	movl	$1, %esi
	leaq	.LC48(%rip), %rdi
	call	fwrite@PLT
	.loc 1 384 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$25, %edx
	movl	$1, %esi
	leaq	.LC49(%rip), %rdi
	call	fwrite@PLT
	.loc 1 385 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$70, %edx
	movl	$1, %esi
	leaq	.LC50(%rip), %rdi
	call	fwrite@PLT
	.loc 1 386 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$58, %edx
	movl	$1, %esi
	leaq	.LC51(%rip), %rdi
	call	fwrite@PLT
	.loc 1 387 0
	movq	stderr(%rip), %rax
	movl	$1, %edx
	leaq	.LC52(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 388 0
	movq	stderr(%rip), %rax
	movl	$2, %edx
	leaq	.LC53(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 389 0
	movq	stderr(%rip), %rax
	movl	$4, %edx
	leaq	.LC54(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 1 390 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$78, %edx
	movl	$1, %esi
	leaq	.LC55(%rip), %rdi
	call	fwrite@PLT
	.loc 1 392 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	usage, .-usage
	.section	.rodata
.LC56:
	.string	"info"
.LC57:
	.string	"output"
.LC58:
	.string	"a:o:v:r:s:hS"
.LC59:
	.string	"%s.vcf"
.LC60:
	.string	"%s.params.json"
.LC61:
	.string	"%s.gvcf"
	.align 8
.LC62:
	.string	"> Parsing model parameters from file: %s\n"
	.align 8
.LC63:
	.string	"> Parsing input reads from file: %s\n"
	.align 8
.LC64:
	.string	"\tCreated %d profile sequences\n"
	.align 8
.LC65:
	.string	"> Using a flat prior over reference positions\n"
	.align 8
.LC66:
	.string	"> Parsing prior probabilities on positions from reference sequences: %s\n"
	.align 8
.LC67:
	.string	"> Pre-filtering reads to remove reads with less than %f identity to the consensus sequence\n"
	.align 8
.LC69:
	.string	"\tFiltered %d profile sequences (%f percent)\n"
	.align 8
.LC70:
	.string	"> Filtering likely homozygous positions\n"
	.align 8
.LC71:
	.string	"\tFiltered %li (%f) likely homozygous positions, \n\teach with fewer than %li aligned occurrences of any second most frequent base, \n\tleaving only %li (%f) positions of %li total positions\n"
	.align 8
.LC72:
	.string	"> Filtering reads by coverage depth\n"
	.align 8
.LC73:
	.string	"\tFiltered %li reads of %li to achieve maximum coverage depth of %li\n"
	.align 8
.LC74:
	.string	"> Estimating read errors from alignment (quick and dirty)\n"
	.align 8
.LC75:
	.string	"> Learning parameters for HMM model (%li iterations)\n"
.LC76:
	.string	"> Learned parameters:\n"
	.align 8
.LC77:
	.string	"\tWriting learned parameters to file: %s\n"
.LC78:
	.string	"w"
	.align 8
.LC79:
	.string	"\n\tFinished writing out VCF into file: %s\n"
	.align 8
.LC80:
	.string	"\n> There were a total of %d genome fragments. Average length = %f\n"
.LC81:
	.string	"\n> Comparing VCFs\n"
	.align 8
.LC82:
	.string	"\tReference VCF file does not exist: %s\n"
	.align 8
.LC83:
	.string	"\tWriting out SAM files for each partition\n"
	.align 8
.LC84:
	.string	"\tWriting out single SAM file with read partitioning\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB73:
	.loc 1 394 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$352, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -340(%rbp)
	movq	%rsi, -352(%rbp)
	.loc 1 394 0
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 1 397 0
	leaq	.LC56(%rip), %rdi
	call	stString_copy@PLT
	movq	%rax, -312(%rbp)
	.loc 1 398 0
	movq	$0, -208(%rbp)
	.loc 1 399 0
	movq	$0, -200(%rbp)
	.loc 1 400 0
	movq	$0, -192(%rbp)
	.loc 1 401 0
	movq	$0, -304(%rbp)
	.loc 1 402 0
	movq	$0, -296(%rbp)
	.loc 1 403 0
	movq	$0, -288(%rbp)
	.loc 1 404 0
	leaq	.LC57(%rip), %rax
	movq	%rax, -280(%rbp)
	.loc 1 405 0
	movq	$-1, -272(%rbp)
	.loc 1 406 0
	movb	$0, -325(%rbp)
	.loc 1 410 0
	cmpl	$3, -340(%rbp)
	jg	.L100
	.loc 1 411 0
	movl	$0, %eax
	call	usage
	.loc 1 412 0
	movl	$0, %eax
	jmp	.L101
.L100:
	.loc 1 415 0
	movq	-352(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stString_copy@PLT
	movq	%rax, -208(%rbp)
	.loc 1 416 0
	movq	-352(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stString_copy@PLT
	movq	%rax, -192(%rbp)
	.loc 1 417 0
	movq	-352(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	stString_copy@PLT
	movq	%rax, -200(%rbp)
.L118:
.LBB28:
	.loc 1 432 0
	movl	$0, -320(%rbp)
	.loc 1 433 0
	movq	-352(%rbp), %rax
	leaq	16(%rax), %rsi
	movl	-340(%rbp), %eax
	subl	$2, %eax
	leaq	-320(%rbp), %rdx
	movq	%rdx, %r8
	leaq	long_options.8134(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	movl	%eax, %edi
	call	getopt_long@PLT
	movl	%eax, -324(%rbp)
	.loc 1 435 0
	cmpl	$-1, -324(%rbp)
	jne	.L102
.LBE28:
	.loc 1 475 0
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	st_setLogLevelFromString@PLT
	.loc 1 476 0
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 479 0
	movq	-280(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC59(%rip), %rdi
	movl	$0, %eax
	call	stString_print@PLT
	movq	%rax, -184(%rbp)
	.loc 1 480 0
	movq	-280(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC60(%rip), %rdi
	movl	$0, %eax
	call	stString_print@PLT
	movq	%rax, -176(%rbp)
	.loc 1 481 0
	movq	-280(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC61(%rip), %rdi
	movl	$0, %eax
	call	stString_print@PLT
	movq	%rax, -168(%rbp)
	.loc 1 484 0
	movq	-200(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC62(%rip), %rdi
	movl	$0, %eax
	call	st_logInfo@PLT
	.loc 1 485 0
	movl	$0, %eax
	call	stBaseMapper_construct@PLT
	movq	%rax, -160(%rbp)
	.loc 1 486 0
	movq	-160(%rbp), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parseParameters@PLT
	movq	%rax, -152(%rbp)
	.loc 1 487 0
	cmpq	$0, -272(%rbp)
	jns	.L103
	jmp	.L104
.L102:
.LBB29:
	.loc 1 439 0
	movl	-324(%rbp), %eax
	subl	$83, %eax
	cmpl	$35, %eax
	ja	.L105
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L107(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L107(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L107:
	.long	.L106-.L107
	.long	.L105-.L107
	.long	.L105-.L107
	.long	.L105-.L107
	.long	.L105-.L107
	.long	.L105-.L107
	.long	.L105-.L107
	.long	.L105-.L107
	.long	.L105-.L107
	.long	.L105-.L107
	.long	.L105-.L107
	.long	.L105-.L107
	.long	.L105-.L107
	.long	.L105-.L107
	.long	.L108-.L107
	.long	.L105-.L107
	.long	.L105-.L107
	.long	.L105-.L107
	.long	.L105-.L107
	.long	.L105-.L107
	.long	.L105-.L107
	.long	.L109-.L107
	.long	.L105-.L107
	.long	.L105-.L107
	.long	.L105-.L107
	.long	.L105-.L107
	.long	.L105-.L107
	.long	.L105-.L107
	.long	.L110-.L107
	.long	.L105-.L107
	.long	.L105-.L107
	.long	.L111-.L107
	.long	.L112-.L107
	.long	.L113-.L107
	.long	.L105-.L107
	.long	.L114-.L107
	.text
.L108:
	.loc 1 441 0
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 442 0
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	stString_copy@PLT
	movq	%rax, -312(%rbp)
	.loc 1 443 0
	jmp	.L115
.L109:
	.loc 1 445 0
	movl	$0, %eax
	call	usage
	.loc 1 446 0
	movl	$0, %eax
	jmp	.L101
.L110:
	.loc 1 448 0
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	stString_copy@PLT
	movq	%rax, -280(%rbp)
	.loc 1 449 0
	jmp	.L115
.L113:
	.loc 1 451 0
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	stString_copy@PLT
	movq	%rax, -304(%rbp)
	.loc 1 452 0
	jmp	.L115
.L111:
	.loc 1 454 0
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	stString_copy@PLT
	movq	%rax, -296(%rbp)
	.loc 1 455 0
	jmp	.L115
.L112:
	.loc 1 457 0
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	stString_copy@PLT
	movq	%rax, -288(%rbp)
	.loc 1 458 0
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leaq	-1(%rax), %rdx
	movq	-288(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L144
	.loc 1 459 0
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leaq	-1(%rax), %rdx
	movq	-288(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	.loc 1 461 0
	jmp	.L144
.L106:
	.loc 1 463 0
	movb	$1, -325(%rbp)
	.loc 1 464 0
	jmp	.L115
.L114:
	.loc 1 466 0
	movq	optarg(%rip), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	cltq
	movq	%rax, -272(%rbp)
	.loc 1 467 0
	jmp	.L115
.L105:
	.loc 1 469 0
	movl	$0, %eax
	call	usage
	.loc 1 470 0
	movl	$0, %eax
	jmp	.L101
.L144:
	.loc 1 461 0
	nop
.L115:
.LBE29:
	.loc 1 420 0 discriminator 1
	jmp	.L118
.L103:
	.loc 1 487 0 discriminator 1
	movq	-272(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	setVerbosity@PLT
.L104:
	.loc 1 490 0
	call	st_getLogLevel@PLT
	cmpl	$3, %eax
	jne	.L119
	.loc 1 491 0
	movq	stderr(%rip), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stRPHmmParameters_printParameters@PLT
.L119:
	.loc 1 495 0
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC63(%rip), %rdi
	movl	$0, %eax
	call	st_logInfo@PLT
	.loc 1 496 0
	movq	stProfileSeq_destruct@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	stList_construct3@PLT
	movq	%rax, -264(%rbp)
	.loc 1 497 0
	movq	$0, -256(%rbp)
	.loc 1 498 0
	cmpq	$0, -288(%rbp)
	jne	.L120
	.loc 1 499 0
	movq	-152(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	parseReads@PLT
	movq	%rax, -256(%rbp)
	jmp	.L121
.L120:
	.loc 1 501 0
	movzbl	-325(%rbp), %r8d
	movq	-288(%rbp), %rdi
	movq	-152(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-264(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	parseReadsWithSingleNucleotideProbs@PLT
	movq	%rax, -256(%rbp)
.L121:
	.loc 1 504 0
	movq	-256(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC64(%rip), %rdi
	movl	$0, %eax
	call	st_logInfo@PLT
	.loc 1 507 0
	call	st_getLogLevel@PLT
	cmpl	$3, %eax
	jne	.L122
	.loc 1 508 0
	movq	stderr(%rip), %rax
	movq	-264(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	printSequenceStats
	.loc 1 509 0
	movq	stderr(%rip), %rax
	movq	-264(%rbp), %rcx
	movl	$100, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	printAvgIdentityBetweenProfileSequences
.L122:
	.loc 1 514 0
	movq	-152(%rbp), %rax
	movzbl	120(%rax), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L123
	.loc 1 515 0
	leaq	.LC65(%rip), %rdi
	movl	$0, %eax
	call	st_logInfo@PLT
	.loc 1 516 0
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	createEmptyReferencePriorProbabilities@PLT
	movq	%rax, -248(%rbp)
	jmp	.L124
.L123:
	.loc 1 519 0
	movq	-192(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC66(%rip), %rdi
	movl	$0, %eax
	call	st_logInfo@PLT
	.loc 1 520 0
	movq	-152(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movq	-264(%rbp), %rsi
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	createReferencePriorProbabilities@PLT
	movq	%rax, -248(%rbp)
.L124:
	.loc 1 526 0
	movq	-152(%rbp), %rax
	movzbl	105(%rax), %eax
	testb	%al, %al
	je	.L125
.LBB30:
	.loc 1 527 0
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	stList_length@PLT
	movq	%rax, -144(%rbp)
	.loc 1 528 0
	movq	$0, -320(%rbp)
	.loc 1 529 0
	movq	-152(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -360(%rbp)
	movsd	-360(%rbp), %xmm0
	leaq	.LC67(%rip), %rdi
	movl	$1, %eax
	call	st_logInfo@PLT
	.loc 1 531 0
	movq	-152(%rbp), %rcx
	movq	-248(%rbp), %rdx
	leaq	-320(%rbp), %rsi
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	prefilterReads
	movq	%rax, -264(%rbp)
	.loc 1 532 0
	movq	-320(%rbp), %rax
	cvtsi2ssq	%rax, %xmm0
	movss	.LC68(%rip), %xmm1
	mulss	%xmm1, %xmm0
	cvtsi2ssq	-144(%rbp), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-320(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC69(%rip), %rdi
	movl	$1, %eax
	call	st_logInfo@PLT
.L125:
.LBE30:
	.loc 1 536 0
	movq	-152(%rbp), %rax
	movzbl	125(%rax), %eax
	testb	%al, %al
	je	.L126
.LBB31:
	.loc 1 538 0
	leaq	.LC70(%rip), %rdi
	movl	$0, %eax
	call	st_logInfo@PLT
	.loc 1 539 0
	leaq	-320(%rbp), %rdx
	movq	-152(%rbp), %rcx
	movq	-248(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	filterHomozygousReferencePositions@PLT
	movq	%rax, -136(%rbp)
	.loc 1 541 0
	movq	-320(%rbp), %rsi
	.loc 1 546 0
	movq	-320(%rbp), %rax
	subq	-136(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	.loc 1 541 0
	movq	-320(%rbp), %rax
	cvtsi2sdq	%rax, %xmm1
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movq	-320(%rbp), %rax
	subq	-136(%rbp), %rax
	movq	%rax, %rcx
	.loc 1 545 0
	movq	-152(%rbp), %rax
	movsd	128(%rax), %xmm0
	.loc 1 541 0
	cvttsd2siq	%xmm0, %rdx
	.loc 1 544 0
	cvtsi2sdq	-136(%rbp), %xmm0
	.loc 1 541 0
	movq	-320(%rbp), %rax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm1, %xmm0
	movq	-136(%rbp), %rax
	movq	%rsi, %r8
	movapd	%xmm2, %xmm1
	movq	%rax, %rsi
	leaq	.LC71(%rip), %rdi
	movl	$2, %eax
	call	st_logInfo@PLT
.L126:
.LBE31:
	.loc 1 550 0
	leaq	.LC72(%rip), %rdi
	movl	$0, %eax
	call	st_logInfo@PLT
	.loc 1 551 0
	movq	stProfileSeq_destruct@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	stList_construct3@PLT
	movq	%rax, -128(%rbp)
	.loc 1 552 0
	movq	stProfileSeq_destruct@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	stList_construct3@PLT
	movq	%rax, -120(%rbp)
	.loc 1 553 0
	movq	-248(%rbp), %rdi
	movq	-120(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movq	-264(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	filterReadsByCoverageDepth@PLT
	.loc 1 555 0
	movq	-152(%rbp), %rax
	movq	64(%rax), %rbx
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	stList_length@PLT
	movq	%rax, %r12
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	stList_length@PLT
	movq	%rbx, %rcx
	movq	%r12, %rdx
	movq	%rax, %rsi
	leaq	.LC73(%rip), %rdi
	movl	$0, %eax
	call	st_logInfo@PLT
	.loc 1 559 0
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	stList_destruct@PLT
	.loc 1 560 0
	movq	-264(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	stList_setDestructor@PLT
	.loc 1 561 0
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	stList_destruct@PLT
	.loc 1 562 0
	movq	-128(%rbp), %rax
	movq	%rax, -264(%rbp)
	.loc 1 566 0
	movq	-152(%rbp), %rax
	movzbl	104(%rax), %eax
	testb	%al, %al
	je	.L127
.LBB32:
	.loc 1 567 0
	leaq	.LC74(%rip), %rdi
	movl	$0, %eax
	call	st_logInfo@PLT
	.loc 1 570 0
	movq	-152(%rbp), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stReferencePriorProbs_estimateReadErrorProbs@PLT
	movq	%rax, -112(%rbp)
	.loc 1 572 0
	movq	-112(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stRPHmmParameters_setReadErrorSubstitutionParameters@PLT
	.loc 1 575 0
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 1 576 0
	call	st_getLogLevel@PLT
	cmpl	$3, %eax
	jne	.L127
	.loc 1 577 0
	movq	stderr(%rip), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stRPHmmParameters_printParameters@PLT
.L127:
.LBE32:
	.loc 1 582 0
	movq	-152(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jle	.L128
	.loc 1 583 0
	movq	-152(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC75(%rip), %rdi
	movl	$0, %eax
	call	st_logInfo@PLT
	.loc 1 584 0
	movq	-248(%rbp), %rdx
	movq	-264(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stRPHmmParameters_learnParameters@PLT
	.loc 1 587 0
	call	st_getLogLevel@PLT
	cmpl	$3, %eax
	jne	.L129
	.loc 1 588 0
	leaq	.LC76(%rip), %rdi
	movl	$0, %eax
	call	st_logDebug@PLT
	.loc 1 589 0
	movq	stderr(%rip), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stRPHmmParameters_printParameters@PLT
.L129:
	.loc 1 592 0
	movq	-176(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC77(%rip), %rdi
	movl	$0, %eax
	call	st_logInfo@PLT
	.loc 1 593 0
	movq	-152(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	writeParamFile@PLT
.L128:
	.loc 1 597 0
	movq	-152(%rbp), %rdx
	movq	-248(%rbp), %rcx
	movq	-264(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	createHMMs
	movq	%rax, -104(%rbp)
	.loc 1 600 0
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	stList_length@PLT
	movq	%rax, %rdi
	call	stReadHaplotypePartitionTable_construct@PLT
	movq	%rax, -96(%rbp)
	.loc 1 602 0
	movq	$0, -240(%rbp)
	.loc 1 605 0
	movq	-184(%rbp), %rax
	leaq	.LC78(%rip), %rsi
	movq	%rax, %rdi
	call	hts_open@PLT
	movq	%rax, -88(%rbp)
	.loc 1 606 0
	movq	-192(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	writeVcfHeader@PLT
	movq	%rax, -80(%rbp)
	.loc 1 609 0
	movq	-152(%rbp), %rax
	movzbl	168(%rax), %eax
	testb	%al, %al
	je	.L130
	.loc 1 611 0
	movq	-168(%rbp), %rax
	leaq	.LC78(%rip), %rsi
	movq	%rax, %rdi
	call	hts_open@PLT
	movq	%rax, -232(%rbp)
	.loc 1 612 0
	movq	-192(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	-232(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	writeVcfHeader@PLT
	movq	%rax, -224(%rbp)
.L130:
.LBB33:
	.loc 1 616 0
	movq	$0, -216(%rbp)
	jmp	.L131
.L137:
.LBB34:
	.loc 1 617 0
	movq	-216(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stList_get@PLT
	movq	%rax, -64(%rbp)
	.loc 1 620 0
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	stRPHmm_forwardBackward@PLT
	.loc 1 623 0
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	stRPHmm_forwardTraceBack@PLT
	movq	%rax, -56(%rbp)
	.loc 1 626 0
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stGenomeFragment_construct@PLT
	movq	%rax, -48(%rbp)
	.loc 1 627 0
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	addq	%rax, -240(%rbp)
	.loc 1 630 0
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stRPHmm_partitionSequencesByStatePath@PLT
	movq	%rax, -40(%rbp)
	.loc 1 631 0
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	stRPHmm_partitionSequencesByStatePath@PLT
	movq	%rax, -32(%rbp)
	.loc 1 634 0
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stSet_size@PLT
	testq	%rax, %rax
	jle	.L132
	.loc 1 634 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	stSet_size@PLT
	testq	%rax, %rax
	jg	.L133
.L132:
	.loc 1 635 0 is_stmt 1
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	populateReadHaplotypePartitionTable@PLT
	.loc 1 636 0
	jmp	.L134
.L133:
	.loc 1 640 0
	movq	-152(%rbp), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	jle	.L135
	.loc 1 641 0
	movq	-152(%rbp), %rax
	movq	160(%rax), %r8
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	stGenomeFragment_refineGenomeFragment@PLT
.L135:
	.loc 1 645 0
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	populateReadHaplotypePartitionTable@PLT
	.loc 1 648 0
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	logHmm
	.loc 1 651 0
	movq	-160(%rbp), %rdi
	movq	-192(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	writeVcfFragment@PLT
	.loc 1 652 0
	movq	-152(%rbp), %rax
	movzbl	168(%rax), %eax
	testb	%al, %al
	je	.L136
	.loc 1 653 0
	movq	-160(%rbp), %rdi
	movq	-192(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-224(%rbp), %rsi
	movq	-232(%rbp), %rax
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	writeVcfFragment@PLT
.L136:
	.loc 1 657 0
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	stGenomeFragment_destruct@PLT
	.loc 1 658 0
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	stSet_destruct@PLT
	.loc 1 659 0
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	stSet_destruct@PLT
	.loc 1 660 0
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	stList_destruct@PLT
.L134:
.LBE34:
	.loc 1 616 0 discriminator 2
	addq	$1, -216(%rbp)
.L131:
	.loc 1 616 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	stList_length@PLT
	cmpq	%rax, -216(%rbp)
	jl	.L137
.LBE33:
	.loc 1 664 0 is_stmt 1
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	hts_close@PLT
	.loc 1 665 0
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	bcf_hdr_destroy@PLT
	.loc 1 666 0
	movq	-152(%rbp), %rax
	movzbl	168(%rax), %eax
	testb	%al, %al
	je	.L138
	.loc 1 667 0
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	hts_close@PLT
	.loc 1 668 0
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	bcf_hdr_destroy@PLT
.L138:
	.loc 1 672 0
	movq	-184(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC79(%rip), %rdi
	movl	$0, %eax
	call	st_logInfo@PLT
	.loc 1 675 0
	cvtsi2ssq	-240(%rbp), %xmm3
	movss	%xmm3, -360(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	stList_length@PLT
	cvtsi2ssq	%rax, %xmm0
	movss	-360(%rbp), %xmm3
	divss	%xmm0, %xmm3
	movaps	%xmm3, %xmm0
	.loc 1 674 0
	cvtss2sd	%xmm0, %xmm4
	movsd	%xmm4, -360(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	stList_length@PLT
	movsd	-360(%rbp), %xmm0
	movq	%rax, %rsi
	leaq	.LC80(%rip), %rdi
	movl	$1, %eax
	call	st_logInfo@PLT
	.loc 1 678 0
	cmpq	$0, -296(%rbp)
	je	.L139
	.loc 1 679 0
	leaq	.LC81(%rip), %rdi
	movl	$0, %eax
	call	st_logInfo@PLT
	.loc 1 680 0
	movq	-296(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	access@PLT
	cmpl	$-1, %eax
	jne	.L140
	.loc 1 681 0
	movq	-296(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC82(%rip), %rdi
	movl	$0, %eax
	call	st_logInfo@PLT
	jmp	.L139
.L140:
.LBB35:
	.loc 1 684 0
	movl	$216, %esi
	movl	$1, %edi
	call	st_calloc@PLT
	movq	%rax, -72(%rbp)
	.loc 1 685 0
	movq	stderr(%rip), %rax
	movq	-72(%rbp), %r8
	movq	-160(%rbp), %rdi
	movq	-296(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movq	-104(%rbp), %rsi
	subq	$8, %rsp
	pushq	-152(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	compareVCFs@PLT
	addq	$16, %rsp
	.loc 1 686 0
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	printGenotypeResults@PLT
	.loc 1 687 0
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L139:
.LBE35:
	.loc 1 692 0
	movq	-152(%rbp), %rax
	movzbl	169(%rax), %eax
	testb	%al, %al
	je	.L141
	.loc 1 693 0
	movq	-280(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC83(%rip), %rdi
	movl	$0, %eax
	call	st_logInfo@PLT
	.loc 1 695 0
	movq	-304(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-280(%rbp), %rsi
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	writeSplitSams@PLT
.L141:
	.loc 1 697 0
	movq	-152(%rbp), %rax
	movzbl	170(%rax), %eax
	testb	%al, %al
	je	.L142
	.loc 1 698 0
	movq	-280(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC84(%rip), %rdi
	movl	$0, %eax
	call	st_logInfo@PLT
	.loc 1 700 0
	movq	-304(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-280(%rbp), %rsi
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	writeHaplotypedSam@PLT
.L142:
	.loc 1 703 0
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	stList_destruct@PLT
	.loc 1 704 0
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	stReadHaplotypePartitionTable_destruct@PLT
	.loc 1 705 0
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	stList_destruct@PLT
	.loc 1 707 0
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	stBaseMapper_destruct@PLT
	.loc 1 708 0
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	stRPHmmParameters_destruct@PLT
	.loc 1 709 0
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	stHash_destruct@PLT
	.loc 1 720 0
	movl	$0, %eax
.L101:
	.loc 1 721 0
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L143
	call	__stack_chk_fail@PLT
.L143:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	main, .-main
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.7939, @object
	.size	__PRETTY_FUNCTION__.7939, 27
__PRETTY_FUNCTION__.7939:
	.string	"getExpectedNumberOfMatches"
	.align 32
	.type	__PRETTY_FUNCTION__.7988, @object
	.size	__PRETTY_FUNCTION__.7988, 37
__PRETTY_FUNCTION__.7988:
	.string	"getExpectedMatchesBetweenProfileSeqs"
.LC85:
	.string	"logLevel"
.LC86:
	.string	"help"
.LC87:
	.string	"outputBase"
.LC88:
	.string	"referenceVcf"
.LC89:
	.string	"tag"
.LC90:
	.string	"singleNuclProbDir"
.LC91:
	.string	"onlySNP"
.LC92:
	.string	"verbose"
	.section	.data.rel.local,"aw",@progbits
	.align 32
	.type	long_options.8134, @object
	.size	long_options.8134, 288
long_options.8134:
	.quad	.LC85
	.long	1
	.zero	4
	.quad	0
	.long	97
	.zero	4
	.quad	.LC86
	.long	0
	.zero	4
	.quad	0
	.long	104
	.zero	4
	.quad	.LC87
	.long	1
	.zero	4
	.quad	0
	.long	111
	.zero	4
	.quad	.LC88
	.long	1
	.zero	4
	.quad	0
	.long	114
	.zero	4
	.quad	.LC89
	.long	1
	.zero	4
	.quad	0
	.long	116
	.zero	4
	.quad	.LC90
	.long	1
	.zero	4
	.quad	0
	.long	115
	.zero	4
	.quad	.LC91
	.long	0
	.zero	4
	.quad	0
	.long	83
	.zero	4
	.quad	.LC92
	.long	1
	.zero	4
	.quad	0
	.long	118
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.section	.rodata
	.align 8
.LC4:
	.long	0
	.long	1072693248
	.align 8
.LC8:
	.long	0
	.long	1075052544
	.align 8
.LC9:
	.long	0
	.long	1074266112
	.align 4
.LC68:
	.long	1120403456
	.text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 11 "/usr/include/unistd.h"
	.file 12 "/usr/include/math.h"
	.file 13 "/soe/smittal2/marginPhase/externalTools/htslib/htslib/hts_log.h"
	.file 14 "/soe/smittal2/marginPhase/externalTools/htslib/htslib/hts.h"
	.file 15 "/soe/smittal2/marginPhase/externalTools/htslib/htslib/vcf.h"
	.file 16 "/soe/smittal2/marginPhase/externalTools/sonLib/C/inc/sonLibTypes.h"
	.file 17 "/soe/smittal2/marginPhase/externalTools/sonLib/C/impl/sonLibListPrivate.h"
	.file 18 "/soe/smittal2/marginPhase/externalTools/sonLib/C/inc/sonLibSet.h"
	.file 19 "/soe/smittal2/marginPhase/externalTools/sonLib/C/inc/sonLibSortedSet.h"
	.file 20 "/soe/smittal2/marginPhase/externalTools/sonLib/C/inc/sonLibCommon.h"
	.file 21 "/usr/include/x86_64-linux-gnu/bits/setjmp.h"
	.file 22 "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h"
	.file 23 "/usr/include/setjmp.h"
	.file 24 "/soe/smittal2/marginPhase/externalTools/sonLib/C/inc/sonLibExcept.h"
	.file 25 "/soe/smittal2/marginPhase/externalTools/sonLib/C/inc/sonLibRandom.h"
	.file 26 "/soe/smittal2/marginPhase/externalTools/sonLib/C/inc/sonLibKVDatabase.h"
	.file 27 "/soe/smittal2/marginPhase/externalTools/sonLib/C/inc/sonLibCompression.h"
	.file 28 "/soe/smittal2/marginPhase/externalTools/sonLib/C/inc/sonLibFile.h"
	.file 29 "/soe/smittal2/marginPhase/inc/stRPHmm.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x20c4
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF409
	.byte	0xc
	.long	.LASF410
	.long	.LASF411
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x2
	.byte	0x24
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.long	0x3e
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x5
	.long	0x3e
	.uleb128 0x2
	.long	.LASF1
	.byte	0x2
	.byte	0x32
	.long	0x55
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.long	0x55
	.uleb128 0x2
	.long	.LASF3
	.byte	0x2
	.byte	0x37
	.long	0x55
	.uleb128 0x2
	.long	.LASF4
	.byte	0x2
	.byte	0x3b
	.long	0x55
	.uleb128 0x7
	.long	.LASF24
	.byte	0x20
	.byte	0x3
	.byte	0x32
	.long	0xb4
	.uleb128 0x8
	.long	.LASF5
	.byte	0x3
	.byte	0x34
	.long	0xb4
	.byte	0
	.uleb128 0x8
	.long	.LASF6
	.byte	0x3
	.byte	0x37
	.long	0x55
	.byte	0x8
	.uleb128 0x8
	.long	.LASF7
	.byte	0x3
	.byte	0x38
	.long	0xba
	.byte	0x10
	.uleb128 0x9
	.string	"val"
	.byte	0x3
	.byte	0x39
	.long	0x55
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x45
	.uleb128 0x3
	.byte	0x8
	.long	0x55
	.uleb128 0xa
	.long	.LASF13
	.byte	0x4
	.byte	0xd8
	.long	0xcb
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF9
	.uleb128 0x5
	.long	0xd2
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0xa
	.long	.LASF14
	.byte	0x5
	.byte	0x25
	.long	0xd2
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.long	.LASF15
	.uleb128 0xa
	.long	.LASF16
	.byte	0x5
	.byte	0x27
	.long	0xde
	.uleb128 0xa
	.long	.LASF17
	.byte	0x5
	.byte	0x28
	.long	0x55
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.byte	0x29
	.long	0xe5
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.byte	0x2b
	.long	0x131
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF20
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.byte	0x2c
	.long	0xcb
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x8c
	.long	0x131
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x8d
	.long	0x131
	.uleb128 0xb
	.byte	0x8
	.uleb128 0x7
	.long	.LASF25
	.byte	0xd8
	.byte	0x6
	.byte	0xf5
	.long	0x2db
	.uleb128 0x8
	.long	.LASF26
	.byte	0x6
	.byte	0xf6
	.long	0x55
	.byte	0
	.uleb128 0x8
	.long	.LASF27
	.byte	0x6
	.byte	0xfb
	.long	0x38
	.byte	0x8
	.uleb128 0x8
	.long	.LASF28
	.byte	0x6
	.byte	0xfc
	.long	0x38
	.byte	0x10
	.uleb128 0x8
	.long	.LASF29
	.byte	0x6
	.byte	0xfd
	.long	0x38
	.byte	0x18
	.uleb128 0x8
	.long	.LASF30
	.byte	0x6
	.byte	0xfe
	.long	0x38
	.byte	0x20
	.uleb128 0x8
	.long	.LASF31
	.byte	0x6
	.byte	0xff
	.long	0x38
	.byte	0x28
	.uleb128 0xc
	.long	.LASF32
	.byte	0x6
	.value	0x100
	.long	0x38
	.byte	0x30
	.uleb128 0xc
	.long	.LASF33
	.byte	0x6
	.value	0x101
	.long	0x38
	.byte	0x38
	.uleb128 0xc
	.long	.LASF34
	.byte	0x6
	.value	0x102
	.long	0x38
	.byte	0x40
	.uleb128 0xc
	.long	.LASF35
	.byte	0x6
	.value	0x104
	.long	0x38
	.byte	0x48
	.uleb128 0xc
	.long	.LASF36
	.byte	0x6
	.value	0x105
	.long	0x38
	.byte	0x50
	.uleb128 0xc
	.long	.LASF37
	.byte	0x6
	.value	0x106
	.long	0x38
	.byte	0x58
	.uleb128 0xc
	.long	.LASF38
	.byte	0x6
	.value	0x108
	.long	0x31e
	.byte	0x60
	.uleb128 0xc
	.long	.LASF39
	.byte	0x6
	.value	0x10a
	.long	0x324
	.byte	0x68
	.uleb128 0xc
	.long	.LASF40
	.byte	0x6
	.value	0x10c
	.long	0x55
	.byte	0x70
	.uleb128 0xc
	.long	.LASF41
	.byte	0x6
	.value	0x110
	.long	0x55
	.byte	0x74
	.uleb128 0xc
	.long	.LASF42
	.byte	0x6
	.value	0x112
	.long	0x143
	.byte	0x78
	.uleb128 0xc
	.long	.LASF43
	.byte	0x6
	.value	0x116
	.long	0xde
	.byte	0x80
	.uleb128 0xc
	.long	.LASF44
	.byte	0x6
	.value	0x117
	.long	0xec
	.byte	0x82
	.uleb128 0xc
	.long	.LASF45
	.byte	0x6
	.value	0x118
	.long	0x32a
	.byte	0x83
	.uleb128 0xc
	.long	.LASF46
	.byte	0x6
	.value	0x11c
	.long	0x33a
	.byte	0x88
	.uleb128 0xc
	.long	.LASF47
	.byte	0x6
	.value	0x125
	.long	0x14e
	.byte	0x90
	.uleb128 0xc
	.long	.LASF48
	.byte	0x6
	.value	0x12d
	.long	0x159
	.byte	0x98
	.uleb128 0xc
	.long	.LASF49
	.byte	0x6
	.value	0x12e
	.long	0x159
	.byte	0xa0
	.uleb128 0xc
	.long	.LASF50
	.byte	0x6
	.value	0x12f
	.long	0x159
	.byte	0xa8
	.uleb128 0xc
	.long	.LASF51
	.byte	0x6
	.value	0x130
	.long	0x159
	.byte	0xb0
	.uleb128 0xc
	.long	.LASF52
	.byte	0x6
	.value	0x132
	.long	0xc0
	.byte	0xb8
	.uleb128 0xc
	.long	.LASF53
	.byte	0x6
	.value	0x133
	.long	0x55
	.byte	0xc0
	.uleb128 0xc
	.long	.LASF54
	.byte	0x6
	.value	0x135
	.long	0x340
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF55
	.byte	0x7
	.byte	0x7
	.long	0x15b
	.uleb128 0xd
	.long	.LASF412
	.byte	0x6
	.byte	0x9a
	.uleb128 0x7
	.long	.LASF56
	.byte	0x18
	.byte	0x6
	.byte	0xa0
	.long	0x31e
	.uleb128 0x8
	.long	.LASF57
	.byte	0x6
	.byte	0xa1
	.long	0x31e
	.byte	0
	.uleb128 0x8
	.long	.LASF58
	.byte	0x6
	.byte	0xa2
	.long	0x324
	.byte	0x8
	.uleb128 0x8
	.long	.LASF59
	.byte	0x6
	.byte	0xa6
	.long	0x55
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2ed
	.uleb128 0x3
	.byte	0x8
	.long	0x15b
	.uleb128 0xe
	.long	0x3e
	.long	0x33a
	.uleb128 0xf
	.long	0xcb
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2e6
	.uleb128 0xe
	.long	0x3e
	.long	0x350
	.uleb128 0xf
	.long	0xcb
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.long	.LASF80
	.uleb128 0x11
	.long	.LASF60
	.byte	0x6
	.value	0x13f
	.long	0x350
	.uleb128 0x11
	.long	.LASF61
	.byte	0x6
	.value	0x140
	.long	0x350
	.uleb128 0x11
	.long	.LASF62
	.byte	0x6
	.value	0x141
	.long	0x350
	.uleb128 0x2
	.long	.LASF63
	.byte	0x8
	.byte	0x87
	.long	0x324
	.uleb128 0x2
	.long	.LASF64
	.byte	0x8
	.byte	0x88
	.long	0x324
	.uleb128 0x2
	.long	.LASF65
	.byte	0x8
	.byte	0x89
	.long	0x324
	.uleb128 0xa
	.long	.LASF66
	.byte	0x9
	.byte	0x1a
	.long	0x110
	.uleb128 0xa
	.long	.LASF67
	.byte	0x9
	.byte	0x1b
	.long	0x126
	.uleb128 0xa
	.long	.LASF68
	.byte	0xa
	.byte	0x18
	.long	0xf3
	.uleb128 0xa
	.long	.LASF69
	.byte	0xa
	.byte	0x19
	.long	0x105
	.uleb128 0xa
	.long	.LASF70
	.byte	0xa
	.byte	0x1a
	.long	0x11b
	.uleb128 0xa
	.long	.LASF71
	.byte	0xa
	.byte	0x1b
	.long	0x138
	.uleb128 0x11
	.long	.LASF72
	.byte	0xb
	.value	0x222
	.long	0x3e8
	.uleb128 0x3
	.byte	0x8
	.long	0x38
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF73
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF74
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.long	.LASF75
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.long	.LASF76
	.uleb128 0x11
	.long	.LASF77
	.byte	0xc
	.value	0x1e9
	.long	0x55
	.uleb128 0x2
	.long	.LASF78
	.byte	0xd
	.byte	0x3b
	.long	0x55
	.uleb128 0xa
	.long	.LASF79
	.byte	0xe
	.byte	0x2a
	.long	0x42c
	.uleb128 0x10
	.long	.LASF79
	.uleb128 0x7
	.long	.LASF81
	.byte	0x18
	.byte	0xe
	.byte	0x33
	.long	0x45c
	.uleb128 0x9
	.string	"l"
	.byte	0xe
	.byte	0x34
	.long	0xc0
	.byte	0
	.uleb128 0x9
	.string	"m"
	.byte	0xe
	.byte	0x34
	.long	0xc0
	.byte	0x8
	.uleb128 0x9
	.string	"s"
	.byte	0xe
	.byte	0x35
	.long	0x38
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.long	.LASF82
	.byte	0xe
	.byte	0x36
	.long	0x431
	.uleb128 0x12
	.long	.LASF89
	.byte	0x7
	.byte	0x4
	.long	0xe5
	.byte	0xe
	.byte	0x80
	.long	0x49e
	.uleb128 0x13
	.long	.LASF83
	.byte	0
	.uleb128 0x13
	.long	.LASF84
	.byte	0x1
	.uleb128 0x13
	.long	.LASF85
	.byte	0x2
	.uleb128 0x13
	.long	.LASF86
	.byte	0x3
	.uleb128 0x13
	.long	.LASF87
	.byte	0x4
	.uleb128 0x14
	.long	.LASF88
	.value	0x7fff
	.byte	0
	.uleb128 0x12
	.long	.LASF90
	.byte	0x7
	.byte	0x4
	.long	0xe5
	.byte	0xe
	.byte	0x89
	.long	0x511
	.uleb128 0x13
	.long	.LASF91
	.byte	0
	.uleb128 0x13
	.long	.LASF92
	.byte	0x1
	.uleb128 0x13
	.long	.LASF93
	.byte	0x2
	.uleb128 0x15
	.string	"sam"
	.byte	0x3
	.uleb128 0x15
	.string	"bam"
	.byte	0x4
	.uleb128 0x15
	.string	"bai"
	.byte	0x5
	.uleb128 0x13
	.long	.LASF94
	.byte	0x6
	.uleb128 0x13
	.long	.LASF95
	.byte	0x7
	.uleb128 0x15
	.string	"vcf"
	.byte	0x8
	.uleb128 0x15
	.string	"bcf"
	.byte	0x9
	.uleb128 0x15
	.string	"csi"
	.byte	0xa
	.uleb128 0x15
	.string	"gzi"
	.byte	0xb
	.uleb128 0x15
	.string	"tbi"
	.byte	0xc
	.uleb128 0x15
	.string	"bed"
	.byte	0xd
	.uleb128 0x13
	.long	.LASF96
	.byte	0xe
	.uleb128 0x14
	.long	.LASF97
	.value	0x7fff
	.byte	0
	.uleb128 0x12
	.long	.LASF98
	.byte	0x7
	.byte	0x4
	.long	0xe5
	.byte	0xe
	.byte	0x92
	.long	0x542
	.uleb128 0x13
	.long	.LASF99
	.byte	0
	.uleb128 0x13
	.long	.LASF100
	.byte	0x1
	.uleb128 0x13
	.long	.LASF101
	.byte	0x2
	.uleb128 0x13
	.long	.LASF102
	.byte	0x3
	.uleb128 0x14
	.long	.LASF103
	.value	0x7fff
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.byte	0xe
	.byte	0x9a
	.long	0x563
	.uleb128 0x8
	.long	.LASF104
	.byte	0xe
	.byte	0x9a
	.long	0xfe
	.byte	0
	.uleb128 0x8
	.long	.LASF105
	.byte	0xe
	.byte	0x9a
	.long	0xfe
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF106
	.byte	0x20
	.byte	0xe
	.byte	0x97
	.long	0x5b8
	.uleb128 0x8
	.long	.LASF107
	.byte	0xe
	.byte	0x98
	.long	0x467
	.byte	0
	.uleb128 0x8
	.long	.LASF108
	.byte	0xe
	.byte	0x99
	.long	0x49e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF109
	.byte	0xe
	.byte	0x9a
	.long	0x542
	.byte	0x8
	.uleb128 0x8
	.long	.LASF110
	.byte	0xe
	.byte	0x9b
	.long	0x511
	.byte	0xc
	.uleb128 0x8
	.long	.LASF111
	.byte	0xe
	.byte	0x9c
	.long	0xfe
	.byte	0x10
	.uleb128 0x8
	.long	.LASF112
	.byte	0xe
	.byte	0x9d
	.long	0x159
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.long	.LASF106
	.byte	0xe
	.byte	0x9e
	.long	0x563
	.uleb128 0x17
	.byte	0x8
	.byte	0xe
	.byte	0xac
	.long	0x5ed
	.uleb128 0x18
	.long	.LASF101
	.byte	0xe
	.byte	0xad
	.long	0x5ed
	.uleb128 0x18
	.long	.LASF94
	.byte	0xe
	.byte	0xae
	.long	0x5f8
	.uleb128 0x18
	.long	.LASF113
	.byte	0xe
	.byte	0xaf
	.long	0x603
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x421
	.uleb128 0x10
	.long	.LASF114
	.uleb128 0x3
	.byte	0x8
	.long	0x5f3
	.uleb128 0x10
	.long	.LASF115
	.uleb128 0x3
	.byte	0x8
	.long	0x5fe
	.uleb128 0x16
	.byte	0x60
	.byte	0xe
	.byte	0xa7
	.long	0x6b2
	.uleb128 0x19
	.long	.LASF116
	.byte	0xe
	.byte	0xa8
	.long	0x3c6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x19
	.long	.LASF117
	.byte	0xe
	.byte	0xa8
	.long	0x3c6
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x19
	.long	.LASF118
	.byte	0xe
	.byte	0xa8
	.long	0x3c6
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x19
	.long	.LASF119
	.byte	0xe
	.byte	0xa8
	.long	0x3c6
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x19
	.long	.LASF120
	.byte	0xe
	.byte	0xa8
	.long	0x3c6
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x19
	.long	.LASF121
	.byte	0xe
	.byte	0xa8
	.long	0x3c6
	.byte	0x4
	.byte	0x1b
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	.LASF122
	.byte	0xe
	.byte	0xa9
	.long	0x3a5
	.byte	0x8
	.uleb128 0x8
	.long	.LASF123
	.byte	0xe
	.byte	0xaa
	.long	0x45c
	.byte	0x10
	.uleb128 0x9
	.string	"fn"
	.byte	0xe
	.byte	0xab
	.long	0x38
	.byte	0x28
	.uleb128 0x8
	.long	.LASF124
	.byte	0xe
	.byte	0xab
	.long	0x38
	.byte	0x30
	.uleb128 0x9
	.string	"fp"
	.byte	0xe
	.byte	0xb0
	.long	0x5c3
	.byte	0x38
	.uleb128 0x8
	.long	.LASF108
	.byte	0xe
	.byte	0xb1
	.long	0x5b8
	.byte	0x40
	.byte	0
	.uleb128 0xa
	.long	.LASF125
	.byte	0xe
	.byte	0xb2
	.long	0x609
	.uleb128 0xe
	.long	0xd9
	.long	0x6cd
	.uleb128 0xf
	.long	0xcb
	.byte	0xff
	.byte	0
	.uleb128 0x5
	.long	0x6bd
	.uleb128 0x11
	.long	.LASF126
	.byte	0xe
	.value	0x138
	.long	0x6cd
	.uleb128 0xe
	.long	0x45
	.long	0x6e9
	.uleb128 0x1a
	.byte	0
	.uleb128 0x5
	.long	0x6de
	.uleb128 0x11
	.long	.LASF127
	.byte	0xe
	.value	0x13d
	.long	0x6e9
	.uleb128 0xe
	.long	0x5c
	.long	0x705
	.uleb128 0x1a
	.byte	0
	.uleb128 0x5
	.long	0x6fa
	.uleb128 0x11
	.long	.LASF128
	.byte	0xe
	.value	0x142
	.long	0x705
	.uleb128 0x16
	.byte	0x30
	.byte	0xf
	.byte	0x57
	.long	0x767
	.uleb128 0x8
	.long	.LASF129
	.byte	0xf
	.byte	0x58
	.long	0x55
	.byte	0
	.uleb128 0x9
	.string	"key"
	.byte	0xf
	.byte	0x59
	.long	0x38
	.byte	0x8
	.uleb128 0x8
	.long	.LASF130
	.byte	0xf
	.byte	0x5a
	.long	0x38
	.byte	0x10
	.uleb128 0x8
	.long	.LASF131
	.byte	0xf
	.byte	0x5b
	.long	0x55
	.byte	0x18
	.uleb128 0x8
	.long	.LASF132
	.byte	0xf
	.byte	0x5c
	.long	0x3e8
	.byte	0x20
	.uleb128 0x8
	.long	.LASF133
	.byte	0xf
	.byte	0x5c
	.long	0x3e8
	.byte	0x28
	.byte	0
	.uleb128 0xa
	.long	.LASF134
	.byte	0xf
	.byte	0x5d
	.long	0x716
	.uleb128 0x16
	.byte	0x30
	.byte	0xf
	.byte	0x5f
	.long	0x79e
	.uleb128 0x8
	.long	.LASF135
	.byte	0xf
	.byte	0x60
	.long	0x79e
	.byte	0
	.uleb128 0x8
	.long	.LASF136
	.byte	0xf
	.byte	0x62
	.long	0x7ae
	.byte	0x10
	.uleb128 0x9
	.string	"id"
	.byte	0xf
	.byte	0x63
	.long	0x55
	.byte	0x28
	.byte	0
	.uleb128 0xe
	.long	0x3c6
	.long	0x7ae
	.uleb128 0xf
	.long	0xcb
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.long	0x7be
	.long	0x7be
	.uleb128 0xf
	.long	0xcb
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x767
	.uleb128 0xa
	.long	.LASF137
	.byte	0xf
	.byte	0x64
	.long	0x772
	.uleb128 0x5
	.long	0x7c4
	.uleb128 0x16
	.byte	0x10
	.byte	0xf
	.byte	0x66
	.long	0x7f5
	.uleb128 0x9
	.string	"key"
	.byte	0xf
	.byte	0x67
	.long	0xb4
	.byte	0
	.uleb128 0x9
	.string	"val"
	.byte	0xf
	.byte	0x68
	.long	0x7f5
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x7cf
	.uleb128 0xa
	.long	.LASF138
	.byte	0xf
	.byte	0x69
	.long	0x7d4
	.uleb128 0x16
	.byte	0xa8
	.byte	0xf
	.byte	0x6c
	.long	0x8a6
	.uleb128 0x9
	.string	"n"
	.byte	0xf
	.byte	0x6d
	.long	0x8a6
	.byte	0
	.uleb128 0x9
	.string	"id"
	.byte	0xf
	.byte	0x6e
	.long	0x8b6
	.byte	0x10
	.uleb128 0x8
	.long	.LASF139
	.byte	0xf
	.byte	0x6f
	.long	0x8cc
	.byte	0x28
	.uleb128 0x8
	.long	.LASF140
	.byte	0xf
	.byte	0x70
	.long	0x3e8
	.byte	0x40
	.uleb128 0x8
	.long	.LASF136
	.byte	0xf
	.byte	0x71
	.long	0x8dc
	.byte	0x48
	.uleb128 0x8
	.long	.LASF141
	.byte	0xf
	.byte	0x72
	.long	0x55
	.byte	0x50
	.uleb128 0x8
	.long	.LASF142
	.byte	0xf
	.byte	0x72
	.long	0x55
	.byte	0x54
	.uleb128 0x8
	.long	.LASF143
	.byte	0xf
	.byte	0x73
	.long	0x55
	.byte	0x58
	.uleb128 0x8
	.long	.LASF144
	.byte	0xf
	.byte	0x73
	.long	0x8e2
	.byte	0x60
	.uleb128 0x8
	.long	.LASF145
	.byte	0xf
	.byte	0x74
	.long	0x55
	.byte	0x70
	.uleb128 0x8
	.long	.LASF146
	.byte	0xf
	.byte	0x75
	.long	0x8f2
	.byte	0x78
	.uleb128 0x9
	.string	"mem"
	.byte	0xf
	.byte	0x76
	.long	0x45c
	.byte	0x80
	.uleb128 0x9
	.string	"m"
	.byte	0xf
	.byte	0x77
	.long	0x8a6
	.byte	0x98
	.byte	0
	.uleb128 0xe
	.long	0x39a
	.long	0x8b6
	.uleb128 0xf
	.long	0xcb
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.long	0x8c6
	.long	0x8c6
	.uleb128 0xf
	.long	0xcb
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x7fb
	.uleb128 0xe
	.long	0x159
	.long	0x8dc
	.uleb128 0xf
	.long	0xcb
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x7be
	.uleb128 0xe
	.long	0xba
	.long	0x8f2
	.uleb128 0xf
	.long	0xcb
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3b0
	.uleb128 0xa
	.long	.LASF147
	.byte	0xf
	.byte	0x78
	.long	0x806
	.uleb128 0xe
	.long	0x3b0
	.long	0x90e
	.uleb128 0x1a
	.byte	0
	.uleb128 0x2
	.long	.LASF148
	.byte	0xf
	.byte	0x7a
	.long	0x903
	.uleb128 0x1b
	.long	.LASF149
	.byte	0xf
	.value	0x11c
	.long	0x6b2
	.uleb128 0x11
	.long	.LASF150
	.byte	0xf
	.value	0x371
	.long	0x3c6
	.uleb128 0x11
	.long	.LASF151
	.byte	0xf
	.value	0x372
	.long	0x3c6
	.uleb128 0xa
	.long	.LASF152
	.byte	0x10
	.byte	0x23
	.long	0x948
	.uleb128 0x10
	.long	.LASF153
	.uleb128 0xa
	.long	.LASF154
	.byte	0x10
	.byte	0x24
	.long	0x958
	.uleb128 0x10
	.long	.LASF155
	.uleb128 0xa
	.long	.LASF156
	.byte	0x10
	.byte	0x26
	.long	0x968
	.uleb128 0x10
	.long	.LASF157
	.uleb128 0xa
	.long	.LASF158
	.byte	0x10
	.byte	0x29
	.long	0x978
	.uleb128 0x7
	.long	.LASF159
	.byte	0x20
	.byte	0x11
	.byte	0xb
	.long	0x9b5
	.uleb128 0x8
	.long	.LASF160
	.byte	0x11
	.byte	0xc
	.long	0x130e
	.byte	0
	.uleb128 0x8
	.long	.LASF161
	.byte	0x11
	.byte	0xd
	.long	0x3a5
	.byte	0x8
	.uleb128 0x8
	.long	.LASF162
	.byte	0x11
	.byte	0xe
	.long	0x3a5
	.byte	0x10
	.uleb128 0x8
	.long	.LASF163
	.byte	0x11
	.byte	0xf
	.long	0x131f
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.long	.LASF164
	.byte	0x10
	.byte	0x2a
	.long	0x9c0
	.uleb128 0x7
	.long	.LASF165
	.byte	0x10
	.byte	0x11
	.byte	0x12
	.long	0x9e5
	.uleb128 0x8
	.long	.LASF160
	.byte	0x11
	.byte	0x13
	.long	0xb4b
	.byte	0
	.uleb128 0x8
	.long	.LASF166
	.byte	0x11
	.byte	0x14
	.long	0x3a5
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.long	.LASF167
	.byte	0x10
	.byte	0x2d
	.long	0x9f0
	.uleb128 0x10
	.long	.LASF167
	.uleb128 0x2
	.long	.LASF168
	.byte	0x12
	.byte	0x18
	.long	0xb4
	.uleb128 0x2
	.long	.LASF169
	.byte	0x13
	.byte	0x11
	.long	0xb4
	.uleb128 0x12
	.long	.LASF170
	.byte	0x7
	.byte	0x4
	.long	0xe5
	.byte	0x14
	.byte	0x2e
	.long	0xa35
	.uleb128 0x15
	.string	"off"
	.byte	0
	.uleb128 0x13
	.long	.LASF171
	.byte	0x1
	.uleb128 0x13
	.long	.LASF135
	.byte	0x2
	.uleb128 0x13
	.long	.LASF172
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.long	.LASF173
	.byte	0x15
	.byte	0x1f
	.long	0xa40
	.uleb128 0xe
	.long	0x131
	.long	0xa50
	.uleb128 0xf
	.long	0xcb
	.byte	0x7
	.byte	0
	.uleb128 0x16
	.byte	0x80
	.byte	0x16
	.byte	0x5
	.long	0xa65
	.uleb128 0x8
	.long	.LASF174
	.byte	0x16
	.byte	0x7
	.long	0xa65
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0xcb
	.long	0xa75
	.uleb128 0xf
	.long	0xcb
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.long	.LASF175
	.byte	0x16
	.byte	0x8
	.long	0xa50
	.uleb128 0x7
	.long	.LASF176
	.byte	0xc8
	.byte	0x17
	.byte	0x21
	.long	0xab1
	.uleb128 0x8
	.long	.LASF177
	.byte	0x17
	.byte	0x27
	.long	0xa35
	.byte	0
	.uleb128 0x8
	.long	.LASF178
	.byte	0x17
	.byte	0x28
	.long	0x55
	.byte	0x40
	.uleb128 0x8
	.long	.LASF179
	.byte	0x17
	.byte	0x29
	.long	0xa75
	.byte	0x48
	.byte	0
	.uleb128 0xa
	.long	.LASF180
	.byte	0x17
	.byte	0x2d
	.long	0xabc
	.uleb128 0xe
	.long	0xa80
	.long	0xacc
	.uleb128 0xf
	.long	0xcb
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF181
	.byte	0xd8
	.byte	0x18
	.byte	0x98
	.long	0xafd
	.uleb128 0x9
	.string	"env"
	.byte	0x18
	.byte	0x99
	.long	0xab1
	.byte	0
	.uleb128 0x8
	.long	.LASF182
	.byte	0x18
	.byte	0x9a
	.long	0xafd
	.byte	0xc8
	.uleb128 0x8
	.long	.LASF183
	.byte	0x18
	.byte	0x9b
	.long	0xb03
	.byte	0xd0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xacc
	.uleb128 0x3
	.byte	0x8
	.long	0x9e5
	.uleb128 0x2
	.long	.LASF184
	.byte	0x18
	.byte	0xa2
	.long	0xafd
	.uleb128 0x2
	.long	.LASF185
	.byte	0x19
	.byte	0x16
	.long	0xb4
	.uleb128 0x2
	.long	.LASF186
	.byte	0x1a
	.byte	0x11
	.long	0xb4
	.uleb128 0x2
	.long	.LASF187
	.byte	0x1a
	.byte	0x14
	.long	0xb4
	.uleb128 0x2
	.long	.LASF188
	.byte	0x1b
	.byte	0x17
	.long	0xb4
	.uleb128 0x2
	.long	.LASF189
	.byte	0x1c
	.byte	0x18
	.long	0xb4
	.uleb128 0x3
	.byte	0x8
	.long	0x96d
	.uleb128 0xa
	.long	.LASF190
	.byte	0x1d
	.byte	0x1a
	.long	0xb5c
	.uleb128 0x7
	.long	.LASF191
	.byte	0x28
	.byte	0x1d
	.byte	0x6f
	.long	0xba5
	.uleb128 0x8
	.long	.LASF192
	.byte	0x1d
	.byte	0x70
	.long	0x38
	.byte	0
	.uleb128 0x8
	.long	.LASF193
	.byte	0x1d
	.byte	0x71
	.long	0x38
	.byte	0x8
	.uleb128 0x8
	.long	.LASF194
	.byte	0x1d
	.byte	0x72
	.long	0x3a5
	.byte	0x10
	.uleb128 0x8
	.long	.LASF161
	.byte	0x1d
	.byte	0x73
	.long	0x3a5
	.byte	0x18
	.uleb128 0x8
	.long	.LASF195
	.byte	0x1d
	.byte	0x78
	.long	0x8f2
	.byte	0x20
	.byte	0
	.uleb128 0xa
	.long	.LASF196
	.byte	0x1d
	.byte	0x1b
	.long	0xbb0
	.uleb128 0x1c
	.long	.LASF197
	.byte	0x68
	.byte	0x1d
	.value	0x121
	.long	0xc67
	.uleb128 0xc
	.long	.LASF192
	.byte	0x1d
	.value	0x122
	.long	0x38
	.byte	0
	.uleb128 0xc
	.long	.LASF194
	.byte	0x1d
	.value	0x123
	.long	0x3a5
	.byte	0x8
	.uleb128 0xc
	.long	.LASF198
	.byte	0x1d
	.value	0x124
	.long	0x3a5
	.byte	0x10
	.uleb128 0xc
	.long	.LASF199
	.byte	0x1d
	.value	0x125
	.long	0xb4b
	.byte	0x18
	.uleb128 0xc
	.long	.LASF200
	.byte	0x1d
	.value	0x126
	.long	0x3a5
	.byte	0x20
	.uleb128 0xc
	.long	.LASF201
	.byte	0x1d
	.value	0x127
	.long	0x3a5
	.byte	0x28
	.uleb128 0xc
	.long	.LASF202
	.byte	0x1d
	.value	0x128
	.long	0x12a9
	.byte	0x30
	.uleb128 0xc
	.long	.LASF203
	.byte	0x1d
	.value	0x129
	.long	0x12a9
	.byte	0x38
	.uleb128 0xc
	.long	.LASF204
	.byte	0x1d
	.value	0x12a
	.long	0x12af
	.byte	0x40
	.uleb128 0xc
	.long	.LASF205
	.byte	0x1d
	.value	0x12c
	.long	0x403
	.byte	0x48
	.uleb128 0xc
	.long	.LASF206
	.byte	0x1d
	.value	0x12d
	.long	0x403
	.byte	0x50
	.uleb128 0xc
	.long	.LASF207
	.byte	0x1d
	.value	0x12f
	.long	0x12b5
	.byte	0x58
	.uleb128 0xc
	.long	.LASF208
	.byte	0x1d
	.value	0x131
	.long	0x12bb
	.byte	0x60
	.byte	0
	.uleb128 0xa
	.long	.LASF209
	.byte	0x1d
	.byte	0x1c
	.long	0xc77
	.uleb128 0x5
	.long	0xc67
	.uleb128 0x7
	.long	.LASF210
	.byte	0xb0
	.byte	0x1d
	.byte	0xc7
	.long	0xdfd
	.uleb128 0x8
	.long	.LASF211
	.byte	0x1d
	.byte	0xcb
	.long	0x1290
	.byte	0
	.uleb128 0x8
	.long	.LASF212
	.byte	0x1d
	.byte	0xcc
	.long	0x1290
	.byte	0x8
	.uleb128 0x8
	.long	.LASF213
	.byte	0x1d
	.byte	0xcd
	.long	0x1296
	.byte	0x10
	.uleb128 0x8
	.long	.LASF214
	.byte	0x1d
	.byte	0xce
	.long	0x1296
	.byte	0x18
	.uleb128 0x8
	.long	.LASF215
	.byte	0x1d
	.byte	0xcf
	.long	0x12a2
	.byte	0x20
	.uleb128 0x8
	.long	.LASF216
	.byte	0x1d
	.byte	0xd3
	.long	0x3a5
	.byte	0x28
	.uleb128 0x8
	.long	.LASF217
	.byte	0x1d
	.byte	0xd4
	.long	0x3a5
	.byte	0x30
	.uleb128 0x8
	.long	.LASF218
	.byte	0x1d
	.byte	0xd5
	.long	0x403
	.byte	0x38
	.uleb128 0x8
	.long	.LASF219
	.byte	0x1d
	.byte	0xd9
	.long	0x3a5
	.byte	0x40
	.uleb128 0x8
	.long	.LASF220
	.byte	0x1d
	.byte	0xda
	.long	0x3a5
	.byte	0x48
	.uleb128 0x8
	.long	.LASF221
	.byte	0x1d
	.byte	0xdf
	.long	0x3a5
	.byte	0x50
	.uleb128 0x8
	.long	.LASF222
	.byte	0x1d
	.byte	0xe1
	.long	0x403
	.byte	0x58
	.uleb128 0x8
	.long	.LASF223
	.byte	0x1d
	.byte	0xe2
	.long	0x403
	.byte	0x60
	.uleb128 0x8
	.long	.LASF224
	.byte	0x1d
	.byte	0xe4
	.long	0x12a2
	.byte	0x68
	.uleb128 0x8
	.long	.LASF225
	.byte	0x1d
	.byte	0xe7
	.long	0x12a2
	.byte	0x69
	.uleb128 0x8
	.long	.LASF226
	.byte	0x1d
	.byte	0xe8
	.long	0x403
	.byte	0x70
	.uleb128 0x8
	.long	.LASF227
	.byte	0x1d
	.byte	0xeb
	.long	0x12a2
	.byte	0x78
	.uleb128 0x8
	.long	.LASF228
	.byte	0x1d
	.byte	0xee
	.long	0x12a2
	.byte	0x79
	.uleb128 0x8
	.long	.LASF229
	.byte	0x1d
	.byte	0xef
	.long	0x12a2
	.byte	0x7a
	.uleb128 0x8
	.long	.LASF230
	.byte	0x1d
	.byte	0xf0
	.long	0x12a2
	.byte	0x7b
	.uleb128 0x8
	.long	.LASF231
	.byte	0x1d
	.byte	0xf3
	.long	0x12a2
	.byte	0x7c
	.uleb128 0x8
	.long	.LASF232
	.byte	0x1d
	.byte	0xf6
	.long	0x12a2
	.byte	0x7d
	.uleb128 0x8
	.long	.LASF233
	.byte	0x1d
	.byte	0xf7
	.long	0x403
	.byte	0x80
	.uleb128 0x8
	.long	.LASF234
	.byte	0x1d
	.byte	0xf8
	.long	0x403
	.byte	0x88
	.uleb128 0x8
	.long	.LASF235
	.byte	0x1d
	.byte	0xfb
	.long	0x12a2
	.byte	0x90
	.uleb128 0x8
	.long	.LASF236
	.byte	0x1d
	.byte	0xff
	.long	0x3bb
	.byte	0x92
	.uleb128 0xc
	.long	.LASF237
	.byte	0x1d
	.value	0x102
	.long	0x3a5
	.byte	0x98
	.uleb128 0xc
	.long	.LASF238
	.byte	0x1d
	.value	0x105
	.long	0x3a5
	.byte	0xa0
	.uleb128 0xc
	.long	.LASF239
	.byte	0x1d
	.value	0x108
	.long	0x12a2
	.byte	0xa8
	.uleb128 0xc
	.long	.LASF240
	.byte	0x1d
	.value	0x10b
	.long	0x12a2
	.byte	0xa9
	.uleb128 0xc
	.long	.LASF241
	.byte	0x1d
	.value	0x10c
	.long	0x12a2
	.byte	0xaa
	.byte	0
	.uleb128 0xa
	.long	.LASF242
	.byte	0x1d
	.byte	0x1d
	.long	0xe08
	.uleb128 0x1c
	.long	.LASF243
	.byte	0x58
	.byte	0x1d
	.value	0x160
	.long	0xea5
	.uleb128 0xc
	.long	.LASF194
	.byte	0x1d
	.value	0x161
	.long	0x3a5
	.byte	0
	.uleb128 0xc
	.long	.LASF161
	.byte	0x1d
	.value	0x162
	.long	0x3a5
	.byte	0x8
	.uleb128 0xc
	.long	.LASF244
	.byte	0x1d
	.value	0x163
	.long	0x3a5
	.byte	0x10
	.uleb128 0xc
	.long	.LASF245
	.byte	0x1d
	.value	0x164
	.long	0x12c1
	.byte	0x18
	.uleb128 0xc
	.long	.LASF246
	.byte	0x1d
	.value	0x165
	.long	0x12cd
	.byte	0x20
	.uleb128 0xc
	.long	.LASF247
	.byte	0x1d
	.value	0x166
	.long	0x12d3
	.byte	0x28
	.uleb128 0xc
	.long	.LASF248
	.byte	0x1d
	.value	0x167
	.long	0x12d9
	.byte	0x30
	.uleb128 0xc
	.long	.LASF249
	.byte	0x1d
	.value	0x167
	.long	0x12d9
	.byte	0x38
	.uleb128 0xc
	.long	.LASF250
	.byte	0x1d
	.value	0x168
	.long	0x403
	.byte	0x40
	.uleb128 0xc
	.long	.LASF251
	.byte	0x1d
	.value	0x16a
	.long	0x12df
	.byte	0x48
	.uleb128 0xc
	.long	.LASF252
	.byte	0x1d
	.value	0x16b
	.long	0x3a5
	.byte	0x50
	.byte	0
	.uleb128 0xa
	.long	.LASF253
	.byte	0x1d
	.byte	0x1e
	.long	0xeb0
	.uleb128 0x1c
	.long	.LASF254
	.byte	0x20
	.byte	0x1d
	.value	0x17f
	.long	0xef2
	.uleb128 0xc
	.long	.LASF255
	.byte	0x1d
	.value	0x180
	.long	0x3d1
	.byte	0
	.uleb128 0xc
	.long	.LASF205
	.byte	0x1d
	.value	0x181
	.long	0x403
	.byte	0x8
	.uleb128 0xc
	.long	.LASF206
	.byte	0x1d
	.value	0x181
	.long	0x403
	.byte	0x10
	.uleb128 0xc
	.long	.LASF256
	.byte	0x1d
	.value	0x182
	.long	0x12d3
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.long	.LASF257
	.byte	0x1d
	.byte	0x1f
	.long	0xefd
	.uleb128 0x1c
	.long	.LASF258
	.byte	0x30
	.byte	0x1d
	.value	0x191
	.long	0xf59
	.uleb128 0xc
	.long	.LASF259
	.byte	0x1d
	.value	0x192
	.long	0x3d1
	.byte	0
	.uleb128 0xc
	.long	.LASF260
	.byte	0x1d
	.value	0x193
	.long	0x3d1
	.byte	0x8
	.uleb128 0xc
	.long	.LASF261
	.byte	0x1d
	.value	0x194
	.long	0x12e5
	.byte	0x10
	.uleb128 0xc
	.long	.LASF262
	.byte	0x1d
	.value	0x195
	.long	0x12e5
	.byte	0x18
	.uleb128 0xc
	.long	.LASF248
	.byte	0x1d
	.value	0x196
	.long	0x12a9
	.byte	0x20
	.uleb128 0xc
	.long	.LASF249
	.byte	0x1d
	.value	0x196
	.long	0x12a9
	.byte	0x28
	.byte	0
	.uleb128 0xa
	.long	.LASF263
	.byte	0x1d
	.byte	0x21
	.long	0xf64
	.uleb128 0x1c
	.long	.LASF264
	.byte	0x88
	.byte	0x1d
	.value	0x1bc
	.long	0x104f
	.uleb128 0xc
	.long	.LASF265
	.byte	0x1d
	.value	0x1c3
	.long	0x12eb
	.byte	0
	.uleb128 0xc
	.long	.LASF266
	.byte	0x1d
	.value	0x1c8
	.long	0x12f1
	.byte	0x8
	.uleb128 0xc
	.long	.LASF267
	.byte	0x1d
	.value	0x1c9
	.long	0x12f7
	.byte	0x10
	.uleb128 0xc
	.long	.LASF268
	.byte	0x1d
	.value	0x1cd
	.long	0x12eb
	.byte	0x18
	.uleb128 0xc
	.long	.LASF269
	.byte	0x1d
	.value	0x1ce
	.long	0x12eb
	.byte	0x20
	.uleb128 0xc
	.long	.LASF270
	.byte	0x1d
	.value	0x1d3
	.long	0x12f1
	.byte	0x28
	.uleb128 0xc
	.long	.LASF271
	.byte	0x1d
	.value	0x1d4
	.long	0x12f1
	.byte	0x30
	.uleb128 0xc
	.long	.LASF192
	.byte	0x1d
	.value	0x1d7
	.long	0x38
	.byte	0x38
	.uleb128 0xc
	.long	.LASF194
	.byte	0x1d
	.value	0x1d8
	.long	0x3a5
	.byte	0x40
	.uleb128 0xc
	.long	.LASF161
	.byte	0x1d
	.value	0x1d9
	.long	0x3a5
	.byte	0x48
	.uleb128 0xc
	.long	.LASF272
	.byte	0x1d
	.value	0x1da
	.long	0x8f2
	.byte	0x50
	.uleb128 0xc
	.long	.LASF273
	.byte	0x1d
	.value	0x1dd
	.long	0x8f2
	.byte	0x58
	.uleb128 0xc
	.long	.LASF274
	.byte	0x1d
	.value	0x1de
	.long	0x8f2
	.byte	0x60
	.uleb128 0xc
	.long	.LASF275
	.byte	0x1d
	.value	0x1df
	.long	0x8f2
	.byte	0x68
	.uleb128 0xc
	.long	.LASF276
	.byte	0x1d
	.value	0x1e0
	.long	0x8f2
	.byte	0x70
	.uleb128 0xc
	.long	.LASF277
	.byte	0x1d
	.value	0x1e1
	.long	0x8f2
	.byte	0x78
	.uleb128 0xc
	.long	.LASF278
	.byte	0x1d
	.value	0x1e2
	.long	0x8f2
	.byte	0x80
	.byte	0
	.uleb128 0xa
	.long	.LASF279
	.byte	0x1d
	.byte	0x22
	.long	0x105a
	.uleb128 0x7
	.long	.LASF280
	.byte	0x38
	.byte	0x1d
	.byte	0x8e
	.long	0x10bb
	.uleb128 0x8
	.long	.LASF192
	.byte	0x1d
	.byte	0x8f
	.long	0x38
	.byte	0
	.uleb128 0x8
	.long	.LASF194
	.byte	0x1d
	.byte	0x90
	.long	0x3a5
	.byte	0x8
	.uleb128 0x8
	.long	.LASF161
	.byte	0x1d
	.byte	0x91
	.long	0x3a5
	.byte	0x10
	.uleb128 0x8
	.long	.LASF195
	.byte	0x1d
	.byte	0x96
	.long	0x1290
	.byte	0x18
	.uleb128 0x8
	.long	.LASF272
	.byte	0x1d
	.byte	0x97
	.long	0x8f2
	.byte	0x20
	.uleb128 0x8
	.long	.LASF281
	.byte	0x1d
	.byte	0x99
	.long	0x1296
	.byte	0x28
	.uleb128 0x8
	.long	.LASF282
	.byte	0x1d
	.byte	0x9b
	.long	0x129c
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.long	.LASF283
	.byte	0x1d
	.byte	0x23
	.long	0x10c6
	.uleb128 0x1c
	.long	.LASF284
	.byte	0x20
	.byte	0x1d
	.value	0x1f0
	.long	0x1108
	.uleb128 0xc
	.long	.LASF285
	.byte	0x1d
	.value	0x1f1
	.long	0x8f2
	.byte	0
	.uleb128 0xc
	.long	.LASF286
	.byte	0x1d
	.value	0x1f2
	.long	0x38
	.byte	0x8
	.uleb128 0xc
	.long	.LASF287
	.byte	0x1d
	.value	0x1f3
	.long	0x38
	.byte	0x10
	.uleb128 0xc
	.long	.LASF288
	.byte	0x1d
	.value	0x1f4
	.long	0x3b0
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.long	.LASF289
	.byte	0x1d
	.byte	0x24
	.long	0x1113
	.uleb128 0x1c
	.long	.LASF290
	.byte	0xd8
	.byte	0x1d
	.value	0x226
	.long	0x1280
	.uleb128 0xc
	.long	.LASF291
	.byte	0x1d
	.value	0x229
	.long	0x3a5
	.byte	0
	.uleb128 0xc
	.long	.LASF292
	.byte	0x1d
	.value	0x22a
	.long	0x3a5
	.byte	0x8
	.uleb128 0xc
	.long	.LASF293
	.byte	0x1d
	.value	0x22b
	.long	0x3a5
	.byte	0x10
	.uleb128 0xc
	.long	.LASF294
	.byte	0x1d
	.value	0x22c
	.long	0x3a5
	.byte	0x18
	.uleb128 0xc
	.long	.LASF295
	.byte	0x1d
	.value	0x22d
	.long	0x3a5
	.byte	0x20
	.uleb128 0xc
	.long	.LASF296
	.byte	0x1d
	.value	0x22e
	.long	0x3a5
	.byte	0x28
	.uleb128 0xc
	.long	.LASF297
	.byte	0x1d
	.value	0x22f
	.long	0x3a5
	.byte	0x30
	.uleb128 0xc
	.long	.LASF298
	.byte	0x1d
	.value	0x230
	.long	0x3a5
	.byte	0x38
	.uleb128 0xc
	.long	.LASF299
	.byte	0x1d
	.value	0x233
	.long	0x3a5
	.byte	0x40
	.uleb128 0xc
	.long	.LASF300
	.byte	0x1d
	.value	0x234
	.long	0x3a5
	.byte	0x48
	.uleb128 0xc
	.long	.LASF301
	.byte	0x1d
	.value	0x235
	.long	0x3a5
	.byte	0x50
	.uleb128 0xc
	.long	.LASF302
	.byte	0x1d
	.value	0x236
	.long	0x3a5
	.byte	0x58
	.uleb128 0xc
	.long	.LASF303
	.byte	0x1d
	.value	0x239
	.long	0x3a5
	.byte	0x60
	.uleb128 0xc
	.long	.LASF304
	.byte	0x1d
	.value	0x23a
	.long	0x3a5
	.byte	0x68
	.uleb128 0xc
	.long	.LASF305
	.byte	0x1d
	.value	0x23b
	.long	0x3a5
	.byte	0x70
	.uleb128 0xc
	.long	.LASF306
	.byte	0x1d
	.value	0x23c
	.long	0x3a5
	.byte	0x78
	.uleb128 0xc
	.long	.LASF307
	.byte	0x1d
	.value	0x23d
	.long	0x3a5
	.byte	0x80
	.uleb128 0xc
	.long	.LASF308
	.byte	0x1d
	.value	0x23e
	.long	0x3a5
	.byte	0x88
	.uleb128 0xc
	.long	.LASF309
	.byte	0x1d
	.value	0x241
	.long	0x3a5
	.byte	0x90
	.uleb128 0xc
	.long	.LASF310
	.byte	0x1d
	.value	0x242
	.long	0x3a5
	.byte	0x98
	.uleb128 0xc
	.long	.LASF311
	.byte	0x1d
	.value	0x243
	.long	0x3a5
	.byte	0xa0
	.uleb128 0xc
	.long	.LASF312
	.byte	0x1d
	.value	0x244
	.long	0x3a5
	.byte	0xa8
	.uleb128 0xc
	.long	.LASF313
	.byte	0x1d
	.value	0x245
	.long	0x3a5
	.byte	0xb0
	.uleb128 0xc
	.long	.LASF314
	.byte	0x1d
	.value	0x246
	.long	0x3a5
	.byte	0xb8
	.uleb128 0xc
	.long	.LASF315
	.byte	0x1d
	.value	0x249
	.long	0x3a5
	.byte	0xc0
	.uleb128 0xc
	.long	.LASF316
	.byte	0x1d
	.value	0x24a
	.long	0x3fc
	.byte	0xc8
	.uleb128 0xc
	.long	.LASF317
	.byte	0x1d
	.value	0x24b
	.long	0x3a5
	.byte	0xd0
	.byte	0
	.uleb128 0xa
	.long	.LASF318
	.byte	0x1d
	.byte	0x25
	.long	0x128b
	.uleb128 0x10
	.long	.LASF319
	.uleb128 0x3
	.byte	0x8
	.long	0x3bb
	.uleb128 0x3
	.byte	0x8
	.long	0x403
	.uleb128 0x3
	.byte	0x8
	.long	0x12a2
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF320
	.uleb128 0x3
	.byte	0x8
	.long	0xdfd
	.uleb128 0x3
	.byte	0x8
	.long	0xc72
	.uleb128 0x3
	.byte	0x8
	.long	0x104f
	.uleb128 0x3
	.byte	0x8
	.long	0x1280
	.uleb128 0x3
	.byte	0x8
	.long	0x12c7
	.uleb128 0x3
	.byte	0x8
	.long	0xb51
	.uleb128 0x3
	.byte	0x8
	.long	0x8f2
	.uleb128 0x3
	.byte	0x8
	.long	0xea5
	.uleb128 0x3
	.byte	0x8
	.long	0xef2
	.uleb128 0x3
	.byte	0x8
	.long	0x3a5
	.uleb128 0x3
	.byte	0x8
	.long	0x93d
	.uleb128 0x3
	.byte	0x8
	.long	0x3d1
	.uleb128 0x3
	.byte	0x8
	.long	0x3fc
	.uleb128 0x3
	.byte	0x8
	.long	0x12f1
	.uleb128 0x1b
	.long	.LASF321
	.byte	0x1d
	.value	0x279
	.long	0x1309
	.uleb128 0x10
	.long	.LASF322
	.uleb128 0x3
	.byte	0x8
	.long	0x159
	.uleb128 0x1d
	.long	0x131f
	.uleb128 0x1e
	.long	0x159
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1314
	.uleb128 0x1f
	.long	.LASF365
	.byte	0x1
	.value	0x18a
	.long	0x55
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x168e
	.uleb128 0x20
	.long	.LASF323
	.byte	0x1
	.value	0x18a
	.long	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x20
	.long	.LASF324
	.byte	0x1
	.value	0x18a
	.long	0x3e8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x21
	.long	.LASF325
	.byte	0x1
	.value	0x18d
	.long	0x38
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x21
	.long	.LASF326
	.byte	0x1
	.value	0x18e
	.long	0x38
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x21
	.long	.LASF327
	.byte	0x1
	.value	0x18f
	.long	0x38
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x21
	.long	.LASF328
	.byte	0x1
	.value	0x190
	.long	0x38
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x21
	.long	.LASF329
	.byte	0x1
	.value	0x191
	.long	0x38
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x21
	.long	.LASF330
	.byte	0x1
	.value	0x192
	.long	0x38
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x21
	.long	.LASF331
	.byte	0x1
	.value	0x193
	.long	0x38
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x21
	.long	.LASF332
	.byte	0x1
	.value	0x194
	.long	0x38
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x21
	.long	.LASF333
	.byte	0x1
	.value	0x195
	.long	0x3a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x21
	.long	.LASF334
	.byte	0x1
	.value	0x196
	.long	0x12a2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -341
	.uleb128 0x21
	.long	.LASF335
	.byte	0x1
	.value	0x1df
	.long	0x38
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x21
	.long	.LASF336
	.byte	0x1
	.value	0x1e0
	.long	0x38
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x21
	.long	.LASF337
	.byte	0x1
	.value	0x1e1
	.long	0x38
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x21
	.long	.LASF338
	.byte	0x1
	.value	0x1e5
	.long	0x168e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x21
	.long	.LASF339
	.byte	0x1
	.value	0x1e6
	.long	0x1694
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x21
	.long	.LASF340
	.byte	0x1
	.value	0x1f0
	.long	0xb4b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x21
	.long	.LASF341
	.byte	0x1
	.value	0x1f1
	.long	0x3a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x21
	.long	.LASF342
	.byte	0x1
	.value	0x201
	.long	0x12e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x21
	.long	.LASF343
	.byte	0x1
	.value	0x227
	.long	0xb4b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x21
	.long	.LASF344
	.byte	0x1
	.value	0x228
	.long	0xb4b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x21
	.long	.LASF345
	.byte	0x1
	.value	0x255
	.long	0xb4b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x21
	.long	.LASF346
	.byte	0x1
	.value	0x258
	.long	0x169a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x21
	.long	.LASF347
	.byte	0x1
	.value	0x25a
	.long	0x3a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x21
	.long	.LASF348
	.byte	0x1
	.value	0x25d
	.long	0x16a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x22
	.string	"hdr"
	.byte	0x1
	.value	0x25e
	.long	0x16a6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.long	.LASF349
	.byte	0x1
	.value	0x25f
	.long	0x16a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x21
	.long	.LASF350
	.byte	0x1
	.value	0x260
	.long	0x16a6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x23
	.long	.Ldebug_ranges0+0
	.long	0x1557
	.uleb128 0x21
	.long	.LASF351
	.byte	0x1
	.value	0x1a5
	.long	0x16ac
	.uleb128 0x9
	.byte	0x3
	.quad	long_options.8134
	.uleb128 0x21
	.long	.LASF352
	.byte	0x1
	.value	0x1b0
	.long	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x22
	.string	"key"
	.byte	0x1
	.value	0x1b1
	.long	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -340
	.byte	0
	.uleb128 0x24
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x158d
	.uleb128 0x21
	.long	.LASF353
	.byte	0x1
	.value	0x20f
	.long	0x3a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x21
	.long	.LASF354
	.byte	0x1
	.value	0x210
	.long	0x3a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.byte	0
	.uleb128 0x24
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0x15c3
	.uleb128 0x21
	.long	.LASF355
	.byte	0x1
	.value	0x219
	.long	0x3a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x21
	.long	.LASF356
	.byte	0x1
	.value	0x21b
	.long	0x3a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.uleb128 0x24
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0x15e9
	.uleb128 0x21
	.long	.LASF212
	.byte	0x1
	.value	0x23a
	.long	0x1296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x24
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.long	0x166b
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x268
	.long	0x3a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x25
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x22
	.string	"hmm"
	.byte	0x1
	.value	0x269
	.long	0x16bc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.long	.LASF357
	.byte	0x1
	.value	0x26f
	.long	0xb4b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"gF"
	.byte	0x1
	.value	0x272
	.long	0x16c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.long	.LASF358
	.byte	0x1
	.value	0x276
	.long	0x16c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF359
	.byte	0x1
	.value	0x277
	.long	0x16c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x21
	.long	.LASF360
	.byte	0x1
	.value	0x2ac
	.long	0x16ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x10bb
	.uleb128 0x3
	.byte	0x8
	.long	0xc67
	.uleb128 0x3
	.byte	0x8
	.long	0x12fd
	.uleb128 0x3
	.byte	0x8
	.long	0x919
	.uleb128 0x3
	.byte	0x8
	.long	0x8f8
	.uleb128 0xe
	.long	0x77
	.long	0x16bc
	.uleb128 0xf
	.long	0xcb
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xba5
	.uleb128 0x3
	.byte	0x8
	.long	0xf59
	.uleb128 0x3
	.byte	0x8
	.long	0x94d
	.uleb128 0x3
	.byte	0x8
	.long	0x1108
	.uleb128 0x26
	.long	.LASF413
	.byte	0x1
	.value	0x166
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.long	.LASF383
	.byte	0x1
	.value	0x12d
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x179a
	.uleb128 0x28
	.string	"hmm"
	.byte	0x1
	.value	0x12d
	.long	0x16bc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.long	.LASF358
	.byte	0x1
	.value	0x12d
	.long	0x16c8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.long	.LASF359
	.byte	0x1
	.value	0x12d
	.long	0x16c8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.string	"gF"
	.byte	0x1
	.value	0x12d
	.long	0x16c2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x21
	.long	.LASF361
	.byte	0x1
	.value	0x140
	.long	0x1296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.long	.LASF362
	.byte	0x1
	.value	0x145
	.long	0x1296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF363
	.byte	0x1
	.value	0x14b
	.long	0x1296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.long	.LASF364
	.byte	0x1
	.value	0x150
	.long	0x1296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF366
	.byte	0x1
	.value	0x107
	.long	0xb4b
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x1857
	.uleb128 0x20
	.long	.LASF340
	.byte	0x1
	.value	0x107
	.long	0xb4b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.long	.LASF342
	.byte	0x1
	.value	0x107
	.long	0x12e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.long	.LASF339
	.byte	0x1
	.value	0x107
	.long	0x1694
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x21
	.long	.LASF345
	.byte	0x1
	.value	0x10e
	.long	0xb4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"l"
	.byte	0x1
	.value	0x114
	.long	0xb4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.long	.LASF367
	.byte	0x1
	.value	0x115
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"idx"
	.byte	0x1
	.value	0x120
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x21
	.long	.LASF368
	.byte	0x1
	.value	0x122
	.long	0x1857
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.string	"hmm"
	.byte	0x1
	.value	0x123
	.long	0x16bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x9b5
	.uleb128 0x29
	.long	.LASF369
	.byte	0x1
	.byte	0xee
	.long	0xb4b
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x1923
	.uleb128 0x2a
	.long	.LASF340
	.byte	0x1
	.byte	0xee
	.long	0xb4b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF354
	.byte	0x1
	.byte	0xee
	.long	0x12df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF342
	.byte	0x1
	.byte	0xef
	.long	0x12e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF339
	.byte	0x1
	.byte	0xef
	.long	0x1694
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LASF370
	.byte	0x1
	.byte	0xf5
	.long	0xb4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0xf7
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x2b
	.long	.LASF371
	.byte	0x1
	.byte	0xf8
	.long	0x12c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF372
	.byte	0x1
	.byte	0xf9
	.long	0x12b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF373
	.byte	0x1
	.byte	0xfa
	.long	0x403
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF374
	.byte	0x1
	.byte	0xdb
	.long	0x403
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x19ab
	.uleb128 0x2a
	.long	.LASF375
	.byte	0x1
	.byte	0xdb
	.long	0x12c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF372
	.byte	0x1
	.byte	0xdb
	.long	0x12b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF376
	.byte	0x1
	.byte	0xe1
	.long	0x403
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0xe3
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x2c
	.string	"j"
	.byte	0x1
	.byte	0xe5
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF377
	.byte	0x1
	.byte	0xbb
	.long	0x403
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a88
	.uleb128 0x2d
	.string	"pos"
	.byte	0x1
	.byte	0xbb
	.long	0x3a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF375
	.byte	0x1
	.byte	0xbb
	.long	0x12c7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF372
	.byte	0x1
	.byte	0xbb
	.long	0x12b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.long	.LASF378
	.byte	0x1
	.byte	0xc1
	.long	0x3b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -59
	.uleb128 0x2b
	.long	.LASF379
	.byte	0x1
	.byte	0xc1
	.long	0x3b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0x2b
	.long	.LASF380
	.byte	0x1
	.byte	0xc2
	.long	0x403
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF381
	.byte	0x1
	.byte	0xc3
	.long	0x403
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF382
	.byte	0x1
	.byte	0xd2
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"p"
	.byte	0x1
	.byte	0xd3
	.long	0x403
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0xc4
	.long	0x3b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.uleb128 0x25
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x2c
	.string	"p"
	.byte	0x1
	.byte	0xc5
	.long	0x403
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF384
	.byte	0x1
	.byte	0xae
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b0f
	.uleb128 0x2d
	.string	"fH"
	.byte	0x1
	.byte	0xae
	.long	0x1b0f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF281
	.byte	0x1
	.byte	0xae
	.long	0x1296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF385
	.byte	0x1
	.byte	0xb2
	.long	0x403
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x1af0
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0xb3
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0xb6
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2db
	.uleb128 0x29
	.long	.LASF386
	.byte	0x1
	.byte	0x9c
	.long	0x1296
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bab
	.uleb128 0x2a
	.long	.LASF199
	.byte	0x1
	.byte	0x9c
	.long	0x16c8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LASF281
	.byte	0x1
	.byte	0xa1
	.long	0x1296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"it"
	.byte	0x1
	.byte	0xa2
	.long	0x1bab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF371
	.byte	0x1
	.byte	0xa3
	.long	0x12c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0xa5
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x2c
	.string	"j"
	.byte	0x1
	.byte	0xa6
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x95d
	.uleb128 0x29
	.long	.LASF387
	.byte	0x1
	.byte	0x90
	.long	0x1296
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c1b
	.uleb128 0x2a
	.long	.LASF388
	.byte	0x1
	.byte	0x90
	.long	0x12eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF161
	.byte	0x1
	.byte	0x90
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF281
	.byte	0x1
	.byte	0x95
	.long	0x1296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0x96
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF389
	.byte	0x1
	.byte	0x7e
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cbe
	.uleb128 0x2d
	.string	"fH"
	.byte	0x1
	.byte	0x7e
	.long	0x1b0f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF340
	.byte	0x1
	.byte	0x7e
	.long	0xb4b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF390
	.byte	0x1
	.byte	0x7e
	.long	0x3a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.long	.LASF376
	.byte	0x1
	.byte	0x82
	.long	0x403
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LASF391
	.byte	0x1
	.byte	0x83
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0x85
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x2c
	.string	"j"
	.byte	0x1
	.byte	0x86
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF392
	.byte	0x1
	.byte	0x68
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x1db1
	.uleb128 0x2a
	.long	.LASF393
	.byte	0x1
	.byte	0x68
	.long	0x12c7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF394
	.byte	0x1
	.byte	0x68
	.long	0x12c7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF391
	.byte	0x1
	.byte	0x69
	.long	0x12df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF376
	.byte	0x1
	.byte	0x69
	.long	0x1296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF407
	.long	0x1dc1
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7988
	.uleb128 0x25
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0x6d
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x2c
	.string	"j"
	.byte	0x1
	.byte	0x6f
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x2c
	.string	"k"
	.byte	0x1
	.byte	0x74
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x2c
	.string	"e1"
	.byte	0x1
	.byte	0x75
	.long	0x403
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.string	"e2"
	.byte	0x1
	.byte	0x76
	.long	0x403
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x45
	.long	0x1dc1
	.uleb128 0xf
	.long	0xcb
	.byte	0x24
	.byte	0
	.uleb128 0x5
	.long	0x1db1
	.uleb128 0x30
	.long	.LASF395
	.byte	0x1
	.byte	0x58
	.long	0x403
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e4d
	.uleb128 0x2a
	.long	.LASF396
	.byte	0x1
	.byte	0x58
	.long	0x12eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF397
	.byte	0x1
	.byte	0x58
	.long	0x12eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF161
	.byte	0x1
	.byte	0x58
	.long	0x3a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.long	.LASF398
	.byte	0x1
	.byte	0x5c
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF399
	.byte	0x1
	.byte	0x5d
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0x5e
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF400
	.byte	0x1
	.byte	0x4b
	.long	0x403
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ec5
	.uleb128 0x2a
	.long	.LASF396
	.byte	0x1
	.byte	0x4b
	.long	0x12eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF397
	.byte	0x1
	.byte	0x4b
	.long	0x12eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF161
	.byte	0x1
	.byte	0x4b
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF398
	.byte	0x1
	.byte	0x4f
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0x50
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF401
	.byte	0x1
	.byte	0x3a
	.long	0x403
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f58
	.uleb128 0x2a
	.long	.LASF402
	.byte	0x1
	.byte	0x3a
	.long	0x12eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF403
	.byte	0x1
	.byte	0x3a
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF161
	.byte	0x1
	.byte	0x3a
	.long	0x3a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF199
	.byte	0x1
	.byte	0x3a
	.long	0x16c8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.LASF404
	.byte	0x1
	.byte	0x3f
	.long	0x403
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.long	.LASF405
	.byte	0x1
	.byte	0x40
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.string	"it"
	.byte	0x1
	.byte	0x41
	.long	0x1bab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF371
	.byte	0x1
	.byte	0x42
	.long	0x12c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF406
	.byte	0x1
	.byte	0x24
	.long	0x403
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x2031
	.uleb128 0x2a
	.long	.LASF402
	.byte	0x1
	.byte	0x24
	.long	0x12eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF403
	.byte	0x1
	.byte	0x24
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF161
	.byte	0x1
	.byte	0x25
	.long	0x3a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF375
	.byte	0x1
	.byte	0x25
	.long	0x12c7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.long	.LASF376
	.byte	0x1
	.byte	0x2a
	.long	0x403
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF407
	.long	0x2041
	.uleb128 0x9
	.byte	0x3
	.quad	__PRETTY_FUNCTION__.7939
	.uleb128 0x25
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0x2c
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2c
	.string	"j"
	.byte	0x1
	.byte	0x2e
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x2b
	.long	.LASF408
	.byte	0x1
	.byte	0x30
	.long	0x3d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x45
	.long	0x2041
	.uleb128 0xf
	.long	0xcb
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.long	0x2031
	.uleb128 0x31
	.long	.LASF414
	.byte	0x1
	.byte	0x17
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.string	"fH"
	.byte	0x1
	.byte	0x17
	.long	0x1b0f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF340
	.byte	0x1
	.byte	0x17
	.long	0xb4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF405
	.byte	0x1
	.byte	0x1b
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.byte	0x1c
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2b
	.long	.LASF375
	.byte	0x1
	.byte	0x1d
	.long	0x12c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB28-.Ltext0
	.quad	.LBE28-.Ltext0
	.quad	.LBB29-.Ltext0
	.quad	.LBE29-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF362:
	.string	"hap2BaseCounts"
.LASF408:
	.string	"hapBase"
.LASF209:
	.string	"stRPHmmParameters"
.LASF13:
	.string	"size_t"
.LASF334:
	.string	"onlySNP"
.LASF403:
	.string	"start"
.LASF243:
	.string	"_stRPColumn"
.LASF361:
	.string	"hap1BaseCounts"
.LASF344:
	.string	"discardedProfileSeqs"
.LASF176:
	.string	"__jmp_buf_tag"
.LASF232:
	.string	"filterLikelyHomozygousSites"
.LASF322:
	.string	"hashtable"
.LASF306:
	.string	"truePositiveHet"
.LASF62:
	.string	"_IO_2_1_stderr_"
.LASF66:
	.string	"int32_t"
.LASF283:
	.string	"stBaseMapper"
.LASF204:
	.string	"parameters"
.LASF369:
	.string	"prefilterReads"
.LASF139:
	.string	"dict"
.LASF37:
	.string	"_IO_save_end"
.LASF357:
	.string	"path"
.LASF270:
	.string	"haplotypeProbs1"
.LASF271:
	.string	"haplotypeProbs2"
.LASF321:
	.string	"stReadHaplotypePartitionTable"
.LASF376:
	.string	"totalExpectedMatches"
.LASF115:
	.string	"hFILE"
.LASF153:
	.string	"_stHash"
.LASF114:
	.string	"cram_fd"
.LASF148:
	.string	"bcf_type_shift"
.LASF30:
	.string	"_IO_write_base"
.LASF207:
	.string	"referencePriorProbs"
.LASF250:
	.string	"totalLogProb"
.LASF294:
	.string	"homozygousVariantsInRef_Insertions"
.LASF144:
	.string	"transl"
.LASF267:
	.string	"genotypeLikelihoods"
.LASF367:
	.string	"initialHmmListSize"
.LASF46:
	.string	"_lock"
.LASF92:
	.string	"binary_format"
.LASF239:
	.string	"writeGVCF"
.LASF103:
	.string	"compression_maximum"
.LASF384:
	.string	"printBaseComposition"
.LASF129:
	.string	"type"
.LASF35:
	.string	"_IO_save_base"
.LASF374:
	.string	"getExpectedNumberOfConsensusMatches"
.LASF275:
	.string	"alleleCountsHap1"
.LASF272:
	.string	"referenceSequence"
.LASF395:
	.string	"getIdentityBetweenHaplotypesExcludingIndels"
.LASF39:
	.string	"_chain"
.LASF43:
	.string	"_cur_column"
.LASF14:
	.string	"__uint8_t"
.LASF248:
	.string	"nColumn"
.LASF383:
	.string	"logHmm"
.LASF133:
	.string	"vals"
.LASF304:
	.string	"falsePositiveIndels"
.LASF72:
	.string	"__environ"
.LASF198:
	.string	"refLength"
.LASF20:
	.string	"long int"
.LASF406:
	.string	"getExpectedNumberOfMatches"
.LASF354:
	.string	"misses"
.LASF6:
	.string	"has_arg"
.LASF278:
	.string	"allele2CountsHap2"
.LASF56:
	.string	"_IO_marker"
.LASF365:
	.string	"main"
.LASF360:
	.string	"results"
.LASF190:
	.string	"stProfileSeq"
.LASF368:
	.string	"itor"
.LASF100:
	.string	"gzip"
.LASF247:
	.string	"head"
.LASF112:
	.string	"specific"
.LASF151:
	.string	"bcf_float_missing"
.LASF212:
	.string	"readErrorSubModel"
.LASF146:
	.string	"keep_samples"
.LASF167:
	.string	"stExcept"
.LASF401:
	.string	"getExpectedIdentity"
.LASF345:
	.string	"hmms"
.LASF213:
	.string	"hetSubModelSlow"
.LASF331:
	.string	"singleNucleotideProbabilityDirectory"
.LASF211:
	.string	"hetSubModel"
.LASF414:
	.string	"printSequenceStats"
.LASF12:
	.string	"signed char"
.LASF68:
	.string	"uint8_t"
.LASF197:
	.string	"_stRPHmm"
.LASF25:
	.string	"_IO_FILE"
.LASF313:
	.string	"error_homozygous_Insertions"
.LASF128:
	.string	"seq_nt16_int"
.LASF149:
	.string	"vcfFile"
.LASF252:
	.string	"totalActivePositions"
.LASF124:
	.string	"fn_aux"
.LASF407:
	.string	"__PRETTY_FUNCTION__"
.LASF110:
	.string	"compression"
.LASF260:
	.string	"maskTo"
.LASF328:
	.string	"referenceFastaFile"
.LASF119:
	.string	"is_cram"
.LASF9:
	.string	"unsigned char"
.LASF229:
	.string	"verboseFalsePositives"
.LASF393:
	.string	"pSeq1"
.LASF394:
	.string	"pSeq2"
.LASF249:
	.string	"pColumn"
.LASF387:
	.string	"getHaplotypeBaseComposition"
.LASF327:
	.string	"paramsFile"
.LASF342:
	.string	"referenceNamesToReferencePriors"
.LASF134:
	.string	"bcf_hrec_t"
.LASF385:
	.string	"totalCount"
.LASF255:
	.string	"partition"
.LASF370:
	.string	"filteredProfileSequences"
.LASF217:
	.string	"maxPartitionsInAColumn"
.LASF320:
	.string	"_Bool"
.LASF80:
	.string	"_IO_FILE_plus"
.LASF187:
	.string	"ST_KV_DATABASE_RETRY_TRANSACTION_EXCEPTION_ID"
.LASF99:
	.string	"no_compression"
.LASF386:
	.string	"getExpectedProfileSequenceBaseComposition"
.LASF163:
	.string	"destructElement"
.LASF2:
	.string	"char"
.LASF242:
	.string	"stRPColumn"
.LASF95:
	.string	"crai"
.LASF94:
	.string	"cram"
.LASF412:
	.string	"_IO_lock_t"
.LASF16:
	.string	"__uint16_t"
.LASF87:
	.string	"region_list"
.LASF81:
	.string	"__kstring_t"
.LASF309:
	.string	"error_missedHet"
.LASF188:
	.string	"ST_COMPRESSION_EXCEPTION_ID"
.LASF316:
	.string	"switchErrorDistance"
.LASF154:
	.string	"stSet"
.LASF27:
	.string	"_IO_read_ptr"
.LASF159:
	.string	"_stList"
.LASF303:
	.string	"truePositiveIndels"
.LASF192:
	.string	"referenceName"
.LASF208:
	.string	"referencePositionFilter"
.LASF305:
	.string	"truePositiveHomozygous"
.LASF59:
	.string	"_pos"
.LASF63:
	.string	"stdin"
.LASF256:
	.string	"nCell"
.LASF38:
	.string	"_markers"
.LASF372:
	.string	"rProbs"
.LASF392:
	.string	"getExpectedMatchesBetweenProfileSeqs"
.LASF263:
	.string	"stGenomeFragment"
.LASF140:
	.string	"samples"
.LASF150:
	.string	"bcf_float_vector_end"
.LASF337:
	.string	"vcfOutFile_all"
.LASF390:
	.string	"maxSeqs"
.LASF355:
	.string	"totalPositions"
.LASF318:
	.string	"stReferencePositionFilter"
.LASF157:
	.string	"_stSetIterator"
.LASF101:
	.string	"bgzf"
.LASF241:
	.string	"writeUnifiedSam"
.LASF47:
	.string	"_offset"
.LASF184:
	.string	"_cexceptTOS"
.LASF351:
	.string	"long_options"
.LASF189:
	.string	"ST_FILE_EXCEPTION"
.LASF203:
	.string	"lastColumn"
.LASF349:
	.string	"vcfOutFP_all"
.LASF166:
	.string	"index"
.LASF162:
	.string	"maxLength"
.LASF141:
	.string	"nhrec"
.LASF1:
	.string	"optind"
.LASF84:
	.string	"sequence_data"
.LASF373:
	.string	"identity"
.LASF93:
	.string	"text_format"
.LASF301:
	.string	"trueNegatives"
.LASF21:
	.string	"__uint64_t"
.LASF343:
	.string	"filteredProfileSeqs"
.LASF254:
	.string	"_stRPCell"
.LASF60:
	.string	"_IO_2_1_stdin_"
.LASF116:
	.string	"is_bin"
.LASF8:
	.string	"long unsigned int"
.LASF108:
	.string	"format"
.LASF206:
	.string	"backwardLogProb"
.LASF41:
	.string	"_flags2"
.LASF127:
	.string	"seq_nt16_str"
.LASF231:
	.string	"includeInvertedPartitions"
.LASF29:
	.string	"_IO_read_base"
.LASF123:
	.string	"line"
.LASF24:
	.string	"option"
.LASF222:
	.string	"offDiagonalReadErrorPseudoCount"
.LASF215:
	.string	"maxNotSumTransitions"
.LASF137:
	.string	"bcf_idinfo_t"
.LASF54:
	.string	"_unused2"
.LASF398:
	.string	"totalMatches"
.LASF98:
	.string	"htsCompression"
.LASF193:
	.string	"readId"
.LASF224:
	.string	"estimateReadErrorProbsEmpirically"
.LASF382:
	.string	"pPos"
.LASF238:
	.string	"roundsOfIterativeRefinement"
.LASF323:
	.string	"argc"
.LASF237:
	.string	"mapqFilter"
.LASF42:
	.string	"_old_offset"
.LASF296:
	.string	"hetsInRef"
.LASF324:
	.string	"argv"
.LASF235:
	.string	"gapCharactersForDeletions"
.LASF126:
	.string	"seq_nt16_table"
.LASF280:
	.string	"_stReferencePriorProbs"
.LASF266:
	.string	"genotypeProbs"
.LASF122:
	.string	"lineno"
.LASF97:
	.string	"format_maximum"
.LASF18:
	.string	"__uint32_t"
.LASF132:
	.string	"keys"
.LASF338:
	.string	"baseMapper"
.LASF73:
	.string	"long long int"
.LASF106:
	.string	"htsFormat"
.LASF325:
	.string	"logLevelString"
.LASF78:
	.string	"hts_verbose"
.LASF350:
	.string	"hdr2"
.LASF76:
	.string	"double"
.LASF341:
	.string	"readCount"
.LASF332:
	.string	"outputBase"
.LASF32:
	.string	"_IO_write_end"
.LASF287:
	.string	"wildcard"
.LASF244:
	.string	"depth"
.LASF319:
	.string	"_stReferencePositionFilter"
.LASF138:
	.string	"bcf_idpair_t"
.LASF158:
	.string	"stList"
.LASF111:
	.string	"compression_level"
.LASF411:
	.string	"/soe/smittal2/marginPhase/build"
.LASF75:
	.string	"float"
.LASF366:
	.string	"createHMMs"
.LASF391:
	.string	"totalAlignedPositions"
.LASF297:
	.string	"hetsInRef_Insertions"
.LASF333:
	.string	"verboseBitstring"
.LASF85:
	.string	"variant_data"
.LASF33:
	.string	"_IO_buf_base"
.LASF218:
	.string	"minPosteriorProbabilityForPartition"
.LASF402:
	.string	"haplotypeString"
.LASF258:
	.string	"_stRPMergeColumn"
.LASF11:
	.string	"unsigned int"
.LASF200:
	.string	"columnNumber"
.LASF236:
	.string	"filterAReadWithAnyOneOfTheseSamFlagsSet"
.LASF284:
	.string	"_stBaseMapper"
.LASF302:
	.string	"falseNegatives"
.LASF48:
	.string	"__pad1"
.LASF49:
	.string	"__pad2"
.LASF50:
	.string	"__pad3"
.LASF51:
	.string	"__pad4"
.LASF52:
	.string	"__pad5"
.LASF214:
	.string	"readErrorSubModelSlow"
.LASF58:
	.string	"_sbuf"
.LASF7:
	.string	"flag"
.LASF125:
	.string	"htsFile"
.LASF105:
	.string	"minor"
.LASF356:
	.string	"filteredPositions"
.LASF389:
	.string	"printAvgIdentityBetweenProfileSequences"
.LASF246:
	.string	"seqs"
.LASF400:
	.string	"getIdentityBetweenHaplotypes"
.LASF26:
	.string	"_flags"
.LASF88:
	.string	"category_maximum"
.LASF160:
	.string	"list"
.LASF89:
	.string	"htsFormatCategory"
.LASF179:
	.string	"__saved_mask"
.LASF53:
	.string	"_mode"
.LASF177:
	.string	"__jmpbuf"
.LASF262:
	.string	"mergeCellsTo"
.LASF194:
	.string	"refStart"
.LASF173:
	.string	"__jmp_buf"
.LASF96:
	.string	"htsget"
.LASF413:
	.string	"usage"
.LASF91:
	.string	"unknown_format"
.LASF380:
	.string	"max1"
.LASF381:
	.string	"max2"
.LASF375:
	.string	"profileSeq"
.LASF293:
	.string	"homozygousVariantsInRef"
.LASF347:
	.string	"totalGFlength"
.LASF286:
	.string	"numToChar"
.LASF364:
	.string	"reads2BaseCounts"
.LASF265:
	.string	"genotypeString"
.LASF55:
	.string	"FILE"
.LASF223:
	.string	"onDiagonalReadErrorPseudoCount"
.LASF86:
	.string	"index_file"
.LASF135:
	.string	"info"
.LASF147:
	.string	"bcf_hdr_t"
.LASF274:
	.string	"hap2Depth"
.LASF178:
	.string	"__mask_was_saved"
.LASF264:
	.string	"_stGenomeFragment"
.LASF156:
	.string	"stSetIterator"
.LASF314:
	.string	"error_homozygous_Deletions"
.LASF4:
	.string	"optopt"
.LASF196:
	.string	"stRPHmm"
.LASF288:
	.string	"size"
.LASF74:
	.string	"long long unsigned int"
.LASF102:
	.string	"custom"
.LASF339:
	.string	"params"
.LASF336:
	.string	"paramsOutFile"
.LASF79:
	.string	"BGZF"
.LASF277:
	.string	"allele2CountsHap1"
.LASF77:
	.string	"signgam"
.LASF221:
	.string	"trainingIterations"
.LASF161:
	.string	"length"
.LASF69:
	.string	"uint16_t"
.LASF22:
	.string	"__off_t"
.LASF312:
	.string	"error_homozygousInRef"
.LASF180:
	.string	"jmp_buf"
.LASF130:
	.string	"value"
.LASF183:
	.string	"except"
.LASF330:
	.string	"referenceVCF"
.LASF234:
	.string	"minSecondMostFrequentBaseLogProbFilter"
.LASF83:
	.string	"unknown_category"
.LASF117:
	.string	"is_write"
.LASF300:
	.string	"falsePositives"
.LASF298:
	.string	"hetsInRef_Deletions"
.LASF299:
	.string	"truePositives"
.LASF3:
	.string	"opterr"
.LASF353:
	.string	"initialSize"
.LASF371:
	.string	"pSeq"
.LASF307:
	.string	"truePositiveHomozygousIndels"
.LASF113:
	.string	"hfile"
.LASF172:
	.string	"debug"
.LASF273:
	.string	"hap1Depth"
.LASF257:
	.string	"stRPMergeColumn"
.LASF290:
	.string	"_stGenotypeResults"
.LASF104:
	.string	"major"
.LASF276:
	.string	"alleleCountsHap2"
.LASF155:
	.string	"_stSet"
.LASF109:
	.string	"version"
.LASF171:
	.string	"critical"
.LASF261:
	.string	"mergeCellsFrom"
.LASF205:
	.string	"forwardLogProb"
.LASF388:
	.string	"hapString"
.LASF36:
	.string	"_IO_backup_base"
.LASF269:
	.string	"haplotypeString2"
.LASF45:
	.string	"_shortbuf"
.LASF310:
	.string	"error_missedHet_Insertions"
.LASF61:
	.string	"_IO_2_1_stdout_"
.LASF185:
	.string	"RANDOM_EXCEPTION_ID"
.LASF57:
	.string	"_next"
.LASF23:
	.string	"__off64_t"
.LASF329:
	.string	"marginPhaseTag"
.LASF201:
	.string	"maxDepth"
.LASF90:
	.string	"htsExactFormat"
.LASF120:
	.string	"is_bgzf"
.LASF326:
	.string	"bamInFile"
.LASF121:
	.string	"dummy"
.LASF399:
	.string	"numGaps"
.LASF268:
	.string	"haplotypeString1"
.LASF181:
	.string	"_stExceptContext"
.LASF228:
	.string	"verboseTruePositives"
.LASF352:
	.string	"option_index"
.LASF34:
	.string	"_IO_buf_end"
.LASF225:
	.string	"filterBadReads"
.LASF5:
	.string	"name"
.LASF118:
	.string	"is_be"
.LASF227:
	.string	"useReferencePrior"
.LASF358:
	.string	"reads1"
.LASF359:
	.string	"reads2"
.LASF281:
	.string	"baseCounts"
.LASF245:
	.string	"seqHeaders"
.LASF65:
	.string	"stderr"
.LASF15:
	.string	"short int"
.LASF226:
	.string	"filterMatchThreshold"
.LASF292:
	.string	"positives"
.LASF253:
	.string	"stRPCell"
.LASF71:
	.string	"uint64_t"
.LASF335:
	.string	"vcfOutFile"
.LASF82:
	.string	"kstring_t"
.LASF340:
	.string	"profileSequences"
.LASF168:
	.string	"SET_EXCEPTION_ID"
.LASF44:
	.string	"_vtable_offset"
.LASF317:
	.string	"uncertainPhasing"
.LASF279:
	.string	"stReferencePriorProbs"
.LASF315:
	.string	"switchErrors"
.LASF195:
	.string	"profileProbs"
.LASF174:
	.string	"__val"
.LASF210:
	.string	"_stRPHmmParameters"
.LASF311:
	.string	"error_missedHet_Deletions"
.LASF19:
	.string	"__int64_t"
.LASF291:
	.string	"negatives"
.LASF170:
	.string	"stLogLevel"
.LASF233:
	.string	"minSecondMostFrequentBaseFilter"
.LASF191:
	.string	"_stProfileSeq"
.LASF348:
	.string	"vcfOutFP"
.LASF28:
	.string	"_IO_read_end"
.LASF404:
	.string	"totalExpectedNumberOfMatches"
.LASF289:
	.string	"stGenotypeResults"
.LASF152:
	.string	"stHash"
.LASF378:
	.string	"base1"
.LASF379:
	.string	"base2"
.LASF396:
	.string	"hap1String"
.LASF70:
	.string	"uint32_t"
.LASF285:
	.string	"charToNum"
.LASF259:
	.string	"maskFrom"
.LASF40:
	.string	"_fileno"
.LASF219:
	.string	"maxCoverageDepth"
.LASF186:
	.string	"ST_KV_DATABASE_EXCEPTION_ID"
.LASF409:
	.string	"GNU C99 7.4.0 -mpopcnt -mtune=generic -march=x86-64 -g -std=gnu99 -fstack-protector-strong"
.LASF216:
	.string	"minPartitionsInAColumn"
.LASF199:
	.string	"profileSeqs"
.LASF164:
	.string	"stListIterator"
.LASF0:
	.string	"optarg"
.LASF143:
	.string	"ntransl"
.LASF165:
	.string	"_stListIterator"
.LASF377:
	.string	"matchesTopTwoBases"
.LASF410:
	.string	"/soe/smittal2/marginPhase/marginPhase.c"
.LASF10:
	.string	"short unsigned int"
.LASF64:
	.string	"stdout"
.LASF136:
	.string	"hrec"
.LASF295:
	.string	"homozygousVariantsInRef_Deletions"
.LASF169:
	.string	"SORTED_SET_EXCEPTION_ID"
.LASF107:
	.string	"category"
.LASF363:
	.string	"reads1BaseCounts"
.LASF31:
	.string	"_IO_write_ptr"
.LASF202:
	.string	"firstColumn"
.LASF230:
	.string	"verboseFalseNegatives"
.LASF308:
	.string	"truePositiveHetIndels"
.LASF397:
	.string	"hap2String"
.LASF240:
	.string	"writeSplitSams"
.LASF17:
	.string	"__int32_t"
.LASF67:
	.string	"int64_t"
.LASF142:
	.string	"dirty"
.LASF131:
	.string	"nkeys"
.LASF145:
	.string	"nsamples_ori"
.LASF405:
	.string	"totalLength"
.LASF346:
	.string	"readHaplotypePartitions"
.LASF251:
	.string	"activePositions"
.LASF175:
	.string	"__sigset_t"
.LASF182:
	.string	"prev"
.LASF282:
	.string	"referencePositionsIncluded"
.LASF220:
	.string	"minReadCoverageToSupportPhasingBetweenHeterozygousSites"
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
