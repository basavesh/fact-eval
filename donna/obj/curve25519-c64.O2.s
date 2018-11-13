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
	movq	%rcx, %xmm0
	adcq	$0, %r11
	movq	%r14, %xmm1
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
	punpcklqdq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0]
	pand	.LCPI0_0(%rip), %xmm0
	movdqu	%xmm0, 24(%rdi)
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$344, %rsp              # imm = 0x158
	movq	%r8, %r12
	movq	400(%rsp), %r8
	movdqu	(%r12), %xmm1
	movdqu	16(%r12), %xmm0
	movq	32(%r12), %rbp
	movq	32(%r8), %rbx
	movq	%rbx, 80(%rsp)
	movups	(%r8), %xmm2
	movups	16(%r8), %xmm3
	movaps	%xmm3, 64(%rsp)
	movaps	%xmm2, 48(%rsp)
	xorps	%xmm2, %xmm2
	movaps	%xmm2, 224(%rsp)
	movq	%r9, %rbx
	movaps	%xmm2, 208(%rsp)
	movq	$0, 240(%rsp)
	movaps	%xmm2, 272(%rsp)
	movaps	%xmm2, 256(%rsp)
	movaps	%xmm2, 160(%rsp)
	movaps	%xmm2, 144(%rsp)
	movq	$0, 288(%rsp)
	movq	$0, 176(%rsp)
	movaps	%xmm2, 112(%rsp)
	movaps	%xmm2, 96(%rsp)
	movaps	%xmm2, 16(%rsp)
	movq	$0, 128(%rsp)
	movaps	%xmm2, (%rsp)
	movq	$0, 32(%rsp)
	movaps	%xmm2, 320(%rsp)
	movaps	%xmm2, 304(%rsp)
	movq	$0, 336(%rsp)
	movq	%xmm1, %rax
	addq	(%rbx), %rax
	movq	%rax, (%r12)
	pshufd	$78, %xmm1, %xmm2       # xmm2 = xmm1[2,3,0,1]
	movq	%xmm2, %rax
	addq	8(%rbx), %rax
	movq	%rax, 8(%r12)
	movq	%xmm0, %rax
	addq	16(%rbx), %rax
	movq	%rax, 16(%r12)
	pshufd	$78, %xmm0, %xmm2       # xmm2 = xmm0[2,3,0,1]
	movq	%xmm2, %rax
	addq	24(%rbx), %rax
	movq	%rax, 24(%r12)
	movq	32(%rbx), %rax
	addq	%rbp, %rax
	movq	%rax, 32(%r12)
	movdqa	.LCPI2_0(%rip), %xmm2   # xmm2 = [18014398509481832,18014398509481976]
	paddq	%xmm2, %xmm1
	movdqa	%xmm2, %xmm3
	movdqu	(%rbx), %xmm2
	psubq	%xmm2, %xmm1
	movdqu	16(%rbx), %xmm2
	movdqu	%xmm1, (%rbx)
	movdqa	.LCPI2_1(%rip), %xmm1   # xmm1 = [18014398509481976,18014398509481976]
	paddq	%xmm1, %xmm0
	movdqa	%xmm1, %xmm4
	psubq	%xmm2, %xmm0
	movdqu	%xmm0, 16(%rbx)
	movabsq	$18014398509481976, %r15 # imm = 0x3FFFFFFFFFFFF8
	addq	%r15, %rbp
	subq	32(%rbx), %rbp
	movq	408(%rsp), %r13
	movq	%rbp, 32(%rbx)
	movq	(%r13), %rax
	addq	%rax, (%r8)
	movq	8(%r13), %rax
	addq	%rax, 8(%r8)
	movq	16(%r13), %rax
	addq	%rax, 16(%r8)
	movq	24(%r13), %rax
	addq	%rax, 24(%r8)
	movq	32(%r13), %rax
	addq	%rax, 32(%r8)
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	movq	%rdx, %r14
	movq	%rsi, 200(%rsp)         # 8-byte Spill
	movq	%rdi, 192(%rsp)         # 8-byte Spill
	movdqa	48(%rsp), %xmm0
	paddq	%xmm3, %xmm0
	movdqu	(%r13), %xmm1
	psubq	%xmm1, %xmm0
	movdqu	16(%r13), %xmm1
	movdqu	%xmm0, (%r13)
	movdqa	64(%rsp), %xmm0
	paddq	%xmm4, %xmm0
	psubq	%xmm1, %xmm0
	movdqu	%xmm0, 16(%r13)
	movq	80(%rsp), %rax
	addq	%r15, %rax
	subq	32(%r13), %rax
	movq	%rax, 32(%r13)
	leaq	96(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r8, %rsi
	movq	%rbx, %rdx
	callq	fmul
	movq	%rsp, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	fmul
	movdqa	96(%rsp), %xmm0
	movdqa	112(%rsp), %xmm1
	movdqa	%xmm0, 48(%rsp)
	movdqa	%xmm1, 64(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 80(%rsp)
	movdqa	(%rsp), %xmm2
	paddq	%xmm2, %xmm0
	movdqa	%xmm0, 96(%rsp)
	movdqa	16(%rsp), %xmm0
	paddq	%xmm0, %xmm1
	movdqa	%xmm1, 112(%rsp)
	movq	32(%rsp), %rcx
	leaq	(%rcx,%rax), %rdx
	movq	%rdx, 128(%rsp)
	movdqa	.LCPI2_0(%rip), %xmm1   # xmm1 = [18014398509481832,18014398509481976]
	psubq	%xmm2, %xmm1
	paddq	48(%rsp), %xmm1
	movdqa	%xmm1, (%rsp)
	movdqa	.LCPI2_1(%rip), %xmm1   # xmm1 = [18014398509481976,18014398509481976]
	psubq	%xmm0, %xmm1
	paddq	64(%rsp), %xmm1
	movdqa	%xmm1, 16(%rsp)
	movq	%r15, %rdx
	subq	%rcx, %rdx
	addq	%rax, %rdx
	movq	%rdx, 32(%rsp)
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	fsquare_times
	leaq	304(%rsp), %rbp
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%rsp, %rsi
	callq	fsquare_times
	movq	184(%rsp), %rdi         # 8-byte Reload
	movq	%rbp, %rsi
	movq	416(%rsp), %rdx
	callq	fmul
	leaq	256(%rsp), %rbp
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	fsquare_times
	leaq	144(%rsp), %r12
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	fsquare_times
	movq	192(%rsp), %rdi         # 8-byte Reload
	movq	%rbp, %rsi
	movq	%r12, %rdx
	callq	fmul
	movdqa	256(%rsp), %xmm0
	movdqa	.LCPI2_0(%rip), %xmm1   # xmm1 = [18014398509481832,18014398509481976]
	paddq	%xmm0, %xmm1
	psubq	144(%rsp), %xmm1
	movdqa	%xmm1, 144(%rsp)
	movdqa	%xmm1, %xmm3
	movdqa	272(%rsp), %xmm1
	movdqa	.LCPI2_1(%rip), %xmm2   # xmm2 = [18014398509481976,18014398509481976]
	paddq	%xmm1, %xmm2
	psubq	160(%rsp), %xmm2
	movdqa	%xmm2, 160(%rsp)
	movdqa	%xmm2, %xmm4
	movq	288(%rsp), %r8
	addq	%r8, %r15
	subq	176(%rsp), %r15
	movq	%r15, 176(%rsp)
	movq	%xmm3, %rax
	movl	$121665, %r9d           # imm = 0x1DB41
	mulq	%r9
	movq	%rax, %rcx
	movq	%rdx, %rbx
	pshufd	$78, %xmm3, %xmm2       # xmm2 = xmm3[2,3,0,1]
	movq	%xmm2, %rax
	mulq	%r9
	movabsq	$2251799813685247, %rbp # imm = 0x7FFFFFFFFFFFF
	movq	%rbx, %rsi
	shrq	$51, %rsi
	shldq	$13, %rcx, %rbx
	andq	%rbp, %rcx
	addq	%rax, %rbx
	adcq	%rdx, %rsi
	movq	%xmm4, %rax
	mulq	%r9
	movq	%rsi, %rdi
	shldq	$13, %rbx, %rdi
	shrq	$51, %rsi
	addq	%rax, %rdi
	adcq	%rdx, %rsi
	movq	%rdi, %xmm3
	movq	%rbx, %xmm2
	punpcklqdq	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0]
	pand	.LCPI2_2(%rip), %xmm2
	pshufd	$78, %xmm4, %xmm3       # xmm3 = xmm4[2,3,0,1]
	movq	%xmm3, %rax
	mulq	%r9
	shrdq	$51, %rsi, %rdi
	shrq	$51, %rsi
	addq	%rax, %rdi
	adcq	%rdx, %rsi
	movq	%r15, %rax
	mulq	%r9
	movq	%rsi, %rbx
	shldq	$13, %rdi, %rbx
	andq	%rbp, %rdi
	shrq	$51, %rsi
	addq	%rax, %rbx
	adcq	%rdx, %rsi
	shldq	$13, %rbx, %rsi
	leaq	(%rsi,%rsi,4), %rax
	shlq	$2, %rax
	subq	%rsi, %rax
	movq	%xmm0, %rdx
	addq	%rcx, %rdx
	addq	%rax, %rdx
	movq	%rdx, 208(%rsp)
	shufpd	$1, %xmm1, %xmm0        # xmm0 = xmm0[1],xmm1[0]
	paddq	%xmm2, %xmm0
	movdqu	%xmm0, 216(%rsp)
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movq	%xmm0, %rax
	addq	%rdi, %rax
	movq	%rax, 232(%rsp)
	andq	%rbx, %rbp
	addq	%r8, %rbp
	movq	%rbp, 240(%rsp)
	leaq	208(%rsp), %rdx
	movq	200(%rsp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	fmul
	addq	$344, %rsp              # imm = 0x158
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
	.globl	curve25519_donna        # -- Begin function curve25519_donna
	.p2align	4, 0x90
	.type	curve25519_donna,@function
curve25519_donna:                       # @curve25519_donna
# %bb.0:                                # %entry
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$584, %rsp              # imm = 0x248
	xorps	%xmm0, %xmm0
	movups	%xmm0, 424(%rsp)
	movaps	%xmm0, 512(%rsp)
	movq	$0, 440(%rsp)
	movaps	%xmm0, 496(%rsp)
	movq	$0, 528(%rsp)
	movaps	%xmm0, 384(%rsp)
	movaps	%xmm0, 368(%rsp)
	movaps	%xmm0, 560(%rsp)
	movaps	%xmm0, 544(%rsp)
	movq	$0, 400(%rsp)
	movq	$0, 576(%rsp)
	movups	(%rsi), %xmm1
	movups	16(%rsi), %xmm2
	movaps	%xmm1, 464(%rsp)
	movaps	%xmm2, 480(%rsp)
	andb	$-8, 464(%rsp)
	movb	495(%rsp), %al
	andb	$63, %al
	orb	$64, %al
	movb	%al, 495(%rsp)
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
	movq	%rax, %rsi
	shlq	$48, %rsi
	orq	%rcx, %rsi
	movabsq	$2251799813685247, %rbx # imm = 0x7FFFFFFFFFFFF
	andq	%rbx, %rsi
	movq	%rsi, 408(%rsp)
	movzbl	7(%rdx), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	8(%rdx), %eax
	shlq	$16, %rax
	orq	%rcx, %rax
	movzbl	9(%rdx), %ecx
	shlq	$24, %rcx
	orq	%rax, %rcx
	movzbl	10(%rdx), %eax
	shlq	$32, %rax
	orq	%rcx, %rax
	movzbl	11(%rdx), %ecx
	shlq	$40, %rcx
	orq	%rax, %rcx
	movzbl	12(%rdx), %eax
	movq	%rax, %rsi
	shlq	$48, %rsi
	orq	%rcx, %rsi
	shrq	$3, %rsi
	andq	%rbx, %rsi
	movq	%rsi, 416(%rsp)
	movzbl	13(%rdx), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	14(%rdx), %eax
	shlq	$16, %rax
	orq	%rcx, %rax
	movzbl	15(%rdx), %ecx
	shlq	$24, %rcx
	orq	%rax, %rcx
	movzbl	16(%rdx), %eax
	shlq	$32, %rax
	orq	%rcx, %rax
	movzbl	17(%rdx), %ecx
	shlq	$40, %rcx
	orq	%rax, %rcx
	movzbl	18(%rdx), %eax
	shlq	$48, %rax
	movzbl	19(%rdx), %ebp
	movq	%rbp, %rsi
	shlq	$56, %rsi
	orq	%rax, %rsi
	orq	%rcx, %rsi
	shrq	$6, %rsi
	andq	%rbx, %rsi
	movq	%rsi, 424(%rsp)
	movq	%rdi, 448(%rsp)         # 8-byte Spill
	movzbl	20(%rdx), %eax
	shlq	$8, %rax
	orq	%rbp, %rax
	movzbl	21(%rdx), %ecx
	shlq	$16, %rcx
	orq	%rax, %rcx
	movzbl	22(%rdx), %eax
	shlq	$24, %rax
	orq	%rcx, %rax
	movzbl	23(%rdx), %ecx
	shlq	$32, %rcx
	orq	%rax, %rcx
	movzbl	24(%rdx), %eax
	shlq	$40, %rax
	orq	%rcx, %rax
	movzbl	25(%rdx), %ecx
	movq	%rcx, %rsi
	shlq	$48, %rsi
	orq	%rax, %rsi
	shrq	%rsi
	andq	%rbx, %rsi
	movq	%rsi, 432(%rsp)
	shlq	$8, %rcx
	movzbl	26(%rdx), %eax
	shlq	$16, %rax
	orq	%rcx, %rax
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
	andq	%rbx, %rcx
	movq	%rcx, 440(%rsp)
	movups	%xmm0, 120(%rsp)
	movups	%xmm0, 104(%rsp)
	movups	%xmm0, 72(%rsp)
	movups	%xmm0, 56(%rsp)
	movaps	%xmm0, 16(%rsp)
	movaps	%xmm0, (%rsp)
	movaps	%xmm0, 256(%rsp)
	movq	$0, 32(%rsp)
	movaps	%xmm0, 240(%rsp)
	movq	$0, 272(%rsp)
	movups	%xmm0, 352(%rsp)
	movups	%xmm0, 336(%rsp)
	movaps	%xmm0, 208(%rsp)
	movaps	%xmm0, 192(%rsp)
	movups	%xmm0, 312(%rsp)
	movups	%xmm0, 296(%rsp)
	movq	$0, 224(%rsp)
	movq	$1, 96(%rsp)
	movq	$1, 48(%rsp)
	movq	$1, 328(%rsp)
	movq	$1, 288(%rsp)
	movq	440(%rsp), %rax
	movq	%rax, 176(%rsp)
	movups	408(%rsp), %xmm0
	movups	424(%rsp), %xmm1
	movaps	%xmm1, 160(%rsp)
	movaps	%xmm0, 144(%rsp)
	xorl	%ecx, %ecx
	leaq	48(%rsp), %r14
	movq	%rsp, %r15
	.p2align	4, 0x90
.LBB3_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_2 Depth 2
	movl	$31, %eax
	movq	%rcx, 456(%rsp)         # 8-byte Spill
	subq	%rcx, %rax
	movb	464(%rsp,%rax), %bpl
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB3_2:                                #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	$1, %r13b
	jne	.LBB3_4
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=2
	movl	%ebp, %ebx
	shrb	$7, %bl
	movq	48(%rsp), %rax
	movq	56(%rsp), %rcx
	movq	144(%rsp), %rdx
	movq	%rax, %rsi
	#APP
	testb	%bl, %bl
	cmovneq	%rdx, %rsi
	#NO_APP
	movq	%rsi, 48(%rsp)
	movq	152(%rsp), %rsi
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rdx
	#NO_APP
	movq	%rdx, 144(%rsp)
	movq	%rcx, %rax
	#APP
	testb	%bl, %bl
	cmovneq	%rsi, %rax
	#NO_APP
	movq	%rax, 56(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rsi
	#NO_APP
	movq	%rsi, 152(%rsp)
	movq	64(%rsp), %rax
	movq	160(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 64(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 160(%rsp)
	movq	72(%rsp), %rax
	movq	168(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 72(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 168(%rsp)
	movq	80(%rsp), %rax
	movq	176(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 80(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 176(%rsp)
	movq	(%rsp), %rax
	movq	96(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, (%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 96(%rsp)
	movq	8(%rsp), %rax
	movq	104(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 8(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 104(%rsp)
	movq	16(%rsp), %rax
	movq	112(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 16(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 112(%rsp)
	movq	24(%rsp), %rax
	movq	120(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 24(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 120(%rsp)
	movq	32(%rsp), %rax
	movq	128(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 32(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 128(%rsp)
	subq	$8, %rsp
	leaq	200(%rsp), %rdi
	leaq	296(%rsp), %rsi
	leaq	248(%rsp), %rdx
	leaq	336(%rsp), %rcx
	movq	%r14, %r8
	movq	%r15, %r9
	leaq	416(%rsp), %rax
	pushq	%rax
	leaq	112(%rsp), %rax
	pushq	%rax
	leaq	168(%rsp), %rax
	pushq	%rax
	callq	fmonty
	addq	$32, %rsp
	movq	192(%rsp), %rax
	movq	200(%rsp), %rcx
	movq	240(%rsp), %rdx
	movq	%rax, %rsi
	#APP
	testb	%bl, %bl
	cmovneq	%rdx, %rsi
	#NO_APP
	movq	%rsi, 192(%rsp)
	movq	248(%rsp), %rsi
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rdx
	#NO_APP
	movq	%rdx, 240(%rsp)
	movq	%rcx, %rax
	#APP
	testb	%bl, %bl
	cmovneq	%rsi, %rax
	#NO_APP
	movq	%rax, 200(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rsi
	#NO_APP
	movq	%rsi, 248(%rsp)
	movq	208(%rsp), %rax
	movq	256(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 208(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 256(%rsp)
	movq	216(%rsp), %rax
	movq	264(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 216(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 264(%rsp)
	movq	224(%rsp), %rax
	movq	272(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 224(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 272(%rsp)
	movq	288(%rsp), %rax
	movq	328(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 288(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 328(%rsp)
	movq	296(%rsp), %rax
	movq	336(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 296(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 336(%rsp)
	movq	304(%rsp), %rax
	movq	344(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 304(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 344(%rsp)
	movq	312(%rsp), %rax
	movq	352(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 312(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 352(%rsp)
	movq	320(%rsp), %rax
	movq	360(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 320(%rsp)
	#APP
	testb	%bl, %bl
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 360(%rsp)
	jmp	.LBB3_5
	.p2align	4, 0x90
.LBB3_4:                                #   in Loop: Header=BB3_2 Depth=2
	movl	%ebp, %r12d
	shrb	$7, %r12b
	movq	192(%rsp), %rax
	movq	200(%rsp), %rcx
	movq	240(%rsp), %rdx
	movq	%rax, %rsi
	#APP
	testb	%r12b, %r12b
	cmovneq	%rdx, %rsi
	#NO_APP
	movq	%rsi, 192(%rsp)
	movq	248(%rsp), %rsi
	#APP
	testb	%r12b, %r12b
	cmovneq	%rax, %rdx
	#NO_APP
	movq	%rdx, 240(%rsp)
	movq	%rcx, %rax
	#APP
	testb	%r12b, %r12b
	cmovneq	%rsi, %rax
	#NO_APP
	movq	%rax, 200(%rsp)
	#APP
	testb	%r12b, %r12b
	cmovneq	%rcx, %rsi
	#NO_APP
	movq	%rsi, 248(%rsp)
	movq	208(%rsp), %rax
	movq	256(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r12b, %r12b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 208(%rsp)
	#APP
	testb	%r12b, %r12b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 256(%rsp)
	movq	216(%rsp), %rax
	movq	264(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r12b, %r12b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 216(%rsp)
	#APP
	testb	%r12b, %r12b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 264(%rsp)
	movq	224(%rsp), %rax
	movq	272(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r12b, %r12b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 224(%rsp)
	#APP
	testb	%r12b, %r12b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 272(%rsp)
	movq	288(%rsp), %rax
	movq	328(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r12b, %r12b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 288(%rsp)
	#APP
	testb	%r12b, %r12b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 328(%rsp)
	movq	296(%rsp), %rax
	movq	336(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r12b, %r12b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 296(%rsp)
	#APP
	testb	%r12b, %r12b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 336(%rsp)
	movq	304(%rsp), %rax
	movq	344(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r12b, %r12b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 304(%rsp)
	#APP
	testb	%r12b, %r12b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 344(%rsp)
	movq	312(%rsp), %rax
	movq	352(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r12b, %r12b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 312(%rsp)
	#APP
	testb	%r12b, %r12b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 352(%rsp)
	movq	320(%rsp), %rax
	movq	360(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r12b, %r12b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 320(%rsp)
	#APP
	testb	%r12b, %r12b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 360(%rsp)
	subq	$8, %rsp
	movq	%r14, %rdi
	movq	%r15, %rsi
	leaq	152(%rsp), %rdx
	leaq	104(%rsp), %rcx
	leaq	200(%rsp), %r8
	leaq	296(%rsp), %r9
	leaq	416(%rsp), %rax
	pushq	%rax
	leaq	344(%rsp), %rax
	pushq	%rax
	leaq	264(%rsp), %rax
	pushq	%rax
	callq	fmonty
	addq	$32, %rsp
	movq	48(%rsp), %rax
	movq	56(%rsp), %rcx
	movq	144(%rsp), %rdx
	movq	%rax, %rsi
	#APP
	testb	%r12b, %r12b
	cmovneq	%rdx, %rsi
	#NO_APP
	movq	%rsi, 48(%rsp)
	movq	152(%rsp), %rsi
	#APP
	testb	%r12b, %r12b
	cmovneq	%rax, %rdx
	#NO_APP
	movq	%rdx, 144(%rsp)
	movq	%rcx, %rax
	#APP
	testb	%r12b, %r12b
	cmovneq	%rsi, %rax
	#NO_APP
	movq	%rax, 56(%rsp)
	#APP
	testb	%r12b, %r12b
	cmovneq	%rcx, %rsi
	#NO_APP
	movq	%rsi, 152(%rsp)
	movq	64(%rsp), %rax
	movq	160(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r12b, %r12b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 64(%rsp)
	#APP
	testb	%r12b, %r12b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 160(%rsp)
	movq	72(%rsp), %rax
	movq	168(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r12b, %r12b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 72(%rsp)
	#APP
	testb	%r12b, %r12b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 168(%rsp)
	movq	80(%rsp), %rax
	movq	176(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r12b, %r12b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 80(%rsp)
	#APP
	testb	%r12b, %r12b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 176(%rsp)
	movq	(%rsp), %rax
	movq	96(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r12b, %r12b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, (%rsp)
	#APP
	testb	%r12b, %r12b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 96(%rsp)
	movq	8(%rsp), %rax
	movq	104(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r12b, %r12b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 8(%rsp)
	#APP
	testb	%r12b, %r12b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 104(%rsp)
	movq	16(%rsp), %rax
	movq	112(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r12b, %r12b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 16(%rsp)
	#APP
	testb	%r12b, %r12b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 112(%rsp)
	movq	24(%rsp), %rax
	movq	120(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r12b, %r12b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 24(%rsp)
	#APP
	testb	%r12b, %r12b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 120(%rsp)
	movq	32(%rsp), %rax
	movq	128(%rsp), %rcx
	movq	%rax, %rdx
	#APP
	testb	%r12b, %r12b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, 32(%rsp)
	#APP
	testb	%r12b, %r12b
	cmovneq	%rax, %rcx
	#NO_APP
	movq	%rcx, 128(%rsp)
.LBB3_5:                                #   in Loop: Header=BB3_2 Depth=2
	addb	%bpl, %bpl
	addl	$1, %r13d
	cmpl	$8, %r13d
	jne	.LBB3_2
# %bb.6:                                #   in Loop: Header=BB3_1 Depth=1
	movq	456(%rsp), %rcx         # 8-byte Reload
	addq	$1, %rcx
	cmpq	$32, %rcx
	jne	.LBB3_1
# %bb.7:                                # %cmult.exit
	movaps	48(%rsp), %xmm0
	movaps	64(%rsp), %xmm1
	movaps	%xmm0, 496(%rsp)
	movaps	(%rsp), %xmm0
	movaps	16(%rsp), %xmm2
	movaps	%xmm0, 368(%rsp)
	movaps	%xmm1, 512(%rsp)
	movaps	%xmm2, 384(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 528(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 400(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 160(%rsp)
	movaps	%xmm0, 144(%rsp)
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	movq	$0, 176(%rsp)
	movq	$0, 128(%rsp)
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 16(%rsp)
	movq	$0, 80(%rsp)
	movaps	%xmm0, (%rsp)
	movq	$0, 32(%rsp)
	leaq	144(%rsp), %r15
	leaq	368(%rsp), %r14
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	fsquare_times
	leaq	96(%rsp), %rbx
	movl	$2, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	fsquare_times
	leaq	48(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	fmul
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	%r15, %rdx
	callq	fmul
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	fsquare_times
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	fmul
	movl	$5, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	fsquare_times
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	fmul
	movl	$10, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	fsquare_times
	movq	%rsp, %r12
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
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
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	fmul
	movl	$50, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	fsquare_times
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
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
	movq	%rbp, %rdx
	callq	fmul
	movl	$5, %edx
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	callq	fsquare_times
	leaq	544(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	fmul
	leaq	496(%rsp), %rsi
	movq	%r14, %rdi
	movq	%rbp, %rdx
	callq	fmul
	movq	368(%rsp), %rbp
	movq	%rbp, %rbx
	shrq	$51, %rbx
	xorl	%ecx, %ecx
	addq	376(%rsp), %rbx
	setb	%cl
	shldq	$13, %rbx, %rcx
	movabsq	$2251799813685247, %r11 # imm = 0x7FFFFFFFFFFFF
	andq	%r11, %rbp
	xorl	%esi, %esi
	addq	384(%rsp), %rcx
	setb	%sil
	shldq	$13, %rcx, %rsi
	andq	%r11, %rbx
	xorl	%edi, %edi
	addq	392(%rsp), %rsi
	setb	%dil
	shldq	$13, %rsi, %rdi
	andq	%r11, %rcx
	xorl	%eax, %eax
	addq	400(%rsp), %rdi
	setb	%al
	shldq	$13, %rdi, %rax
	movl	$19, %edx
	mulq	%rdx
	andq	%r11, %rsi
	addq	%rbp, %rax
	adcq	$0, %rdx
	andq	%r11, %rdi
	movq	%rdx, %rbp
	shldq	$13, %rax, %rdx
	shrq	$51, %rbp
	addq	%rbx, %rdx
	adcq	$0, %rbp
	andq	%r11, %rax
	movq	%rbp, %rbx
	shrq	$51, %rbx
	shldq	$13, %rdx, %rbp
	addq	%rcx, %rbp
	adcq	$0, %rbx
	andq	%r11, %rdx
	movq	%rbx, %rcx
	shrq	$51, %rcx
	shldq	$13, %rbp, %rbx
	addq	%rsi, %rbx
	adcq	$0, %rcx
	shldq	$13, %rbx, %rcx
	andq	%r11, %rbp
	addq	%rdi, %rcx
	andq	%r11, %rbx
	movq	%rcx, %rsi
	shrq	$51, %rsi
	negl	%esi
	andl	$19, %esi
	andq	%r11, %rcx
	leaq	(%rax,%rsi), %rdi
	addq	$19, %rdi
	movq	%rdi, %rsi
	shrq	$51, %rsi
	addq	%rdx, %rsi
	andq	%r11, %rdi
	movq	%rsi, %rax
	shrq	$51, %rax
	addq	%rbp, %rax
	andq	%r11, %rsi
	movq	%rax, %rbp
	shrq	$51, %rbp
	addq	%rbx, %rbp
	andq	%r11, %rax
	movq	%rbp, %r8
	shrq	$51, %r8
	addq	%rcx, %r8
	andq	%r11, %rbp
	movq	%r8, %rcx
	shrq	$51, %rcx
	negl	%ecx
	andl	$19, %ecx
	addq	%rdi, %rcx
	movabsq	$2251799813685229, %rdx # imm = 0x7FFFFFFFFFFED
	addq	%rcx, %rdx
	movq	%rdx, %rcx
	shrq	$51, %rcx
	addq	%rsi, %rcx
	addq	%r11, %rcx
	movq	%rcx, %r10
	shrq	$51, %r10
	addq	%rax, %r10
	addq	%r11, %r10
	movq	%r10, %r9
	shrq	$51, %r9
	addq	%rbp, %r9
	movabsq	$1970324836974592, %rsi # imm = 0x7000000000000
	andq	%rdx, %rsi
	movq	%rcx, %rax
	movq	448(%rsp), %rbp         # 8-byte Reload
	movb	%dl, (%rbp)
	movb	%dh, 1(%rbp)  # NOREX
	andq	%r11, %rax
	movq	%rdx, %rbx
	shrq	$16, %rbx
	movb	%bl, 2(%rbp)
	movq	%rdx, %rdi
	shrq	$24, %rdx
	movb	%dl, 3(%rbp)
	movq	%rdi, %rdx
	shrq	$32, %rdx
	movb	%dl, 4(%rbp)
	movq	%rax, %rdx
	shrq	$13, %rdx
	shlq	$51, %rax
	orq	%rsi, %rax
	shrq	$40, %rdi
	movb	%dil, 5(%rbp)
	shrq	$48, %rax
	movb	%al, 6(%rbp)
	movq	%rcx, %rax
	shrq	$5, %rax
	movb	%al, 7(%rbp)
	movb	%dl, 8(%rbp)
	addq	%r11, %r9
	movq	%r9, %rsi
	movq	%rcx, %rax
	shrq	$21, %rax
	movb	%al, 9(%rbp)
	andq	%r10, %r11
	movq	%r11, %rax
	movq	%rcx, %rdi
	shrq	$29, %rdi
	movb	%dil, 10(%rbp)
	shlq	$38, %r11
	shrq	$37, %rcx
	movb	%cl, 11(%rbp)
	orq	%rdx, %r11
	shrq	$32, %r11
	movb	%r11b, 12(%rbp)
	shrq	$51, %rsi
	movq	%r10, %rcx
	shrq	$2, %rcx
	movb	%cl, 13(%rbp)
	shrq	$26, %rax
	movq	%r10, %rcx
	shrq	$10, %rcx
	movb	%cl, 14(%rbp)
	movq	%r10, %rcx
	shrq	$18, %rcx
	movb	%cl, 15(%rbp)
	movl	%r9d, %ecx
	shll	$25, %ecx
	orl	%eax, %ecx
	shrl	$24, %ecx
	movb	%al, 16(%rbp)
	movq	%r10, %rax
	shrq	$34, %rax
	movb	%al, 17(%rbp)
	shrq	$42, %r10
	movb	%r10b, 18(%rbp)
	movb	%cl, 19(%rbp)
	addq	%r8, %rsi
	movq	%r9, %rax
	movq	%r9, %rcx
	shrq	$7, %rcx
	movb	%cl, 20(%rbp)
	shrq	$39, %rax
	movq	%r9, %rcx
	shrq	$15, %rcx
	movb	%cl, 21(%rbp)
	movq	%r9, %rcx
	shrq	$23, %rcx
	movb	%cl, 22(%rbp)
	shrq	$31, %r9
	movb	%r9b, 23(%rbp)
	movb	%al, 24(%rbp)
	shlq	$12, %rsi
                                        # kill: def %eax killed %eax killed %rax def %rax
	andl	$4095, %eax             # imm = 0xFFF
	movabsq	$9223372036854771712, %rcx # imm = 0x7FFFFFFFFFFFF000
	addq	%rcx, %rsi
	andq	%rsi, %rcx
	orl	%ecx, %eax
	movb	%ah, 25(%rbp)  # NOREX
	movq	%rsi, %rax
	shrq	$16, %rax
	movb	%al, 26(%rbp)
	movq	%rsi, %rax
	shrq	$24, %rax
	movb	%al, 27(%rbp)
	movq	%rsi, %rax
	shrq	$32, %rax
	movb	%al, 28(%rbp)
	movq	%rsi, %rax
	shrq	$40, %rax
	movb	%al, 29(%rbp)
	shrq	$48, %rsi
	movb	%sil, 30(%rbp)
	shrq	$56, %rcx
	movb	%cl, 31(%rbp)
	xorl	%eax, %eax
	addq	$584, %rsp              # imm = 0x248
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

	.section	".note.GNU-stack","",@progbits
