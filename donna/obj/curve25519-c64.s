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
	testb	$1, %r10b
	cmoveq	(%rsi,%rdi,8), %r8
	movq	%r8, (%rsi,%rdi,8)
	movl	%eax, %ecx
	movl	%ecx, %edi
	movb	-25(%rsp), %r10b        # 1-byte Reload
	andb	$1, %r10b
	testb	$1, %r10b
	cmoveq	(%r9,%rdi,8), %rdx
	movq	%rdx, (%r9,%rdi,8)
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-32, %rsp
	subq	$448, %rsp              # imm = 0x1C0
	movabsq	$2251799813685247, %rax # imm = 0x7FFFFFFFFFFFF
	movb	$1, 431(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 368(%rsp)
	vmovaps	%ymm0, 352(%rsp)
	vmovaps	%ymm0, 320(%rsp)
	movq	$0, 312(%rsp)
	movq	$0, 304(%rsp)
	movq	$0, 296(%rsp)
	movq	$0, 288(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 272(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 256(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 232(%rsp)
	movq	(%rdx), %rcx
	movq	%rcx, 312(%rsp)
	movq	8(%rdx), %rcx
	movq	%rcx, 304(%rsp)
	movq	16(%rdx), %rcx
	movq	%rcx, 296(%rsp)
	movq	24(%rdx), %rcx
	movq	%rcx, 288(%rsp)
	movq	32(%rdx), %rcx
	movq	%rcx, 280(%rsp)
	movq	(%rsi), %rcx
	movq	%rcx, 272(%rsp)
	movq	8(%rsi), %rcx
	movq	%rcx, 264(%rsp)
	movq	16(%rsi), %rcx
	movq	%rcx, 256(%rsp)
	movq	24(%rsi), %rcx
	movq	%rcx, 248(%rsp)
	movq	32(%rsi), %rcx
	movq	%rcx, 240(%rsp)
	movq	312(%rsp), %rcx
	movq	272(%rsp), %rdx
	movq	%rax, 224(%rsp)         # 8-byte Spill
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rdx, 328(%rsp)
	movq	%rax, 320(%rsp)
	movq	312(%rsp), %rax
	movq	264(%rsp), %rcx
	mulq	%rcx
	movq	304(%rsp), %rcx
	movq	272(%rsp), %rsi
	movq	%rax, 216(%rsp)         # 8-byte Spill
	movq	%rcx, %rax
	movq	%rdx, 208(%rsp)         # 8-byte Spill
	mulq	%rsi
	movq	216(%rsp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	208(%rsp), %rax         # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rcx, 336(%rsp)
	movq	%rax, 344(%rsp)
	movq	312(%rsp), %rax
	movq	256(%rsp), %rcx
	mulq	%rcx
	movq	296(%rsp), %rcx
	movq	272(%rsp), %rsi
	movq	%rax, 200(%rsp)         # 8-byte Spill
	movq	%rcx, %rax
	movq	%rdx, 192(%rsp)         # 8-byte Spill
	mulq	%rsi
	movq	200(%rsp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	192(%rsp), %rax         # 8-byte Reload
	adcq	%rdx, %rax
	movq	304(%rsp), %rdx
	movq	264(%rsp), %rsi
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rsi
	addq	%rax, %rcx
	movq	184(%rsp), %rax         # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rcx, 352(%rsp)
	movq	%rax, 360(%rsp)
	movq	312(%rsp), %rax
	movq	248(%rsp), %rcx
	mulq	%rcx
	movq	288(%rsp), %rcx
	movq	272(%rsp), %rsi
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movq	%rcx, %rax
	movq	%rdx, 168(%rsp)         # 8-byte Spill
	mulq	%rsi
	movq	176(%rsp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	168(%rsp), %rax         # 8-byte Reload
	adcq	%rdx, %rax
	movq	304(%rsp), %rdx
	movq	256(%rsp), %rsi
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rsi
	addq	%rax, %rcx
	movq	160(%rsp), %rax         # 8-byte Reload
	adcq	%rdx, %rax
	movq	296(%rsp), %rdx
	movq	264(%rsp), %rsi
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rsi
	addq	%rax, %rcx
	movq	152(%rsp), %rax         # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rcx, 368(%rsp)
	movq	%rax, 376(%rsp)
	movq	312(%rsp), %rax
	movq	240(%rsp), %rcx
	mulq	%rcx
	movq	280(%rsp), %rcx
	movq	272(%rsp), %rsi
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movq	%rcx, %rax
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	mulq	%rsi
	movq	144(%rsp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	136(%rsp), %rax         # 8-byte Reload
	adcq	%rdx, %rax
	movq	288(%rsp), %rdx
	movq	264(%rsp), %rsi
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rsi
	addq	%rax, %rcx
	movq	128(%rsp), %rax         # 8-byte Reload
	adcq	%rdx, %rax
	movq	304(%rsp), %rdx
	movq	248(%rsp), %rsi
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rsi
	addq	%rax, %rcx
	movq	120(%rsp), %rax         # 8-byte Reload
	adcq	%rdx, %rax
	movq	296(%rsp), %rdx
	movq	256(%rsp), %rsi
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rsi
	addq	%rax, %rcx
	movq	112(%rsp), %rax         # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rcx, 384(%rsp)
	movq	%rax, 392(%rsp)
	movq	280(%rsp), %rax
	leaq	(%rax,%rax,4), %rcx
	shlq	$2, %rcx
	subq	%rax, %rcx
	movq	%rcx, 280(%rsp)
	movq	304(%rsp), %rax
	leaq	(%rax,%rax,4), %rcx
	shlq	$2, %rcx
	subq	%rax, %rcx
	movq	%rcx, 304(%rsp)
	movq	296(%rsp), %rax
	leaq	(%rax,%rax,4), %rcx
	shlq	$2, %rcx
	subq	%rax, %rcx
	movq	%rcx, 296(%rsp)
	movq	288(%rsp), %rax
	leaq	(%rax,%rax,4), %rcx
	shlq	$2, %rcx
	subq	%rax, %rcx
	movq	%rcx, 288(%rsp)
	movq	320(%rsp), %rax
	movq	328(%rsp), %rcx
	movq	280(%rsp), %rdx
	movq	264(%rsp), %rsi
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rsi
	movq	304(%rsp), %rsi
	movq	240(%rsp), %r8
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	%rsi, %rax
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	mulq	%r8
	movq	96(%rsp), %rsi          # 8-byte Reload
	addq	%rax, %rsi
	movq	88(%rsp), %rax          # 8-byte Reload
	adcq	%rdx, %rax
	movq	296(%rsp), %rdx
	movq	248(%rsp), %r8
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	%rdx, %rax
	mulq	%r8
	addq	%rax, %rsi
	movq	80(%rsp), %rax          # 8-byte Reload
	adcq	%rdx, %rax
	movq	288(%rsp), %rdx
	movq	256(%rsp), %r8
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	%rdx, %rax
	mulq	%r8
	addq	%rax, %rsi
	movq	72(%rsp), %rax          # 8-byte Reload
	adcq	%rdx, %rax
	movq	104(%rsp), %rdx         # 8-byte Reload
	addq	%rsi, %rdx
	adcq	%rax, %rcx
	movq	%rdx, 320(%rsp)
	movq	%rcx, 328(%rsp)
	movq	336(%rsp), %rax
	movq	344(%rsp), %rcx
	movq	280(%rsp), %rdx
	movq	256(%rsp), %rsi
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rsi
	movq	296(%rsp), %rsi
	movq	240(%rsp), %r8
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	%rsi, %rax
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	mulq	%r8
	movq	56(%rsp), %rsi          # 8-byte Reload
	addq	%rax, %rsi
	movq	48(%rsp), %rax          # 8-byte Reload
	adcq	%rdx, %rax
	movq	288(%rsp), %rdx
	movq	248(%rsp), %r8
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%rdx, %rax
	mulq	%r8
	addq	%rax, %rsi
	movq	40(%rsp), %rax          # 8-byte Reload
	adcq	%rdx, %rax
	movq	64(%rsp), %rdx          # 8-byte Reload
	addq	%rsi, %rdx
	adcq	%rax, %rcx
	movq	%rdx, 336(%rsp)
	movq	%rcx, 344(%rsp)
	movq	352(%rsp), %rax
	movq	360(%rsp), %rcx
	movq	280(%rsp), %rdx
	movq	248(%rsp), %rsi
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rsi
	movq	288(%rsp), %rsi
	movq	240(%rsp), %r8
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	%rsi, %rax
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	mulq	%r8
	movq	24(%rsp), %rsi          # 8-byte Reload
	addq	%rax, %rsi
	movq	16(%rsp), %rax          # 8-byte Reload
	adcq	%rdx, %rax
	movq	32(%rsp), %rdx          # 8-byte Reload
	addq	%rsi, %rdx
	adcq	%rax, %rcx
	movq	%rdx, 352(%rsp)
	movq	%rcx, 360(%rsp)
	movq	368(%rsp), %rax
	movq	376(%rsp), %rcx
	movq	280(%rsp), %rdx
	movq	240(%rsp), %rsi
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rsi
	movq	8(%rsp), %rsi           # 8-byte Reload
	addq	%rax, %rsi
	adcq	%rdx, %rcx
	movq	%rsi, 368(%rsp)
	movq	%rcx, 376(%rsp)
	movq	320(%rsp), %rax
	movabsq	$2251799813685247, %rcx # imm = 0x7FFFFFFFFFFFF
	andq	%rcx, %rax
	movq	%rax, 312(%rsp)
	movq	320(%rsp), %rax
	movq	328(%rsp), %rdx
	shldq	$13, %rax, %rdx
	movq	%rdx, 232(%rsp)
	movq	336(%rsp), %rax
	movq	344(%rsp), %rdx
	movq	232(%rsp), %rsi
	addq	%rsi, %rax
	adcq	$0, %rdx
	movq	%rax, 336(%rsp)
	movq	%rdx, 344(%rsp)
	movq	336(%rsp), %rax
	andq	%rcx, %rax
	movq	%rax, 304(%rsp)
	movq	336(%rsp), %rax
	movq	344(%rsp), %rdx
	shldq	$13, %rax, %rdx
	movq	%rdx, 232(%rsp)
	movq	352(%rsp), %rax
	movq	360(%rsp), %rdx
	movq	232(%rsp), %rsi
	addq	%rsi, %rax
	adcq	$0, %rdx
	movq	%rax, 352(%rsp)
	movq	%rdx, 360(%rsp)
	movq	352(%rsp), %rax
	andq	%rcx, %rax
	movq	%rax, 296(%rsp)
	movq	352(%rsp), %rax
	movq	360(%rsp), %rdx
	shldq	$13, %rax, %rdx
	movq	%rdx, 232(%rsp)
	movq	368(%rsp), %rax
	movq	376(%rsp), %rdx
	movq	232(%rsp), %rsi
	addq	%rsi, %rax
	adcq	$0, %rdx
	movq	%rax, 368(%rsp)
	movq	%rdx, 376(%rsp)
	movq	368(%rsp), %rax
	andq	%rcx, %rax
	movq	%rax, 288(%rsp)
	movq	368(%rsp), %rax
	movq	376(%rsp), %rdx
	shldq	$13, %rax, %rdx
	movq	%rdx, 232(%rsp)
	movq	384(%rsp), %rax
	movq	392(%rsp), %rdx
	movq	232(%rsp), %rsi
	addq	%rsi, %rax
	adcq	$0, %rdx
	movq	%rax, 384(%rsp)
	movq	%rdx, 392(%rsp)
	movq	384(%rsp), %rax
	andq	%rcx, %rax
	movq	%rax, 280(%rsp)
	movq	384(%rsp), %rax
	movq	392(%rsp), %rcx
	shldq	$13, %rax, %rcx
	movq	%rcx, 232(%rsp)
	movq	312(%rsp), %rax
	imulq	$19, 232(%rsp), %rcx
	addq	%rcx, %rax
	movq	%rax, 312(%rsp)
	movq	312(%rsp), %rax
	shrq	$51, %rax
	movq	%rax, 232(%rsp)
	movq	224(%rsp), %rax         # 8-byte Reload
	andq	312(%rsp), %rax
	movq	%rax, 312(%rsp)
	movq	304(%rsp), %rax
	addq	232(%rsp), %rax
	movq	%rax, 304(%rsp)
	movq	304(%rsp), %rax
	shrq	$51, %rax
	movq	%rax, 232(%rsp)
	movq	224(%rsp), %rax         # 8-byte Reload
	andq	304(%rsp), %rax
	movq	%rax, 304(%rsp)
	movq	296(%rsp), %rax
	addq	232(%rsp), %rax
	movq	%rax, 296(%rsp)
	movq	312(%rsp), %rax
	movq	%rax, (%rdi)
	movq	304(%rsp), %rax
	movq	%rax, 8(%rdi)
	movq	296(%rsp), %rax
	movq	%rax, 16(%rdi)
	movq	288(%rsp), %rax
	movq	%rax, 24(%rdi)
	movq	280(%rsp), %rax
	movq	%rax, 32(%rdi)
	movq	%rbp, %rsp
	popq	%rbp
	vzeroupper
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
	subq	$208, %rsp
	.cfi_def_cfa_offset 216
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	120(%rsp), %r8
	movb	$1, 207(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 48(%r8)
	vmovups	%ymm0, 32(%r8)
	vmovups	%ymm0, (%r8)
	movq	$0, 112(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 96(%rsp)
	movq	$0, 88(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movq	(%rsi), %r8
	movq	%r8, 112(%rsp)
	movq	8(%rsi), %r8
	movq	%r8, 104(%rsp)
	movq	16(%rsi), %r8
	movq	%r8, 96(%rsp)
	movq	24(%rsi), %r8
	movq	%r8, 88(%rsp)
	movq	32(%rsi), %rsi
	movq	%rsi, 80(%rsp)
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	%rcx, 8(%rsp)           # 8-byte Spill
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	24(%rsp), %rcx          # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	jae	.LBB5_4
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	movabsq	$2251799813685247, %rax # imm = 0x7FFFFFFFFFFFF
	movq	112(%rsp), %rcx
	addq	%rcx, %rcx
	movq	%rcx, 64(%rsp)
	movq	104(%rsp), %rcx
	addq	%rcx, %rcx
	movq	%rcx, 56(%rsp)
	movq	96(%rsp), %rcx
	imulq	$38, %rcx, %rcx
	movq	%rcx, 48(%rsp)
	movq	80(%rsp), %rcx
	leaq	(%rcx,%rcx,4), %rdx
	shlq	$2, %rdx
	subq	%rcx, %rdx
	movq	%rdx, 32(%rsp)
	movq	32(%rsp), %rcx
	addq	%rcx, %rcx
	movq	%rcx, 40(%rsp)
	movq	112(%rsp), %rcx
	movq	%rax, -8(%rsp)          # 8-byte Spill
	movq	%rcx, %rax
	mulq	%rcx
	movq	40(%rsp), %rcx
	movq	104(%rsp), %rsi
	movq	%rax, -16(%rsp)         # 8-byte Spill
	movq	%rcx, %rax
	movq	%rdx, -24(%rsp)         # 8-byte Spill
	mulq	%rsi
	movq	-16(%rsp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	-24(%rsp), %rax         # 8-byte Reload
	adcq	%rdx, %rax
	movq	48(%rsp), %rdx
	movq	88(%rsp), %rsi
	movq	%rax, -32(%rsp)         # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rsi
	addq	%rax, %rcx
	movq	-32(%rsp), %rax         # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rcx, 120(%rsp)
	movq	%rax, 128(%rsp)
	movq	64(%rsp), %rax
	movq	104(%rsp), %rcx
	mulq	%rcx
	movq	40(%rsp), %rcx
	movq	96(%rsp), %rsi
	movq	%rax, -40(%rsp)         # 8-byte Spill
	movq	%rcx, %rax
	movq	%rdx, -48(%rsp)         # 8-byte Spill
	mulq	%rsi
	movq	-40(%rsp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	-48(%rsp), %rax         # 8-byte Reload
	adcq	%rdx, %rax
	movq	88(%rsp), %rdx
	leaq	(%rdx,%rdx,4), %rsi
	shlq	$2, %rsi
	subq	%rdx, %rsi
	movq	%rax, -56(%rsp)         # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rsi
	addq	%rax, %rcx
	movq	-56(%rsp), %rax         # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rcx, 136(%rsp)
	movq	%rax, 144(%rsp)
	movq	64(%rsp), %rax
	movq	96(%rsp), %rcx
	mulq	%rcx
	movq	104(%rsp), %rcx
	movq	%rax, -64(%rsp)         # 8-byte Spill
	movq	%rcx, %rax
	movq	%rdx, -72(%rsp)         # 8-byte Spill
	mulq	%rcx
	movq	-64(%rsp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	-72(%rsp), %rax         # 8-byte Reload
	adcq	%rdx, %rax
	movq	40(%rsp), %rdx
	movq	88(%rsp), %rsi
	movq	%rax, -80(%rsp)         # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rsi
	addq	%rax, %rcx
	movq	-80(%rsp), %rax         # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rcx, 152(%rsp)
	movq	%rax, 160(%rsp)
	movq	64(%rsp), %rax
	movq	88(%rsp), %rcx
	mulq	%rcx
	movq	56(%rsp), %rcx
	movq	96(%rsp), %rsi
	movq	%rax, -88(%rsp)         # 8-byte Spill
	movq	%rcx, %rax
	movq	%rdx, -96(%rsp)         # 8-byte Spill
	mulq	%rsi
	movq	-88(%rsp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	-96(%rsp), %rax         # 8-byte Reload
	adcq	%rdx, %rax
	movq	80(%rsp), %rdx
	movq	32(%rsp), %rsi
	movq	%rax, -104(%rsp)        # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rsi
	addq	%rax, %rcx
	movq	-104(%rsp), %rax        # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rcx, 168(%rsp)
	movq	%rax, 176(%rsp)
	movq	64(%rsp), %rax
	movq	80(%rsp), %rcx
	mulq	%rcx
	movq	56(%rsp), %rcx
	movq	88(%rsp), %rsi
	movq	%rax, -112(%rsp)        # 8-byte Spill
	movq	%rcx, %rax
	movq	%rdx, -120(%rsp)        # 8-byte Spill
	mulq	%rsi
	movq	-112(%rsp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-120(%rsp), %rax        # 8-byte Reload
	adcq	%rdx, %rax
	movq	96(%rsp), %rdx
	movq	%rax, -128(%rsp)        # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rdx
	addq	%rax, %rcx
	movq	-128(%rsp), %rax        # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rcx, 184(%rsp)
	movq	%rax, 192(%rsp)
	movq	120(%rsp), %rax
	movabsq	$2251799813685247, %rcx # imm = 0x7FFFFFFFFFFFF
	andq	%rcx, %rax
	movq	%rax, 112(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rdx
	shldq	$13, %rax, %rdx
	movq	%rdx, 72(%rsp)
	movq	136(%rsp), %rax
	movq	144(%rsp), %rdx
	movq	72(%rsp), %rsi
	addq	%rsi, %rax
	adcq	$0, %rdx
	movq	%rax, 136(%rsp)
	movq	%rdx, 144(%rsp)
	movq	136(%rsp), %rax
	andq	%rcx, %rax
	movq	%rax, 104(%rsp)
	movq	136(%rsp), %rax
	movq	144(%rsp), %rdx
	shldq	$13, %rax, %rdx
	movq	%rdx, 72(%rsp)
	movq	152(%rsp), %rax
	movq	160(%rsp), %rdx
	movq	72(%rsp), %rsi
	addq	%rsi, %rax
	adcq	$0, %rdx
	movq	%rax, 152(%rsp)
	movq	%rdx, 160(%rsp)
	movq	152(%rsp), %rax
	andq	%rcx, %rax
	movq	%rax, 96(%rsp)
	movq	152(%rsp), %rax
	movq	160(%rsp), %rdx
	shldq	$13, %rax, %rdx
	movq	%rdx, 72(%rsp)
	movq	168(%rsp), %rax
	movq	176(%rsp), %rdx
	movq	72(%rsp), %rsi
	addq	%rsi, %rax
	adcq	$0, %rdx
	movq	%rax, 168(%rsp)
	movq	%rdx, 176(%rsp)
	movq	168(%rsp), %rax
	andq	%rcx, %rax
	movq	%rax, 88(%rsp)
	movq	168(%rsp), %rax
	movq	176(%rsp), %rdx
	shldq	$13, %rax, %rdx
	movq	%rdx, 72(%rsp)
	movq	184(%rsp), %rax
	movq	192(%rsp), %rdx
	movq	72(%rsp), %rsi
	addq	%rsi, %rax
	adcq	$0, %rdx
	movq	%rax, 184(%rsp)
	movq	%rdx, 192(%rsp)
	movq	184(%rsp), %rax
	andq	%rcx, %rax
	movq	%rax, 80(%rsp)
	movq	184(%rsp), %rax
	movq	192(%rsp), %rcx
	shldq	$13, %rax, %rcx
	movq	%rcx, 72(%rsp)
	movq	112(%rsp), %rax
	imulq	$19, 72(%rsp), %rcx
	addq	%rcx, %rax
	movq	%rax, 112(%rsp)
	movq	112(%rsp), %rax
	shrq	$51, %rax
	movq	%rax, 72(%rsp)
	movq	-8(%rsp), %rax          # 8-byte Reload
	andq	112(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	104(%rsp), %rax
	addq	72(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	104(%rsp), %rax
	shrq	$51, %rax
	movq	%rax, 72(%rsp)
	movq	-8(%rsp), %rax          # 8-byte Reload
	andq	104(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	96(%rsp), %rax
	addq	72(%rsp), %rax
	movq	%rax, 96(%rsp)
# %bb.3:                                #   in Loop: Header=BB5_1 Depth=1
	movq	(%rsp), %rax            # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	jmp	.LBB5_1
.LBB5_4:
	movq	112(%rsp), %rax
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%rax, (%rcx)
	movq	104(%rsp), %rax
	movq	%rax, 8(%rcx)
	movq	96(%rsp), %rax
	movq	%rax, 16(%rcx)
	movq	88(%rsp), %rax
	movq	%rax, 24(%rcx)
	movq	80(%rsp), %rax
	movq	%rax, 32(%rcx)
	addq	$208, %rsp
	vzeroupper
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
	subq	$472, %rsp              # imm = 0x1D8
	.cfi_def_cfa_offset 528
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	544(%rsp), %rax
	movq	536(%rsp), %r10
	movq	528(%rsp), %r11
	leaq	144(%rsp), %rbx
	leaq	184(%rsp), %r14
	leaq	224(%rsp), %r15
	leaq	264(%rsp), %r12
	leaq	304(%rsp), %r13
	leaq	344(%rsp), %rbp
	movq	%rax, 136(%rsp)         # 8-byte Spill
	leaq	384(%rsp), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	leaq	424(%rsp), %rax
	movb	$1, 471(%rsp)
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	32(%rax), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movq	104(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, 32(%rax)
	movq	112(%rsp), %rcx         # 8-byte Reload
	vmovups	(%rcx), %ymm0
	vmovups	%ymm0, (%rax)
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	%r11, %rcx
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	32(%rcx), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 32(%rax)
	movq	72(%rsp), %rcx          # 8-byte Reload
	vmovups	(%rcx), %ymm0
	vmovups	%ymm0, (%rax)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, (%rbp)
	movq	$0, 32(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, (%r13)
	movq	$0, 32(%r13)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, (%r12)
	movq	$0, 32(%r12)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, (%r15)
	movq	$0, 32(%r15)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, (%r14)
	movq	$0, 32(%r14)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, (%rbx)
	movq	$0, 32(%rbx)
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movq	%r9, %rsi
	movq	%r11, 48(%rsp)          # 8-byte Spill
	movq	%r9, 40(%rsp)           # 8-byte Spill
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%r10, 16(%rsp)          # 8-byte Spill
	vzeroupper
	callq	fsum
	leaq	424(%rsp), %rsi
	movq	40(%rsp), %rdi          # 8-byte Reload
	callq	fdifference_backwards
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	fsum
	leaq	384(%rsp), %rsi
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	fdifference_backwards
	leaq	224(%rsp), %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	40(%rsp), %rdx          # 8-byte Reload
	callq	fmul
	leaq	184(%rsp), %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	16(%rsp), %rdx          # 8-byte Reload
	callq	fmul
	xorl	%esi, %esi
	movl	%esi, 12(%rsp)          # 4-byte Spill
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
	movq	224(%rsp,%rsi,8), %rsi
	movq	%rsi, 384(%rsp,%rdx,8)
# %bb.3:                                #   in Loop: Header=BB6_1 Depth=1
	movl	8(%rsp), %eax           # 4-byte Reload
	addl	$1, %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	jmp	.LBB6_1
.LBB6_4:
	leaq	224(%rsp), %rdi
	leaq	184(%rsp), %rsi
	callq	fsum
	leaq	184(%rsp), %rdi
	leaq	384(%rsp), %rsi
	callq	fdifference_backwards
	movl	$1, %eax
	movl	%eax, %edx
	leaq	224(%rsp), %rsi
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	fsquare_times
	movl	$1, %eax
	movl	%eax, %edx
	leaq	144(%rsp), %rdi
	leaq	184(%rsp), %rsi
	callq	fsquare_times
	leaq	144(%rsp), %rsi
	movq	96(%rsp), %rdi          # 8-byte Reload
	movq	136(%rsp), %rdx         # 8-byte Reload
	callq	fmul
	movl	$1, %eax
	movl	%eax, %edx
	leaq	304(%rsp), %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	fsquare_times
	movl	$1, %eax
	movl	%eax, %edx
	leaq	264(%rsp), %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	fsquare_times
	leaq	304(%rsp), %rsi
	leaq	264(%rsp), %rdx
	movq	64(%rsp), %rdi          # 8-byte Reload
	callq	fmul
	leaq	264(%rsp), %rdi
	leaq	304(%rsp), %rsi
	callq	fdifference_backwards
	movl	$121665, %eax           # imm = 0x1DB41
	movl	%eax, %edx
	leaq	344(%rsp), %rdi
	leaq	264(%rsp), %rsi
	callq	fscalar_product
	leaq	344(%rsp), %rdi
	leaq	304(%rsp), %rsi
	callq	fsum
	leaq	264(%rsp), %rsi
	leaq	344(%rsp), %rdx
	movq	56(%rsp), %rdi          # 8-byte Reload
	callq	fmul
	addq	$472, %rsp              # imm = 0x1D8
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
	pushq	%r12
	pushq	%rbx
	subq	$416, %rsp              # imm = 0x1A0
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	xorl	%eax, %eax
	leaq	-360(%rbp), %r8
	leaq	-320(%rbp), %r9
	leaq	-280(%rbp), %r10
	leaq	-240(%rbp), %r11
	leaq	-200(%rbp), %rbx
	leaq	-160(%rbp), %r14
	leaq	-120(%rbp), %r15
	leaq	-80(%rbp), %r12
	movb	$1, -33(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, (%r12)
	movq	$0, 32(%r12)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, (%r15)
	movq	$0, 32(%r15)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, (%r14)
	movq	$0, 32(%r14)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, (%rbx)
	movq	$0, 32(%rbx)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, (%r11)
	movq	$0, 32(%r11)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, (%r10)
	movq	$0, 32(%r10)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, (%r9)
	movq	$0, 32(%r9)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, (%r8)
	movq	$0, 32(%r8)
	movq	$1, -120(%rbp)
	movq	$1, -160(%rbp)
	movq	$1, -280(%rbp)
	movq	$1, -360(%rbp)
	movq	%rdx, -368(%rbp)        # 8-byte Spill
	movq	%rsi, -376(%rbp)        # 8-byte Spill
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	movl	%eax, -396(%rbp)        # 4-byte Spill
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	movl	-396(%rbp), %eax        # 4-byte Reload
	cmpl	$5, %eax
	movl	%eax, -400(%rbp)        # 4-byte Spill
	jae	.LBB7_4
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	movl	-400(%rbp), %eax        # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	movl	%eax, %ecx
	movl	%ecx, %esi
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	(%rdi,%rsi,8), %rsi
	movq	%rsi, -80(%rbp,%rdx,8)
# %bb.3:                                #   in Loop: Header=BB7_1 Depth=1
	movl	-400(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -396(%rbp)        # 4-byte Spill
	jmp	.LBB7_1
.LBB7_4:
	xorl	%eax, %eax
	movl	%eax, -404(%rbp)        # 4-byte Spill
	jmp	.LBB7_5
.LBB7_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_9 Depth 2
	movl	-404(%rbp), %eax        # 4-byte Reload
	cmpl	$32, %eax
	movl	%eax, -408(%rbp)        # 4-byte Spill
	jae	.LBB7_8
# %bb.6:                                #   in Loop: Header=BB7_5 Depth=1
	xorl	%eax, %eax
	movl	$31, %ecx
	movl	-408(%rbp), %edx        # 4-byte Reload
	subl	%edx, %ecx
	movl	%ecx, %esi
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movb	(%rdi,%rsi), %r8b
	movq	%rsp, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movb	%r8b, (%rsi)
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	movl	%eax, -420(%rbp)        # 4-byte Spill
	jmp	.LBB7_9
.LBB7_7:                                #   in Loop: Header=BB7_5 Depth=1
	movl	-408(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -404(%rbp)        # 4-byte Spill
	jmp	.LBB7_5
.LBB7_8:
	xorl	%eax, %eax
	movl	%eax, -424(%rbp)        # 4-byte Spill
	jmp	.LBB7_16
.LBB7_9:                                #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-420(%rbp), %eax        # 4-byte Reload
	cmpl	$8, %eax
	movl	%eax, -428(%rbp)        # 4-byte Spill
	jae	.LBB7_12
# %bb.10:                               #   in Loop: Header=BB7_9 Depth=2
	movq	-416(%rbp), %rax        # 8-byte Reload
	movb	(%rax), %cl
	shrb	$7, %cl
	movzbl	%cl, %edx
	movl	%edx, %esi
	movl	-428(%rbp), %edx        # 4-byte Reload
	andl	$1, %edx
	cmpl	$0, %edx
	movq	%rsi, -440(%rbp)        # 8-byte Spill
	je	.LBB7_13
	jmp	.LBB7_14
.LBB7_11:                               #   in Loop: Header=BB7_9 Depth=2
	movl	-428(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -420(%rbp)        # 4-byte Spill
	jmp	.LBB7_9
.LBB7_12:                               #   in Loop: Header=BB7_5 Depth=1
	jmp	.LBB7_7
.LBB7_13:                               #   in Loop: Header=BB7_9 Depth=2
	leaq	-160(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	movq	-440(%rbp), %rdx        # 8-byte Reload
	vzeroupper
	callq	swap_conditional
	leaq	-200(%rbp), %rdi
	leaq	-120(%rbp), %rsi
	movq	-440(%rbp), %rdx        # 8-byte Reload
	callq	swap_conditional
	subq	$32, %rsp
	movq	%rsp, %rdx
	movq	-392(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, 16(%rdx)
	leaq	-120(%rbp), %rdi
	movq	%rdi, 8(%rdx)
	leaq	-80(%rbp), %rdi
	movq	%rdi, (%rdx)
	leaq	-320(%rbp), %rdi
	leaq	-360(%rbp), %rsi
	leaq	-240(%rbp), %rdx
	leaq	-280(%rbp), %rcx
	leaq	-160(%rbp), %r8
	leaq	-200(%rbp), %r9
	callq	fmonty
	addq	$32, %rsp
	leaq	-320(%rbp), %rdi
	leaq	-240(%rbp), %rsi
	movq	-440(%rbp), %rdx        # 8-byte Reload
	callq	swap_conditional
	leaq	-360(%rbp), %rdi
	leaq	-280(%rbp), %rsi
	movq	-440(%rbp), %rdx        # 8-byte Reload
	callq	swap_conditional
	jmp	.LBB7_15
.LBB7_14:                               #   in Loop: Header=BB7_9 Depth=2
	leaq	-320(%rbp), %rdi
	leaq	-240(%rbp), %rsi
	movq	-440(%rbp), %rdx        # 8-byte Reload
	vzeroupper
	callq	swap_conditional
	leaq	-360(%rbp), %rdi
	leaq	-280(%rbp), %rsi
	movq	-440(%rbp), %rdx        # 8-byte Reload
	callq	swap_conditional
	subq	$32, %rsp
	movq	%rsp, %rdx
	movq	-392(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, 16(%rdx)
	leaq	-280(%rbp), %rdi
	movq	%rdi, 8(%rdx)
	leaq	-240(%rbp), %rdi
	movq	%rdi, (%rdx)
	leaq	-160(%rbp), %rdi
	leaq	-200(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	leaq	-120(%rbp), %rcx
	leaq	-320(%rbp), %r8
	leaq	-360(%rbp), %r9
	callq	fmonty
	addq	$32, %rsp
	leaq	-160(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	movq	-440(%rbp), %rdx        # 8-byte Reload
	callq	swap_conditional
	leaq	-200(%rbp), %rdi
	leaq	-120(%rbp), %rsi
	movq	-440(%rbp), %rdx        # 8-byte Reload
	callq	swap_conditional
.LBB7_15:                               #   in Loop: Header=BB7_9 Depth=2
	movq	-416(%rbp), %rax        # 8-byte Reload
	movb	(%rax), %cl
	shlb	$1, %cl
	movb	%cl, (%rax)
	jmp	.LBB7_11
.LBB7_16:                               # =>This Inner Loop Header: Depth=1
	movl	-424(%rbp), %eax        # 4-byte Reload
	cmpl	$5, %eax
	movl	%eax, -444(%rbp)        # 4-byte Spill
	jae	.LBB7_19
# %bb.17:                               #   in Loop: Header=BB7_16 Depth=1
	movl	-444(%rbp), %eax        # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	movl	%eax, %ecx
	movl	%ecx, %esi
	movq	-160(%rbp,%rsi,8), %rsi
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, (%rdi,%rdx,8)
	movl	%eax, %ecx
	movl	%ecx, %edx
	movl	%eax, %ecx
	movl	%ecx, %esi
	movq	-200(%rbp,%rsi,8), %rsi
	movq	-376(%rbp), %r8         # 8-byte Reload
	movq	%rsi, (%r8,%rdx,8)
# %bb.18:                               #   in Loop: Header=BB7_16 Depth=1
	movl	-444(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -424(%rbp)        # 4-byte Spill
	jmp	.LBB7_16
.LBB7_19:
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
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
	subq	$184, %rsp
	.cfi_def_cfa_offset 192
	leaq	16(%rsp), %rax
	leaq	56(%rsp), %rcx
	leaq	96(%rsp), %rdx
	leaq	136(%rsp), %r8
	movb	$1, 183(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, (%r8)
	movq	$0, 32(%r8)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, (%rdx)
	movq	$0, 32(%rdx)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, (%rcx)
	movq	$0, 32(%rcx)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, (%rax)
	movq	$0, 32(%rax)
	movl	$1, %r9d
	movl	%r9d, %edx
	leaq	136(%rsp), %rax
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, (%rsp)            # 8-byte Spill
	vzeroupper
	callq	fsquare_times
	movl	$2, %r9d
	movl	%r9d, %edx
	leaq	96(%rsp), %rdi
	leaq	136(%rsp), %rsi
	callq	fsquare_times
	leaq	56(%rsp), %rdi
	leaq	96(%rsp), %rsi
	movq	(%rsp), %rdx            # 8-byte Reload
	callq	fmul
	leaq	56(%rsp), %rsi
	leaq	136(%rsp), %rax
	movq	%rax, %rdi
	movq	%rax, %rdx
	callq	fmul
	movl	$1, %r9d
	movl	%r9d, %edx
	leaq	96(%rsp), %rdi
	leaq	136(%rsp), %rsi
	callq	fsquare_times
	leaq	96(%rsp), %rsi
	leaq	56(%rsp), %rax
	movq	%rax, %rdi
	movq	%rax, %rdx
	callq	fmul
	movl	$5, %r9d
	movl	%r9d, %edx
	leaq	96(%rsp), %rdi
	leaq	56(%rsp), %rsi
	callq	fsquare_times
	leaq	96(%rsp), %rsi
	leaq	56(%rsp), %rax
	movq	%rax, %rdi
	movq	%rax, %rdx
	callq	fmul
	movl	$10, %r9d
	movl	%r9d, %edx
	leaq	96(%rsp), %rdi
	leaq	56(%rsp), %rsi
	callq	fsquare_times
	leaq	16(%rsp), %rdi
	leaq	96(%rsp), %rsi
	leaq	56(%rsp), %rdx
	callq	fmul
	movl	$20, %r9d
	movl	%r9d, %edx
	leaq	96(%rsp), %rdi
	leaq	16(%rsp), %rsi
	callq	fsquare_times
	leaq	96(%rsp), %rax
	leaq	16(%rsp), %rdx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	fmul
	movl	$10, %r9d
	movl	%r9d, %edx
	leaq	96(%rsp), %rax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	fsquare_times
	leaq	96(%rsp), %rsi
	leaq	56(%rsp), %rax
	movq	%rax, %rdi
	movq	%rax, %rdx
	callq	fmul
	movl	$50, %r9d
	movl	%r9d, %edx
	leaq	96(%rsp), %rdi
	leaq	56(%rsp), %rsi
	callq	fsquare_times
	leaq	16(%rsp), %rdi
	leaq	96(%rsp), %rsi
	leaq	56(%rsp), %rdx
	callq	fmul
	movl	$100, %r9d
	movl	%r9d, %edx
	leaq	96(%rsp), %rdi
	leaq	16(%rsp), %rsi
	callq	fsquare_times
	leaq	96(%rsp), %rax
	leaq	16(%rsp), %rdx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	fmul
	movl	$50, %r9d
	movl	%r9d, %edx
	leaq	96(%rsp), %rax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	fsquare_times
	leaq	96(%rsp), %rax
	leaq	56(%rsp), %rdx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	fmul
	movl	$5, %r9d
	movl	%r9d, %edx
	leaq	96(%rsp), %rax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	fsquare_times
	leaq	96(%rsp), %rsi
	leaq	136(%rsp), %rdx
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	fmul
	addq	$184, %rsp
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-32, %rsp
	subq	$192, %rsp
	movb	$1, 175(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 112(%rsp)
	vmovaps	%ymm0, 96(%rsp)
	vmovaps	%ymm0, 64(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	8(%rsi), %rax
	movq	%rax, 80(%rsp)
	movq	$0, 88(%rsp)
	movq	16(%rsi), %rax
	movq	%rax, 96(%rsp)
	movq	$0, 104(%rsp)
	movq	24(%rsi), %rax
	movq	%rax, 112(%rsp)
	movq	$0, 120(%rsp)
	movq	32(%rsi), %rax
	movq	%rax, 128(%rsp)
	movq	$0, 136(%rsp)
	movq	88(%rsp), %rax
	movq	80(%rsp), %rsi
	movq	64(%rsp), %rcx
	movq	72(%rsp), %rdx
	movq	%rdx, %r8
	shrq	$51, %r8
	shldq	$13, %rcx, %rdx
	addq	%rdx, %rsi
	adcq	%r8, %rax
	movq	%rsi, 80(%rsp)
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
	movq	136(%rsp), %rax
	movq	128(%rsp), %rcx
	movq	112(%rsp), %rdx
	movq	120(%rsp), %rsi
	movq	%rsi, %r8
	shrq	$51, %r8
	shldq	$13, %rdx, %rsi
	addq	%rsi, %rcx
	adcq	%r8, %rax
	movq	%rcx, 128(%rsp)
	movq	%rax, 136(%rsp)
	movw	118(%rsp), %r9w
	andw	$7, %r9w
	movw	%r9w, 118(%rsp)
	movq	$0, 120(%rsp)
	movq	64(%rsp), %rax
	movq	72(%rsp), %rcx
	movq	128(%rsp), %rdx
	movq	136(%rsp), %rsi
	movq	%rsi, %r8
	shldq	$13, %rdx, %r8
	shrq	$51, %rsi
	movl	$19, %r10d
	movl	%r10d, %edx
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	%r8, %rax
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	mulq	%rdx
	leaq	(%rsi,%rsi,4), %r8
	shlq	$2, %r8
	subq	%rsi, %r8
	addq	%r8, %rdx
	movq	56(%rsp), %rsi          # 8-byte Reload
	addq	%rax, %rsi
	adcq	%rdx, %rcx
	movq	%rsi, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movw	134(%rsp), %r9w
	andw	$7, %r9w
	movw	%r9w, 134(%rsp)
	movq	$0, 136(%rsp)
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
	movq	136(%rsp), %rax
	movq	128(%rsp), %rcx
	movq	112(%rsp), %rdx
	movq	120(%rsp), %rsi
	movq	%rsi, %r8
	shrq	$51, %r8
	shldq	$13, %rdx, %rsi
	addq	%rsi, %rcx
	adcq	%r8, %rax
	movq	%rcx, 128(%rsp)
	movq	%rax, 136(%rsp)
	movw	118(%rsp), %r9w
	andw	$7, %r9w
	movw	%r9w, 118(%rsp)
	movq	$0, 120(%rsp)
	movq	64(%rsp), %rax
	movq	72(%rsp), %rcx
	movq	128(%rsp), %rdx
	movq	136(%rsp), %rsi
	movq	%rsi, %r8
	shldq	$13, %rdx, %r8
	shrq	$51, %rsi
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%r8, %rax
	movq	48(%rsp), %rdx          # 8-byte Reload
	mulq	%rdx
	leaq	(%rsi,%rsi,4), %r8
	shlq	$2, %r8
	subq	%rsi, %r8
	addq	%r8, %rdx
	movq	40(%rsp), %rsi          # 8-byte Reload
	addq	%rax, %rsi
	adcq	%rdx, %rcx
	movq	%rsi, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movw	134(%rsp), %r9w
	andw	$7, %r9w
	movw	%r9w, 134(%rsp)
	movq	$0, 136(%rsp)
	movq	64(%rsp), %rax
	movq	72(%rsp), %rcx
	addq	$19, %rax
	adcq	$0, %rcx
	movq	%rax, 64(%rsp)
	movq	%rcx, 72(%rsp)
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
	movq	136(%rsp), %rax
	movq	128(%rsp), %rcx
	movq	112(%rsp), %rdx
	movq	120(%rsp), %rsi
	movq	%rsi, %r8
	shrq	$51, %r8
	shldq	$13, %rdx, %rsi
	addq	%rsi, %rcx
	adcq	%r8, %rax
	movq	%rcx, 128(%rsp)
	movq	%rax, 136(%rsp)
	movw	118(%rsp), %r9w
	andw	$7, %r9w
	movw	%r9w, 118(%rsp)
	movq	$0, 120(%rsp)
	movq	64(%rsp), %rax
	movq	72(%rsp), %rcx
	movq	128(%rsp), %rdx
	movq	136(%rsp), %rsi
	movq	%rsi, %r8
	shldq	$13, %rdx, %r8
	shrq	$51, %rsi
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%r8, %rax
	movq	48(%rsp), %rdx          # 8-byte Reload
	mulq	%rdx
	leaq	(%rsi,%rsi,4), %r8
	shlq	$2, %r8
	subq	%rsi, %r8
	addq	%r8, %rdx
	movq	32(%rsp), %rsi          # 8-byte Reload
	addq	%rax, %rsi
	adcq	%rdx, %rcx
	movq	%rsi, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movw	134(%rsp), %r9w
	andw	$7, %r9w
	movw	%r9w, 134(%rsp)
	movq	$0, 136(%rsp)
	movq	64(%rsp), %rax
	movq	72(%rsp), %rcx
	movabsq	$2251799813685229, %rdx # imm = 0x7FFFFFFFFFFED
	addq	%rdx, %rax
	adcq	$0, %rcx
	movq	%rax, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	80(%rsp), %rax
	movq	88(%rsp), %rcx
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
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
	movq	128(%rsp), %rax
	movq	136(%rsp), %rcx
	addq	%rdx, %rax
	adcq	$0, %rcx
	movq	%rax, 128(%rsp)
	movq	%rcx, 136(%rsp)
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
	movq	136(%rsp), %rax
	movq	128(%rsp), %rcx
	movq	112(%rsp), %rdx
	movq	120(%rsp), %rsi
	movq	%rsi, %r8
	shrq	$51, %r8
	shldq	$13, %rdx, %rsi
	addq	%rsi, %rcx
	adcq	%r8, %rax
	movq	%rcx, 128(%rsp)
	movq	%rax, 136(%rsp)
	movw	118(%rsp), %r9w
	andw	$7, %r9w
	movw	%r9w, 118(%rsp)
	movq	$0, 120(%rsp)
	movw	134(%rsp), %r9w
	andw	$7, %r9w
	movw	%r9w, 134(%rsp)
	movq	$0, 136(%rsp)
	movq	64(%rsp), %rax
	movq	80(%rsp), %rcx
	shlq	$51, %rcx
	orq	%rcx, %rax
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	%rax, %rsi
	vzeroupper
	callq	store_limb
	movq	24(%rsp), %rax          # 8-byte Reload
	addq	$8, %rax
	movq	80(%rsp), %rcx
	movq	88(%rsp), %rdx
	shldq	$51, %rcx, %rdx
	movq	96(%rsp), %rcx
	shlq	$38, %rcx
	orq	%rcx, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	store_limb
	movq	24(%rsp), %rax          # 8-byte Reload
	addq	$16, %rax
	movq	96(%rsp), %rcx
	movq	104(%rsp), %rdx
	shldq	$38, %rcx, %rdx
	movq	112(%rsp), %rcx
	shlq	$25, %rcx
	orq	%rcx, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	store_limb
	movq	24(%rsp), %rax          # 8-byte Reload
	addq	$24, %rax
	movq	112(%rsp), %rcx
	movq	120(%rsp), %rdx
	shldq	$25, %rcx, %rdx
	movq	128(%rsp), %rcx
	shlq	$12, %rcx
	orq	%rcx, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	store_limb
	movq	%rbp, %rsp
	popq	%rbp
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
	subq	$216, %rsp
	.cfi_def_cfa_offset 224
	leaq	48(%rsp), %rax
	leaq	88(%rsp), %rcx
	leaq	128(%rsp), %r8
	leaq	168(%rsp), %r9
	movl	$0, 212(%rsp)
	movb	$1, 211(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, (%r9)
	movq	$0, 32(%r9)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, (%r8)
	movq	$0, 32(%r8)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, (%rcx)
	movq	$0, 32(%rcx)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, (%rax)
	movq	$0, 32(%rax)
	movq	(%rsi), %rax
	movq	%rax, 16(%rsp)
	movq	8(%rsi), %rax
	movq	%rax, 24(%rsp)
	movq	16(%rsi), %rax
	movq	%rax, 32(%rsp)
	movq	24(%rsi), %rax
	movq	%rax, 40(%rsp)
	movb	16(%rsp), %r10b
	andb	$-8, %r10b
	movb	%r10b, 16(%rsp)
	movb	47(%rsp), %r10b
	andb	$127, %r10b
	movb	%r10b, 47(%rsp)
	movb	47(%rsp), %r10b
	orb	$64, %r10b
	movb	%r10b, 47(%rsp)
	leaq	168(%rsp), %rax
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, %rsi
	vzeroupper
	callq	fexpand
	leaq	128(%rsp), %rdi
	leaq	88(%rsp), %rsi
	leaq	16(%rsp), %rdx
	leaq	168(%rsp), %rcx
	callq	cmult
	leaq	48(%rsp), %rdi
	leaq	88(%rsp), %rsi
	callq	crecip
	leaq	88(%rsp), %rdi
	leaq	128(%rsp), %rsi
	leaq	48(%rsp), %rdx
	callq	fmul
	leaq	88(%rsp), %rsi
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	fcontract
	xorl	%eax, %eax
	addq	$216, %rsp
	retq
.Lfunc_end13:
	.size	curve25519_donna, .Lfunc_end13-curve25519_donna
	.cfi_endproc
                                        # -- End function
	.section	.text.__llvm_retpoline_r11,"axG",@progbits,__llvm_retpoline_r11,comdat
	.hidden	__llvm_retpoline_r11    # -- Begin function __llvm_retpoline_r11
	.weak	__llvm_retpoline_r11
	.p2align	4, 0x90
	.type	__llvm_retpoline_r11,@function
__llvm_retpoline_r11:                   # @__llvm_retpoline_r11
# %bb.0:                                # %entry
	callq	.LBB14_2
.LBB14_1:                               # Block address taken
                                        # %entry
                                        # =>This Inner Loop Header: Depth=1
	pause
	lfence
	jmp	.LBB14_1
	.p2align	4, 0x90
.LBB14_2:                               # Block address taken
                                        # %entry
	movq	%r11, (%rsp)
	retq
.Lfunc_end14:
	.size	__llvm_retpoline_r11, .Lfunc_end14-__llvm_retpoline_r11
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
