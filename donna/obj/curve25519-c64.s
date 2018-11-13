	.text
	.file	"Module"
	.p2align	4, 0x90         # -- Begin function swap_conditional
	.type	swap_conditional,@function
swap_conditional:                       # @swap_conditional
	.cfi_startproc
# %bb.0:                                # %entry
	xorl	%eax, %eax
	movb	$1, -1(%rsp)
	cmpq	$1, %rdx
	sete	%cl
	movq	%rsi, -16(%rsp)         # 8-byte Spill
	movq	%rdi, -24(%rsp)         # 8-byte Spill
	movb	%cl, -25(%rsp)          # 1-byte Spill
	movl	%eax, -32(%rsp)         # 4-byte Spill
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-32(%rsp), %eax         # 4-byte Reload
	cmpl	$5, %eax
	movl	%eax, -36(%rsp)         # 4-byte Spill
	jae	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rsp), %eax         # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	movq	-24(%rsp), %rsi         # 8-byte Reload
	movq	(%rsi,%rdx,8), %rdx
	movl	%eax, %ecx
	movl	%ecx, %edi
	movl	%eax, %ecx
	movl	%ecx, %r8d
	movq	-16(%rsp), %r9          # 8-byte Reload
	movq	(%r9,%r8,8), %r8
	movb	-25(%rsp), %r10b        # 1-byte Reload
	andb	$1, %r10b
	movq	(%rsi,%rdi,8), %r11
	#APP
	testb	%r10b, %r10b
	cmovneq	%r8, %r11
	#NO_APP
	movq	%r11, (%rsi,%rdi,8)
	movl	%eax, %ecx
	movl	%ecx, %edi
	movb	-25(%rsp), %r10b        # 1-byte Reload
	andb	$1, %r10b
	movq	(%r9,%rdi,8), %r8
	#APP
	testb	%r10b, %r10b
	cmovneq	%rdx, %r8
	#NO_APP
	movq	%r8, (%r9,%rdi,8)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rsp), %eax         # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -32(%rsp)         # 4-byte Spill
	jmp	.LBB0_1
.LBB0_4:
	retq
.Lfunc_end0:
	.size	swap_conditional, .Lfunc_end0-swap_conditional
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fmul
	.type	fmul,@function
fmul:                                   # @fmul
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$272, %rsp              # imm = 0x110
	.cfi_def_cfa_offset 280
	movabsq	$2251799813685247, %rax # imm = 0x7FFFFFFFFFFFF
	movb	$1, 271(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 248(%rsp)
	movaps	%xmm0, 232(%rsp)
	movaps	%xmm0, 216(%rsp)
	movaps	%xmm0, 200(%rsp)
	movaps	%xmm0, 184(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 160(%rsp)
	movq	$0, 152(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 120(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 96(%rsp)
	movq	(%rdx), %rcx
	movq	%rcx, 176(%rsp)
	movq	8(%rdx), %rcx
	movq	%rcx, 168(%rsp)
	movq	16(%rdx), %rcx
	movq	%rcx, 160(%rsp)
	movq	24(%rdx), %rcx
	movq	%rcx, 152(%rsp)
	movq	32(%rdx), %rcx
	movq	%rcx, 144(%rsp)
	movq	(%rsi), %rcx
	movq	%rcx, 136(%rsp)
	movq	8(%rsi), %rcx
	movq	%rcx, 128(%rsp)
	movq	16(%rsi), %rcx
	movq	%rcx, 120(%rsp)
	movq	24(%rsi), %rcx
	movq	%rcx, 112(%rsp)
	movq	32(%rsi), %rcx
	movq	%rcx, 104(%rsp)
	movq	176(%rsp), %rcx
	movq	136(%rsp), %rdx
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rdx, 192(%rsp)
	movq	%rax, 184(%rsp)
	movq	176(%rsp), %rax
	movq	128(%rsp), %rcx
	mulq	%rcx
	movq	168(%rsp), %rcx
	movq	136(%rsp), %rsi
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	%rcx, %rax
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	mulq	%rsi
	movq	80(%rsp), %rcx          # 8-byte Reload
	addq	%rax, %rcx
	movq	72(%rsp), %rax          # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rcx, 200(%rsp)
	movq	%rax, 208(%rsp)
	movq	176(%rsp), %rax
	movq	120(%rsp), %rcx
	mulq	%rcx
	movq	160(%rsp), %rcx
	movq	136(%rsp), %rsi
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	%rcx, %rax
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	mulq	%rsi
	movq	64(%rsp), %rcx          # 8-byte Reload
	addq	%rax, %rcx
	movq	56(%rsp), %rax          # 8-byte Reload
	adcq	%rdx, %rax
	movq	168(%rsp), %rdx
	movq	128(%rsp), %rsi
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rsi
	addq	%rax, %rcx
	movq	48(%rsp), %rax          # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rcx, 216(%rsp)
	movq	%rax, 224(%rsp)
	movq	176(%rsp), %rax
	movq	112(%rsp), %rcx
	mulq	%rcx
	movq	152(%rsp), %rcx
	movq	136(%rsp), %rsi
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%rcx, %rax
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	mulq	%rsi
	movq	40(%rsp), %rcx          # 8-byte Reload
	addq	%rax, %rcx
	movq	32(%rsp), %rax          # 8-byte Reload
	adcq	%rdx, %rax
	movq	168(%rsp), %rdx
	movq	120(%rsp), %rsi
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rsi
	addq	%rax, %rcx
	movq	24(%rsp), %rax          # 8-byte Reload
	adcq	%rdx, %rax
	movq	160(%rsp), %rdx
	movq	128(%rsp), %rsi
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rsi
	addq	%rax, %rcx
	movq	16(%rsp), %rax          # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rcx, 232(%rsp)
	movq	%rax, 240(%rsp)
	movq	176(%rsp), %rax
	movq	104(%rsp), %rcx
	mulq	%rcx
	movq	144(%rsp), %rcx
	movq	136(%rsp), %rsi
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%rcx, %rax
	movq	%rdx, (%rsp)            # 8-byte Spill
	mulq	%rsi
	movq	8(%rsp), %rcx           # 8-byte Reload
	addq	%rax, %rcx
	movq	(%rsp), %rax            # 8-byte Reload
	adcq	%rdx, %rax
	movq	152(%rsp), %rdx
	movq	128(%rsp), %rsi
	movq	%rax, -8(%rsp)          # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rsi
	addq	%rax, %rcx
	movq	-8(%rsp), %rax          # 8-byte Reload
	adcq	%rdx, %rax
	movq	168(%rsp), %rdx
	movq	112(%rsp), %rsi
	movq	%rax, -16(%rsp)         # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rsi
	addq	%rax, %rcx
	movq	-16(%rsp), %rax         # 8-byte Reload
	adcq	%rdx, %rax
	movq	160(%rsp), %rdx
	movq	120(%rsp), %rsi
	movq	%rax, -24(%rsp)         # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rsi
	addq	%rax, %rcx
	movq	-24(%rsp), %rax         # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rcx, 248(%rsp)
	movq	%rax, 256(%rsp)
	movq	144(%rsp), %rax
	leaq	(%rax,%rax,4), %rcx
	shlq	$2, %rcx
	subq	%rax, %rcx
	movq	%rcx, 144(%rsp)
	movq	168(%rsp), %rax
	leaq	(%rax,%rax,4), %rcx
	shlq	$2, %rcx
	subq	%rax, %rcx
	movq	%rcx, 168(%rsp)
	movq	160(%rsp), %rax
	leaq	(%rax,%rax,4), %rcx
	shlq	$2, %rcx
	subq	%rax, %rcx
	movq	%rcx, 160(%rsp)
	movq	152(%rsp), %rax
	leaq	(%rax,%rax,4), %rcx
	shlq	$2, %rcx
	subq	%rax, %rcx
	movq	%rcx, 152(%rsp)
	movq	184(%rsp), %rax
	movq	192(%rsp), %rcx
	movq	144(%rsp), %rdx
	movq	128(%rsp), %rsi
	movq	%rax, -32(%rsp)         # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rsi
	movq	168(%rsp), %rsi
	movq	104(%rsp), %r8
	movq	%rax, -40(%rsp)         # 8-byte Spill
	movq	%rsi, %rax
	movq	%rdx, -48(%rsp)         # 8-byte Spill
	mulq	%r8
	movq	-40(%rsp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	movq	-48(%rsp), %rax         # 8-byte Reload
	adcq	%rdx, %rax
	movq	160(%rsp), %rdx
	movq	112(%rsp), %r8
	movq	%rax, -56(%rsp)         # 8-byte Spill
	movq	%rdx, %rax
	mulq	%r8
	addq	%rax, %rsi
	movq	-56(%rsp), %rax         # 8-byte Reload
	adcq	%rdx, %rax
	movq	152(%rsp), %rdx
	movq	120(%rsp), %r8
	movq	%rax, -64(%rsp)         # 8-byte Spill
	movq	%rdx, %rax
	mulq	%r8
	addq	%rax, %rsi
	movq	-64(%rsp), %rax         # 8-byte Reload
	adcq	%rdx, %rax
	movq	-32(%rsp), %rdx         # 8-byte Reload
	addq	%rsi, %rdx
	adcq	%rax, %rcx
	movq	%rdx, 184(%rsp)
	movq	%rcx, 192(%rsp)
	movq	200(%rsp), %rax
	movq	208(%rsp), %rcx
	movq	144(%rsp), %rdx
	movq	120(%rsp), %rsi
	movq	%rax, -72(%rsp)         # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rsi
	movq	160(%rsp), %rsi
	movq	104(%rsp), %r8
	movq	%rax, -80(%rsp)         # 8-byte Spill
	movq	%rsi, %rax
	movq	%rdx, -88(%rsp)         # 8-byte Spill
	mulq	%r8
	movq	-80(%rsp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	movq	-88(%rsp), %rax         # 8-byte Reload
	adcq	%rdx, %rax
	movq	152(%rsp), %rdx
	movq	112(%rsp), %r8
	movq	%rax, -96(%rsp)         # 8-byte Spill
	movq	%rdx, %rax
	mulq	%r8
	addq	%rax, %rsi
	movq	-96(%rsp), %rax         # 8-byte Reload
	adcq	%rdx, %rax
	movq	-72(%rsp), %rdx         # 8-byte Reload
	addq	%rsi, %rdx
	adcq	%rax, %rcx
	movq	%rdx, 200(%rsp)
	movq	%rcx, 208(%rsp)
	movq	216(%rsp), %rax
	movq	224(%rsp), %rcx
	movq	144(%rsp), %rdx
	movq	112(%rsp), %rsi
	movq	%rax, -104(%rsp)        # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rsi
	movq	152(%rsp), %rsi
	movq	104(%rsp), %r8
	movq	%rax, -112(%rsp)        # 8-byte Spill
	movq	%rsi, %rax
	movq	%rdx, -120(%rsp)        # 8-byte Spill
	mulq	%r8
	movq	-112(%rsp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	movq	-120(%rsp), %rax        # 8-byte Reload
	adcq	%rdx, %rax
	movq	-104(%rsp), %rdx        # 8-byte Reload
	addq	%rsi, %rdx
	adcq	%rax, %rcx
	movq	%rdx, 216(%rsp)
	movq	%rcx, 224(%rsp)
	movq	232(%rsp), %rax
	movq	240(%rsp), %rcx
	movq	144(%rsp), %rdx
	movq	104(%rsp), %rsi
	movq	%rax, -128(%rsp)        # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rsi
	movq	-128(%rsp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	adcq	%rdx, %rcx
	movq	%rsi, 232(%rsp)
	movq	%rcx, 240(%rsp)
	movq	184(%rsp), %rax
	movabsq	$2251799813685247, %rcx # imm = 0x7FFFFFFFFFFFF
	andq	%rcx, %rax
	movq	%rax, 176(%rsp)
	movq	184(%rsp), %rax
	movq	192(%rsp), %rdx
	shldq	$13, %rax, %rdx
	movq	%rdx, 96(%rsp)
	movq	200(%rsp), %rax
	movq	208(%rsp), %rdx
	movq	96(%rsp), %rsi
	addq	%rsi, %rax
	adcq	$0, %rdx
	movq	%rax, 200(%rsp)
	movq	%rdx, 208(%rsp)
	movq	200(%rsp), %rax
	andq	%rcx, %rax
	movq	%rax, 168(%rsp)
	movq	200(%rsp), %rax
	movq	208(%rsp), %rdx
	shldq	$13, %rax, %rdx
	movq	%rdx, 96(%rsp)
	movq	216(%rsp), %rax
	movq	224(%rsp), %rdx
	movq	96(%rsp), %rsi
	addq	%rsi, %rax
	adcq	$0, %rdx
	movq	%rax, 216(%rsp)
	movq	%rdx, 224(%rsp)
	movq	216(%rsp), %rax
	andq	%rcx, %rax
	movq	%rax, 160(%rsp)
	movq	216(%rsp), %rax
	movq	224(%rsp), %rdx
	shldq	$13, %rax, %rdx
	movq	%rdx, 96(%rsp)
	movq	232(%rsp), %rax
	movq	240(%rsp), %rdx
	movq	96(%rsp), %rsi
	addq	%rsi, %rax
	adcq	$0, %rdx
	movq	%rax, 232(%rsp)
	movq	%rdx, 240(%rsp)
	movq	232(%rsp), %rax
	andq	%rcx, %rax
	movq	%rax, 152(%rsp)
	movq	232(%rsp), %rax
	movq	240(%rsp), %rdx
	shldq	$13, %rax, %rdx
	movq	%rdx, 96(%rsp)
	movq	248(%rsp), %rax
	movq	256(%rsp), %rdx
	movq	96(%rsp), %rsi
	addq	%rsi, %rax
	adcq	$0, %rdx
	movq	%rax, 248(%rsp)
	movq	%rdx, 256(%rsp)
	movq	248(%rsp), %rax
	andq	%rcx, %rax
	movq	%rax, 144(%rsp)
	movq	248(%rsp), %rax
	movq	256(%rsp), %rcx
	shldq	$13, %rax, %rcx
	movq	%rcx, 96(%rsp)
	movq	176(%rsp), %rax
	imulq	$19, 96(%rsp), %rcx
	addq	%rcx, %rax
	movq	%rax, 176(%rsp)
	movq	176(%rsp), %rax
	shrq	$51, %rax
	movq	%rax, 96(%rsp)
	movq	88(%rsp), %rax          # 8-byte Reload
	andq	176(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	168(%rsp), %rax
	addq	96(%rsp), %rax
	movq	%rax, 168(%rsp)
	movq	168(%rsp), %rax
	shrq	$51, %rax
	movq	%rax, 96(%rsp)
	movq	88(%rsp), %rax          # 8-byte Reload
	andq	168(%rsp), %rax
	movq	%rax, 168(%rsp)
	movq	160(%rsp), %rax
	addq	96(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	176(%rsp), %rax
	movq	%rax, (%rdi)
	movq	168(%rsp), %rax
	movq	%rax, 8(%rdi)
	movq	160(%rsp), %rax
	movq	%rax, 16(%rdi)
	movq	152(%rsp), %rax
	movq	%rax, 24(%rdi)
	movq	144(%rsp), %rax
	movq	%rax, 32(%rdi)
	addq	$272, %rsp              # imm = 0x110
	retq
.Lfunc_end1:
	.size	fmul, .Lfunc_end1-fmul
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fsum
	.type	fsum,@function
fsum:                                   # @fsum
	.cfi_startproc
# %bb.0:                                # %entry
	movb	$1, -1(%rsp)
	movq	(%rdi), %rax
	addq	(%rsi), %rax
	movq	%rax, (%rdi)
	movq	8(%rdi), %rax
	addq	8(%rsi), %rax
	movq	%rax, 8(%rdi)
	movq	16(%rdi), %rax
	addq	16(%rsi), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rdi), %rax
	addq	24(%rsi), %rax
	movq	%rax, 24(%rdi)
	movq	32(%rdi), %rax
	addq	32(%rsi), %rax
	movq	%rax, 32(%rdi)
	retq
.Lfunc_end2:
	.size	fsum, .Lfunc_end2-fsum
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fscalar_product
	.type	fscalar_product,@function
fscalar_product:                        # @fscalar_product
	.cfi_startproc
# %bb.0:                                # %entry
	movb	$1, -1(%rsp)
	movq	$0, -16(%rsp)
	movq	$0, -24(%rsp)
	movq	(%rsi), %rax
	movq	%rdx, -32(%rsp)         # 8-byte Spill
	mulq	%rdx
	movq	%rdx, -16(%rsp)
	movq	%rax, -24(%rsp)
	movq	-24(%rsp), %rax
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %rax
	movq	%rax, (%rdi)
	movq	8(%rsi), %rax
	movq	-32(%rsp), %rcx         # 8-byte Reload
	movq	%rdx, -40(%rsp)         # 8-byte Spill
	mulq	%rcx
	movq	-24(%rsp), %r8
	movq	-16(%rsp), %r9
	shldq	$13, %r8, %r9
	addq	%r9, %rax
	adcq	$0, %rdx
	movq	%rax, -24(%rsp)
	movq	%rdx, -16(%rsp)
	movq	-24(%rsp), %rax
	movq	-40(%rsp), %rdx         # 8-byte Reload
	andq	%rdx, %rax
	movq	%rax, 8(%rdi)
	movq	16(%rsi), %rax
	mulq	%rcx
	movq	-24(%rsp), %r8
	movq	-16(%rsp), %r9
	shldq	$13, %r8, %r9
	addq	%r9, %rax
	adcq	$0, %rdx
	movq	%rax, -24(%rsp)
	movq	%rdx, -16(%rsp)
	movq	-24(%rsp), %rax
	movq	-40(%rsp), %rdx         # 8-byte Reload
	andq	%rdx, %rax
	movq	%rax, 16(%rdi)
	movq	24(%rsi), %rax
	mulq	%rcx
	movq	-24(%rsp), %r8
	movq	-16(%rsp), %r9
	shldq	$13, %r8, %r9
	addq	%r9, %rax
	adcq	$0, %rdx
	movq	%rax, -24(%rsp)
	movq	%rdx, -16(%rsp)
	movq	-24(%rsp), %rax
	movq	-40(%rsp), %rdx         # 8-byte Reload
	andq	%rdx, %rax
	movq	%rax, 24(%rdi)
	movq	32(%rsi), %rax
	mulq	%rcx
	movq	-24(%rsp), %rsi
	movq	-16(%rsp), %r8
	shldq	$13, %rsi, %r8
	addq	%r8, %rax
	adcq	$0, %rdx
	movq	%rax, -24(%rsp)
	movq	%rdx, -16(%rsp)
	movq	-24(%rsp), %rax
	movq	-40(%rsp), %rdx         # 8-byte Reload
	andq	%rdx, %rax
	movq	%rax, 32(%rdi)
	movq	(%rdi), %rax
	movq	-24(%rsp), %rsi
	movq	-16(%rsp), %r8
	shldq	$13, %rsi, %r8
	leaq	(%r8,%r8,4), %rsi
	shlq	$2, %rsi
	subq	%r8, %rsi
	addq	%rsi, %rax
	movq	%rax, (%rdi)
	retq
.Lfunc_end3:
	.size	fscalar_product, .Lfunc_end3-fscalar_product
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fdifference_backwards
	.type	fdifference_backwards,@function
fdifference_backwards:                  # @fdifference_backwards
	.cfi_startproc
# %bb.0:                                # %entry
	movabsq	$18014398509481976, %rax # imm = 0x3FFFFFFFFFFFF8
	movabsq	$18014398509481832, %rcx # imm = 0x3FFFFFFFFFFF68
	movb	$1, -1(%rsp)
	addq	(%rsi), %rcx
	subq	(%rdi), %rcx
	movq	%rcx, (%rdi)
	movq	%rax, %rcx
	addq	8(%rsi), %rcx
	subq	8(%rdi), %rcx
	movq	%rcx, 8(%rdi)
	movq	%rax, %rcx
	addq	16(%rsi), %rcx
	subq	16(%rdi), %rcx
	movq	%rcx, 16(%rdi)
	movq	%rax, %rcx
	addq	24(%rsi), %rcx
	subq	24(%rdi), %rcx
	movq	%rcx, 24(%rdi)
	addq	32(%rsi), %rax
	subq	32(%rdi), %rax
	movq	%rax, 32(%rdi)
	retq
.Lfunc_end4:
	.size	fdifference_backwards, .Lfunc_end4-fdifference_backwards
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fsquare_times
	.type	fsquare_times,@function
fsquare_times:                          # @fsquare_times
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$360, %rsp              # imm = 0x168
	.cfi_def_cfa_offset 368
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	movl	$80, %r8d
	movl	%r8d, %r9d
	leaq	272(%rsp), %r10
	movb	$1, 359(%rsp)
	movq	%rdi, 176(%rsp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, 168(%rsp)         # 8-byte Spill
	movl	%eax, %esi
	movq	%rdx, 160(%rsp)         # 8-byte Spill
	movq	%r9, %rdx
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	callq	memset
	movq	$0, 264(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 208(%rsp)
	movq	$0, 200(%rsp)
	movq	$0, 192(%rsp)
	movq	$0, 184(%rsp)
	movq	168(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rdx, 264(%rsp)
	movq	8(%rcx), %rdx
	movq	%rdx, 256(%rsp)
	movq	16(%rcx), %rdx
	movq	%rdx, 248(%rsp)
	movq	24(%rcx), %rdx
	movq	%rdx, 240(%rsp)
	movq	32(%rcx), %rdx
	movq	%rdx, 232(%rsp)
	movq	152(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, 144(%rsp)         # 8-byte Spill
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	movq	144(%rsp), %rax         # 8-byte Reload
	movq	160(%rsp), %rcx         # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	jae	.LBB5_4
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	movabsq	$2251799813685247, %rax # imm = 0x7FFFFFFFFFFFF
	movq	264(%rsp), %rcx
	addq	%rcx, %rcx
	movq	%rcx, 216(%rsp)
	movq	256(%rsp), %rcx
	addq	%rcx, %rcx
	movq	%rcx, 208(%rsp)
	movq	248(%rsp), %rcx
	imulq	$38, %rcx, %rcx
	movq	%rcx, 200(%rsp)
	movq	232(%rsp), %rcx
	leaq	(%rcx,%rcx,4), %rdx
	shlq	$2, %rdx
	subq	%rcx, %rdx
	movq	%rdx, 184(%rsp)
	movq	184(%rsp), %rcx
	addq	%rcx, %rcx
	movq	%rcx, 192(%rsp)
	movq	264(%rsp), %rcx
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movq	%rcx, %rax
	mulq	%rcx
	movq	192(%rsp), %rcx
	movq	256(%rsp), %rsi
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movq	%rcx, %rax
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	mulq	%rsi
	movq	120(%rsp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	112(%rsp), %rax         # 8-byte Reload
	adcq	%rdx, %rax
	movq	200(%rsp), %rdx
	movq	240(%rsp), %rsi
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rsi
	addq	%rax, %rcx
	movq	104(%rsp), %rax         # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rcx, 272(%rsp)
	movq	%rax, 280(%rsp)
	movq	216(%rsp), %rax
	movq	256(%rsp), %rcx
	mulq	%rcx
	movq	192(%rsp), %rcx
	movq	248(%rsp), %rsi
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	%rcx, %rax
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	mulq	%rsi
	movq	96(%rsp), %rcx          # 8-byte Reload
	addq	%rax, %rcx
	movq	88(%rsp), %rax          # 8-byte Reload
	adcq	%rdx, %rax
	movq	240(%rsp), %rdx
	leaq	(%rdx,%rdx,4), %rsi
	shlq	$2, %rsi
	subq	%rdx, %rsi
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rsi
	addq	%rax, %rcx
	movq	80(%rsp), %rax          # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rcx, 288(%rsp)
	movq	%rax, 296(%rsp)
	movq	216(%rsp), %rax
	movq	248(%rsp), %rcx
	mulq	%rcx
	movq	256(%rsp), %rcx
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	%rcx, %rax
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	mulq	%rcx
	movq	72(%rsp), %rcx          # 8-byte Reload
	addq	%rax, %rcx
	movq	64(%rsp), %rax          # 8-byte Reload
	adcq	%rdx, %rax
	movq	192(%rsp), %rdx
	movq	240(%rsp), %rsi
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rsi
	addq	%rax, %rcx
	movq	56(%rsp), %rax          # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rcx, 304(%rsp)
	movq	%rax, 312(%rsp)
	movq	216(%rsp), %rax
	movq	240(%rsp), %rcx
	mulq	%rcx
	movq	208(%rsp), %rcx
	movq	248(%rsp), %rsi
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%rcx, %rax
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	mulq	%rsi
	movq	48(%rsp), %rcx          # 8-byte Reload
	addq	%rax, %rcx
	movq	40(%rsp), %rax          # 8-byte Reload
	adcq	%rdx, %rax
	movq	232(%rsp), %rdx
	movq	184(%rsp), %rsi
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rsi
	addq	%rax, %rcx
	movq	32(%rsp), %rax          # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rcx, 320(%rsp)
	movq	%rax, 328(%rsp)
	movq	216(%rsp), %rax
	movq	232(%rsp), %rcx
	mulq	%rcx
	movq	208(%rsp), %rcx
	movq	240(%rsp), %rsi
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	%rcx, %rax
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	mulq	%rsi
	movq	24(%rsp), %rcx          # 8-byte Reload
	addq	%rax, %rcx
	movq	16(%rsp), %rax          # 8-byte Reload
	adcq	%rdx, %rax
	movq	248(%rsp), %rdx
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rdx
	addq	%rax, %rcx
	movq	8(%rsp), %rax           # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rcx, 336(%rsp)
	movq	%rax, 344(%rsp)
	movq	272(%rsp), %rax
	movabsq	$2251799813685247, %rcx # imm = 0x7FFFFFFFFFFFF
	andq	%rcx, %rax
	movq	%rax, 264(%rsp)
	movq	272(%rsp), %rax
	movq	280(%rsp), %rdx
	shldq	$13, %rax, %rdx
	movq	%rdx, 224(%rsp)
	movq	288(%rsp), %rax
	movq	296(%rsp), %rdx
	movq	224(%rsp), %rsi
	addq	%rsi, %rax
	adcq	$0, %rdx
	movq	%rax, 288(%rsp)
	movq	%rdx, 296(%rsp)
	movq	288(%rsp), %rax
	andq	%rcx, %rax
	movq	%rax, 256(%rsp)
	movq	288(%rsp), %rax
	movq	296(%rsp), %rdx
	shldq	$13, %rax, %rdx
	movq	%rdx, 224(%rsp)
	movq	304(%rsp), %rax
	movq	312(%rsp), %rdx
	movq	224(%rsp), %rsi
	addq	%rsi, %rax
	adcq	$0, %rdx
	movq	%rax, 304(%rsp)
	movq	%rdx, 312(%rsp)
	movq	304(%rsp), %rax
	andq	%rcx, %rax
	movq	%rax, 248(%rsp)
	movq	304(%rsp), %rax
	movq	312(%rsp), %rdx
	shldq	$13, %rax, %rdx
	movq	%rdx, 224(%rsp)
	movq	320(%rsp), %rax
	movq	328(%rsp), %rdx
	movq	224(%rsp), %rsi
	addq	%rsi, %rax
	adcq	$0, %rdx
	movq	%rax, 320(%rsp)
	movq	%rdx, 328(%rsp)
	movq	320(%rsp), %rax
	andq	%rcx, %rax
	movq	%rax, 240(%rsp)
	movq	320(%rsp), %rax
	movq	328(%rsp), %rdx
	shldq	$13, %rax, %rdx
	movq	%rdx, 224(%rsp)
	movq	336(%rsp), %rax
	movq	344(%rsp), %rdx
	movq	224(%rsp), %rsi
	addq	%rsi, %rax
	adcq	$0, %rdx
	movq	%rax, 336(%rsp)
	movq	%rdx, 344(%rsp)
	movq	336(%rsp), %rax
	andq	%rcx, %rax
	movq	%rax, 232(%rsp)
	movq	336(%rsp), %rax
	movq	344(%rsp), %rcx
	shldq	$13, %rax, %rcx
	movq	%rcx, 224(%rsp)
	movq	264(%rsp), %rax
	imulq	$19, 224(%rsp), %rcx
	addq	%rcx, %rax
	movq	%rax, 264(%rsp)
	movq	264(%rsp), %rax
	shrq	$51, %rax
	movq	%rax, 224(%rsp)
	movq	128(%rsp), %rax         # 8-byte Reload
	andq	264(%rsp), %rax
	movq	%rax, 264(%rsp)
	movq	256(%rsp), %rax
	addq	224(%rsp), %rax
	movq	%rax, 256(%rsp)
	movq	256(%rsp), %rax
	shrq	$51, %rax
	movq	%rax, 224(%rsp)
	movq	128(%rsp), %rax         # 8-byte Reload
	andq	256(%rsp), %rax
	movq	%rax, 256(%rsp)
	movq	248(%rsp), %rax
	addq	224(%rsp), %rax
	movq	%rax, 248(%rsp)
# %bb.3:                                #   in Loop: Header=BB5_1 Depth=1
	movq	136(%rsp), %rax         # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	jmp	.LBB5_1
.LBB5_4:
	movq	264(%rsp), %rax
	movq	176(%rsp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	256(%rsp), %rax
	movq	%rax, 8(%rcx)
	movq	248(%rsp), %rax
	movq	%rax, 16(%rcx)
	movq	240(%rsp), %rax
	movq	%rax, 24(%rcx)
	movq	232(%rsp), %rax
	movq	%rax, 32(%rcx)
	addq	$360, %rsp              # imm = 0x168
	retq
.Lfunc_end5:
	.size	fsquare_times, .Lfunc_end5-fsquare_times
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fmonty
	.type	fmonty,@function
fmonty:                                 # @fmonty
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$504, %rsp              # imm = 0x1F8
	.cfi_def_cfa_offset 560
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	576(%rsp), %rax
	movq	568(%rsp), %r10
	movq	560(%rsp), %r11
	xorl	%ebx, %ebx
	movl	$40, %ebp
	movl	%ebp, %r14d
	leaq	176(%rsp), %r15
	leaq	216(%rsp), %r12
	leaq	256(%rsp), %r13
	leaq	296(%rsp), %rbp
	movq	%rax, 168(%rsp)         # 8-byte Spill
	leaq	336(%rsp), %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	leaq	376(%rsp), %rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	leaq	416(%rsp), %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	leaq	456(%rsp), %rax
	movb	$1, 503(%rsp)
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	%rdi, 120(%rsp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	%rsi, 112(%rsp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	movq	%r14, %rdx
	movq	%r11, 96(%rsp)          # 8-byte Spill
	movq	%r9, 88(%rsp)           # 8-byte Spill
	movq	%r8, 80(%rsp)           # 8-byte Spill
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movq	%r12, 64(%rsp)          # 8-byte Spill
	movq	%r13, 56(%rsp)          # 8-byte Spill
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movq	%r10, 40(%rsp)          # 8-byte Spill
	movl	%ebx, 36(%rsp)          # 4-byte Spill
	movq	%r14, 24(%rsp)          # 8-byte Spill
	movq	%r15, 16(%rsp)          # 8-byte Spill
	callq	memcpy
	movq	144(%rsp), %rax         # 8-byte Reload
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	24(%rsp), %rdx          # 8-byte Reload
	callq	memcpy
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	movl	36(%rsp), %esi          # 4-byte Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	callq	memset
	movq	160(%rsp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	movl	36(%rsp), %esi          # 4-byte Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	callq	memset
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rdi
	movl	36(%rsp), %esi          # 4-byte Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	callq	memset
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rdi
	movl	36(%rsp), %esi          # 4-byte Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	callq	memset
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rdi
	movl	36(%rsp), %esi          # 4-byte Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	callq	memset
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rdi
	movl	36(%rsp), %esi          # 4-byte Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	callq	memset
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	88(%rsp), %rsi          # 8-byte Reload
	callq	fsum
	leaq	456(%rsp), %rsi
	movq	88(%rsp), %rdi          # 8-byte Reload
	callq	fdifference_backwards
	movq	96(%rsp), %rdi          # 8-byte Reload
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	fsum
	leaq	416(%rsp), %rsi
	movq	40(%rsp), %rdi          # 8-byte Reload
	callq	fdifference_backwards
	leaq	256(%rsp), %rdi
	movq	96(%rsp), %rsi          # 8-byte Reload
	movq	88(%rsp), %rdx          # 8-byte Reload
	callq	fmul
	leaq	216(%rsp), %rdi
	movq	80(%rsp), %rsi          # 8-byte Reload
	movq	40(%rsp), %rdx          # 8-byte Reload
	callq	fmul
	xorl	%ebx, %ebx
	movl	%ebx, 12(%rsp)          # 4-byte Spill
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	movl	12(%rsp), %eax          # 4-byte Reload
	cmpl	$5, %eax
	movl	%eax, 8(%rsp)           # 4-byte Spill
	jae	.LBB6_4
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	movl	8(%rsp), %eax           # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	movl	%eax, %ecx
	movl	%ecx, %esi
	movq	256(%rsp,%rsi,8), %rsi
	movq	%rsi, 416(%rsp,%rdx,8)
# %bb.3:                                #   in Loop: Header=BB6_1 Depth=1
	movl	8(%rsp), %eax           # 4-byte Reload
	addl	$1, %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	jmp	.LBB6_1
.LBB6_4:
	leaq	256(%rsp), %rdi
	leaq	216(%rsp), %rsi
	callq	fsum
	leaq	216(%rsp), %rdi
	leaq	416(%rsp), %rsi
	callq	fdifference_backwards
	leaq	256(%rsp), %rsi
	movl	$1, %eax
	movl	%eax, %edx
	movq	104(%rsp), %rdi         # 8-byte Reload
	callq	fsquare_times
	leaq	176(%rsp), %rdi
	leaq	216(%rsp), %rsi
	movl	$1, %eax
	movl	%eax, %edx
	callq	fsquare_times
	leaq	176(%rsp), %rsi
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	168(%rsp), %rdx         # 8-byte Reload
	callq	fmul
	leaq	336(%rsp), %rdi
	movl	$1, %eax
	movl	%eax, %edx
	movq	80(%rsp), %rsi          # 8-byte Reload
	callq	fsquare_times
	leaq	296(%rsp), %rdi
	movl	$1, %eax
	movl	%eax, %edx
	movq	88(%rsp), %rsi          # 8-byte Reload
	callq	fsquare_times
	leaq	336(%rsp), %rsi
	leaq	296(%rsp), %rdx
	movq	120(%rsp), %rdi         # 8-byte Reload
	callq	fmul
	leaq	296(%rsp), %rdi
	leaq	336(%rsp), %rsi
	callq	fdifference_backwards
	leaq	376(%rsp), %rdi
	leaq	296(%rsp), %rsi
	movl	$121665, %eax           # imm = 0x1DB41
	movl	%eax, %edx
	callq	fscalar_product
	leaq	376(%rsp), %rdi
	leaq	336(%rsp), %rsi
	callq	fsum
	leaq	296(%rsp), %rsi
	leaq	376(%rsp), %rdx
	movq	112(%rsp), %rdi         # 8-byte Reload
	callq	fmul
	addq	$504, %rsp              # imm = 0x1F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	fmonty, .Lfunc_end6-fmonty
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
	subq	$488, %rsp              # imm = 0x1E8
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	xorl	%eax, %eax
	movl	$40, %r8d
	movl	%r8d, %r9d
	leaq	-368(%rbp), %r10
	leaq	-328(%rbp), %r11
	leaq	-288(%rbp), %rbx
	leaq	-248(%rbp), %r14
	leaq	-208(%rbp), %r15
	leaq	-168(%rbp), %r12
	leaq	-128(%rbp), %r13
	leaq	-88(%rbp), %r8
	movb	$1, -41(%rbp)
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	movq	%r9, %rdx
	movq	%r15, -400(%rbp)        # 8-byte Spill
	movq	%r12, -408(%rbp)        # 8-byte Spill
	movq	%r13, -416(%rbp)        # 8-byte Spill
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	movl	%eax, -428(%rbp)        # 4-byte Spill
	movq	%r9, -440(%rbp)         # 8-byte Spill
	movq	%r10, -448(%rbp)        # 8-byte Spill
	movq	%r11, -456(%rbp)        # 8-byte Spill
	movq	%rbx, -464(%rbp)        # 8-byte Spill
	movq	%r14, -472(%rbp)        # 8-byte Spill
	callq	memset
	movq	-416(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, %rdi
	movl	-428(%rbp), %esi        # 4-byte Reload
	movq	-440(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movq	-408(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, %rdi
	movl	-428(%rbp), %esi        # 4-byte Reload
	movq	-440(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movq	-400(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, %rdi
	movl	-428(%rbp), %esi        # 4-byte Reload
	movq	-440(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movq	-472(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, %rdi
	movl	-428(%rbp), %esi        # 4-byte Reload
	movq	-440(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movq	-464(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, %rdi
	movl	-428(%rbp), %esi        # 4-byte Reload
	movq	-440(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movq	-456(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, %rdi
	movl	-428(%rbp), %esi        # 4-byte Reload
	movq	-440(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movq	-448(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, %rdi
	movl	-428(%rbp), %esi        # 4-byte Reload
	movq	-440(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movq	$1, -128(%rbp)
	movq	$1, -168(%rbp)
	movq	$1, -288(%rbp)
	movq	$1, -368(%rbp)
	movl	-428(%rbp), %eax        # 4-byte Reload
	movl	%eax, -476(%rbp)        # 4-byte Spill
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	movl	-476(%rbp), %eax        # 4-byte Reload
	cmpl	$5, %eax
	movl	%eax, -480(%rbp)        # 4-byte Spill
	jae	.LBB7_4
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	movl	-480(%rbp), %eax        # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	movl	%eax, %ecx
	movl	%ecx, %esi
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	(%rdi,%rsi,8), %rsi
	movq	%rsi, -88(%rbp,%rdx,8)
# %bb.3:                                #   in Loop: Header=BB7_1 Depth=1
	movl	-480(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -476(%rbp)        # 4-byte Spill
	jmp	.LBB7_1
.LBB7_4:
	xorl	%eax, %eax
	movl	%eax, -484(%rbp)        # 4-byte Spill
	jmp	.LBB7_5
.LBB7_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_9 Depth 2
	movl	-484(%rbp), %eax        # 4-byte Reload
	cmpl	$32, %eax
	movl	%eax, -488(%rbp)        # 4-byte Spill
	jae	.LBB7_8
# %bb.6:                                #   in Loop: Header=BB7_5 Depth=1
	xorl	%eax, %eax
	movl	$31, %ecx
	movl	-488(%rbp), %edx        # 4-byte Reload
	subl	%edx, %ecx
	movl	%ecx, %esi
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movb	(%rdi,%rsi), %r8b
	movq	%rsp, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movb	%r8b, (%rsi)
	movq	%rsi, -496(%rbp)        # 8-byte Spill
	movl	%eax, -500(%rbp)        # 4-byte Spill
	jmp	.LBB7_9
.LBB7_7:                                #   in Loop: Header=BB7_5 Depth=1
	movl	-488(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -484(%rbp)        # 4-byte Spill
	jmp	.LBB7_5
.LBB7_8:
	xorl	%eax, %eax
	movl	%eax, -504(%rbp)        # 4-byte Spill
	jmp	.LBB7_16
.LBB7_9:                                #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-500(%rbp), %eax        # 4-byte Reload
	cmpl	$8, %eax
	movl	%eax, -508(%rbp)        # 4-byte Spill
	jae	.LBB7_12
# %bb.10:                               #   in Loop: Header=BB7_9 Depth=2
	movq	-496(%rbp), %rax        # 8-byte Reload
	movb	(%rax), %cl
	shrb	$7, %cl
	movzbl	%cl, %edx
	movl	%edx, %esi
	movl	-508(%rbp), %edx        # 4-byte Reload
	andl	$1, %edx
	cmpl	$0, %edx
	movq	%rsi, -520(%rbp)        # 8-byte Spill
	je	.LBB7_13
	jmp	.LBB7_14
.LBB7_11:                               #   in Loop: Header=BB7_9 Depth=2
	movl	-508(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -500(%rbp)        # 4-byte Spill
	jmp	.LBB7_9
.LBB7_12:                               #   in Loop: Header=BB7_5 Depth=1
	jmp	.LBB7_7
.LBB7_13:                               #   in Loop: Header=BB7_9 Depth=2
	leaq	-168(%rbp), %rdi
	leaq	-88(%rbp), %rsi
	movq	-520(%rbp), %rdx        # 8-byte Reload
	callq	swap_conditional
	leaq	-208(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	movq	-520(%rbp), %rdx        # 8-byte Reload
	callq	swap_conditional
	leaq	-328(%rbp), %rdi
	leaq	-368(%rbp), %rsi
	leaq	-248(%rbp), %rdx
	leaq	-288(%rbp), %rcx
	leaq	-168(%rbp), %r8
	leaq	-208(%rbp), %r9
	leaq	-88(%rbp), %rax
	leaq	-128(%rbp), %r10
	subq	$32, %rsp
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	-424(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	callq	fmonty
	addq	$32, %rsp
	leaq	-328(%rbp), %rdi
	leaq	-248(%rbp), %rsi
	movq	-520(%rbp), %rdx        # 8-byte Reload
	callq	swap_conditional
	leaq	-368(%rbp), %rdi
	leaq	-288(%rbp), %rsi
	movq	-520(%rbp), %rdx        # 8-byte Reload
	callq	swap_conditional
	jmp	.LBB7_15
.LBB7_14:                               #   in Loop: Header=BB7_9 Depth=2
	leaq	-328(%rbp), %rdi
	leaq	-248(%rbp), %rsi
	movq	-520(%rbp), %rdx        # 8-byte Reload
	callq	swap_conditional
	leaq	-368(%rbp), %rdi
	leaq	-288(%rbp), %rsi
	movq	-520(%rbp), %rdx        # 8-byte Reload
	callq	swap_conditional
	leaq	-168(%rbp), %rdi
	leaq	-208(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	leaq	-128(%rbp), %rcx
	leaq	-328(%rbp), %r8
	leaq	-368(%rbp), %r9
	leaq	-248(%rbp), %rax
	leaq	-288(%rbp), %r10
	subq	$32, %rsp
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	-424(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	callq	fmonty
	addq	$32, %rsp
	leaq	-168(%rbp), %rdi
	leaq	-88(%rbp), %rsi
	movq	-520(%rbp), %rdx        # 8-byte Reload
	callq	swap_conditional
	leaq	-208(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	movq	-520(%rbp), %rdx        # 8-byte Reload
	callq	swap_conditional
.LBB7_15:                               #   in Loop: Header=BB7_9 Depth=2
	movq	-496(%rbp), %rax        # 8-byte Reload
	movb	(%rax), %cl
	shlb	$1, %cl
	movb	%cl, (%rax)
	jmp	.LBB7_11
.LBB7_16:                               # =>This Inner Loop Header: Depth=1
	movl	-504(%rbp), %eax        # 4-byte Reload
	cmpl	$5, %eax
	movl	%eax, -524(%rbp)        # 4-byte Spill
	jae	.LBB7_19
# %bb.17:                               #   in Loop: Header=BB7_16 Depth=1
	movl	-524(%rbp), %eax        # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	movl	%eax, %ecx
	movl	%ecx, %esi
	movq	-168(%rbp,%rsi,8), %rsi
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, (%rdi,%rdx,8)
	movl	%eax, %ecx
	movl	%ecx, %edx
	movl	%eax, %ecx
	movl	%ecx, %esi
	movq	-208(%rbp,%rsi,8), %rsi
	movq	-384(%rbp), %r8         # 8-byte Reload
	movq	%rsi, (%r8,%rdx,8)
# %bb.18:                               #   in Loop: Header=BB7_16 Depth=1
	movl	-524(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -504(%rbp)        # 4-byte Spill
	jmp	.LBB7_16
.LBB7_19:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	cmult, .Lfunc_end7-cmult
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function crecip
	.type	crecip,@function
crecip:                                 # @crecip
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$248, %rsp
	.cfi_def_cfa_offset 272
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	leaq	200(%rsp), %rax
	movl	$1, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movl	$40, %r8d
	movl	%r8d, %r9d
	leaq	80(%rsp), %r10
	leaq	120(%rsp), %r11
	leaq	160(%rsp), %rbx
	movb	$1, 247(%rsp)
	movq	%rax, %r14
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	movq	%r14, %rdi
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movl	%ecx, %esi
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	%r9, %rdx
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movq	%r11, 40(%rsp)          # 8-byte Spill
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%r10, 24(%rsp)          # 8-byte Spill
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movq	%r9, 8(%rsp)            # 8-byte Spill
	callq	memset
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rdi
	movl	20(%rsp), %esi          # 4-byte Reload
	movq	8(%rsp), %rdx           # 8-byte Reload
	callq	memset
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rdi
	movl	20(%rsp), %esi          # 4-byte Reload
	movq	8(%rsp), %rdx           # 8-byte Reload
	callq	memset
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rdi
	movl	20(%rsp), %esi          # 4-byte Reload
	movq	8(%rsp), %rdx           # 8-byte Reload
	callq	memset
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	64(%rsp), %rsi          # 8-byte Reload
	movq	56(%rsp), %rdx          # 8-byte Reload
	callq	fsquare_times
	leaq	160(%rsp), %rdi
	leaq	200(%rsp), %rsi
	movl	$2, %ecx
	movl	%ecx, %edx
	callq	fsquare_times
	leaq	120(%rsp), %rdi
	leaq	160(%rsp), %rsi
	movq	64(%rsp), %rdx          # 8-byte Reload
	callq	fmul
	leaq	200(%rsp), %rax
	leaq	120(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, %rdx
	callq	fmul
	leaq	160(%rsp), %rdi
	leaq	200(%rsp), %rsi
	movl	$1, %ecx
	movl	%ecx, %edx
	callq	fsquare_times
	leaq	120(%rsp), %rax
	leaq	160(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, %rdx
	callq	fmul
	leaq	160(%rsp), %rdi
	leaq	120(%rsp), %rsi
	movl	$5, %ecx
	movl	%ecx, %edx
	callq	fsquare_times
	leaq	120(%rsp), %rax
	leaq	160(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, %rdx
	callq	fmul
	leaq	160(%rsp), %rdi
	leaq	120(%rsp), %rsi
	movl	$10, %ecx
	movl	%ecx, %edx
	callq	fsquare_times
	leaq	80(%rsp), %rdi
	leaq	160(%rsp), %rsi
	leaq	120(%rsp), %rdx
	callq	fmul
	leaq	160(%rsp), %rdi
	leaq	80(%rsp), %rsi
	movl	$20, %ecx
	movl	%ecx, %edx
	callq	fsquare_times
	leaq	160(%rsp), %rax
	leaq	80(%rsp), %rdx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	fmul
	leaq	160(%rsp), %rax
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	fsquare_times
	leaq	120(%rsp), %rax
	leaq	160(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rax, %rdx
	callq	fmul
	leaq	160(%rsp), %rdi
	leaq	120(%rsp), %rsi
	movl	$50, %ecx
	movl	%ecx, %edx
	callq	fsquare_times
	leaq	80(%rsp), %rdi
	leaq	160(%rsp), %rsi
	leaq	120(%rsp), %rdx
	callq	fmul
	leaq	160(%rsp), %rdi
	leaq	80(%rsp), %rsi
	movl	$100, %ecx
	movl	%ecx, %edx
	callq	fsquare_times
	leaq	160(%rsp), %rax
	leaq	80(%rsp), %rdx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	fmul
	leaq	160(%rsp), %rax
	movl	$50, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	fsquare_times
	leaq	160(%rsp), %rax
	leaq	120(%rsp), %rdx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	fmul
	leaq	160(%rsp), %rax
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	fsquare_times
	leaq	160(%rsp), %rsi
	leaq	200(%rsp), %rdx
	movq	72(%rsp), %rdi          # 8-byte Reload
	callq	fmul
	addq	$248, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end8:
	.size	crecip, .Lfunc_end8-crecip
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function store_limb
	.type	store_limb,@function
store_limb:                             # @store_limb
	.cfi_startproc
# %bb.0:                                # %entry
	movb	$1, -1(%rsp)
	movb	%sil, %al
	movb	%al, (%rdi)
	movq	%rsi, %rcx
	shrq	$8, %rcx
	movb	%cl, %al
	movb	%al, 1(%rdi)
	movq	%rsi, %rcx
	shrq	$16, %rcx
	movb	%cl, %al
	movb	%al, 2(%rdi)
	movq	%rsi, %rcx
	shrq	$24, %rcx
	movb	%cl, %al
	movb	%al, 3(%rdi)
	movq	%rsi, %rcx
	shrq	$32, %rcx
	movb	%cl, %al
	movb	%al, 4(%rdi)
	movq	%rsi, %rcx
	shrq	$40, %rcx
	movb	%cl, %al
	movb	%al, 5(%rdi)
	movq	%rsi, %rcx
	shrq	$48, %rcx
	movb	%cl, %al
	movb	%al, 6(%rdi)
	shrq	$56, %rsi
	movb	%sil, %al
	movb	%al, 7(%rdi)
	retq
.Lfunc_end9:
	.size	store_limb, .Lfunc_end9-store_limb
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fcontract
	.type	fcontract,@function
fcontract:                              # @fcontract
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$136, %rsp
	.cfi_def_cfa_offset 144
	movb	$1, 135(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	8(%rsi), %rax
	movq	%rax, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	16(%rsi), %rax
	movq	%rax, 80(%rsp)
	movq	$0, 88(%rsp)
	movq	24(%rsi), %rax
	movq	%rax, 96(%rsp)
	movq	$0, 104(%rsp)
	movq	32(%rsi), %rax
	movq	%rax, 112(%rsp)
	movq	$0, 120(%rsp)
	movq	72(%rsp), %rax
	movq	64(%rsp), %rsi
	movq	48(%rsp), %rcx
	movq	56(%rsp), %rdx
	movq	%rdx, %r8
	shrq	$51, %r8
	shldq	$13, %rcx, %rdx
	addq	%rdx, %rsi
	adcq	%r8, %rax
	movq	%rsi, 64(%rsp)
	movq	%rax, 72(%rsp)
	movw	54(%rsp), %r9w
	andw	$7, %r9w
	movw	%r9w, 54(%rsp)
	movq	$0, 56(%rsp)
	movq	88(%rsp), %rax
	movq	80(%rsp), %rcx
	movq	64(%rsp), %rdx
	movq	72(%rsp), %rsi
	movq	%rsi, %r8
	shrq	$51, %r8
	shldq	$13, %rdx, %rsi
	addq	%rsi, %rcx
	adcq	%r8, %rax
	movq	%rcx, 80(%rsp)
	movq	%rax, 88(%rsp)
	movw	70(%rsp), %r9w
	andw	$7, %r9w
	movw	%r9w, 70(%rsp)
	movq	$0, 72(%rsp)
	movq	104(%rsp), %rax
	movq	96(%rsp), %rcx
	movq	80(%rsp), %rdx
	movq	88(%rsp), %rsi
	movq	%rsi, %r8
	shrq	$51, %r8
	shldq	$13, %rdx, %rsi
	addq	%rsi, %rcx
	adcq	%r8, %rax
	movq	%rcx, 96(%rsp)
	movq	%rax, 104(%rsp)
	movw	86(%rsp), %r9w
	andw	$7, %r9w
	movw	%r9w, 86(%rsp)
	movq	$0, 88(%rsp)
	movq	120(%rsp), %rax
	movq	112(%rsp), %rcx
	movq	96(%rsp), %rdx
	movq	104(%rsp), %rsi
	movq	%rsi, %r8
	shrq	$51, %r8
	shldq	$13, %rdx, %rsi
	addq	%rsi, %rcx
	adcq	%r8, %rax
	movq	%rcx, 112(%rsp)
	movq	%rax, 120(%rsp)
	movw	102(%rsp), %r9w
	andw	$7, %r9w
	movw	%r9w, 102(%rsp)
	movq	$0, 104(%rsp)
	movq	48(%rsp), %rax
	movq	56(%rsp), %rcx
	movq	112(%rsp), %rdx
	movq	120(%rsp), %rsi
	movq	%rsi, %r8
	shldq	$13, %rdx, %r8
	shrq	$51, %rsi
	movl	$19, %r10d
	movl	%r10d, %edx
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%r8, %rax
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	mulq	%rdx
	leaq	(%rsi,%rsi,4), %r8
	shlq	$2, %r8
	subq	%rsi, %r8
	addq	%r8, %rdx
	movq	40(%rsp), %rsi          # 8-byte Reload
	addq	%rax, %rsi
	adcq	%rdx, %rcx
	movq	%rsi, 48(%rsp)
	movq	%rcx, 56(%rsp)
	movw	118(%rsp), %r9w
	andw	$7, %r9w
	movw	%r9w, 118(%rsp)
	movq	$0, 120(%rsp)
	movq	72(%rsp), %rax
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rsi
	movq	%rsi, %r8
	shrq	$51, %r8
	shldq	$13, %rdx, %rsi
	addq	%rsi, %rcx
	adcq	%r8, %rax
	movq	%rcx, 64(%rsp)
	movq	%rax, 72(%rsp)
	movw	54(%rsp), %r9w
	andw	$7, %r9w
	movw	%r9w, 54(%rsp)
	movq	$0, 56(%rsp)
	movq	88(%rsp), %rax
	movq	80(%rsp), %rcx
	movq	64(%rsp), %rdx
	movq	72(%rsp), %rsi
	movq	%rsi, %r8
	shrq	$51, %r8
	shldq	$13, %rdx, %rsi
	addq	%rsi, %rcx
	adcq	%r8, %rax
	movq	%rcx, 80(%rsp)
	movq	%rax, 88(%rsp)
	movw	70(%rsp), %r9w
	andw	$7, %r9w
	movw	%r9w, 70(%rsp)
	movq	$0, 72(%rsp)
	movq	104(%rsp), %rax
	movq	96(%rsp), %rcx
	movq	80(%rsp), %rdx
	movq	88(%rsp), %rsi
	movq	%rsi, %r8
	shrq	$51, %r8
	shldq	$13, %rdx, %rsi
	addq	%rsi, %rcx
	adcq	%r8, %rax
	movq	%rcx, 96(%rsp)
	movq	%rax, 104(%rsp)
	movw	86(%rsp), %r9w
	andw	$7, %r9w
	movw	%r9w, 86(%rsp)
	movq	$0, 88(%rsp)
	movq	120(%rsp), %rax
	movq	112(%rsp), %rcx
	movq	96(%rsp), %rdx
	movq	104(%rsp), %rsi
	movq	%rsi, %r8
	shrq	$51, %r8
	shldq	$13, %rdx, %rsi
	addq	%rsi, %rcx
	adcq	%r8, %rax
	movq	%rcx, 112(%rsp)
	movq	%rax, 120(%rsp)
	movw	102(%rsp), %r9w
	andw	$7, %r9w
	movw	%r9w, 102(%rsp)
	movq	$0, 104(%rsp)
	movq	48(%rsp), %rax
	movq	56(%rsp), %rcx
	movq	112(%rsp), %rdx
	movq	120(%rsp), %rsi
	movq	%rsi, %r8
	shldq	$13, %rdx, %r8
	shrq	$51, %rsi
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	%r8, %rax
	movq	32(%rsp), %rdx          # 8-byte Reload
	mulq	%rdx
	leaq	(%rsi,%rsi,4), %r8
	shlq	$2, %r8
	subq	%rsi, %r8
	addq	%r8, %rdx
	movq	24(%rsp), %rsi          # 8-byte Reload
	addq	%rax, %rsi
	adcq	%rdx, %rcx
	movq	%rsi, 48(%rsp)
	movq	%rcx, 56(%rsp)
	movw	118(%rsp), %r9w
	andw	$7, %r9w
	movw	%r9w, 118(%rsp)
	movq	$0, 120(%rsp)
	movq	48(%rsp), %rax
	movq	56(%rsp), %rcx
	addq	$19, %rax
	adcq	$0, %rcx
	movq	%rax, 48(%rsp)
	movq	%rcx, 56(%rsp)
	movq	72(%rsp), %rax
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rsi
	movq	%rsi, %r8
	shrq	$51, %r8
	shldq	$13, %rdx, %rsi
	addq	%rsi, %rcx
	adcq	%r8, %rax
	movq	%rcx, 64(%rsp)
	movq	%rax, 72(%rsp)
	movw	54(%rsp), %r9w
	andw	$7, %r9w
	movw	%r9w, 54(%rsp)
	movq	$0, 56(%rsp)
	movq	88(%rsp), %rax
	movq	80(%rsp), %rcx
	movq	64(%rsp), %rdx
	movq	72(%rsp), %rsi
	movq	%rsi, %r8
	shrq	$51, %r8
	shldq	$13, %rdx, %rsi
	addq	%rsi, %rcx
	adcq	%r8, %rax
	movq	%rcx, 80(%rsp)
	movq	%rax, 88(%rsp)
	movw	70(%rsp), %r9w
	andw	$7, %r9w
	movw	%r9w, 70(%rsp)
	movq	$0, 72(%rsp)
	movq	104(%rsp), %rax
	movq	96(%rsp), %rcx
	movq	80(%rsp), %rdx
	movq	88(%rsp), %rsi
	movq	%rsi, %r8
	shrq	$51, %r8
	shldq	$13, %rdx, %rsi
	addq	%rsi, %rcx
	adcq	%r8, %rax
	movq	%rcx, 96(%rsp)
	movq	%rax, 104(%rsp)
	movw	86(%rsp), %r9w
	andw	$7, %r9w
	movw	%r9w, 86(%rsp)
	movq	$0, 88(%rsp)
	movq	120(%rsp), %rax
	movq	112(%rsp), %rcx
	movq	96(%rsp), %rdx
	movq	104(%rsp), %rsi
	movq	%rsi, %r8
	shrq	$51, %r8
	shldq	$13, %rdx, %rsi
	addq	%rsi, %rcx
	adcq	%r8, %rax
	movq	%rcx, 112(%rsp)
	movq	%rax, 120(%rsp)
	movw	102(%rsp), %r9w
	andw	$7, %r9w
	movw	%r9w, 102(%rsp)
	movq	$0, 104(%rsp)
	movq	48(%rsp), %rax
	movq	56(%rsp), %rcx
	movq	112(%rsp), %rdx
	movq	120(%rsp), %rsi
	movq	%rsi, %r8
	shldq	$13, %rdx, %r8
	shrq	$51, %rsi
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	%r8, %rax
	movq	32(%rsp), %rdx          # 8-byte Reload
	mulq	%rdx
	leaq	(%rsi,%rsi,4), %r8
	shlq	$2, %r8
	subq	%rsi, %r8
	addq	%r8, %rdx
	movq	16(%rsp), %rsi          # 8-byte Reload
	addq	%rax, %rsi
	adcq	%rdx, %rcx
	movq	%rsi, 48(%rsp)
	movq	%rcx, 56(%rsp)
	movw	118(%rsp), %r9w
	andw	$7, %r9w
	movw	%r9w, 118(%rsp)
	movq	$0, 120(%rsp)
	movq	48(%rsp), %rax
	movq	56(%rsp), %rcx
	movabsq	$2251799813685229, %rdx # imm = 0x7FFFFFFFFFFED
	addq	%rdx, %rax
	adcq	$0, %rcx
	movq	%rax, 48(%rsp)
	movq	%rcx, 56(%rsp)
	movq	64(%rsp), %rax
	movq	72(%rsp), %rcx
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	addq	%rdx, %rax
	adcq	$0, %rcx
	movq	%rax, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	80(%rsp), %rax
	movq	88(%rsp), %rcx
	addq	%rdx, %rax
	adcq	$0, %rcx
	movq	%rax, 80(%rsp)
	movq	%rcx, 88(%rsp)
	movq	96(%rsp), %rax
	movq	104(%rsp), %rcx
	addq	%rdx, %rax
	adcq	$0, %rcx
	movq	%rax, 96(%rsp)
	movq	%rcx, 104(%rsp)
	movq	112(%rsp), %rax
	movq	120(%rsp), %rcx
	addq	%rdx, %rax
	adcq	$0, %rcx
	movq	%rax, 112(%rsp)
	movq	%rcx, 120(%rsp)
	movq	72(%rsp), %rax
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rsi
	movq	%rsi, %r8
	shrq	$51, %r8
	shldq	$13, %rdx, %rsi
	addq	%rsi, %rcx
	adcq	%r8, %rax
	movq	%rcx, 64(%rsp)
	movq	%rax, 72(%rsp)
	movw	54(%rsp), %r9w
	andw	$7, %r9w
	movw	%r9w, 54(%rsp)
	movq	$0, 56(%rsp)
	movq	88(%rsp), %rax
	movq	80(%rsp), %rcx
	movq	64(%rsp), %rdx
	movq	72(%rsp), %rsi
	movq	%rsi, %r8
	shrq	$51, %r8
	shldq	$13, %rdx, %rsi
	addq	%rsi, %rcx
	adcq	%r8, %rax
	movq	%rcx, 80(%rsp)
	movq	%rax, 88(%rsp)
	movw	70(%rsp), %r9w
	andw	$7, %r9w
	movw	%r9w, 70(%rsp)
	movq	$0, 72(%rsp)
	movq	104(%rsp), %rax
	movq	96(%rsp), %rcx
	movq	80(%rsp), %rdx
	movq	88(%rsp), %rsi
	movq	%rsi, %r8
	shrq	$51, %r8
	shldq	$13, %rdx, %rsi
	addq	%rsi, %rcx
	adcq	%r8, %rax
	movq	%rcx, 96(%rsp)
	movq	%rax, 104(%rsp)
	movw	86(%rsp), %r9w
	andw	$7, %r9w
	movw	%r9w, 86(%rsp)
	movq	$0, 88(%rsp)
	movq	120(%rsp), %rax
	movq	112(%rsp), %rcx
	movq	96(%rsp), %rdx
	movq	104(%rsp), %rsi
	movq	%rsi, %r8
	shrq	$51, %r8
	shldq	$13, %rdx, %rsi
	addq	%rsi, %rcx
	adcq	%r8, %rax
	movq	%rcx, 112(%rsp)
	movq	%rax, 120(%rsp)
	movw	102(%rsp), %r9w
	andw	$7, %r9w
	movw	%r9w, 102(%rsp)
	movq	$0, 104(%rsp)
	movw	118(%rsp), %r9w
	andw	$7, %r9w
	movw	%r9w, 118(%rsp)
	movq	$0, 120(%rsp)
	movq	48(%rsp), %rax
	movq	64(%rsp), %rcx
	shlq	$51, %rcx
	orq	%rcx, %rax
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	%rax, %rsi
	callq	store_limb
	movq	8(%rsp), %rax           # 8-byte Reload
	addq	$8, %rax
	movq	64(%rsp), %rcx
	movq	72(%rsp), %rdx
	shldq	$51, %rcx, %rdx
	movq	80(%rsp), %rcx
	shlq	$38, %rcx
	orq	%rcx, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	store_limb
	movq	8(%rsp), %rax           # 8-byte Reload
	addq	$16, %rax
	movq	80(%rsp), %rcx
	movq	88(%rsp), %rdx
	shldq	$38, %rcx, %rdx
	movq	96(%rsp), %rcx
	shlq	$25, %rcx
	orq	%rcx, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	store_limb
	movq	8(%rsp), %rax           # 8-byte Reload
	addq	$24, %rax
	movq	96(%rsp), %rcx
	movq	104(%rsp), %rdx
	shldq	$25, %rcx, %rdx
	movq	112(%rsp), %rcx
	shlq	$12, %rcx
	orq	%rcx, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	store_limb
	addq	$136, %rsp
	retq
.Lfunc_end10:
	.size	fcontract, .Lfunc_end10-fcontract
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function load_limb
	.type	load_limb,@function
load_limb:                              # @load_limb
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$0, -8(%rsp)
	movb	$1, -9(%rsp)
	movzbl	(%rdi), %eax
	movl	%eax, %ecx
	movzbl	1(%rdi), %eax
	movl	%eax, %edx
	shlq	$8, %rdx
	orq	%rdx, %rcx
	movzbl	2(%rdi), %eax
	movl	%eax, %edx
	shlq	$16, %rdx
	orq	%rdx, %rcx
	movzbl	3(%rdi), %eax
	movl	%eax, %edx
	shlq	$24, %rdx
	orq	%rdx, %rcx
	movzbl	4(%rdi), %eax
	movl	%eax, %edx
	shlq	$32, %rdx
	orq	%rdx, %rcx
	movzbl	5(%rdi), %eax
	movl	%eax, %edx
	shlq	$40, %rdx
	orq	%rdx, %rcx
	movzbl	6(%rdi), %eax
	movl	%eax, %edx
	shlq	$48, %rdx
	orq	%rdx, %rcx
	movzbl	7(%rdi), %eax
	movl	%eax, %edx
	shlq	$56, %rdx
	orq	%rdx, %rcx
	movq	%rcx, %rax
	retq
.Lfunc_end11:
	.size	load_limb, .Lfunc_end11-load_limb
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fexpand
	.type	fexpand,@function
fexpand:                                # @fexpand
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movb	$1, 23(%rsp)
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rsi, (%rsp)            # 8-byte Spill
	callq	load_limb
	movabsq	$2251799813685247, %rsi # imm = 0x7FFFFFFFFFFFF
	andq	%rsi, %rax
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	%rax, (%rsi)
	movq	(%rsp), %rax            # 8-byte Reload
	addq	$6, %rax
	movq	%rax, %rdi
	callq	load_limb
	movabsq	$2251799813685247, %rsi # imm = 0x7FFFFFFFFFFFF
	shrq	$3, %rax
	andq	%rsi, %rax
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	%rax, 8(%rsi)
	movq	(%rsp), %rax            # 8-byte Reload
	addq	$12, %rax
	movq	%rax, %rdi
	callq	load_limb
	movabsq	$2251799813685247, %rsi # imm = 0x7FFFFFFFFFFFF
	shrq	$6, %rax
	andq	%rsi, %rax
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	%rax, 16(%rsi)
	movq	(%rsp), %rax            # 8-byte Reload
	addq	$19, %rax
	movq	%rax, %rdi
	callq	load_limb
	movabsq	$2251799813685247, %rsi # imm = 0x7FFFFFFFFFFFF
	shrq	$1, %rax
	andq	%rsi, %rax
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	%rax, 24(%rsi)
	movq	(%rsp), %rax            # 8-byte Reload
	addq	$24, %rax
	movq	%rax, %rdi
	callq	load_limb
	movabsq	$2251799813685247, %rsi # imm = 0x7FFFFFFFFFFFF
	shrq	$12, %rax
	andq	%rsi, %rax
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	%rax, 32(%rsi)
	addq	$24, %rsp
	retq
.Lfunc_end12:
	.size	fexpand, .Lfunc_end12-fexpand
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
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$272, %rsp              # imm = 0x110
	.cfi_def_cfa_offset 304
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	leaq	224(%rsp), %rax
	xorl	%ecx, %ecx
	movl	$40, %r8d
	movl	%r8d, %r9d
	leaq	104(%rsp), %r10
	leaq	144(%rsp), %r11
	leaq	184(%rsp), %rbx
	movl	$0, 268(%rsp)
	movb	$1, 267(%rsp)
	movq	%rax, %r14
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	movq	%r14, %rdi
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movl	%ecx, %esi
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%r9, %rdx
	movq	%r11, 40(%rsp)          # 8-byte Spill
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movq	%r10, 24(%rsp)          # 8-byte Spill
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	movq	%r9, (%rsp)             # 8-byte Spill
	callq	memset
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rdi
	movl	12(%rsp), %esi          # 4-byte Reload
	movq	(%rsp), %rdx            # 8-byte Reload
	callq	memset
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rdi
	movl	12(%rsp), %esi          # 4-byte Reload
	movq	(%rsp), %rdx            # 8-byte Reload
	callq	memset
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rdi
	movl	12(%rsp), %esi          # 4-byte Reload
	movq	(%rsp), %rdx            # 8-byte Reload
	callq	memset
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rdx
	movq	%rdx, 72(%rsp)
	movq	8(%rax), %rdx
	movq	%rdx, 80(%rsp)
	movq	16(%rax), %rdx
	movq	%rdx, 88(%rsp)
	movq	24(%rax), %rdx
	movq	%rdx, 96(%rsp)
	movb	72(%rsp), %bpl
	andb	$-8, %bpl
	movb	%bpl, 72(%rsp)
	movb	103(%rsp), %bpl
	andb	$127, %bpl
	movb	%bpl, 103(%rsp)
	movb	103(%rsp), %bpl
	orb	$64, %bpl
	movb	%bpl, 103(%rsp)
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	48(%rsp), %rsi          # 8-byte Reload
	callq	fexpand
	leaq	184(%rsp), %rdi
	leaq	144(%rsp), %rsi
	leaq	72(%rsp), %rdx
	leaq	224(%rsp), %rcx
	callq	cmult
	leaq	104(%rsp), %rdi
	leaq	144(%rsp), %rsi
	callq	crecip
	leaq	144(%rsp), %rdi
	leaq	184(%rsp), %rsi
	leaq	104(%rsp), %rdx
	callq	fmul
	leaq	144(%rsp), %rsi
	movq	64(%rsp), %rdi          # 8-byte Reload
	callq	fcontract
	xorl	%eax, %eax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	curve25519_donna, .Lfunc_end13-curve25519_donna
	.cfi_endproc
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
