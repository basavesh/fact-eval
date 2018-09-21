	.text
	.file	"Module"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function fmul
.LCPI0_0:
	.quad	2251799813685247        # 0x7ffffffffffff
	.quad	2251799813685247        # 0x7ffffffffffff
	.text
	.p2align	4, 0x90
	.type	fmul,@function
fmul:                                   # @fmul
# %bb.0:                                # %entry
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$128, %rsp
	movq	%rdx, %r14
	movq	(%rsi), %rcx
	movq	8(%rsi), %rbp
	movq	(%r14), %rbx
	movq	8(%r14), %r13
	movq	%rcx, %rax
	mulq	%rbx
	movq	%rdx, -96(%rsp)         # 8-byte Spill
	movq	%rax, -104(%rsp)        # 8-byte Spill
	movq	%rbp, %rax
	mulq	%rbx
	movq	%rdx, (%rsp)            # 8-byte Spill
	movq	%rax, -8(%rsp)          # 8-byte Spill
	movq	%rcx, %rax
	mulq	%r13
	movq	%rax, -16(%rsp)         # 8-byte Spill
	movq	%rdx, %r8
	movq	16(%rsi), %r15
	movq	%r15, %rax
	mulq	%rbx
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	16(%r14), %r10
	movq	%rcx, %rax
	mulq	%r10
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	%rbp, %rax
	mulq	%r13
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%rdx, -72(%rsp)         # 8-byte Spill
	movq	24(%rsi), %r12
	movq	%r12, %rax
	mulq	%rbx
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	movq	24(%r14), %r11
	movq	%rcx, %rax
	mulq	%r11
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%r15, %rax
	mulq	%r13
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%rbp, %rax
	mulq	%r10
	movq	%rax, -56(%rsp)         # 8-byte Spill
	movq	%rdx, -64(%rsp)         # 8-byte Spill
	movq	32(%rsi), %rax
	movq	%rax, -80(%rsp)         # 8-byte Spill
	mulq	%rbx
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	movq	32(%r14), %rsi
	movq	%rcx, %rax
	mulq	%rsi
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	leaq	(%rsi,%rsi,4), %rcx
	shlq	$2, %rcx
	subq	%rsi, %rcx
	leaq	(%r11,%r11,4), %rsi
	shlq	$2, %rsi
	subq	%r11, %rsi
	movq	%rbp, %rax
	mulq	%r11
	movq	%rax, %r14
	movq	%rdx, %r11
	leaq	(,%r13,4), %rbx
	addq	%r13, %rbx
	shlq	$2, %rbx
	subq	%r13, %rbx
	movq	%r12, %rax
	mulq	%r13
	movq	%rax, -32(%rsp)         # 8-byte Spill
	movq	%rdx, -24(%rsp)         # 8-byte Spill
	leaq	(%r10,%r10,4), %r9
	shlq	$2, %r9
	subq	%r10, %r9
	movq	%r15, %rax
	mulq	%r10
	movq	%rdx, -40(%rsp)         # 8-byte Spill
	movq	%rax, -48(%rsp)         # 8-byte Spill
	movq	%rbp, %rax
	mulq	%rcx
	movq	%rdx, %rbp
	movq	%rax, %r13
	movq	-80(%rsp), %r10         # 8-byte Reload
	movq	%r10, %rax
	mulq	%rbx
	movq	%rdx, -112(%rsp)        # 8-byte Spill
	movq	%rax, -120(%rsp)        # 8-byte Spill
	movq	%r12, %rax
	mulq	%r9
	movq	%rdx, -128(%rsp)        # 8-byte Spill
	movq	%rax, %rbx
	movq	%r15, %rax
	mulq	%rsi
	addq	-104(%rsp), %r13        # 8-byte Folded Reload
	adcq	-96(%rsp), %rbp         # 8-byte Folded Reload
	addq	%rax, %r13
	adcq	%rdx, %rbp
	addq	%rbx, %r13
	adcq	-128(%rsp), %rbp        # 8-byte Folded Reload
	addq	-120(%rsp), %r13        # 8-byte Folded Reload
	adcq	-112(%rsp), %rbp        # 8-byte Folded Reload
	movq	%r15, %rax
	mulq	%rcx
	movq	%rdx, -120(%rsp)        # 8-byte Spill
	movq	%rax, -128(%rsp)        # 8-byte Spill
	movq	%r10, %rax
	mulq	%r9
	movq	%rdx, -104(%rsp)        # 8-byte Spill
	movq	%rax, -112(%rsp)        # 8-byte Spill
	movq	%r12, %rax
	mulq	%rsi
	movq	%rdx, -88(%rsp)         # 8-byte Spill
	movq	%rax, %r9
	movq	%r12, %rax
	mulq	%rcx
	movq	%rdx, %r15
	movq	%rax, %r12
	movq	%r10, %rax
	mulq	%rsi
	movq	%rdx, %rsi
	movq	%rax, -96(%rsp)         # 8-byte Spill
	movq	%r10, %rax
	mulq	%rcx
	shldq	$13, %r13, %rbp
	movabsq	$2251799813685247, %r10 # imm = 0x7FFFFFFFFFFFF
	andq	%r10, %r13
	movq	-16(%rsp), %rcx         # 8-byte Reload
	addq	-8(%rsp), %rcx          # 8-byte Folded Reload
	adcq	(%rsp), %r8             # 8-byte Folded Reload
	addq	-128(%rsp), %rcx        # 8-byte Folded Reload
	adcq	-120(%rsp), %r8         # 8-byte Folded Reload
	addq	%r9, %rcx
	adcq	-88(%rsp), %r8          # 8-byte Folded Reload
	addq	-112(%rsp), %rcx        # 8-byte Folded Reload
	adcq	-104(%rsp), %r8         # 8-byte Folded Reload
	addq	%rbp, %rcx
	adcq	$0, %r8
	shldq	$13, %rcx, %r8
	andq	%r10, %rcx
	movq	%rcx, %r9
	movq	8(%rsp), %rcx           # 8-byte Reload
	addq	16(%rsp), %rcx          # 8-byte Folded Reload
	movq	-72(%rsp), %rbp         # 8-byte Reload
	adcq	24(%rsp), %rbp          # 8-byte Folded Reload
	addq	32(%rsp), %rcx          # 8-byte Folded Reload
	adcq	56(%rsp), %rbp          # 8-byte Folded Reload
	addq	%r12, %rcx
	adcq	%r15, %rbp
	addq	-96(%rsp), %rcx         # 8-byte Folded Reload
	adcq	%rsi, %rbp
	addq	%r8, %rcx
	adcq	$0, %rbp
	shldq	$13, %rcx, %rbp
	andq	%r10, %rcx
	movq	%rcx, %rsi
	movq	-56(%rsp), %rcx         # 8-byte Reload
	addq	48(%rsp), %rcx          # 8-byte Folded Reload
	movq	-64(%rsp), %rbx         # 8-byte Reload
	adcq	72(%rsp), %rbx          # 8-byte Folded Reload
	addq	40(%rsp), %rcx          # 8-byte Folded Reload
	adcq	64(%rsp), %rbx          # 8-byte Folded Reload
	addq	96(%rsp), %rcx          # 8-byte Folded Reload
	adcq	104(%rsp), %rbx         # 8-byte Folded Reload
	addq	%rax, %rcx
	adcq	%rdx, %rbx
	addq	%rbp, %rcx
	adcq	$0, %rbx
	shldq	$13, %rcx, %rbx
	addq	80(%rsp), %r14          # 8-byte Folded Reload
	adcq	88(%rsp), %r11          # 8-byte Folded Reload
	addq	-48(%rsp), %r14         # 8-byte Folded Reload
	adcq	-40(%rsp), %r11         # 8-byte Folded Reload
	addq	-32(%rsp), %r14         # 8-byte Folded Reload
	adcq	-24(%rsp), %r11         # 8-byte Folded Reload
	addq	112(%rsp), %r14         # 8-byte Folded Reload
	adcq	120(%rsp), %r11         # 8-byte Folded Reload
	addq	%rbx, %r14
	vmovq	%rcx, %xmm0
	adcq	$0, %r11
	vmovq	%r14, %xmm1
	shldq	$13, %r14, %r11
	leaq	(%r11,%r11,4), %rax
	shlq	$2, %rax
	subq	%r11, %rax
	addq	%r13, %rax
	movq	%rax, %rcx
	shrq	$51, %rcx
	addq	%r9, %rcx
	andq	%r10, %rax
	movq	%rax, (%rdi)
	movq	%rcx, %rax
	andq	%r10, %rcx
	movq	%rcx, 8(%rdi)
	shrq	$51, %rax
	addq	%rsi, %rax
	movq	%rax, 16(%rdi)
	vpunpcklqdq	%xmm1, %xmm0, %xmm0 # xmm0 = xmm0[0],xmm1[0]
	vpand	.LCPI0_0(%rip), %xmm0, %xmm0
	vmovdqu	%xmm0, 24(%rdi)
	addq	$128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	fmul, .Lfunc_end0-fmul
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fsquare_times
	.type	fsquare_times,@function
fsquare_times:                          # @fsquare_times
# %bb.0:                                # %entry
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdi, -56(%rsp)         # 8-byte Spill
	movq	(%rsi), %rbx
	movq	8(%rsi), %rdi
	movq	16(%rsi), %r10
	movq	24(%rsi), %r14
	movq	32(%rsi), %r11
	testq	%rdx, %rdx
	je	.LBB1_1
	.p2align	4, 0x90
.LBB1_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, -8(%rsp)          # 8-byte Spill
	imulq	$38, %r10, %r8
	leaq	(%r11,%r11,4), %rax
	shlq	$2, %rax
	subq	%r11, %rax
	movq	%rax, -80(%rsp)         # 8-byte Spill
	imulq	$38, %r11, %rsi
	movq	%rbx, %rax
	mulq	%rbx
	movq	%rax, %r9
	movq	%rdx, %r15
	leaq	(%rbx,%rbx), %rbp
	movq	%rsi, %rax
	movq	%rsi, -64(%rsp)         # 8-byte Spill
	mulq	%rdi
	movq	%rdx, %r13
	movq	%rax, %rbx
	movq	%r8, %rax
	mulq	%r14
	movq	%rdx, %r12
	addq	%r9, %rax
	adcq	%r15, %r12
	addq	%rbx, %rax
	movq	%rax, -48(%rsp)         # 8-byte Spill
	adcq	%r13, %r12
	movq	%rbp, %rax
	mulq	%rdi
	movq	%rdx, -16(%rsp)         # 8-byte Spill
	movq	%rax, -32(%rsp)         # 8-byte Spill
	movq	%rsi, %rax
	mulq	%r10
	movq	%rax, -40(%rsp)         # 8-byte Spill
	movq	%rdx, -24(%rsp)         # 8-byte Spill
	leaq	(%r14,%r14,4), %rax
	shlq	$2, %rax
	subq	%r14, %rax
	mulq	%r14
	movq	%rdx, %r13
	movq	%rax, %r15
	movq	%r10, %rax
	mulq	%rbp
	movq	%rbp, -72(%rsp)         # 8-byte Spill
	movq	%rdx, %rcx
	movq	%rax, %rbx
	movq	%rdi, %rax
	mulq	%rdi
	movq	%rdx, %rsi
	movq	%rax, %r8
	addq	%rbx, %r8
	adcq	%rcx, %rsi
	movq	-64(%rsp), %rax         # 8-byte Reload
	mulq	%r14
	movq	%rdx, %rcx
	addq	%r8, %rax
	movq	%rax, -64(%rsp)         # 8-byte Spill
	adcq	%rsi, %rcx
	movq	%r14, %rax
	mulq	%rbp
	movq	%rax, %rsi
	movq	%rdx, %r9
	leaq	(%rdi,%rdi), %rdi
	movq	%rdi, %rax
	mulq	%r10
	movq	%rdx, %r8
	movq	%rax, %rbx
	addq	%rsi, %rbx
	adcq	%r9, %r8
	movq	-80(%rsp), %rax         # 8-byte Reload
	mulq	%r11
	movq	%rdx, %rsi
	movq	%rax, %rbp
	addq	%rbx, %rbp
	adcq	%r8, %rsi
	movq	%r11, %rax
	mulq	-72(%rsp)               # 8-byte Folded Reload
	movq	%rdx, -72(%rsp)         # 8-byte Spill
	movq	%rax, -80(%rsp)         # 8-byte Spill
	movq	%r14, %rax
	mulq	%rdi
	movq	%rdx, %r14
	movq	%rax, %rbx
	movq	%r10, %rax
	mulq	%r10
	movq	-48(%rsp), %rdi         # 8-byte Reload
	shldq	$13, %rdi, %r12
	movabsq	$2251799813685247, %r8  # imm = 0x7FFFFFFFFFFFF
	andq	%r8, %rdi
	movq	%rdi, %r9
	addq	-32(%rsp), %r15         # 8-byte Folded Reload
	adcq	-16(%rsp), %r13         # 8-byte Folded Reload
	addq	-40(%rsp), %r15         # 8-byte Folded Reload
	adcq	-24(%rsp), %r13         # 8-byte Folded Reload
	addq	%r12, %r15
	adcq	$0, %r13
	shldq	$13, %r15, %r13
	andq	%r8, %r15
	addq	-64(%rsp), %r13         # 8-byte Folded Reload
	adcq	$0, %rcx
	shldq	$13, %r13, %rcx
	andq	%r8, %r13
	addq	%rbp, %rcx
	adcq	$0, %rsi
	shldq	$13, %rcx, %rsi
	andq	%r8, %rcx
	movq	%rax, %r11
	addq	%rbx, %r11
	adcq	%r14, %rdx
	addq	-80(%rsp), %r11         # 8-byte Folded Reload
	adcq	-72(%rsp), %rdx         # 8-byte Folded Reload
	addq	%rsi, %r11
	adcq	$0, %rdx
	shldq	$13, %r11, %rdx
	leaq	(%rdx,%rdx,4), %rbx
	shlq	$2, %rbx
	subq	%rdx, %rbx
	movq	-8(%rsp), %rdx          # 8-byte Reload
	andq	%r8, %r11
	addq	%r9, %rbx
	movq	%rbx, %rdi
	shrq	$51, %rdi
	addq	%r15, %rdi
	andq	%r8, %rbx
	movq	%rdi, %r10
	shrq	$51, %r10
	addq	%r13, %r10
	andq	%r8, %rdi
	movq	%rcx, %r14
	addq	$-1, %rdx
	jne	.LBB1_2
	jmp	.LBB1_3
.LBB1_1:
	movq	%r14, %rcx
.LBB1_3:                                # %._crit_edge
	movq	-56(%rsp), %rax         # 8-byte Reload
	movq	%rbx, (%rax)
	movq	%rdi, 8(%rax)
	movq	%r10, 16(%rax)
	movq	%rcx, 24(%rax)
	movq	%r11, 32(%rax)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fsquare_times, .Lfunc_end1-fsquare_times
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function fmonty
.LCPI2_0:
	.quad	18014398509481832       # 0x3fffffffffff68
	.quad	18014398509481976       # 0x3ffffffffffff8
.LCPI2_1:
	.quad	18014398509481976       # 0x3ffffffffffff8
	.quad	18014398509481976       # 0x3ffffffffffff8
.LCPI2_2:
	.quad	2251799813685247        # 0x7ffffffffffff
	.quad	2251799813685247        # 0x7ffffffffffff
	.text
	.p2align	4, 0x90
	.type	fmonty,@function
fmonty:                                 # @fmonty
# %bb.0:                                # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$480, %rsp              # imm = 0x1E0
	movq	%r8, %r12
	movq	16(%rbp), %r8
	vmovdqu	(%r12), %ymm0
	movq	32(%r12), %rax
	movq	32(%r8), %rbx
	movq	%rbx, 320(%rsp)
	vmovups	(%r8), %ymm1
	vmovaps	%ymm1, 288(%rsp)
	vxorps	%xmm1, %xmm1, %xmm1
	vmovaps	%ymm1, 224(%rsp)
	movq	%r9, %r13
	movq	$0, 256(%rsp)
	vmovaps	%ymm1, 352(%rsp)
	movq	$0, 384(%rsp)
	vmovaps	%ymm1, 160(%rsp)
	movq	$0, 192(%rsp)
	vmovaps	%ymm1, 96(%rsp)
	vmovaps	%ymm1, 32(%rsp)
	movq	$0, 128(%rsp)
	movq	$0, 64(%rsp)
	vmovaps	%ymm1, 416(%rsp)
	movq	$0, 448(%rsp)
	vmovq	%xmm0, %rbx
	addq	(%r13), %rbx
	movq	%rbx, (%r12)
	vpextrq	$1, %xmm0, %rbx
	addq	8(%r13), %rbx
	movq	%rbx, 8(%r12)
	vextractf128	$1, %ymm0, %xmm1
	vmovq	%xmm1, %rbx
	addq	16(%r13), %rbx
	movq	%rbx, 16(%r12)
	vpextrq	$1, %xmm1, %rbx
	addq	24(%r13), %rbx
	movq	%rbx, 24(%r12)
	movq	32(%r13), %rbx
	addq	%rax, %rbx
	movq	%rbx, 32(%r12)
	vmovdqa	.LCPI2_0(%rip), %xmm2   # xmm2 = [18014398509481832,18014398509481976]
	vpaddq	%xmm2, %xmm0, %xmm0
	vmovdqa	%xmm2, %xmm4
	vmovdqa	.LCPI2_1(%rip), %xmm2   # xmm2 = [18014398509481976,18014398509481976]
	vpaddq	%xmm2, %xmm1, %xmm1
	vmovdqa	%xmm2, %xmm5
	vmovdqu	(%r13), %ymm2
	vextractf128	$1, %ymm2, %xmm3
	vpsubq	%xmm3, %xmm1, %xmm1
	vpsubq	%xmm2, %xmm0, %xmm0
	vinsertf128	$1, %xmm1, %ymm0, %ymm0
	vmovups	%ymm0, (%r13)
	movabsq	$18014398509481976, %r15 # imm = 0x3FFFFFFFFFFFF8
	addq	%r15, %rax
	subq	32(%r13), %rax
	movq	24(%rbp), %r14
	movq	%rax, 32(%r13)
	movq	(%r14), %rax
	addq	%rax, (%r8)
	movq	8(%r14), %rax
	addq	%rax, 8(%r8)
	movq	16(%r14), %rax
	addq	%rax, 16(%r8)
	movq	24(%r14), %rax
	addq	%rax, 24(%r8)
	movq	32(%r14), %rax
	addq	%rax, 32(%r8)
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	vmovdqa	288(%rsp), %ymm0
	vpaddq	%xmm4, %xmm0, %xmm1
	vextractf128	$1, %ymm0, %xmm0
	vpaddq	%xmm5, %xmm0, %xmm0
	vmovdqu	(%r14), %ymm2
	vextractf128	$1, %ymm2, %xmm3
	vpsubq	%xmm3, %xmm0, %xmm0
	vpsubq	%xmm2, %xmm1, %xmm1
	vinsertf128	$1, %xmm0, %ymm1, %ymm0
	vmovups	%ymm0, (%r14)
	movq	320(%rsp), %rax
	addq	%r15, %rax
	subq	32(%r14), %rax
	movq	%rax, 32(%r14)
	leaq	96(%rsp), %rdi
	movq	%r8, %rsi
	movq	%r13, %rdx
	vzeroupper
	callq	fmul
	leaq	32(%rsp), %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	fmul
	vmovdqa	96(%rsp), %ymm0
	vmovdqa	%ymm0, 288(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 320(%rsp)
	vmovdqa	32(%rsp), %ymm1
	vextractf128	$1, %ymm0, %xmm2
	vextractf128	$1, %ymm1, %xmm3
	vpaddq	%xmm2, %xmm3, %xmm2
	vpaddq	%xmm0, %xmm1, %xmm0
	vinsertf128	$1, %xmm2, %ymm0, %ymm0
	vmovaps	%ymm0, 96(%rsp)
	movq	64(%rsp), %rcx
	leaq	(%rcx,%rax), %rdx
	movq	%rdx, 128(%rsp)
	vmovdqa	288(%rsp), %ymm0
	vmovdqa	.LCPI2_0(%rip), %xmm2   # xmm2 = [18014398509481832,18014398509481976]
	vpsubq	%xmm1, %xmm2, %xmm1
	vmovdqa	.LCPI2_1(%rip), %xmm2   # xmm2 = [18014398509481976,18014398509481976]
	vpsubq	%xmm3, %xmm2, %xmm2
	vextractf128	$1, %ymm0, %xmm3
	vpaddq	%xmm3, %xmm2, %xmm2
	vpaddq	%xmm0, %xmm1, %xmm0
	vinsertf128	$1, %xmm2, %ymm0, %ymm0
	vmovaps	%ymm0, 32(%rsp)
	movq	%r15, %rdx
	subq	%rcx, %rdx
	addq	%rax, %rdx
	movq	%rdx, 64(%rsp)
	movl	$1, %edx
	movq	%rbx, %rdi
	leaq	96(%rsp), %rsi
	vzeroupper
	callq	fsquare_times
	leaq	416(%rsp), %r14
	movl	$1, %edx
	movq	%r14, %rdi
	leaq	32(%rsp), %rsi
	callq	fsquare_times
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%r14, %rsi
	movq	32(%rbp), %rdx
	callq	fmul
	leaq	352(%rsp), %r14
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	fsquare_times
	leaq	160(%rsp), %r12
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	fsquare_times
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	fmul
	vmovdqa	352(%rsp), %ymm0
	vpaddq	.LCPI2_0(%rip), %xmm0, %xmm3
	vextractf128	$1, %ymm0, %xmm1
	vpaddq	.LCPI2_1(%rip), %xmm1, %xmm2
	vmovdqa	160(%rsp), %ymm4
	vextractf128	$1, %ymm4, %xmm5
	vpsubq	%xmm5, %xmm2, %xmm2
	vpsubq	%xmm4, %xmm3, %xmm3
	vinsertf128	$1, %xmm2, %ymm3, %ymm4
	vmovaps	%ymm4, 160(%rsp)
	movq	384(%rsp), %r8
	addq	%r8, %r15
	subq	192(%rsp), %r15
	movq	%r15, 192(%rsp)
	vmovq	%xmm3, %rax
	movl	$121665, %r10d          # imm = 0x1DB41
	mulq	%r10
	movq	%rax, %r9
	movq	%rdx, %rdi
	vpextrq	$1, %xmm3, %rax
	mulq	%r10
	movabsq	$2251799813685247, %rbx # imm = 0x7FFFFFFFFFFFF
	movq	%rdi, %rsi
	shrq	$51, %rsi
	shldq	$13, %r9, %rdi
	andq	%rbx, %r9
	addq	%rax, %rdi
	adcq	%rdx, %rsi
	vmovq	%xmm2, %rax
	mulq	%r10
	movq	%rsi, %rcx
	shldq	$13, %rdi, %rcx
	shrq	$51, %rsi
	addq	%rax, %rcx
	adcq	%rdx, %rsi
	vmovq	%rcx, %xmm3
	vmovq	%rdi, %xmm4
	vpunpcklqdq	%xmm3, %xmm4, %xmm3 # xmm3 = xmm4[0],xmm3[0]
	vpand	.LCPI2_2(%rip), %xmm3, %xmm3
	vpextrq	$1, %xmm2, %rax
	mulq	%r10
	shrdq	$51, %rsi, %rcx
	shrq	$51, %rsi
	addq	%rax, %rcx
	adcq	%rdx, %rsi
	movq	%r15, %rax
	mulq	%r10
	movq	%rsi, %rdi
	shldq	$13, %rcx, %rdi
	andq	%rbx, %rcx
	shrq	$51, %rsi
	addq	%rax, %rdi
	adcq	%rdx, %rsi
	shldq	$13, %rdi, %rsi
	leaq	(%rsi,%rsi,4), %rax
	shlq	$2, %rax
	subq	%rsi, %rax
	vmovq	%xmm0, %rdx
	addq	%r9, %rdx
	addq	%rax, %rdx
	movq	%rdx, 224(%rsp)
	vpalignr	$8, %xmm0, %xmm1, %xmm0 # xmm0 = xmm0[8,9,10,11,12,13,14,15],xmm1[0,1,2,3,4,5,6,7]
	vpaddq	%xmm0, %xmm3, %xmm0
	vmovdqu	%xmm0, 232(%rsp)
	vpextrq	$1, %xmm1, %rax
	addq	%rcx, %rax
	movq	%rax, 248(%rsp)
	andq	%rdi, %rbx
	addq	%r8, %rbx
	movq	%rbx, 256(%rsp)
	leaq	224(%rsp), %rdx
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %rsi
	vzeroupper
	callq	fmul
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	fmonty, .Lfunc_end2-fmonty
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5               # -- Begin function curve25519_donna
.LCPI3_0:
	.quad	2251799813685247        # 0x7ffffffffffff
	.quad	2251799813685247        # 0x7ffffffffffff
	.quad	2251799813685247        # 0x7ffffffffffff
	.quad	2251799813685247        # 0x7ffffffffffff
	.text
	.globl	curve25519_donna
	.p2align	4, 0x90
	.type	curve25519_donna,@function
curve25519_donna:                       # @curve25519_donna
# %bb.0:                                # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$736, %rsp              # imm = 0x2E0
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 520(%rsp)
	movq	$0, 536(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm0, 608(%rsp)
	vmovaps	%ymm0, 448(%rsp)
	movq	$0, 640(%rsp)
	movq	$0, 480(%rsp)
	vmovaps	%ymm0, 672(%rsp)
	movq	$0, 704(%rsp)
	vmovups	(%rsi), %ymm1
	vmovaps	%ymm1, 544(%rsp)
	andb	$-8, 544(%rsp)
	movb	575(%rsp), %al
	andb	$63, %al
	orb	$64, %al
	movb	%al, 575(%rsp)
	movzbl	(%rdx), %eax
	movzbl	1(%rdx), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	2(%rdx), %eax
	shlq	$16, %rax
	orq	%rcx, %rax
	movzbl	3(%rdx), %ecx
	shlq	$24, %rcx
	orq	%rax, %rcx
	movzbl	4(%rdx), %eax
	shlq	$32, %rax
	orq	%rcx, %rax
	movzbl	5(%rdx), %ecx
	shlq	$40, %rcx
	orq	%rax, %rcx
	movzbl	6(%rdx), %eax
	movzbl	7(%rdx), %esi
	shlq	$8, %rsi
	orq	%rax, %rsi
	shlq	$48, %rax
	orq	%rcx, %rax
	movzbl	8(%rdx), %ecx
	shlq	$16, %rcx
	orq	%rsi, %rcx
	movzbl	9(%rdx), %esi
	shlq	$24, %rsi
	orq	%rcx, %rsi
	movzbl	10(%rdx), %ecx
	shlq	$32, %rcx
	orq	%rsi, %rcx
	movzbl	11(%rdx), %esi
	shlq	$40, %rsi
	orq	%rcx, %rsi
	movzbl	12(%rdx), %ecx
	movzbl	13(%rdx), %ebx
	shlq	$8, %rbx
	orq	%rcx, %rbx
	shlq	$48, %rcx
	orq	%rsi, %rcx
	shrq	$3, %rcx
	movzbl	14(%rdx), %esi
	shlq	$16, %rsi
	orq	%rbx, %rsi
	movzbl	15(%rdx), %ebx
	shlq	$24, %rbx
	orq	%rsi, %rbx
	movzbl	16(%rdx), %esi
	shlq	$32, %rsi
	orq	%rbx, %rsi
	movzbl	17(%rdx), %ebx
	shlq	$40, %rbx
	orq	%rsi, %rbx
	movzbl	18(%rdx), %r9d
	shlq	$48, %r9
	movzbl	19(%rdx), %r8d
	movzbl	20(%rdx), %esi
	shlq	$8, %rsi
	orq	%r8, %rsi
	shlq	$56, %r8
	orq	%r9, %r8
	orq	%rbx, %r8
	shrq	$6, %r8
	movzbl	21(%rdx), %ebx
	shlq	$16, %rbx
	orq	%rsi, %rbx
	movzbl	22(%rdx), %esi
	shlq	$24, %rsi
	orq	%rbx, %rsi
	movzbl	23(%rdx), %ebx
	shlq	$32, %rbx
	orq	%rsi, %rbx
	movzbl	24(%rdx), %esi
	shlq	$40, %rsi
	orq	%rbx, %rsi
	movzbl	25(%rdx), %r9d
	movq	%r9, %rbx
	shlq	$48, %rbx
	orq	%rsi, %rbx
	shrq	%rbx
	vmovq	%rbx, %xmm1
	vmovq	%r8, %xmm2
	vpunpcklqdq	%xmm1, %xmm2, %xmm1 # xmm1 = xmm2[0],xmm1[0]
	vmovq	%rax, %xmm2
	vmovq	%rcx, %xmm3
	vpunpcklqdq	%xmm3, %xmm2, %xmm2 # xmm2 = xmm2[0],xmm3[0]
	vinsertf128	$1, %xmm1, %ymm2, %ymm1
	vandpd	.LCPI3_0(%rip), %ymm1, %ymm1
	vmovupd	%ymm1, 504(%rsp)
	shlq	$8, %r9
	movzbl	26(%rdx), %eax
	shlq	$16, %rax
	orq	%r9, %rax
	movzbl	27(%rdx), %ecx
	shlq	$24, %rcx
	orq	%rax, %rcx
	movzbl	28(%rdx), %eax
	shlq	$32, %rax
	orq	%rcx, %rax
	movzbl	29(%rdx), %ecx
	shlq	$40, %rcx
	orq	%rax, %rcx
	movzbl	30(%rdx), %eax
	shlq	$48, %rax
	orq	%rcx, %rax
	movzbl	31(%rdx), %ecx
	shlq	$56, %rcx
	orq	%rax, %rcx
	shrq	$12, %rcx
	movabsq	$2251799813685247, %rax # imm = 0x7FFFFFFFFFFFF
	andq	%rax, %rcx
	movq	%rcx, 536(%rsp)
	vmovups	%ymm0, 136(%rsp)
	vmovups	%ymm0, 72(%rsp)
	movq	%rdi, 488(%rsp)         # 8-byte Spill
	vmovaps	%ymm0, (%rsp)
	movq	$0, 32(%rsp)
	vmovaps	%ymm0, 320(%rsp)
	vmovups	%ymm0, 416(%rsp)
	movq	$0, 352(%rsp)
	vmovaps	%ymm0, 256(%rsp)
	movq	$0, 288(%rsp)
	vmovups	%ymm0, 376(%rsp)
	movq	$1, 128(%rsp)
	movq	$1, 64(%rsp)
	movq	$1, 408(%rsp)
	vmovupd	504(%rsp), %ymm0
	vmovapd	%ymm0, 192(%rsp)
	movq	$1, 368(%rsp)
	movq	536(%rsp), %rax
	movq	%rax, 224(%rsp)
	xorl	%ecx, %ecx
	leaq	408(%rsp), %r14
	leaq	64(%rsp), %r15
	movq	%rsp, %r12
	.p2align	4, 0x90
.LBB3_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_2 Depth 2
	movl	$31, %eax
	movq	%rcx, 496(%rsp)         # 8-byte Spill
	subq	%rcx, %rax
	movb	544(%rsp,%rax), %r13b
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB3_2:                                #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	testb	$1, %bl
	jne	.LBB3_4
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=2
	testb	%r13b, %r13b
	sets	%al
	vmovupd	64(%rsp), %ymm0
	vmovapd	192(%rsp), %ymm1
	vmovd	%eax, %xmm2
	vpshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	vpslld	$31, %xmm2, %xmm2
	vpsrad	$31, %xmm2, %xmm2
	vpmovsxdq	%xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2       # xmm2 = xmm2[2,3,0,1]
	vpmovsxdq	%xmm2, %xmm2
	vinsertf128	$1, %xmm2, %ymm3, %ymm3
	vmovapd	%ymm3, 576(%rsp)        # 32-byte Spill
	vblendvpd	%ymm3, %ymm1, %ymm0, %ymm2
	vmovupd	%ymm2, 64(%rsp)
	vblendvpd	%ymm3, %ymm0, %ymm1, %ymm0
	vmovapd	%ymm0, 192(%rsp)
	movq	96(%rsp), %rax
	movq	224(%rsp), %rcx
	movq	%rax, %rdx
	cmovsq	%rcx, %rdx
	movq	%rdx, 96(%rsp)
	cmovsq	%rax, %rcx
	movq	%rcx, 224(%rsp)
	vmovapd	(%rsp), %ymm0
	vmovupd	128(%rsp), %ymm1
	vblendvpd	%ymm3, %ymm1, %ymm0, %ymm2
	vmovapd	%ymm2, (%rsp)
	vblendvpd	%ymm3, %ymm0, %ymm1, %ymm0
	vmovupd	%ymm0, 128(%rsp)
	movq	32(%rsp), %rax
	movq	160(%rsp), %rcx
	movq	%rax, %rdx
	cmovsq	%rcx, %rdx
	movq	%rdx, 32(%rsp)
	cmovsq	%rax, %rcx
	movq	%rcx, 160(%rsp)
	subq	$8, %rsp
	leaq	264(%rsp), %rdi
	leaq	376(%rsp), %rsi
	leaq	328(%rsp), %rdx
	movq	%r14, %rcx
	movq	%r15, %r8
	movq	%r12, %r9
	leaq	512(%rsp), %rax
	pushq	%rax
	leaq	144(%rsp), %rax
	pushq	%rax
	leaq	216(%rsp), %rax
	pushq	%rax
	vzeroupper
	callq	fmonty
	addq	$32, %rsp
	testb	%r13b, %r13b
	vmovapd	256(%rsp), %ymm0
	vmovapd	320(%rsp), %ymm1
	vmovapd	576(%rsp), %ymm3        # 32-byte Reload
	vblendvpd	%ymm3, %ymm1, %ymm0, %ymm2
	vmovapd	%ymm2, 256(%rsp)
	vblendvpd	%ymm3, %ymm0, %ymm1, %ymm0
	vmovapd	%ymm0, 320(%rsp)
	movq	288(%rsp), %rax
	movq	352(%rsp), %rcx
	movq	%rax, %rdx
	cmovsq	%rcx, %rdx
	movq	%rdx, 288(%rsp)
	cmovsq	%rax, %rcx
	movq	%rcx, 352(%rsp)
	vmovupd	368(%rsp), %ymm0
	vmovupd	408(%rsp), %ymm1
	vblendvpd	%ymm3, %ymm1, %ymm0, %ymm2
	vmovupd	%ymm2, 368(%rsp)
	vblendvpd	%ymm3, %ymm0, %ymm1, %ymm0
	vmovupd	%ymm0, 408(%rsp)
	movq	400(%rsp), %rcx
	movq	440(%rsp), %rax
	movq	%rcx, %rdx
	cmovsq	%rax, %rdx
	movq	%rdx, 400(%rsp)
	cmovsq	%rcx, %rax
	leaq	440(%rsp), %rcx
	jmp	.LBB3_5
	.p2align	4, 0x90
.LBB3_4:                                #   in Loop: Header=BB3_2 Depth=2
	testb	%r13b, %r13b
	sets	%al
	vmovapd	256(%rsp), %ymm0
	vmovapd	320(%rsp), %ymm1
	vmovd	%eax, %xmm2
	vpshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	vpslld	$31, %xmm2, %xmm2
	vpsrad	$31, %xmm2, %xmm2
	vpmovsxdq	%xmm2, %xmm3
	vpshufd	$78, %xmm2, %xmm2       # xmm2 = xmm2[2,3,0,1]
	vpmovsxdq	%xmm2, %xmm2
	vinsertf128	$1, %xmm2, %ymm3, %ymm3
	vmovapd	%ymm3, 576(%rsp)        # 32-byte Spill
	vblendvpd	%ymm3, %ymm1, %ymm0, %ymm2
	vmovapd	%ymm2, 256(%rsp)
	vblendvpd	%ymm3, %ymm0, %ymm1, %ymm0
	vmovapd	%ymm0, 320(%rsp)
	movq	288(%rsp), %rax
	movq	352(%rsp), %rcx
	movq	%rax, %rdx
	cmovsq	%rcx, %rdx
	movq	%rdx, 288(%rsp)
	cmovsq	%rax, %rcx
	movq	%rcx, 352(%rsp)
	vmovupd	368(%rsp), %ymm0
	vmovupd	408(%rsp), %ymm1
	vblendvpd	%ymm3, %ymm1, %ymm0, %ymm2
	vmovupd	%ymm2, 368(%rsp)
	vblendvpd	%ymm3, %ymm0, %ymm1, %ymm0
	vmovupd	%ymm0, 408(%rsp)
	movq	400(%rsp), %rax
	movq	440(%rsp), %rcx
	movq	%rax, %rdx
	cmovsq	%rcx, %rdx
	movq	%rdx, 400(%rsp)
	cmovsq	%rax, %rcx
	movq	%rcx, 440(%rsp)
	subq	$8, %rsp
	movq	%r15, %rdi
	movq	%r12, %rsi
	leaq	200(%rsp), %rdx
	leaq	136(%rsp), %rcx
	leaq	264(%rsp), %r8
	leaq	376(%rsp), %r9
	leaq	512(%rsp), %rax
	pushq	%rax
	pushq	%r14
	leaq	344(%rsp), %rax
	pushq	%rax
	vzeroupper
	callq	fmonty
	addq	$32, %rsp
	testb	%r13b, %r13b
	vmovupd	64(%rsp), %ymm0
	vmovapd	192(%rsp), %ymm1
	vmovapd	576(%rsp), %ymm3        # 32-byte Reload
	vblendvpd	%ymm3, %ymm1, %ymm0, %ymm2
	vmovupd	%ymm2, 64(%rsp)
	vblendvpd	%ymm3, %ymm0, %ymm1, %ymm0
	vmovapd	%ymm0, 192(%rsp)
	movq	96(%rsp), %rax
	movq	224(%rsp), %rcx
	movq	%rax, %rdx
	cmovsq	%rcx, %rdx
	movq	%rdx, 96(%rsp)
	cmovsq	%rax, %rcx
	movq	%rcx, 224(%rsp)
	vmovapd	(%rsp), %ymm0
	vmovupd	128(%rsp), %ymm1
	vblendvpd	%ymm3, %ymm1, %ymm0, %ymm2
	vmovapd	%ymm2, (%rsp)
	vblendvpd	%ymm3, %ymm0, %ymm1, %ymm0
	vmovupd	%ymm0, 128(%rsp)
	movq	32(%rsp), %rcx
	movq	160(%rsp), %rax
	movq	%rcx, %rdx
	cmovsq	%rax, %rdx
	movq	%rdx, 32(%rsp)
	cmovsq	%rcx, %rax
	leaq	160(%rsp), %rcx
.LBB3_5:                                #   in Loop: Header=BB3_2 Depth=2
	movq	%rax, (%rcx)
	addb	%r13b, %r13b
	addl	$1, %ebx
	cmpl	$8, %ebx
	jne	.LBB3_2
# %bb.6:                                #   in Loop: Header=BB3_1 Depth=1
	movq	496(%rsp), %rcx         # 8-byte Reload
	addq	$1, %rcx
	cmpq	$32, %rcx
	jne	.LBB3_1
# %bb.7:                                # %cmult.exit
	vmovaps	64(%rsp), %ymm0
	vmovaps	%ymm0, 608(%rsp)
	vmovaps	(%rsp), %ymm0
	vmovaps	%ymm0, 448(%rsp)
	movq	96(%rsp), %rax
	movq	%rax, 640(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 480(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm0, 192(%rsp)
	vmovaps	%ymm0, 128(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 160(%rsp)
	vmovaps	%ymm0, 64(%rsp)
	movq	$0, 96(%rsp)
	vmovaps	%ymm0, (%rsp)
	movq	$0, 32(%rsp)
	leaq	192(%rsp), %r15
	leaq	448(%rsp), %r14
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	vzeroupper
	callq	fsquare_times
	leaq	128(%rsp), %rbx
	movl	$2, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	fsquare_times
	leaq	64(%rsp), %r12
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	fmul
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	fmul
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	fsquare_times
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	fmul
	movl	$5, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	fsquare_times
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	fmul
	movl	$10, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	fsquare_times
	movq	%rsp, %r13
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	fmul
	movl	$20, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	fsquare_times
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	fmul
	movl	$10, %edx
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	callq	fsquare_times
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	fmul
	movl	$50, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	fsquare_times
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	fmul
	movl	$100, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	fsquare_times
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	fmul
	movl	$50, %edx
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	callq	fsquare_times
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	fmul
	movl	$5, %edx
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	callq	fsquare_times
	leaq	672(%rsp), %r12
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	fmul
	leaq	608(%rsp), %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	fmul
	movq	448(%rsp), %rbx
	movq	%rbx, %r8
	shrq	$51, %r8
	xorl	%r9d, %r9d
	addq	456(%rsp), %r8
	setb	%r9b
	shldq	$13, %r8, %r9
	movabsq	$2251799813685247, %r14 # imm = 0x7FFFFFFFFFFFF
	andq	%r14, %rbx
	xorl	%r10d, %r10d
	addq	464(%rsp), %r9
	setb	%r10b
	shldq	$13, %r9, %r10
	andq	%r14, %r8
	xorl	%edi, %edi
	addq	472(%rsp), %r10
	setb	%dil
	shldq	$13, %r10, %rdi
	andq	%r14, %r9
	xorl	%eax, %eax
	addq	480(%rsp), %rdi
	setb	%al
	shldq	$13, %rdi, %rax
	movl	$19, %ecx
	mulq	%rcx
	andq	%r14, %r10
	addq	%rbx, %rax
	adcq	$0, %rdx
	andq	%r14, %rdi
	movq	%rdx, %rcx
	shldq	$13, %rax, %rdx
	shrq	$51, %rcx
	addq	%r8, %rdx
	adcq	$0, %rcx
	andq	%r14, %rax
	movq	%rcx, %rbx
	shrq	$51, %rbx
	shldq	$13, %rdx, %rcx
	addq	%r9, %rcx
	adcq	$0, %rbx
	andq	%r14, %rdx
	movq	%rbx, %rsi
	shrq	$51, %rsi
	shldq	$13, %rcx, %rbx
	addq	%r10, %rbx
	adcq	$0, %rsi
	shldq	$13, %rbx, %rsi
	andq	%r14, %rcx
	addq	%rdi, %rsi
	andq	%r14, %rbx
	movq	%rsi, %rdi
	shrq	$51, %rdi
	negl	%edi
	andl	$19, %edi
	andq	%r14, %rsi
	addq	%rax, %rdi
	addq	$19, %rdi
	movq	%rdi, %r9
	shrq	$51, %r9
	addq	%rdx, %r9
	andq	%r14, %rdi
	movq	%r9, %rax
	shrq	$51, %rax
	addq	%rcx, %rax
	andq	%r14, %r9
	movq	%rax, %rcx
	shrq	$51, %rcx
	addq	%rbx, %rcx
	andq	%r14, %rax
	movq	%rcx, %r8
	shrq	$51, %r8
	addq	%rsi, %r8
	andq	%r14, %rcx
	movq	%r8, %rsi
	shrq	$51, %rsi
	negl	%esi
	andl	$19, %esi
	addq	%rdi, %rsi
	movabsq	$2251799813685229, %rdx # imm = 0x7FFFFFFFFFFED
	addq	%rsi, %rdx
	movq	%rdx, %rdi
	shrq	$51, %rdi
	addq	%r9, %rdi
	addq	%r14, %rdi
	movq	%rdi, %r9
	shrq	$51, %r9
	addq	%rax, %r9
	addq	%r14, %r9
	movq	%r9, %r10
	shrq	$51, %r10
	addq	%rcx, %r10
	movabsq	$1970324836974592, %r11 # imm = 0x7000000000000
	andq	%rdx, %r11
	movq	%rdi, %rcx
	movq	488(%rsp), %rsi         # 8-byte Reload
	movb	%dl, (%rsi)
	movb	%dh, 1(%rsi)  # NOREX
	andq	%r14, %rcx
	movq	%rdx, %rbx
	shrq	$16, %rbx
	movb	%bl, 2(%rsi)
	movq	%rdx, %rax
	shrq	$24, %rax
	movb	%al, 3(%rsi)
	movq	%rdx, %rax
	shrq	$32, %rax
	movb	%al, 4(%rsi)
	movq	%rcx, %rax
	shrq	$13, %rax
	shlq	$51, %rcx
	orq	%r11, %rcx
	shrq	$40, %rdx
	movb	%dl, 5(%rsi)
	shrq	$48, %rcx
	movb	%cl, 6(%rsi)
	movq	%rdi, %rcx
	shrq	$5, %rcx
	movb	%cl, 7(%rsi)
	movb	%al, 8(%rsi)
	addq	%r14, %r10
	movq	%r10, %rbx
	movq	%rdi, %rcx
	shrq	$21, %rcx
	movb	%cl, 9(%rsi)
	andq	%r9, %r14
	movq	%r14, %rcx
	movq	%rdi, %rdx
	shrq	$29, %rdx
	movb	%dl, 10(%rsi)
	shlq	$38, %r14
	shrq	$37, %rdi
	movb	%dil, 11(%rsi)
	orq	%rax, %r14
	shrq	$32, %r14
	movb	%r14b, 12(%rsi)
	shrq	$51, %rbx
	movq	%r9, %rax
	shrq	$2, %rax
	movb	%al, 13(%rsi)
	shrq	$26, %rcx
	movq	%r9, %rax
	shrq	$10, %rax
	movb	%al, 14(%rsi)
	movq	%r9, %rax
	shrq	$18, %rax
	movb	%al, 15(%rsi)
	movl	%r10d, %eax
	shll	$25, %eax
	orl	%ecx, %eax
	shrl	$24, %eax
	movb	%cl, 16(%rsi)
	movq	%r9, %rcx
	shrq	$34, %rcx
	movb	%cl, 17(%rsi)
	shrq	$42, %r9
	movb	%r9b, 18(%rsi)
	movb	%al, 19(%rsi)
	addq	%r8, %rbx
	movq	%r10, %rax
	movq	%r10, %rcx
	shrq	$7, %rcx
	movb	%cl, 20(%rsi)
	shrq	$39, %rax
	movq	%r10, %rcx
	shrq	$15, %rcx
	movb	%cl, 21(%rsi)
	movq	%r10, %rcx
	shrq	$23, %rcx
	movb	%cl, 22(%rsi)
	shrq	$31, %r10
	movb	%r10b, 23(%rsi)
	movb	%al, 24(%rsi)
	shlq	$12, %rbx
                                        # kill: def %eax killed %eax killed %rax def %rax
	andl	$4095, %eax             # imm = 0xFFF
	movabsq	$9223372036854771712, %rcx # imm = 0x7FFFFFFFFFFFF000
	addq	%rcx, %rbx
	andq	%rbx, %rcx
	orl	%ecx, %eax
	movb	%ah, 25(%rsi)  # NOREX
	movq	%rbx, %rax
	shrq	$16, %rax
	movb	%al, 26(%rsi)
	movq	%rbx, %rax
	shrq	$24, %rax
	movb	%al, 27(%rsi)
	movq	%rbx, %rax
	shrq	$32, %rax
	movb	%al, 28(%rsi)
	movq	%rbx, %rax
	shrq	$40, %rax
	movb	%al, 29(%rsi)
	shrq	$48, %rbx
	movb	%bl, 30(%rsi)
	shrq	$56, %rcx
	movb	%cl, 31(%rsi)
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	curve25519_donna, .Lfunc_end3-curve25519_donna
                                        # -- End function
	.section	.text.__llvm_retpoline_r11,"axG",@progbits,__llvm_retpoline_r11,comdat
	.hidden	__llvm_retpoline_r11    # -- Begin function __llvm_retpoline_r11
	.weak	__llvm_retpoline_r11
	.p2align	4, 0x90
	.type	__llvm_retpoline_r11,@function
__llvm_retpoline_r11:                   # @__llvm_retpoline_r11
# %bb.0:                                # %entry
	callq	.LBB4_2
.LBB4_1:                                # Block address taken
                                        # %entry
                                        # =>This Inner Loop Header: Depth=1
	pause
	lfence
	jmp	.LBB4_1
	.p2align	4, 0x90
.LBB4_2:                                # Block address taken
                                        # %entry
	movq	%r11, (%rsp)
	retq
.Lfunc_end4:
	.size	__llvm_retpoline_r11, .Lfunc_end4-__llvm_retpoline_r11
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
