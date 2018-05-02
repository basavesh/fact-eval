	.text
	.file	"Module"
	.p2align	4, 0x90         # -- Begin function fsum
	.type	fsum,@function
fsum:                                   # @fsum
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movq	%rsi, -16(%rsp)
	movb	$1, -17(%rsp)
	movq	(%rsi), %rax
	addq	%rax, (%rdi)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	8(%rcx), %rcx
	addq	%rcx, 8(%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	16(%rcx), %rcx
	addq	%rcx, 16(%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	24(%rcx), %rcx
	addq	%rcx, 24(%rax)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	32(%rcx), %rcx
	addq	%rcx, 32(%rax)
	retq
.Lfunc_end0:
	.size	fsum, .Lfunc_end0-fsum
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fdifference_backwards
	.type	fdifference_backwards,@function
fdifference_backwards:                  # @fdifference_backwards
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movq	%rsi, -24(%rsp)
	movb	$1, -33(%rsp)
	movabsq	$18014398509481832, %rax # imm = 0x3FFFFFFFFFFF68
	movq	%rax, -8(%rsp)
	leaq	144(%rax), %rcx
	movq	%rcx, -32(%rsp)
	addq	(%rsi), %rax
	subq	(%rdi), %rax
	movq	%rax, (%rdi)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	8(%rcx), %rcx
	addq	-32(%rsp), %rcx
	subq	8(%rax), %rcx
	movq	%rcx, 8(%rax)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	16(%rcx), %rcx
	addq	-32(%rsp), %rcx
	subq	16(%rax), %rcx
	movq	%rcx, 16(%rax)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	24(%rcx), %rcx
	addq	-32(%rsp), %rcx
	subq	24(%rax), %rcx
	movq	%rcx, 24(%rax)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	32(%rcx), %rcx
	addq	-32(%rsp), %rcx
	subq	32(%rax), %rcx
	movq	%rcx, 32(%rax)
	retq
.Lfunc_end1:
	.size	fdifference_backwards, .Lfunc_end1-fdifference_backwards
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fscalar_product
	.type	fscalar_product,@function
fscalar_product:                        # @fscalar_product
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movq	%rdx, -16(%rsp)
	movb	$1, -25(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, -48(%rsp)
	mulxq	(%rsi), %rcx, %rax
	movq	%rcx, -48(%rsp)
	movq	%rax, -40(%rsp)
	movb	$51, %al
	bzhiq	%rax, %rcx, %rcx
	movq	%rcx, (%rdi)
	movq	-8(%rsp), %rcx
	movq	8(%rcx), %rdx
	mulxq	-16(%rsp), %rcx, %rdx
	movq	-48(%rsp), %rsi
	movq	-40(%rsp), %rdi
	shldq	$13, %rsi, %rdi
	addq	%rcx, %rdi
	adcq	$0, %rdx
	movq	%rdi, -48(%rsp)
	movq	%rdx, -40(%rsp)
	movq	-24(%rsp), %rcx
	bzhiq	%rax, %rdi, %rdx
	movq	%rdx, 8(%rcx)
	movq	-8(%rsp), %rcx
	movq	16(%rcx), %rdx
	mulxq	-16(%rsp), %rcx, %rdx
	movq	-48(%rsp), %rsi
	movq	-40(%rsp), %rdi
	shldq	$13, %rsi, %rdi
	addq	%rcx, %rdi
	adcq	$0, %rdx
	movq	%rdi, -48(%rsp)
	movq	%rdx, -40(%rsp)
	movq	-24(%rsp), %rcx
	bzhiq	%rax, %rdi, %rdx
	movq	%rdx, 16(%rcx)
	movq	-8(%rsp), %rcx
	movq	24(%rcx), %rdx
	mulxq	-16(%rsp), %rcx, %rdx
	movq	-48(%rsp), %rsi
	movq	-40(%rsp), %rdi
	shldq	$13, %rsi, %rdi
	addq	%rcx, %rdi
	adcq	$0, %rdx
	movq	%rdi, -48(%rsp)
	movq	%rdx, -40(%rsp)
	movq	-24(%rsp), %rcx
	bzhiq	%rax, %rdi, %rdx
	movq	%rdx, 24(%rcx)
	movq	-8(%rsp), %rcx
	movq	32(%rcx), %rdx
	mulxq	-16(%rsp), %rcx, %rdx
	movq	-48(%rsp), %rsi
	movq	-40(%rsp), %rdi
	shldq	$13, %rsi, %rdi
	addq	%rcx, %rdi
	adcq	$0, %rdx
	movq	%rdi, -48(%rsp)
	movq	%rdx, -40(%rsp)
	movq	-24(%rsp), %rcx
	bzhiq	%rax, %rdi, %rax
	movq	%rax, 32(%rcx)
	movq	-24(%rsp), %rax
	movq	-48(%rsp), %rcx
	movq	-40(%rsp), %rdx
	shldq	$13, %rcx, %rdx
	leaq	(%rdx,%rdx,4), %rcx
	shlq	$2, %rcx
	subq	%rdx, %rcx
	addq	%rcx, (%rax)
	retq
.Lfunc_end2:
	.size	fscalar_product, .Lfunc_end2-fscalar_product
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fmul
	.type	fmul,@function
fmul:                                   # @fmul
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	andq	$-32, %rsp
	subq	$224, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, 120(%rsp)
	movq	%rsi, 208(%rsp)
	movq	%rdx, 216(%rsp)
	movb	$1, 79(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 176(%rsp)
	vmovaps	%ymm0, 160(%rsp)
	vmovaps	%ymm0, 128(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 32(%rsp)
	movq	(%rdx), %rax
	movq	%rax, 40(%rsp)
	movq	216(%rsp), %rax
	movq	8(%rax), %rcx
	movq	%rcx, 24(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 48(%rsp)
	movq	24(%rax), %rcx
	movq	%rcx, 64(%rsp)
	movq	32(%rax), %rax
	movq	%rax, 56(%rsp)
	movq	208(%rsp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 112(%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 104(%rsp)
	movq	16(%rcx), %rcx
	movq	%rcx, 96(%rsp)
	movq	208(%rsp), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, 88(%rsp)
	movq	208(%rsp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, 80(%rsp)
	mulxq	40(%rsp), %rsi, %rdx
	movq	%rdx, 136(%rsp)
	movq	%rsi, 128(%rsp)
	movq	%rax, %rdx
	mulxq	40(%rsp), %rsi, %rax
	movq	24(%rsp), %rdx
	mulxq	112(%rsp), %rdx, %rdi
	addq	%rsi, %rdx
	adcq	%rax, %rdi
	movq	%rdx, 144(%rsp)
	movq	%rdi, 152(%rsp)
	movq	%rcx, %rdx
	mulxq	40(%rsp), %rcx, %rax
	movq	48(%rsp), %rdx
	mulxq	112(%rsp), %rsi, %rdi
	addq	%rcx, %rsi
	adcq	%rax, %rdi
	movq	24(%rsp), %rdx
	mulxq	104(%rsp), %rax, %rcx
	addq	%rsi, %rax
	adcq	%rdi, %rcx
	movq	%rax, 160(%rsp)
	movq	%rcx, 168(%rsp)
	movq	40(%rsp), %rdx
	mulxq	88(%rsp), %rcx, %rax
	movq	64(%rsp), %rdx
	mulxq	112(%rsp), %rsi, %rdi
	addq	%rcx, %rsi
	adcq	%rax, %rdi
	movq	24(%rsp), %rdx
	mulxq	96(%rsp), %rax, %rcx
	addq	%rsi, %rax
	adcq	%rdi, %rcx
	movq	48(%rsp), %rdx
	mulxq	104(%rsp), %rdx, %rsi
	addq	%rax, %rdx
	adcq	%rcx, %rsi
	movq	%rdx, 176(%rsp)
	movq	%rsi, 184(%rsp)
	movq	40(%rsp), %rdx
	mulxq	80(%rsp), %rcx, %rax
	movq	56(%rsp), %rdx
	mulxq	112(%rsp), %rsi, %rdi
	addq	%rcx, %rsi
	adcq	%rax, %rdi
	movq	64(%rsp), %rdx
	mulxq	104(%rsp), %rax, %rcx
	addq	%rsi, %rax
	adcq	%rdi, %rcx
	movq	24(%rsp), %rdx
	mulxq	88(%rsp), %rsi, %rdi
	addq	%rax, %rsi
	adcq	%rcx, %rdi
	movq	48(%rsp), %rdx
	mulxq	96(%rsp), %rax, %rcx
	addq	%rsi, %rax
	adcq	%rdi, %rcx
	movq	%rax, 192(%rsp)
	movq	%rcx, 200(%rsp)
	movq	56(%rsp), %rax
	leaq	(%rax,%rax,4), %r14
	shlq	$2, %r14
	subq	%rax, %r14
	movq	%r14, 56(%rsp)
	movq	24(%rsp), %rax
	leaq	(%rax,%rax,4), %rdi
	shlq	$2, %rdi
	subq	%rax, %rdi
	movq	%rdi, 24(%rsp)
	movq	48(%rsp), %rax
	leaq	(%rax,%rax,4), %r8
	shlq	$2, %r8
	subq	%rax, %r8
	movq	64(%rsp), %r11
	leaq	(%r11,%r11,4), %rsi
	movq	%r14, %rdx
	mulxq	104(%rsp), %r10, %r9
	shlq	$2, %rsi
	movq	%rdi, %rdx
	mulxq	80(%rsp), %rdi, %rax
	subq	%r11, %rsi
	addq	%r10, %rdi
	adcq	%r9, %rax
	movq	%r8, %rdx
	mulxq	88(%rsp), %rcx, %rbx
	addq	%rdi, %rcx
	adcq	%rax, %rbx
	movq	%rsi, %rdx
	mulxq	96(%rsp), %rax, %rdx
	addq	%rcx, %rax
	adcq	%rbx, %rdx
	addq	128(%rsp), %rax
	adcq	136(%rsp), %rdx
	movq	%rax, 128(%rsp)
	movq	%rdx, 136(%rsp)
	movq	%r14, %rdx
	mulxq	96(%rsp), %rcx, %rdi
	movq	%r8, %rdx
	mulxq	80(%rsp), %rbx, %rax
	addq	%rcx, %rbx
	adcq	%rdi, %rax
	movq	%rsi, %rdx
	mulxq	88(%rsp), %rdi, %rcx
	addq	%rbx, %rdi
	adcq	%rax, %rcx
	addq	144(%rsp), %rdi
	adcq	152(%rsp), %rcx
	movq	%rsi, 64(%rsp)
	movq	%rdi, 144(%rsp)
	movq	%rcx, 152(%rsp)
	movq	56(%rsp), %rdx
	mulxq	88(%rsp), %rbx, %r9
	movq	64(%rsp), %rdx
	mulxq	80(%rsp), %rax, %rsi
	addq	%rbx, %rax
	adcq	%r9, %rsi
	addq	160(%rsp), %rax
	adcq	168(%rsp), %rsi
	movq	%r8, 48(%rsp)
	movq	%rax, 160(%rsp)
	movq	56(%rsp), %rdx
	mulxq	80(%rsp), %rdx, %rbx
	movq	%rsi, 168(%rsp)
	addq	176(%rsp), %rdx
	adcq	184(%rsp), %rbx
	movq	%rdx, 176(%rsp)
	movq	%rbx, 184(%rsp)
	movb	$51, %r8b
	bzhiq	%r8, 128(%rsp), %rbx
	movq	%rbx, 40(%rsp)
	movq	128(%rsp), %rbx
	movq	136(%rsp), %rdx
	shldq	$13, %rbx, %rdx
	movq	%rdx, 32(%rsp)
	addq	%rdi, %rdx
	adcq	$0, %rcx
	movq	%rdx, 144(%rsp)
	movq	%rcx, 152(%rsp)
	bzhiq	%r8, %rdx, %rdi
	movq	%rdi, 24(%rsp)
	shldq	$13, %rdx, %rcx
	movq	%rcx, 32(%rsp)
	addq	%rax, %rcx
	adcq	$0, %rsi
	movq	%rcx, 160(%rsp)
	movq	%rsi, 168(%rsp)
	bzhiq	%r8, %rcx, %rax
	movq	%rax, 48(%rsp)
	shldq	$13, %rcx, %rsi
	movq	%rsi, 32(%rsp)
	movq	176(%rsp), %rax
	movq	184(%rsp), %rcx
	addq	32(%rsp), %rax
	adcq	$0, %rcx
	movq	%rax, 176(%rsp)
	movq	%rcx, 184(%rsp)
	bzhiq	%r8, %rax, %rdx
	movq	%rdx, 64(%rsp)
	shldq	$13, %rax, %rcx
	movq	%rcx, 32(%rsp)
	movq	192(%rsp), %rax
	movq	200(%rsp), %rcx
	addq	32(%rsp), %rax
	adcq	$0, %rcx
	movq	%rax, 192(%rsp)
	movq	%rcx, 200(%rsp)
	bzhiq	%r8, %rax, %rdx
	movq	%rdx, 56(%rsp)
	shldq	$13, %rax, %rcx
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rax
	leaq	(%rax,%rax,4), %rcx
	shlq	$2, %rcx
	subq	%rax, %rcx
	addq	40(%rsp), %rcx
	movq	%rcx, 40(%rsp)
	shrq	$51, %rcx
	movq	%rcx, 32(%rsp)
	bzhiq	%r8, 40(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	24(%rsp), %rcx
	addq	32(%rsp), %rcx
	movq	%rcx, 24(%rsp)
	shrq	$51, %rcx
	movq	%rcx, 32(%rsp)
	andw	$7, 30(%rsp)
	addq	%rcx, 48(%rsp)
	movq	120(%rsp), %rcx
	movq	%rax, (%rcx)
	movq	120(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	120(%rsp), %rax
	movq	48(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	120(%rsp), %rax
	movq	64(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	120(%rsp), %rax
	movq	56(%rsp), %rcx
	movq	%rcx, 32(%rax)
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	vzeroupper
	retq
.Lfunc_end3:
	.size	fmul, .Lfunc_end3-fmul
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fsquare_times
	.type	fsquare_times,@function
fsquare_times:                          # @fsquare_times
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$256, %rsp              # imm = 0x100
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, 56(%rsp)
	movq	%rsi, 224(%rsp)
	movq	%rdx, 216(%rsp)
	movb	$1, 31(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 112(%rsp)
	vmovaps	%ymm0, 96(%rsp)
	vmovaps	%ymm0, 64(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, (%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 192(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 16(%rsp)
	movq	224(%rsp), %rax
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 32(%rsp)
	movq	24(%rax), %rcx
	movq	%rcx, 48(%rsp)
	movq	32(%rax), %rax
	movq	%rax, 40(%rsp)
	movq	$0, 168(%rsp)
	jmp	.LBB4_1
	.p2align	4, 0x90
.LBB4_2:                                # %loop_body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	16(%rsp), %rdx
	leaq	(%rdx,%rdx), %r10
	movq	%r10, 184(%rsp)
	movq	8(%rsp), %rdi
	leaq	(%rdi,%rdi), %r8
	movq	%r8, 176(%rsp)
	movq	32(%rsp), %r15
	imulq	$38, %r15, %r13
	movq	%r13, 208(%rsp)
	movq	40(%rsp), %r9
	leaq	(%r9,%r9,4), %rbx
	shlq	$2, %rbx
	subq	%r9, %rbx
	movq	%rbx, 192(%rsp)
	leaq	(%rbx,%rbx), %rsi
	movq	%rsi, 200(%rsp)
	mulxq	%rdx, %rcx, %r12
	movq	%rsi, %rdx
	mulxq	%rdi, %rax, %r11
	addq	%rcx, %rax
	adcq	%r12, %r11
	movq	48(%rsp), %r12
	movq	%r13, %rdx
	mulxq	%r12, %rdx, %rcx
	addq	%rax, %rdx
	adcq	%r11, %rcx
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r10, %rdx
	mulxq	%rdi, %r13, %r11
	movq	%rsi, %rdx
	mulxq	%r15, %rax, %r14
	addq	%r13, %rax
	adcq	%r11, %r14
	leaq	(%r12,%r12,4), %rcx
	shlq	$2, %rcx
	subq	%r12, %rcx
	movq	%r12, %rdx
	mulxq	%rcx, %rcx, %rdx
	addq	%rax, %rcx
	adcq	%r14, %rdx
	movq	%rcx, 80(%rsp)
	movq	%rdx, 88(%rsp)
	movq	%r10, %rdx
	mulxq	%r15, %rcx, %r11
	movq	%rdi, %rdx
	mulxq	%rdi, %rdi, %rax
	addq	%rcx, %rdi
	adcq	%r11, %rax
	movq	%rsi, %rdx
	mulxq	%r12, %rcx, %rdx
	addq	%rdi, %rcx
	adcq	%rax, %rdx
	movq	%rcx, 96(%rsp)
	movq	%rdx, 104(%rsp)
	movq	%r10, %rdx
	mulxq	%r12, %rcx, %rax
	movq	%r8, %rdx
	mulxq	%r15, %rsi, %rdi
	addq	%rcx, %rsi
	adcq	%rax, %rdi
	movq	%r9, %rdx
	mulxq	%rbx, %rax, %rcx
	addq	%rsi, %rax
	adcq	%rdi, %rcx
	movq	%rcx, 120(%rsp)
	movq	%rax, 112(%rsp)
	movq	184(%rsp), %rdx
	mulxq	40(%rsp), %rcx, %rax
	movq	176(%rsp), %rdx
	mulxq	48(%rsp), %rsi, %rdi
	addq	%rcx, %rsi
	adcq	%rax, %rdi
	movq	32(%rsp), %rdx
	mulxq	%rdx, %rax, %rcx
	addq	%rsi, %rax
	adcq	%rdi, %rcx
	movq	%rax, 128(%rsp)
	movq	%rcx, 136(%rsp)
	movb	$51, %sil
	bzhiq	%rsi, 64(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	64(%rsp), %rax
	movq	72(%rsp), %rcx
	shldq	$13, %rax, %rcx
	movq	%rcx, (%rsp)
	movq	88(%rsp), %rax
	addq	80(%rsp), %rcx
	adcq	$0, %rax
	movq	%rcx, 80(%rsp)
	movq	%rax, 88(%rsp)
	bzhiq	%rsi, %rcx, %rdx
	movq	%rdx, 8(%rsp)
	shldq	$13, %rcx, %rax
	movq	%rax, (%rsp)
	movq	104(%rsp), %rcx
	addq	96(%rsp), %rax
	adcq	$0, %rcx
	movq	%rax, 96(%rsp)
	movq	%rcx, 104(%rsp)
	bzhiq	%rsi, %rax, %rdx
	movq	%rdx, 32(%rsp)
	shldq	$13, %rax, %rcx
	movq	%rcx, (%rsp)
	movq	120(%rsp), %rax
	addq	112(%rsp), %rcx
	adcq	$0, %rax
	movq	%rcx, 112(%rsp)
	movq	%rax, 120(%rsp)
	bzhiq	%rsi, %rcx, %rdx
	movq	%rdx, 48(%rsp)
	shldq	$13, %rcx, %rax
	movq	%rax, (%rsp)
	movq	128(%rsp), %rax
	movq	136(%rsp), %rcx
	addq	(%rsp), %rax
	adcq	$0, %rcx
	movq	%rax, 128(%rsp)
	movq	%rcx, 136(%rsp)
	bzhiq	%rsi, %rax, %rdx
	movq	%rdx, 40(%rsp)
	shldq	$13, %rax, %rcx
	movq	%rcx, (%rsp)
	movq	(%rsp), %rax
	leaq	(%rax,%rax,4), %rcx
	shlq	$2, %rcx
	subq	%rax, %rcx
	addq	16(%rsp), %rcx
	movq	%rcx, 16(%rsp)
	movabsq	$2251799813685247, %rax # imm = 0x7FFFFFFFFFFFF
	movq	%rax, %rdx
	andq	%rdx, 16(%rsp)
	shrq	$51, %rcx
	movq	%rcx, (%rsp)
	movq	8(%rsp), %rax
	addq	(%rsp), %rax
	movq	%rax, 8(%rsp)
	shrq	$51, %rax
	movq	%rax, (%rsp)
	andq	%rdx, 8(%rsp)
	addq	%rax, 32(%rsp)
	addq	$1, 168(%rsp)
.LBB4_1:                                # %loop_check
                                        # =>This Inner Loop Header: Depth=1
	movq	168(%rsp), %rax
	cmpq	216(%rsp), %rax
	jb	.LBB4_2
# %bb.3:                                # %loop_end
	movq	56(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	56(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	56(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	56(%rsp), %rax
	movq	48(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	56(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	%rcx, 32(%rax)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
.Lfunc_end4:
	.size	fsquare_times, .Lfunc_end4-fsquare_times
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function load_limb
	.type	load_limb,@function
load_limb:                              # @load_limb
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movb	$1, -17(%rsp)
	movq	$0, -16(%rsp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)
	retq
.Lfunc_end5:
	.size	load_limb, .Lfunc_end5-load_limb
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function store_limb
	.type	store_limb,@function
store_limb:                             # @store_limb
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movq	%rsi, -24(%rsp)
	movb	$1, -1(%rsp)
	movb	-24(%rsp), %al
	movb	%al, (%rdi)
	movq	-16(%rsp), %rax
	movb	-23(%rsp), %cl
	movb	%cl, 1(%rax)
	movq	-16(%rsp), %rax
	movb	-22(%rsp), %cl
	movb	%cl, 2(%rax)
	movq	-16(%rsp), %rax
	movb	-21(%rsp), %cl
	movb	%cl, 3(%rax)
	movq	-16(%rsp), %rax
	movb	-20(%rsp), %cl
	movb	%cl, 4(%rax)
	movq	-16(%rsp), %rax
	movb	-19(%rsp), %cl
	movb	%cl, 5(%rax)
	movq	-16(%rsp), %rax
	movb	-18(%rsp), %cl
	movb	%cl, 6(%rax)
	movq	-16(%rsp), %rax
	movb	-17(%rsp), %cl
	movb	%cl, 7(%rax)
	retq
.Lfunc_end6:
	.size	store_limb, .Lfunc_end6-store_limb
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fexpand
	.type	fexpand,@function
fexpand:                                # @fexpand
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$112, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	%rbx, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movb	$1, 15(%rsp)
	movq	%rsi, 104(%rsp)
	movq	%rsi, 96(%rsp)
	movq	%rsi, %rdi
	callq	load_limb
	movb	$51, %cl
	bzhiq	%rcx, %rax, %rax
	movq	%rax, (%rbx)
	movq	24(%rsp), %rbx
	movq	16(%rsp), %rdi
	addq	$6, %rdi
	movq	%rdi, 88(%rsp)
	movq	%rdi, 80(%rsp)
	callq	load_limb
	movl	$13059, %ecx            # imm = 0x3303
	bextrq	%rcx, %rax, %rax
	movq	%rax, 8(%rbx)
	movq	24(%rsp), %rbx
	movq	16(%rsp), %rdi
	addq	$12, %rdi
	movq	%rdi, 72(%rsp)
	movq	%rdi, 64(%rsp)
	callq	load_limb
	movl	$13062, %ecx            # imm = 0x3306
	bextrq	%rcx, %rax, %rax
	movq	%rax, 16(%rbx)
	movq	24(%rsp), %rbx
	movq	16(%rsp), %rdi
	addq	$19, %rdi
	movq	%rdi, 56(%rsp)
	movq	%rdi, 48(%rsp)
	callq	load_limb
	movl	$13057, %ecx            # imm = 0x3301
	bextrq	%rcx, %rax, %rax
	movq	%rax, 24(%rbx)
	movq	24(%rsp), %rbx
	movq	16(%rsp), %rdi
	addq	$24, %rdi
	movq	%rdi, 40(%rsp)
	movq	%rdi, 32(%rsp)
	callq	load_limb
	movl	$13068, %ecx            # imm = 0x330C
	bextrq	%rcx, %rax, %rax
	movq	%rax, 32(%rbx)
	addq	$112, %rsp
	popq	%rbx
	retq
.Lfunc_end7:
	.size	fexpand, .Lfunc_end7-fexpand
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fcontract
	.type	fcontract,@function
fcontract:                              # @fcontract
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	andq	$-32, %rsp
	subq	$192, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, 104(%rsp)
	movq	%rsi, 176(%rsp)
	movb	$1, 103(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 48(%rsp)
	vmovaps	%ymm0, 32(%rsp)
	vmovaps	%ymm0, (%rsp)
	movq	(%rsi), %rdi
	movq	%rdi, (%rsp)
	movq	$0, 8(%rsp)
	movq	8(%rsi), %rax
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	16(%rsi), %rcx
	movq	%rcx, 32(%rsp)
	movq	$0, 40(%rsp)
	movq	24(%rsi), %rcx
	movq	%rcx, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	32(%rsi), %r9
	movq	%r9, 64(%rsp)
	movq	$0, 72(%rsp)
	shrq	$51, %rdi
	xorl	%esi, %esi
	addq	%rax, %rdi
	setb	%sil
	movq	%rsi, 24(%rsp)
	movq	%rdi, 16(%rsp)
	movb	$51, %r8b
	bzhiq	%r8, (%rsp), %rax
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	40(%rsp), %rdx
	shldq	$13, %rdi, %rsi
	addq	32(%rsp), %rsi
	adcq	$0, %rdx
	bzhiq	%r8, %rdi, %r10
	movq	%r10, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	%rdx, %rdi
	shldq	$13, %rsi, %rdi
	shrq	$51, %rdx
	addq	%rcx, %rdi
	adcq	$0, %rdx
	movq	%rdi, 48(%rsp)
	movq	%rdx, 56(%rsp)
	bzhiq	%r8, %rsi, %r11
	movq	%r11, 32(%rsp)
	movq	$0, 40(%rsp)
	movq	%rdx, %rcx
	shldq	$13, %rdi, %rcx
	shrq	$51, %rdx
	addq	%r9, %rcx
	adcq	$0, %rdx
	movq	%rcx, 64(%rsp)
	movq	%rdx, 72(%rsp)
	bzhiq	%r8, %rdi, %r14
	movq	%r14, 48(%rsp)
	shldq	$13, %rcx, %rdx
	movl	$19, %r9d
	mulxq	%r9, %rsi, %rbx
	movq	$0, 56(%rsp)
	addq	%rax, %rsi
	adcq	$0, %rbx
	movq	%rsi, (%rsp)
	movq	%rbx, 8(%rsp)
	bzhiq	%r8, %rcx, %rcx
	movq	%rcx, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	%rbx, %rdx
	shrq	$51, %rdx
	shldq	$13, %rsi, %rbx
	addq	%r10, %rbx
	adcq	$0, %rdx
	movq	%rbx, 16(%rsp)
	movq	%rdx, 24(%rsp)
	bzhiq	%r8, %rsi, %rax
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%rdx, %rdi
	shrq	$51, %rdi
	shldq	$13, %rbx, %rdx
	addq	%r11, %rdx
	adcq	$0, %rdi
	movq	%rdx, 32(%rsp)
	movq	%rdi, 40(%rsp)
	bzhiq	%r8, %rbx, %rbx
	movq	%rbx, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	%rdi, %rsi
	shrq	$51, %rsi
	shldq	$13, %rdx, %rdi
	addq	%r14, %rdi
	adcq	$0, %rsi
	movq	%rdi, 48(%rsp)
	movq	%rsi, 56(%rsp)
	bzhiq	%r8, %rdx, %rdx
	movq	%rdx, 32(%rsp)
	movq	$0, 40(%rsp)
	movq	%rsi, %rdx
	shrq	$51, %rdx
	shldq	$13, %rdi, %rsi
	addq	%rcx, %rsi
	adcq	$0, %rdx
	movq	%rsi, 64(%rsp)
	movq	%rdx, 72(%rsp)
	bzhiq	%r8, %rdi, %rcx
	movq	%rcx, 48(%rsp)
	shldq	$13, %rsi, %rdx
	mulxq	%r9, %rdi, %rcx
	addq	%rax, %rdi
	adcq	$0, %rcx
	movq	$0, 56(%rsp)
	bzhiq	%r8, %rsi, %rax
	movq	%rax, 64(%rsp)
	movq	$0, 72(%rsp)
	addq	$19, %rdi
	adcq	$0, %rcx
	movq	%rdi, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rcx, %rdx
	shrq	$51, %rdx
	shldq	$13, %rdi, %rcx
	addq	16(%rsp), %rcx
	adcq	24(%rsp), %rdx
	movq	%rcx, 16(%rsp)
	movq	%rdx, 24(%rsp)
	bzhiq	%r8, %rdi, %r10
	movq	%r10, (%rsp)
	movq	$0, 8(%rsp)
	movq	%rdx, %rdi
	shrq	$51, %rdi
	shldq	$13, %rcx, %rdx
	addq	32(%rsp), %rdx
	adcq	40(%rsp), %rdi
	movq	%rdx, 32(%rsp)
	movq	%rdi, 40(%rsp)
	bzhiq	%r8, %rcx, %rax
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	%rdi, %rbx
	shrq	$51, %rbx
	shldq	$13, %rdx, %rdi
	addq	48(%rsp), %rdi
	adcq	56(%rsp), %rbx
	movq	%rdi, 48(%rsp)
	movq	%rbx, 56(%rsp)
	bzhiq	%r8, %rdx, %r11
	movq	%r11, 32(%rsp)
	movq	$0, 40(%rsp)
	movq	%rbx, %rax
	shrq	$51, %rax
	shldq	$13, %rdi, %rbx
	addq	64(%rsp), %rbx
	adcq	72(%rsp), %rax
	movq	%rbx, 64(%rsp)
	movq	%rax, 72(%rsp)
	bzhiq	%r8, %rdi, %r14
	movq	%r14, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	%rax, %rdx
	shldq	$13, %rbx, %rdx
	shrq	$51, %rax
	leaq	(%rax,%rax,4), %rsi
	shlq	$2, %rsi
	mulxq	%r9, %rdi, %r15
	subq	%rax, %rsi
	addq	%r10, %rdi
	adcq	%rsi, %r15
	movq	%rdi, (%rsp)
	movq	%r15, 8(%rsp)
	bzhiq	%r8, %rbx, %rax
	movq	%rax, 64(%rsp)
	movq	$0, 72(%rsp)
	movabsq	$2251799813685229, %rbx # imm = 0x7FFFFFFFFFFED
	addq	%rdi, %rbx
	adcq	$0, %r15
	movq	%r15, 8(%rsp)
	movq	%rbx, (%rsp)
	movq	24(%rsp), %rsi
	movabsq	$2251799813685247, %r9  # imm = 0x7FFFFFFFFFFFF
	movq	16(%rsp), %rdi
	addq	%r9, %rdi
	adcq	$0, %rsi
	addq	%r9, %r11
	addq	%r9, %r14
	movq	%r15, %rdx
	shrq	$51, %rdx
	shldq	$13, %rbx, %r15
	addq	%rdi, %r15
	adcq	%rsi, %rdx
	movq	%rdx, %rcx
	shrq	$51, %rcx
	shldq	$13, %r15, %rdx
	addq	%r11, %rdx
	adcq	$0, %rcx
	movq	%rcx, %rdi
	shrq	$51, %rdi
	shldq	$13, %rdx, %rcx
	addq	%r14, %rcx
	adcq	$0, %rdi
	shldq	$13, %rcx, %rdi
	addq	%rax, %rdi
	bzhiq	%r8, %rbx, %rax
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	bzhiq	%r8, %r15, %rsi
	movq	%rsi, 16(%rsp)
	movq	$0, 24(%rsp)
	bzhiq	%r8, %rdx, %rax
	movq	%rax, 32(%rsp)
	movq	$0, 40(%rsp)
	addq	%r9, %rdi
	bzhiq	%r8, %rcx, %rax
	movq	%rax, 48(%rsp)
	movq	$0, 56(%rsp)
	bzhiq	%r8, %rdi, %rax
	movq	%rax, 64(%rsp)
	movq	104(%rsp), %rax
	movq	%rax, 168(%rsp)
	movq	104(%rsp), %rdi
	movq	%rdi, 160(%rsp)
	movq	$0, 72(%rsp)
	shlq	$51, %rsi
	orq	(%rsp), %rsi
	vzeroupper
	callq	store_limb
	movq	104(%rsp), %rdi
	addq	$8, %rdi
	movq	%rdi, 152(%rsp)
	movq	%rdi, 144(%rsp)
	movq	16(%rsp), %rax
	movq	24(%rsp), %rcx
	shldq	$51, %rax, %rcx
	movq	32(%rsp), %rsi
	shlq	$38, %rsi
	orq	%rcx, %rsi
	callq	store_limb
	movq	104(%rsp), %rdi
	addq	$16, %rdi
	movq	%rdi, 136(%rsp)
	movq	%rdi, 128(%rsp)
	movq	32(%rsp), %rax
	movq	40(%rsp), %rcx
	shldq	$38, %rax, %rcx
	movq	48(%rsp), %rsi
	shlq	$25, %rsi
	orq	%rcx, %rsi
	callq	store_limb
	movq	104(%rsp), %rdi
	addq	$24, %rdi
	movq	%rdi, 120(%rsp)
	movq	%rdi, 112(%rsp)
	movq	48(%rsp), %rax
	movq	56(%rsp), %rcx
	shldq	$25, %rax, %rcx
	movq	64(%rsp), %rsi
	shlq	$12, %rsi
	orq	%rcx, %rsi
	callq	store_limb
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	fcontract, .Lfunc_end8-fcontract
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fmonty
	.type	fmonty,@function
fmonty:                                 # @fmonty
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	andq	$-32, %rsp
	subq	$512, %rsp              # imm = 0x200
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, 56(%rsp)
	movq	%rsi, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%rcx, 32(%rsp)
	movq	%r8, 24(%rsp)
	movq	%r9, 16(%rsp)
	movb	$1, 15(%rsp)
	movq	32(%r8), %rax
	movq	%rax, 496(%rsp)
	vmovups	(%r8), %ymm0
	vmovups	%ymm0, 464(%rsp)
	movq	16(%rbp), %rax
	vmovups	(%rax), %ymm0
	vmovups	%ymm0, 112(%rsp)
	movq	32(%rax), %rax
	movq	%rax, 144(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm0, 416(%rsp)
	vmovaps	%ymm0, 352(%rsp)
	movq	$0, 448(%rsp)
	movq	$0, 384(%rsp)
	vmovaps	%ymm0, 288(%rsp)
	movq	$0, 320(%rsp)
	vmovaps	%ymm0, 64(%rsp)
	movq	$0, 96(%rsp)
	vmovaps	%ymm0, 160(%rsp)
	vmovaps	%ymm0, 224(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 256(%rsp)
	movq	24(%rsp), %rdi
	movq	16(%rsp), %rsi
	vzeroupper
	callq	fsum
	movq	16(%rsp), %rdi
	leaq	464(%rsp), %rsi
	callq	fdifference_backwards
	movq	16(%rbp), %rdi
	movq	24(%rbp), %rsi
	callq	fsum
	movq	24(%rbp), %rdi
	leaq	112(%rsp), %rsi
	callq	fdifference_backwards
	movq	16(%rbp), %rsi
	movq	16(%rsp), %rdx
	leaq	64(%rsp), %rdi
	callq	fmul
	movq	24(%rsp), %rsi
	movq	24(%rbp), %rdx
	leaq	160(%rsp), %rdi
	callq	fmul
	movl	$0, 8(%rsp)
	cmpl	$4, 8(%rsp)
	ja	.LBB9_3
	.p2align	4, 0x90
.LBB9_2:                                # %loop_body
                                        # =>This Inner Loop Header: Depth=1
	movslq	8(%rsp), %rax
	movq	64(%rsp,%rax,8), %rcx
	movq	%rcx, 112(%rsp,%rax,8)
	leal	1(%rax), %eax
	movl	%eax, 8(%rsp)
	cmpl	$4, 8(%rsp)
	jbe	.LBB9_2
.LBB9_3:                                # %loop_end
	leaq	64(%rsp), %r14
	leaq	160(%rsp), %r15
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	fsum
	leaq	112(%rsp), %rsi
	movq	%r15, %rdi
	callq	fdifference_backwards
	movq	40(%rsp), %rdi
	movl	$1, %edx
	movq	%r14, %rsi
	callq	fsquare_times
	leaq	224(%rsp), %rbx
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	fsquare_times
	movq	32(%rsp), %rdi
	movq	32(%rbp), %rdx
	movq	%rbx, %rsi
	callq	fmul
	movq	24(%rsp), %rsi
	leaq	352(%rsp), %r14
	movl	$1, %edx
	movq	%r14, %rdi
	callq	fsquare_times
	movq	16(%rsp), %rsi
	leaq	288(%rsp), %rbx
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	fsquare_times
	movq	56(%rsp), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	fmul
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	fdifference_backwards
	leaq	416(%rsp), %r15
	movl	$121665, %edx           # imm = 0x1DB41
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	fscalar_product
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	fsum
	movq	48(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	fmul
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	fmonty, .Lfunc_end9-fmonty
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function swap_conditional
	.type	swap_conditional,@function
swap_conditional:                       # @swap_conditional
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, 24(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, 32(%rsp)
	movb	$1, 3(%rsp)
	cmpq	$1, %rdx
	sete	2(%rsp)
	movl	$0, 4(%rsp)
	cmpl	$4, 4(%rsp)
	ja	.LBB10_3
	.p2align	4, 0x90
.LBB10_2:                               # %loop_body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rsp), %r14
	movslq	4(%rsp), %rbx
	movq	(%r14,%rbx,8), %rax
	movq	%rax, 16(%rsp)
	movzbl	3(%rsp), %eax
	andb	2(%rsp), %al
	movq	8(%rsp), %rcx
	movq	(%rcx,%rbx,8), %rsi
	movq	(%r14,%rbx,8), %rdx
	movzbl	%al, %edi
	callq	select.cmov.sel.i64
	movq	%rax, (%r14,%rbx,8)
	movq	8(%rsp), %r14
	movzbl	3(%rsp), %eax
	andb	2(%rsp), %al
	movslq	4(%rsp), %rbx
	movq	16(%rsp), %rsi
	movq	(%r14,%rbx,8), %rdx
	movzbl	%al, %edi
	callq	select.cmov.sel.i64
	movq	%rax, (%r14,%rbx,8)
	addl	$1, 4(%rsp)
	cmpl	$4, 4(%rsp)
	jbe	.LBB10_2
.LBB10_3:                               # %loop_end
	movb	2(%rsp), %al
	notb	%al
	andb	$1, %al
	movb	%al, 2(%rsp)
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end10:
	.size	swap_conditional, .Lfunc_end10-swap_conditional
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function select.cmov.sel.i64
	.type	select.cmov.sel.i64,@function
select.cmov.sel.i64:                    # @select.cmov.sel.i64
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %dil
	cmoveq	%rdx, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end11:
	.size	select.cmov.sel.i64, .Lfunc_end11-select.cmov.sel.i64
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function cmult
	.type	cmult,@function
cmult:                                  # @cmult
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$576, %rsp              # imm = 0x240
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, 56(%rsp)
	movq	%rsi, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%rcx, 32(%rsp)
	movb	$1, 31(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm0, 256(%rsp)
	movq	$0, 288(%rsp)
	vmovaps	%ymm0, 512(%rsp)
	movq	$0, 544(%rsp)
	vmovaps	%ymm0, 64(%rsp)
	movq	$0, 96(%rsp)
	vmovaps	%ymm0, 448(%rsp)
	vmovaps	%ymm0, 384(%rsp)
	movq	$0, 480(%rsp)
	movq	$0, 416(%rsp)
	vmovaps	%ymm0, 192(%rsp)
	movq	$0, 224(%rsp)
	vmovaps	%ymm0, 320(%rsp)
	movq	$0, 352(%rsp)
	vmovaps	%ymm0, 128(%rsp)
	movq	$0, 160(%rsp)
	movq	$1, 512(%rsp)
	movq	$1, 64(%rsp)
	movq	$1, 192(%rsp)
	movq	$1, 128(%rsp)
	movl	$0, 24(%rsp)
	cmpl	$4, 24(%rsp)
	ja	.LBB12_3
	.p2align	4, 0x90
.LBB12_2:                               # %loop_body
                                        # =>This Inner Loop Header: Depth=1
	movslq	24(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	(%rcx,%rax,8), %rcx
	movq	%rcx, 256(%rsp,%rax,8)
	leal	1(%rax), %eax
	movl	%eax, 24(%rsp)
	cmpl	$4, 24(%rsp)
	jbe	.LBB12_2
.LBB12_3:                               # %loop_end
	movl	$0, 20(%rsp)
	cmpl	$31, 20(%rsp)
	jbe	.LBB12_5
	jmp	.LBB12_11
	.p2align	4, 0x90
.LBB12_15:                              # %loop_end34
                                        #   in Loop: Header=BB12_5 Depth=1
	addl	$1, 20(%rsp)
	cmpl	$31, 20(%rsp)
	ja	.LBB12_11
.LBB12_5:                               # %loop_body24
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_7 Depth 2
	movl	$31, %eax
	subl	20(%rsp), %eax
	movq	40(%rsp), %rcx
	cltq
	movb	(%rcx,%rax), %al
	movb	%al, 3(%rsp)
	movl	$0, 16(%rsp)
	cmpl	$7, 16(%rsp)
	jbe	.LBB12_7
	jmp	.LBB12_15
	.p2align	4, 0x90
.LBB12_10:                              # %branchmerge
                                        #   in Loop: Header=BB12_7 Depth=2
	callq	swap_conditional
	shlb	3(%rsp)
	addl	$1, 16(%rsp)
	cmpl	$7, 16(%rsp)
	ja	.LBB12_15
.LBB12_7:                               # %loop_body33
                                        #   Parent Loop BB12_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	3(%rsp), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	movq	%rax, 8(%rsp)
	movzbl	16(%rsp), %eax
	andb	$1, %al
	je	.LBB12_8
# %bb.9:                                # %elsebranch
                                        #   in Loop: Header=BB12_7 Depth=2
	movq	8(%rsp), %rdx
	leaq	320(%rsp), %r12
	movq	%r12, %rdi
	leaq	384(%rsp), %rax
	movq	%rax, %rsi
	vzeroupper
	callq	swap_conditional
	movq	8(%rsp), %rdx
	leaq	128(%rsp), %r12
	movq	%r12, %rdi
	leaq	192(%rsp), %r13
	movq	%r13, %rsi
	callq	swap_conditional
	subq	$8, %rsp
	leaq	72(%rsp), %rbx
	movq	%rbx, %rdi
	leaq	456(%rsp), %r14
	movq	%r14, %rsi
	leaq	264(%rsp), %rbx
	movq	%rbx, %rdx
	leaq	520(%rsp), %r15
	movq	%r15, %rcx
	leaq	328(%rsp), %r8
	movq	%r12, %r9
	pushq	40(%rsp)
	pushq	%r13
	leaq	408(%rsp), %rax
	pushq	%rax
	callq	fmonty
	addq	$32, %rsp
	movq	8(%rsp), %rdx
	leaq	64(%rsp), %rdi
	movq	%rbx, %rsi
	callq	swap_conditional
	movq	8(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	jmp	.LBB12_10
	.p2align	4, 0x90
.LBB12_8:                               # %thenbranch
                                        #   in Loop: Header=BB12_7 Depth=2
	movq	8(%rsp), %rdx
	leaq	64(%rsp), %r13
	movq	%r13, %rdi
	leaq	256(%rsp), %rbx
	movq	%rbx, %rsi
	vzeroupper
	callq	swap_conditional
	movq	8(%rsp), %rdx
	leaq	448(%rsp), %r14
	movq	%r14, %rdi
	leaq	512(%rsp), %r15
	movq	%r15, %rsi
	callq	swap_conditional
	subq	$8, %rsp
	leaq	328(%rsp), %r12
	movq	%r12, %rdi
	leaq	136(%rsp), %rbx
	movq	%rbx, %rsi
	leaq	392(%rsp), %rbx
	movq	%rbx, %rdx
	leaq	200(%rsp), %rax
	movq	%rax, %rcx
	movq	%r13, %r8
	movq	%r14, %r9
	pushq	40(%rsp)
	pushq	%r15
	leaq	280(%rsp), %rax
	pushq	%rax
	callq	fmonty
	addq	$32, %rsp
	movq	8(%rsp), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	swap_conditional
	movq	8(%rsp), %rdx
	leaq	128(%rsp), %rdi
	leaq	192(%rsp), %rsi
	jmp	.LBB12_10
.LBB12_11:                              # %loop_end25
	movl	$0, 4(%rsp)
	cmpl	$4, 4(%rsp)
	ja	.LBB12_14
	.p2align	4, 0x90
.LBB12_13:                              # %loop_body85
                                        # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax
	movslq	4(%rsp), %rcx
	movq	64(%rsp,%rcx,8), %rdx
	movq	%rdx, (%rax,%rcx,8)
	movq	48(%rsp), %rax
	movslq	4(%rsp), %rcx
	movq	448(%rsp,%rcx,8), %rdx
	movq	%rdx, (%rax,%rcx,8)
	addl	$1, 4(%rsp)
	cmpl	$4, 4(%rsp)
	jbe	.LBB12_13
.LBB12_14:                              # %loop_end86
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
.Lfunc_end12:
	.size	cmult, .Lfunc_end12-cmult
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function crecip
	.type	crecip,@function
crecip:                                 # @crecip
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$288, %rsp              # imm = 0x120
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movb	$1, 15(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm0, 224(%rsp)
	vmovaps	%ymm0, 160(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 192(%rsp)
	vmovaps	%ymm0, 96(%rsp)
	movq	$0, 128(%rsp)
	vmovaps	%ymm0, 32(%rsp)
	movq	$0, 64(%rsp)
	leaq	224(%rsp), %r14
	movl	$1, %edx
	movq	%r14, %rdi
	vzeroupper
	callq	fsquare_times
	leaq	160(%rsp), %rbx
	movl	$2, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	fsquare_times
	movq	16(%rsp), %rdx
	leaq	96(%rsp), %r15
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	fmul
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	fmul
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	fsquare_times
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	fmul
	movl	$5, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	fsquare_times
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	fmul
	movl	$10, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	fsquare_times
	leaq	32(%rsp), %r12
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	fmul
	movl	$20, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	fsquare_times
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	fmul
	movl	$10, %edx
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	callq	fsquare_times
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	fmul
	movl	$50, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	fsquare_times
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	fmul
	movl	$100, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	fsquare_times
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	fmul
	movl	$50, %edx
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	callq	fsquare_times
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	fmul
	movl	$5, %edx
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	callq	fsquare_times
	movq	24(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	fmul
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	crecip, .Lfunc_end13-crecip
	.cfi_endproc
                                        # -- End function
	.globl	curve25519_donna        # -- Begin function curve25519_donna
	.p2align	4, 0x90
	.type	curve25519_donna,@function
curve25519_donna:                       # @curve25519_donna
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	andq	$-32, %rsp
	subq	$352, %rsp              # imm = 0x160
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, 24(%rsp)
	movq	%rsi, 88(%rsp)
	movq	%rdx, 16(%rsp)
	movb	$1, 11(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm0, 288(%rsp)
	movl	$0, 12(%rsp)
	movq	$0, 320(%rsp)
	vmovaps	%ymm0, 224(%rsp)
	movq	$0, 256(%rsp)
	vmovaps	%ymm0, 160(%rsp)
	movq	$0, 192(%rsp)
	vmovaps	%ymm0, 96(%rsp)
	movq	$0, 128(%rsp)
	vmovups	(%rsi), %ymm0
	vmovaps	%ymm0, 32(%rsp)
	movzbl	32(%rsp), %eax
	andl	$248, %eax
	movb	%al, 32(%rsp)
	movb	63(%rsp), %al
	orb	$64, %al
	andb	$127, %al
	movb	%al, 63(%rsp)
	movq	16(%rsp), %rsi
	leaq	288(%rsp), %r15
	movq	%r15, %rdi
	vzeroupper
	callq	fexpand
	leaq	224(%rsp), %r14
	leaq	160(%rsp), %rbx
	leaq	32(%rsp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rcx
	callq	cmult
	leaq	96(%rsp), %r15
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	crecip
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	fmul
	movq	24(%rsp), %rdi
	movq	%rbx, %rsi
	callq	fcontract
	movl	$0, 12(%rsp)
	xorl	%eax, %eax
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	curve25519_donna, .Lfunc_end14-curve25519_donna
	.cfi_endproc
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
