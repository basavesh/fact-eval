	.text
	.file	"Module"
	.p2align	4, 0x90         # -- Begin function fmonty
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
	subq	$800, %rsp              # imm = 0x320
	movq	%r8, 72(%rsp)           # 8-byte Spill
	movq	32(%r8), %rax
	movq	%rax, 768(%rsp)
	vmovups	(%r8), %ymm0
	vmovups	%ymm0, 736(%rsp)
	movq	16(%rbp), %r11
	vmovups	(%r11), %ymm0
	vmovaps	%ymm0, 608(%rsp)
	movq	32(%r11), %rax
	movq	%rax, 640(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm0, 544(%rsp)
	movq	$0, 576(%rsp)
	vmovaps	%ymm0, 480(%rsp)
	vmovaps	%ymm0, 288(%rsp)
	movq	$0, 512(%rsp)
	movq	$0, 320(%rsp)
	vmovaps	%ymm0, 416(%rsp)
	movq	$0, 448(%rsp)
	vmovaps	%ymm0, 352(%rsp)
	movq	$0, 384(%rsp)
	vmovaps	%ymm0, 672(%rsp)
	movq	$0, 704(%rsp)
	movq	(%r9), %rax
	addq	%rax, (%r8)
	movq	8(%r9), %rax
	addq	%rax, 8(%r8)
	movq	16(%r9), %rax
	addq	%rax, 16(%r8)
	movq	24(%r9), %rax
	addq	%rax, 24(%r8)
	movq	32(%r9), %rax
	addq	%rax, 32(%r8)
	movabsq	$18014398509481976, %r8 # imm = 0x3FFFFFFFFFFFF8
	leaq	-144(%r8), %rbx
	movq	736(%rsp), %rax
	addq	%rbx, %rax
	movq	%rbx, 344(%rsp)         # 8-byte Spill
	subq	(%r9), %rax
	movq	%rax, (%r9)
	movq	744(%rsp), %rax
	addq	%r8, %rax
	subq	8(%r9), %rax
	movq	%rax, 8(%r9)
	movq	752(%rsp), %rax
	addq	%r8, %rax
	subq	16(%r9), %rax
	movq	%rax, 16(%r9)
	movq	760(%rsp), %rax
	addq	%r8, %rax
	subq	24(%r9), %rax
	movq	%rax, 24(%r9)
	movq	768(%rsp), %rax
	addq	%r8, %rax
	subq	32(%r9), %rax
	movq	24(%rbp), %r10
	movq	%rax, 32(%r9)
	movq	(%r10), %rax
	addq	%rax, (%r11)
	movq	8(%r10), %rax
	addq	%rax, 8(%r11)
	movq	16(%r10), %rax
	addq	%rax, 16(%r11)
	movq	24(%r10), %rax
	addq	%rax, 24(%r11)
	movq	32(%r10), %rax
	addq	%rax, 32(%r11)
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movq	608(%rsp), %rax
	addq	%rbx, %rax
	subq	(%r10), %rax
	movq	%rax, (%r10)
	movq	616(%rsp), %rax
	addq	%r8, %rax
	subq	8(%r10), %rax
	movq	%rax, 8(%r10)
	movq	624(%rsp), %rax
	addq	%r8, %rax
	subq	16(%r10), %rax
	movq	%rax, 16(%r10)
	movq	632(%rsp), %rax
	addq	%r8, %rax
	subq	24(%r10), %rax
	movq	%rax, 24(%r10)
	movq	640(%rsp), %rax
	addq	%r8, %rax
	subq	32(%r10), %rax
	movq	%rax, 32(%r10)
	movq	%r11, %r8
	movq	(%r8), %r10
	movq	%r9, %rax
	movq	(%rax), %r11
	movq	%r10, %rdx
	mulxq	%r11, %rbx, %rdx
	movq	%rbx, 256(%rsp)         # 8-byte Spill
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	movq	8(%r8), %r15
	movq	%r15, %rdx
	movq	%r15, 8(%rsp)           # 8-byte Spill
	mulxq	%r11, %rbx, %rdx
	movq	%rbx, 280(%rsp)         # 8-byte Spill
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	movq	8(%rax), %r14
	movq	%r10, %rdx
	mulxq	%r14, %r12, %r9
	movq	16(%r8), %r13
	movq	%r13, %rdx
	movq	%r13, 16(%rsp)          # 8-byte Spill
	mulxq	%r11, %rbx, %rdx
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	movq	%rdx, 160(%rsp)         # 8-byte Spill
	movq	16(%rax), %r8
	movq	%r10, %rdx
	mulxq	%r8, %rbx, %rdx
	movq	%rbx, 152(%rsp)         # 8-byte Spill
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movq	%r15, %rdx
	mulxq	%r14, %r15, %rdx
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	movq	16(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	mulxq	%r11, %rbx, %rdx
	movq	%rbx, 112(%rsp)         # 8-byte Spill
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movq	24(%rax), %rbx
	movq	%rbx, 408(%rsp)         # 8-byte Spill
	movq	%rax, 264(%rsp)         # 8-byte Spill
	movq	%r10, %rdx
	mulxq	%rbx, %rbx, %rdx
	movq	%rbx, 200(%rsp)         # 8-byte Spill
	movq	%rdx, 224(%rsp)         # 8-byte Spill
	movq	%r13, %rdx
	mulxq	%r14, %rbx, %rdx
	movq	%rbx, 216(%rsp)         # 8-byte Spill
	movq	%rdx, 240(%rsp)         # 8-byte Spill
	movq	8(%rsp), %r13           # 8-byte Reload
	movq	%r13, %rdx
	mulxq	%r8, %rbx, %rdx
	movq	%rbx, 168(%rsp)         # 8-byte Spill
	movq	%rdx, 176(%rsp)         # 8-byte Spill
	movq	16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	mulxq	%r11, %rbx, %rdx
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	32(%rax), %rax
	leaq	(%rax,%rax,4), %rdx
	shlq	$2, %rdx
	subq	%rax, %rdx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%r10, %rdx
	mulxq	%rax, %rdx, %rax
	movq	%rdx, 208(%rsp)         # 8-byte Spill
	movq	%rax, 232(%rsp)         # 8-byte Spill
	movq	%r13, %rdx
	movq	408(%rsp), %rbx         # 8-byte Reload
	mulxq	%rbx, %rax, %r11
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movq	40(%rsp), %rdx          # 8-byte Reload
	mulxq	%r14, %rdx, %rax
	movq	%rdx, 248(%rsp)         # 8-byte Spill
	movq	%rax, 136(%rsp)         # 8-byte Spill
	leaq	(%r14,%r14,4), %r13
	shlq	$2, %r13
	subq	%r14, %r13
	leaq	(%r8,%r8,4), %rax
	shlq	$2, %rax
	subq	%r8, %rax
	movq	%rax, 272(%rsp)         # 8-byte Spill
	movq	16(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdx
	mulxq	%r8, %rdx, %rax
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	movq	%rax, 184(%rsp)         # 8-byte Spill
	leaq	(%rbx,%rbx,4), %rax
	shlq	$2, %rax
	subq	%rbx, %rax
	movq	%rax, %r8
	movq	8(%rsp), %rdx           # 8-byte Reload
	mulxq	32(%rsp), %rax, %r10    # 8-byte Folded Reload
	addq	256(%rsp), %rax         # 8-byte Folded Reload
	adcq	144(%rsp), %r10         # 8-byte Folded Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	mulxq	%r13, %rbx, %rdx
	movq	%rbx, 144(%rsp)         # 8-byte Spill
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	272(%rsp), %rbx         # 8-byte Reload
	mulxq	%rbx, %r13, %rdx
	movq	%rdx, 256(%rsp)         # 8-byte Spill
	movq	%r14, %rdx
	movq	%r8, %r14
	mulxq	%r14, %r8, %rdx
	addq	%r8, %rax
	adcq	%rdx, %r10
	addq	%r13, %rax
	adcq	256(%rsp), %r10         # 8-byte Folded Reload
	addq	144(%rsp), %rax         # 8-byte Folded Reload
	adcq	8(%rsp), %r10           # 8-byte Folded Reload
	shldq	$13, %rax, %r10
	movb	$51, %dl
	bzhiq	%rdx, %rax, %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	addq	280(%rsp), %r12         # 8-byte Folded Reload
	adcq	120(%rsp), %r9          # 8-byte Folded Reload
	movq	16(%rsp), %rdx          # 8-byte Reload
	mulxq	32(%rsp), %rdx, %rax    # 8-byte Folded Reload
	addq	%rdx, %r12
	adcq	%rax, %r9
	movq	24(%rsp), %rdx          # 8-byte Reload
	mulxq	%rbx, %rbx, %r8
	movq	40(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rdx
	mulxq	%r14, %rax, %rdx
	addq	%rax, %r12
	adcq	%rdx, %r9
	addq	%rbx, %r12
	adcq	%r8, %r9
	addq	%r10, %r12
	adcq	$0, %r9
	shldq	$13, %r12, %r9
	movb	$51, %al
	bzhiq	%rax, %r12, %r12
	addq	152(%rsp), %r15         # 8-byte Folded Reload
	movq	96(%rsp), %rbx          # 8-byte Reload
	adcq	80(%rsp), %rbx          # 8-byte Folded Reload
	addq	128(%rsp), %r15         # 8-byte Folded Reload
	adcq	160(%rsp), %rbx         # 8-byte Folded Reload
	movq	%r13, %rdx
	movq	32(%rsp), %r10          # 8-byte Reload
	mulxq	%r10, %rdx, %rax
	addq	%rdx, %r15
	adcq	%rax, %rbx
	movq	24(%rsp), %rdx          # 8-byte Reload
	mulxq	%r14, %rax, %r8
	addq	%rax, %r15
	adcq	%r8, %rbx
	addq	%r9, %r15
	adcq	$0, %rbx
	shldq	$13, %r15, %rbx
	movq	%rbx, %r9
	movb	$51, %r14b
	bzhiq	%r14, %r15, %r8
	movq	168(%rsp), %rax         # 8-byte Reload
	addq	200(%rsp), %rax         # 8-byte Folded Reload
	movq	176(%rsp), %rbx         # 8-byte Reload
	adcq	224(%rsp), %rbx         # 8-byte Folded Reload
	addq	216(%rsp), %rax         # 8-byte Folded Reload
	adcq	240(%rsp), %rbx         # 8-byte Folded Reload
	addq	112(%rsp), %rax         # 8-byte Folded Reload
	adcq	64(%rsp), %rbx          # 8-byte Folded Reload
	mulxq	%r10, %rdx, %r10
	addq	%rdx, %rax
	adcq	%r10, %rbx
	addq	%r9, %rax
	adcq	$0, %rbx
	shldq	$13, %rax, %rbx
	bzhiq	%r14, %rax, %r9
	movq	192(%rsp), %rax         # 8-byte Reload
	addq	208(%rsp), %rax         # 8-byte Folded Reload
	adcq	232(%rsp), %r11         # 8-byte Folded Reload
	addq	104(%rsp), %rax         # 8-byte Folded Reload
	adcq	184(%rsp), %r11         # 8-byte Folded Reload
	addq	248(%rsp), %rax         # 8-byte Folded Reload
	adcq	136(%rsp), %r11         # 8-byte Folded Reload
	addq	56(%rsp), %rax          # 8-byte Folded Reload
	adcq	48(%rsp), %r11          # 8-byte Folded Reload
	addq	%rbx, %rax
	adcq	$0, %r11
	shldq	$13, %rax, %r11
	movq	%rax, %r14
	leaq	(%r11,%r11,4), %rdx
	shlq	$2, %rdx
	subq	%r11, %rdx
	addq	8(%rsp), %rdx           # 8-byte Folded Reload
	movb	$51, %r10b
	bzhiq	%r10, %rdx, %rbx
	shrq	$51, %rdx
	addq	%r12, %rdx
	bzhiq	%r10, %rdx, %rax
	shrq	$51, %rdx
	addq	%r8, %rdx
	movq	%rbx, 416(%rsp)
	bzhiq	%r10, %r14, %rbx
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movq	%rax, 424(%rsp)
	movq	%rdx, 432(%rsp)
	movq	%r9, 440(%rsp)
	movq	%rbx, 448(%rsp)
	movq	72(%rsp), %rbx          # 8-byte Reload
	movq	(%rbx), %r10
	movq	24(%rbp), %r8
	movq	%r8, %r11
	movq	(%r11), %r8
	movq	%r10, %rdx
	mulxq	%r8, %rdx, %rax
	movq	%rdx, 256(%rsp)         # 8-byte Spill
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	8(%rbx), %r13
	movq	%r13, %rdx
	mulxq	%r8, %rdx, %rax
	movq	%rdx, 280(%rsp)         # 8-byte Spill
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movq	8(%r11), %r14
	movq	%r10, %rdx
	mulxq	%r14, %r12, %r9
	movq	16(%rbx), %rdx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	mulxq	%r8, %rax, %rdx
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movq	%rdx, 160(%rsp)         # 8-byte Spill
	movq	16(%r11), %r11
	movq	%r10, %rdx
	mulxq	%r11, %rdx, %rax
	movq	%rdx, 152(%rsp)         # 8-byte Spill
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	%r13, %rdx
	mulxq	%r14, %rdx, %rax
	movq	%rdx, 408(%rsp)         # 8-byte Spill
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movq	24(%rbx), %rdx
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	mulxq	%r8, %rax, %rdx
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movq	24(%rbp), %rax
	movq	24(%rax), %r15
	movq	%r10, %rdx
	mulxq	%r15, %rdx, %rax
	movq	%rdx, 200(%rsp)         # 8-byte Spill
	movq	%rax, 224(%rsp)         # 8-byte Spill
	movq	16(%rsp), %rdx          # 8-byte Reload
	mulxq	%r14, %rdx, %rax
	movq	%rdx, 216(%rsp)         # 8-byte Spill
	movq	%rax, 240(%rsp)         # 8-byte Spill
	movq	%r13, %rdx
	movq	%r13, 272(%rsp)         # 8-byte Spill
	mulxq	%r11, %rdx, %rax
	movq	%rdx, 168(%rsp)         # 8-byte Spill
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movq	32(%rbx), %rdx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	mulxq	%r8, %rdx, %rax
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	24(%rbp), %rax
	movq	32(%rax), %rax
	leaq	(%rax,%rax,4), %rdx
	shlq	$2, %rdx
	subq	%rax, %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%r10, %rdx
	mulxq	%rax, %rdx, %rax
	movq	%rdx, 208(%rsp)         # 8-byte Spill
	movq	%rax, 232(%rsp)         # 8-byte Spill
	movq	%r13, %rdx
	mulxq	%r15, %rax, %r10
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movq	40(%rsp), %rdx          # 8-byte Reload
	mulxq	%r14, %rdx, %rax
	movq	%rdx, 248(%rsp)         # 8-byte Spill
	movq	%rax, 136(%rsp)         # 8-byte Spill
	leaq	(%r14,%r14,4), %rax
	shlq	$2, %rax
	subq	%r14, %rax
	leaq	(%r11,%r11,4), %r14
	shlq	$2, %r14
	subq	%r11, %r14
	movq	16(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rdx
	mulxq	%r11, %rbx, %rdx
	movq	%rbx, 104(%rsp)         # 8-byte Spill
	movq	%rdx, 184(%rsp)         # 8-byte Spill
	leaq	(%r15,%r15,4), %r11
	shlq	$2, %r11
	subq	%r15, %r11
	movq	272(%rsp), %rdx         # 8-byte Reload
	mulxq	24(%rsp), %rbx, %r8     # 8-byte Folded Reload
	addq	256(%rsp), %rbx         # 8-byte Folded Reload
	adcq	96(%rsp), %r8           # 8-byte Folded Reload
	movq	32(%rsp), %rdx          # 8-byte Reload
	mulxq	%rax, %rax, %r15
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	40(%rsp), %rdx          # 8-byte Reload
	mulxq	%r14, %rdx, %rax
	movq	%rdx, 272(%rsp)         # 8-byte Spill
	movq	%rax, 256(%rsp)         # 8-byte Spill
	movq	%r13, %rdx
	mulxq	%r11, %rax, %rdx
	addq	%rax, %rbx
	adcq	%rdx, %r8
	addq	272(%rsp), %rbx         # 8-byte Folded Reload
	adcq	256(%rsp), %r8          # 8-byte Folded Reload
	addq	96(%rsp), %rbx          # 8-byte Folded Reload
	adcq	%r15, %r8
	shldq	$13, %rbx, %r8
	movb	$51, %al
	bzhiq	%rax, %rbx, %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	addq	280(%rsp), %r12         # 8-byte Folded Reload
	adcq	120(%rsp), %r9          # 8-byte Folded Reload
	movq	%r13, %rdx
	movq	24(%rsp), %r13          # 8-byte Reload
	mulxq	%r13, %rdx, %rax
	addq	%rdx, %r12
	adcq	%rax, %r9
	movq	32(%rsp), %rdx          # 8-byte Reload
	mulxq	%r14, %rbx, %r14
	movq	40(%rsp), %rdx          # 8-byte Reload
	mulxq	%r11, %rax, %rdx
	addq	%rax, %r12
	adcq	%rdx, %r9
	addq	%rbx, %r12
	adcq	%r14, %r9
	addq	%r8, %r12
	adcq	$0, %r9
	shldq	$13, %r12, %r9
	movb	$51, %r8b
	bzhiq	%r8, %r12, %r12
	movq	408(%rsp), %r15         # 8-byte Reload
	addq	152(%rsp), %r15         # 8-byte Folded Reload
	movq	144(%rsp), %rax         # 8-byte Reload
	adcq	80(%rsp), %rax          # 8-byte Folded Reload
	addq	128(%rsp), %r15         # 8-byte Folded Reload
	adcq	160(%rsp), %rax         # 8-byte Folded Reload
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	%r13, %r14
	mulxq	%r14, %rdx, %rbx
	addq	%rdx, %r15
	adcq	%rbx, %rax
	movq	32(%rsp), %rdx          # 8-byte Reload
	mulxq	%r11, %rbx, %r11
	addq	%rbx, %r15
	adcq	%r11, %rax
	addq	%r9, %r15
	adcq	$0, %rax
	shldq	$13, %r15, %rax
	movq	%rax, %r11
	bzhiq	%r8, %r15, %r9
	movq	168(%rsp), %rax         # 8-byte Reload
	addq	200(%rsp), %rax         # 8-byte Folded Reload
	movq	176(%rsp), %rbx         # 8-byte Reload
	adcq	224(%rsp), %rbx         # 8-byte Folded Reload
	addq	216(%rsp), %rax         # 8-byte Folded Reload
	adcq	240(%rsp), %rbx         # 8-byte Folded Reload
	addq	112(%rsp), %rax         # 8-byte Folded Reload
	adcq	64(%rsp), %rbx          # 8-byte Folded Reload
	mulxq	%r14, %rdx, %r8
	addq	%rdx, %rax
	adcq	%r8, %rbx
	addq	%r11, %rax
	adcq	$0, %rbx
	shldq	$13, %rax, %rbx
	movb	$51, %r11b
	bzhiq	%r11, %rax, %r8
	movq	192(%rsp), %rax         # 8-byte Reload
	addq	208(%rsp), %rax         # 8-byte Folded Reload
	adcq	232(%rsp), %r10         # 8-byte Folded Reload
	addq	104(%rsp), %rax         # 8-byte Folded Reload
	adcq	184(%rsp), %r10         # 8-byte Folded Reload
	addq	248(%rsp), %rax         # 8-byte Folded Reload
	adcq	136(%rsp), %r10         # 8-byte Folded Reload
	addq	56(%rsp), %rax          # 8-byte Folded Reload
	adcq	48(%rsp), %r10          # 8-byte Folded Reload
	addq	%rbx, %rax
	adcq	$0, %r10
	shldq	$13, %rax, %r10
	movq	%rax, %rbx
	leaq	(%r10,%r10,4), %rax
	shlq	$2, %rax
	subq	%r10, %rax
	addq	96(%rsp), %rax          # 8-byte Folded Reload
	bzhiq	%r11, %rax, %r10
	shrq	$51, %rax
	addq	%r12, %rax
	bzhiq	%r11, %rax, %rdx
	shrq	$51, %rax
	addq	%r9, %rax
	movq	%r10, 352(%rsp)
	movq	%rdx, 360(%rsp)
	movq	%rax, 368(%rsp)
	movq	%r8, 376(%rsp)
	bzhiq	%r11, %rbx, %rbx
	movq	%rbx, 384(%rsp)
	vmovaps	416(%rsp), %ymm0
	addq	%r10, 416(%rsp)
	addq	%rdx, 424(%rsp)
	addq	%rax, 432(%rsp)
	addq	%r8, 440(%rsp)
	vmovaps	%ymm0, 608(%rsp)
	movq	384(%rsp), %rax
	addq	%rax, 448(%rsp)
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rax, 640(%rsp)
	movq	608(%rsp), %rax
	addq	344(%rsp), %rax         # 8-byte Folded Reload
	subq	352(%rsp), %rax
	movq	%rax, 352(%rsp)
	movq	616(%rsp), %rax
	movabsq	$18014398509481976, %rdx # imm = 0x3FFFFFFFFFFFF8
	addq	%rdx, %rax
	subq	360(%rsp), %rax
	movq	%rax, 360(%rsp)
	movq	624(%rsp), %rax
	addq	%rdx, %rax
	subq	368(%rsp), %rax
	movq	%rax, 368(%rsp)
	movq	632(%rsp), %rax
	addq	%rdx, %rax
	subq	376(%rsp), %rax
	movq	%rax, 376(%rsp)
	movq	640(%rsp), %rax
	addq	%rdx, %rax
	subq	384(%rsp), %rax
	movq	%rax, 384(%rsp)
	movq	416(%rsp), %r15
	movq	448(%rsp), %r10
	movq	%r10, 32(%rsp)          # 8-byte Spill
	leaq	(%r10,%r10,4), %rax
	shlq	$2, %rax
	movq	%r15, %rdx
	mulxq	%r15, %rbx, %rdx
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	424(%rsp), %rdx
	imulq	$38, %r10, %r13
	movq	%rdx, %r9
	mulxq	%r13, %r12, %rdx
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%r13, 16(%rsp)          # 8-byte Spill
	movq	432(%rsp), %rbx
	imulq	$38, %rbx, %rdx
	movq	440(%rsp), %r11
	mulxq	%r11, %r8, %r14
	subq	%r10, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	addq	%r12, %r8
	adcq	48(%rsp), %r14          # 8-byte Folded Reload
	addq	8(%rsp), %r8            # 8-byte Folded Reload
	adcq	24(%rsp), %r14          # 8-byte Folded Reload
	leaq	(%r15,%r15), %r10
	movq	%r10, %rdx
	movq	%r10, 56(%rsp)          # 8-byte Spill
	mulxq	%r9, %rdx, %r12
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	%rbx, %rdx
	movq	%rbx, %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	mulxq	%r13, %r15, %rdx
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	leaq	(%r11,%r11,4), %rdx
	shlq	$2, %rdx
	subq	%r11, %rdx
	mulxq	%r11, %r13, %rbx
	shldq	$13, %r8, %r14
	movb	$51, %dl
	bzhiq	%rdx, %r8, %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	addq	%r15, %r13
	adcq	48(%rsp), %rbx          # 8-byte Folded Reload
	addq	8(%rsp), %r13           # 8-byte Folded Reload
	adcq	%r12, %rbx
	movq	%r10, %rdx
	mulxq	%rax, %rdx, %rax
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%r9, %rdx
	mulxq	%rdx, %r12, %r8
	movq	%rdx, %r10
	movq	16(%rsp), %rdx          # 8-byte Reload
	mulxq	%r11, %rax, %r15
	addq	%r14, %r13
	adcq	$0, %rbx
	shldq	$13, %r13, %rbx
	movb	$51, %dl
	bzhiq	%rdx, %r13, %rdx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	addq	%r12, %rax
	adcq	%r8, %r15
	addq	48(%rsp), %rax          # 8-byte Folded Reload
	adcq	8(%rsp), %r15           # 8-byte Folded Reload
	addq	%rbx, %rax
	leaq	(%r10,%r10), %r9
	movq	56(%rsp), %r12          # 8-byte Reload
	movq	%r12, %rdx
	mulxq	%r11, %rbx, %rdx
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	%r9, %rdx
	movq	64(%rsp), %rbx          # 8-byte Reload
	mulxq	%rbx, %r13, %rdx
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	32(%rsp), %r10          # 8-byte Reload
	mulxq	%r10, %r14, %r8
	adcq	$0, %r15
	shldq	$13, %rax, %r15
	movb	$51, %dl
	bzhiq	%rdx, %rax, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	addq	%r13, %r14
	adcq	112(%rsp), %r8          # 8-byte Folded Reload
	addq	48(%rsp), %r14          # 8-byte Folded Reload
	adcq	8(%rsp), %r8            # 8-byte Folded Reload
	movq	%r12, %rdx
	mulxq	%r10, %r12, %r10
	movq	%r9, %rdx
	mulxq	%r11, %r13, %r11
	movq	%rbx, %rdx
	mulxq	%rdx, %rdx, %rbx
	addq	%r15, %r14
	adcq	$0, %r8
	shldq	$13, %r14, %r8
	movb	$51, %al
	bzhiq	%rax, %r14, %r9
	addq	%r13, %rdx
	adcq	%r11, %rbx
	addq	%r12, %rdx
	adcq	%r10, %rbx
	addq	%r8, %rdx
	adcq	$0, %rbx
	shldq	$13, %rdx, %rbx
	leaq	(%rbx,%rbx,4), %rax
	shlq	$2, %rax
	subq	%rbx, %rax
	addq	24(%rsp), %rax          # 8-byte Folded Reload
	movb	$51, %r10b
	bzhiq	%r10, %rax, %r8
	shrq	$51, %rax
	addq	16(%rsp), %rax          # 8-byte Folded Reload
	bzhiq	%r10, %rax, %r11
	shrq	$51, %rax
	addq	40(%rsp), %rax          # 8-byte Folded Reload
	bzhiq	%r10, %rdx, %rdx
	movq	88(%rsp), %rbx          # 8-byte Reload
	movq	%r8, (%rbx)
	movq	%r11, 8(%rbx)
	movq	%rax, 16(%rbx)
	movq	%r9, 24(%rbx)
	movq	%rdx, 32(%rbx)
	movq	352(%rsp), %r11
	movq	360(%rsp), %r8
	movq	384(%rsp), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leaq	(%rax,%rax,4), %r15
	shlq	$2, %r15
	movq	%r11, %rdx
	mulxq	%r11, %rbx, %rdx
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	imulq	$38, %rax, %r12
	movq	%r8, %rdx
	mulxq	%r12, %rbx, %rdx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	%r12, 24(%rsp)          # 8-byte Spill
	movq	368(%rsp), %r9
	imulq	$38, %r9, %rdx
	movq	376(%rsp), %r13
	mulxq	%r13, %r10, %r14
	subq	%rax, %r15
	movq	%r15, 48(%rsp)          # 8-byte Spill
	addq	%rbx, %r10
	adcq	8(%rsp), %r14           # 8-byte Folded Reload
	addq	16(%rsp), %r10          # 8-byte Folded Reload
	adcq	32(%rsp), %r14          # 8-byte Folded Reload
	leaq	(%r11,%r11), %r11
	movq	%r11, %rdx
	mulxq	%r8, %rdx, %rax
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	%r8, %r15
	movq	%r9, %rdx
	mulxq	%r12, %r8, %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leaq	(,%r13,4), %rdx
	addq	%r13, %rdx
	shlq	$2, %rdx
	subq	%r13, %rdx
	mulxq	%r13, %r12, %rax
	shldq	$13, %r10, %r14
	movb	$51, %dl
	bzhiq	%rdx, %r10, %rdx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	addq	%r8, %r12
	adcq	88(%rsp), %rax          # 8-byte Folded Reload
	addq	8(%rsp), %r12           # 8-byte Folded Reload
	adcq	16(%rsp), %rax          # 8-byte Folded Reload
	movq	%r11, %rdx
	movq	%r11, %r10
	movq	%r10, 64(%rsp)          # 8-byte Spill
	mulxq	%r9, %rbx, %rdx
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%r15, %rdx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	mulxq	%rdx, %r15, %r8
	movq	24(%rsp), %rdx          # 8-byte Reload
	mulxq	%r13, %rbx, %r11
	addq	%r14, %r12
	adcq	$0, %rax
	shldq	$13, %r12, %rax
	movb	$51, %dl
	bzhiq	%rdx, %r12, %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	addq	%r15, %rbx
	adcq	%r8, %r11
	addq	8(%rsp), %rbx           # 8-byte Folded Reload
	adcq	16(%rsp), %r11          # 8-byte Folded Reload
	addq	%rax, %rbx
	movq	56(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rax), %r8
	movq	%r10, %rdx
	mulxq	%r13, %rdx, %rax
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%r8, %rdx
	mulxq	%r9, %r12, %r15
	movq	48(%rsp), %rdx          # 8-byte Reload
	movq	40(%rsp), %r14          # 8-byte Reload
	mulxq	%r14, %rax, %r10
	adcq	$0, %r11
	shldq	$13, %rbx, %r11
	movb	$51, %dl
	bzhiq	%rdx, %rbx, %rdx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	addq	%r12, %rax
	adcq	%r15, %r10
	addq	88(%rsp), %rax          # 8-byte Folded Reload
	adcq	8(%rsp), %r10           # 8-byte Folded Reload
	movq	64(%rsp), %rdx          # 8-byte Reload
	mulxq	%r14, %r15, %r14
	movq	%r8, %rdx
	mulxq	%r13, %r12, %r8
	movq	%r9, %rdx
	mulxq	%r9, %r13, %rbx
	addq	%r11, %rax
	adcq	$0, %r10
	shldq	$13, %rax, %r10
	movb	$51, %dl
	bzhiq	%rdx, %rax, %r9
	movq	%r9, 40(%rsp)           # 8-byte Spill
	addq	%r12, %r13
	adcq	%r8, %rbx
	addq	%r15, %r13
	adcq	%r14, %rbx
	addq	%r10, %r13
	adcq	$0, %rbx
	shldq	$13, %r13, %rbx
	leaq	(%rbx,%rbx,4), %r14
	shlq	$2, %r14
	subq	%rbx, %r14
	addq	32(%rsp), %r14          # 8-byte Folded Reload
	movb	$51, %r8b
	bzhiq	%r8, %r14, %rax
	shrq	$51, %r14
	addq	24(%rsp), %r14          # 8-byte Folded Reload
	bzhiq	%r8, %r14, %r11
	shrq	$51, %r14
	addq	16(%rsp), %r14          # 8-byte Folded Reload
	movq	32(%rbp), %r15
	movq	%rax, 672(%rsp)
	movq	%r11, 680(%rsp)
	movq	%r14, 688(%rsp)
	movq	%r9, 696(%rsp)
	bzhiq	%r8, %r13, %rdx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rdx, 704(%rsp)
	movq	(%r15), %r12
	movq	%rax, %rdx
	mulxq	%r12, %rbx, %rdx
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movq	%r11, %rdx
	mulxq	%r12, %rbx, %rdx
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	%rdx, 152(%rsp)         # 8-byte Spill
	movq	8(%r15), %r8
	movq	%r15, %r9
	movq	%rax, %rdx
	mulxq	%r8, %r15, %r13
	movq	%r14, %rdx
	mulxq	%r12, %rbx, %rdx
	movq	%rbx, 104(%rsp)         # 8-byte Spill
	movq	%rdx, 176(%rsp)         # 8-byte Spill
	movq	16(%r9), %r10
	movq	%rax, %rdx
	mulxq	%r10, %rbx, %rdx
	movq	%rbx, 160(%rsp)         # 8-byte Spill
	movq	%rdx, 168(%rsp)         # 8-byte Spill
	movq	%r11, %rdx
	movq	%r11, %r9
	mulxq	%r8, %rbx, %rdx
	movq	%rbx, 280(%rsp)         # 8-byte Spill
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	movq	40(%rsp), %rdx          # 8-byte Reload
	mulxq	%r12, %rbx, %rdx
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movq	32(%rbp), %rdx
	movq	24(%rdx), %r11
	movq	%rax, %rdx
	mulxq	%r11, %rbx, %rdx
	movq	%rbx, 216(%rsp)         # 8-byte Spill
	movq	%rdx, 240(%rsp)         # 8-byte Spill
	movq	%r14, %rdx
	mulxq	%r8, %rbx, %rdx
	movq	%rbx, 232(%rsp)         # 8-byte Spill
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	movq	%r9, %rdx
	movq	%r9, 144(%rsp)          # 8-byte Spill
	mulxq	%r10, %rbx, %rdx
	movq	%rbx, 184(%rsp)         # 8-byte Spill
	movq	%rdx, 200(%rsp)         # 8-byte Spill
	movq	32(%rsp), %rdx          # 8-byte Reload
	mulxq	%r12, %rbx, %rdx
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	32(%rbp), %rdx
	movq	32(%rdx), %r12
	leaq	(%r12,%r12,4), %rdx
	shlq	$2, %rdx
	subq	%r12, %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rax, %rdx
	mulxq	%r12, %rbx, %rdx
	movq	%rbx, 248(%rsp)         # 8-byte Spill
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	movq	%r9, %rdx
	mulxq	%r11, %rdx, %r12
	movq	%r11, %rax
	movq	%rdx, 224(%rsp)         # 8-byte Spill
	movq	40(%rsp), %rdx          # 8-byte Reload
	mulxq	%r8, %rbx, %rdx
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	leaq	(%r8,%r8,4), %r9
	shlq	$2, %r9
	subq	%r8, %r9
	leaq	(%r10,%r10,4), %r11
	shlq	$2, %r11
	subq	%r10, %r11
	movq	%r14, %rdx
	mulxq	%r10, %rbx, %rdx
	movq	%rbx, 192(%rsp)         # 8-byte Spill
	movq	%rdx, 208(%rsp)         # 8-byte Spill
	movq	%rax, %rbx
	leaq	(%rbx,%rbx,4), %r8
	shlq	$2, %r8
	subq	%rbx, %r8
	movq	144(%rsp), %rdx         # 8-byte Reload
	mulxq	24(%rsp), %rbx, %r10    # 8-byte Folded Reload
	addq	120(%rsp), %rbx         # 8-byte Folded Reload
	adcq	80(%rsp), %r10          # 8-byte Folded Reload
	movq	32(%rsp), %rdx          # 8-byte Reload
	mulxq	%r9, %rax, %rdx
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movq	40(%rsp), %rdx          # 8-byte Reload
	mulxq	%r11, %rdx, %rax
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	movq	%r14, %rdx
	mulxq	%r8, %r9, %rdx
	addq	%r9, %rbx
	adcq	%rdx, %r10
	addq	144(%rsp), %rbx         # 8-byte Folded Reload
	adcq	%rax, %r10
	addq	120(%rsp), %rbx         # 8-byte Folded Reload
	adcq	80(%rsp), %r10          # 8-byte Folded Reload
	shldq	$13, %rbx, %r10
	movb	$51, %dl
	bzhiq	%rdx, %rbx, %rdx
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	addq	96(%rsp), %r15          # 8-byte Folded Reload
	adcq	152(%rsp), %r13         # 8-byte Folded Reload
	movq	%r14, %rdx
	mulxq	24(%rsp), %rdx, %rax    # 8-byte Folded Reload
	addq	%rdx, %r15
	adcq	%rax, %r13
	movq	32(%rsp), %rdx          # 8-byte Reload
	mulxq	%r11, %r14, %r9
	movq	40(%rsp), %rdx          # 8-byte Reload
	mulxq	%r8, %rax, %rbx
	addq	%rax, %r15
	adcq	%rbx, %r13
	addq	%r14, %r15
	adcq	%r9, %r13
	addq	%r10, %r15
	adcq	$0, %r13
	shldq	$13, %r15, %r13
	movb	$51, %r10b
	bzhiq	%r10, %r15, %r9
	movq	280(%rsp), %r11         # 8-byte Reload
	addq	160(%rsp), %r11         # 8-byte Folded Reload
	movq	128(%rsp), %rax         # 8-byte Reload
	adcq	168(%rsp), %rax         # 8-byte Folded Reload
	addq	104(%rsp), %r11         # 8-byte Folded Reload
	adcq	176(%rsp), %rax         # 8-byte Folded Reload
	movq	24(%rsp), %r15          # 8-byte Reload
	mulxq	%r15, %rbx, %rdx
	addq	%rbx, %r11
	adcq	%rdx, %rax
	movq	32(%rsp), %rdx          # 8-byte Reload
	mulxq	%r8, %rbx, %r8
	addq	%rbx, %r11
	adcq	%r8, %rax
	addq	%r13, %r11
	adcq	$0, %rax
	shldq	$13, %r11, %rax
	movq	%rax, %r8
	bzhiq	%r10, %r11, %r10
	movb	$51, %r11b
	movq	184(%rsp), %r14         # 8-byte Reload
	addq	216(%rsp), %r14         # 8-byte Folded Reload
	movq	200(%rsp), %rbx         # 8-byte Reload
	adcq	240(%rsp), %rbx         # 8-byte Folded Reload
	addq	232(%rsp), %r14         # 8-byte Folded Reload
	adcq	136(%rsp), %rbx         # 8-byte Folded Reload
	addq	48(%rsp), %r14          # 8-byte Folded Reload
	adcq	88(%rsp), %rbx          # 8-byte Folded Reload
	mulxq	%r15, %rax, %rdx
	addq	%rax, %r14
	adcq	%rdx, %rbx
	addq	%r8, %r14
	adcq	$0, %rbx
	shldq	$13, %r14, %rbx
	bzhiq	%r11, %r14, %r8
	movq	224(%rsp), %rax         # 8-byte Reload
	addq	248(%rsp), %rax         # 8-byte Folded Reload
	adcq	112(%rsp), %r12         # 8-byte Folded Reload
	addq	192(%rsp), %rax         # 8-byte Folded Reload
	adcq	208(%rsp), %r12         # 8-byte Folded Reload
	addq	64(%rsp), %rax          # 8-byte Folded Reload
	adcq	56(%rsp), %r12          # 8-byte Folded Reload
	addq	8(%rsp), %rax           # 8-byte Folded Reload
	adcq	16(%rsp), %r12          # 8-byte Folded Reload
	addq	%rbx, %rax
	adcq	$0, %r12
	shldq	$13, %rax, %r12
	movq	%rax, %rdx
	leaq	(%r12,%r12,4), %rax
	shlq	$2, %rax
	subq	%r12, %rax
	movb	$51, %bl
	bzhiq	%rbx, %rdx, %r11
	addq	80(%rsp), %rax          # 8-byte Folded Reload
	bzhiq	%rbx, %rax, %rdx
	shrq	$51, %rax
	addq	%r9, %rax
	bzhiq	%rbx, %rax, %rbx
	shrq	$51, %rax
	addq	%r10, %rax
	movq	%rdx, (%rcx)
	movq	%rbx, 8(%rcx)
	movq	%rax, 16(%rcx)
	movq	%r8, 24(%rcx)
	movq	%r11, 32(%rcx)
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %r10
	movq	8(%rcx), %r8
	movq	32(%rcx), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leaq	(%rax,%rax,4), %rdx
	shlq	$2, %rdx
	movq	%rdx, %rbx
	movq	%r10, %rdx
	mulxq	%r10, %r15, %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	imulq	$38, %rax, %r11
	movq	%r11, 8(%rsp)           # 8-byte Spill
	movq	%r8, %rdx
	mulxq	%r11, %r9, %r11
	movq	16(%rcx), %r12
	movq	24(%rcx), %r13
	imulq	$38, %r12, %rdx
	mulxq	%r13, %rcx, %r14
	subq	%rax, %rbx
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	addq	%r9, %rcx
	adcq	%r11, %r14
	addq	%r15, %rcx
	adcq	24(%rsp), %r14          # 8-byte Folded Reload
	leaq	(%r10,%r10), %rbx
	movq	%rbx, %rdx
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	movq	%r8, %r10
	mulxq	%r10, %rdx, %rax
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	%r12, %rdx
	movq	8(%rsp), %r8            # 8-byte Reload
	mulxq	%r8, %r11, %r9
	leaq	(,%r13,4), %rdx
	addq	%r13, %rdx
	shlq	$2, %rdx
	subq	%r13, %rdx
	mulxq	%r13, %r15, %rax
	shldq	$13, %rcx, %r14
	movb	$51, %dl
	bzhiq	%rdx, %rcx, %rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	addq	%r11, %r15
	adcq	%r9, %rax
	addq	16(%rsp), %r15          # 8-byte Folded Reload
	adcq	24(%rsp), %rax          # 8-byte Folded Reload
	movq	%rbx, %rdx
	mulxq	%r12, %rdx, %rcx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%r10, %rdx
	mulxq	%rdx, %r9, %r11
	movq	%rdx, %rbx
	movq	%r8, %rdx
	mulxq	%r13, %r8, %r10
	addq	%r14, %r15
	adcq	$0, %rax
	shldq	$13, %r15, %rax
	movb	$51, %cl
	bzhiq	%rcx, %r15, %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	addq	%r9, %r8
	adcq	%r11, %r10
	addq	16(%rsp), %r8           # 8-byte Folded Reload
	adcq	24(%rsp), %r10          # 8-byte Folded Reload
	addq	%rax, %r8
	leaq	(%rbx,%rbx), %r9
	movq	88(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdx
	mulxq	%r13, %rcx, %rax
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	%r9, %rdx
	mulxq	%r12, %r15, %r11
	movq	32(%rsp), %rdx          # 8-byte Reload
	movq	40(%rsp), %rbx          # 8-byte Reload
	mulxq	%rbx, %rcx, %rax
	adcq	$0, %r10
	shldq	$13, %r8, %r10
	movb	$51, %dl
	bzhiq	%rdx, %r8, %r8
	addq	%r15, %rcx
	adcq	%r11, %rax
	addq	16(%rsp), %rcx          # 8-byte Folded Reload
	adcq	24(%rsp), %rax          # 8-byte Folded Reload
	movq	%r14, %rdx
	mulxq	%rbx, %r11, %r15
	movq	%r9, %rdx
	mulxq	%r13, %r14, %r9
	movq	%r12, %rdx
	mulxq	%r12, %rdx, %rbx
	addq	%r10, %rcx
	adcq	$0, %rax
	shldq	$13, %rcx, %rax
	movb	$51, %r10b
	bzhiq	%r10, %rcx, %r12
	movq	%r12, 40(%rsp)          # 8-byte Spill
	addq	%r14, %rdx
	adcq	%r9, %rbx
	addq	%r11, %rdx
	adcq	%r15, %rbx
	addq	%rax, %rdx
	adcq	$0, %rbx
	bzhiq	%r10, %rdx, %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	shldq	$13, %rdx, %rbx
	leaq	(%rbx,%rbx,4), %rcx
	shlq	$2, %rcx
	subq	%rbx, %rcx
	addq	72(%rsp), %rcx          # 8-byte Folded Reload
	movb	$51, %dl
	bzhiq	%rdx, %rcx, %rbx
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	shrq	$51, %rcx
	addq	8(%rsp), %rcx           # 8-byte Folded Reload
	bzhiq	%rdx, %rcx, %rdx
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	shrq	$51, %rcx
	addq	%r8, %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%rbx, 480(%rsp)
	movq	%rdx, 488(%rsp)
	movq	%rcx, 496(%rsp)
	movq	%r12, 504(%rsp)
	movq	%rax, 512(%rsp)
	movq	264(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %r14
	movq	32(%rax), %rbx
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	leaq	(%rbx,%rbx,4), %rcx
	shlq	$2, %rcx
	movq	%r14, %rdx
	mulxq	%r14, %rdx, %r13
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	8(%rax), %r15
	imulq	$38, %rbx, %r10
	movq	%r15, %rdx
	mulxq	%r10, %r9, %r8
	movq	%r10, 48(%rsp)          # 8-byte Spill
	movq	16(%rax), %rdx
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	movq	24(%rax), %r11
	imulq	$38, %rdx, %rdx
	mulxq	%r11, %r12, %rax
	subq	%rbx, %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	addq	%r9, %r12
	adcq	%r8, %rax
	addq	56(%rsp), %r12          # 8-byte Folded Reload
	adcq	%r13, %rax
	leaq	(%r14,%r14), %rbx
	movq	%rbx, %rdx
	movq	%rbx, 112(%rsp)         # 8-byte Spill
	mulxq	%r15, %rcx, %r9
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	136(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, %rdx
	mulxq	%r10, %r8, %rdx
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	leaq	(%r11,%r11,4), %rdx
	shlq	$2, %rdx
	subq	%r11, %rdx
	mulxq	%r11, %r10, %r14
	shldq	$13, %r12, %rax
	movb	$51, %dl
	bzhiq	%rdx, %r12, %rdx
	movb	$51, %r13b
	movq	%rdx, 264(%rsp)         # 8-byte Spill
	addq	%r8, %r10
	adcq	64(%rsp), %r14          # 8-byte Folded Reload
	addq	56(%rsp), %r10          # 8-byte Folded Reload
	adcq	%r9, %r14
	movq	%rbx, %rdx
	mulxq	%rcx, %rbx, %rdx
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	%r15, %rdx
	mulxq	%r15, %r9, %r8
	movq	48(%rsp), %rdx          # 8-byte Reload
	mulxq	%r11, %r12, %rbx
	addq	%rax, %r10
	adcq	$0, %r14
	shldq	$13, %r10, %r14
	bzhiq	%r13, %r10, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	addq	%r9, %r12
	adcq	%r8, %rbx
	addq	64(%rsp), %r12          # 8-byte Folded Reload
	adcq	56(%rsp), %rbx          # 8-byte Folded Reload
	addq	%r14, %r12
	leaq	(%r15,%r15), %r13
	movq	112(%rsp), %r9          # 8-byte Reload
	movq	%r9, %rdx
	mulxq	%r11, %rax, %rdx
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	%r13, %rdx
	mulxq	%rcx, %r10, %r14
	movq	%rcx, %rax
	movq	8(%rsp), %rdx           # 8-byte Reload
	movq	88(%rsp), %rcx          # 8-byte Reload
	mulxq	%rcx, %r15, %r8
	adcq	$0, %rbx
	shldq	$13, %r12, %rbx
	movb	$51, %dl
	bzhiq	%rdx, %r12, %r12
	addq	%r10, %r15
	adcq	%r14, %r8
	addq	64(%rsp), %r15          # 8-byte Folded Reload
	adcq	56(%rsp), %r8           # 8-byte Folded Reload
	movq	%r9, %rdx
	mulxq	%rcx, %r10, %r9
	movq	%r13, %rdx
	mulxq	%r11, %rcx, %r14
	movq	%rax, %rdx
	mulxq	%rdx, %rax, %rdx
	addq	%rbx, %r15
	adcq	$0, %r8
	shldq	$13, %r15, %r8
	movb	$51, %bl
	bzhiq	%rbx, %r15, %r11
	addq	%rcx, %rax
	adcq	%r14, %rdx
	addq	%r10, %rax
	adcq	%r9, %rdx
	addq	%r8, %rax
	adcq	$0, %rdx
	shldq	$13, %rax, %rdx
	leaq	(%rdx,%rdx,4), %rbx
	shlq	$2, %rbx
	subq	%rdx, %rbx
	addq	264(%rsp), %rbx         # 8-byte Folded Reload
	movb	$51, %r8b
	bzhiq	%r8, %rbx, %r9
	shrq	$51, %rbx
	addq	48(%rsp), %rbx          # 8-byte Folded Reload
	movq	%r9, 288(%rsp)
	bzhiq	%r8, %rbx, %rdx
	movq	%rdx, 296(%rsp)
	shrq	$51, %rbx
	addq	%r12, %rbx
	bzhiq	%r8, %rax, %rax
	movq	%rbx, 304(%rsp)
	movq	%r11, 312(%rsp)
	movq	%rax, 320(%rsp)
	movq	16(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rdx
	mulxq	%r9, %rdx, %rcx
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movq	72(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdx
	mulxq	%r9, %rdx, %rcx
	movq	%rdx, 152(%rsp)         # 8-byte Spill
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movq	296(%rsp), %r11
	movq	%r13, %rdx
	mulxq	%r11, %r15, %r10
	movq	32(%rsp), %rdx          # 8-byte Reload
	mulxq	%r9, %rcx, %rdx
	movq	%rcx, 168(%rsp)         # 8-byte Spill
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	movq	304(%rsp), %r14
	movq	%r13, %rdx
	mulxq	%r14, %rcx, %rax
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movq	%rbx, %rdx
	movq	%rbx, %rcx
	mulxq	%r11, %r8, %r12
	movq	40(%rsp), %rdx          # 8-byte Reload
	mulxq	%r9, %rbx, %rdx
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	312(%rsp), %rbx
	movq	%r13, %rdx
	mulxq	%rbx, %rax, %rdx
	movq	%rax, 208(%rsp)         # 8-byte Spill
	movq	%rdx, 232(%rsp)         # 8-byte Spill
	movq	32(%rsp), %rdx          # 8-byte Reload
	mulxq	%r11, %rax, %rdx
	movq	%rax, 224(%rsp)         # 8-byte Spill
	movq	%rdx, 248(%rsp)         # 8-byte Spill
	movq	%rcx, %rdx
	mulxq	%r14, %rdx, %rax
	movq	%rdx, 176(%rsp)         # 8-byte Spill
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movq	24(%rsp), %rdx          # 8-byte Reload
	mulxq	%r9, %rdx, %rcx
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movq	%rcx, 264(%rsp)         # 8-byte Spill
	movq	320(%rsp), %rcx
	leaq	(%rcx,%rcx,4), %rax
	shlq	$2, %rax
	subq	%rcx, %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	16(%rsp), %rdx          # 8-byte Reload
	mulxq	%rcx, %rcx, %rax
	movq	%rcx, 240(%rsp)         # 8-byte Spill
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movq	72(%rsp), %rdx          # 8-byte Reload
	mulxq	%rbx, %rax, %r13
	movq	%rax, 216(%rsp)         # 8-byte Spill
	movq	40(%rsp), %rdx          # 8-byte Reload
	mulxq	%r11, %rdx, %rax
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leaq	(%r11,%r11,4), %r9
	shlq	$2, %r9
	subq	%r11, %r9
	leaq	(%r14,%r14,4), %r11
	shlq	$2, %r11
	subq	%r14, %r11
	movq	32(%rsp), %rdx          # 8-byte Reload
	mulxq	%r14, %rdx, %rax
	movq	%rdx, 184(%rsp)         # 8-byte Spill
	movq	%rax, 200(%rsp)         # 8-byte Spill
	leaq	(%rbx,%rbx,4), %rax
	shlq	$2, %rax
	subq	%rbx, %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	72(%rsp), %rdx          # 8-byte Reload
	mulxq	8(%rsp), %rbx, %r14     # 8-byte Folded Reload
	addq	120(%rsp), %rbx         # 8-byte Folded Reload
	adcq	96(%rsp), %r14          # 8-byte Folded Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	mulxq	%r9, %rcx, %rdx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	40(%rsp), %rdx          # 8-byte Reload
	mulxq	%r11, %rdx, %rcx
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	movq	32(%rsp), %rdx          # 8-byte Reload
	mulxq	%rax, %r9, %rax
	addq	%r9, %rbx
	adcq	%rax, %r14
	addq	120(%rsp), %rbx         # 8-byte Folded Reload
	adcq	%rcx, %r14
	addq	96(%rsp), %rbx          # 8-byte Folded Reload
	adcq	72(%rsp), %r14          # 8-byte Folded Reload
	shldq	$13, %rbx, %r14
	movb	$51, %al
	bzhiq	%rax, %rbx, %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	addq	152(%rsp), %r15         # 8-byte Folded Reload
	adcq	80(%rsp), %r10          # 8-byte Folded Reload
	movq	8(%rsp), %rax           # 8-byte Reload
	mulxq	%rax, %rbx, %rdx
	addq	%rbx, %r15
	adcq	%rdx, %r10
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, %rdx
	mulxq	%r11, %r11, %rdx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	40(%rsp), %r9           # 8-byte Reload
	movq	%r9, %rdx
	mulxq	16(%rsp), %rbx, %rdx    # 8-byte Folded Reload
	addq	%rbx, %r15
	adcq	%rdx, %r10
	addq	%r11, %r15
	adcq	32(%rsp), %r10          # 8-byte Folded Reload
	addq	%r14, %r15
	adcq	$0, %r10
	shldq	$13, %r15, %r10
	movb	$51, %r11b
	bzhiq	%r11, %r15, %r15
	addq	128(%rsp), %r8          # 8-byte Folded Reload
	adcq	160(%rsp), %r12         # 8-byte Folded Reload
	addq	168(%rsp), %r8          # 8-byte Folded Reload
	adcq	104(%rsp), %r12         # 8-byte Folded Reload
	movq	%r9, %rdx
	mulxq	%rax, %rbx, %rdx
	movq	%rax, %r14
	addq	%rbx, %r8
	adcq	%rdx, %r12
	movq	%rcx, %rdx
	mulxq	16(%rsp), %rdx, %rax    # 8-byte Folded Reload
	addq	%rdx, %r8
	adcq	%rax, %r12
	addq	%r10, %r8
	adcq	$0, %r12
	shldq	$13, %r8, %r12
	bzhiq	%r11, %r8, %r8
	movq	176(%rsp), %rax         # 8-byte Reload
	addq	208(%rsp), %rax         # 8-byte Folded Reload
	movq	192(%rsp), %rbx         # 8-byte Reload
	adcq	232(%rsp), %rbx         # 8-byte Folded Reload
	addq	224(%rsp), %rax         # 8-byte Folded Reload
	adcq	248(%rsp), %rbx         # 8-byte Folded Reload
	addq	56(%rsp), %rax          # 8-byte Folded Reload
	adcq	48(%rsp), %rbx          # 8-byte Folded Reload
	movq	%rcx, %rdx
	mulxq	%r14, %rdx, %r9
	addq	%rdx, %rax
	adcq	%r9, %rbx
	addq	%r12, %rax
	adcq	$0, %rbx
	shldq	$13, %rax, %rbx
	movb	$51, %r11b
	bzhiq	%r11, %rax, %r9
	movq	216(%rsp), %rdx         # 8-byte Reload
	addq	240(%rsp), %rdx         # 8-byte Folded Reload
	adcq	136(%rsp), %r13         # 8-byte Folded Reload
	addq	184(%rsp), %rdx         # 8-byte Folded Reload
	adcq	200(%rsp), %r13         # 8-byte Folded Reload
	addq	112(%rsp), %rdx         # 8-byte Folded Reload
	adcq	64(%rsp), %r13          # 8-byte Folded Reload
	addq	88(%rsp), %rdx          # 8-byte Folded Reload
	adcq	264(%rsp), %r13         # 8-byte Folded Reload
	addq	%rbx, %rdx
	adcq	$0, %r13
	bzhiq	%r11, %rdx, %r10
	shldq	$13, %rdx, %r13
	leaq	(,%r13,4), %rbx
	addq	%r13, %rbx
	shlq	$2, %rbx
	subq	%r13, %rbx
	addq	72(%rsp), %rbx          # 8-byte Folded Reload
	bzhiq	%r11, %rbx, %rcx
	shrq	$51, %rbx
	addq	%r15, %rbx
	bzhiq	%r11, %rbx, %rax
	movb	$51, %r12b
	shrq	$51, %rbx
	addq	%r8, %rbx
	movq	%rcx, (%rdi)
	movq	%rax, 8(%rdi)
	movq	%rbx, 16(%rdi)
	movq	%r9, 24(%rdi)
	movq	%r10, 32(%rdi)
	movq	344(%rsp), %rax         # 8-byte Reload
	addq	480(%rsp), %rax
	subq	288(%rsp), %rax
	movq	%rax, 288(%rsp)
	movq	%rax, %rdx
	movq	488(%rsp), %rdi
	movabsq	$18014398509481976, %r15 # imm = 0x3FFFFFFFFFFFF8
	addq	%r15, %rdi
	subq	296(%rsp), %rdi
	movq	%rdi, 296(%rsp)
	movq	496(%rsp), %rcx
	addq	%r15, %rcx
	subq	304(%rsp), %rcx
	movq	%rcx, 304(%rsp)
	movq	504(%rsp), %rax
	addq	%r15, %rax
	subq	312(%rsp), %rax
	movq	%rax, 312(%rsp)
	addq	512(%rsp), %r15
	subq	320(%rsp), %r15
	movq	%r15, 320(%rsp)
	movl	$121665, %r10d          # imm = 0x1DB41
	mulxq	%r10, %r9, %rbx
	bzhiq	%r12, %r9, %r8
	movq	%r8, 544(%rsp)
	movq	%rdi, %rdx
	mulxq	%r10, %rdx, %r11
	movq	%rbx, %rdi
	shrq	$51, %rdi
	shldq	$13, %r9, %rbx
	addq	%rdx, %rbx
	adcq	%r11, %rdi
	bzhiq	%r12, %rbx, %r9
	movq	%r9, 552(%rsp)
	movq	%rcx, %rdx
	mulxq	%r10, %rdx, %rcx
	shrdq	$51, %rdi, %rbx
	shrq	$51, %rdi
	addq	%rdx, %rbx
	adcq	%rcx, %rdi
	bzhiq	%r12, %rbx, %r14
	movq	%r14, 560(%rsp)
	movq	%rax, %rdx
	mulxq	%r10, %rcx, %rax
	shrdq	$51, %rdi, %rbx
	shrq	$51, %rdi
	addq	%rcx, %rbx
	adcq	%rax, %rdi
	bzhiq	%r12, %rbx, %r11
	movq	%r11, 568(%rsp)
	movq	%r15, %rdx
	mulxq	%r10, %rcx, %rax
	shrdq	$51, %rdi, %rbx
	shrq	$51, %rdi
	addq	%rcx, %rbx
	adcq	%rax, %rdi
	bzhiq	%r12, %rbx, %rax
	movq	%rax, 576(%rsp)
	shldq	$13, %rbx, %rdi
	leaq	(%rdi,%rdi,4), %r13
	shlq	$2, %r13
	subq	%rdi, %r13
	addq	%r8, %r13
	movq	%r13, 544(%rsp)
	addq	480(%rsp), %r13
	movq	%r13, 544(%rsp)
	addq	488(%rsp), %r9
	movq	%r9, 552(%rsp)
	addq	496(%rsp), %r14
	movq	%r14, 560(%rsp)
	addq	504(%rsp), %r11
	movq	%r11, 568(%rsp)
	movq	%r11, %r15
	movq	%r15, 80(%rsp)          # 8-byte Spill
	addq	512(%rsp), %rax
	movq	%rax, 576(%rsp)
	movq	288(%rsp), %rax
	movq	296(%rsp), %rcx
	movq	%rax, %rdx
	mulxq	%r13, %rdi, %rdx
	movq	%rdi, 128(%rsp)         # 8-byte Spill
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	movq	%rcx, %rdx
	mulxq	%r13, %rdi, %rdx
	movq	%rdi, 160(%rsp)         # 8-byte Spill
	movq	%rdx, 168(%rsp)         # 8-byte Spill
	movq	%rax, %rdx
	mulxq	%r9, %r8, %r10
	movq	304(%rsp), %rbx
	movq	%rbx, %rdx
	movq	%rbx, 72(%rsp)          # 8-byte Spill
	mulxq	%r13, %rdi, %rdx
	movq	%rdi, 192(%rsp)         # 8-byte Spill
	movq	%rdx, 200(%rsp)         # 8-byte Spill
	movq	%rax, %rdx
	mulxq	%r14, %rdi, %rdx
	movq	%rdi, 176(%rsp)         # 8-byte Spill
	movq	%rdx, 184(%rsp)         # 8-byte Spill
	movq	%rcx, %rdx
	mulxq	%r9, %r11, %r12
	movq	312(%rsp), %rdx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	mulxq	%r13, %rdi, %rdx
	movq	%rdi, 264(%rsp)         # 8-byte Spill
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	%rax, %rdx
	mulxq	%r15, %rdi, %rdx
	movq	%rdi, 240(%rsp)         # 8-byte Spill
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	movq	%rbx, %rdx
	mulxq	%r9, %rdi, %rdx
	movq	%rdi, 136(%rsp)         # 8-byte Spill
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	movq	%rcx, %rdx
	mulxq	%r14, %r15, %rdx
	movq	%rdx, 216(%rsp)         # 8-byte Spill
	movq	320(%rsp), %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	mulxq	%r13, %rdi, %rdx
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	%rdx, 344(%rsp)         # 8-byte Spill
	movq	576(%rsp), %rdi
	leaq	(%rdi,%rdi,4), %rdx
	shlq	$2, %rdx
	subq	%rdi, %rdx
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	%rax, %rdx
	mulxq	%rdi, %rdx, %rax
	movq	%rdx, 248(%rsp)         # 8-byte Spill
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	%rcx, %rdx
	movq	80(%rsp), %rcx          # 8-byte Reload
	mulxq	%rcx, %rax, %rdi
	movq	%rax, 232(%rsp)         # 8-byte Spill
	movq	32(%rsp), %rdx          # 8-byte Reload
	mulxq	%r9, %rdx, %rax
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leaq	(%r9,%r9,4), %rbx
	shlq	$2, %rbx
	subq	%r9, %rbx
	leaq	(%r14,%r14,4), %r9
	shlq	$2, %r9
	subq	%r14, %r9
	movq	72(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rdx
	mulxq	%r14, %rdx, %rax
	movq	%rdx, 208(%rsp)         # 8-byte Spill
	movq	%rax, 224(%rsp)         # 8-byte Spill
	leaq	(%rcx,%rcx,4), %r14
	shlq	$2, %r14
	subq	%rcx, %r14
	movq	152(%rsp), %rdx         # 8-byte Reload
	mulxq	40(%rsp), %rcx, %rax    # 8-byte Folded Reload
	addq	128(%rsp), %rcx         # 8-byte Folded Reload
	adcq	104(%rsp), %rax         # 8-byte Folded Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	mulxq	%rbx, %rbx, %rdx
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	movq	32(%rsp), %rdx          # 8-byte Reload
	mulxq	%r9, %rbx, %rdx
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movq	%r13, %rdx
	mulxq	%r14, %r13, %rdx
	addq	%r13, %rcx
	adcq	%rdx, %rax
	addq	%rbx, %rcx
	adcq	80(%rsp), %rax          # 8-byte Folded Reload
	addq	128(%rsp), %rcx         # 8-byte Folded Reload
	adcq	104(%rsp), %rax         # 8-byte Folded Reload
	shldq	$13, %rcx, %rax
	movb	$51, %dl
	bzhiq	%rdx, %rcx, %rcx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	addq	160(%rsp), %r8          # 8-byte Folded Reload
	adcq	168(%rsp), %r10         # 8-byte Folded Reload
	movq	72(%rsp), %rdx          # 8-byte Reload
	mulxq	40(%rsp), %rdx, %rcx    # 8-byte Folded Reload
	addq	%rdx, %r8
	adcq	%rcx, %r10
	movq	24(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rdx
	mulxq	%r9, %rbx, %rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movq	32(%rsp), %r9           # 8-byte Reload
	movq	%r9, %rdx
	mulxq	%r14, %rcx, %rdx
	addq	%rcx, %r8
	adcq	%rdx, %r10
	addq	%rbx, %r8
	adcq	72(%rsp), %r10          # 8-byte Folded Reload
	addq	%rax, %r8
	adcq	$0, %r10
	shldq	$13, %r8, %r10
	movb	$51, %al
	bzhiq	%rax, %r8, %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	addq	176(%rsp), %r11         # 8-byte Folded Reload
	adcq	184(%rsp), %r12         # 8-byte Folded Reload
	addq	192(%rsp), %r11         # 8-byte Folded Reload
	adcq	200(%rsp), %r12         # 8-byte Folded Reload
	movq	%r9, %rdx
	movq	40(%rsp), %r8           # 8-byte Reload
	mulxq	%r8, %rcx, %rax
	addq	%rcx, %r11
	adcq	%rax, %r12
	movq	%r13, %rdx
	mulxq	%r14, %rcx, %rax
	addq	%rcx, %r11
	adcq	%rax, %r12
	addq	%r10, %r11
	adcq	$0, %r12
	shldq	$13, %r11, %r12
	movb	$51, %r10b
	bzhiq	%r10, %r11, %r9
	addq	240(%rsp), %r15         # 8-byte Folded Reload
	movq	216(%rsp), %rax         # 8-byte Reload
	adcq	112(%rsp), %rax         # 8-byte Folded Reload
	addq	136(%rsp), %r15         # 8-byte Folded Reload
	adcq	56(%rsp), %rax          # 8-byte Folded Reload
	addq	264(%rsp), %r15         # 8-byte Folded Reload
	adcq	8(%rsp), %rax           # 8-byte Folded Reload
	movq	%r13, %rdx
	mulxq	%r8, %rdx, %rcx
	addq	%rdx, %r15
	adcq	%rcx, %rax
	addq	%r12, %r15
	adcq	$0, %rax
	shldq	$13, %r15, %rax
	bzhiq	%r10, %r15, %rcx
	movq	232(%rsp), %rdx         # 8-byte Reload
	addq	248(%rsp), %rdx         # 8-byte Folded Reload
	adcq	64(%rsp), %rdi          # 8-byte Folded Reload
	addq	208(%rsp), %rdx         # 8-byte Folded Reload
	adcq	224(%rsp), %rdi         # 8-byte Folded Reload
	addq	48(%rsp), %rdx          # 8-byte Folded Reload
	adcq	88(%rsp), %rdi          # 8-byte Folded Reload
	addq	16(%rsp), %rdx          # 8-byte Folded Reload
	adcq	344(%rsp), %rdi         # 8-byte Folded Reload
	addq	%rax, %rdx
	adcq	$0, %rdi
	shldq	$13, %rdx, %rdi
	movq	%rdx, %rbx
	leaq	(%rdi,%rdi,4), %rdx
	shlq	$2, %rdx
	subq	%rdi, %rdx
	addq	104(%rsp), %rdx         # 8-byte Folded Reload
	movb	$51, %al
	bzhiq	%rax, %rdx, %rdi
	shrq	$51, %rdx
	addq	72(%rsp), %rdx          # 8-byte Folded Reload
	bzhiq	%rax, %rbx, %rbx
	bzhiq	%rax, %rdx, %rax
	shrq	$51, %rdx
	addq	%r9, %rdx
	movq	%rdi, (%rsi)
	movq	%rax, 8(%rsi)
	movq	%rdx, 16(%rsi)
	movq	%rcx, 24(%rsi)
	movq	%rbx, 32(%rsi)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
.Lfunc_end0:
	.size	fmonty, .Lfunc_end0-fmonty
                                        # -- End function
	.globl	curve25519_donna        # -- Begin function curve25519_donna
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
	subq	$1024, %rsp             # imm = 0x400
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm0, 832(%rsp)
	movq	$0, 864(%rsp)
	vmovaps	%ymm0, 896(%rsp)
	vmovaps	%ymm0, 704(%rsp)
	movq	$0, 928(%rsp)
	movq	$0, 736(%rsp)
	vmovaps	%ymm0, 768(%rsp)
	movq	$0, 800(%rsp)
	vmovups	(%rsi), %ymm1
	vmovaps	%ymm1, 960(%rsp)
	andb	$-8, 960(%rsp)
	movb	991(%rsp), %al
	andb	$63, %al
	orb	$64, %al
	movb	%al, 991(%rsp)
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
	shlq	$48, %rax
	orq	%rcx, %rax
	movb	$51, %cl
	bzhiq	%rcx, %rax, %rax
	movq	%rax, 832(%rsp)
	movzbl	6(%rdx), %eax
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
	shlq	$48, %rax
	orq	%rcx, %rax
	movl	$13059, %ecx            # imm = 0x3303
	bextrq	%rcx, %rax, %rax
	movq	%rax, 840(%rsp)
	movl	$13062, %eax            # imm = 0x3306
	bextrq	%rax, 12(%rdx), %rax
	movq	%rdi, 888(%rsp)         # 8-byte Spill
	movq	%rax, 848(%rsp)
	movzbl	19(%rdx), %eax
	movzbl	20(%rdx), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	21(%rdx), %eax
	shlq	$16, %rax
	orq	%rcx, %rax
	movzbl	22(%rdx), %ecx
	shlq	$24, %rcx
	orq	%rax, %rcx
	movzbl	23(%rdx), %eax
	shlq	$32, %rax
	orq	%rcx, %rax
	movzbl	24(%rdx), %ecx
	shlq	$40, %rcx
	orq	%rax, %rcx
	movzbl	25(%rdx), %eax
	shlq	$48, %rax
	orq	%rcx, %rax
	movl	$13057, %ecx            # imm = 0x3301
	bextrq	%rcx, %rax, %rax
	movq	%rax, 856(%rsp)
	movl	$13068, %eax            # imm = 0x330C
	bextrq	%rax, 24(%rdx), %rax
	movq	%rax, 864(%rsp)
	vmovups	%ymm0, 264(%rsp)
	vmovups	%ymm0, 328(%rsp)
	vmovaps	%ymm0, 384(%rsp)
	movq	$0, 416(%rsp)
	vmovaps	%ymm0, 544(%rsp)
	vmovups	%ymm0, 512(%rsp)
	vmovaps	%ymm0, 608(%rsp)
	movq	$0, 576(%rsp)
	movq	$0, 640(%rsp)
	vmovups	%ymm0, 664(%rsp)
	movq	$1, 256(%rsp)
	movq	$1, 320(%rsp)
	movq	$1, 504(%rsp)
	movq	$1, 656(%rsp)
	vmovaps	832(%rsp), %ymm0
	vmovaps	%ymm0, 448(%rsp)
	movq	864(%rsp), %rax
	movq	%rax, 480(%rsp)
	xorl	%eax, %eax
	leaq	320(%rsp), %r15
	leaq	384(%rsp), %r12
	.p2align	4, 0x90
.LBB1_1:                                # %loop_body24.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
	movl	%eax, 56(%rsp)          # 4-byte Spill
	cltq
	negq	%rax
	movb	991(%rsp,%rax), %r13b
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_2:                                # %loop_body33.i
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r13d, %eax
	shrb	$7, %al
	movzbl	%al, %r14d
	testb	$1, %bl
	jne	.LBB1_4
# %bb.3:                                # %thenbranch.i
                                        #   in Loop: Header=BB1_2 Depth=2
	testq	%r14, %r14
	movq	320(%rsp), %rax
	movq	328(%rsp), %rcx
	movq	448(%rsp), %rdx
	movq	456(%rsp), %rsi
	movq	%rax, %rdi
	cmovneq	%rdx, %rdi
	movq	%rdi, 320(%rsp)
	cmovneq	%rax, %rdx
	movq	%rdx, 448(%rsp)
	movq	%rcx, %rax
	cmovneq	%rsi, %rax
	movq	%rax, 328(%rsp)
	cmovneq	%rcx, %rsi
	movq	%rsi, 456(%rsp)
	movq	336(%rsp), %rax
	movq	464(%rsp), %rcx
	movq	%rax, %rdx
	cmovneq	%rcx, %rdx
	movq	%rdx, 336(%rsp)
	cmovneq	%rax, %rcx
	movq	%rcx, 464(%rsp)
	movq	344(%rsp), %rax
	movq	472(%rsp), %rcx
	movq	%rax, %rdx
	cmovneq	%rcx, %rdx
	movq	%rdx, 344(%rsp)
	cmovneq	%rax, %rcx
	movq	%rcx, 472(%rsp)
	movq	352(%rsp), %rax
	movq	480(%rsp), %rcx
	cmoveq	%rax, %rcx
	cmoveq	480(%rsp), %rax
	movq	%rcx, 352(%rsp)
	movq	%rax, 480(%rsp)
	movq	384(%rsp), %rax
	movq	256(%rsp), %rcx
	cmoveq	%rax, %rcx
	cmoveq	256(%rsp), %rax
	movq	%rcx, 384(%rsp)
	movq	%rax, 256(%rsp)
	movq	392(%rsp), %rax
	movq	264(%rsp), %rcx
	cmoveq	%rax, %rcx
	cmoveq	264(%rsp), %rax
	movq	%rcx, 392(%rsp)
	movq	%rax, 264(%rsp)
	movq	400(%rsp), %rax
	movq	272(%rsp), %rcx
	cmoveq	%rax, %rcx
	cmoveq	272(%rsp), %rax
	movq	%rcx, 400(%rsp)
	movq	%rax, 272(%rsp)
	movq	408(%rsp), %rax
	movq	280(%rsp), %rcx
	cmoveq	%rax, %rcx
	cmoveq	280(%rsp), %rax
	movq	%rcx, 408(%rsp)
	movq	%rax, 280(%rsp)
	movq	416(%rsp), %rax
	movq	288(%rsp), %rcx
	cmoveq	%rax, %rcx
	cmoveq	288(%rsp), %rax
	movq	%rcx, 416(%rsp)
	movq	%rax, 288(%rsp)
	subq	$8, %rsp
	leaq	616(%rsp), %rdi
	leaq	664(%rsp), %rsi
	leaq	552(%rsp), %rdx
	leaq	512(%rsp), %rcx
	movq	%r15, %r8
	movq	%r12, %r9
	leaq	840(%rsp), %rax
	pushq	%rax
	leaq	272(%rsp), %rax
	pushq	%rax
	leaq	472(%rsp), %rax
	pushq	%rax
	vzeroupper
	callq	fmonty
	addq	$32, %rsp
	testq	%r14, %r14
	movq	608(%rsp), %rax
	movq	616(%rsp), %rcx
	movq	544(%rsp), %rdx
	movq	552(%rsp), %rsi
	movq	%rax, %rdi
	cmovneq	%rdx, %rdi
	movq	%rdi, 608(%rsp)
	cmovneq	%rax, %rdx
	movq	%rdx, 544(%rsp)
	movq	%rcx, %rax
	cmovneq	%rsi, %rax
	movq	%rax, 616(%rsp)
	cmovneq	%rcx, %rsi
	movq	%rsi, 552(%rsp)
	movq	624(%rsp), %rax
	movq	560(%rsp), %rcx
	movq	%rax, %rdx
	cmovneq	%rcx, %rdx
	movq	%rdx, 624(%rsp)
	cmovneq	%rax, %rcx
	movq	%rcx, 560(%rsp)
	movq	632(%rsp), %rax
	movq	568(%rsp), %rcx
	movq	%rax, %rdx
	cmovneq	%rcx, %rdx
	movq	%rdx, 632(%rsp)
	cmovneq	%rax, %rcx
	movq	%rcx, 568(%rsp)
	movq	640(%rsp), %rax
	movq	576(%rsp), %rcx
	cmoveq	%rax, %rcx
	cmoveq	576(%rsp), %rax
	movq	%rcx, 640(%rsp)
	movq	%rax, 576(%rsp)
	movq	656(%rsp), %rax
	movq	504(%rsp), %rcx
	cmoveq	%rax, %rcx
	cmoveq	504(%rsp), %rax
	movq	%rcx, 656(%rsp)
	movq	%rax, 504(%rsp)
	movq	664(%rsp), %rax
	movq	512(%rsp), %rcx
	cmoveq	%rax, %rcx
	cmoveq	512(%rsp), %rax
	movq	%rcx, 664(%rsp)
	movq	%rax, 512(%rsp)
	movq	672(%rsp), %rax
	movq	520(%rsp), %rcx
	cmoveq	%rax, %rcx
	cmoveq	520(%rsp), %rax
	movq	%rcx, 672(%rsp)
	movq	%rax, 520(%rsp)
	movq	680(%rsp), %rax
	movq	528(%rsp), %rcx
	cmoveq	%rax, %rcx
	cmoveq	528(%rsp), %rax
	movq	%rcx, 680(%rsp)
	movq	%rax, 528(%rsp)
	movq	688(%rsp), %rax
	movq	536(%rsp), %rcx
	cmoveq	%rax, %rcx
	cmoveq	536(%rsp), %rax
	movq	%rcx, 688(%rsp)
	movq	%rax, 536(%rsp)
	jmp	.LBB1_5
	.p2align	4, 0x90
.LBB1_4:                                # %elsebranch.i
                                        #   in Loop: Header=BB1_2 Depth=2
	testq	%r14, %r14
	movq	608(%rsp), %rax
	movq	616(%rsp), %rcx
	movq	544(%rsp), %rdx
	movq	552(%rsp), %rsi
	movq	%rax, %rdi
	cmovneq	%rdx, %rdi
	movq	%rdi, 608(%rsp)
	cmovneq	%rax, %rdx
	movq	%rdx, 544(%rsp)
	movq	%rcx, %rax
	cmovneq	%rsi, %rax
	movq	%rax, 616(%rsp)
	cmovneq	%rcx, %rsi
	movq	%rsi, 552(%rsp)
	movq	624(%rsp), %rax
	movq	560(%rsp), %rcx
	movq	%rax, %rdx
	cmovneq	%rcx, %rdx
	movq	%rdx, 624(%rsp)
	cmovneq	%rax, %rcx
	movq	%rcx, 560(%rsp)
	movq	632(%rsp), %rax
	movq	568(%rsp), %rcx
	movq	%rax, %rdx
	cmovneq	%rcx, %rdx
	movq	%rdx, 632(%rsp)
	cmovneq	%rax, %rcx
	movq	%rcx, 568(%rsp)
	movq	640(%rsp), %rax
	movq	576(%rsp), %rcx
	cmoveq	%rax, %rcx
	cmoveq	576(%rsp), %rax
	movq	%rcx, 640(%rsp)
	movq	%rax, 576(%rsp)
	movq	656(%rsp), %rax
	movq	504(%rsp), %rcx
	cmoveq	%rax, %rcx
	cmoveq	504(%rsp), %rax
	movq	%rcx, 656(%rsp)
	movq	%rax, 504(%rsp)
	movq	664(%rsp), %rax
	movq	512(%rsp), %rcx
	cmoveq	%rax, %rcx
	cmoveq	512(%rsp), %rax
	movq	%rcx, 664(%rsp)
	movq	%rax, 512(%rsp)
	movq	672(%rsp), %rax
	movq	520(%rsp), %rcx
	cmoveq	%rax, %rcx
	cmoveq	520(%rsp), %rax
	movq	%rcx, 672(%rsp)
	movq	%rax, 520(%rsp)
	movq	680(%rsp), %rax
	movq	528(%rsp), %rcx
	cmoveq	%rax, %rcx
	cmoveq	528(%rsp), %rax
	movq	%rcx, 680(%rsp)
	movq	%rax, 528(%rsp)
	movq	688(%rsp), %rax
	movq	536(%rsp), %rcx
	cmoveq	%rax, %rcx
	cmoveq	536(%rsp), %rax
	movq	%rcx, 688(%rsp)
	movq	%rax, 536(%rsp)
	subq	$8, %rsp
	movq	%r15, %rdi
	movq	%r12, %rsi
	leaq	456(%rsp), %rdx
	leaq	264(%rsp), %rcx
	leaq	616(%rsp), %r8
	leaq	664(%rsp), %r9
	leaq	840(%rsp), %rax
	pushq	%rax
	leaq	520(%rsp), %rax
	pushq	%rax
	leaq	568(%rsp), %rax
	pushq	%rax
	vzeroupper
	callq	fmonty
	addq	$32, %rsp
	testq	%r14, %r14
	movq	320(%rsp), %rax
	movq	328(%rsp), %rcx
	movq	448(%rsp), %rdx
	movq	456(%rsp), %rsi
	movq	%rax, %rdi
	cmovneq	%rdx, %rdi
	movq	%rdi, 320(%rsp)
	cmovneq	%rax, %rdx
	movq	%rdx, 448(%rsp)
	movq	%rcx, %rax
	cmovneq	%rsi, %rax
	movq	%rax, 328(%rsp)
	cmovneq	%rcx, %rsi
	movq	%rsi, 456(%rsp)
	movq	336(%rsp), %rax
	movq	464(%rsp), %rcx
	movq	%rax, %rdx
	cmovneq	%rcx, %rdx
	movq	%rdx, 336(%rsp)
	cmovneq	%rax, %rcx
	movq	%rcx, 464(%rsp)
	movq	344(%rsp), %rax
	movq	472(%rsp), %rcx
	movq	%rax, %rdx
	cmovneq	%rcx, %rdx
	movq	%rdx, 344(%rsp)
	cmovneq	%rax, %rcx
	movq	%rcx, 472(%rsp)
	movq	352(%rsp), %rax
	movq	480(%rsp), %rcx
	cmoveq	%rax, %rcx
	cmoveq	480(%rsp), %rax
	movq	%rcx, 352(%rsp)
	movq	%rax, 480(%rsp)
	movq	384(%rsp), %rax
	movq	256(%rsp), %rcx
	cmoveq	%rax, %rcx
	cmoveq	256(%rsp), %rax
	movq	%rcx, 384(%rsp)
	movq	%rax, 256(%rsp)
	movq	392(%rsp), %rax
	movq	264(%rsp), %rcx
	cmoveq	%rax, %rcx
	cmoveq	264(%rsp), %rax
	movq	%rcx, 392(%rsp)
	movq	%rax, 264(%rsp)
	movq	400(%rsp), %rax
	movq	272(%rsp), %rcx
	cmoveq	%rax, %rcx
	cmoveq	272(%rsp), %rax
	movq	%rcx, 400(%rsp)
	movq	%rax, 272(%rsp)
	movq	408(%rsp), %rax
	movq	280(%rsp), %rcx
	cmoveq	%rax, %rcx
	cmoveq	280(%rsp), %rax
	movq	%rcx, 408(%rsp)
	movq	%rax, 280(%rsp)
	movq	416(%rsp), %rax
	movq	288(%rsp), %rcx
	cmoveq	%rax, %rcx
	cmoveq	288(%rsp), %rax
	movq	%rcx, 416(%rsp)
	movq	%rax, 288(%rsp)
.LBB1_5:                                # %branchmerge.i
                                        #   in Loop: Header=BB1_2 Depth=2
	addb	%r13b, %r13b
	addl	$1, %ebx
	cmpl	$8, %ebx
	jb	.LBB1_2
# %bb.6:                                # %loop_end34.i
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	56(%rsp), %eax          # 4-byte Reload
	addl	$1, %eax
	cmpl	$32, %eax
	jb	.LBB1_1
# %bb.7:                                # %cmult.exit
	movq	320(%rsp), %rax
	movq	%rax, 896(%rsp)
	movq	384(%rsp), %rax
	movq	%rax, 704(%rsp)
	vmovups	392(%rsp), %ymm0
	vmovups	%ymm0, 712(%rsp)
	movq	704(%rsp), %rdi
	movq	712(%rsp), %r15
	movq	720(%rsp), %r14
	imulq	$38, %r14, %rcx
	movq	736(%rsp), %rax
	leaq	(%rax,%rax,4), %r9
	imulq	$38, %rax, %rsi
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	%rdi, %rdx
	mulxq	%rdi, %r13, %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%r15, %rdx
	mulxq	%rsi, %r8, %r10
	movq	%rsi, %rbx
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	shlq	$2, %r9
	movq	728(%rsp), %r11
	movq	%rcx, %rdx
	mulxq	%r11, %r12, %rcx
	subq	%rax, %r9
	addq	%r8, %r12
	adcq	%r10, %rcx
	leaq	(%rdi,%rdi), %rdi
	addq	%r13, %r12
	adcq	24(%rsp), %rcx          # 8-byte Folded Reload
	movq	%rdi, %rdx
	mulxq	%r15, %r13, %rsi
	movq	%r14, %rdx
	mulxq	%rbx, %r10, %r8
	leaq	(%r11,%r11,4), %rdx
	shlq	$2, %rdx
	subq	%r11, %rdx
	mulxq	%r11, %rbx, %rax
	shldq	$13, %r12, %rcx
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %r12
	addq	%r10, %rbx
	adcq	%r8, %rax
	addq	%r13, %rbx
	adcq	%rsi, %rax
	movq	%rdi, %rdx
	movq	%rdi, %rsi
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	mulxq	%r14, %rdi, %rdx
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%r15, %rdx
	mulxq	%r15, %r13, %r8
	movq	40(%rsp), %rdx          # 8-byte Reload
	mulxq	%r11, %rdi, %r10
	addq	%rcx, %rbx
	adcq	$0, %rax
	shldq	$13, %rbx, %rax
	movabsq	$2251799813685247, %rcx # imm = 0x7FFFFFFFFFFFF
	andq	%rcx, %rbx
	addq	%r13, %rdi
	adcq	%r8, %r10
	addq	32(%rsp), %rdi          # 8-byte Folded Reload
	adcq	24(%rsp), %r10          # 8-byte Folded Reload
	leaq	(%r15,%r15), %rcx
	movq	%rsi, %rdx
	mulxq	%r11, %rsi, %rdx
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	addq	%rax, %rdi
	movq	%rcx, %rdx
	mulxq	%r14, %rax, %r15
	movq	%r9, %rdx
	movq	56(%rsp), %r13          # 8-byte Reload
	mulxq	%r13, %r9, %r8
	adcq	$0, %r10
	shldq	$13, %rdi, %r10
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %rdi
	addq	%rax, %r9
	adcq	%r15, %r8
	addq	24(%rsp), %r9           # 8-byte Folded Reload
	movq	48(%rsp), %rdx          # 8-byte Reload
	mulxq	%r13, %rax, %r15
	movq	%rcx, %rdx
	mulxq	%r11, %rsi, %rcx
	adcq	40(%rsp), %r8           # 8-byte Folded Reload
	movq	%r14, %rdx
	mulxq	%r14, %r13, %rdx
	addq	%r10, %r9
	adcq	$0, %r8
	shldq	$13, %r9, %r8
	movabsq	$2251799813685247, %r10 # imm = 0x7FFFFFFFFFFFF
	andq	%r10, %r9
	addq	%rsi, %r13
	adcq	%rcx, %rdx
	addq	%rax, %r13
	adcq	%r15, %rdx
	vmovups	328(%rsp), %ymm0
	vmovups	%ymm0, 904(%rsp)
	addq	%r8, %r13
	adcq	$0, %rdx
	shldq	$13, %r13, %rdx
	leaq	(%rdx,%rdx,4), %rcx
	shlq	$2, %rcx
	subq	%rdx, %rcx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm0, 448(%rsp)
	vmovaps	%ymm0, 256(%rsp)
	vmovaps	%ymm0, 320(%rsp)
	movq	$0, 288(%rsp)
	movq	$0, 352(%rsp)
	vmovaps	%ymm0, 384(%rsp)
	movq	$0, 416(%rsp)
	addq	%r12, %rcx
	movq	%rcx, %rax
	shrq	$51, %rax
	addq	%rbx, %rax
	movq	%r10, %rdx
	andq	%rdx, %rcx
	movq	%rax, %r14
	shrq	$51, %r14
	addq	%rdi, %r14
	andq	%rdx, %rax
	movq	%rcx, 448(%rsp)
	movq	%rax, 456(%rsp)
	movq	%r14, 464(%rsp)
	movq	%r9, 56(%rsp)           # 8-byte Spill
	movq	%r9, 472(%rsp)
	andq	%rdx, %r13
	movq	%r13, 480(%rsp)
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_8:                                # %loop_body.i2091.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	imulq	$38, %r14, %r10
	leaq	(,%r13,4), %rdx
	addq	%r13, %rdx
	shlq	$2, %rdx
	movq	%rdx, %rdi
	imulq	$38, %r13, %rbx
	movq	%rcx, %rdx
	mulxq	%rcx, %r9, %r11
	movq	%rax, %rdx
	mulxq	%rbx, %r15, %r12
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movq	%r10, %rdx
	movq	56(%rsp), %r8           # 8-byte Reload
	mulxq	%r8, %r10, %rsi
	subq	%r13, %rdi
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	addq	%r15, %r10
	adcq	%r12, %rsi
	leaq	(%rcx,%rcx), %r12
	addq	%r9, %r10
	adcq	%r11, %rsi
	movq	%r12, %rdx
	mulxq	%rax, %r9, %r15
	movq	%r14, %rdx
	mulxq	%rbx, %rbx, %r11
	leaq	(%r8,%r8,4), %rdx
	shlq	$2, %rdx
	subq	%r8, %rdx
	mulxq	%r8, %rdi, %rcx
	shldq	$13, %r10, %rsi
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %r10
	addq	%rbx, %rdi
	adcq	%r11, %rcx
	addq	%r9, %rdi
	adcq	%r15, %rcx
	movq	%r12, %rdx
	mulxq	%r14, %rbx, %rdx
	movq	%rbx, 72(%rsp)          # 8-byte Spill
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%rax, %rdx
	mulxq	%rax, %r9, %r15
	movq	32(%rsp), %rdx          # 8-byte Reload
	mulxq	%r8, %rbx, %r11
	addq	%rsi, %rdi
	adcq	$0, %rcx
	shldq	$13, %rdi, %rcx
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %rdi
	addq	%r9, %rbx
	adcq	%r15, %r11
	addq	72(%rsp), %rbx          # 8-byte Folded Reload
	adcq	48(%rsp), %r11          # 8-byte Folded Reload
	leaq	(%rax,%rax), %rax
	movq	%r12, %rdx
	mulxq	%r8, %rsi, %rdx
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	addq	%rcx, %rbx
	movq	%rax, %rdx
	mulxq	%r14, %r9, %r15
	movq	24(%rsp), %rdx          # 8-byte Reload
	mulxq	%r13, %rcx, %rsi
	adcq	$0, %r11
	shldq	$13, %rbx, %r11
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %rbx
	addq	%r9, %rcx
	adcq	%r15, %rsi
	addq	48(%rsp), %rcx          # 8-byte Folded Reload
	movq	%r12, %rdx
	mulxq	%r13, %r9, %r15
	movq	%rax, %rdx
	mulxq	%r8, %rax, %r8
	adcq	32(%rsp), %rsi          # 8-byte Folded Reload
	movq	%r14, %rdx
	mulxq	%r14, %r13, %rdx
	addq	%r11, %rcx
	adcq	$0, %rsi
	shldq	$13, %rcx, %rsi
	movabsq	$2251799813685247, %r11 # imm = 0x7FFFFFFFFFFFF
	andq	%r11, %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	addq	%rax, %r13
	adcq	%r8, %rdx
	addq	%r9, %r13
	adcq	%r15, %rdx
	movq	%r11, %r8
	addq	%rsi, %r13
	adcq	$0, %rdx
	shldq	$13, %r13, %rdx
	leaq	(%rdx,%rdx,4), %rcx
	shlq	$2, %rcx
	subq	%rdx, %rcx
	movq	40(%rsp), %rdx          # 8-byte Reload
	addq	%r10, %rcx
	movq	%rcx, %rax
	shrq	$51, %rax
	addq	%rdi, %rax
	movq	%rax, %r14
	shrq	$51, %r14
	addq	%rbx, %r14
	andq	%r8, %r13
	andq	%r8, %rcx
	andq	%r8, %rax
	addq	$1, %rdx
	cmpq	$2, %rdx
	jb	.LBB1_8
# %bb.9:                                # %fsquare_times.exit2096.i
	movq	%rcx, 256(%rsp)
	movq	%rax, 264(%rsp)
	movq	704(%rsp), %rdi
	movq	712(%rsp), %rbx
	movq	%rcx, %rdx
	mulxq	%rdi, %rsi, %rdx
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movq	%rax, %rdx
	mulxq	%rdi, %rsi, %rdx
	movq	%rsi, 104(%rsp)         # 8-byte Spill
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	movq	%rcx, %rdx
	mulxq	%rbx, %rdx, %r15
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	movq	%r14, %rdx
	mulxq	%rdi, %rsi, %rdx
	movq	%rsi, 144(%rsp)         # 8-byte Spill
	movq	%rdx, 152(%rsp)         # 8-byte Spill
	movq	720(%rsp), %r10
	movq	%rcx, %rdx
	mulxq	%r10, %rsi, %rdx
	movq	%rsi, 128(%rsp)         # 8-byte Spill
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	movq	%rax, %rdx
	mulxq	%rbx, %rdx, %r9
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	movq	56(%rsp), %r8           # 8-byte Reload
	movq	%r8, %rdx
	mulxq	%rdi, %rsi, %rdx
	movq	%rsi, 232(%rsp)         # 8-byte Spill
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movq	728(%rsp), %r12
	movq	%rcx, %rdx
	mulxq	%r12, %rsi, %rdx
	movq	%rsi, 176(%rsp)         # 8-byte Spill
	movq	%rdx, 192(%rsp)         # 8-byte Spill
	movq	%r14, %rdx
	mulxq	%rbx, %rsi, %rdx
	movq	%rsi, 184(%rsp)         # 8-byte Spill
	movq	%rdx, 208(%rsp)         # 8-byte Spill
	movq	%rax, %rdx
	mulxq	%r10, %rdx, %r11
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%r13, %rdx
	mulxq	%rdi, %rdi, %rdx
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	736(%rsp), %rdi
	leaq	(%rdi,%rdi,4), %rdx
	shlq	$2, %rdx
	subq	%rdi, %rdx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rcx, %rdx
	mulxq	%rdi, %rdx, %rcx
	movq	%rdx, 200(%rsp)         # 8-byte Spill
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	movq	%rax, %rdx
	mulxq	%r12, %rdx, %rcx
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	%r8, %rdx
	mulxq	%rbx, %rsi, %rdx
	movq	%rsi, 224(%rsp)         # 8-byte Spill
	movq	%rdx, 240(%rsp)         # 8-byte Spill
	leaq	(%rbx,%rbx,4), %rdi
	shlq	$2, %rdi
	subq	%rbx, %rdi
	leaq	(%r10,%r10,4), %r8
	shlq	$2, %r8
	subq	%r10, %r8
	movq	%r14, %rdx
	mulxq	%r10, %rsi, %rdx
	movq	%rsi, 160(%rsp)         # 8-byte Spill
	movq	%rdx, 168(%rsp)         # 8-byte Spill
	leaq	(%r12,%r12,4), %r10
	shlq	$2, %r10
	subq	%r12, %r10
	movq	%rax, %rdx
	mulxq	32(%rsp), %rax, %rbx    # 8-byte Folded Reload
	addq	64(%rsp), %rax          # 8-byte Folded Reload
	adcq	80(%rsp), %rbx          # 8-byte Folded Reload
	movq	%r13, %rdx
	mulxq	%rdi, %rsi, %rdx
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movq	56(%rsp), %rdx          # 8-byte Reload
	mulxq	%r8, %rsi, %r12
	movq	%r14, %rdx
	mulxq	%r10, %rdi, %rdx
	addq	%rdi, %rax
	adcq	%rdx, %rbx
	addq	%rsi, %rax
	adcq	%r12, %rbx
	addq	64(%rsp), %rax          # 8-byte Folded Reload
	adcq	80(%rsp), %rbx          # 8-byte Folded Reload
	shldq	$13, %rax, %rbx
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %rax
	movq	96(%rsp), %rdi          # 8-byte Reload
	addq	104(%rsp), %rdi         # 8-byte Folded Reload
	adcq	112(%rsp), %r15         # 8-byte Folded Reload
	movq	%r14, 272(%rsp)
	movq	%r14, %rdx
	movq	32(%rsp), %r12          # 8-byte Reload
	mulxq	%r12, %rsi, %rdx
	addq	%rsi, %rdi
	adcq	%rdx, %r15
	movq	%r13, %rdx
	mulxq	%r8, %r14, %r8
	movq	56(%rsp), %rdx          # 8-byte Reload
	mulxq	%r10, %rsi, %rdx
	addq	%rsi, %rdi
	adcq	%rdx, %r15
	addq	%r14, %rdi
	adcq	%r8, %r15
	addq	%rbx, %rdi
	adcq	$0, %r15
	shldq	$13, %rdi, %r15
	movabsq	$2251799813685247, %rbx # imm = 0x7FFFFFFFFFFFF
	andq	%rbx, %rdi
	movq	%rdi, %r14
	movq	120(%rsp), %rdi         # 8-byte Reload
	addq	128(%rsp), %rdi         # 8-byte Folded Reload
	adcq	136(%rsp), %r9          # 8-byte Folded Reload
	addq	144(%rsp), %rdi         # 8-byte Folded Reload
	adcq	152(%rsp), %r9          # 8-byte Folded Reload
	movq	56(%rsp), %rdx          # 8-byte Reload
	movq	%rdx, 280(%rsp)
	mulxq	%r12, %rsi, %rdx
	addq	%rsi, %rdi
	adcq	%rdx, %r9
	movq	%r13, %rdx
	mulxq	%r10, %rsi, %rdx
	addq	%rsi, %rdi
	adcq	%rdx, %r9
	addq	%r15, %rdi
	adcq	$0, %r9
	shldq	$13, %rdi, %r9
	andq	%rbx, %rdi
	movq	%rdi, %r8
	movq	24(%rsp), %r15          # 8-byte Reload
	addq	176(%rsp), %r15         # 8-byte Folded Reload
	adcq	192(%rsp), %r11         # 8-byte Folded Reload
	addq	184(%rsp), %r15         # 8-byte Folded Reload
	adcq	208(%rsp), %r11         # 8-byte Folded Reload
	addq	232(%rsp), %r15         # 8-byte Folded Reload
	adcq	88(%rsp), %r11          # 8-byte Folded Reload
	movq	%r13, 288(%rsp)
	movq	%r13, %rdx
	mulxq	%r12, %rsi, %rdx
	addq	%rsi, %r15
	adcq	%rdx, %r11
	addq	%r9, %r15
	adcq	$0, %r11
	shldq	$13, %r15, %r11
	andq	%rbx, %r15
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movq	40(%rsp), %rdx          # 8-byte Reload
	addq	200(%rsp), %rdx         # 8-byte Folded Reload
	adcq	216(%rsp), %rcx         # 8-byte Folded Reload
	addq	160(%rsp), %rdx         # 8-byte Folded Reload
	adcq	168(%rsp), %rcx         # 8-byte Folded Reload
	addq	224(%rsp), %rdx         # 8-byte Folded Reload
	adcq	240(%rsp), %rcx         # 8-byte Folded Reload
	addq	72(%rsp), %rdx          # 8-byte Folded Reload
	adcq	48(%rsp), %rcx          # 8-byte Folded Reload
	addq	%r11, %rdx
	adcq	$0, %rcx
	shldq	$13, %rdx, %rcx
	movq	%rdx, %r9
	leaq	(%rcx,%rcx,4), %rdi
	shlq	$2, %rdi
	subq	%rcx, %rdi
	addq	%rax, %rdi
	movq	%rdi, %rsi
	shrq	$51, %rsi
	addq	%r14, %rsi
	movq	%rbx, %rax
	andq	%rax, %rdi
	movq	%rsi, %r11
	shrq	$51, %r11
	andq	%rax, %rsi
	movq	%rax, %r12
	movq	%rdi, 320(%rsp)
	movq	%rsi, 328(%rsp)
	movq	448(%rsp), %rax
	movq	456(%rsp), %rbx
	movq	%rdi, %rdx
	mulxq	%rax, %rdx, %rcx
	movq	%rdx, 248(%rsp)         # 8-byte Spill
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%rax, %rdx, %rcx
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movq	%rdi, %rdx
	mulxq	%rbx, %rcx, %r14
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	addq	%r8, %r11
	movq	%r11, %rdx
	mulxq	%rax, %rcx, %rdx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	movq	464(%rsp), %r10
	movq	%rdi, %rdx
	mulxq	%r10, %rdx, %rcx
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%rbx, %rcx, %r13
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	andq	%r12, %r9
	movq	%r9, %r8
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movq	%r15, %rdx
	mulxq	%rax, %rcx, %rdx
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movq	472(%rsp), %r9
	movq	%rdi, %rdx
	mulxq	%r9, %rcx, %rdx
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	movq	%rdx, 192(%rsp)         # 8-byte Spill
	movq	%r11, %rdx
	mulxq	%rbx, %rcx, %rdx
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	movq	%rdx, 208(%rsp)         # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%r10, %rcx, %r12
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	movq	%r8, %rdx
	mulxq	%rax, %rdx, %rax
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	480(%rsp), %rax
	leaq	(%rax,%rax,4), %rcx
	shlq	$2, %rcx
	subq	%rax, %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%rdi, %rdx
	mulxq	%rax, %rdx, %rax
	movq	%rdx, 200(%rsp)         # 8-byte Spill
	movq	%rax, 216(%rsp)         # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%r9, %rax, %rdi
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	%r15, %rdx
	mulxq	%rbx, %rdx, %rax
	movq	%rdx, 224(%rsp)         # 8-byte Spill
	movq	%rax, 240(%rsp)         # 8-byte Spill
	leaq	(%rbx,%rbx,4), %rax
	shlq	$2, %rax
	subq	%rbx, %rax
	leaq	(%r10,%r10,4), %r8
	shlq	$2, %r8
	subq	%r10, %r8
	movq	%r11, %rdx
	mulxq	%r10, %rdx, %rcx
	movq	%rdx, 160(%rsp)         # 8-byte Spill
	movq	%rcx, 168(%rsp)         # 8-byte Spill
	leaq	(%r9,%r9,4), %r15
	shlq	$2, %r15
	subq	%r9, %r15
	movq	%rsi, %rdx
	movq	32(%rsp), %r9           # 8-byte Reload
	mulxq	%r9, %rsi, %r10
	addq	248(%rsp), %rsi         # 8-byte Folded Reload
	adcq	64(%rsp), %r10          # 8-byte Folded Reload
	movq	40(%rsp), %rdx          # 8-byte Reload
	mulxq	%rax, %rcx, %rax
	movq	%rcx, 248(%rsp)         # 8-byte Spill
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	24(%rsp), %rdx          # 8-byte Reload
	mulxq	%r8, %rax, %rbx
	movq	%r11, %rdx
	mulxq	%r15, %rcx, %rdx
	addq	%rcx, %rsi
	adcq	%rdx, %r10
	addq	%rax, %rsi
	adcq	%rbx, %r10
	addq	248(%rsp), %rsi         # 8-byte Folded Reload
	adcq	64(%rsp), %r10          # 8-byte Folded Reload
	shldq	$13, %rsi, %r10
	movabsq	$2251799813685247, %rax # imm = 0x7FFFFFFFFFFFF
	andq	%rax, %rsi
	movq	80(%rsp), %rax          # 8-byte Reload
	addq	96(%rsp), %rax          # 8-byte Folded Reload
	adcq	104(%rsp), %r14         # 8-byte Folded Reload
	movq	%r11, 336(%rsp)
	movq	%r11, %rdx
	mulxq	%r9, %rcx, %rdx
	addq	%rcx, %rax
	adcq	%rdx, %r14
	movq	40(%rsp), %r11          # 8-byte Reload
	movq	%r11, %rdx
	mulxq	%r8, %r8, %r9
	movq	24(%rsp), %rdx          # 8-byte Reload
	mulxq	%r15, %rbx, %rcx
	addq	%rbx, %rax
	adcq	%rcx, %r14
	addq	%r8, %rax
	adcq	%r9, %r14
	addq	%r10, %rax
	adcq	$0, %r14
	shldq	$13, %rax, %r14
	movabsq	$2251799813685247, %r10 # imm = 0x7FFFFFFFFFFFF
	andq	%r10, %rax
	movq	%rax, %r8
	movq	112(%rsp), %rbx         # 8-byte Reload
	addq	120(%rsp), %rbx         # 8-byte Folded Reload
	adcq	128(%rsp), %r13         # 8-byte Folded Reload
	addq	136(%rsp), %rbx         # 8-byte Folded Reload
	adcq	144(%rsp), %r13         # 8-byte Folded Reload
	movq	32(%rsp), %r9           # 8-byte Reload
	mulxq	%r9, %rcx, %rax
	addq	%rcx, %rbx
	adcq	%rax, %r13
	movq	%r11, %rdx
	mulxq	%r15, %rcx, %rax
	addq	%rcx, %rbx
	adcq	%rax, %r13
	addq	%r14, %rbx
	adcq	$0, %r13
	shldq	$13, %rbx, %r13
	andq	%r10, %rbx
	movq	%rbx, %r11
	movq	152(%rsp), %rbx         # 8-byte Reload
	addq	176(%rsp), %rbx         # 8-byte Folded Reload
	adcq	192(%rsp), %r12         # 8-byte Folded Reload
	addq	184(%rsp), %rbx         # 8-byte Folded Reload
	adcq	208(%rsp), %r12         # 8-byte Folded Reload
	addq	232(%rsp), %rbx         # 8-byte Folded Reload
	adcq	88(%rsp), %r12          # 8-byte Folded Reload
	mulxq	%r9, %rcx, %rax
	addq	%rcx, %rbx
	adcq	%rax, %r12
	addq	%r13, %rbx
	adcq	$0, %r12
	shldq	$13, %rbx, %r12
	movq	%r10, %rcx
	andq	%rcx, %rbx
	movq	%rbx, %r9
	movq	56(%rsp), %rax          # 8-byte Reload
	addq	200(%rsp), %rax         # 8-byte Folded Reload
	adcq	216(%rsp), %rdi         # 8-byte Folded Reload
	addq	160(%rsp), %rax         # 8-byte Folded Reload
	adcq	168(%rsp), %rdi         # 8-byte Folded Reload
	addq	224(%rsp), %rax         # 8-byte Folded Reload
	adcq	240(%rsp), %rdi         # 8-byte Folded Reload
	addq	72(%rsp), %rax          # 8-byte Folded Reload
	adcq	48(%rsp), %rdi          # 8-byte Folded Reload
	addq	%r12, %rax
	adcq	$0, %rdi
	shldq	$13, %rax, %rdi
	andq	%rcx, %rax
	movq	%rax, %rdx
	leaq	(%rdi,%rdi,4), %rbx
	shlq	$2, %rbx
	subq	%rdi, %rbx
	addq	%rsi, %rbx
	movq	%rbx, %rax
	shrq	$51, %rax
	addq	%r8, %rax
	andq	%rcx, %rbx
	movq	%rax, %r10
	shrq	$51, %r10
	addq	%r11, %r10
	andq	%rcx, %rax
	leaq	(%rdx,%rdx,4), %r14
	imulq	$38, %rdx, %rdi
	movq	%rdx, %rsi
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movq	%rbx, %rdx
	mulxq	%rbx, %r13, %r15
	movq	%rax, %rdx
	mulxq	%rdi, %r12, %r11
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	shlq	$2, %r14
	imulq	$38, %r10, %rdx
	mulxq	%r9, %r8, %rcx
	subq	%rsi, %r14
	addq	%r12, %r8
	adcq	%r11, %rcx
	movq	%rbx, 448(%rsp)
	leaq	(%rbx,%rbx), %r11
	addq	%r13, %r8
	adcq	%r15, %rcx
	movq	%r11, %rdx
	mulxq	%rax, %r13, %rdx
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%r10, %rdx
	mulxq	%rdi, %rsi, %r15
	leaq	(%r9,%r9,4), %rdx
	shlq	$2, %rdx
	subq	%r9, %rdx
	mulxq	%r9, %rbx, %rdi
	movq	%r9, %r12
	shldq	$13, %r8, %rcx
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %r8
	addq	%rsi, %rbx
	adcq	%r15, %rdi
	addq	%r13, %rbx
	adcq	48(%rsp), %rdi          # 8-byte Folded Reload
	addq	%rcx, %rbx
	movq	%r11, 72(%rsp)          # 8-byte Spill
	movq	%r11, %rdx
	mulxq	%r10, %r13, %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rax, %rdx
	mulxq	%rax, %r15, %rcx
	movq	32(%rsp), %rdx          # 8-byte Reload
	mulxq	%r12, %rsi, %r9
	adcq	$0, %rdi
	shldq	$13, %rbx, %rdi
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %rbx
	addq	%r15, %rsi
	adcq	%rcx, %r9
	addq	%r13, %rsi
	adcq	48(%rsp), %r9           # 8-byte Folded Reload
	movq	%rax, 456(%rsp)
	leaq	(%rax,%rax), %rcx
	movq	%r11, %rdx
	mulxq	%r12, %rdx, %rax
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%rcx, %rdx
	mulxq	%r10, %r11, %r15
	movq	%r14, %rdx
	movq	56(%rsp), %r14          # 8-byte Reload
	mulxq	%r14, %r13, %rax
	addq	%rdi, %rsi
	adcq	$0, %r9
	shldq	$13, %rsi, %r9
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %rsi
	addq	%r11, %r13
	adcq	%r15, %rax
	addq	48(%rsp), %r13          # 8-byte Folded Reload
	adcq	32(%rsp), %rax          # 8-byte Folded Reload
	movq	24(%rsp), %r15          # 8-byte Reload
	movq	%r15, 344(%rsp)
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	%rdx, 352(%rsp)
	movq	%r10, 464(%rsp)
	movq	%r12, 472(%rsp)
	movq	%r14, %rdi
	movq	%rdi, 480(%rsp)
	movq	72(%rsp), %rdx          # 8-byte Reload
	mulxq	%rdi, %r14, %r11
	movq	%rcx, %rdx
	mulxq	%r12, %rdi, %r12
	movq	%r10, %rdx
	mulxq	%r10, %rcx, %rdx
	addq	%r9, %r13
	adcq	$0, %rax
	shldq	$13, %r13, %rax
	movabsq	$2251799813685247, %r9  # imm = 0x7FFFFFFFFFFFF
	andq	%r9, %r13
	addq	%rdi, %rcx
	adcq	%r12, %rdx
	addq	%r14, %rcx
	adcq	%r11, %rdx
	addq	%rax, %rcx
	adcq	$0, %rdx
	shldq	$13, %rcx, %rdx
	movq	%rcx, %r14
	leaq	(%rdx,%rdx,4), %rcx
	shlq	$2, %rcx
	subq	%rdx, %rcx
	addq	%r8, %rcx
	movq	%rcx, %rdi
	shrq	$51, %rdi
	addq	%rbx, %rdi
	movq	%r9, %rax
	andq	%rax, %rcx
	movq	%rdi, %r10
	shrq	$51, %r10
	addq	%rsi, %r10
	andq	%rax, %rdi
	movq	%rax, %r8
	movq	%rcx, 256(%rsp)
	movq	%rdi, 264(%rsp)
	movq	320(%rsp), %rsi
	movq	328(%rsp), %rax
	movq	%rcx, %rdx
	mulxq	%rsi, %rbx, %rdx
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movq	%rdi, %rdx
	mulxq	%rsi, %rbx, %rdx
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	movq	%rcx, %rdx
	mulxq	%rax, %rdx, %r11
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	%r10, %rdx
	mulxq	%rsi, %rbx, %rdx
	movq	%rbx, 136(%rsp)         # 8-byte Spill
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	andq	%r8, %r14
	movq	%r14, %r9
	movq	%r9, 48(%rsp)           # 8-byte Spill
	movq	336(%rsp), %r14
	movq	%rcx, %rdx
	mulxq	%r14, %rbx, %rdx
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	movq	%rdi, %rdx
	mulxq	%rax, %rdx, %r12
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	movq	%r13, %rdx
	mulxq	%rsi, %rbx, %rdx
	movq	%rbx, 224(%rsp)         # 8-byte Spill
	movq	%rdx, 240(%rsp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	%r15, %r8
	mulxq	%r8, %rbx, %rdx
	movq	%rbx, 168(%rsp)         # 8-byte Spill
	movq	%rdx, 192(%rsp)         # 8-byte Spill
	movq	%r10, %rdx
	mulxq	%rax, %rbx, %rdx
	movq	%rbx, 184(%rsp)         # 8-byte Spill
	movq	%rdx, 200(%rsp)         # 8-byte Spill
	movq	%rdi, %rdx
	mulxq	%r14, %rbx, %rdx
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movq	%rdx, 152(%rsp)         # 8-byte Spill
	movq	%r9, %rdx
	mulxq	%rsi, %rsi, %rdx
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	40(%rsp), %rsi          # 8-byte Reload
	leaq	(%rsi,%rsi,4), %r9
	shlq	$2, %r9
	subq	%rsi, %r9
	movq	%rcx, %rdx
	mulxq	%rsi, %rdx, %rcx
	movq	%rdx, 208(%rsp)         # 8-byte Spill
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	movq	%rdi, %rdx
	mulxq	%r8, %r15, %rsi
	movq	%r8, %rbx
	movq	%r13, %rdx
	mulxq	%rax, %rdx, %rcx
	movq	%rdx, 232(%rsp)         # 8-byte Spill
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	leaq	(%rax,%rax,4), %rcx
	shlq	$2, %rcx
	subq	%rax, %rcx
	leaq	(%r14,%r14,4), %r8
	shlq	$2, %r8
	subq	%r14, %r8
	movq	%r10, %rdx
	mulxq	%r14, %rdx, %rax
	movq	%rdx, 160(%rsp)         # 8-byte Spill
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movq	%rbx, %rdx
	leaq	(%rdx,%rdx,4), %rax
	shlq	$2, %rax
	subq	%rdx, %rax
	movq	%rdi, %rdx
	mulxq	%r9, %rdi, %r14
	addq	64(%rsp), %rdi          # 8-byte Folded Reload
	adcq	80(%rsp), %r14          # 8-byte Folded Reload
	movq	48(%rsp), %rdx          # 8-byte Reload
	mulxq	%rcx, %rdx, %rcx
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%r13, %rdx
	mulxq	%r8, %rbx, %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%r10, %rdx
	mulxq	%rax, %rcx, %rdx
	addq	%rcx, %rdi
	adcq	%rdx, %r14
	addq	%rbx, %rdi
	adcq	64(%rsp), %r14          # 8-byte Folded Reload
	addq	80(%rsp), %rdi          # 8-byte Folded Reload
	adcq	24(%rsp), %r14          # 8-byte Folded Reload
	shldq	$13, %rdi, %r14
	movabsq	$2251799813685247, %rcx # imm = 0x7FFFFFFFFFFFF
	andq	%rcx, %rdi
	movq	56(%rsp), %rbx          # 8-byte Reload
	addq	96(%rsp), %rbx          # 8-byte Folded Reload
	adcq	104(%rsp), %r11         # 8-byte Folded Reload
	movq	%r10, 272(%rsp)
	movq	%r10, %rdx
	mulxq	%r9, %rdx, %rcx
	addq	%rdx, %rbx
	adcq	%rcx, %r11
	movq	48(%rsp), %r10          # 8-byte Reload
	movq	%r10, %rdx
	mulxq	%r8, %r8, %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	%r13, %rdx
	mulxq	%rax, %rcx, %rdx
	addq	%rcx, %rbx
	adcq	%rdx, %r11
	addq	%r8, %rbx
	adcq	56(%rsp), %r11          # 8-byte Folded Reload
	addq	%r14, %rbx
	adcq	$0, %r11
	shldq	$13, %rbx, %r11
	movabsq	$2251799813685247, %r8  # imm = 0x7FFFFFFFFFFFF
	andq	%r8, %rbx
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movq	112(%rsp), %rbx         # 8-byte Reload
	addq	120(%rsp), %rbx         # 8-byte Folded Reload
	adcq	128(%rsp), %r12         # 8-byte Folded Reload
	addq	136(%rsp), %rbx         # 8-byte Folded Reload
	adcq	144(%rsp), %r12         # 8-byte Folded Reload
	movq	%r13, 280(%rsp)
	movq	%r13, %rdx
	movq	%r9, %r13
	mulxq	%r13, %rdx, %rcx
	addq	%rdx, %rbx
	adcq	%rcx, %r12
	movq	%r10, %rdx
	movq	%r10, %r14
	mulxq	%rax, %rcx, %rax
	addq	%rcx, %rbx
	adcq	%rax, %r12
	addq	%r11, %rbx
	adcq	$0, %r12
	shldq	$13, %rbx, %r12
	andq	%r8, %rbx
	movq	%rbx, %r10
	movq	32(%rsp), %r9           # 8-byte Reload
	addq	168(%rsp), %r9          # 8-byte Folded Reload
	movq	152(%rsp), %rbx         # 8-byte Reload
	adcq	192(%rsp), %rbx         # 8-byte Folded Reload
	addq	184(%rsp), %r9          # 8-byte Folded Reload
	adcq	200(%rsp), %rbx         # 8-byte Folded Reload
	addq	224(%rsp), %r9          # 8-byte Folded Reload
	adcq	240(%rsp), %rbx         # 8-byte Folded Reload
	movq	%r14, %rdx
	movq	%rdx, 288(%rsp)
	mulxq	%r13, %rcx, %rdx
	addq	%rcx, %r9
	adcq	%rdx, %rbx
	addq	%r12, %r9
	adcq	$0, %rbx
	shldq	$13, %r9, %rbx
	andq	%r8, %r9
	addq	208(%rsp), %r15         # 8-byte Folded Reload
	adcq	216(%rsp), %rsi         # 8-byte Folded Reload
	addq	160(%rsp), %r15         # 8-byte Folded Reload
	adcq	176(%rsp), %rsi         # 8-byte Folded Reload
	addq	232(%rsp), %r15         # 8-byte Folded Reload
	adcq	40(%rsp), %rsi          # 8-byte Folded Reload
	addq	88(%rsp), %r15          # 8-byte Folded Reload
	adcq	72(%rsp), %rsi          # 8-byte Folded Reload
	addq	%rbx, %r15
	adcq	$0, %rsi
	shldq	$13, %r15, %rsi
	leaq	(%rsi,%rsi,4), %rax
	shlq	$2, %rax
	subq	%rsi, %rax
	addq	%rdi, %rax
	movq	%rax, %rsi
	shrq	$51, %rsi
	addq	56(%rsp), %rsi          # 8-byte Folded Reload
	andq	%r8, %rax
	movq	%rsi, %r13
	shrq	$51, %r13
	addq	%r10, %r13
	andq	%r8, %rsi
	movq	%rax, 320(%rsp)
	movq	%rsi, 328(%rsp)
	movq	%r13, 336(%rsp)
	movq	%r9, 344(%rsp)
	andq	%r8, %r15
	movq	%r15, 352(%rsp)
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_10:                               # %loop_body.i1573.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	imulq	$38, %r13, %r10
	leaq	(%r15,%r15,4), %r14
	shlq	$2, %r14
	imulq	$38, %r15, %rcx
	movq	%rax, %rdx
	mulxq	%rax, %r11, %r8
	movq	%rsi, %rdx
	mulxq	%rcx, %rdi, %r12
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%r10, %rdx
	mulxq	%r9, %r10, %rbx
	subq	%r15, %r14
	addq	%rdi, %r10
	adcq	%r12, %rbx
	leaq	(%rax,%rax), %rdi
	addq	%r11, %r10
	adcq	%r8, %rbx
	movq	%rdi, %rdx
	mulxq	%rsi, %rax, %r12
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	%r13, %rdx
	mulxq	%rcx, %r8, %r11
	leaq	(%r9,%r9,4), %rdx
	shlq	$2, %rdx
	subq	%r9, %rdx
	mulxq	%r9, %rcx, %rax
	shldq	$13, %r10, %rbx
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %r10
	addq	%r8, %rcx
	adcq	%r11, %rax
	addq	24(%rsp), %rcx          # 8-byte Folded Reload
	adcq	%r12, %rax
	movq	%rdi, %rdx
	movq	%rdi, %r8
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movq	%r9, %r12
	mulxq	%r13, %rdi, %rdx
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%rsi, %r9, %rdx
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	40(%rsp), %rdx          # 8-byte Reload
	mulxq	%r12, %rdi, %r11
	addq	%rbx, %rcx
	adcq	$0, %rax
	shldq	$13, %rcx, %rax
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %rcx
	addq	%r9, %rdi
	adcq	72(%rsp), %r11          # 8-byte Folded Reload
	addq	48(%rsp), %rdi          # 8-byte Folded Reload
	adcq	24(%rsp), %r11          # 8-byte Folded Reload
	leaq	(%rsi,%rsi), %rsi
	movq	%r8, %rdx
	mulxq	%r12, %rbx, %rdx
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	addq	%rax, %rdi
	movq	%rsi, %rdx
	mulxq	%r13, %r8, %r9
	movq	%r14, %rdx
	mulxq	%r15, %rax, %rbx
	adcq	$0, %r11
	shldq	$13, %rdi, %r11
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %rdi
	addq	%r8, %rax
	adcq	%r9, %rbx
	addq	40(%rsp), %rax          # 8-byte Folded Reload
	movq	32(%rsp), %rdx          # 8-byte Reload
	mulxq	%r15, %r8, %rdx
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%r12, %rsi, %r14
	adcq	24(%rsp), %rbx          # 8-byte Folded Reload
	movq	%r13, %rdx
	mulxq	%r13, %r15, %rdx
	addq	%r11, %rax
	adcq	$0, %rbx
	shldq	$13, %rax, %rbx
	movq	%rax, %r9
	movabsq	$2251799813685247, %r11 # imm = 0x7FFFFFFFFFFFF
	andq	%r11, %r9
	addq	%rsi, %r15
	adcq	%r14, %rdx
	addq	%r8, %r15
	adcq	40(%rsp), %rdx          # 8-byte Folded Reload
	addq	%rbx, %r15
	adcq	$0, %rdx
	shldq	$13, %r15, %rdx
	leaq	(%rdx,%rdx,4), %rax
	shlq	$2, %rax
	subq	%rdx, %rax
	addq	%r10, %rax
	movq	%rax, %rsi
	shrq	$51, %rsi
	addq	%rcx, %rsi
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	%rsi, %r13
	shrq	$51, %r13
	addq	%rdi, %r13
	movq	%r11, %rdx
	andq	%rdx, %r15
	andq	%rdx, %rax
	andq	%rdx, %rsi
	addq	$1, %rcx
	cmpq	$5, %rcx
	jb	.LBB1_10
# %bb.11:                               # %fsquare_times.exit1578.i
	movq	%rax, 256(%rsp)
	movq	%rsi, 264(%rsp)
	movq	320(%rsp), %rdi
	movq	328(%rsp), %rcx
	movq	%rax, %rdx
	mulxq	%rdi, %rbx, %rdx
	movq	%rbx, 248(%rsp)         # 8-byte Spill
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%rdi, %rbx, %rdx
	movq	%rbx, 80(%rsp)          # 8-byte Spill
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	movq	%rax, %rdx
	mulxq	%rcx, %rdx, %r14
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	%r13, %rdx
	mulxq	%rdi, %rbx, %rdx
	movq	%rbx, 136(%rsp)         # 8-byte Spill
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	movq	336(%rsp), %r8
	movq	%rax, %rdx
	mulxq	%r8, %rbx, %rdx
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%rcx, %rbx, %rdx
	movq	%rbx, 104(%rsp)         # 8-byte Spill
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	movq	%r9, %rdx
	mulxq	%rdi, %rbx, %rdx
	movq	%rbx, 232(%rsp)         # 8-byte Spill
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movq	344(%rsp), %r11
	movq	%rax, %rdx
	mulxq	%r11, %rbx, %rdx
	movq	%rbx, 176(%rsp)         # 8-byte Spill
	movq	%rdx, 192(%rsp)         # 8-byte Spill
	movq	%r13, %rdx
	mulxq	%rcx, %rbx, %rdx
	movq	%rbx, 184(%rsp)         # 8-byte Spill
	movq	%rdx, 208(%rsp)         # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%r8, %rbx, %rdx
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movq	%rdx, 152(%rsp)         # 8-byte Spill
	movq	%r15, %rdx
	mulxq	%rdi, %rdi, %rdx
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	352(%rsp), %rdi
	leaq	(%rdi,%rdi,4), %rdx
	shlq	$2, %rdx
	subq	%rdi, %rdx
	movq	%rdx, %rbx
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	%rax, %rdx
	mulxq	%rdi, %rdx, %rax
	movq	%rdx, 200(%rsp)         # 8-byte Spill
	movq	%rax, 216(%rsp)         # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%r11, %r12, %rdi
	movq	%r9, %rdx
	movq	%r9, 32(%rsp)           # 8-byte Spill
	mulxq	%rcx, %rdx, %rax
	movq	%rdx, 224(%rsp)         # 8-byte Spill
	movq	%rax, 240(%rsp)         # 8-byte Spill
	leaq	(%rcx,%rcx,4), %rax
	shlq	$2, %rax
	subq	%rcx, %rax
	leaq	(%r8,%r8,4), %r10
	shlq	$2, %r10
	subq	%r8, %r10
	movq	%r13, %rdx
	mulxq	%r8, %rdx, %rcx
	movq	%rdx, 160(%rsp)         # 8-byte Spill
	movq	%rcx, 168(%rsp)         # 8-byte Spill
	leaq	(%r11,%r11,4), %rcx
	shlq	$2, %rcx
	subq	%r11, %rcx
	movq	%rsi, %rdx
	mulxq	%rbx, %rsi, %r11
	addq	248(%rsp), %rsi         # 8-byte Folded Reload
	adcq	64(%rsp), %r11          # 8-byte Folded Reload
	movq	%r15, %rdx
	mulxq	%rax, %rax, %r8
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	%r9, %rdx
	mulxq	%r10, %r9, %rax
	movq	%r13, %rdx
	mulxq	%rcx, %rbx, %rdx
	addq	%rbx, %rsi
	adcq	%rdx, %r11
	addq	%r9, %rsi
	adcq	%rax, %r11
	addq	64(%rsp), %rsi          # 8-byte Folded Reload
	adcq	%r8, %r11
	shldq	$13, %rsi, %r11
	movabsq	$2251799813685247, %r8  # imm = 0x7FFFFFFFFFFFF
	andq	%r8, %rsi
	movq	40(%rsp), %rbx          # 8-byte Reload
	addq	80(%rsp), %rbx          # 8-byte Folded Reload
	adcq	96(%rsp), %r14          # 8-byte Folded Reload
	movq	%r13, 272(%rsp)
	movq	%r13, %rdx
	movq	56(%rsp), %r13          # 8-byte Reload
	mulxq	24(%rsp), %rdx, %rax    # 8-byte Folded Reload
	addq	%rdx, %rbx
	adcq	%rax, %r14
	movq	%r15, %rdx
	mulxq	%r10, %r10, %r9
	movq	32(%rsp), %r8           # 8-byte Reload
	movq	%r8, %rdx
	mulxq	%rcx, %rax, %rdx
	addq	%rax, %rbx
	adcq	%rdx, %r14
	addq	%r10, %rbx
	adcq	%r9, %r14
	addq	%r11, %rbx
	adcq	$0, %r14
	shldq	$13, %rbx, %r14
	movabsq	$2251799813685247, %r9  # imm = 0x7FFFFFFFFFFFF
	andq	%r9, %rbx
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movq	104(%rsp), %rbx         # 8-byte Reload
	addq	120(%rsp), %rbx         # 8-byte Folded Reload
	movq	112(%rsp), %rax         # 8-byte Reload
	adcq	128(%rsp), %rax         # 8-byte Folded Reload
	addq	136(%rsp), %rbx         # 8-byte Folded Reload
	adcq	144(%rsp), %rax         # 8-byte Folded Reload
	movq	%r8, 280(%rsp)
	movq	%r8, %rdx
	movq	24(%rsp), %r11          # 8-byte Reload
	mulxq	%r11, %rdx, %r10
	addq	%rdx, %rbx
	adcq	%r10, %rax
	movq	%r15, %rdx
	mulxq	%rcx, %rcx, %rdx
	addq	%rcx, %rbx
	adcq	%rdx, %rax
	addq	%r14, %rbx
	adcq	$0, %rax
	shldq	$13, %rbx, %rax
	movq	%rax, %r10
	andq	%r9, %rbx
	addq	176(%rsp), %r13         # 8-byte Folded Reload
	movq	152(%rsp), %rax         # 8-byte Reload
	adcq	192(%rsp), %rax         # 8-byte Folded Reload
	addq	184(%rsp), %r13         # 8-byte Folded Reload
	adcq	208(%rsp), %rax         # 8-byte Folded Reload
	addq	232(%rsp), %r13         # 8-byte Folded Reload
	adcq	88(%rsp), %rax          # 8-byte Folded Reload
	movq	%r15, 288(%rsp)
	movq	%r15, %rdx
	mulxq	%r11, %rcx, %rdx
	addq	%rcx, %r13
	adcq	%rdx, %rax
	addq	%r10, %r13
	adcq	$0, %rax
	shldq	$13, %r13, %rax
	andq	%r9, %r13
	addq	200(%rsp), %r12         # 8-byte Folded Reload
	adcq	216(%rsp), %rdi         # 8-byte Folded Reload
	addq	160(%rsp), %r12         # 8-byte Folded Reload
	adcq	168(%rsp), %rdi         # 8-byte Folded Reload
	addq	224(%rsp), %r12         # 8-byte Folded Reload
	adcq	240(%rsp), %rdi         # 8-byte Folded Reload
	addq	72(%rsp), %r12          # 8-byte Folded Reload
	adcq	48(%rsp), %rdi          # 8-byte Folded Reload
	addq	%rax, %r12
	adcq	$0, %rdi
	shldq	$13, %r12, %rdi
	leaq	(%rdi,%rdi,4), %rcx
	shlq	$2, %rcx
	subq	%rdi, %rcx
	addq	%rsi, %rcx
	movq	%rcx, %rsi
	shrq	$51, %rsi
	addq	40(%rsp), %rsi          # 8-byte Folded Reload
	andq	%r9, %rcx
	movq	%rsi, %r15
	shrq	$51, %r15
	addq	%rbx, %r15
	andq	%r9, %rsi
	movq	%rcx, 320(%rsp)
	movq	%rsi, 328(%rsp)
	movq	%r15, 336(%rsp)
	movq	%r13, 56(%rsp)          # 8-byte Spill
	movq	%r13, 344(%rsp)
	andq	%r9, %r12
	movq	%r12, 352(%rsp)
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_12:                               # %loop_body.i1369.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, 40(%rsp)          # 8-byte Spill
	imulq	$38, %r15, %r10
	leaq	(%r12,%r12,4), %r14
	shlq	$2, %r14
	imulq	$38, %r12, %rdi
	movq	%rcx, %rdx
	mulxq	%rcx, %r11, %r8
	movq	%rsi, %rdx
	mulxq	%rdi, %r13, %r9
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movq	%r10, %rdx
	movq	%r12, %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	56(%rsp), %r12          # 8-byte Reload
	mulxq	%r12, %r10, %rbx
	subq	%rax, %r14
	addq	%r13, %r10
	adcq	%r9, %rbx
	leaq	(%rcx,%rcx), %r13
	addq	%r11, %r10
	adcq	%r8, %rbx
	movq	%r13, %rdx
	mulxq	%rsi, %r8, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%r15, %rdx
	mulxq	%rdi, %r9, %r11
	leaq	(%r12,%r12,4), %rdx
	shlq	$2, %rdx
	subq	%r12, %rdx
	mulxq	%r12, %rax, %rcx
	shldq	$13, %r10, %rbx
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %r10
	addq	%r9, %rax
	adcq	%r11, %rcx
	addq	%r8, %rax
	adcq	48(%rsp), %rcx          # 8-byte Folded Reload
	movq	%r13, %rdx
	movq	%r13, %r8
	movq	%r8, 72(%rsp)           # 8-byte Spill
	movq	%r12, %r13
	mulxq	%r15, %rdi, %rdx
	movq	%rdi, 88(%rsp)          # 8-byte Spill
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%rsi, %r9, %r12
	movq	32(%rsp), %rdx          # 8-byte Reload
	mulxq	%r13, %rdi, %r11
	addq	%rbx, %rax
	adcq	$0, %rcx
	shldq	$13, %rax, %rcx
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %rax
	addq	%r9, %rdi
	adcq	%r12, %r11
	addq	88(%rsp), %rdi          # 8-byte Folded Reload
	adcq	48(%rsp), %r11          # 8-byte Folded Reload
	leaq	(%rsi,%rsi), %r12
	movq	%r8, %rdx
	mulxq	%r13, %rsi, %rdx
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	addq	%rcx, %rdi
	movq	%r12, %rdx
	mulxq	%r15, %r8, %r9
	movq	%r14, %rdx
	movq	24(%rsp), %rsi          # 8-byte Reload
	mulxq	%rsi, %rcx, %rbx
	adcq	$0, %r11
	shldq	$13, %rdi, %r11
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %rdi
	addq	%r8, %rcx
	adcq	%r9, %rbx
	addq	48(%rsp), %rcx          # 8-byte Folded Reload
	movq	72(%rsp), %rdx          # 8-byte Reload
	mulxq	%rsi, %r9, %r8
	movq	%r12, %rdx
	mulxq	%r13, %rsi, %r14
	adcq	32(%rsp), %rbx          # 8-byte Folded Reload
	movq	%r15, %rdx
	mulxq	%r15, %r12, %rdx
	addq	%r11, %rcx
	adcq	$0, %rbx
	shldq	$13, %rcx, %rbx
	movabsq	$2251799813685247, %r11 # imm = 0x7FFFFFFFFFFFF
	andq	%r11, %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	addq	%rsi, %r12
	adcq	%r14, %rdx
	addq	%r9, %r12
	adcq	%r8, %rdx
	addq	%rbx, %r12
	adcq	$0, %rdx
	shldq	$13, %r12, %rdx
	leaq	(%rdx,%rdx,4), %rcx
	shlq	$2, %rcx
	subq	%rdx, %rcx
	addq	%r10, %rcx
	movq	%rcx, %rsi
	shrq	$51, %rsi
	addq	%rax, %rsi
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rsi, %r15
	shrq	$51, %r15
	addq	%rdi, %r15
	movq	%r11, %rdx
	andq	%rdx, %r12
	andq	%rdx, %rcx
	andq	%rdx, %rsi
	addq	$1, %rax
	cmpq	$10, %rax
	jb	.LBB1_12
# %bb.13:                               # %fsquare_times.exit1374.i
	movq	%rcx, 256(%rsp)
	movq	%rsi, 264(%rsp)
	movq	320(%rsp), %rdi
	movq	328(%rsp), %rbx
	movq	%rcx, %rdx
	mulxq	%rdi, %rdx, %rax
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%rdi, %rdx, %rax
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	%rcx, %rdx
	mulxq	%rbx, %rax, %r8
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	%r15, %rdx
	mulxq	%rdi, %rdx, %rax
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movq	336(%rsp), %r9
	movq	%rcx, %rdx
	mulxq	%r9, %rdx, %rax
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%rbx, %rax, %r10
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	56(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdx
	mulxq	%rdi, %rax, %rdx
	movq	%rax, 232(%rsp)         # 8-byte Spill
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movq	344(%rsp), %r11
	movq	%rcx, %rdx
	mulxq	%r11, %rdx, %rax
	movq	%rdx, 176(%rsp)         # 8-byte Spill
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movq	%r15, %rdx
	mulxq	%rbx, %rdx, %rax
	movq	%rdx, 184(%rsp)         # 8-byte Spill
	movq	%rax, 208(%rsp)         # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%r9, %rdx, %rax
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movq	%r12, %rdx
	mulxq	%rdi, %rdi, %rdx
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	352(%rsp), %rdi
	leaq	(%rdi,%rdi,4), %rax
	shlq	$2, %rax
	subq	%rdi, %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%rcx, %rdx
	mulxq	%rdi, %rcx, %rax
	movq	%rcx, 200(%rsp)         # 8-byte Spill
	movq	%rax, 216(%rsp)         # 8-byte Spill
	movq	%rsi, %rdx
	movq	%r14, %rax
	mulxq	%r11, %r14, %r13
	movq	%rax, %rdx
	mulxq	%rbx, %rax, %rcx
	movq	%rax, 224(%rsp)         # 8-byte Spill
	movq	%rcx, 240(%rsp)         # 8-byte Spill
	leaq	(%rbx,%rbx,4), %rdi
	shlq	$2, %rdi
	subq	%rbx, %rdi
	leaq	(%r9,%r9,4), %rcx
	shlq	$2, %rcx
	subq	%r9, %rcx
	movq	%r15, %rdx
	mulxq	%r9, %rdx, %rax
	movq	%rdx, 160(%rsp)         # 8-byte Spill
	movq	%rax, 168(%rsp)         # 8-byte Spill
	leaq	(%r11,%r11,4), %rbx
	shlq	$2, %rbx
	subq	%r11, %rbx
	movq	%rsi, %rdx
	mulxq	32(%rsp), %rsi, %r11    # 8-byte Folded Reload
	addq	64(%rsp), %rsi          # 8-byte Folded Reload
	adcq	80(%rsp), %r11          # 8-byte Folded Reload
	movq	%r12, %rdx
	mulxq	%rdi, %rax, %r9
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	56(%rsp), %rdx          # 8-byte Reload
	mulxq	%rcx, %rdi, %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	%r15, %rdx
	mulxq	%rbx, %rax, %rdx
	addq	%rax, %rsi
	adcq	%rdx, %r11
	addq	%rdi, %rsi
	adcq	64(%rsp), %r11          # 8-byte Folded Reload
	addq	80(%rsp), %rsi          # 8-byte Folded Reload
	adcq	%r9, %r11
	shldq	$13, %rsi, %r11
	movabsq	$2251799813685247, %r9  # imm = 0x7FFFFFFFFFFFF
	andq	%r9, %rsi
	movq	24(%rsp), %rax          # 8-byte Reload
	addq	96(%rsp), %rax          # 8-byte Folded Reload
	adcq	104(%rsp), %r8          # 8-byte Folded Reload
	movq	%r15, 272(%rsp)
	movq	%r15, %rdx
	mulxq	32(%rsp), %rdx, %r9     # 8-byte Folded Reload
	addq	%rdx, %rax
	adcq	%r9, %r8
	movq	%r12, %rdx
	mulxq	%rcx, %rcx, %r15
	movq	56(%rsp), %r9           # 8-byte Reload
	movq	%r9, %rdx
	mulxq	%rbx, %rdi, %rdx
	addq	%rdi, %rax
	adcq	%rdx, %r8
	addq	%rcx, %rax
	adcq	%r15, %r8
	addq	%r11, %rax
	adcq	$0, %r8
	shldq	$13, %rax, %r8
	movabsq	$2251799813685247, %r11 # imm = 0x7FFFFFFFFFFFF
	andq	%r11, %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	112(%rsp), %rdi         # 8-byte Reload
	addq	120(%rsp), %rdi         # 8-byte Folded Reload
	adcq	128(%rsp), %r10         # 8-byte Folded Reload
	addq	136(%rsp), %rdi         # 8-byte Folded Reload
	adcq	144(%rsp), %r10         # 8-byte Folded Reload
	movq	%r9, 280(%rsp)
	movq	%r9, %rdx
	movq	32(%rsp), %r15          # 8-byte Reload
	mulxq	%r15, %rcx, %rax
	addq	%rcx, %rdi
	adcq	%rax, %r10
	movq	%r12, %rdx
	mulxq	%rbx, %rcx, %rax
	addq	%rcx, %rdi
	adcq	%rax, %r10
	addq	%r8, %rdi
	adcq	$0, %r10
	shldq	$13, %rdi, %r10
	andq	%r11, %rdi
	movq	%r11, %r9
	movq	%rdi, %r11
	movq	40(%rsp), %rdi          # 8-byte Reload
	addq	176(%rsp), %rdi         # 8-byte Folded Reload
	movq	152(%rsp), %rbx         # 8-byte Reload
	adcq	192(%rsp), %rbx         # 8-byte Folded Reload
	addq	184(%rsp), %rdi         # 8-byte Folded Reload
	adcq	208(%rsp), %rbx         # 8-byte Folded Reload
	addq	232(%rsp), %rdi         # 8-byte Folded Reload
	adcq	88(%rsp), %rbx          # 8-byte Folded Reload
	movq	%r12, 288(%rsp)
	movq	%r12, %rdx
	mulxq	%r15, %rcx, %rax
	addq	%rcx, %rdi
	adcq	%rax, %rbx
	addq	%r10, %rdi
	adcq	$0, %rbx
	shldq	$13, %rdi, %rbx
	andq	%r9, %rdi
	movq	%rdi, %rcx
	addq	200(%rsp), %r14         # 8-byte Folded Reload
	adcq	216(%rsp), %r13         # 8-byte Folded Reload
	addq	160(%rsp), %r14         # 8-byte Folded Reload
	adcq	168(%rsp), %r13         # 8-byte Folded Reload
	addq	224(%rsp), %r14         # 8-byte Folded Reload
	adcq	240(%rsp), %r13         # 8-byte Folded Reload
	addq	72(%rsp), %r14          # 8-byte Folded Reload
	adcq	48(%rsp), %r13          # 8-byte Folded Reload
	addq	%rbx, %r14
	adcq	$0, %r13
	shldq	$13, %r14, %r13
	leaq	(,%r13,4), %rax
	addq	%r13, %rax
	shlq	$2, %rax
	subq	%r13, %rax
	addq	%rsi, %rax
	movq	%rax, %rsi
	shrq	$51, %rsi
	addq	24(%rsp), %rsi          # 8-byte Folded Reload
	movq	%r9, %rdx
	andq	%rdx, %rax
	movq	%rsi, %r12
	shrq	$51, %r12
	addq	%r11, %r12
	andq	%rdx, %rsi
	movq	%rax, 384(%rsp)
	movq	%rsi, 392(%rsp)
	movq	%r12, 400(%rsp)
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%rcx, 408(%rsp)
	andq	%rdx, %r14
	movq	%r14, 416(%rsp)
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_14:                               # %loop_body.i1165.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	imulq	$38, %r12, %r10
	leaq	(%r14,%r14,4), %rcx
	shlq	$2, %rcx
	imulq	$38, %r14, %rdi
	movq	%rax, %rdx
	mulxq	%rax, %r11, %r9
	movq	%rsi, %rdx
	mulxq	%rdi, %r15, %r13
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movq	%r10, %rdx
	movq	40(%rsp), %r8           # 8-byte Reload
	mulxq	%r8, %r10, %rbx
	subq	%r14, %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	addq	%r15, %r10
	adcq	%r13, %rbx
	leaq	(%rax,%rax), %r13
	addq	%r11, %r10
	adcq	%r9, %rbx
	movq	%r13, %rdx
	mulxq	%rsi, %r9, %r15
	movq	%r12, %rdx
	mulxq	%rdi, %rcx, %r11
	leaq	(%r8,%r8,4), %rdx
	shlq	$2, %rdx
	subq	%r8, %rdx
	mulxq	%r8, %rdi, %rax
	shldq	$13, %r10, %rbx
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %r10
	addq	%rcx, %rdi
	adcq	%r11, %rax
	addq	%r9, %rdi
	adcq	%r15, %rax
	movq	%r13, %rdx
	mulxq	%r12, %rdx, %rcx
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%rsi, %r9, %r15
	movq	32(%rsp), %rdx          # 8-byte Reload
	mulxq	%r8, %rcx, %r11
	addq	%rbx, %rdi
	adcq	$0, %rax
	shldq	$13, %rdi, %rax
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %rdi
	addq	%r9, %rcx
	adcq	%r15, %r11
	addq	72(%rsp), %rcx          # 8-byte Folded Reload
	adcq	48(%rsp), %r11          # 8-byte Folded Reload
	leaq	(%rsi,%rsi), %rsi
	movq	%r13, %rdx
	mulxq	%r8, %rbx, %rdx
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	addq	%rax, %rcx
	movq	%rsi, %rdx
	mulxq	%r12, %r9, %r15
	movq	24(%rsp), %rdx          # 8-byte Reload
	mulxq	%r14, %rax, %rbx
	adcq	$0, %r11
	shldq	$13, %rcx, %r11
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %rcx
	addq	%r9, %rax
	adcq	%r15, %rbx
	addq	48(%rsp), %rax          # 8-byte Folded Reload
	movq	%r13, %rdx
	mulxq	%r14, %r9, %r15
	movq	%rsi, %rdx
	mulxq	%r8, %rsi, %r8
	adcq	32(%rsp), %rbx          # 8-byte Folded Reload
	movq	%r12, %rdx
	mulxq	%r12, %r14, %rdx
	addq	%r11, %rax
	adcq	$0, %rbx
	shldq	$13, %rax, %rbx
	movabsq	$2251799813685247, %r11 # imm = 0x7FFFFFFFFFFFF
	andq	%r11, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	addq	%rsi, %r14
	adcq	%r8, %rdx
	addq	%r9, %r14
	adcq	%r15, %rdx
	movq	%r11, %r8
	addq	%rbx, %r14
	adcq	$0, %rdx
	shldq	$13, %r14, %rdx
	leaq	(%rdx,%rdx,4), %rax
	shlq	$2, %rax
	subq	%rdx, %rax
	addq	%r10, %rax
	movq	%rax, %rsi
	shrq	$51, %rsi
	addq	%rdi, %rsi
	movq	%rsi, %r12
	shrq	$51, %r12
	addq	%rcx, %r12
	movq	56(%rsp), %rcx          # 8-byte Reload
	andq	%r8, %r14
	andq	%r8, %rax
	andq	%r8, %rsi
	addq	$1, %rcx
	cmpq	$20, %rcx
	jb	.LBB1_14
# %bb.15:                               # %fsquare_times.exit1170.i
	movq	384(%rsp), %rdi
	movq	392(%rsp), %rbx
	movq	%rax, %rdx
	mulxq	%rdi, %rdx, %rcx
	movq	%rdx, 248(%rsp)         # 8-byte Spill
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%rdi, %rdx, %rcx
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movq	%rax, %rdx
	mulxq	%rbx, %rcx, %r13
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movq	%r12, %rdx
	mulxq	%rdi, %rdx, %rcx
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	movq	400(%rsp), %r9
	movq	%rax, %rdx
	mulxq	%r9, %rdx, %rcx
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%rbx, %rdx, %rcx
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	movq	40(%rsp), %r10          # 8-byte Reload
	movq	%r10, %rdx
	mulxq	%rdi, %rcx, %rdx
	movq	%rcx, 240(%rsp)         # 8-byte Spill
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	408(%rsp), %r11
	movq	%rax, %rdx
	mulxq	%r11, %rdx, %rcx
	movq	%rdx, 184(%rsp)         # 8-byte Spill
	movq	%rcx, 200(%rsp)         # 8-byte Spill
	movq	%r12, %rdx
	mulxq	%rbx, %rdx, %rcx
	movq	%rdx, 192(%rsp)         # 8-byte Spill
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%r9, %rdx, %rcx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	%rcx, 160(%rsp)         # 8-byte Spill
	movq	%r14, %rdx
	mulxq	%rdi, %rdi, %rdx
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	416(%rsp), %rdi
	leaq	(%rdi,%rdi,4), %r8
	shlq	$2, %r8
	subq	%rdi, %r8
	movq	%r8, 24(%rsp)           # 8-byte Spill
	movq	%rax, %rdx
	mulxq	%rdi, %rcx, %rax
	movq	%rcx, 208(%rsp)         # 8-byte Spill
	movq	%rax, 224(%rsp)         # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%r11, %r15, %rdi
	movq	%r10, %rdx
	mulxq	%rbx, %rcx, %rax
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leaq	(%rbx,%rbx,4), %rax
	shlq	$2, %rax
	subq	%rbx, %rax
	leaq	(%r9,%r9,4), %r10
	shlq	$2, %r10
	subq	%r9, %r10
	movq	%r12, %rdx
	mulxq	%r9, %rdx, %rcx
	movq	%rdx, 168(%rsp)         # 8-byte Spill
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	leaq	(%r11,%r11,4), %rcx
	shlq	$2, %rcx
	subq	%r11, %rcx
	movq	%rsi, %rdx
	mulxq	%r8, %rsi, %r11
	addq	248(%rsp), %rsi         # 8-byte Folded Reload
	adcq	64(%rsp), %r11          # 8-byte Folded Reload
	movq	%r14, %rdx
	mulxq	%rax, %rdx, %rax
	movq	%rdx, 248(%rsp)         # 8-byte Spill
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	40(%rsp), %r8           # 8-byte Reload
	movq	%r8, %rdx
	mulxq	%r10, %r9, %rax
	movq	%r12, %rdx
	mulxq	%rcx, %rbx, %rdx
	addq	%rbx, %rsi
	adcq	%rdx, %r11
	addq	%r9, %rsi
	adcq	%rax, %r11
	addq	248(%rsp), %rsi         # 8-byte Folded Reload
	adcq	64(%rsp), %r11          # 8-byte Folded Reload
	shldq	$13, %rsi, %r11
	movabsq	$2251799813685247, %rax # imm = 0x7FFFFFFFFFFFF
	andq	%rax, %rsi
	movq	80(%rsp), %rbx          # 8-byte Reload
	addq	96(%rsp), %rbx          # 8-byte Folded Reload
	adcq	104(%rsp), %r13         # 8-byte Folded Reload
	movq	%r12, %rdx
	movq	56(%rsp), %r12          # 8-byte Reload
	mulxq	24(%rsp), %rdx, %rax    # 8-byte Folded Reload
	addq	%rdx, %rbx
	adcq	%rax, %r13
	movq	%r14, %rdx
	mulxq	%r10, %r10, %r9
	movq	%r8, %rdx
	mulxq	%rcx, %rax, %r8
	addq	%rax, %rbx
	adcq	%r8, %r13
	movq	%rbx, %r8
	addq	%r10, %r8
	adcq	%r9, %r13
	addq	%r11, %r8
	adcq	$0, %r13
	shldq	$13, %r8, %r13
	movabsq	$2251799813685247, %rax # imm = 0x7FFFFFFFFFFFF
	andq	%rax, %r8
	movq	112(%rsp), %rbx         # 8-byte Reload
	addq	128(%rsp), %rbx         # 8-byte Folded Reload
	movq	120(%rsp), %rax         # 8-byte Reload
	adcq	136(%rsp), %rax         # 8-byte Folded Reload
	addq	144(%rsp), %rbx         # 8-byte Folded Reload
	adcq	152(%rsp), %rax         # 8-byte Folded Reload
	movq	24(%rsp), %r11          # 8-byte Reload
	mulxq	%r11, %rdx, %r9
	addq	%rdx, %rbx
	adcq	%r9, %rax
	movq	%r14, %rdx
	mulxq	%rcx, %rcx, %rdx
	addq	%rcx, %rbx
	adcq	%rdx, %rax
	addq	%r13, %rbx
	adcq	$0, %rax
	shldq	$13, %rbx, %rax
	movq	%rax, %r10
	movabsq	$2251799813685247, %r9  # imm = 0x7FFFFFFFFFFFF
	andq	%r9, %rbx
	addq	184(%rsp), %r12         # 8-byte Folded Reload
	movq	160(%rsp), %rax         # 8-byte Reload
	adcq	200(%rsp), %rax         # 8-byte Folded Reload
	addq	192(%rsp), %r12         # 8-byte Folded Reload
	adcq	216(%rsp), %rax         # 8-byte Folded Reload
	addq	240(%rsp), %r12         # 8-byte Folded Reload
	adcq	72(%rsp), %rax          # 8-byte Folded Reload
	movq	%r14, %rdx
	mulxq	%r11, %rcx, %rdx
	addq	%rcx, %r12
	adcq	%rdx, %rax
	addq	%r10, %r12
	adcq	$0, %rax
	shldq	$13, %r12, %rax
	movq	%rax, %rcx
	andq	%r9, %r12
	movq	%r9, %rax
	addq	208(%rsp), %r15         # 8-byte Folded Reload
	adcq	224(%rsp), %rdi         # 8-byte Folded Reload
	addq	168(%rsp), %r15         # 8-byte Folded Reload
	adcq	176(%rsp), %rdi         # 8-byte Folded Reload
	addq	232(%rsp), %r15         # 8-byte Folded Reload
	adcq	88(%rsp), %rdi          # 8-byte Folded Reload
	addq	48(%rsp), %r15          # 8-byte Folded Reload
	adcq	32(%rsp), %rdi          # 8-byte Folded Reload
	addq	%rcx, %r15
	adcq	$0, %rdi
	shldq	$13, %r15, %rdi
	leaq	(%rdi,%rdi,4), %rcx
	shlq	$2, %rcx
	subq	%rdi, %rcx
	addq	%rsi, %rcx
	movq	%rcx, %rsi
	shrq	$51, %rsi
	addq	%r8, %rsi
	andq	%rax, %rcx
	movq	%rsi, %r13
	shrq	$51, %r13
	addq	%rbx, %r13
	andq	%rax, %rsi
	movq	%rcx, 256(%rsp)
	movq	%rsi, 264(%rsp)
	movq	%r13, 272(%rsp)
	movq	%r12, 56(%rsp)          # 8-byte Spill
	movq	%r12, 280(%rsp)
	andq	%rax, %r15
	movq	%r15, 288(%rsp)
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_16:                               # %loop_body.i961.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, 40(%rsp)          # 8-byte Spill
	imulq	$38, %r13, %r10
	leaq	(%r15,%r15,4), %r14
	shlq	$2, %r14
	imulq	$38, %r15, %rdi
	movq	%rcx, %rdx
	mulxq	%rcx, %r11, %r8
	movq	%rsi, %rdx
	mulxq	%rdi, %r12, %r9
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movq	%r10, %rdx
	movq	%r15, %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	56(%rsp), %r15          # 8-byte Reload
	mulxq	%r15, %r10, %rbx
	subq	%rax, %r14
	addq	%r12, %r10
	adcq	%r9, %rbx
	leaq	(%rcx,%rcx), %r12
	addq	%r11, %r10
	adcq	%r8, %rbx
	movq	%r12, %rdx
	mulxq	%rsi, %r8, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%r13, %rdx
	mulxq	%rdi, %r9, %r11
	leaq	(%r15,%r15,4), %rdx
	shlq	$2, %rdx
	subq	%r15, %rdx
	mulxq	%r15, %rax, %rcx
	shldq	$13, %r10, %rbx
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %r10
	addq	%r9, %rax
	adcq	%r11, %rcx
	addq	%r8, %rax
	adcq	48(%rsp), %rcx          # 8-byte Folded Reload
	movq	%r12, %rdx
	movq	%r12, %r8
	movq	%r8, 72(%rsp)           # 8-byte Spill
	movq	%r15, %r12
	mulxq	%r13, %rdi, %rdx
	movq	%rdi, 88(%rsp)          # 8-byte Spill
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%rsi, %r9, %r15
	movq	32(%rsp), %rdx          # 8-byte Reload
	mulxq	%r12, %rdi, %r11
	addq	%rbx, %rax
	adcq	$0, %rcx
	shldq	$13, %rax, %rcx
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %rax
	addq	%r9, %rdi
	adcq	%r15, %r11
	addq	88(%rsp), %rdi          # 8-byte Folded Reload
	adcq	48(%rsp), %r11          # 8-byte Folded Reload
	leaq	(%rsi,%rsi), %r15
	movq	%r8, %rdx
	mulxq	%r12, %rsi, %rdx
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	addq	%rcx, %rdi
	movq	%r15, %rdx
	mulxq	%r13, %r8, %r9
	movq	%r14, %rdx
	movq	24(%rsp), %rsi          # 8-byte Reload
	mulxq	%rsi, %rcx, %rbx
	adcq	$0, %r11
	shldq	$13, %rdi, %r11
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %rdi
	addq	%r8, %rcx
	adcq	%r9, %rbx
	addq	48(%rsp), %rcx          # 8-byte Folded Reload
	movq	72(%rsp), %rdx          # 8-byte Reload
	mulxq	%rsi, %r9, %r8
	movq	%r15, %rdx
	mulxq	%r12, %rsi, %r14
	adcq	32(%rsp), %rbx          # 8-byte Folded Reload
	movq	%r13, %rdx
	mulxq	%r13, %r15, %rdx
	addq	%r11, %rcx
	adcq	$0, %rbx
	shldq	$13, %rcx, %rbx
	movabsq	$2251799813685247, %r11 # imm = 0x7FFFFFFFFFFFF
	andq	%r11, %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	addq	%rsi, %r15
	adcq	%r14, %rdx
	addq	%r9, %r15
	adcq	%r8, %rdx
	addq	%rbx, %r15
	adcq	$0, %rdx
	shldq	$13, %r15, %rdx
	leaq	(%rdx,%rdx,4), %rcx
	shlq	$2, %rcx
	subq	%rdx, %rcx
	addq	%r10, %rcx
	movq	%rcx, %rsi
	shrq	$51, %rsi
	addq	%rax, %rsi
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rsi, %r13
	shrq	$51, %r13
	addq	%rdi, %r13
	movq	%r11, %rdx
	andq	%rdx, %r15
	andq	%rdx, %rcx
	andq	%rdx, %rsi
	addq	$1, %rax
	cmpq	$10, %rax
	jb	.LBB1_16
# %bb.17:                               # %fsquare_times.exit966.i
	movq	%rcx, 256(%rsp)
	movq	%rsi, 264(%rsp)
	movq	320(%rsp), %rdi
	movq	328(%rsp), %rax
	movq	%rcx, %rdx
	mulxq	%rdi, %rbx, %rdx
	movq	%rbx, 248(%rsp)         # 8-byte Spill
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%rdi, %rbx, %rdx
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	movq	%rcx, %rdx
	mulxq	%rax, %rdx, %r8
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movq	%r13, %rdx
	mulxq	%rdi, %rbx, %rdx
	movq	%rbx, 144(%rsp)         # 8-byte Spill
	movq	%rdx, 152(%rsp)         # 8-byte Spill
	movq	336(%rsp), %r9
	movq	%rcx, %rdx
	mulxq	%r9, %rbx, %rdx
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%rax, %rbx, %rdx
	movq	%rbx, 112(%rsp)         # 8-byte Spill
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	movq	56(%rsp), %r10          # 8-byte Reload
	movq	%r10, %rdx
	mulxq	%rdi, %rbx, %rdx
	movq	%rbx, 240(%rsp)         # 8-byte Spill
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	344(%rsp), %r11
	movq	%rcx, %rdx
	mulxq	%r11, %rbx, %rdx
	movq	%rbx, 184(%rsp)         # 8-byte Spill
	movq	%rdx, 200(%rsp)         # 8-byte Spill
	movq	%r13, %rdx
	mulxq	%rax, %rbx, %rdx
	movq	%rbx, 192(%rsp)         # 8-byte Spill
	movq	%rdx, 216(%rsp)         # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%r9, %rbx, %rdx
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movq	%rdx, 160(%rsp)         # 8-byte Spill
	movq	%r15, %rdx
	mulxq	%rdi, %rdi, %rdx
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	352(%rsp), %rdi
	leaq	(%rdi,%rdi,4), %rdx
	shlq	$2, %rdx
	subq	%rdi, %rdx
	movq	%rdx, %rbx
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	%rcx, %rdx
	mulxq	%rdi, %rdx, %rcx
	movq	%rdx, 208(%rsp)         # 8-byte Spill
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%r11, %r14, %rdi
	movq	%r10, %rdx
	mulxq	%rax, %rdx, %rcx
	movq	%rdx, 232(%rsp)         # 8-byte Spill
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	leaq	(%rax,%rax,4), %rcx
	shlq	$2, %rcx
	subq	%rax, %rcx
	leaq	(%r9,%r9,4), %r10
	shlq	$2, %r10
	subq	%r9, %r10
	movq	%r13, %rdx
	mulxq	%r9, %rdx, %rax
	movq	%rdx, 168(%rsp)         # 8-byte Spill
	movq	%rax, 176(%rsp)         # 8-byte Spill
	leaq	(%r11,%r11,4), %rax
	shlq	$2, %rax
	subq	%r11, %rax
	movq	%rsi, %rdx
	mulxq	%rbx, %r12, %r11
	addq	248(%rsp), %r12         # 8-byte Folded Reload
	adcq	64(%rsp), %r11          # 8-byte Folded Reload
	movq	%r15, %rdx
	mulxq	%rcx, %rdx, %rcx
	movq	%rdx, 248(%rsp)         # 8-byte Spill
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	%rsi, %rdx
	mulxq	%r10, %rcx, %r9
	movq	%r13, %rdx
	mulxq	%rax, %rbx, %rdx
	addq	%rbx, %r12
	adcq	%rdx, %r11
	addq	%rcx, %r12
	adcq	%r9, %r11
	addq	248(%rsp), %r12         # 8-byte Folded Reload
	adcq	64(%rsp), %r11          # 8-byte Folded Reload
	shldq	$13, %r12, %r11
	movabsq	$2251799813685247, %r9  # imm = 0x7FFFFFFFFFFFF
	andq	%r9, %r12
	movq	80(%rsp), %rbx          # 8-byte Reload
	addq	96(%rsp), %rbx          # 8-byte Folded Reload
	adcq	104(%rsp), %r8          # 8-byte Folded Reload
	movq	%r13, 272(%rsp)
	movq	%r13, %rdx
	mulxq	24(%rsp), %rdx, %rcx    # 8-byte Folded Reload
	addq	%rdx, %rbx
	adcq	%rcx, %r8
	movq	%r15, %rdx
	mulxq	%r10, %r13, %r10
	movq	%rsi, %rdx
	mulxq	%rax, %rcx, %rdx
	addq	%rcx, %rbx
	adcq	%rdx, %r8
	addq	%r13, %rbx
	adcq	%r10, %r8
	addq	%r11, %rbx
	adcq	$0, %r8
	shldq	$13, %rbx, %r8
	movabsq	$2251799813685247, %rcx # imm = 0x7FFFFFFFFFFFF
	andq	%rcx, %rbx
	movq	112(%rsp), %r10         # 8-byte Reload
	addq	128(%rsp), %r10         # 8-byte Folded Reload
	movq	120(%rsp), %r11         # 8-byte Reload
	adcq	136(%rsp), %r11         # 8-byte Folded Reload
	addq	144(%rsp), %r10         # 8-byte Folded Reload
	adcq	152(%rsp), %r11         # 8-byte Folded Reload
	movq	%rsi, 280(%rsp)
	movq	%rsi, %rdx
	movq	24(%rsp), %r13          # 8-byte Reload
	mulxq	%r13, %rdx, %rcx
	addq	%rdx, %r10
	adcq	%rcx, %r11
	movq	%r15, %rdx
	mulxq	%rax, %rcx, %rax
	addq	%rcx, %r10
	adcq	%rax, %r11
	addq	%r8, %r10
	adcq	$0, %r11
	shldq	$13, %r10, %r11
	movabsq	$2251799813685247, %r9  # imm = 0x7FFFFFFFFFFFF
	andq	%r9, %r10
	movq	40(%rsp), %rsi          # 8-byte Reload
	addq	184(%rsp), %rsi         # 8-byte Folded Reload
	movq	160(%rsp), %rax         # 8-byte Reload
	adcq	200(%rsp), %rax         # 8-byte Folded Reload
	addq	192(%rsp), %rsi         # 8-byte Folded Reload
	adcq	216(%rsp), %rax         # 8-byte Folded Reload
	addq	240(%rsp), %rsi         # 8-byte Folded Reload
	adcq	72(%rsp), %rax          # 8-byte Folded Reload
	movq	%r15, 288(%rsp)
	movq	%r15, %rdx
	mulxq	%r13, %rcx, %rdx
	addq	%rcx, %rsi
	adcq	%rdx, %rax
	addq	%r11, %rsi
	adcq	$0, %rax
	shldq	$13, %rsi, %rax
	andq	%r9, %rsi
	movq	%rsi, %rdx
	movq	%r9, %rcx
	addq	208(%rsp), %r14         # 8-byte Folded Reload
	adcq	224(%rsp), %rdi         # 8-byte Folded Reload
	addq	168(%rsp), %r14         # 8-byte Folded Reload
	adcq	176(%rsp), %rdi         # 8-byte Folded Reload
	addq	232(%rsp), %r14         # 8-byte Folded Reload
	adcq	88(%rsp), %rdi          # 8-byte Folded Reload
	addq	48(%rsp), %r14          # 8-byte Folded Reload
	adcq	32(%rsp), %rdi          # 8-byte Folded Reload
	addq	%rax, %r14
	adcq	$0, %rdi
	shldq	$13, %r14, %rdi
	leaq	(%rdi,%rdi,4), %rax
	shlq	$2, %rax
	subq	%rdi, %rax
	addq	%r12, %rax
	movq	%rax, %rdi
	shrq	$51, %rdi
	addq	%rbx, %rdi
	andq	%rcx, %rax
	movq	%rdi, %r13
	shrq	$51, %r13
	addq	%r10, %r13
	andq	%rcx, %rdi
	movq	%rax, 320(%rsp)
	movq	%rdi, 328(%rsp)
	movq	%r13, 336(%rsp)
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	%rdx, 344(%rsp)
	andq	%rcx, %r14
	movq	%r14, 352(%rsp)
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_18:                               # %loop_body.i757.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	imulq	$38, %r13, %r10
	leaq	(%r14,%r14,4), %rcx
	shlq	$2, %rcx
	imulq	$38, %r14, %rsi
	movq	%rax, %rdx
	mulxq	%rax, %r11, %r9
	movq	%rdi, %rdx
	mulxq	%rsi, %r15, %r12
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%r10, %rdx
	movq	40(%rsp), %r8           # 8-byte Reload
	mulxq	%r8, %r10, %rbx
	subq	%r14, %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	addq	%r15, %r10
	adcq	%r12, %rbx
	leaq	(%rax,%rax), %r12
	addq	%r11, %r10
	adcq	%r9, %rbx
	movq	%r12, %rdx
	mulxq	%rdi, %r9, %r15
	movq	%r13, %rdx
	mulxq	%rsi, %rsi, %r11
	leaq	(%r8,%r8,4), %rdx
	shlq	$2, %rdx
	subq	%r8, %rdx
	mulxq	%r8, %rcx, %rax
	shldq	$13, %r10, %rbx
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %r10
	addq	%rsi, %rcx
	adcq	%r11, %rax
	addq	%r9, %rcx
	adcq	%r15, %rax
	movq	%r12, %rdx
	mulxq	%r13, %rsi, %rdx
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%rdi, %rdx
	mulxq	%rdi, %r9, %r15
	movq	32(%rsp), %rdx          # 8-byte Reload
	mulxq	%r8, %rsi, %r11
	addq	%rbx, %rcx
	adcq	$0, %rax
	shldq	$13, %rcx, %rax
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %rcx
	addq	%r9, %rsi
	adcq	%r15, %r11
	addq	72(%rsp), %rsi          # 8-byte Folded Reload
	adcq	48(%rsp), %r11          # 8-byte Folded Reload
	leaq	(%rdi,%rdi), %rdi
	movq	%r12, %rdx
	mulxq	%r8, %rbx, %rdx
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	addq	%rax, %rsi
	movq	%rdi, %rdx
	mulxq	%r13, %r9, %r15
	movq	24(%rsp), %rdx          # 8-byte Reload
	mulxq	%r14, %rax, %rbx
	adcq	$0, %r11
	shldq	$13, %rsi, %r11
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %rsi
	addq	%r9, %rax
	adcq	%r15, %rbx
	addq	48(%rsp), %rax          # 8-byte Folded Reload
	movq	%r12, %rdx
	mulxq	%r14, %r9, %r15
	movq	%rdi, %rdx
	mulxq	%r8, %rdi, %r8
	adcq	32(%rsp), %rbx          # 8-byte Folded Reload
	movq	%r13, %rdx
	mulxq	%r13, %r14, %rdx
	addq	%r11, %rax
	adcq	$0, %rbx
	shldq	$13, %rax, %rbx
	movabsq	$2251799813685247, %r11 # imm = 0x7FFFFFFFFFFFF
	andq	%r11, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	addq	%rdi, %r14
	adcq	%r8, %rdx
	addq	%r9, %r14
	adcq	%r15, %rdx
	movq	%r11, %r8
	addq	%rbx, %r14
	adcq	$0, %rdx
	shldq	$13, %r14, %rdx
	leaq	(%rdx,%rdx,4), %rax
	shlq	$2, %rax
	subq	%rdx, %rax
	addq	%r10, %rax
	movq	%rax, %rdi
	shrq	$51, %rdi
	addq	%rcx, %rdi
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	%rdi, %r13
	shrq	$51, %r13
	addq	%rsi, %r13
	andq	%r8, %r14
	andq	%r8, %rax
	andq	%r8, %rdi
	addq	$1, %rcx
	cmpq	$50, %rcx
	jb	.LBB1_18
# %bb.19:                               # %fsquare_times.exit762.i
	movq	%rax, 256(%rsp)
	movq	%rdi, 264(%rsp)
	movq	320(%rsp), %rsi
	movq	328(%rsp), %rcx
	movq	%rax, %rdx
	mulxq	%rsi, %rbx, %rdx
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movq	%rdi, %rdx
	mulxq	%rsi, %rbx, %rdx
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	movq	%rax, %rdx
	mulxq	%rcx, %r8, %r12
	movq	%r13, %rdx
	mulxq	%rsi, %rbx, %rdx
	movq	%rbx, 144(%rsp)         # 8-byte Spill
	movq	%rdx, 152(%rsp)         # 8-byte Spill
	movq	336(%rsp), %r9
	movq	%rax, %rdx
	mulxq	%r9, %rbx, %rdx
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	movq	%rdi, %rdx
	mulxq	%rcx, %rbx, %rdx
	movq	%rbx, 112(%rsp)         # 8-byte Spill
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	movq	40(%rsp), %r10          # 8-byte Reload
	movq	%r10, %rdx
	mulxq	%rsi, %rbx, %rdx
	movq	%rbx, 240(%rsp)         # 8-byte Spill
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	344(%rsp), %r11
	movq	%rax, %rdx
	mulxq	%r11, %rbx, %rdx
	movq	%rbx, 184(%rsp)         # 8-byte Spill
	movq	%rdx, 200(%rsp)         # 8-byte Spill
	movq	%r13, %rdx
	mulxq	%rcx, %rbx, %rdx
	movq	%rbx, 192(%rsp)         # 8-byte Spill
	movq	%rdx, 216(%rsp)         # 8-byte Spill
	movq	%rdi, %rdx
	mulxq	%r9, %rbx, %rdx
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movq	%rdx, 160(%rsp)         # 8-byte Spill
	movq	%r14, %rdx
	mulxq	%rsi, %rsi, %rdx
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	352(%rsp), %rsi
	leaq	(%rsi,%rsi,4), %rdx
	shlq	$2, %rdx
	subq	%rsi, %rdx
	movq	%rdx, %rbx
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	%rax, %rdx
	mulxq	%rsi, %rdx, %rax
	movq	%rdx, 208(%rsp)         # 8-byte Spill
	movq	%rax, 224(%rsp)         # 8-byte Spill
	movq	%rdi, %rdx
	mulxq	%r11, %r15, %rsi
	movq	%r10, %rdx
	mulxq	%rcx, %rdx, %rax
	movq	%rdx, 232(%rsp)         # 8-byte Spill
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leaq	(%rcx,%rcx,4), %rax
	shlq	$2, %rax
	subq	%rcx, %rax
	leaq	(%r9,%r9,4), %r10
	shlq	$2, %r10
	subq	%r9, %r10
	movq	%r13, %rdx
	mulxq	%r9, %rdx, %rcx
	movq	%rdx, 168(%rsp)         # 8-byte Spill
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	leaq	(%r11,%r11,4), %rcx
	shlq	$2, %rcx
	subq	%r11, %rcx
	movq	%rdi, %rdx
	mulxq	%rbx, %rdi, %r11
	addq	64(%rsp), %rdi          # 8-byte Folded Reload
	adcq	80(%rsp), %r11          # 8-byte Folded Reload
	movq	%r14, %rdx
	mulxq	%rax, %rdx, %rax
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	40(%rsp), %rdx          # 8-byte Reload
	mulxq	%r10, %r9, %rax
	movq	%r13, %rdx
	mulxq	%rcx, %rbx, %rdx
	addq	%rbx, %rdi
	adcq	%rdx, %r11
	addq	%r9, %rdi
	adcq	%rax, %r11
	addq	64(%rsp), %rdi          # 8-byte Folded Reload
	adcq	80(%rsp), %r11          # 8-byte Folded Reload
	shldq	$13, %rdi, %r11
	movabsq	$2251799813685247, %rax # imm = 0x7FFFFFFFFFFFF
	andq	%rax, %rdi
	addq	96(%rsp), %r8           # 8-byte Folded Reload
	adcq	104(%rsp), %r12         # 8-byte Folded Reload
	movq	%r13, 272(%rsp)
	movq	%r13, %rdx
	movq	56(%rsp), %r13          # 8-byte Reload
	mulxq	24(%rsp), %rdx, %rax    # 8-byte Folded Reload
	addq	%rdx, %r8
	adcq	%rax, %r12
	movq	%r14, %rdx
	mulxq	%r10, %r10, %r9
	movq	40(%rsp), %rdx          # 8-byte Reload
	mulxq	%rcx, %rax, %rbx
	addq	%rax, %r8
	adcq	%rbx, %r12
	addq	%r10, %r8
	adcq	%r9, %r12
	addq	%r11, %r8
	adcq	$0, %r12
	shldq	$13, %r8, %r12
	movabsq	$2251799813685247, %r11 # imm = 0x7FFFFFFFFFFFF
	andq	%r11, %r8
	movq	112(%rsp), %rbx         # 8-byte Reload
	addq	128(%rsp), %rbx         # 8-byte Folded Reload
	movq	120(%rsp), %rax         # 8-byte Reload
	adcq	136(%rsp), %rax         # 8-byte Folded Reload
	addq	144(%rsp), %rbx         # 8-byte Folded Reload
	adcq	152(%rsp), %rax         # 8-byte Folded Reload
	movq	%rdx, 280(%rsp)
	movq	24(%rsp), %r10          # 8-byte Reload
	mulxq	%r10, %rdx, %r9
	addq	%rdx, %rbx
	adcq	%r9, %rax
	movq	%r14, %rdx
	mulxq	%rcx, %rcx, %rdx
	addq	%rcx, %rbx
	adcq	%rdx, %rax
	addq	%r12, %rbx
	adcq	$0, %rax
	shldq	$13, %rbx, %rax
	movq	%rax, %r12
	movq	%r11, %r9
	andq	%r9, %rbx
	addq	184(%rsp), %r13         # 8-byte Folded Reload
	movq	160(%rsp), %rax         # 8-byte Reload
	adcq	200(%rsp), %rax         # 8-byte Folded Reload
	addq	192(%rsp), %r13         # 8-byte Folded Reload
	adcq	216(%rsp), %rax         # 8-byte Folded Reload
	addq	240(%rsp), %r13         # 8-byte Folded Reload
	adcq	72(%rsp), %rax          # 8-byte Folded Reload
	movq	%r14, 288(%rsp)
	movq	%r14, %rdx
	mulxq	%r10, %rcx, %rdx
	addq	%rcx, %r13
	adcq	%rdx, %rax
	addq	%r12, %r13
	adcq	$0, %rax
	shldq	$13, %r13, %rax
	movq	%rax, %rcx
	andq	%r9, %r13
	movq	%r9, %rax
	addq	208(%rsp), %r15         # 8-byte Folded Reload
	adcq	224(%rsp), %rsi         # 8-byte Folded Reload
	addq	168(%rsp), %r15         # 8-byte Folded Reload
	adcq	176(%rsp), %rsi         # 8-byte Folded Reload
	addq	232(%rsp), %r15         # 8-byte Folded Reload
	adcq	88(%rsp), %rsi          # 8-byte Folded Reload
	addq	48(%rsp), %r15          # 8-byte Folded Reload
	adcq	32(%rsp), %rsi          # 8-byte Folded Reload
	addq	%rcx, %r15
	adcq	$0, %rsi
	shldq	$13, %r15, %rsi
	leaq	(%rsi,%rsi,4), %rcx
	shlq	$2, %rcx
	subq	%rsi, %rcx
	addq	%rdi, %rcx
	movq	%rcx, %rsi
	shrq	$51, %rsi
	addq	%r8, %rsi
	andq	%rax, %rcx
	movq	%rsi, %r12
	shrq	$51, %r12
	addq	%rbx, %r12
	andq	%rax, %rsi
	movq	%rcx, 384(%rsp)
	movq	%rsi, 392(%rsp)
	movq	%r12, 400(%rsp)
	movq	%r13, 56(%rsp)          # 8-byte Spill
	movq	%r13, 408(%rsp)
	andq	%rax, %r15
	movq	%r15, 416(%rsp)
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_20:                               # %loop_body.i553.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, 40(%rsp)          # 8-byte Spill
	imulq	$38, %r12, %r10
	leaq	(%r15,%r15,4), %r14
	shlq	$2, %r14
	imulq	$38, %r15, %rdi
	movq	%rcx, %rdx
	mulxq	%rcx, %r11, %r8
	movq	%rsi, %rdx
	mulxq	%rdi, %r13, %r9
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	%r10, %rdx
	movq	56(%rsp), %rax          # 8-byte Reload
	mulxq	%rax, %r10, %rbx
	subq	%r15, %r14
	addq	%r13, %r10
	adcq	%r9, %rbx
	leaq	(%rcx,%rcx), %rdx
	addq	%r11, %r10
	adcq	%r8, %rbx
	movq	%rdx, %r8
	mulxq	%rsi, %rcx, %r13
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%r12, %rdx
	mulxq	%rdi, %r9, %r11
	leaq	(%rax,%rax,4), %rdx
	shlq	$2, %rdx
	subq	%rax, %rdx
	mulxq	%rax, %rdi, %rcx
	shldq	$13, %r10, %rbx
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %r10
	addq	%r9, %rdi
	adcq	%r11, %rcx
	addq	32(%rsp), %rdi          # 8-byte Folded Reload
	adcq	%r13, %rcx
	movq	%r8, %rdx
	movq	%r8, 48(%rsp)           # 8-byte Spill
	movq	%rax, %r13
	mulxq	%r12, %rdx, %rax
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%rsi, %r9, %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	24(%rsp), %rdx          # 8-byte Reload
	mulxq	%r13, %rax, %r11
	addq	%rbx, %rdi
	adcq	$0, %rcx
	shldq	$13, %rdi, %rcx
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %rdi
	addq	%r9, %rax
	adcq	88(%rsp), %r11          # 8-byte Folded Reload
	addq	72(%rsp), %rax          # 8-byte Folded Reload
	adcq	32(%rsp), %r11          # 8-byte Folded Reload
	leaq	(%rsi,%rsi), %rsi
	movq	%r8, %rdx
	mulxq	%r13, %rbx, %rdx
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	addq	%rcx, %rax
	movq	%rsi, %rdx
	mulxq	%r12, %r8, %r9
	movq	%r14, %rdx
	mulxq	%r15, %rcx, %rbx
	adcq	$0, %r11
	shldq	$13, %rax, %r11
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %rax
	addq	%r8, %rcx
	adcq	%r9, %rbx
	addq	32(%rsp), %rcx          # 8-byte Folded Reload
	movq	48(%rsp), %rdx          # 8-byte Reload
	mulxq	%r15, %r9, %r8
	movq	%rsi, %rdx
	mulxq	%r13, %rsi, %r14
	adcq	24(%rsp), %rbx          # 8-byte Folded Reload
	movq	%r12, %rdx
	mulxq	%r12, %r15, %rdx
	addq	%r11, %rcx
	adcq	$0, %rbx
	shldq	$13, %rcx, %rbx
	movabsq	$2251799813685247, %r11 # imm = 0x7FFFFFFFFFFFF
	andq	%r11, %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	addq	%rsi, %r15
	adcq	%r14, %rdx
	addq	%r9, %r15
	adcq	%r8, %rdx
	addq	%rbx, %r15
	adcq	$0, %rdx
	shldq	$13, %r15, %rdx
	leaq	(%rdx,%rdx,4), %rcx
	shlq	$2, %rcx
	subq	%rdx, %rcx
	addq	%r10, %rcx
	movq	%rcx, %rsi
	shrq	$51, %rsi
	addq	%rdi, %rsi
	movq	%rsi, %r12
	shrq	$51, %r12
	addq	%rax, %r12
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%r11, %rdx
	andq	%rdx, %r15
	andq	%rdx, %rcx
	andq	%rdx, %rsi
	addq	$1, %rax
	cmpq	$100, %rax
	jb	.LBB1_20
# %bb.21:                               # %fsquare_times.exit558.i
	movq	384(%rsp), %rdi
	movq	392(%rsp), %rax
	movq	%rcx, %rdx
	mulxq	%rdi, %rbx, %rdx
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%rdi, %rbx, %rdx
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	movq	%rcx, %rdx
	mulxq	%rax, %rdx, %r14
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	%r12, %rdx
	mulxq	%rdi, %rbx, %rdx
	movq	%rbx, 136(%rsp)         # 8-byte Spill
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	movq	400(%rsp), %r9
	movq	%rcx, %rdx
	mulxq	%r9, %rbx, %rdx
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%rax, %rdx, %rbx
	movq	%rbx, 248(%rsp)         # 8-byte Spill
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	movq	56(%rsp), %r8           # 8-byte Reload
	movq	%r8, %rdx
	mulxq	%rdi, %rbx, %rdx
	movq	%rbx, 232(%rsp)         # 8-byte Spill
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movq	408(%rsp), %r11
	movq	%rcx, %rdx
	mulxq	%r11, %rbx, %rdx
	movq	%rbx, 176(%rsp)         # 8-byte Spill
	movq	%rdx, 192(%rsp)         # 8-byte Spill
	movq	%r12, %rdx
	mulxq	%rax, %rbx, %rdx
	movq	%rbx, 184(%rsp)         # 8-byte Spill
	movq	%rdx, 208(%rsp)         # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%r9, %rbx, %rdx
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movq	%rdx, 152(%rsp)         # 8-byte Spill
	movq	%r15, %rdx
	mulxq	%rdi, %rdi, %rdx
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	416(%rsp), %rdi
	leaq	(%rdi,%rdi,4), %rdx
	shlq	$2, %rdx
	subq	%rdi, %rdx
	movq	%rdx, %rbx
	movq	%rcx, %rdx
	mulxq	%rdi, %rdx, %rcx
	movq	%rdx, 200(%rsp)         # 8-byte Spill
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%r11, %r13, %r10
	movq	%r8, %rdx
	mulxq	%rax, %rdx, %rcx
	movq	%rdx, 224(%rsp)         # 8-byte Spill
	movq	%rcx, 240(%rsp)         # 8-byte Spill
	leaq	(%rax,%rax,4), %rdi
	shlq	$2, %rdi
	subq	%rax, %rdi
	leaq	(%r9,%r9,4), %rcx
	shlq	$2, %rcx
	subq	%r9, %rcx
	movq	%r12, %rdx
	mulxq	%r9, %rdx, %rax
	movq	%rdx, 160(%rsp)         # 8-byte Spill
	movq	%rax, 168(%rsp)         # 8-byte Spill
	leaq	(%r11,%r11,4), %rax
	shlq	$2, %rax
	subq	%r11, %rax
	movq	%rax, %r9
	movq	%r9, 24(%rsp)           # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%rbx, %rsi, %r11
	movq	%rbx, %rax
	addq	64(%rsp), %rsi          # 8-byte Folded Reload
	adcq	80(%rsp), %r11          # 8-byte Folded Reload
	movq	%r15, %rdx
	mulxq	%rdi, %rdx, %r8
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movq	56(%rsp), %rdx          # 8-byte Reload
	mulxq	%rcx, %rbx, %rdx
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movq	%r12, %rdx
	mulxq	%r9, %rdi, %rdx
	addq	%rdi, %rsi
	adcq	%rdx, %r11
	addq	%rbx, %rsi
	adcq	64(%rsp), %r11          # 8-byte Folded Reload
	addq	80(%rsp), %rsi          # 8-byte Folded Reload
	adcq	%r8, %r11
	shldq	$13, %rsi, %r11
	movabsq	$2251799813685247, %r9  # imm = 0x7FFFFFFFFFFFF
	andq	%r9, %rsi
	movq	%r9, %r8
	movq	40(%rsp), %rbx          # 8-byte Reload
	addq	96(%rsp), %rbx          # 8-byte Folded Reload
	adcq	104(%rsp), %r14         # 8-byte Folded Reload
	movq	%r12, %rdx
	movq	32(%rsp), %r12          # 8-byte Reload
	movq	%rax, %r9
	mulxq	%r9, %rdi, %rdx
	addq	%rdi, %rbx
	movq	%rbx, %rax
	adcq	%rdx, %r14
	movq	%r15, %rdx
	mulxq	%rcx, %rdi, %rcx
	movq	56(%rsp), %rdx          # 8-byte Reload
	mulxq	24(%rsp), %rbx, %rdx    # 8-byte Folded Reload
	addq	%rbx, %rax
	adcq	%rdx, %r14
	addq	%rdi, %rax
	adcq	%rcx, %r14
	addq	%r11, %rax
	adcq	$0, %r14
	shldq	$13, %rax, %r14
	movq	%r8, %r11
	andq	%r11, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	112(%rsp), %rbx         # 8-byte Reload
	addq	120(%rsp), %rbx         # 8-byte Folded Reload
	movq	248(%rsp), %rdi         # 8-byte Reload
	adcq	128(%rsp), %rdi         # 8-byte Folded Reload
	addq	136(%rsp), %rbx         # 8-byte Folded Reload
	adcq	144(%rsp), %rdi         # 8-byte Folded Reload
	movq	56(%rsp), %rdx          # 8-byte Reload
	mulxq	%r9, %rdx, %rcx
	addq	%rdx, %rbx
	adcq	%rcx, %rdi
	movq	%r15, %rdx
	mulxq	24(%rsp), %rcx, %rax    # 8-byte Folded Reload
	addq	%rcx, %rbx
	adcq	%rax, %rdi
	addq	%r14, %rbx
	adcq	$0, %rdi
	shldq	$13, %rbx, %rdi
	movq	%rdi, %r8
	andq	%r11, %rbx
	addq	176(%rsp), %r12         # 8-byte Folded Reload
	movq	152(%rsp), %rdi         # 8-byte Reload
	adcq	192(%rsp), %rdi         # 8-byte Folded Reload
	addq	184(%rsp), %r12         # 8-byte Folded Reload
	adcq	208(%rsp), %rdi         # 8-byte Folded Reload
	addq	232(%rsp), %r12         # 8-byte Folded Reload
	adcq	88(%rsp), %rdi          # 8-byte Folded Reload
	mulxq	%r9, %rcx, %rax
	addq	%rcx, %r12
	adcq	%rax, %rdi
	addq	%r8, %r12
	adcq	$0, %rdi
	shldq	$13, %r12, %rdi
	andq	%r11, %r12
	addq	200(%rsp), %r13         # 8-byte Folded Reload
	adcq	216(%rsp), %r10         # 8-byte Folded Reload
	addq	160(%rsp), %r13         # 8-byte Folded Reload
	adcq	168(%rsp), %r10         # 8-byte Folded Reload
	addq	224(%rsp), %r13         # 8-byte Folded Reload
	adcq	240(%rsp), %r10         # 8-byte Folded Reload
	addq	72(%rsp), %r13          # 8-byte Folded Reload
	adcq	48(%rsp), %r10          # 8-byte Folded Reload
	addq	%rdi, %r13
	adcq	$0, %r10
	shldq	$13, %r13, %r10
	leaq	(%r10,%r10,4), %rax
	shlq	$2, %rax
	subq	%r10, %rax
	addq	%rsi, %rax
	movq	%rax, %rsi
	shrq	$51, %rsi
	addq	40(%rsp), %rsi          # 8-byte Folded Reload
	andq	%r11, %rax
	movq	%rsi, %r15
	shrq	$51, %r15
	addq	%rbx, %r15
	andq	%r11, %rsi
	movq	%rax, 256(%rsp)
	movq	%rsi, 264(%rsp)
	movq	%r15, 272(%rsp)
	movq	%r12, %r8
	movq	%r12, 280(%rsp)
	andq	%r11, %r13
	movq	%r13, 288(%rsp)
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_22:                               # %loop_body.i349.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	imulq	$38, %r15, %r10
	leaq	(,%r13,4), %r14
	addq	%r13, %r14
	shlq	$2, %r14
	imulq	$38, %r13, %rcx
	movq	%rax, %rdx
	mulxq	%rax, %r11, %r9
	movq	%rsi, %rdx
	mulxq	%rcx, %rdi, %r12
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%r10, %rdx
	mulxq	%r8, %r10, %rbx
	subq	%r13, %r14
	addq	%rdi, %r10
	adcq	%r12, %rbx
	leaq	(%rax,%rax), %r12
	addq	%r11, %r10
	adcq	%r9, %rbx
	movq	%r12, %rdx
	mulxq	%rsi, %rdx, %rax
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	%r15, %rdx
	mulxq	%rcx, %r9, %r11
	leaq	(%r8,%r8,4), %rdx
	shlq	$2, %rdx
	subq	%r8, %rdx
	mulxq	%r8, %rdi, %rax
	shldq	$13, %r10, %rbx
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %r10
	addq	%r9, %rdi
	adcq	%r11, %rax
	addq	32(%rsp), %rdi          # 8-byte Folded Reload
	adcq	24(%rsp), %rax          # 8-byte Folded Reload
	movq	%r12, %rdx
	movq	%r12, %r9
	movq	%r9, 48(%rsp)           # 8-byte Spill
	movq	%r8, %r12
	mulxq	%r15, %rdx, %rcx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%rsi, %r8, %rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movq	40(%rsp), %rdx          # 8-byte Reload
	mulxq	%r12, %rcx, %r11
	addq	%rbx, %rdi
	adcq	$0, %rax
	shldq	$13, %rdi, %rax
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %rdi
	addq	%r8, %rcx
	adcq	72(%rsp), %r11          # 8-byte Folded Reload
	addq	32(%rsp), %rcx          # 8-byte Folded Reload
	adcq	24(%rsp), %r11          # 8-byte Folded Reload
	leaq	(%rsi,%rsi), %rsi
	movq	%r9, %rdx
	mulxq	%r12, %rbx, %rdx
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	addq	%rax, %rcx
	movq	%rsi, %rdx
	mulxq	%r15, %r8, %r9
	movq	%r14, %rdx
	mulxq	%r13, %rax, %rbx
	adcq	$0, %r11
	shldq	$13, %rcx, %r11
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %rcx
	addq	%r8, %rax
	adcq	%r9, %rbx
	addq	40(%rsp), %rax          # 8-byte Folded Reload
	movq	48(%rsp), %rdx          # 8-byte Reload
	mulxq	%r13, %r9, %rdx
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%r12, %rsi, %r14
	adcq	24(%rsp), %rbx          # 8-byte Folded Reload
	movq	%r15, %rdx
	mulxq	%r15, %r13, %rdx
	addq	%r11, %rax
	adcq	$0, %rbx
	shldq	$13, %rax, %rbx
	movq	%rax, %r8
	movabsq	$2251799813685247, %r11 # imm = 0x7FFFFFFFFFFFF
	andq	%r11, %r8
	addq	%rsi, %r13
	adcq	%r14, %rdx
	addq	%r9, %r13
	adcq	40(%rsp), %rdx          # 8-byte Folded Reload
	addq	%rbx, %r13
	adcq	$0, %rdx
	shldq	$13, %r13, %rdx
	leaq	(%rdx,%rdx,4), %rax
	shlq	$2, %rax
	subq	%rdx, %rax
	addq	%r10, %rax
	movq	%rax, %rsi
	shrq	$51, %rsi
	addq	%rdi, %rsi
	movq	%rsi, %r15
	shrq	$51, %r15
	addq	%rcx, %r15
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	%r11, %rdx
	andq	%rdx, %r13
	andq	%rdx, %rax
	andq	%rdx, %rsi
	addq	$1, %rcx
	cmpq	$50, %rcx
	jb	.LBB1_22
# %bb.23:                               # %fsquare_times.exit354.i
	movq	320(%rsp), %rbx
	movq	328(%rsp), %rcx
	movq	%rax, %rdx
	mulxq	%rbx, %rdi, %rdx
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%rbx, %rdi, %rdx
	movq	%rdi, 104(%rsp)         # 8-byte Spill
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	movq	%rax, %rdx
	mulxq	%rcx, %rdx, %r10
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	movq	%r15, %rdx
	mulxq	%rbx, %rdi, %rdx
	movq	%rdi, 144(%rsp)         # 8-byte Spill
	movq	%rdx, 152(%rsp)         # 8-byte Spill
	movq	336(%rsp), %r9
	movq	%rax, %rdx
	mulxq	%r9, %rdi, %rdx
	movq	%rdi, 128(%rsp)         # 8-byte Spill
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%rcx, %rdx, %r14
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	movq	%r8, %rdx
	mulxq	%rbx, %rdi, %rdx
	movq	%rdi, 240(%rsp)         # 8-byte Spill
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	344(%rsp), %r11
	movq	%rax, %rdx
	mulxq	%r11, %rdi, %rdx
	movq	%rdi, 184(%rsp)         # 8-byte Spill
	movq	%rdx, 200(%rsp)         # 8-byte Spill
	movq	%r15, %rdx
	mulxq	%rcx, %rdi, %rdx
	movq	%rdi, 192(%rsp)         # 8-byte Spill
	movq	%rdx, 216(%rsp)         # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%r9, %rdi, %rdx
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	%rdx, 160(%rsp)         # 8-byte Spill
	movq	%r13, %rdx
	mulxq	%rbx, %rbx, %rdx
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	352(%rsp), %rbx
	leaq	(%rbx,%rbx,4), %rdx
	shlq	$2, %rdx
	subq	%rbx, %rdx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	%rax, %rdx
	mulxq	%rbx, %rdx, %rax
	movq	%rdx, 208(%rsp)         # 8-byte Spill
	movq	%rax, 224(%rsp)         # 8-byte Spill
	movq	%rsi, %rdx
	movq	%r8, %rdi
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movq	%r11, %r8
	mulxq	%r8, %r12, %rax
	movq	%rdi, %rdx
	mulxq	%rcx, %rdi, %rdx
	movq	%rdi, 232(%rsp)         # 8-byte Spill
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	leaq	(%rcx,%rcx,4), %rbx
	shlq	$2, %rbx
	subq	%rcx, %rbx
	leaq	(%r9,%r9,4), %r11
	shlq	$2, %r11
	subq	%r9, %r11
	movq	%r15, %rdx
	mulxq	%r9, %rdx, %rcx
	movq	%rdx, 168(%rsp)         # 8-byte Spill
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	leaq	(%r8,%r8,4), %r9
	shlq	$2, %r9
	subq	%r8, %r9
	movq	%rsi, %rdx
	mulxq	56(%rsp), %rcx, %rsi    # 8-byte Folded Reload
	addq	64(%rsp), %rcx          # 8-byte Folded Reload
	adcq	80(%rsp), %rsi          # 8-byte Folded Reload
	movq	%r13, %rdx
	mulxq	%rbx, %rdx, %r8
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movq	32(%rsp), %rdx          # 8-byte Reload
	mulxq	%r11, %rbx, %rdx
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movq	%r15, %rdx
	mulxq	%r9, %rdi, %rdx
	addq	%rdi, %rcx
	adcq	%rdx, %rsi
	addq	%rbx, %rcx
	adcq	64(%rsp), %rsi          # 8-byte Folded Reload
	addq	80(%rsp), %rcx          # 8-byte Folded Reload
	adcq	%r8, %rsi
	shldq	$13, %rcx, %rsi
	movabsq	$2251799813685247, %r8  # imm = 0x7FFFFFFFFFFFF
	andq	%r8, %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movq	96(%rsp), %rbx          # 8-byte Reload
	addq	104(%rsp), %rbx         # 8-byte Folded Reload
	adcq	112(%rsp), %r10         # 8-byte Folded Reload
	movq	%r15, %rdx
	movq	56(%rsp), %rcx          # 8-byte Reload
	mulxq	%rcx, %rdi, %rdx
	addq	%rdi, %rbx
	adcq	%rdx, %r10
	movq	%r13, %rdx
	mulxq	%r11, %r15, %r11
	movq	32(%rsp), %r8           # 8-byte Reload
	movq	%r8, %rdx
	mulxq	%r9, %rdi, %rdx
	addq	%rdi, %rbx
	adcq	%rdx, %r10
	addq	%r15, %rbx
	adcq	%r11, %r10
	addq	%rsi, %rbx
	adcq	$0, %r10
	shldq	$13, %rbx, %r10
	movabsq	$2251799813685247, %r15 # imm = 0x7FFFFFFFFFFFF
	andq	%r15, %rbx
	movq	120(%rsp), %rdi         # 8-byte Reload
	addq	128(%rsp), %rdi         # 8-byte Folded Reload
	adcq	136(%rsp), %r14         # 8-byte Folded Reload
	addq	144(%rsp), %rdi         # 8-byte Folded Reload
	adcq	152(%rsp), %r14         # 8-byte Folded Reload
	movq	%r8, %rdx
	movq	%rcx, %r11
	mulxq	%r11, %rsi, %rdx
	addq	%rsi, %rdi
	adcq	%rdx, %r14
	movq	%r13, %rdx
	mulxq	%r9, %rdx, %rcx
	addq	%rdx, %rdi
	adcq	%rcx, %r14
	addq	%r10, %rdi
	adcq	$0, %r14
	shldq	$13, %rdi, %r14
	andq	%r15, %rdi
	movq	%r15, %r8
	movq	%rdi, %r10
	movq	24(%rsp), %r9           # 8-byte Reload
	addq	184(%rsp), %r9          # 8-byte Folded Reload
	movq	160(%rsp), %rsi         # 8-byte Reload
	adcq	200(%rsp), %rsi         # 8-byte Folded Reload
	addq	192(%rsp), %r9          # 8-byte Folded Reload
	adcq	216(%rsp), %rsi         # 8-byte Folded Reload
	addq	240(%rsp), %r9          # 8-byte Folded Reload
	adcq	72(%rsp), %rsi          # 8-byte Folded Reload
	movq	%r13, %rdx
	mulxq	%r11, %rdx, %rcx
	addq	%rdx, %r9
	adcq	%rcx, %rsi
	addq	%r14, %r9
	adcq	$0, %rsi
	shldq	$13, %r9, %rsi
	andq	%r8, %r9
	addq	208(%rsp), %r12         # 8-byte Folded Reload
	adcq	224(%rsp), %rax         # 8-byte Folded Reload
	addq	168(%rsp), %r12         # 8-byte Folded Reload
	adcq	176(%rsp), %rax         # 8-byte Folded Reload
	addq	232(%rsp), %r12         # 8-byte Folded Reload
	adcq	88(%rsp), %rax          # 8-byte Folded Reload
	addq	48(%rsp), %r12          # 8-byte Folded Reload
	adcq	40(%rsp), %rax          # 8-byte Folded Reload
	addq	%rsi, %r12
	adcq	$0, %rax
	shldq	$13, %r12, %rax
	leaq	(%rax,%rax,4), %rsi
	shlq	$2, %rsi
	subq	%rax, %rsi
	addq	80(%rsp), %rsi          # 8-byte Folded Reload
	movq	%rsi, %rdi
	shrq	$51, %rdi
	addq	%rbx, %rdi
	movq	%r8, %rax
	andq	%rax, %rsi
	movq	%rdi, %r15
	shrq	$51, %r15
	addq	%r10, %r15
	andq	%rax, %rdi
	movq	%rsi, 256(%rsp)
	movq	%rdi, 264(%rsp)
	movq	%r15, 272(%rsp)
	movq	%r9, 280(%rsp)
	andq	%rax, %r12
	movq	%r12, 288(%rsp)
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_24:                               # %loop_body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, 56(%rsp)          # 8-byte Spill
	imulq	$38, %r15, %r10
	leaq	(%r12,%r12,4), %r14
	shlq	$2, %r14
	imulq	$38, %r12, %rax
	movq	%rsi, %rdx
	mulxq	%rsi, %r11, %r8
	movq	%rdi, %rdx
	mulxq	%rax, %rbx, %r13
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%r10, %rdx
	mulxq	%r9, %r10, %rcx
	subq	%r12, %r14
	addq	%rbx, %r10
	adcq	%r13, %rcx
	leaq	(%rsi,%rsi), %rbx
	addq	%r11, %r10
	adcq	%r8, %rcx
	movq	%rbx, %rdx
	mulxq	%rdi, %rdx, %r13
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%r15, %rdx
	mulxq	%rax, %r8, %r11
	leaq	(%r9,%r9,4), %rdx
	shlq	$2, %rdx
	subq	%r9, %rdx
	mulxq	%r9, %rax, %rsi
	shldq	$13, %r10, %rcx
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %r10
	addq	%r8, %rax
	adcq	%r11, %rsi
	addq	24(%rsp), %rax          # 8-byte Folded Reload
	adcq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%rbx, %r8
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movq	%r9, %r13
	mulxq	%r15, %rbx, %rdx
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %rdx
	mulxq	%rdi, %r9, %rdx
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	40(%rsp), %rdx          # 8-byte Reload
	mulxq	%r13, %rbx, %r11
	addq	%rcx, %rax
	adcq	$0, %rsi
	shldq	$13, %rax, %rsi
	movabsq	$2251799813685247, %rcx # imm = 0x7FFFFFFFFFFFF
	andq	%rcx, %rax
	addq	%r9, %rbx
	adcq	72(%rsp), %r11          # 8-byte Folded Reload
	addq	48(%rsp), %rbx          # 8-byte Folded Reload
	adcq	24(%rsp), %r11          # 8-byte Folded Reload
	leaq	(%rdi,%rdi), %rdi
	movq	%r8, %rdx
	mulxq	%r13, %rdx, %rcx
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	addq	%rsi, %rbx
	movq	%rdi, %rdx
	mulxq	%r15, %r8, %r9
	movq	%r14, %rdx
	mulxq	%r12, %rsi, %rcx
	adcq	$0, %r11
	shldq	$13, %rbx, %r11
	movabsq	$2251799813685247, %rdx # imm = 0x7FFFFFFFFFFFF
	andq	%rdx, %rbx
	addq	%r8, %rsi
	adcq	%r9, %rcx
	addq	40(%rsp), %rsi          # 8-byte Folded Reload
	movq	32(%rsp), %rdx          # 8-byte Reload
	mulxq	%r12, %r8, %rdx
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	%rdi, %rdx
	mulxq	%r13, %rdi, %r14
	adcq	24(%rsp), %rcx          # 8-byte Folded Reload
	movq	%r15, %rdx
	mulxq	%r15, %r12, %rdx
	addq	%r11, %rsi
	adcq	$0, %rcx
	shldq	$13, %rsi, %rcx
	movq	%rsi, %r9
	movabsq	$2251799813685247, %r11 # imm = 0x7FFFFFFFFFFFF
	andq	%r11, %r9
	addq	%rdi, %r12
	adcq	%r14, %rdx
	addq	%r8, %r12
	adcq	40(%rsp), %rdx          # 8-byte Folded Reload
	addq	%rcx, %r12
	adcq	$0, %rdx
	shldq	$13, %r12, %rdx
	leaq	(%rdx,%rdx,4), %rsi
	shlq	$2, %rsi
	subq	%rdx, %rsi
	addq	%r10, %rsi
	movq	%rsi, %rdi
	shrq	$51, %rdi
	addq	%rax, %rdi
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	%rdi, %r15
	shrq	$51, %r15
	addq	%rbx, %r15
	movq	%r11, %rcx
	andq	%rcx, %r12
	andq	%rcx, %rsi
	andq	%rcx, %rdi
	addq	$1, %rax
	cmpq	$5, %rax
	jb	.LBB1_24
# %bb.25:                               # %crecip.exit
	movq	%rsi, 256(%rsp)
	movq	%rdi, 264(%rsp)
	movq	448(%rsp), %rbx
	movq	456(%rsp), %rcx
	movq	%rsi, %rdx
	mulxq	%rbx, %rdx, %rax
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	%rdi, %rdx
	mulxq	%rbx, %rdx, %rax
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%rcx, %rax, %r14
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	%r15, %rdx
	mulxq	%rbx, %rdx, %rax
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movq	464(%rsp), %r8
	movq	%rsi, %rdx
	mulxq	%r8, %rdx, %rax
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movq	%rdi, %rdx
	mulxq	%rcx, %rdx, %r13
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	movq	%r9, %rdx
	movq	%r9, 24(%rsp)           # 8-byte Spill
	mulxq	%rbx, %rax, %rdx
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	472(%rsp), %r10
	movq	%rsi, %rdx
	mulxq	%r10, %rdx, %rax
	movq	%rdx, 192(%rsp)         # 8-byte Spill
	movq	%rax, 208(%rsp)         # 8-byte Spill
	movq	%r15, %rdx
	mulxq	%rcx, %rdx, %rax
	movq	%rdx, 200(%rsp)         # 8-byte Spill
	movq	%rax, 224(%rsp)         # 8-byte Spill
	movq	%rdi, %rdx
	mulxq	%r8, %rdx, %rax
	movq	%rdx, 160(%rsp)         # 8-byte Spill
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movq	%r12, %rdx
	mulxq	%rbx, %rbx, %rdx
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	480(%rsp), %rbx
	leaq	(%rbx,%rbx,4), %rax
	shlq	$2, %rax
	subq	%rbx, %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%rbx, %rdx, %rax
	movq	%rdx, 216(%rsp)         # 8-byte Spill
	movq	%rax, 232(%rsp)         # 8-byte Spill
	movq	%rdi, %rdx
	mulxq	%r10, %r11, %rbx
	movq	%r9, %rdx
	mulxq	%rcx, %rax, %rdx
	movq	%rax, 240(%rsp)         # 8-byte Spill
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	leaq	(%rcx,%rcx,4), %rsi
	shlq	$2, %rsi
	subq	%rcx, %rsi
	leaq	(%r8,%r8,4), %r9
	shlq	$2, %r9
	subq	%r8, %r9
	movq	%r15, %rdx
	mulxq	%r8, %rcx, %rax
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	movq	%rax, 184(%rsp)         # 8-byte Spill
	leaq	(%r10,%r10,4), %rcx
	shlq	$2, %rcx
	subq	%r10, %rcx
	movq	%rdi, %rdx
	movq	56(%rsp), %r8           # 8-byte Reload
	mulxq	%r8, %rdi, %r10
	addq	64(%rsp), %rdi          # 8-byte Folded Reload
	adcq	80(%rsp), %r10          # 8-byte Folded Reload
	movq	%r12, %rdx
	mulxq	%rsi, %rdx, %rax
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	24(%rsp), %rdx          # 8-byte Reload
	mulxq	%r9, %rsi, %rax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	movq	%r15, %rdx
	mulxq	%rcx, %rax, %rdx
	addq	%rax, %rdi
	adcq	%rdx, %r10
	addq	%rsi, %rdi
	adcq	248(%rsp), %r10         # 8-byte Folded Reload
	addq	64(%rsp), %rdi          # 8-byte Folded Reload
	adcq	80(%rsp), %r10          # 8-byte Folded Reload
	shldq	$13, %rdi, %r10
	movabsq	$2251799813685247, %rax # imm = 0x7FFFFFFFFFFFF
	andq	%rax, %rdi
	movq	96(%rsp), %rsi          # 8-byte Reload
	addq	104(%rsp), %rsi         # 8-byte Folded Reload
	adcq	112(%rsp), %r14         # 8-byte Folded Reload
	movq	%r15, 272(%rsp)
	movq	%r15, %rdx
	mulxq	%r8, %rdx, %rax
	addq	%rdx, %rsi
	adcq	%rax, %r14
	movq	%r12, %rdx
	mulxq	%r9, %r15, %r9
	movq	24(%rsp), %r8           # 8-byte Reload
	movq	%r8, %rdx
	mulxq	%rcx, %rax, %rdx
	addq	%rax, %rsi
	adcq	%rdx, %r14
	addq	%r15, %rsi
	adcq	%r9, %r14
	addq	%r10, %rsi
	adcq	$0, %r14
	shldq	$13, %rsi, %r14
	movabsq	$2251799813685247, %r10 # imm = 0x7FFFFFFFFFFFF
	andq	%r10, %rsi
	movq	%rsi, %r9
	movq	120(%rsp), %rsi         # 8-byte Reload
	addq	128(%rsp), %rsi         # 8-byte Folded Reload
	adcq	136(%rsp), %r13         # 8-byte Folded Reload
	addq	144(%rsp), %rsi         # 8-byte Folded Reload
	adcq	152(%rsp), %r13         # 8-byte Folded Reload
	movq	%r8, 280(%rsp)
	movq	%r8, %rdx
	movq	56(%rsp), %r15          # 8-byte Reload
	mulxq	%r15, %rdx, %rax
	addq	%rdx, %rsi
	adcq	%rax, %r13
	movq	%r12, %rdx
	mulxq	%rcx, %rcx, %rax
	addq	%rcx, %rsi
	adcq	%rax, %r13
	addq	%r14, %rsi
	adcq	$0, %r13
	shldq	$13, %rsi, %r13
	andq	%r10, %rsi
	movq	%r10, %r8
	movq	%rsi, %r10
	movq	160(%rsp), %rsi         # 8-byte Reload
	addq	192(%rsp), %rsi         # 8-byte Folded Reload
	movq	168(%rsp), %rax         # 8-byte Reload
	adcq	208(%rsp), %rax         # 8-byte Folded Reload
	addq	200(%rsp), %rsi         # 8-byte Folded Reload
	adcq	224(%rsp), %rax         # 8-byte Folded Reload
	addq	88(%rsp), %rsi          # 8-byte Folded Reload
	adcq	48(%rsp), %rax          # 8-byte Folded Reload
	movq	%r12, 288(%rsp)
	movq	%r12, %rdx
	mulxq	%r15, %rcx, %rdx
	addq	%rcx, %rsi
	adcq	%rdx, %rax
	addq	%r13, %rsi
	adcq	$0, %rax
	shldq	$13, %rsi, %rax
	andq	%r8, %rsi
	movq	%rsi, %r14
	addq	216(%rsp), %r11         # 8-byte Folded Reload
	adcq	232(%rsp), %rbx         # 8-byte Folded Reload
	addq	176(%rsp), %r11         # 8-byte Folded Reload
	adcq	184(%rsp), %rbx         # 8-byte Folded Reload
	addq	240(%rsp), %r11         # 8-byte Folded Reload
	adcq	72(%rsp), %rbx          # 8-byte Folded Reload
	addq	32(%rsp), %r11          # 8-byte Folded Reload
	adcq	40(%rsp), %rbx          # 8-byte Folded Reload
	addq	%rax, %r11
	adcq	$0, %rbx
	shldq	$13, %r11, %rbx
	andq	%r8, %r11
	leaq	(%rbx,%rbx,4), %rax
	shlq	$2, %rax
	subq	%rbx, %rax
	addq	%rdi, %rax
	movq	%rax, %rcx
	shrq	$51, %rcx
	addq	%r9, %rcx
	andq	%r8, %rax
	movq	%rcx, %rdx
	shrq	$51, %rdx
	addq	%r10, %rdx
	andq	%r8, %rcx
	movq	%rax, 768(%rsp)
	movq	%rcx, 776(%rsp)
	movq	%rdx, 784(%rsp)
	movq	%r14, 792(%rsp)
	movq	%r11, 800(%rsp)
	movq	896(%rsp), %r8
	movq	904(%rsp), %rbx
	movq	768(%rsp), %rcx
	movq	776(%rsp), %rdi
	movq	%r8, %rdx
	mulxq	%rcx, %rdx, %rax
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	%rbx, %rdx
	mulxq	%rcx, %rdx, %rax
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movq	%r8, %rdx
	mulxq	%rdi, %rax, %r14
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	912(%rsp), %r15
	movq	%r15, %rdx
	movq	%r15, 64(%rsp)          # 8-byte Spill
	mulxq	%rcx, %rdx, %rax
	movq	%rdx, 152(%rsp)         # 8-byte Spill
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movq	784(%rsp), %rax
	movq	%r8, %rdx
	mulxq	%rax, %rsi, %rdx
	movq	%rsi, 136(%rsp)         # 8-byte Spill
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	movq	%rbx, %rdx
	mulxq	%rdi, %rdx, %r11
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	movq	920(%rsp), %r9
	movq	%r9, %rdx
	movq	%r9, 248(%rsp)          # 8-byte Spill
	mulxq	%rcx, %rsi, %rdx
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	792(%rsp), %r10
	movq	%r8, %rdx
	mulxq	%r10, %rsi, %rdx
	movq	%rsi, 192(%rsp)         # 8-byte Spill
	movq	%rdx, 208(%rsp)         # 8-byte Spill
	movq	%r15, %rdx
	mulxq	%rdi, %rsi, %rdx
	movq	%rsi, 200(%rsp)         # 8-byte Spill
	movq	%rdx, 224(%rsp)         # 8-byte Spill
	movq	%rbx, %rdx
	movq	%rbx, 696(%rsp)         # 8-byte Spill
	mulxq	%rax, %rdx, %r15
	movq	%rdx, 168(%rsp)         # 8-byte Spill
	movq	928(%rsp), %rdx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	mulxq	%rcx, %rdx, %rcx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	800(%rsp), %rcx
	leaq	(%rcx,%rcx,4), %r13
	shlq	$2, %r13
	subq	%rcx, %r13
	movq	%r13, 40(%rsp)          # 8-byte Spill
	movq	%r8, %rdx
	mulxq	%rcx, %rdx, %rcx
	movq	%rdx, 216(%rsp)         # 8-byte Spill
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	movq	%rbx, %rdx
	mulxq	%r10, %rbx, %r8
	movq	%r9, %rdx
	mulxq	%rdi, %rsi, %rdx
	movq	%rsi, 240(%rsp)         # 8-byte Spill
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	leaq	(%rdi,%rdi,4), %r12
	shlq	$2, %r12
	subq	%rdi, %r12
	leaq	(%rax,%rax,4), %r9
	shlq	$2, %r9
	subq	%rax, %r9
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, %rdx
	mulxq	%rax, %rdx, %rax
	movq	%rdx, 176(%rsp)         # 8-byte Spill
	movq	%rax, 184(%rsp)         # 8-byte Spill
	leaq	(%r10,%r10,4), %rsi
	shlq	$2, %rsi
	subq	%r10, %rsi
	movq	696(%rsp), %rdx         # 8-byte Reload
	mulxq	%r13, %rdi, %r10
	addq	80(%rsp), %rdi          # 8-byte Folded Reload
	adcq	96(%rsp), %r10          # 8-byte Folded Reload
	movq	56(%rsp), %rdx          # 8-byte Reload
	mulxq	%r12, %rdx, %rax
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	248(%rsp), %r13         # 8-byte Reload
	movq	%r13, %rdx
	mulxq	%r9, %rax, %rdx
	movq	%rdx, 696(%rsp)         # 8-byte Spill
	movq	%rcx, %rdx
	mulxq	%rsi, %r12, %rdx
	addq	%r12, %rdi
	adcq	%rdx, %r10
	addq	%rax, %rdi
	adcq	696(%rsp), %r10         # 8-byte Folded Reload
	addq	80(%rsp), %rdi          # 8-byte Folded Reload
	adcq	96(%rsp), %r10          # 8-byte Folded Reload
	shldq	$13, %rdi, %r10
	movabsq	$2251799813685247, %rax # imm = 0x7FFFFFFFFFFFF
	andq	%rax, %rdi
	movq	112(%rsp), %r12         # 8-byte Reload
	addq	120(%rsp), %r12         # 8-byte Folded Reload
	adcq	128(%rsp), %r14         # 8-byte Folded Reload
	movq	%rcx, %rdx
	mulxq	40(%rsp), %rdx, %rax    # 8-byte Folded Reload
	addq	%rdx, %r12
	adcq	%rax, %r14
	movq	56(%rsp), %rdx          # 8-byte Reload
	mulxq	%r9, %rcx, %r9
	movq	%r13, %rdx
	mulxq	%rsi, %rax, %rdx
	addq	%rax, %r12
	adcq	%rdx, %r14
	addq	%rcx, %r12
	adcq	%r9, %r14
	addq	%r10, %r12
	adcq	$0, %r14
	shldq	$13, %r12, %r14
	movabsq	$2251799813685247, %r10 # imm = 0x7FFFFFFFFFFFF
	andq	%r10, %r12
	movq	%r12, %r9
	movq	104(%rsp), %rax         # 8-byte Reload
	addq	136(%rsp), %rax         # 8-byte Folded Reload
	adcq	144(%rsp), %r11         # 8-byte Folded Reload
	addq	152(%rsp), %rax         # 8-byte Folded Reload
	adcq	160(%rsp), %r11         # 8-byte Folded Reload
	movq	%r13, %rdx
	movq	40(%rsp), %rcx          # 8-byte Reload
	mulxq	%rcx, %rdx, %r12
	addq	%rdx, %rax
	adcq	%r12, %r11
	movq	56(%rsp), %rdx          # 8-byte Reload
	mulxq	%rsi, %rsi, %r12
	addq	%rsi, %rax
	adcq	%r12, %r11
	addq	%r14, %rax
	adcq	$0, %r11
	shldq	$13, %rax, %r11
	andq	%r10, %rax
	movq	%rax, %r14
	movq	168(%rsp), %rax         # 8-byte Reload
	addq	192(%rsp), %rax         # 8-byte Folded Reload
	adcq	208(%rsp), %r15         # 8-byte Folded Reload
	addq	200(%rsp), %rax         # 8-byte Folded Reload
	adcq	224(%rsp), %r15         # 8-byte Folded Reload
	addq	72(%rsp), %rax          # 8-byte Folded Reload
	adcq	48(%rsp), %r15          # 8-byte Folded Reload
	mulxq	%rcx, %rdx, %rsi
	addq	%rdx, %rax
	adcq	%rsi, %r15
	addq	%r11, %rax
	adcq	$0, %r15
	shldq	$13, %rax, %r15
	movq	%r10, %rsi
	andq	%rsi, %rax
	movq	%rax, %r10
	addq	216(%rsp), %rbx         # 8-byte Folded Reload
	adcq	232(%rsp), %r8          # 8-byte Folded Reload
	addq	176(%rsp), %rbx         # 8-byte Folded Reload
	adcq	184(%rsp), %r8          # 8-byte Folded Reload
	addq	240(%rsp), %rbx         # 8-byte Folded Reload
	adcq	88(%rsp), %r8           # 8-byte Folded Reload
	addq	32(%rsp), %rbx          # 8-byte Folded Reload
	adcq	24(%rsp), %r8           # 8-byte Folded Reload
	addq	%r15, %rbx
	adcq	$0, %r8
	shldq	$13, %rbx, %r8
	andq	%rsi, %rbx
	leaq	(%r8,%r8,4), %rax
	shlq	$2, %rax
	subq	%r8, %rax
	addq	%rdi, %rax
	movq	%rax, %rcx
	shrq	$51, %rcx
	addq	%r9, %rcx
	andq	%rsi, %rax
	movq	%rcx, %rdx
	shrq	$51, %rdx
	addq	%r14, %rdx
	andq	%rsi, %rcx
	movq	%rsi, %r14
	movq	%rax, 704(%rsp)
	movq	%rcx, 712(%rsp)
	movq	%rdx, 720(%rsp)
	movq	%r10, 728(%rsp)
	movq	%rbx, 736(%rsp)
	movq	%rax, %rsi
	shrq	$51, %rsi
	xorl	%edi, %edi
	addq	%rcx, %rsi
	setb	%dil
	movb	$51, %r11b
	bzhiq	%r11, %rax, %r8
	shldq	$13, %rsi, %rdi
	xorl	%eax, %eax
	addq	%rdx, %rdi
	setb	%al
	bzhiq	%r11, %rsi, %r9
	shldq	$13, %rdi, %rax
	xorl	%esi, %esi
	addq	%r10, %rax
	setb	%sil
	bzhiq	%r11, %rdi, %r10
	shldq	$13, %rax, %rsi
	xorl	%edx, %edx
	addq	%rbx, %rsi
	setb	%dl
	shldq	$13, %rsi, %rdx
	movl	$19, %ebx
	mulxq	%rbx, %rdx, %rbx
	bzhiq	%r11, %rax, %rax
	addq	%r8, %rdx
	adcq	$0, %rbx
	bzhiq	%r11, %rsi, %rsi
	movq	%rbx, %rcx
	shrq	$51, %rcx
	shldq	$13, %rdx, %rbx
	addq	%r9, %rbx
	adcq	$0, %rcx
	bzhiq	%r11, %rdx, %r8
	movq	%rcx, %rdi
	shrq	$51, %rdi
	shldq	$13, %rbx, %rcx
	addq	%r10, %rcx
	adcq	$0, %rdi
	bzhiq	%r11, %rbx, %rdx
	movq	%rdi, %rbx
	shrq	$51, %rbx
	shldq	$13, %rcx, %rdi
	addq	%rax, %rdi
	adcq	$0, %rbx
	bzhiq	%r11, %rcx, %rcx
	shldq	$13, %rdi, %rbx
	addq	%rsi, %rbx
	bzhiq	%r11, %rdi, %rsi
	bzhiq	%r11, %rbx, %rdi
	shrq	$51, %rbx
	negl	%ebx
	andl	$19, %ebx
	leaq	(%r8,%rbx), %rax
	addq	$19, %rax
	bzhiq	%r11, %rax, %rbx
	shrq	$51, %rax
	addq	%rdx, %rax
	bzhiq	%r11, %rax, %r9
	shrq	$51, %rax
	addq	%rcx, %rax
	bzhiq	%r11, %rax, %rcx
	shrq	$51, %rax
	addq	%rsi, %rax
	bzhiq	%r11, %rax, %r8
	shrq	$51, %rax
	addq	%rdi, %rax
	movq	%rax, %rsi
	shrq	$51, %rsi
	negl	%esi
	andl	$19, %esi
	addq	%rbx, %rsi
	movabsq	$2251799813685229, %rdx # imm = 0x7FFFFFFFFFFED
	addq	%rsi, %rdx
	movq	%rdx, %rdi
	shrq	$51, %rdi
	addq	%r9, %rdi
	addq	%r14, %rdi
	movq	%rdi, %r10
	shrq	$51, %r10
	addq	%rcx, %r10
	movabsq	$1970324836974592, %r9  # imm = 0x7000000000000
	movq	888(%rsp), %rbx         # 8-byte Reload
	movb	%dl, (%rbx)
	movb	%dh, 1(%rbx)  # NOREX
	andq	%rdx, %r9
	movq	%rdx, %rsi
	shrq	$16, %rsi
	movb	%sil, 2(%rbx)
	bzhiq	%r11, %rdi, %rsi
	movq	%rdx, %rcx
	shrq	$24, %rcx
	movb	%cl, 3(%rbx)
	movq	%rdx, %rcx
	shrq	$32, %rcx
	movb	%cl, 4(%rbx)
	movq	%rsi, %rcx
	shlq	$51, %rsi
	orq	%r9, %rsi
	shrq	$40, %rdx
	movb	%dl, 5(%rbx)
	addq	%r14, %r10
	shrq	$48, %rsi
	movb	%sil, 6(%rbx)
	movq	%rdi, %rdx
	shrq	$5, %rdx
	movb	%dl, 7(%rbx)
	movq	%r10, %rdx
	shrq	$51, %rdx
	addq	%r8, %rdx
	shrq	$13, %rcx
	movb	%cl, 8(%rbx)
	addq	%r14, %rdx
	movq	%rdi, %rsi
	shrq	$21, %rsi
	movb	%sil, 9(%rbx)
	movq	%rdi, %rsi
	shrq	$29, %rsi
	movb	%sil, 10(%rbx)
	bzhiq	%r11, %r10, %rsi
	shrq	$37, %rdi
	movb	%dil, 11(%rbx)
	movq	%rsi, %rdi
	shlq	$38, %rsi
	orq	%rcx, %rsi
	shrq	$32, %rsi
	movb	%sil, 12(%rbx)
	shrq	$26, %rdi
	movq	%r10, %rcx
	shrq	$2, %rcx
	movb	%cl, 13(%rbx)
	movq	%r10, %rcx
	shrq	$10, %rcx
	movb	%cl, 14(%rbx)
	movq	%r10, %rcx
	shrq	$18, %rcx
	movb	%cl, 15(%rbx)
	movb	%dil, 16(%rbx)
	movq	%r10, %rcx
	shrq	$34, %rcx
	movb	%cl, 17(%rbx)
	movl	%edx, %ecx
	shll	$25, %ecx
	orl	%edi, %ecx
	shrq	$42, %r10
	movb	%r10b, 18(%rbx)
	shrl	$24, %ecx
	movb	%cl, 19(%rbx)
	movq	%rdx, %rcx
	shrq	$51, %rcx
	addq	%rax, %rcx
	movq	%rdx, %rax
	shrq	$7, %rax
	movb	%al, 20(%rbx)
	movq	%rdx, %rax
	shrq	$15, %rax
	movb	%al, 21(%rbx)
	movq	%rdx, %rax
	shrq	$23, %rax
	movb	%al, 22(%rbx)
	movq	%rdx, %rax
	shrq	$39, %rax
	shrq	$31, %rdx
	movb	%dl, 23(%rbx)
	movb	%al, 24(%rbx)
	shlq	$12, %rcx
                                        # kill: def %eax killed %eax killed %rax def %rax
	andl	$4095, %eax             # imm = 0xFFF
	movabsq	$9223372036854771712, %rdx # imm = 0x7FFFFFFFFFFFF000
	addq	%rdx, %rcx
	andq	%rcx, %rdx
	orl	%edx, %eax
	movb	%ah, 25(%rbx)  # NOREX
	movq	%rcx, %rax
	shrq	$16, %rax
	movb	%al, 26(%rbx)
	movq	%rcx, %rax
	shrq	$24, %rax
	movb	%al, 27(%rbx)
	movq	%rcx, %rax
	shrq	$32, %rax
	movb	%al, 28(%rbx)
	movq	%rcx, %rax
	shrq	$40, %rax
	movb	%al, 29(%rbx)
	shrq	$48, %rcx
	movb	%cl, 30(%rbx)
	shrq	$56, %rdx
	movb	%dl, 31(%rbx)
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
.Lfunc_end1:
	.size	curve25519_donna, .Lfunc_end1-curve25519_donna
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
