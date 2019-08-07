	.file	"index.c"
	.text
	.section	.rodata
	.align 8
	.type	__ac_HASH_UPPER, @object
	.size	__ac_HASH_UPPER, 8
__ac_HASH_UPPER:
	.long	171798692
	.long	1072210903
	.text
	.type	__ac_X31_hash_string, @function
__ac_X31_hash_string:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L2
	addq	$1, -24(%rbp)
	jmp	.L3
.L4:
	movl	-4(%rbp), %eax
	sall	$5, %eax
	subl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	addq	$1, -24(%rbp)
.L3:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L4
.L2:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	__ac_X31_hash_string, .-__ac_X31_hash_string
	.type	kh_init_idx, @function
kh_init_idx:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$40, %edx
	movl	$1, %esi
	movl	$0, %edi
	call	kcalloc@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	kh_init_idx, .-kh_init_idx
	.type	kh_destroy_idx, @function
kh_destroy_idx:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L10
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	kfree@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	kfree@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	kfree@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	kfree@PLT
.L10:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	kh_destroy_idx, .-kh_destroy_idx
	.type	kh_get_idx, @function
kh_get_idx:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L12
	movl	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	movq	-48(%rbp), %rax
	shrq	%rax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	andl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L13
.L16:
	addl	$1, -16(%rbp)
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jne	.L13
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L14
.L13:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-20(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L15
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-20(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L16
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	%rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	shrq	%rax
	cmpq	%rax, %rdx
	jne	.L16
.L15:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-20(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L17
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L14
.L17:
	movl	-20(%rbp), %eax
	jmp	.L14
.L12:
	movl	$0, %eax
.L14:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	kh_get_idx, .-kh_get_idx
	.type	kh_resize_idx, @function
kh_resize_idx:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movq	$0, -56(%rbp)
	movl	$1, -76(%rbp)
	subl	$1, -92(%rbp)
	movl	-92(%rbp), %eax
	shrl	%eax
	orl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	shrl	$2, %eax
	orl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	shrl	$4, %eax
	orl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	shrl	$8, %eax
	orl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	shrl	$16, %eax
	orl	%eax, -92(%rbp)
	addl	$1, -92(%rbp)
	cmpl	$3, -92(%rbp)
	ja	.L20
	movl	$4, -92(%rbp)
.L20:
	movq	-88(%rbp), %rax
	movl	4(%rax), %ecx
	movl	-92(%rbp), %eax
	testq	%rax, %rax
	js	.L21
	cvtsi2sdq	%rax, %xmm0
	jmp	.L22
.L21:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L22:
	movsd	.LC0(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC1(%rip), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	cmpl	%eax, %ecx
	jb	.L23
	movl	$0, -76(%rbp)
	jmp	.L24
.L23:
	cmpl	$15, -92(%rbp)
	jbe	.L25
	movl	-92(%rbp), %eax
	shrl	$4, %eax
	movl	%eax, %eax
	salq	$2, %rax
	jmp	.L26
.L25:
	movl	$4, %eax
.L26:
	movq	%rax, %rsi
	movl	$0, %edi
	call	kmalloc@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L27
	movl	$-1, %eax
	jmp	.L28
.L27:
	cmpl	$15, -92(%rbp)
	jbe	.L29
	movl	-92(%rbp), %eax
	shrl	$4, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	jmp	.L30
.L29:
	movl	$4, %edx
.L30:
	movq	-56(%rbp), %rax
	movl	$170, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -92(%rbp)
	jbe	.L24
	movl	-92(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	krealloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L31
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	kfree@PLT
	movl	$-1, %eax
	jmp	.L28
.L31:
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movl	-92(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	krealloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L32
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	kfree@PLT
	movl	$-1, %eax
	jmp	.L28
.L32:
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 32(%rax)
.L24:
	cmpl	$0, -76(%rbp)
	je	.L33
	movl	$0, -76(%rbp)
	jmp	.L34
.L40:
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movl	-76(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-76(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.L35
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movl	-76(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	-92(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movl	-76(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movl	-76(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-76(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	$1, %esi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	%rsi, %rax
	movl	%eax, %esi
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movl	-76(%rbp), %ecx
	shrl	$4, %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	orl	%esi, %edx
	movl	%edx, (%rax)
.L39:
	movl	$0, -68(%rbp)
	movq	-48(%rbp), %rax
	shrq	%rax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	andl	-64(%rbp), %eax
	movl	%eax, -72(%rbp)
	jmp	.L36
.L37:
	addl	$1, -68(%rbp)
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %eax
	addl	%edx, %eax
	andl	-64(%rbp), %eax
	movl	%eax, -72(%rbp)
.L36:
	movl	-72(%rbp), %eax
	shrl	$4, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-72(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L37
	movl	-72(%rbp), %eax
	shrl	$4, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-72(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	$2, %esi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	%rsi, %rax
	notl	%eax
	movl	%eax, %ecx
	movl	-72(%rbp), %eax
	shrl	$4, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rsi
	movq	-56(%rbp), %rax
	addq	%rsi, %rax
	andl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -72(%rbp)
	jnb	.L38
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movl	-72(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-72(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.L38
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movl	-72(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movl	-72(%rbp), %edx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movl	-72(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movl	-72(%rbp), %edx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movl	-72(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-72(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	$1, %esi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	%rsi, %rax
	movl	%eax, %esi
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movl	-72(%rbp), %ecx
	shrl	$4, %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	orl	%esi, %edx
	movl	%edx, (%rax)
	jmp	.L39
.L38:
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movl	-72(%rbp), %edx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movl	-72(%rbp), %edx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, (%rdx)
	nop
.L35:
	addl	$1, -76(%rbp)
.L34:
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -76(%rbp)
	jne	.L40
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -92(%rbp)
	jnb	.L41
	movl	-92(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	krealloc@PLT
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 24(%rax)
	movl	-92(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	krealloc@PLT
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 32(%rax)
.L41:
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	kfree@PLT
	movq	-88(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-88(%rbp), %rax
	movl	-92(%rbp), %edx
	movl	%edx, (%rax)
	movq	-88(%rbp), %rax
	movl	4(%rax), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L42
	cvtsi2sdq	%rax, %xmm0
	jmp	.L43
.L42:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L43:
	movsd	.LC0(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC1(%rip), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, 12(%rax)
.L33:
	movl	$0, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	kh_resize_idx, .-kh_resize_idx
	.type	kh_put_idx, @function
kh_put_idx:
.LFB15:
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
	movq	-40(%rbp), %rax
	movl	8(%rax), %edx
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, %edx
	jb	.L45
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	addl	%eax, %eax
	cmpl	%eax, %edx
	jbe	.L46
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	kh_resize_idx
	testl	%eax, %eax
	jns	.L45
	movq	-56(%rbp), %rax
	movl	$-1, (%rax)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L47
.L46:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	kh_resize_idx
	testl	%eax, %eax
	jns	.L45
	movq	-56(%rbp), %rax
	movl	$-1, (%rax)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L47
.L45:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-48(%rbp), %rax
	shrq	%rax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	andl	-12(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-24(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L48
	movl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.L49
.L48:
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L50
.L53:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-24(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L51
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
.L51:
	addl	$1, -16(%rbp)
	movl	-16(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	andl	-12(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jne	.L50
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.L52
.L50:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-24(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L52
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-24(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L53
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-24(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	%rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	shrq	%rax
	cmpq	%rax, %rdx
	jne	.L53
.L52:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jne	.L49
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-24(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L54
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	je	.L54
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.L49
.L54:
	movl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
.L49:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-28(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L55
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-28(%rbp), %edx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-28(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	$3, %esi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	%rsi, %rax
	notl	%eax
	movl	%eax, %esi
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %ecx
	shrl	$4, %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	andl	%esi, %edx
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-56(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L56
.L55:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-28(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L57
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-28(%rbp), %edx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-28(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	$3, %esi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	%rsi, %rax
	notl	%eax
	movl	%eax, %esi
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %ecx
	shrl	$4, %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	andl	%esi, %edx
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-56(%rbp), %rax
	movl	$2, (%rax)
	jmp	.L56
.L57:
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
.L56:
	movl	-28(%rbp), %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	kh_put_idx, .-kh_put_idx
	.type	kh_init_str, @function
kh_init_str:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$40, %edx
	movl	$1, %esi
	movl	$0, %edi
	call	kcalloc@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	kh_init_str, .-kh_init_str
	.type	kh_destroy_str, @function
kh_destroy_str:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L62
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	kfree@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	kfree@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	kfree@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	kfree@PLT
.L62:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	kh_destroy_str, .-kh_destroy_str
	.type	kh_get_str, @function
kh_get_str:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L64
	movl	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	__ac_X31_hash_string
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	andl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L65
.L68:
	addl	$1, -16(%rbp)
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	andl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jne	.L65
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L66
.L65:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-20(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L67
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-20(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L68
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L68
.L67:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-20(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L69
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L66
.L69:
	movl	-20(%rbp), %eax
	jmp	.L66
.L64:
	movl	$0, %eax
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	kh_get_str, .-kh_get_str
	.type	kh_resize_str, @function
kh_resize_str:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movq	$0, -40(%rbp)
	movl	$1, -68(%rbp)
	subl	$1, -92(%rbp)
	movl	-92(%rbp), %eax
	shrl	%eax
	orl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	shrl	$2, %eax
	orl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	shrl	$4, %eax
	orl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	shrl	$8, %eax
	orl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	shrl	$16, %eax
	orl	%eax, -92(%rbp)
	addl	$1, -92(%rbp)
	cmpl	$3, -92(%rbp)
	ja	.L72
	movl	$4, -92(%rbp)
.L72:
	movq	-88(%rbp), %rax
	movl	4(%rax), %ecx
	movl	-92(%rbp), %eax
	testq	%rax, %rax
	js	.L73
	cvtsi2sdq	%rax, %xmm0
	jmp	.L74
.L73:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L74:
	movsd	.LC0(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC1(%rip), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	cmpl	%eax, %ecx
	jb	.L75
	movl	$0, -68(%rbp)
	jmp	.L76
.L75:
	cmpl	$15, -92(%rbp)
	jbe	.L77
	movl	-92(%rbp), %eax
	shrl	$4, %eax
	movl	%eax, %eax
	salq	$2, %rax
	jmp	.L78
.L77:
	movl	$4, %eax
.L78:
	movq	%rax, %rsi
	movl	$0, %edi
	call	kmalloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L79
	movl	$-1, %eax
	jmp	.L80
.L79:
	cmpl	$15, -92(%rbp)
	jbe	.L81
	movl	-92(%rbp), %eax
	shrl	$4, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	jmp	.L82
.L81:
	movl	$4, %edx
.L82:
	movq	-40(%rbp), %rax
	movl	$170, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -92(%rbp)
	jbe	.L76
	movl	-92(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	krealloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L83
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	kfree@PLT
	movl	$-1, %eax
	jmp	.L80
.L83:
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movl	-92(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	krealloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L84
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	kfree@PLT
	movl	$-1, %eax
	jmp	.L80
.L84:
	movq	-88(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 32(%rax)
.L76:
	cmpl	$0, -68(%rbp)
	je	.L85
	movl	$0, -68(%rbp)
	jmp	.L86
.L92:
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movl	-68(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-68(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.L87
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movl	-68(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	-92(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -52(%rbp)
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movl	-68(%rbp), %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movl	-68(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-68(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	$1, %esi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	%rsi, %rax
	movl	%eax, %esi
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movl	-68(%rbp), %ecx
	shrl	$4, %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	orl	%esi, %edx
	movl	%edx, (%rax)
.L91:
	movl	$0, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	__ac_X31_hash_string
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	andl	-52(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.L88
.L89:
	addl	$1, -56(%rbp)
	movl	-56(%rbp), %edx
	movl	-60(%rbp), %eax
	addl	%edx, %eax
	andl	-52(%rbp), %eax
	movl	%eax, -60(%rbp)
.L88:
	movl	-60(%rbp), %eax
	shrl	$4, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-60(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L89
	movl	-60(%rbp), %eax
	shrl	$4, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-60(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	$2, %esi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	%rsi, %rax
	notl	%eax
	movl	%eax, %ecx
	movl	-60(%rbp), %eax
	shrl	$4, %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rsi
	movq	-40(%rbp), %rax
	addq	%rsi, %rax
	andl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -60(%rbp)
	jnb	.L90
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movl	-60(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-60(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.L90
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movl	-60(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movl	-60(%rbp), %edx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movl	-60(%rbp), %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movl	-60(%rbp), %edx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-64(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-44(%rbp), %eax
	movl	%eax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movl	-60(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-60(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	$1, %esi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	%rsi, %rax
	movl	%eax, %esi
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movl	-60(%rbp), %ecx
	shrl	$4, %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	orl	%esi, %edx
	movl	%edx, (%rax)
	jmp	.L91
.L90:
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movl	-60(%rbp), %edx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movl	-60(%rbp), %edx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-64(%rbp), %eax
	movl	%eax, (%rdx)
	nop
.L87:
	addl	$1, -68(%rbp)
.L86:
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -68(%rbp)
	jne	.L92
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -92(%rbp)
	jnb	.L93
	movl	-92(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	krealloc@PLT
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 24(%rax)
	movl	-92(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	krealloc@PLT
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 32(%rax)
.L93:
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	kfree@PLT
	movq	-88(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-88(%rbp), %rax
	movl	-92(%rbp), %edx
	movl	%edx, (%rax)
	movq	-88(%rbp), %rax
	movl	4(%rax), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L94
	cvtsi2sdq	%rax, %xmm0
	jmp	.L95
.L94:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L95:
	movsd	.LC0(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC1(%rip), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, 12(%rax)
.L85:
	movl	$0, %eax
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	kh_resize_str, .-kh_resize_str
	.type	kh_put_str, @function
kh_put_str:
.LFB22:
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
	movq	-40(%rbp), %rax
	movl	8(%rax), %edx
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, %edx
	jb	.L97
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	addl	%eax, %eax
	cmpl	%eax, %edx
	jbe	.L98
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	kh_resize_str
	testl	%eax, %eax
	jns	.L97
	movq	-56(%rbp), %rax
	movl	$-1, (%rax)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L99
.L98:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	kh_resize_str
	testl	%eax, %eax
	jns	.L97
	movq	-56(%rbp), %rax
	movl	$-1, (%rax)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L99
.L97:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	__ac_X31_hash_string
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	andl	-12(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-24(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L100
	movl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.L101
.L100:
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L102
.L105:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-24(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L103
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
.L103:
	addl	$1, -16(%rbp)
	movl	-16(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	andl	-12(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jne	.L102
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.L104
.L102:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-24(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L104
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-24(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L105
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-24(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L105
.L104:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jne	.L101
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-24(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-24(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L106
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	je	.L106
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.L101
.L106:
	movl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
.L101:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-28(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L107
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-28(%rbp), %edx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-28(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	$3, %esi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	%rsi, %rax
	notl	%eax
	movl	%eax, %esi
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %ecx
	shrl	$4, %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	andl	%esi, %edx
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-56(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L108
.L107:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-28(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L109
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	-28(%rbp), %edx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-28(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	$3, %esi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	%rsi, %rax
	notl	%eax
	movl	%eax, %esi
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %ecx
	shrl	$4, %ecx
	movl	%ecx, %ecx
	salq	$2, %rcx
	addq	%rcx, %rax
	andl	%esi, %edx
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-56(%rbp), %rax
	movl	$2, (%rax)
	jmp	.L108
.L109:
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
.L108:
	movl	-28(%rbp), %eax
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	kh_put_str, .-kh_put_str
	.globl	mm_idx_init
	.type	mm_idx_init, @function
mm_idx_init:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	-24(%rbp), %eax
	addl	%eax, %eax
	cmpl	%eax, -28(%rbp)
	jle	.L111
	movl	-24(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -28(%rbp)
.L111:
	cmpl	$0, -20(%rbp)
	jg	.L112
	movl	$1, -20(%rbp)
.L112:
	movl	$72, %esi
	movl	$1, %edi
	call	calloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 12(%rax)
	movl	-28(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	cltq
	movl	$48, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movl	mm_dbg_flag(%rip), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L113
	call	km_init@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 56(%rax)
.L113:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	mm_idx_init, .-mm_idx_init
	.globl	mm_idx_destroy
	.type	mm_idx_destroy, @function
mm_idx_destroy:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L129
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L118
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	kh_destroy_str
.L118:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L119
	movl	$0, -4(%rbp)
	jmp	.L120
.L121:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	40(%rax), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	40(%rax), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	kh_destroy_idx
	addl	$1, -4(%rbp)
.L120:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	cmpl	%eax, -4(%rbp)
	jb	.L121
.L119:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L122
	movl	$0, -4(%rbp)
	jmp	.L123
.L124:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movl	-4(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -4(%rbp)
.L123:
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jb	.L124
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L122:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L125
	movl	$0, -4(%rbp)
	jmp	.L126
.L127:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -4(%rbp)
.L126:
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jb	.L127
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L128
.L125:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	km_destroy@PLT
.L128:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L115
.L129:
	nop
.L115:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	mm_idx_destroy, .-mm_idx_destroy
	.globl	mm_idx_get
	.type	mm_idx_get, @function
mm_idx_get:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$56, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	subl	$1, %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rcx
	movl	-24(%rbp), %eax
	cltq
	andq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
	cmpq	$0, -8(%rbp)
	jne	.L131
	movl	$0, %eax
	jmp	.L132
.L131:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movq	-48(%rbp), %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	leaq	(%rax,%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	kh_get_idx
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L133
	movl	$0, %eax
	jmp	.L132
.L133:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L134
	movq	-56(%rbp), %rax
	movl	$1, (%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	jmp	.L132
.L134:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	-20(%rbp), %ecx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	shrq	$32, %rax
	salq	$3, %rax
	addq	%rdx, %rax
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	mm_idx_get, .-mm_idx_get
	.section	.rodata
	.align 8
.LC2:
	.string	"[M::%s] kmer size: %d; skip: %d; is_hpc: %d; #seq: %d\n"
	.align 8
.LC4:
	.string	"[M::%s::%.3f*%.2f] distinct minimizers: %d (%.2f%% are singletons); average occurrences: %.3lf; average spacing: %.3lf\n"
	.text
	.globl	mm_idx_stat
	.type	mm_idx_stat, @function
mm_idx_stat:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	12(%rax), %eax
	andl	$1, %eax
	movl	%eax, %edi
	movq	-56(%rbp), %rax
	movl	4(%rax), %esi
	movq	-56(%rbp), %rax
	movl	8(%rax), %edx
	movq	stderr(%rip), %rax
	subq	$8, %rsp
	pushq	%rcx
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	%edx, %ecx
	leaq	__func__.4485(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addq	$16, %rsp
	movl	$0, -32(%rbp)
	jmp	.L136
.L137:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rcx
	movl	-32(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	16(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -16(%rbp)
	addl	$1, -32(%rbp)
.L136:
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -32(%rbp)
	jb	.L137
	movl	$0, -32(%rbp)
	jmp	.L138
.L140:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rcx
	movl	-32(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L139
	movq	-56(%rbp), %rax
	movq	40(%rax), %rcx
	movl	-32(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movq	40(%rax), %rax
	movl	4(%rax), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -40(%rbp)
.L139:
	addl	$1, -32(%rbp)
.L138:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	cmpl	%eax, -32(%rbp)
	jb	.L140
	movl	$0, -32(%rbp)
	jmp	.L141
.L149:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rcx
	movl	-32(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L156
	movl	$0, -28(%rbp)
	jmp	.L144
.L148:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-28(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.L145
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	-28(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L146
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	-28(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	%eax, %eax
	jmp	.L147
.L146:
	movl	$1, %eax
.L147:
	addq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	-28(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L145
	addl	$1, -36(%rbp)
.L145:
	addl	$1, -28(%rbp)
.L144:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jb	.L148
	jmp	.L143
.L156:
	nop
.L143:
	addl	$1, -32(%rbp)
.L141:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	cmpl	%eax, -32(%rbp)
	jb	.L149
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	js	.L150
	cvtsi2sdq	%rax, %xmm0
	jmp	.L151
.L150:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L151:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	js	.L152
	cvtsi2sdq	%rax, %xmm1
	jmp	.L153
.L152:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
.L153:
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	js	.L154
	cvtsi2sdq	%rax, %xmm0
	jmp	.L155
.L154:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L155:
	cvtsi2sd	-40(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	cvtsi2sd	-36(%rbp), %xmm0
	movsd	.LC3(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsi2sd	-40(%rbp), %xmm1
	movapd	%xmm0, %xmm5
	divsd	%xmm1, %xmm5
	movsd	%xmm5, -80(%rbp)
	call	cputime@PLT
	movsd	%xmm0, -88(%rbp)
	call	realtime@PLT
	movapd	%xmm0, %xmm1
	movsd	mm_realtime0(%rip), %xmm0
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	-88(%rbp), %xmm6
	divsd	%xmm0, %xmm6
	movsd	%xmm6, -88(%rbp)
	call	realtime@PLT
	movapd	%xmm0, %xmm1
	movsd	mm_realtime0(%rip), %xmm0
	movapd	%xmm1, %xmm7
	subsd	%xmm0, %xmm7
	movapd	%xmm7, %xmm0
	movq	stderr(%rip), %rax
	movl	-40(%rbp), %edx
	movsd	-64(%rbp), %xmm4
	movsd	-72(%rbp), %xmm3
	movsd	-80(%rbp), %xmm2
	movl	%edx, %ecx
	movsd	-88(%rbp), %xmm1
	leaq	__func__.4485(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	movl	$5, %eax
	call	fprintf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	mm_idx_stat, .-mm_idx_stat
	.section	.rodata
	.align 8
.LC5:
	.string	"[WARNING] some database sequences have identical sequence names\n"
	.text
	.globl	mm_idx_index_name
	.type	mm_idx_index_name, @function
mm_idx_index_name:
.LFB28:
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
	movl	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L158
	movl	$0, %eax
	jmp	.L165
.L158:
	call	kh_init_str
	movq	%rax, -16(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L160
.L163:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	kh_put_str
	movl	%eax, -20(%rbp)
	movl	-32(%rbp), %eax
	testl	%eax, %eax
	je	.L161
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, (%rdx)
	jmp	.L162
.L161:
	movl	$1, -24(%rbp)
.L162:
	addl	$1, -28(%rbp)
.L160:
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jb	.L163
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 64(%rax)
	cmpl	$0, -24(%rbp)
	je	.L164
	movl	mm_verbose(%rip), %eax
	cmpl	$1, %eax
	jle	.L164
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$64, %edx
	movl	$1, %esi
	leaq	.LC5(%rip), %rdi
	call	fwrite@PLT
.L164:
	movl	-24(%rbp), %eax
.L165:
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L166
	call	__stack_chk_fail@PLT
.L166:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	mm_idx_index_name, .-mm_idx_index_name
	.globl	mm_idx_name2id
	.type	mm_idx_name2id, @function
mm_idx_name2id:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L168
	movl	$-2, %eax
	jmp	.L169
.L168:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	kh_get_str
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	je	.L170
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	-12(%rbp), %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	jmp	.L169
.L170:
	movl	$-1, %eax
.L169:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	mm_idx_name2id, .-mm_idx_name2id
	.globl	mm_idx_getseq
	.type	mm_idx_getseq, @function
mm_idx_getseq:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movq	%r8, -64(%rbp)
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jnb	.L173
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movl	-44(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	16(%rax), %eax
	cmpl	%eax, -48(%rbp)
	jb	.L174
.L173:
	movl	$-1, %eax
	jmp	.L175
.L174:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movl	-44(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	16(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jbe	.L176
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movl	-44(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	16(%rax), %eax
	movl	%eax, -52(%rbp)
.L176:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movl	-44(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	8(%rax), %rdx
	movl	-48(%rbp), %eax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movl	-44(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	8(%rax), %rdx
	movl	-52(%rbp), %eax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L177
.L178:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rdx
	shrq	$3, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	sall	$2, %eax
	andl	$28, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	andl	$15, %ecx
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addq	$1, -24(%rbp)
.L177:
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L178
	movl	-52(%rbp), %eax
	subl	-48(%rbp), %eax
.L175:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	mm_idx_getseq, .-mm_idx_getseq
	.globl	mm_idx_cal_max_occ
	.type	mm_idx_cal_max_occ, @function
mm_idx_cal_max_occ:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movss	%xmm0, -60(%rbp)
	movq	$0, -24(%rbp)
	pxor	%xmm0, %xmm0
	ucomiss	-60(%rbp), %xmm0
	jb	.L199
	movl	$2147483647, %eax
	jmp	.L182
.L199:
	movl	$0, -36(%rbp)
	jmp	.L183
.L185:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L184
	movq	-56(%rbp), %rax
	movq	40(%rax), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movq	40(%rax), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -24(%rbp)
.L184:
	addl	$1, -36(%rbp)
.L183:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	cmpl	%eax, -36(%rbp)
	jl	.L185
	movq	-24(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L186
.L195:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L200
	movl	$0, -32(%rbp)
	jmp	.L189
.L194:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	-32(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-32(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.L201
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	-32(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L192
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	-32(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	jmp	.L193
.L192:
	movl	$1, %ecx
.L193:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, (%rax)
	jmp	.L191
.L201:
	nop
.L191:
	addl	$1, -32(%rbp)
.L189:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -32(%rbp)
	jb	.L194
	jmp	.L188
.L200:
	nop
.L188:
	addl	$1, -36(%rbp)
.L186:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	cmpl	%eax, -36(%rbp)
	jl	.L195
	cvtss2sd	-60(%rbp), %xmm0
	movsd	.LC7(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	js	.L196
	cvtsi2sdq	%rax, %xmm0
	jmp	.L197
.L196:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L197:
	mulsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ks_ksmall_uint32_t@PLT
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	-28(%rbp), %eax
.L182:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	mm_idx_cal_max_occ, .-mm_idx_cal_max_occ
	.section	.rodata
.LC8:
	.string	"index.c"
.LC9:
	.string	"absent && j == start_a + n"
.LC10:
	.string	"b->n == (int32_t)start_p"
	.text
	.type	worker_post, @function
worker_post:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%edx, -116(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-112(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L225
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	salq	$4, %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	radix_sort_128x@PLT
	movq	$1, -64(%rbp)
	movl	$1, -80(%rbp)
	movl	$0, -76(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, 24(%rax)
	jmp	.L205
.L210:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -64(%rbp)
	je	.L206
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-64(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-64(%rbp), %rdx
	salq	$4, %rdx
	subq	$16, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$8, %rax
	cmpq	%rax, %rcx
	je	.L207
.L206:
	addl	$1, -76(%rbp)
	cmpl	$1, -80(%rbp)
	jle	.L208
	movq	-32(%rbp), %rax
	movl	24(%rax), %edx
	movl	-80(%rbp), %eax
	addl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 24(%rax)
.L208:
	movl	$1, -80(%rbp)
	jmp	.L209
.L207:
	addl	$1, -80(%rbp)
.L209:
	addq	$1, -64(%rbp)
.L205:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -64(%rbp)
	jbe	.L210
	call	kh_init_idx
	movq	%rax, -24(%rbp)
	movl	-76(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	kh_resize_idx
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	movl	$8, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	$1, -64(%rbp)
	movl	$1, -80(%rbp)
	movq	$0, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.L211
.L221:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -64(%rbp)
	je	.L212
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-64(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-64(%rbp), %rdx
	salq	$4, %rdx
	subq	$16, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$8, %rax
	cmpq	%rax, %rcx
	je	.L213
.L212:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-64(%rbp), %rdx
	salq	$4, %rdx
	subq	$16, %rdx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	leaq	(%rax,%rax), %rcx
	leaq	-84(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	kh_put_idx
	movl	%eax, -68(%rbp)
	movl	-84(%rbp), %eax
	testl	%eax, %eax
	je	.L214
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -64(%rbp)
	je	.L224
.L214:
	leaq	__PRETTY_FUNCTION__.4571(%rip), %rcx
	movl	$222, %edx
	leaq	.LC8(%rip), %rsi
	leaq	.LC9(%rip), %rdi
	call	__assert_fail@PLT
.L224:
	cmpl	$1, -80(%rbp)
	jne	.L216
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-68(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-68(%rbp), %ecx
	salq	$3, %rcx
	addq	%rcx, %rax
	orq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	-68(%rbp), %edx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, (%rdx)
	jmp	.L217
.L216:
	movl	$0, -72(%rbp)
	jmp	.L218
.L219:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	salq	$4, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	-72(%rbp), %edx
	movslq	%edx, %rsi
	movq	-48(%rbp), %rdx
	addq	%rsi, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	8(%rcx), %rax
	movq	%rax, (%rdx)
	addl	$1, -72(%rbp)
.L218:
	movl	-72(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jl	.L219
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	-80(%rbp), %edx
	movslq	%edx, %rcx
	movq	-48(%rbp), %rdx
	addq	%rcx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	-48(%rbp), %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	radix_sort_64@PLT
	movq	-48(%rbp), %rax
	salq	$32, %rax
	movq	%rax, %rsi
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	-68(%rbp), %ecx
	salq	$3, %rcx
	addq	%rcx, %rax
	orq	%rsi, %rdx
	movq	%rdx, (%rax)
	movl	-80(%rbp), %eax
	cltq
	addq	%rax, -48(%rbp)
.L217:
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$1, -80(%rbp)
	jmp	.L220
.L213:
	addl	$1, -80(%rbp)
.L220:
	addq	$1, -64(%rbp)
.L211:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -64(%rbp)
	jbe	.L221
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	movq	-48(%rbp), %rdx
	cmpl	%edx, %eax
	je	.L222
	leaq	__PRETTY_FUNCTION__.4571(%rip), %rcx
	movl	$238, %edx
	leaq	.LC8(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	call	__assert_fail@PLT
.L222:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	kfree@PLT
	movq	-32(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	$0, 16(%rax)
	jmp	.L202
.L225:
	nop
.L202:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L223
	call	__stack_chk_fail@PLT
.L223:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	worker_post, .-worker_post
	.type	mm_idx_post, @function
mm_idx_post:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	leaq	worker_post(%rip), %rsi
	movl	%eax, %edi
	call	kt_for@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	mm_idx_post, .-mm_idx_post
	.type	mm_idx_add, @function
mm_idx_add:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L228
.L232:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rcx
	movl	-16(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	andq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L229
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L230
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	(%rax,%rax), %rdx
	jmp	.L231
.L230:
	movl	$2, %edx
.L231:
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	krealloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
.L229:
	movl	-16(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, (%rdx)
	salq	$4, %rax
	leaq	(%rdi,%rax), %rcx
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	addl	$1, -16(%rbp)
.L228:
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L232
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	mm_idx_add, .-mm_idx_add
	.section	.rodata
	.align 8
.LC11:
	.string	"(uint64_t)p->mi->n_seq + s->n_seq <= UINT32_MAX"
	.align 8
.LC12:
	.string	"[WARNING] the length database sequence '%s' is 0\n"
	.text
	.type	worker_pipeline, @function
worker_pipeline:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movl	%esi, -140(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -88(%rbp)
	cmpl	$0, -140(%rbp)
	jne	.L234
	movq	-88(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jbe	.L235
	movl	$0, %eax
	jmp	.L236
.L235:
	movl	$40, %esi
	movl	$1, %edi
	call	calloc@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	(%rax), %esi
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	mm_bseq_read@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L237
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movl	16(%rax), %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	%rax, %rdx
	movl	$4294967295, %eax
	cmpq	%rax, %rdx
	jbe	.L238
	leaq	__PRETTY_FUNCTION__.4945(%rip), %rcx
	movl	$291, %edx
	leaq	.LC8(%rip), %rsi
	leaq	.LC11(%rip), %rdi
	call	__assert_fail@PLT
.L238:
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movl	16(%rax), %eax
	movl	%eax, -108(%rbp)
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movl	16(%rax), %edx
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, -104(%rbp)
	subl	$1, -104(%rbp)
	movl	-104(%rbp), %eax
	shrl	%eax
	orl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	shrl	$2, %eax
	orl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	shrl	$4, %eax
	orl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	shrl	$8, %eax
	orl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	shrl	$16, %eax
	orl	%eax, -104(%rbp)
	addl	$1, -104(%rbp)
	subl	$1, -108(%rbp)
	movl	-108(%rbp), %eax
	shrl	%eax
	orl	%eax, -108(%rbp)
	movl	-108(%rbp), %eax
	shrl	$2, %eax
	orl	%eax, -108(%rbp)
	movl	-108(%rbp), %eax
	shrl	$4, %eax
	orl	%eax, -108(%rbp)
	movl	-108(%rbp), %eax
	shrl	$8, %eax
	orl	%eax, -108(%rbp)
	movl	-108(%rbp), %eax
	shrl	$16, %eax
	orl	%eax, -108(%rbp)
	addl	$1, -108(%rbp)
	movl	-108(%rbp), %eax
	cmpl	-104(%rbp), %eax
	je	.L239
	movl	-104(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rsi
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rcx
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movq	56(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	32(%rdx), %rbx
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	krealloc@PLT
	movq	%rax, 24(%rbx)
.L239:
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movl	12(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L240
	movl	$0, -116(%rbp)
	movq	$0, -96(%rbp)
	jmp	.L241
.L242:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-116(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	addq	%rax, -96(%rbp)
	addl	$1, -116(%rbp)
.L241:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -116(%rbp)
	jl	.L242
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	addq	$7, %rax
	shrq	$3, %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	addq	$7, %rax
	shrq	$3, %rax
	movq	%rax, -40(%rbp)
	subq	$1, -48(%rbp)
	movq	-48(%rbp), %rax
	shrq	%rax
	orq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	shrq	$2, %rax
	orq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	shrq	$4, %rax
	orq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	shrq	$8, %rax
	orq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	shrq	$16, %rax
	orq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	shrq	$32, %rax
	orq	%rax, -48(%rbp)
	addq	$1, -48(%rbp)
	subq	$1, -40(%rbp)
	movq	-40(%rbp), %rax
	shrq	%rax
	orq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	shrq	$2, %rax
	orq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	shrq	$4, %rax
	orq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	shrq	$8, %rax
	orq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	shrq	$16, %rax
	orq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	shrq	$32, %rax
	orq	%rax, -40(%rbp)
	addq	$1, -40(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.L240
	movq	-40(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	32(%rdx), %rbx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rax
	subq	-48(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	-48(%rbp), %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L240:
	movl	$0, -116(%rbp)
	jmp	.L243
.L249:
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movl	16(%rax), %eax
	movl	%eax, %ecx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movl	12(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L244
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-116(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leaq	1(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movq	56(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	kmalloc@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-116(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	jmp	.L245
.L244:
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
.L245:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-116(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movl	12(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L246
	movl	$0, -112(%rbp)
	jmp	.L247
.L248:
	movq	-88(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-112(%rbp), %eax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-116(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	16(%rax), %rdx
	movl	-112(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movslq	%eax, %rdx
	leaq	seq_nt4_table(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -100(%rbp)
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rdx
	shrq	$3, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-100(%rbp), %esi
	movq	-24(%rbp), %rax
	sall	$2, %eax
	andl	$28, %eax
	movl	%eax, %ecx
	sall	%cl, %esi
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rcx
	shrq	$3, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	orl	%esi, %edx
	movl	%edx, (%rax)
	addl	$1, -112(%rbp)
.L247:
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -112(%rbp)
	jb	.L248
.L246:
	movq	-88(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %eax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movl	16(%rax), %edx
	leal	1(%rdx), %ecx
	movl	%ecx, 16(%rax)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rsi
	movl	-116(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	movl	%edx, 4(%rax)
	addl	$1, -116(%rbp)
.L243:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -116(%rbp)
	jl	.L249
	movq	-56(%rbp), %rax
	jmp	.L236
.L237:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L250
.L234:
	cmpl	$1, -140(%rbp)
	jne	.L251
	movq	-152(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$0, -116(%rbp)
	jmp	.L252
.L255:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-116(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L253
	movq	-72(%rbp), %rax
	leaq	16(%rax), %r8
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movl	12(%rax), %eax
	andl	$1, %eax
	movl	%eax, %edi
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %r9d
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %esi
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movl	4(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	pushq	%r8
	pushq	%rdi
	movl	%esi, %r8d
	movq	%rax, %rsi
	movl	$0, %edi
	call	mm_sketch@PLT
	addq	$16, %rsp
	jmp	.L254
.L253:
	movl	mm_verbose(%rip), %eax
	cmpl	$1, %eax
	jle	.L254
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L254:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -116(%rbp)
.L252:
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -116(%rbp)
	jl	.L255
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-72(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-72(%rbp), %rax
	jmp	.L236
.L251:
	cmpl	$2, -140(%rbp)
	jne	.L250
	movq	-152(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	mm_idx_add
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	kfree@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L250:
	movl	$0, %eax
.L236:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	worker_pipeline, .-worker_pipeline
	.section	.rodata
	.align 8
.LC13:
	.string	"[M::%s::%.3f*%.2f] collected minimizers\n"
	.align 8
.LC14:
	.string	"[M::%s::%.3f*%.2f] sorted minimizers\n"
	.text
	.globl	mm_idx_gen
	.type	mm_idx_gen, @function
mm_idx_gen:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movl	%r8d, -72(%rbp)
	movl	%r9d, -76(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -56(%rbp)
	je	.L257
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	mm_bseq_eof@PLT
	testl	%eax, %eax
	je	.L258
.L257:
	movl	$0, %eax
	jmp	.L262
.L258:
	leaq	-48(%rbp), %rax
	movl	$40, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-76(%rbp), %eax
	cltq
	cmpq	%rax, 24(%rbp)
	cmovbe	24(%rbp), %rax
	movl	%eax, -48(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	-72(%rbp), %ecx
	movl	-68(%rbp), %edx
	movl	-64(%rbp), %esi
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	mm_idx_init
	movq	%rax, -16(%rbp)
	movl	$3, %eax
	cmpl	$3, 16(%rbp)
	cmovle	16(%rbp), %eax
	leaq	-48(%rbp), %rdx
	movl	$3, %ecx
	leaq	worker_pipeline(%rip), %rsi
	movl	%eax, %edi
	call	kt_pipeline@PLT
	movl	mm_verbose(%rip), %eax
	cmpl	$2, %eax
	jle	.L260
	call	cputime@PLT
	movsd	%xmm0, -88(%rbp)
	call	realtime@PLT
	movapd	%xmm0, %xmm1
	movsd	mm_realtime0(%rip), %xmm0
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	-88(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -88(%rbp)
	call	realtime@PLT
	movapd	%xmm0, %xmm1
	movsd	mm_realtime0(%rip), %xmm0
	movapd	%xmm1, %xmm3
	subsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	movq	stderr(%rip), %rax
	movsd	-88(%rbp), %xmm1
	leaq	__func__.4979(%rip), %rdx
	leaq	.LC13(%rip), %rsi
	movq	%rax, %rdi
	movl	$2, %eax
	call	fprintf@PLT
.L260:
	movq	-16(%rbp), %rax
	movl	16(%rbp), %esi
	movq	%rax, %rdi
	call	mm_idx_post
	movl	mm_verbose(%rip), %eax
	cmpl	$2, %eax
	jle	.L261
	call	cputime@PLT
	movsd	%xmm0, -88(%rbp)
	call	realtime@PLT
	movapd	%xmm0, %xmm1
	movsd	mm_realtime0(%rip), %xmm0
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	-88(%rbp), %xmm4
	divsd	%xmm0, %xmm4
	movsd	%xmm4, -88(%rbp)
	call	realtime@PLT
	movapd	%xmm0, %xmm1
	movsd	mm_realtime0(%rip), %xmm0
	movapd	%xmm1, %xmm5
	subsd	%xmm0, %xmm5
	movapd	%xmm5, %xmm0
	movq	stderr(%rip), %rax
	movsd	-88(%rbp), %xmm1
	leaq	__func__.4979(%rip), %rdx
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	movl	$2, %eax
	call	fprintf@PLT
.L261:
	movq	-16(%rbp), %rax
.L262:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L263
	call	__stack_chk_fail@PLT
.L263:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	mm_idx_gen, .-mm_idx_gen
	.globl	mm_idx_build
	.type	mm_idx_build, @function
mm_idx_build:
.LFB37:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	mm_bseq_open@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L265
	movl	$0, %eax
	jmp	.L266
.L265:
	movl	-36(%rbp), %edi
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %esi
	movq	-16(%rbp), %rax
	pushq	$-1
	movl	-40(%rbp), %ecx
	pushq	%rcx
	movl	$262144, %r9d
	movl	%edi, %r8d
	movl	$14, %ecx
	movq	%rax, %rdi
	call	mm_idx_gen
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	mm_bseq_close@PLT
	movq	-8(%rbp), %rax
.L266:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	mm_idx_build, .-mm_idx_build
	.section	.rodata
.LC15:
	.string	"absent"
	.text
	.globl	mm_idx_str
	.type	mm_idx_str, @function
mm_idx_str:
.LFB38:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movl	%edi, -116(%rbp)
	movl	%esi, -120(%rbp)
	movl	%edx, -124(%rbp)
	movl	%ecx, -128(%rbp)
	movl	%r8d, -132(%rbp)
	movq	%r9, -144(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -80(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -92(%rbp)
	cmpl	$0, -132(%rbp)
	jg	.L268
	movl	$0, %eax
	jmp	.L282
.L268:
	movl	$0, -96(%rbp)
	jmp	.L270
.L271:
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	%rax, -80(%rbp)
	addl	$1, -96(%rbp)
.L270:
	movl	-96(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jl	.L271
	cmpl	$0, -124(%rbp)
	je	.L272
	orl	$1, -92(%rbp)
.L272:
	cmpq	$0, -152(%rbp)
	jne	.L273
	orl	$4, -92(%rbp)
.L273:
	cmpl	$0, -128(%rbp)
	jns	.L274
	movl	$14, -128(%rbp)
.L274:
	movl	-92(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-120(%rbp), %esi
	movl	-116(%rbp), %eax
	movl	%eax, %edi
	call	mm_idx_init
	movq	%rax, -72(%rbp)
	movl	-132(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 16(%rax)
	movl	-132(%rbp), %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movl	$24, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	kcalloc@PLT
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-80(%rbp), %rax
	addq	$7, %rax
	shrq	$3, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 32(%rax)
	call	kh_init_str
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movl	$0, -96(%rbp)
	movq	$0, -80(%rbp)
	jmp	.L275
.L281:
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rcx
	movl	-96(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -152(%rbp)
	je	.L276
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L276
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	kmalloc@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	leaq	-100(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	kh_put_str
	movl	-100(%rbp), %eax
	testl	%eax, %eax
	jne	.L276
	leaq	__PRETTY_FUNCTION__.5011(%rip), %rcx
	movl	$413, %edx
	leaq	.LC8(%rip), %rsi
	leaq	.LC15(%rip), %rdi
	call	__assert_fail@PLT
.L276:
	movq	-48(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 16(%rax)
	movl	$0, -88(%rbp)
	jmp	.L278
.L279:
	movl	-88(%rbp), %edx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movslq	%eax, %rdx
	leaq	seq_nt4_table(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -84(%rbp)
	movl	-88(%rbp), %edx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	-40(%rbp), %rdx
	shrq	$3, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-84(%rbp), %esi
	movq	-40(%rbp), %rax
	sall	$2, %eax
	andl	$28, %eax
	movl	%eax, %ecx
	sall	%cl, %esi
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	-40(%rbp), %rcx
	shrq	$3, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	orl	%esi, %edx
	movl	%edx, (%rax)
	addl	$1, -88(%rbp)
.L278:
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -88(%rbp)
	jb	.L279
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L280
	movq	$0, -32(%rbp)
	movl	-96(%rbp), %edi
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %r10d
	movl	-120(%rbp), %esi
	movl	-116(%rbp), %edx
	movq	-56(%rbp), %rax
	leaq	-32(%rbp), %rcx
	pushq	%rcx
	movl	-124(%rbp), %ecx
	pushq	%rcx
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	%edx, %ecx
	movl	%r10d, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	mm_sketch@PLT
	addq	$16, %rsp
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	mm_idx_add
.L280:
	addl	$1, -96(%rbp)
.L275:
	movl	-96(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jl	.L281
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-72(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	mm_idx_post
	movq	-72(%rbp), %rax
.L282:
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L283
	call	__stack_chk_fail@PLT
.L283:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	mm_idx_str, .-mm_idx_str
	.section	.rodata
.LC16:
	.string	"MMI\002"
	.text
	.globl	mm_idx_dump
	.type	mm_idx_dump, @function
mm_idx_dump:
.LFB39:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -72(%rbp)
	movq	-112(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-112(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-112(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-112(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -16(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	movl	$4, %edx
	movl	$1, %esi
	leaq	.LC16(%rip), %rdi
	call	fwrite@PLT
	movq	-104(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$5, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	movl	$0, -80(%rbp)
	jmp	.L285
.L288:
	movq	-112(%rbp), %rax
	movq	24(%rax), %rcx
	movl	-80(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L286
	movq	-112(%rbp), %rax
	movq	24(%rax), %rcx
	movl	-80(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movb	%al, -84(%rbp)
	movq	-104(%rbp), %rdx
	leaq	-84(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	movzbl	-84(%rbp), %eax
	movzbl	%al, %esi
	movq	-112(%rbp), %rax
	movq	24(%rax), %rcx
	movl	-80(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	jmp	.L287
.L286:
	movb	$0, -84(%rbp)
	movq	-104(%rbp), %rdx
	leaq	-84(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
.L287:
	movq	-112(%rbp), %rax
	movq	24(%rax), %rcx
	movl	-80(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	leaq	16(%rax), %rdi
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fwrite@PLT
	movq	-112(%rbp), %rax
	movq	24(%rax), %rcx
	movl	-80(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	16(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -72(%rbp)
	addl	$1, -80(%rbp)
.L285:
	movq	-112(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -80(%rbp)
	jb	.L288
	movl	$0, -80(%rbp)
	jmp	.L289
.L298:
	movq	-112(%rbp), %rax
	movq	40(%rax), %rcx
	movl	-80(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L290
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	jmp	.L291
.L290:
	movl	$0, %eax
.L291:
	movl	%eax, -84(%rbp)
	movq	-64(%rbp), %rax
	leaq	24(%rax), %rdi
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fwrite@PLT
	movq	-64(%rbp), %rax
	movl	24(%rax), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	-104(%rbp), %rcx
	movl	$8, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	-104(%rbp), %rdx
	leaq	-84(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	movl	-84(%rbp), %eax
	testl	%eax, %eax
	je	.L301
	movl	$0, -76(%rbp)
	jmp	.L294
.L297:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	-76(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-76(%rbp), %eax
	addl	%eax, %eax
	andl	$30, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.L302
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	-76(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movl	-76(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-104(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	jmp	.L296
.L302:
	nop
.L296:
	addl	$1, -76(%rbp)
.L294:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -76(%rbp)
	jb	.L297
	jmp	.L293
.L301:
	nop
.L293:
	addl	$1, -80(%rbp)
.L289:
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	cmpl	%eax, -80(%rbp)
	jb	.L298
	movq	-112(%rbp), %rax
	movl	12(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L299
	movq	-72(%rbp), %rax
	addq	$7, %rax
	shrq	$3, %rax
	movq	%rax, %rsi
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
.L299:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L300
	call	__stack_chk_fail@PLT
.L300:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	mm_idx_dump, .-mm_idx_dump
	.globl	mm_idx_load
	.type	mm_idx_load, @function
mm_idx_load:
.LFB40:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -88(%rbp)
	movq	-120(%rbp), %rdx
	leaq	-12(%rbp), %rax
	movq	%rdx, %rcx
	movl	$4, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	cmpq	$4, %rax
	je	.L304
	movl	$0, %eax
	jmp	.L319
.L304:
	leaq	-12(%rbp), %rax
	movl	$4, %edx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L306
	movl	$0, %eax
	jmp	.L319
.L306:
	movq	-120(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$5, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fread@PLT
	cmpq	$5, %rax
	je	.L307
	movl	$0, %eax
	jmp	.L319
.L307:
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	mm_idx_init
	movq	%rax, -80(%rbp)
	movl	-20(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-80(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rax
	movq	56(%rax), %rax
	movl	$24, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	kcalloc@PLT
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 24(%rax)
	movl	$0, -100(%rbp)
	jmp	.L308
.L310:
	movq	-80(%rbp), %rax
	movq	24(%rax), %rcx
	movl	-100(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-120(%rbp), %rdx
	leaq	-104(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movzbl	-104(%rbp), %eax
	testb	%al, %al
	je	.L309
	movzbl	-104(%rbp), %eax
	movzbl	%al, %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	kmalloc@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movzbl	-104(%rbp), %eax
	movzbl	%al, %edx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-120(%rbp), %rcx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movzbl	-104(%rbp), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L309:
	movq	-56(%rbp), %rax
	leaq	16(%rax), %rdi
	movq	-120(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread@PLT
	movq	-56(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	addl	$1, -100(%rbp)
.L308:
	movq	-80(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -100(%rbp)
	jb	.L310
	movl	$0, -100(%rbp)
	jmp	.L311
.L317:
	movq	-80(%rbp), %rax
	movq	40(%rax), %rcx
	movl	-100(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	24(%rax), %rdi
	movq	-120(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread@PLT
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	sall	$3, %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	-120(%rbp), %rcx
	movl	$8, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movq	-120(%rbp), %rdx
	leaq	-108(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movl	-108(%rbp), %eax
	testl	%eax, %eax
	je	.L321
	call	kh_init_idx
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movl	-108(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	kh_resize_idx
	movl	$0, -96(%rbp)
	jmp	.L314
.L316:
	movq	-120(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	fread@PLT
	movq	-48(%rbp), %rcx
	leaq	-104(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	kh_put_idx
	movl	%eax, -92(%rbp)
	movl	-104(%rbp), %eax
	testl	%eax, %eax
	jne	.L315
	leaq	__PRETTY_FUNCTION__.5066(%rip), %rcx
	movl	$522, %edx
	leaq	.LC8(%rip), %rsi
	leaq	.LC15(%rip), %rdi
	call	__assert_fail@PLT
.L315:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movl	-92(%rbp), %edx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, (%rdx)
	addl	$1, -96(%rbp)
.L314:
	movl	-108(%rbp), %eax
	cmpl	%eax, -96(%rbp)
	jb	.L316
	jmp	.L313
.L321:
	nop
.L313:
	addl	$1, -100(%rbp)
.L311:
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	cmpl	%eax, -100(%rbp)
	jb	.L317
	movq	-80(%rbp), %rax
	movl	12(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L318
	movq	-88(%rbp), %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-88(%rbp), %rax
	addq	$7, %rax
	shrq	$3, %rax
	movq	%rax, %rsi
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$4, %esi
	movq	%rax, %rdi
	call	fread@PLT
.L318:
	movq	-80(%rbp), %rax
.L319:
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L320
	call	__stack_chk_fail@PLT
.L320:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	mm_idx_load, .-mm_idx_load
	.section	.rodata
.LC17:
	.string	"-"
	.text
	.globl	mm_idx_is_idx
	.type	mm_idx_is_idx, @function
mm_idx_is_idx:
.LFB41:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -40(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L323
	movl	$0, %eax
	jmp	.L329
.L323:
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jns	.L325
	movq	$-1, %rax
	jmp	.L329
.L325:
	movl	-36(%rbp), %eax
	movl	$2, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	lseek@PLT
	movq	%rax, -32(%rbp)
	cmpq	$3, -32(%rbp)
	jle	.L326
	movl	-36(%rbp), %eax
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	lseek@PLT
	leaq	-12(%rbp), %rcx
	movl	-36(%rbp), %eax
	movl	$4, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read@PLT
	movq	%rax, -24(%rbp)
	cmpq	$4, -24(%rbp)
	jne	.L326
	leaq	-12(%rbp), %rax
	movl	$4, %edx
	leaq	.LC16(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L326
	movl	$1, -40(%rbp)
.L326:
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	cmpl	$0, -40(%rbp)
	je	.L327
	movq	-32(%rbp), %rax
	jmp	.L329
.L327:
	movl	$0, %eax
.L329:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L330
	call	__stack_chk_fail@PLT
.L330:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	mm_idx_is_idx, .-mm_idx_is_idx
	.section	.rodata
.LC18:
	.string	"rb"
.LC19:
	.string	"wb"
	.text
	.globl	mm_idx_reader_open
	.type	mm_idx_reader_open, @function
mm_idx_reader_open:
.LFB42:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	mm_idx_is_idx
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jns	.L332
	movl	$0, %eax
	jmp	.L333
.L332:
	movl	$56, %esi
	movl	$1, %edi
	call	calloc@PLT
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	cmpq	$0, -32(%rbp)
	je	.L334
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	16(%rsi), %rax
	movq	%rax, 32(%rcx)
	jmp	.L335
.L334:
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	mm_idxopt_init@PLT
.L335:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L336
	movq	-24(%rbp), %rax
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L337
.L336:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	mm_bseq_open@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
.L337:
	cmpq	$0, -40(%rbp)
	je	.L338
	movq	-40(%rbp), %rax
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
.L338:
	movq	-8(%rbp), %rax
.L333:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	mm_idx_reader_open, .-mm_idx_reader_open
	.globl	mm_idx_reader_close
	.type	mm_idx_reader_close, @function
mm_idx_reader_close:
.LFB43:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L340
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	jmp	.L341
.L340:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	mm_bseq_close@PLT
.L341:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L342
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L342:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	mm_idx_reader_close, .-mm_idx_reader_close
	.section	.rodata
	.align 8
.LC20:
	.string	"[WARNING]\033[1;31m Indexing parameters (-k, -w or -H) overridden by parameters used in the prebuilt index.\033[0m\n"
	.text
	.globl	mm_idx_reader_read
	.type	mm_idx_reader_read, @function
mm_idx_reader_read:
.LFB44:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L344
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	mm_idx_load
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L347
	movl	mm_verbose(%rip), %eax
	cmpl	$1, %eax
	jle	.L347
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-24(%rbp), %rax
	movzwl	16(%rax), %eax
	cwtl
	cmpl	%eax, %edx
	jne	.L346
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-24(%rbp), %rax
	movzwl	18(%rax), %eax
	cwtl
	cmpl	%eax, %edx
	jne	.L346
	movq	-8(%rbp), %rax
	movl	12(%rax), %edx
	movq	-24(%rbp), %rax
	movzwl	20(%rax), %eax
	cwtl
	xorl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L347
.L346:
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$109, %edx
	movl	$1, %esi
	leaq	.LC20(%rip), %rdi
	call	fwrite@PLT
	jmp	.L347
.L344:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	24(%rax), %r9d
	movq	-24(%rbp), %rax
	movzwl	20(%rax), %eax
	movswl	%ax, %r8d
	movq	-24(%rbp), %rax
	movzwl	22(%rax), %eax
	movswl	%ax, %ecx
	movq	-24(%rbp), %rax
	movzwl	16(%rax), %eax
	movswl	%ax, %edx
	movq	-24(%rbp), %rax
	movzwl	18(%rax), %eax
	movswl	%ax, %esi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	pushq	%rdi
	movl	-28(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	mm_idx_gen
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
.L347:
	cmpq	$0, -8(%rbp)
	je	.L348
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L349
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mm_idx_dump
.L349:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	leal	1(%rax), %ecx
	movq	-24(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	movq	-8(%rbp), %rdx
	movl	%eax, 20(%rdx)
.L348:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	mm_idx_reader_read, .-mm_idx_reader_read
	.globl	mm_idx_reader_eof
	.type	mm_idx_reader_eof, @function
mm_idx_reader_eof:
.LFB45:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L352
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	feof@PLT
	testl	%eax, %eax
	jne	.L353
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ftell@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L354
.L353:
	movl	$1, %eax
	jmp	.L357
.L354:
	movl	$0, %eax
	jmp	.L357
.L352:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	mm_bseq_eof@PLT
.L357:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	mm_idx_reader_eof, .-mm_idx_reader_eof
	.type	ks_getuntil, @function
ks_getuntil:
.LFB47:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ks_getuntil2@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	ks_getuntil, .-ks_getuntil
	.globl	rs_insertsort_bed
	.type	rs_insertsort_bed, @function
rs_insertsort_bed:
.LFB48:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -32(%rbp)
	jmp	.L361
.L366:
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	subq	$16, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L362
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L363
.L365:
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	-8(%rax), %rdx
	movq	-16(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	subq	$16, -24(%rbp)
.L363:
	movq	-24(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jbe	.L364
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rax
	subq	$16, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jl	.L365
.L364:
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
.L362:
	addq	$16, -32(%rbp)
.L361:
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L366
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	rs_insertsort_bed, .-rs_insertsort_bed
	.section	.rodata
.LC21:
	.string	"n_bits <= RS_MAX_BITS"
	.text
	.globl	rs_sort_bed
	.type	rs_sort_bed, @function
rs_sort_bed:
.LFB49:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4224, %rsp
	movq	%rdi, -4200(%rbp)
	movq	%rsi, -4208(%rbp)
	movl	%edx, -4212(%rbp)
	movl	%ecx, -4216(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-4212(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -4184(%rbp)
	movl	-4184(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4180(%rbp)
	movl	-4184(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	-4112(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -4152(%rbp)
	cmpl	$8, -4212(%rbp)
	jle	.L368
	leaq	__PRETTY_FUNCTION__.5265(%rip), %rcx
	movl	$611, %edx
	leaq	.LC8(%rip), %rsi
	leaq	.LC21(%rip), %rdi
	call	__assert_fail@PLT
.L368:
	leaq	-4112(%rbp), %rax
	movq	%rax, -4168(%rbp)
	jmp	.L369
.L370:
	movq	-4168(%rbp), %rax
	movq	-4200(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-4168(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-4168(%rbp), %rax
	movq	%rdx, (%rax)
	addq	$16, -4168(%rbp)
.L369:
	movq	-4168(%rbp), %rax
	cmpq	-4152(%rbp), %rax
	jne	.L370
	movq	-4200(%rbp), %rax
	movq	%rax, -4176(%rbp)
	jmp	.L371
.L372:
	movq	-4176(%rbp), %rax
	movl	(%rax), %edx
	movl	-4216(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	-4180(%rbp), %eax
	movslq	%eax, %rdx
	salq	$4, %rdx
	addq	%rbp, %rdx
	subq	$4104, %rdx
	movq	(%rdx), %rdx
	addq	$16, %rdx
	cltq
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$4104, %rax
	movq	%rdx, (%rax)
	addq	$16, -4176(%rbp)
.L371:
	movq	-4176(%rbp), %rax
	cmpq	-4208(%rbp), %rax
	jne	.L372
	leaq	-4112(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -4168(%rbp)
	jmp	.L373
.L374:
	movq	-4168(%rbp), %rax
	movq	8(%rax), %rax
	movq	-4168(%rbp), %rdx
	subq	$16, %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, %rcx
	movq	-4200(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	addq	%rax, %rdx
	movq	-4168(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-4168(%rbp), %rax
	subq	$16, %rax
	movq	8(%rax), %rdx
	movq	-4168(%rbp), %rax
	movq	%rdx, (%rax)
	addq	$16, -4168(%rbp)
.L373:
	movq	-4168(%rbp), %rax
	cmpq	-4152(%rbp), %rax
	jne	.L374
	leaq	-4112(%rbp), %rax
	movq	%rax, -4168(%rbp)
	jmp	.L375
.L380:
	movq	-4168(%rbp), %rax
	movq	(%rax), %rdx
	movq	-4168(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	je	.L376
	movq	-4168(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movl	-4216(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	-4180(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	-4112(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -4160(%rbp)
	movq	-4160(%rbp), %rax
	cmpq	-4168(%rbp), %rax
	je	.L377
	movq	-4168(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -4144(%rbp)
	movq	%rdx, -4136(%rbp)
.L378:
	movq	-4144(%rbp), %rax
	movq	-4136(%rbp), %rdx
	movq	%rax, -4128(%rbp)
	movq	%rdx, -4120(%rbp)
	movq	-4160(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -4144(%rbp)
	movq	%rdx, -4136(%rbp)
	movq	-4160(%rbp), %rax
	movq	(%rax), %rcx
	leaq	16(%rcx), %rdx
	movq	-4160(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-4128(%rbp), %rax
	movq	-4120(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movl	-4144(%rbp), %edx
	movl	-4216(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	-4180(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	-4112(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -4160(%rbp)
	movq	-4160(%rbp), %rax
	cmpq	-4168(%rbp), %rax
	jne	.L378
	movq	-4168(%rbp), %rax
	movq	(%rax), %rcx
	leaq	16(%rcx), %rdx
	movq	-4168(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-4144(%rbp), %rax
	movq	-4136(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	jmp	.L375
.L377:
	movq	-4168(%rbp), %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rdx
	movq	-4168(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L375
.L376:
	addq	$16, -4168(%rbp)
.L375:
	movq	-4168(%rbp), %rax
	cmpq	-4152(%rbp), %rax
	jne	.L380
	movq	-4200(%rbp), %rax
	movq	%rax, -4112(%rbp)
	leaq	-4112(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -4168(%rbp)
	jmp	.L381
.L382:
	movq	-4168(%rbp), %rax
	subq	$16, %rax
	movq	8(%rax), %rdx
	movq	-4168(%rbp), %rax
	movq	%rdx, (%rax)
	addq	$16, -4168(%rbp)
.L381:
	movq	-4168(%rbp), %rax
	cmpq	-4152(%rbp), %rax
	jne	.L382
	cmpl	$0, -4216(%rbp)
	je	.L391
	movl	-4216(%rbp), %eax
	cmpl	-4212(%rbp), %eax
	jle	.L384
	movl	-4216(%rbp), %eax
	subl	-4212(%rbp), %eax
	jmp	.L385
.L384:
	movl	$0, %eax
.L385:
	movl	%eax, -4216(%rbp)
	leaq	-4112(%rbp), %rax
	movq	%rax, -4168(%rbp)
	jmp	.L386
.L389:
	movq	-4168(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-4168(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	cmpq	$1024, %rax
	jle	.L387
	movq	-4168(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-4168(%rbp), %rax
	movq	(%rax), %rax
	movl	-4216(%rbp), %ecx
	movl	-4212(%rbp), %edx
	movq	%rax, %rdi
	call	rs_sort_bed
	jmp	.L388
.L387:
	movq	-4168(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-4168(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	cmpq	$16, %rax
	jle	.L388
	movq	-4168(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-4168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rs_insertsort_bed
.L388:
	addq	$16, -4168(%rbp)
.L386:
	movq	-4168(%rbp), %rax
	cmpq	-4152(%rbp), %rax
	jne	.L389
.L391:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L390
	call	__stack_chk_fail@PLT
.L390:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	rs_sort_bed, .-rs_sort_bed
	.globl	radix_sort_bed
	.type	radix_sort_bed, @function
radix_sort_bed:
.LFB50:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	cmpq	$1024, %rax
	jg	.L393
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rs_insertsort_bed
	jmp	.L395
.L393:
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$24, %ecx
	movl	$8, %edx
	movq	%rax, %rdi
	call	rs_sort_bed
.L395:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	radix_sort_bed, .-radix_sort_bed
	.section	.rodata
.LC22:
	.string	"r"
	.text
	.globl	mm_idx_read_bed
	.type	mm_idx_read_bed, @function
mm_idx_read_bed:
.LFB51:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movl	%edx, -180(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -64(%rbp)
	movl	$0, -60(%rbp)
	movq	$0, -56(%rbp)
	cmpq	$0, -176(%rbp)
	je	.L397
	movq	-176(%rbp), %rax
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L397
	movq	-176(%rbp), %rax
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	gzopen@PLT
	jmp	.L398
.L397:
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	fileno@PLT
	leaq	.LC22(%rip), %rsi
	movl	%eax, %edi
	call	gzdopen@PLT
.L398:
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L399
	movl	$0, %eax
	jmp	.L434
.L399:
	movq	-168(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %eax
	movl	$16, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ks_init@PLT
	movq	%rax, -80(%rbp)
	jmp	.L401
.L433:
	movl	$-1, -48(%rbp)
	movl	$-1, -44(%rbp)
	movl	$-1, -40(%rbp)
	movl	-36(%rbp), %eax
	orl	$1073741823, %eax
	movl	%eax, -36(%rbp)
	movzbl	-33(%rbp), %eax
	andl	$63, %eax
	movb	%al, -33(%rbp)
	movl	$-1, -152(%rbp)
	movl	$0, -148(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	$0, -156(%rbp)
.L419:
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L402
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L403
.L402:
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -140(%rbp)
	movq	-112(%rbp), %rax
	movb	$0, (%rax)
	cmpl	$0, -156(%rbp)
	jne	.L404
	movq	-104(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mm_idx_name2id
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	jns	.L405
	jmp	.L406
.L404:
	cmpl	$1, -156(%rbp)
	jne	.L407
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	atol@PLT
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	jns	.L405
	jmp	.L406
.L407:
	cmpl	$2, -156(%rbp)
	jne	.L408
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	atol@PLT
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	jns	.L405
	jmp	.L406
.L408:
	cmpl	$4, -156(%rbp)
	jne	.L409
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	atol@PLT
	sall	$2, %eax
	sarl	$2, %eax
	andl	$1073741823, %eax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	andl	$-1073741824, %eax
	orl	%edx, %eax
	movl	%eax, -36(%rbp)
	jmp	.L405
.L409:
	cmpl	$5, -156(%rbp)
	jne	.L410
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$43, %al
	je	.L411
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L412
	movl	$-1, %eax
	jmp	.L414
.L412:
	movl	$0, %eax
	jmp	.L414
.L411:
	movl	$1, %eax
.L414:
	sall	$6, %eax
	movl	%eax, %edx
	movzbl	-33(%rbp), %eax
	andl	$63, %eax
	orl	%edx, %eax
	movb	%al, -33(%rbp)
	jmp	.L405
.L410:
	cmpl	$9, -156(%rbp)
	jne	.L415
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L436
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	atol@PLT
	movl	%eax, -148(%rbp)
	jmp	.L405
.L415:
	cmpl	$10, -156(%rbp)
	jne	.L417
	movq	-104(%rbp), %rax
	movq	%rax, -128(%rbp)
	jmp	.L405
.L417:
	cmpl	$11, -156(%rbp)
	jne	.L405
	movq	-104(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.L406
.L405:
	cmpl	$0, -140(%rbp)
	je	.L437
	addl	$1, -156(%rbp)
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
.L403:
	addq	$1, -112(%rbp)
	jmp	.L419
.L436:
	nop
	jmp	.L406
.L437:
	nop
.L406:
	cmpl	$0, -152(%rbp)
	js	.L401
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	js	.L401
	movl	-48(%rbp), %edx
	movl	-44(%rbp), %eax
	cmpl	%eax, %edx
	jl	.L421
	jmp	.L401
.L421:
	movl	-152(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	cmpl	$10, -156(%rbp)
	jle	.L422
	cmpl	$0, -180(%rbp)
	je	.L422
	movq	-120(%rbp), %rax
	leaq	-120(%rbp), %rcx
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtol@PLT
	movl	%eax, -136(%rbp)
	movq	-120(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -120(%rbp)
	movq	-128(%rbp), %rax
	leaq	-128(%rbp), %rcx
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtol@PLT
	movl	%eax, -132(%rbp)
	movq	-128(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -128(%rbp)
	movl	-48(%rbp), %edx
	movl	-136(%rbp), %eax
	addl	%eax, %edx
	movl	-132(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	$1, -156(%rbp)
	jmp	.L423
.L428:
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jne	.L424
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L425
	movq	-72(%rbp), %rax
	movl	4(%rax), %edx
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	sarl	%eax
	addl	%eax, %edx
	jmp	.L426
.L425:
	movl	$16, %edx
.L426:
	movq	-72(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 8(%rax)
.L424:
	movq	-120(%rbp), %rax
	leaq	-120(%rbp), %rcx
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtol@PLT
	movl	%eax, -136(%rbp)
	movq	-120(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -120(%rbp)
	movq	-128(%rbp), %rax
	leaq	-128(%rbp), %rcx
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtol@PLT
	movl	%eax, -132(%rbp)
	movq	-128(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -128(%rbp)
	movl	-144(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-48(%rbp), %edx
	movl	-136(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	-48(%rbp), %edx
	movl	-136(%rbp), %eax
	addl	%eax, %edx
	movl	-132(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %eax
	cmpl	%eax, %edx
	jle	.L427
	movq	-72(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %ecx
	movq	-72(%rbp), %rdx
	movl	%ecx, (%rdx)
	cltq
	salq	$4, %rax
	leaq	(%rsi,%rax), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
.L427:
	addl	$1, -156(%rbp)
.L423:
	movl	-156(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jl	.L428
	jmp	.L401
.L422:
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jne	.L430
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L431
	movq	-72(%rbp), %rax
	movl	4(%rax), %edx
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	sarl	%eax
	addl	%eax, %edx
	jmp	.L432
.L431:
	movl	$16, %edx
.L432:
	movq	-72(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 8(%rax)
.L430:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %ecx
	movq	-72(%rbp), %rdx
	movl	%ecx, (%rdx)
	cltq
	salq	$4, %rax
	leaq	(%rsi,%rax), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
.L401:
	leaq	-64(%rbp), %rdx
	movq	-80(%rbp), %rax
	movl	$0, %ecx
	movl	$2, %esi
	movq	%rax, %rdi
	call	ks_getuntil
	testl	%eax, %eax
	jns	.L433
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ks_destroy@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	gzclose@PLT
	movq	-88(%rbp), %rax
.L434:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L435
	call	__stack_chk_fail@PLT
.L435:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	mm_idx_read_bed, .-mm_idx_read_bed
	.globl	mm_idx_bed_read
	.type	mm_idx_bed_read, @function
mm_idx_bed_read:
.LFB52:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L439
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	mm_idx_index_name
.L439:
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mm_idx_read_bed
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L440
	movl	$-1, %eax
	jmp	.L441
.L440:
	movl	$0, -4(%rbp)
	jmp	.L442
.L443:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cltq
	salq	$4, %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	radix_sort_bed
	addl	$1, -4(%rbp)
.L442:
	movq	-24(%rbp), %rax
	movl	16(%rax), %edx
	movl	-4(%rbp), %eax
	cmpl	%eax, %edx
	ja	.L443
	movl	$0, %eax
.L441:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	mm_idx_bed_read, .-mm_idx_bed_read
	.globl	mm_idx_bed_junc
	.type	mm_idx_bed_junc, @function
mm_idx_bed_junc:
.LFB53:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movq	%r8, -64(%rbp)
	movl	-52(%rbp), %eax
	subl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L445
	cmpl	$0, -44(%rbp)
	js	.L445
	movq	-40(%rbp), %rax
	movl	16(%rax), %edx
	movl	-44(%rbp), %eax
	cmpl	%eax, %edx
	ja	.L446
.L445:
	movl	$-1, %eax
	jmp	.L447
.L446:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
	jmp	.L448
.L450:
	movl	-16(%rbp), %eax
	subl	-20(%rbp), %eax
	sarl	%eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -48(%rbp)
	jg	.L449
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.L448
.L449:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.L448:
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.L450
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	.L451
.L454:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -48(%rbp)
	jg	.L452
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	4(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jl	.L452
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movzbl	15(%rax), %eax
	andl	$-64, %eax
	testb	%al, %al
	je	.L452
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movzbl	15(%rax), %eax
	andl	$-64, %eax
	cmpb	$64, %al
	jne	.L453
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	orl	$1, %ecx
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	4(%rax), %eax
	subl	$1, %eax
	subl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	4(%rax), %eax
	subl	$1, %eax
	subl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	orl	$2, %ecx
	movl	%ecx, %edx
	movb	%dl, (%rax)
	jmp	.L452
.L453:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	orl	$8, %ecx
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	4(%rax), %eax
	subl	$1, %eax
	subl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	4(%rax), %eax
	subl	$1, %eax
	subl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	orl	$4, %ecx
	movl	%ecx, %edx
	movb	%dl, (%rax)
.L452:
	addl	$1, -24(%rbp)
.L451:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L454
	movl	-20(%rbp), %eax
.L447:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	mm_idx_bed_junc, .-mm_idx_bed_junc
	.section	.rodata
	.align 8
	.type	__func__.4485, @object
	.size	__func__.4485, 12
__func__.4485:
	.string	"mm_idx_stat"
	.align 8
	.type	__PRETTY_FUNCTION__.4571, @object
	.size	__PRETTY_FUNCTION__.4571, 12
__PRETTY_FUNCTION__.4571:
	.string	"worker_post"
	.align 16
	.type	__PRETTY_FUNCTION__.4945, @object
	.size	__PRETTY_FUNCTION__.4945, 16
__PRETTY_FUNCTION__.4945:
	.string	"worker_pipeline"
	.align 8
	.type	__func__.4979, @object
	.size	__func__.4979, 11
__func__.4979:
	.string	"mm_idx_gen"
	.align 8
	.type	__PRETTY_FUNCTION__.5011, @object
	.size	__PRETTY_FUNCTION__.5011, 11
__PRETTY_FUNCTION__.5011:
	.string	"mm_idx_str"
	.align 8
	.type	__PRETTY_FUNCTION__.5066, @object
	.size	__PRETTY_FUNCTION__.5066, 12
__PRETTY_FUNCTION__.5066:
	.string	"mm_idx_load"
	.align 8
	.type	__PRETTY_FUNCTION__.5265, @object
	.size	__PRETTY_FUNCTION__.5265, 12
__PRETTY_FUNCTION__.5265:
	.string	"rs_sort_bed"
	.align 8
.LC0:
	.long	171798692
	.long	1072210903
	.align 8
.LC1:
	.long	0
	.long	1071644672
	.align 8
.LC3:
	.long	0
	.long	1079574528
	.align 8
.LC7:
	.long	0
	.long	1072693248
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
