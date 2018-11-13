	.text
	.file	"Module"
	.p2align	4, 0x90         # -- Begin function _crypto_core_hsalsa20
	.type	_crypto_core_hsalsa20,@function
_crypto_core_hsalsa20:                  # @_crypto_core_hsalsa20
	.cfi_startproc
# %bb.0:                                # %entry
	xorl	%eax, %eax
	movb	$1, -1(%rsp)
	movl	$1634760805, -8(%rsp)   # imm = 0x61707865
	movl	$857760878, -12(%rsp)   # imm = 0x3320646E
	movl	$2036477234, -16(%rsp)  # imm = 0x79622D32
	movl	$1797285236, -20(%rsp)  # imm = 0x6B206574
	movl	(%rdx), %ecx
	movl	%ecx, -24(%rsp)
	movl	4(%rdx), %ecx
	movl	%ecx, -28(%rsp)
	movl	8(%rdx), %ecx
	movl	%ecx, -32(%rsp)
	movl	12(%rdx), %ecx
	movl	%ecx, -36(%rsp)
	movl	16(%rdx), %ecx
	movl	%ecx, -40(%rsp)
	movl	20(%rdx), %ecx
	movl	%ecx, -44(%rsp)
	movl	24(%rdx), %ecx
	movl	%ecx, -48(%rsp)
	movl	28(%rdx), %ecx
	movl	%ecx, -52(%rsp)
	movl	(%rsi), %ecx
	movl	%ecx, -56(%rsp)
	movl	4(%rsi), %ecx
	movl	%ecx, -60(%rsp)
	movl	8(%rsi), %ecx
	movl	%ecx, -64(%rsp)
	movl	12(%rsi), %ecx
	movl	%ecx, -68(%rsp)
	movq	%rdi, -80(%rsp)         # 8-byte Spill
	movl	%eax, -84(%rsp)         # 4-byte Spill
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-84(%rsp), %eax         # 4-byte Reload
	cmpl	$10, %eax
	movl	%eax, -88(%rsp)         # 4-byte Spill
	jae	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rsp), %eax
	movl	-8(%rsp), %ecx
	addl	-44(%rsp), %ecx
	movl	%ecx, %edx
	shll	$7, %edx
	shrl	$25, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -36(%rsp)
	movl	-64(%rsp), %eax
	movl	-36(%rsp), %ecx
	addl	-8(%rsp), %ecx
	movl	%ecx, %edx
	shll	$9, %edx
	shrl	$23, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -64(%rsp)
	movl	-44(%rsp), %eax
	movl	-64(%rsp), %ecx
	addl	-36(%rsp), %ecx
	movl	%ecx, %edx
	shll	$13, %edx
	shrl	$19, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -44(%rsp)
	movl	-8(%rsp), %eax
	movl	-44(%rsp), %ecx
	addl	-64(%rsp), %ecx
	movl	%ecx, %edx
	shll	$18, %edx
	shrl	$14, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -8(%rsp)
	movl	-68(%rsp), %eax
	movl	-12(%rsp), %ecx
	addl	-24(%rsp), %ecx
	movl	%ecx, %edx
	shll	$7, %edx
	shrl	$25, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -68(%rsp)
	movl	-48(%rsp), %eax
	movl	-68(%rsp), %ecx
	addl	-12(%rsp), %ecx
	movl	%ecx, %edx
	shll	$9, %edx
	shrl	$23, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -48(%rsp)
	movl	-24(%rsp), %eax
	movl	-48(%rsp), %ecx
	addl	-68(%rsp), %ecx
	movl	%ecx, %edx
	shll	$13, %edx
	shrl	$19, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -24(%rsp)
	movl	-12(%rsp), %eax
	movl	-24(%rsp), %ecx
	addl	-48(%rsp), %ecx
	movl	%ecx, %edx
	shll	$18, %edx
	shrl	$14, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -12(%rsp)
	movl	-52(%rsp), %eax
	movl	-16(%rsp), %ecx
	addl	-56(%rsp), %ecx
	movl	%ecx, %edx
	shll	$7, %edx
	shrl	$25, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -52(%rsp)
	movl	-28(%rsp), %eax
	movl	-52(%rsp), %ecx
	addl	-16(%rsp), %ecx
	movl	%ecx, %edx
	shll	$9, %edx
	shrl	$23, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -28(%rsp)
	movl	-56(%rsp), %eax
	movl	-28(%rsp), %ecx
	addl	-52(%rsp), %ecx
	movl	%ecx, %edx
	shll	$13, %edx
	shrl	$19, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -56(%rsp)
	movl	-16(%rsp), %eax
	movl	-56(%rsp), %ecx
	addl	-28(%rsp), %ecx
	movl	%ecx, %edx
	shll	$18, %edx
	shrl	$14, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -16(%rsp)
	movl	-32(%rsp), %eax
	movl	-20(%rsp), %ecx
	addl	-40(%rsp), %ecx
	movl	%ecx, %edx
	shll	$7, %edx
	shrl	$25, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -32(%rsp)
	movl	-60(%rsp), %eax
	movl	-32(%rsp), %ecx
	addl	-20(%rsp), %ecx
	movl	%ecx, %edx
	shll	$9, %edx
	shrl	$23, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -60(%rsp)
	movl	-40(%rsp), %eax
	movl	-60(%rsp), %ecx
	addl	-32(%rsp), %ecx
	movl	%ecx, %edx
	shll	$13, %edx
	shrl	$19, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -40(%rsp)
	movl	-20(%rsp), %eax
	movl	-40(%rsp), %ecx
	addl	-60(%rsp), %ecx
	movl	%ecx, %edx
	shll	$18, %edx
	shrl	$14, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -20(%rsp)
	movl	-24(%rsp), %eax
	movl	-8(%rsp), %ecx
	addl	-32(%rsp), %ecx
	movl	%ecx, %edx
	shll	$7, %edx
	shrl	$25, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -24(%rsp)
	movl	-28(%rsp), %eax
	movl	-24(%rsp), %ecx
	addl	-8(%rsp), %ecx
	movl	%ecx, %edx
	shll	$9, %edx
	shrl	$23, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -28(%rsp)
	movl	-32(%rsp), %eax
	movl	-28(%rsp), %ecx
	addl	-24(%rsp), %ecx
	movl	%ecx, %edx
	shll	$13, %edx
	shrl	$19, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -32(%rsp)
	movl	-8(%rsp), %eax
	movl	-32(%rsp), %ecx
	addl	-28(%rsp), %ecx
	movl	%ecx, %edx
	shll	$18, %edx
	shrl	$14, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -8(%rsp)
	movl	-56(%rsp), %eax
	movl	-12(%rsp), %ecx
	addl	-36(%rsp), %ecx
	movl	%ecx, %edx
	shll	$7, %edx
	shrl	$25, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -56(%rsp)
	movl	-60(%rsp), %eax
	movl	-56(%rsp), %ecx
	addl	-12(%rsp), %ecx
	movl	%ecx, %edx
	shll	$9, %edx
	shrl	$23, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -60(%rsp)
	movl	-36(%rsp), %eax
	movl	-60(%rsp), %ecx
	addl	-56(%rsp), %ecx
	movl	%ecx, %edx
	shll	$13, %edx
	shrl	$19, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -36(%rsp)
	movl	-12(%rsp), %eax
	movl	-36(%rsp), %ecx
	addl	-60(%rsp), %ecx
	movl	%ecx, %edx
	shll	$18, %edx
	shrl	$14, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -12(%rsp)
	movl	-40(%rsp), %eax
	movl	-16(%rsp), %ecx
	addl	-68(%rsp), %ecx
	movl	%ecx, %edx
	shll	$7, %edx
	shrl	$25, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -40(%rsp)
	movl	-64(%rsp), %eax
	movl	-40(%rsp), %ecx
	addl	-16(%rsp), %ecx
	movl	%ecx, %edx
	shll	$9, %edx
	shrl	$23, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -64(%rsp)
	movl	-68(%rsp), %eax
	movl	-64(%rsp), %ecx
	addl	-40(%rsp), %ecx
	movl	%ecx, %edx
	shll	$13, %edx
	shrl	$19, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -68(%rsp)
	movl	-16(%rsp), %eax
	movl	-68(%rsp), %ecx
	addl	-64(%rsp), %ecx
	movl	%ecx, %edx
	shll	$18, %edx
	shrl	$14, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -16(%rsp)
	movl	-44(%rsp), %eax
	movl	-20(%rsp), %ecx
	addl	-52(%rsp), %ecx
	movl	%ecx, %edx
	shll	$7, %edx
	shrl	$25, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -44(%rsp)
	movl	-48(%rsp), %eax
	movl	-44(%rsp), %ecx
	addl	-20(%rsp), %ecx
	movl	%ecx, %edx
	shll	$9, %edx
	shrl	$23, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -48(%rsp)
	movl	-52(%rsp), %eax
	movl	-48(%rsp), %ecx
	addl	-44(%rsp), %ecx
	movl	%ecx, %edx
	shll	$13, %edx
	shrl	$19, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -52(%rsp)
	movl	-20(%rsp), %eax
	movl	-52(%rsp), %ecx
	addl	-48(%rsp), %ecx
	movl	%ecx, %edx
	shll	$18, %edx
	shrl	$14, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -20(%rsp)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-88(%rsp), %eax         # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -84(%rsp)         # 4-byte Spill
	jmp	.LBB0_1
.LBB0_4:
	movl	-8(%rsp), %eax
	movq	-80(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	movl	-12(%rsp), %eax
	movl	%eax, 4(%rcx)
	movl	-16(%rsp), %eax
	movl	%eax, 8(%rcx)
	movl	-20(%rsp), %eax
	movl	%eax, 12(%rcx)
	movl	-56(%rsp), %eax
	movl	%eax, 16(%rcx)
	movl	-60(%rsp), %eax
	movl	%eax, 20(%rcx)
	movl	-64(%rsp), %eax
	movl	%eax, 24(%rcx)
	movl	-68(%rsp), %eax
	movl	%eax, 28(%rcx)
	retq
.Lfunc_end0:
	.size	_crypto_core_hsalsa20, .Lfunc_end0-_crypto_core_hsalsa20
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _poly1305_blocks
	.type	_poly1305_blocks,@function
_poly1305_blocks:                       # @_poly1305_blocks
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
	subq	$216, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	xorl	%eax, %eax
	movl	%eax, %ecx
	movb	$1, -41(%rbp)
	cmpb	$0, 88(%rdi)
	setne	%r8b
	xorl	%eax, %eax
	movl	%eax, %r9d
	movabsq	$1099511627776, %r10    # imm = 0x10000000000
	#APP
	testb	%r8b, %r8b
	movq	%r10, %r11
	cmovneq	%r9, %r11
	#NO_APP
	movq	(%rdi), %r9
	movq	8(%rdi), %r10
	movq	16(%rdi), %rbx
	movq	24(%rdi), %r14
	movq	%r14, -56(%rbp)
	movq	32(%rdi), %r14
	movq	%r14, -64(%rbp)
	movq	40(%rdi), %r14
	movq	%r14, -72(%rbp)
	imulq	$20, %r10, %r14
	imulq	$20, %rbx, %r15
	shrq	$4, %rdx
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r15, -96(%rbp)         # 8-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%r11, -112(%rbp)        # 8-byte Spill
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	%r10, -128(%rbp)        # 8-byte Spill
	movq	%rbx, -136(%rbp)        # 8-byte Spill
	movq	%r14, -144(%rbp)        # 8-byte Spill
	movq	%rcx, -152(%rbp)        # 8-byte Spill
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jae	.LBB1_4
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movabsq	$17592186044415, %rax   # imm = 0xFFFFFFFFFFF
	movabsq	$4398046511103, %rcx    # imm = 0x3FFFFFFFFFF
	movq	-160(%rbp), %rdx        # 8-byte Reload
	shlq	$4, %rdx
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi,%rdx), %rdi
	movq	8(%rsi,%rdx), %rdx
	movq	-56(%rbp), %r8
	movabsq	$17592186044415, %r9    # imm = 0xFFFFFFFFFFF
	movq	%rdi, %r10
	andq	%r9, %r10
	addq	%r10, %r8
	movq	%r8, -56(%rbp)
	movq	-64(%rbp), %r8
	movq	%rdx, %r10
	shldq	$20, %rdi, %r10
	andq	%r9, %r10
	addq	%r10, %r8
	movq	%r8, -64(%rbp)
	movq	-72(%rbp), %rdi
	shrq	$24, %rdx
	movq	-112(%rbp), %r8         # 8-byte Reload
	orq	%r8, %rdx
	addq	%rdx, %rdi
	movq	%rdi, -72(%rbp)
	movq	-56(%rbp), %rdx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rdx, %rax
	movq	-120(%rbp), %rdx        # 8-byte Reload
	mulq	%rdx
	movq	-64(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rdi, %rax
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	mulq	%rdi
	movq	-176(%rbp), %r10        # 8-byte Reload
	addq	%rax, %r10
	movq	-184(%rbp), %rax        # 8-byte Reload
	adcq	%rdx, %rax
	movq	-72(%rbp), %rdx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rdx, %rax
	movq	-144(%rbp), %rdx        # 8-byte Reload
	mulq	%rdx
	addq	%rax, %r10
	movq	-192(%rbp), %rax        # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rsp, %rdx
	movq	%rdx, %r11
	addq	$-16, %r11
	movq	%r11, %rsp
	movq	%rax, -8(%rdx)
	movq	%r10, -16(%rdx)
	movq	-56(%rbp), %rax
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	mulq	%r10
	movq	-64(%rbp), %r11
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%r11, %rax
	movq	-120(%rbp), %r11        # 8-byte Reload
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	mulq	%r11
	movq	-208(%rbp), %rbx        # 8-byte Reload
	addq	%rax, %rbx
	movq	-216(%rbp), %rax        # 8-byte Reload
	adcq	%rdx, %rax
	movq	-72(%rbp), %rdx
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rdi
	addq	%rax, %rbx
	movq	-224(%rbp), %rax        # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rsp, %rdx
	movq	%rdx, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movq	%rax, -8(%rdx)
	movq	%rbx, -16(%rdx)
	movq	-56(%rbp), %rax
	movq	-136(%rbp), %rbx        # 8-byte Reload
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	mulq	%rbx
	movq	-64(%rbp), %r14
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	%r14, %rax
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	mulq	%r10
	movq	-240(%rbp), %r14        # 8-byte Reload
	addq	%rax, %r14
	movq	-248(%rbp), %rax        # 8-byte Reload
	adcq	%rdx, %rax
	movq	-72(%rbp), %rdx
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movq	%rdx, %rax
	mulq	%r11
	addq	%rax, %r14
	movq	-256(%rbp), %rax        # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rsp, %rdx
	movq	%rdx, %r15
	addq	$-16, %r15
	movq	%r15, %rsp
	movq	%rax, -8(%rdx)
	movq	%r14, -16(%rdx)
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	-16(%rax), %r14
	movq	-8(%rax), %r15
	shldq	$20, %r14, %r15
	movq	%rsp, %r14
	movq	%r14, %r12
	addq	$-16, %r12
	movq	%r12, %rsp
	movq	%r15, -16(%r14)
	movq	-16(%rax), %r15
	andq	%r9, %r15
	movq	%r15, -56(%rbp)
	movq	-232(%rbp), %r15        # 8-byte Reload
	movq	-16(%r15), %r13
	movq	-8(%r15), %rax
	movq	-16(%r14), %rsi
	addq	%rsi, %r13
	adcq	$0, %rax
	movq	%r13, -16(%r15)
	movq	%rax, -8(%r15)
	movq	-16(%r15), %rax
	movq	-8(%r15), %rsi
	shldq	$20, %rax, %rsi
	movq	%rsi, -16(%r14)
	movq	-16(%r15), %rax
	andq	%r9, %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rdx), %rax
	movq	-8(%rdx), %rsi
	movq	-16(%r14), %r9
	addq	%r9, %rax
	adcq	$0, %rsi
	movq	%rax, -16(%rdx)
	movq	%rsi, -8(%rdx)
	movq	-16(%rdx), %rax
	movq	-8(%rdx), %rsi
	shldq	$22, %rax, %rsi
	movq	%rsi, -16(%r14)
	movq	-16(%rdx), %rax
	andq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	imulq	$5, (%r12), %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	shrq	$44, %rax
	movq	%rax, (%r12)
	movq	-168(%rbp), %rax        # 8-byte Reload
	andq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	addq	(%r12), %rax
	movq	%rax, -64(%rbp)
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB1_1
.LBB1_4:
	movq	-56(%rbp), %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rax, 24(%rcx)
	movq	-64(%rbp), %rax
	movq	%rax, 32(%rcx)
	movq	-72(%rbp), %rax
	movq	%rax, 40(%rcx)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_poly1305_blocks, .Lfunc_end1-_poly1305_blocks
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _poly1305_finish
	.type	_poly1305_finish,@function
_poly1305_finish:                       # @_poly1305_finish
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
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movb	$1, -41(%rbp)
	cmpq	$0, 64(%rdi)
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	je	.LBB2_2
# %bb.1:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	64(%rax), %rcx
	movb	$1, 72(%rax,%rcx)
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB2_4
.LBB2_2:
	jmp	.LBB2_3
.LBB2_3:
	movabsq	$4398046511103, %rax    # imm = 0x3FFFFFFFFFF
	movabsq	$17592186044415, %rcx   # imm = 0xFFFFFFFFFFF
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	24(%rdx), %rsi
	movq	%rsp, %rdi
	movq	%rdi, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	%rsi, -16(%rdi)
	movq	32(%rdx), %rsi
	movq	%rsp, %r9
	movq	%r9, %r10
	addq	$-16, %r10
	movq	%r10, %rsp
	movq	%rsi, -16(%r9)
	movq	40(%rdx), %rsi
	movq	%rsp, %r11
	movq	%r11, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rsi, -16(%r11)
	movq	-16(%r9), %rsi
	shrq	$44, %rsi
	movq	%rsp, %r14
	movq	%r14, %r15
	addq	$-16, %r15
	movq	%r15, %rsp
	movq	%rsi, -16(%r14)
	movl	-12(%r9), %r12d
	andl	$4095, %r12d            # imm = 0xFFF
	movl	%r12d, -12(%r9)
	movq	-16(%r11), %rsi
	movq	-16(%r14), %r13
	addq	%r13, %rsi
	movq	%rsi, -16(%r11)
	movq	-16(%r11), %rsi
	shrq	$42, %rsi
	movq	%rsi, -16(%r14)
	movl	-12(%r11), %r12d
	andl	$1023, %r12d            # imm = 0x3FF
	movl	%r12d, -12(%r11)
	movq	-16(%rdi), %rsi
	movq	-16(%r14), %r13
	leaq	(%r13,%r13,4), %r13
	addq	%r13, %rsi
	movq	%rsi, -16(%rdi)
	movq	-16(%rdi), %rsi
	shrq	$44, %rsi
	movq	%rsi, -16(%r14)
	movl	-12(%rdi), %r12d
	andl	$4095, %r12d            # imm = 0xFFF
	movl	%r12d, -12(%rdi)
	movq	-16(%r9), %rsi
	movq	-16(%r14), %r13
	addq	%r13, %rsi
	movq	%rsi, -16(%r9)
	movq	-16(%r9), %rsi
	shrq	$44, %rsi
	movq	%rsi, -16(%r14)
	movl	-12(%r9), %r12d
	andl	$4095, %r12d            # imm = 0xFFF
	movl	%r12d, -12(%r9)
	movq	-16(%r11), %rsi
	movq	-16(%r14), %r13
	addq	%r13, %rsi
	movq	%rsi, -16(%r11)
	movq	-16(%r11), %rsi
	shrq	$42, %rsi
	movq	%rsi, -16(%r14)
	movl	-12(%r11), %r12d
	andl	$1023, %r12d            # imm = 0x3FF
	movl	%r12d, -12(%r11)
	movq	-16(%rdi), %rsi
	movq	-16(%r14), %r13
	leaq	(%r13,%r13,4), %r13
	addq	%r13, %rsi
	movq	%rsi, -16(%rdi)
	movq	-16(%rdi), %rsi
	shrq	$44, %rsi
	movq	%rsi, -16(%r14)
	movl	-12(%rdi), %r12d
	andl	$4095, %r12d            # imm = 0xFFF
	movl	%r12d, -12(%rdi)
	movq	-16(%r9), %rsi
	movq	-16(%r14), %r13
	addq	%r13, %rsi
	movq	%rsi, -16(%r9)
	movq	-16(%rdi), %rsi
	addq	$5, %rsi
	movq	%rsp, %rdi
	movq	%rdi, %r13
	addq	$-16, %r13
	movq	%r13, %rsp
	movq	%rsi, -16(%rdi)
	movq	-16(%rdi), %rsi
	shrq	$44, %rsi
	movq	%rsi, -16(%r14)
	movl	-12(%rdi), %r12d
	andl	$4095, %r12d            # imm = 0xFFF
	movl	%r12d, -12(%rdi)
	movq	-16(%r9), %rsi
	movq	-16(%r14), %rdi
	addq	%rdi, %rsi
	movq	%rsp, %rdi
	movq	%rdi, %r9
	addq	$-16, %r9
	movq	%r9, %rsp
	movq	%rsi, -16(%rdi)
	movq	-16(%rdi), %rsi
	shrq	$44, %rsi
	movq	%rsi, -16(%r14)
	movl	-12(%rdi), %r12d
	andl	$4095, %r12d            # imm = 0xFFF
	movl	%r12d, -12(%rdi)
	movq	-16(%r11), %rsi
	movq	-16(%r14), %rdi
	addq	%rdi, %rsi
	movabsq	$-4398046511104, %rdi   # imm = 0xFFFFFC0000000000
	addq	%rdi, %rsi
	movq	%rsp, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movq	%rsi, (%rdi)
	movq	(%rdi), %rsi
	shrq	$63, %rsi
	subq	$1, %rsi
	movq	%rsi, (%r15)
	movq	(%r13), %rsi
	andq	(%r15), %rsi
	movq	%rsi, (%r13)
	movq	(%r9), %rsi
	andq	(%r15), %rsi
	movq	%rsi, (%r9)
	movq	(%rdi), %rsi
	andq	(%r15), %rsi
	movq	%rsi, (%rdi)
	movq	(%r15), %rsi
	xorq	$-1, %rsi
	movq	%rsi, (%r15)
	movq	(%r8), %rsi
	andq	(%r15), %rsi
	orq	(%r13), %rsi
	movq	%rsi, (%r8)
	movq	(%r10), %rsi
	andq	(%r15), %rsi
	orq	(%r9), %rsi
	movq	%rsi, (%r10)
	movq	(%rbx), %rsi
	andq	(%r15), %rsi
	orq	(%rdi), %rsi
	movq	%rsi, (%rbx)
	movq	48(%rdx), %rsi
	movq	56(%rdx), %rdi
	movq	(%r8), %r9
	movq	%rsi, %r11
	andq	%rcx, %r11
	addq	%r11, %r9
	movq	%r9, (%r8)
	movq	(%r8), %r9
	shrq	$44, %r9
	movq	%r9, (%r15)
	movq	%rcx, %r9
	andq	(%r8), %r9
	movq	%r9, (%r8)
	movq	(%r10), %r9
	shrq	$44, %rsi
	movq	%rdi, %r11
	shlq	$20, %r11
	orq	%r11, %rsi
	andq	%rcx, %rsi
	addq	(%r15), %rsi
	addq	%rsi, %r9
	movq	%r9, (%r10)
	movq	(%r10), %rsi
	shrq	$44, %rsi
	movq	%rsi, (%r15)
	andq	(%r10), %rcx
	movq	%rcx, (%r10)
	movq	(%rbx), %rcx
	shrq	$24, %rdi
	andq	%rax, %rdi
	addq	(%r15), %rdi
	addq	%rdi, %rcx
	movq	%rcx, (%rbx)
	andq	(%rbx), %rax
	movq	%rax, (%rbx)
	movq	(%r8), %rax
	movq	(%r10), %rcx
	shlq	$44, %rcx
	orq	%rcx, %rax
	movq	%rax, (%r8)
	movq	(%r10), %rax
	shrq	$20, %rax
	movq	(%rbx), %rcx
	shlq	$24, %rcx
	orq	%rcx, %rax
	movq	%rax, (%r10)
	movq	(%r8), %rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	(%r10), %rax
	movq	%rax, 8(%rcx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 80(%rdx)
	movups	%xmm0, 64(%rdx)
	movups	%xmm0, 48(%rdx)
	movups	%xmm0, 32(%rdx)
	movups	%xmm0, 16(%rdx)
	movups	%xmm0, (%rdx)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	cmpq	$16, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jae	.LBB2_7
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movb	$0, 72(%rax,%rcx)
# %bb.6:                                #   in Loop: Header=BB2_4 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB2_4
.LBB2_7:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movb	$1, 88(%rax)
	addq	$72, %rax
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	_poly1305_blocks
	jmp	.LBB2_3
.Lfunc_end2:
	.size	_poly1305_finish, .Lfunc_end2-_poly1305_finish
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _poly1305_update
	.type	_poly1305_update,@function
_poly1305_update:                       # @_poly1305_update
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movb	$1, -1(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, 64(%rdi)
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	je	.LBB3_2
# %bb.1:
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	64(%rax), %rcx
	movl	$16, %edx
	movl	%edx, %esi
	subq	%rcx, %rsi
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rsi, (%rcx)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rsi, (%rcx)
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	ja	.LBB3_4
	jmp	.LBB3_5
.LBB3_2:
	jmp	.LBB3_3
.LBB3_3:
	movq	-40(%rbp), %rax         # 8-byte Reload
	subq	-16(%rbp), %rax
	cmpq	$16, %rax
	jae	.LBB3_14
	jmp	.LBB3_15
.LBB3_4:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, (%rax)
	jmp	.LBB3_6
.LBB3_5:
	jmp	.LBB3_6
.LBB3_6:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
.LBB3_7:                                # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jae	.LBB3_10
# %bb.8:                                #   in Loop: Header=BB3_7 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	addq	64(%rcx), %rax
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movb	(%rdx,%rsi), %dil
	movb	%dil, 72(%rcx,%rax)
# %bb.9:                                #   in Loop: Header=BB3_7 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB3_7
.LBB3_10:
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	addq	(%rcx), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	64(%rax), %rdx
	addq	(%rcx), %rdx
	movq	%rdx, 64(%rax)
	cmpq	$16, 64(%rax)
	jae	.LBB3_12
# %bb.11:
	movq	%rbp, %rsp
	popq	%rbp
	retq
.LBB3_12:
	jmp	.LBB3_13
.LBB3_13:
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$72, %rax
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	_poly1305_blocks
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	$0, 64(%rax)
	jmp	.LBB3_3
.LBB3_14:
	movq	-40(%rbp), %rax         # 8-byte Reload
	subq	-16(%rbp), %rax
	andq	$-16, %rax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	addq	-16(%rbp), %rcx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	_poly1305_blocks
	movq	-80(%rbp), %rax         # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB3_16
.LBB3_15:
	jmp	.LBB3_16
.LBB3_16:
	movq	-40(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, -16(%rbp)
	jae	.LBB3_18
# %bb.17:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	subq	-16(%rbp), %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB3_20
.LBB3_18:
	jmp	.LBB3_19
.LBB3_19:
	movq	%rbp, %rsp
	popq	%rbp
	retq
.LBB3_20:                               # =>This Inner Loop Header: Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jae	.LBB3_23
# %bb.21:                               #   in Loop: Header=BB3_20 Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	64(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-104(%rbp), %rsi        # 8-byte Reload
	addq	%rsi, %rcx
	addq	%rsi, %rdx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movb	(%rdi,%rdx), %r8b
	movb	%r8b, 72(%rax,%rcx)
# %bb.22:                               #   in Loop: Header=BB3_20 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB3_20
.LBB3_23:
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	addq	64(%rcx), %rax
	movq	%rax, 64(%rcx)
	jmp	.LBB3_19
.Lfunc_end3:
	.size	_poly1305_update, .Lfunc_end3-_poly1305_update
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _poly1305_init
	.type	_poly1305_init,@function
_poly1305_init:                         # @_poly1305_init
	.cfi_startproc
# %bb.0:                                # %entry
	movabsq	$68719475727, %rax      # imm = 0xFFFFFFC0F
	movabsq	$17592181915647, %rcx   # imm = 0xFFFFFC0FFFF
	movabsq	$17575274610687, %rdx   # imm = 0xFFC0FFFFFFF
	movb	$1, -1(%rsp)
	movq	(%rsi), %r8
	movq	8(%rsi), %r9
	movq	%r8, %r10
	andq	%rdx, %r10
	movq	%r10, (%rdi)
	shrq	$44, %r8
	movq	%r9, %rdx
	shlq	$20, %rdx
	orq	%rdx, %r8
	andq	%rcx, %r8
	movq	%r8, 8(%rdi)
	shrq	$24, %r9
	andq	%rax, %r9
	movq	%r9, 16(%rdi)
	movq	$0, 24(%rdi)
	movq	$0, 32(%rdi)
	movq	$0, 40(%rdi)
	movq	16(%rsi), %rax
	movq	%rax, 48(%rdi)
	movq	24(%rsi), %rax
	movq	%rax, 56(%rdi)
	movq	$0, 64(%rdi)
	movb	$0, 88(%rdi)
	retq
.Lfunc_end4:
	.size	_poly1305_init, .Lfunc_end4-_poly1305_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_onetimeauth_poly1305
	.type	_crypto_onetimeauth_poly1305,@function
_crypto_onetimeauth_poly1305:           # @_crypto_onetimeauth_poly1305
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$216, %rsp
	.cfi_def_cfa_offset 224
	leaq	48(%rsp), %rax
	leaq	64(%rsp), %r8
	leaq	88(%rsp), %r9
	movl	$0, 212(%rsp)
	movb	$1, 211(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%r9)
	movq	$0, 16(%r9)
	movq	88(%rsp), %r9
	movq	%r9, 112(%rsp)
	movq	96(%rsp), %r9
	movq	%r9, 120(%rsp)
	movq	104(%rsp), %r9
	movq	%r9, 128(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%r8)
	movq	$0, 16(%r8)
	movq	64(%rsp), %r8
	movq	%r8, 136(%rsp)
	movq	72(%rsp), %r8
	movq	%r8, 144(%rsp)
	movq	80(%rsp), %r8
	movq	%r8, 152(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movq	48(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 168(%rsp)
	movq	$0, 176(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 184(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 192(%rsp)
	movb	$0, 200(%rsp)
	leaq	112(%rsp), %rax
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	callq	_poly1305_init
	leaq	112(%rsp), %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	8(%rsp), %rdx           # 8-byte Reload
	callq	_poly1305_update
	leaq	112(%rsp), %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	_poly1305_finish
	xorl	%eax, %eax
	addq	$216, %rsp
	retq
.Lfunc_end5:
	.size	_crypto_onetimeauth_poly1305, .Lfunc_end5-_crypto_onetimeauth_poly1305
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_verify_16
	.type	_crypto_verify_16,@function
_crypto_verify_16:                      # @_crypto_verify_16
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	xorl	%eax, %eax
	movb	$0, -1(%rsp)
	movb	$1, -2(%rsp)
	movq	%rdi, -16(%rsp)         # 8-byte Spill
	movq	%rsi, -24(%rsp)         # 8-byte Spill
	movl	%eax, -28(%rsp)         # 4-byte Spill
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rsp), %eax         # 4-byte Reload
	cmpl	$16, %eax
	movl	%eax, -32(%rsp)         # 4-byte Spill
	jae	.LBB6_4
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	movb	-2(%rsp), %al
	movl	-32(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %edx
	movl	%edx, %esi
	movl	%ecx, %edx
	movl	%edx, %edi
	movq	-16(%rsp), %r8          # 8-byte Reload
	movb	(%r8,%rsi), %r9b
	movq	-24(%rsp), %rsi         # 8-byte Reload
	cmpb	(%rsi,%rdi), %r9b
	setne	%r9b
	movb	%r9b, %r10b
	andb	$1, %r10b
	andb	%al, %r10b
	movb	-1(%rsp), %r11b
	andb	$1, %r11b
	movzbl	%r11b, %edx
	xorl	%ebx, %ebx
	#APP
	testb	%r10b, %r10b
	cmovnel	%ebx, %edx
	#NO_APP
	movb	%dl, %r10b
	andb	$1, %r10b
	movb	%r10b, -1(%rsp)
	andb	$1, %r9b
	andb	%al, %r9b
	movb	-2(%rsp), %al
	andb	$1, %al
	movzbl	%al, %edx
	xorl	%ebx, %ebx
	#APP
	testb	%r9b, %r9b
	cmovnel	%ebx, %edx
	#NO_APP
	movb	%dl, %al
	andb	$1, %al
	movb	%al, -2(%rsp)
# %bb.3:                                #   in Loop: Header=BB6_1 Depth=1
	movl	-32(%rsp), %eax         # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -28(%rsp)         # 4-byte Spill
	jmp	.LBB6_1
.LBB6_4:
	movzbl	-1(%rsp), %eax
	movb	-2(%rsp), %cl
	movl	$1, %edx
	#APP
	testb	%cl, %cl
	cmovnel	%edx, %eax
	#NO_APP
	andl	$1, %eax
	movb	%al, %sil
	movb	%sil, -1(%rsp)
	movzbl	-2(%rsp), %eax
	xorl	%edx, %edx
	#APP
	testb	%cl, %cl
	cmovnel	%edx, %eax
	#NO_APP
	andl	$1, %eax
	movb	%al, %cl
	movb	%cl, -2(%rsp)
	movb	-1(%rsp), %al
	popq	%rbx
	retq
.Lfunc_end6:
	.size	_crypto_verify_16, .Lfunc_end6-_crypto_verify_16
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_onetimeauth_poly1305_verify
	.type	_crypto_onetimeauth_poly1305_verify,@function
_crypto_onetimeauth_poly1305_verify:    # @_crypto_onetimeauth_poly1305_verify
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movb	$0, 55(%rsp)
	movb	$1, 54(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rax
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, 16(%rsp)          # 8-byte Spill
	callq	_crypto_onetimeauth_poly1305
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
	movl	%eax, 12(%rsp)          # 4-byte Spill
	callq	_crypto_verify_16
	movb	%al, %r8b
	movb	%r8b, 11(%rsp)          # 1-byte Spill
	addq	$56, %rsp
	retq
.Lfunc_end7:
	.size	_crypto_onetimeauth_poly1305_verify, .Lfunc_end7-_crypto_onetimeauth_poly1305_verify
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function u0
	.type	u0,@function
u0:                                     # @u0
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
	subq	$296, %rsp              # imm = 0x128
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	xorl	%eax, %eax
	movl	%eax, %r9d
	movb	$1, -58(%rbp)
	movq	%rsp, %r10
	movq	$0, -56(%rbp)
	movb	$1, -57(%rbp)
	movq	%rdx, %r11
	shrq	$6, %r11
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r8, -104(%rbp)         # 8-byte Spill
	movq	%r11, -112(%rbp)        # 8-byte Spill
	movq	%r10, -120(%rbp)        # 8-byte Spill
	movq	%r9, -128(%rbp)         # 8-byte Spill
.LBB8_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_3 Depth 2
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jae	.LBB8_6
# %bb.2:                                #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movq	-136(%rbp), %rcx        # 8-byte Reload
	shlq	$6, %rcx
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movaps	(%rdx), %xmm0
	movq	%rsp, %rsi
	movq	%rsi, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movaps	%xmm0, -16(%rsi)
	movaps	16(%rdx), %xmm0
	movq	%rsp, %rsi
	movq	%rsi, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movaps	%xmm0, -16(%rsi)
	movaps	32(%rdx), %xmm0
	movq	%rsp, %r9
	movq	%r9, %r10
	addq	$-16, %r10
	movq	%r10, %rsp
	movaps	%xmm0, -16(%r9)
	movaps	48(%rdx), %xmm0
	movq	%rsp, %r9
	movq	%r9, %r11
	addq	$-16, %r11
	movq	%r11, %rsp
	movaps	%xmm0, -16(%r9)
	movaps	-16(%rsi), %xmm0
	movq	%rsp, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movdqa	%xmm0, (%rsi)
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%r8, -168(%rbp)         # 8-byte Spill
	movq	%r11, -176(%rbp)        # 8-byte Spill
	movq	%r10, -184(%rbp)        # 8-byte Spill
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB8_3:                                #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-188(%rbp), %eax        # 4-byte Reload
	cmpl	$5, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jae	.LBB8_5
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=2
	movq	-144(%rbp), %rax        # 8-byte Reload
	movaps	(%rax), %xmm0
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movaps	(%rcx), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, (%rax)
	movaps	(%rcx), %xmm0
	movq	%rsp, %rdx
	movq	%rdx, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movaps	%xmm0, -16(%rdx)
	movaps	(%rax), %xmm0
	movq	%rsp, %rsi
	movq	%rsi, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movaps	%xmm0, -16(%rsi)
	movaps	(%rax), %xmm0
	pslld	$7, %xmm0
	movaps	%xmm0, (%rax)
	movaps	-16(%rsi), %xmm0
	psrld	$25, %xmm0
	movaps	%xmm0, -16(%rsi)
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movaps	(%rdi), %xmm0
	movaps	(%rax), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rdi)
	movaps	(%rdi), %xmm0
	movaps	-16(%rsi), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rdi)
	movaps	-16(%rdx), %xmm0
	movaps	(%rdi), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%rdx)
	movaps	(%rdi), %xmm0
	movq	%rsp, %r8
	movq	%r8, %r9
	addq	$-16, %r9
	movq	%r9, %rsp
	movaps	%xmm0, -16(%r8)
	movaps	-16(%rdx), %xmm0
	movq	%rsp, %r9
	movq	%r9, %r10
	addq	$-16, %r10
	movq	%r10, %rsp
	movaps	%xmm0, -16(%r9)
	movaps	-16(%rdx), %xmm0
	pslld	$9, %xmm0
	movaps	%xmm0, -16(%rdx)
	movaps	-16(%r9), %xmm0
	psrld	$23, %xmm0
	movaps	%xmm0, -16(%r9)
	movq	-184(%rbp), %r10        # 8-byte Reload
	movaps	(%r10), %xmm0
	movaps	-16(%rdx), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%r10)
	movaps	(%rdi), %xmm0
	pshufd	$147, %xmm0, %xmm0      # xmm0 = xmm0[3,0,1,2]
	movaps	%xmm0, (%rdi)
	movaps	(%r10), %xmm0
	movaps	-16(%r9), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%r10)
	movaps	-16(%r8), %xmm0
	movaps	(%r10), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%r8)
	movaps	(%r10), %xmm0
	movq	%rsp, %r11
	movq	%r11, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movaps	%xmm0, -16(%r11)
	movaps	-16(%r8), %xmm0
	movq	%rsp, %rbx
	movq	%rbx, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movaps	%xmm0, -16(%rbx)
	movaps	-16(%r8), %xmm0
	pslld	$13, %xmm0
	movaps	%xmm0, -16(%r8)
	movaps	-16(%rbx), %xmm0
	psrld	$19, %xmm0
	movaps	%xmm0, -16(%rbx)
	movq	-168(%rbp), %r14        # 8-byte Reload
	movaps	(%r14), %xmm0
	movaps	-16(%r8), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%r14)
	movaps	(%r10), %xmm0
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movaps	%xmm0, (%r10)
	movaps	(%r14), %xmm0
	movaps	-16(%rbx), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%r14)
	movaps	-16(%r11), %xmm0
	movaps	(%r14), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%r11)
	movaps	(%rdi), %xmm0
	movq	%rsp, %r15
	movq	%r15, %r12
	addq	$-16, %r12
	movq	%r12, %rsp
	movaps	%xmm0, -16(%r15)
	movaps	-16(%r11), %xmm0
	movq	%rsp, %r12
	movq	%r12, %r13
	addq	$-16, %r13
	movq	%r13, %rsp
	movaps	%xmm0, -16(%r12)
	movaps	-16(%r11), %xmm0
	pslld	$18, %xmm0
	movaps	%xmm0, -16(%r11)
	movaps	-16(%r12), %xmm0
	psrld	$14, %xmm0
	movaps	%xmm0, -16(%r12)
	movaps	(%rcx), %xmm0
	movaps	-16(%r11), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rcx)
	movaps	(%r14), %xmm0
	pshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	movaps	%xmm0, (%r14)
	movaps	(%rcx), %xmm0
	movaps	-16(%r12), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rcx)
	movaps	-16(%r15), %xmm0
	movaps	(%rcx), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%r15)
	movaps	(%rcx), %xmm0
	movq	%rsp, %r13
	movq	%r13, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movaps	%xmm0, -16(%r13)
	movaps	-16(%r15), %xmm0
	movq	%rsp, %rax
	movq	%rax, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movaps	%xmm0, -16(%rax)
	movaps	-16(%r15), %xmm0
	pslld	$7, %xmm0
	movaps	%xmm0, -16(%r15)
	movaps	-16(%rax), %xmm0
	psrld	$25, %xmm0
	movaps	%xmm0, -16(%rax)
	movaps	(%r14), %xmm0
	movaps	-16(%r15), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%r14)
	movaps	(%r14), %xmm0
	movaps	-16(%rax), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%r14)
	movaps	-16(%r13), %xmm0
	movaps	(%r14), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%r13)
	movaps	(%r14), %xmm0
	movq	%rsp, %rcx
	movq	%rcx, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movaps	%xmm0, -16(%rcx)
	movaps	-16(%r13), %xmm0
	movq	%rsp, %rdi
	movq	%rdi, %r10
	addq	$-16, %r10
	movq	%r10, %rsp
	movaps	%xmm0, -16(%rdi)
	movaps	-16(%r13), %xmm0
	pslld	$9, %xmm0
	movaps	%xmm0, -16(%r13)
	movaps	-16(%rdi), %xmm0
	psrld	$23, %xmm0
	movaps	%xmm0, -16(%rdi)
	movq	-184(%rbp), %r10        # 8-byte Reload
	movaps	(%r10), %xmm0
	movaps	-16(%r13), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%r10)
	movaps	(%r14), %xmm0
	pshufd	$147, %xmm0, %xmm0      # xmm0 = xmm0[3,0,1,2]
	movaps	%xmm0, (%r14)
	movaps	(%r10), %xmm0
	movaps	-16(%rdi), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%r10)
	movaps	-16(%rcx), %xmm0
	movaps	(%r10), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%rcx)
	movaps	(%r10), %xmm0
	movq	%rsp, %r10
	movq	%r10, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movaps	%xmm0, -16(%r10)
	movaps	-16(%rcx), %xmm0
	movq	%rsp, %r14
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%r14, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movaps	%xmm0, -16(%r14)
	movaps	-16(%rcx), %xmm0
	pslld	$13, %xmm0
	movaps	%xmm0, -16(%rcx)
	movaps	-16(%r14), %xmm0
	psrld	$19, %xmm0
	movaps	%xmm0, -16(%r14)
	movq	-176(%rbp), %rax        # 8-byte Reload
	movaps	(%rax), %xmm0
	movaps	-16(%rcx), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rax)
	movq	-184(%rbp), %rax        # 8-byte Reload
	movaps	(%rax), %xmm0
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movaps	%xmm0, (%rax)
	movq	-176(%rbp), %rax        # 8-byte Reload
	movaps	(%rax), %xmm0
	movaps	-16(%r14), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rax)
	movaps	-16(%r10), %xmm0
	movaps	(%rax), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%r10)
	movq	-168(%rbp), %rax        # 8-byte Reload
	movaps	(%rax), %xmm0
	movq	-144(%rbp), %rax        # 8-byte Reload
	movaps	%xmm0, (%rax)
	movaps	-16(%r10), %xmm0
	movq	%rsp, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	-208(%rbp), %rax        # 8-byte Reload
	movaps	%xmm0, -16(%rax)
	movaps	-16(%r10), %xmm0
	pslld	$18, %xmm0
	movaps	%xmm0, -16(%r10)
	movaps	-16(%rax), %xmm0
	psrld	$14, %xmm0
	movaps	%xmm0, -16(%rax)
	movq	-160(%rbp), %rax        # 8-byte Reload
	movaps	(%rax), %xmm0
	movaps	-16(%r10), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rax)
	movq	-176(%rbp), %rax        # 8-byte Reload
	movaps	(%rax), %xmm0
	pshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	movaps	%xmm0, (%rax)
	movq	-160(%rbp), %rax        # 8-byte Reload
	movaps	(%rax), %xmm0
	movq	-208(%rbp), %rax        # 8-byte Reload
	movaps	-16(%rax), %xmm1
	pxor	%xmm1, %xmm0
	movq	-160(%rbp), %rax        # 8-byte Reload
	movaps	%xmm0, (%rax)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movaps	(%rax), %xmm0
	movq	-160(%rbp), %rax        # 8-byte Reload
	movaps	(%rax), %xmm1
	paddd	%xmm1, %xmm0
	movq	-144(%rbp), %rax        # 8-byte Reload
	movaps	%xmm0, (%rax)
	movq	-160(%rbp), %rax        # 8-byte Reload
	movaps	(%rax), %xmm0
	movaps	%xmm0, -16(%rdx)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movaps	(%rax), %xmm0
	movaps	%xmm0, -16(%rsi)
	movaps	(%rax), %xmm0
	pslld	$7, %xmm0
	movaps	%xmm0, (%rax)
	movaps	-16(%rsi), %xmm0
	psrld	$25, %xmm0
	movaps	%xmm0, -16(%rsi)
	movq	-176(%rbp), %rax        # 8-byte Reload
	movaps	(%rax), %xmm0
	movq	-144(%rbp), %rax        # 8-byte Reload
	movaps	(%rax), %xmm1
	pxor	%xmm1, %xmm0
	movq	-176(%rbp), %rax        # 8-byte Reload
	movaps	%xmm0, (%rax)
	movaps	(%rax), %xmm0
	movaps	-16(%rsi), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rax)
	movaps	-16(%rdx), %xmm0
	movaps	(%rax), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%rdx)
	movaps	(%rax), %xmm0
	movaps	%xmm0, -16(%r8)
	movaps	-16(%rdx), %xmm0
	movaps	%xmm0, -16(%r9)
	movaps	-16(%rdx), %xmm0
	pslld	$9, %xmm0
	movaps	%xmm0, -16(%rdx)
	movaps	-16(%r9), %xmm0
	psrld	$23, %xmm0
	movaps	%xmm0, -16(%r9)
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movaps	(%rsi), %xmm0
	movaps	-16(%rdx), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rsi)
	movaps	(%rax), %xmm0
	pshufd	$147, %xmm0, %xmm0      # xmm0 = xmm0[3,0,1,2]
	movaps	%xmm0, (%rax)
	movaps	(%rsi), %xmm0
	movaps	-16(%r9), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rsi)
	movaps	-16(%r8), %xmm0
	movaps	(%rsi), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%r8)
	movaps	(%rsi), %xmm0
	movaps	%xmm0, -16(%r11)
	movaps	-16(%r8), %xmm0
	movaps	%xmm0, -16(%rbx)
	movaps	-16(%r8), %xmm0
	pslld	$13, %xmm0
	movaps	%xmm0, -16(%r8)
	movaps	-16(%rbx), %xmm0
	psrld	$19, %xmm0
	movaps	%xmm0, -16(%rbx)
	movq	-168(%rbp), %rdx        # 8-byte Reload
	movaps	(%rdx), %xmm0
	movaps	-16(%r8), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rdx)
	movaps	(%rsi), %xmm0
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movaps	%xmm0, (%rsi)
	movaps	(%rdx), %xmm0
	movaps	-16(%rbx), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rdx)
	movaps	-16(%r11), %xmm0
	movaps	(%rdx), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%r11)
	movaps	(%rax), %xmm0
	movaps	%xmm0, -16(%r15)
	movaps	-16(%r11), %xmm0
	movaps	%xmm0, -16(%r12)
	movaps	-16(%r11), %xmm0
	pslld	$18, %xmm0
	movaps	%xmm0, -16(%r11)
	movaps	-16(%r12), %xmm0
	psrld	$14, %xmm0
	movaps	%xmm0, -16(%r12)
	movq	-160(%rbp), %r8         # 8-byte Reload
	movaps	(%r8), %xmm0
	movaps	-16(%r11), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%r8)
	movaps	(%rdx), %xmm0
	pshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	movaps	%xmm0, (%rdx)
	movaps	(%r8), %xmm0
	movaps	-16(%r12), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%r8)
	movaps	-16(%r15), %xmm0
	movaps	(%r8), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%r15)
	movaps	(%r8), %xmm0
	movaps	%xmm0, -16(%r13)
	movaps	-16(%r15), %xmm0
	movq	-200(%rbp), %r9         # 8-byte Reload
	movaps	%xmm0, -16(%r9)
	movaps	-16(%r15), %xmm0
	pslld	$7, %xmm0
	movaps	%xmm0, -16(%r15)
	movaps	-16(%r9), %xmm0
	psrld	$25, %xmm0
	movaps	%xmm0, -16(%r9)
	movaps	(%rdx), %xmm0
	movaps	-16(%r15), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rdx)
	movaps	(%rdx), %xmm0
	movaps	-16(%r9), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rdx)
	movaps	-16(%r13), %xmm0
	movaps	(%rdx), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%r13)
	movaps	(%rdx), %xmm0
	movaps	%xmm0, -16(%rcx)
	movaps	-16(%r13), %xmm0
	movaps	%xmm0, -16(%rdi)
	movaps	-16(%r13), %xmm0
	pslld	$9, %xmm0
	movaps	%xmm0, -16(%r13)
	movaps	-16(%rdi), %xmm0
	psrld	$23, %xmm0
	movaps	%xmm0, -16(%rdi)
	movaps	(%rsi), %xmm0
	movaps	-16(%r13), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rsi)
	movaps	(%rdx), %xmm0
	pshufd	$147, %xmm0, %xmm0      # xmm0 = xmm0[3,0,1,2]
	movaps	%xmm0, (%rdx)
	movaps	(%rsi), %xmm0
	movaps	-16(%rdi), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rsi)
	movaps	-16(%rcx), %xmm0
	movaps	(%rsi), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%rcx)
	movaps	(%rsi), %xmm0
	movaps	%xmm0, -16(%r10)
	movaps	-16(%rcx), %xmm0
	movaps	%xmm0, -16(%r14)
	movaps	-16(%rcx), %xmm0
	pslld	$13, %xmm0
	movaps	%xmm0, -16(%rcx)
	movaps	-16(%r14), %xmm0
	psrld	$19, %xmm0
	movaps	%xmm0, -16(%r14)
	movaps	(%rax), %xmm0
	movaps	-16(%rcx), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rax)
	movaps	(%rsi), %xmm0
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movaps	%xmm0, (%rsi)
	movaps	(%rax), %xmm0
	movaps	-16(%r14), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rax)
	movaps	-16(%r10), %xmm0
	movaps	(%rax), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%r10)
	movaps	(%rdx), %xmm0
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movaps	%xmm0, (%rcx)
	movaps	-16(%r10), %xmm0
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movaps	%xmm0, -16(%rdi)
	movaps	-16(%r10), %xmm0
	pslld	$18, %xmm0
	movaps	%xmm0, -16(%r10)
	movaps	-16(%rdi), %xmm0
	psrld	$14, %xmm0
	movaps	%xmm0, -16(%rdi)
	movaps	(%r8), %xmm0
	movaps	-16(%r10), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%r8)
	movaps	(%rax), %xmm0
	pshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	movaps	%xmm0, (%rax)
	movaps	(%r8), %xmm0
	movaps	-16(%rdi), %xmm1
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, (%r8)
	movl	-192(%rbp), %esi        # 4-byte Reload
	addl	$1, %esi
	movl	%esi, -188(%rbp)        # 4-byte Spill
	jmp	.LBB8_3
.LBB8_5:                                #   in Loop: Header=BB8_1 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movaps	(%rax), %xmm0
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movaps	(%rcx), %xmm1
	paddd	%xmm0, %xmm1
	movaps	%xmm1, (%rcx)
	movaps	16(%rax), %xmm0
	movq	-168(%rbp), %rdx        # 8-byte Reload
	movaps	(%rdx), %xmm1
	paddd	%xmm0, %xmm1
	movaps	%xmm1, (%rdx)
	movaps	32(%rax), %xmm0
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movaps	(%rsi), %xmm1
	paddd	%xmm0, %xmm1
	movaps	%xmm1, (%rsi)
	movaps	48(%rax), %xmm0
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movaps	(%rdi), %xmm1
	paddd	%xmm0, %xmm1
	movaps	%xmm1, (%rdi)
	movl	(%rcx), %r8d
	movq	%rsp, %r9
	movq	%r9, %r10
	addq	$-16, %r10
	movq	%r10, %rsp
	movl	%r8d, -16(%r9)
	movl	(%rdx), %r8d
	movq	%rsp, %r10
	movq	%r10, %r11
	addq	$-16, %r11
	movq	%r11, %rsp
	movl	%r8d, -16(%r10)
	movl	(%rsi), %r8d
	movq	%rsp, %r11
	movq	%r11, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movl	%r8d, -16(%r11)
	movl	(%rdi), %r8d
	movq	%rsp, %rbx
	movq	%rbx, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movl	%r8d, -16(%rbx)
	movaps	(%rcx), %xmm0
	pshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	movaps	%xmm0, (%rcx)
	movaps	(%rdx), %xmm0
	pshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	movaps	%xmm0, (%rdx)
	movaps	(%rsi), %xmm0
	pshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	movaps	%xmm0, (%rsi)
	movaps	(%rdi), %xmm0
	pshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	movaps	%xmm0, (%rdi)
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	-152(%rbp), %r15        # 8-byte Reload
	movl	(%r14,%r15), %r8d
	movl	-16(%r9), %r12d
	xorl	%r8d, %r12d
	movl	%r12d, -16(%r9)
	movl	48(%r14,%r15), %r8d
	movl	-16(%r10), %r12d
	xorl	%r8d, %r12d
	movl	%r12d, -16(%r10)
	movl	32(%r14,%r15), %r8d
	movl	-16(%r11), %r12d
	xorl	%r8d, %r12d
	movl	%r12d, -16(%r11)
	movl	16(%r14,%r15), %r8d
	movl	-16(%rbx), %r12d
	xorl	%r8d, %r12d
	movl	%r12d, -16(%rbx)
	movl	-16(%r9), %r8d
	movq	-72(%rbp), %r9          # 8-byte Reload
	movl	%r8d, (%r9,%r15)
	movl	-16(%r10), %r8d
	movl	%r8d, 48(%r9,%r15)
	movl	-16(%r11), %r8d
	movl	%r8d, 32(%r9,%r15)
	movl	-16(%rbx), %r8d
	movl	%r8d, 16(%r9,%r15)
	movl	(%rcx), %r8d
	movq	%rsp, %r10
	movq	%r10, %r11
	addq	$-16, %r11
	movq	%r11, %rsp
	movl	%r8d, -16(%r10)
	movl	(%rdx), %r8d
	movq	%rsp, %r11
	movq	%r11, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movl	%r8d, -16(%r11)
	movl	(%rsi), %r8d
	movq	%rsp, %rbx
	movq	%rbx, %r13
	addq	$-16, %r13
	movq	%r13, %rsp
	movl	%r8d, -16(%rbx)
	movl	(%rdi), %r8d
	movq	%rsp, %r13
	movq	%r13, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movl	%r8d, -16(%r13)
	movaps	(%rcx), %xmm0
	pshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	movaps	%xmm0, (%rcx)
	movaps	(%rdx), %xmm0
	pshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	movaps	%xmm0, (%rdx)
	movaps	(%rsi), %xmm0
	pshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	movaps	%xmm0, (%rsi)
	movaps	(%rdi), %xmm0
	pshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	movaps	%xmm0, (%rdi)
	movl	20(%r14,%r15), %r8d
	movl	-16(%r10), %r12d
	xorl	%r8d, %r12d
	movl	%r12d, -16(%r10)
	movl	4(%r14,%r15), %r8d
	movl	-16(%r11), %r12d
	xorl	%r8d, %r12d
	movl	%r12d, -16(%r11)
	movl	52(%r14,%r15), %r8d
	movl	-16(%rbx), %r12d
	xorl	%r8d, %r12d
	movl	%r12d, -16(%rbx)
	movl	36(%r14,%r15), %r8d
	movl	-16(%r13), %r12d
	xorl	%r8d, %r12d
	movl	%r12d, -16(%r13)
	movl	-16(%r10), %r8d
	movl	%r8d, 20(%r9,%r15)
	movl	-16(%r11), %r8d
	movl	%r8d, 4(%r9,%r15)
	movl	-16(%rbx), %r8d
	movl	%r8d, 52(%r9,%r15)
	movl	-16(%r13), %r8d
	movl	%r8d, 36(%r9,%r15)
	movl	(%rcx), %r8d
	movq	%rsp, %rax
	movq	%rax, %r10
	addq	$-16, %r10
	movq	%r10, %rsp
	movl	%r8d, -16(%rax)
	movl	(%rdx), %r8d
	movq	%rsp, %r10
	movq	%r10, %r11
	addq	$-16, %r11
	movq	%r11, %rsp
	movl	%r8d, -16(%r10)
	movl	(%rsi), %r8d
	movq	%rsp, %r11
	movq	%r11, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movl	%r8d, -16(%r11)
	movl	(%rdi), %r8d
	movq	%rsp, %rbx
	movq	%rbx, %r13
	addq	$-16, %r13
	movq	%r13, %rsp
	movl	%r8d, -16(%rbx)
	movaps	(%rcx), %xmm0
	pshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	movaps	%xmm0, (%rcx)
	movaps	(%rdx), %xmm0
	pshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	movaps	%xmm0, (%rdx)
	movaps	(%rsi), %xmm0
	pshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	movaps	%xmm0, (%rsi)
	movaps	(%rdi), %xmm0
	pshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	movaps	%xmm0, (%rdi)
	movl	40(%r14,%r15), %r8d
	movl	-16(%rax), %r12d
	xorl	%r8d, %r12d
	movl	%r12d, -16(%rax)
	movl	24(%r14,%r15), %r8d
	movl	-16(%r10), %r12d
	xorl	%r8d, %r12d
	movl	%r12d, -16(%r10)
	movl	8(%r14,%r15), %r8d
	movl	-16(%r11), %r12d
	xorl	%r8d, %r12d
	movl	%r12d, -16(%r11)
	movl	56(%r14,%r15), %r8d
	movl	-16(%rbx), %r12d
	xorl	%r8d, %r12d
	movl	%r12d, -16(%rbx)
	movl	-16(%rax), %r8d
	movl	%r8d, 40(%r9,%r15)
	movl	-16(%r10), %r8d
	movl	%r8d, 24(%r9,%r15)
	movl	-16(%r11), %r8d
	movl	%r8d, 8(%r9,%r15)
	movl	-16(%rbx), %r8d
	movl	%r8d, 56(%r9,%r15)
	movl	(%rcx), %r8d
	movq	%rsp, %rax
	movq	%rax, %r10
	addq	$-16, %r10
	movq	%r10, %rsp
	movl	%r8d, -16(%rax)
	movl	(%rdx), %r8d
	movq	%rsp, %r10
	movq	%r10, %r11
	addq	$-16, %r11
	movq	%r11, %rsp
	movl	%r8d, -16(%r10)
	movl	(%rsi), %r8d
	movq	%rsp, %r11
	movq	%r11, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movl	%r8d, -16(%r11)
	movl	(%rdi), %r8d
	movq	%rsp, %rbx
	movq	%rbx, %r13
	addq	$-16, %r13
	movq	%r13, %rsp
	movl	%r8d, -16(%rbx)
	movaps	(%rcx), %xmm0
	pshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	movaps	%xmm0, (%rcx)
	movaps	(%rdx), %xmm0
	pshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	movaps	%xmm0, (%rdx)
	movaps	(%rsi), %xmm0
	pshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	movaps	%xmm0, (%rsi)
	movaps	(%rdi), %xmm0
	pshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	movaps	%xmm0, (%rdi)
	movl	60(%r14,%r15), %r8d
	movl	-16(%rax), %r12d
	xorl	%r8d, %r12d
	movl	%r12d, -16(%rax)
	movl	44(%r14,%r15), %r8d
	movl	-16(%r10), %r12d
	xorl	%r8d, %r12d
	movl	%r12d, -16(%r10)
	movl	28(%r14,%r15), %r8d
	movl	-16(%r11), %r12d
	xorl	%r8d, %r12d
	movl	%r12d, -16(%r11)
	movl	12(%r14,%r15), %r8d
	movl	-16(%rbx), %r12d
	xorl	%r8d, %r12d
	movl	%r12d, -16(%rbx)
	movl	-16(%rax), %r8d
	movl	%r8d, 60(%r9,%r15)
	movl	-16(%r10), %r8d
	movl	%r8d, 44(%r9,%r15)
	movl	-16(%r11), %r8d
	movl	%r8d, 28(%r9,%r15)
	movl	-16(%rbx), %r8d
	movl	%r8d, 12(%r9,%r15)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	32(%rax), %r8d
	movq	%rsp, %r10
	movq	%r10, %r11
	addq	$-16, %r11
	movq	%r11, %rsp
	movl	%r8d, -16(%r10)
	movl	52(%rax), %r8d
	movq	%rsp, %r10
	addq	$-16, %r10
	movq	%r10, %rsp
	movl	%r8d, (%r10)
	movl	(%r11), %r8d
	addl	$1, %r8d
	movl	%r8d, (%r11)
	cmpl	$0, (%r11)
	sete	%al
	movl	(%r10), %r8d
	addl	$1, %r8d
	movl	(%r10), %r12d
	#APP
	testb	%al, %al
	cmovnel	%r8d, %r12d
	#NO_APP
	movl	%r12d, (%r10)
	movl	(%r11), %r8d
	movq	-96(%rbp), %r11         # 8-byte Reload
	movl	%r8d, 32(%r11)
	movl	(%r10), %r8d
	movl	%r8d, 52(%r11)
	movq	-136(%rbp), %r10        # 8-byte Reload
	addq	$1, %r10
	movq	%r10, -128(%rbp)        # 8-byte Spill
	jmp	.LBB8_1
.LBB8_6:                                # %_u1.exit
	movq	-80(%rbp), %rax         # 8-byte Reload
	shrq	$6, %rax
	shlq	$6, %rax
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, %rsp
	movq	-80(%rbp), %rdx         # 8-byte Reload
	subq	%rax, %rdx
	movq	-88(%rbp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	addq	%rax, %rdi
	movq	%rsp, %rax
	movb	$1, -41(%rbp)
	cmpq	$0, %rdx
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jbe	.LBB8_8
# %bb.7:
	xorl	%eax, %eax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movaps	(%rcx), %xmm0
	movq	%rsp, %rdx
	movq	%rdx, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movaps	%xmm0, -16(%rdx)
	movaps	16(%rcx), %xmm0
	movq	%rsp, %rdx
	movq	%rdx, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movaps	%xmm0, -16(%rdx)
	movaps	32(%rcx), %xmm0
	movq	%rsp, %r8
	movq	%r8, %r9
	addq	$-16, %r9
	movq	%r9, %rsp
	movaps	%xmm0, -16(%r8)
	movaps	48(%rcx), %xmm0
	movq	%rsp, %r8
	movq	%r8, %r10
	addq	$-16, %r10
	movq	%r10, %rsp
	movaps	%xmm0, -16(%r8)
	movaps	-16(%rdx), %xmm0
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movdqa	%xmm0, (%rdx)
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%r10, -272(%rbp)        # 8-byte Spill
	movq	%r9, -280(%rbp)         # 8-byte Spill
	movl	%eax, -284(%rbp)        # 4-byte Spill
	jmp	.LBB8_9
.LBB8_8:
	jmp	.LBB8_15
.LBB8_9:                                # =>This Inner Loop Header: Depth=1
	movl	-284(%rbp), %eax        # 4-byte Reload
	cmpl	$5, %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
	jae	.LBB8_11
# %bb.10:                               #   in Loop: Header=BB8_9 Depth=1
	movq	-248(%rbp), %rax        # 8-byte Reload
	movaps	(%rax), %xmm0
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movaps	(%rcx), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, (%rax)
	movaps	(%rcx), %xmm0
	movq	%rsp, %rdx
	movq	%rdx, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movaps	%xmm0, -16(%rdx)
	movaps	(%rax), %xmm0
	movq	%rsp, %rsi
	movq	%rsi, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movaps	%xmm0, -16(%rsi)
	movaps	(%rax), %xmm0
	pslld	$7, %xmm0
	movaps	%xmm0, (%rax)
	movaps	-16(%rsi), %xmm0
	psrld	$25, %xmm0
	movaps	%xmm0, -16(%rsi)
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movaps	(%rdi), %xmm0
	movaps	(%rax), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rdi)
	movaps	(%rdi), %xmm0
	movaps	-16(%rsi), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rdi)
	movaps	-16(%rdx), %xmm0
	movaps	(%rdi), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%rdx)
	movaps	(%rdi), %xmm0
	movq	%rsp, %r8
	movq	%r8, %r9
	addq	$-16, %r9
	movq	%r9, %rsp
	movaps	%xmm0, -16(%r8)
	movaps	-16(%rdx), %xmm0
	movq	%rsp, %r9
	movq	%r9, %r10
	addq	$-16, %r10
	movq	%r10, %rsp
	movaps	%xmm0, -16(%r9)
	movaps	-16(%rdx), %xmm0
	pslld	$9, %xmm0
	movaps	%xmm0, -16(%rdx)
	movaps	-16(%r9), %xmm0
	psrld	$23, %xmm0
	movaps	%xmm0, -16(%r9)
	movq	-280(%rbp), %r10        # 8-byte Reload
	movaps	(%r10), %xmm0
	movaps	-16(%rdx), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%r10)
	movaps	(%rdi), %xmm0
	pshufd	$147, %xmm0, %xmm0      # xmm0 = xmm0[3,0,1,2]
	movaps	%xmm0, (%rdi)
	movaps	(%r10), %xmm0
	movaps	-16(%r9), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%r10)
	movaps	-16(%r8), %xmm0
	movaps	(%r10), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%r8)
	movaps	(%r10), %xmm0
	movq	%rsp, %r11
	movq	%r11, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movaps	%xmm0, -16(%r11)
	movaps	-16(%r8), %xmm0
	movq	%rsp, %rbx
	movq	%rbx, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movaps	%xmm0, -16(%rbx)
	movaps	-16(%r8), %xmm0
	pslld	$13, %xmm0
	movaps	%xmm0, -16(%r8)
	movaps	-16(%rbx), %xmm0
	psrld	$19, %xmm0
	movaps	%xmm0, -16(%rbx)
	movq	-264(%rbp), %r14        # 8-byte Reload
	movaps	(%r14), %xmm0
	movaps	-16(%r8), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%r14)
	movaps	(%r10), %xmm0
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movaps	%xmm0, (%r10)
	movaps	(%r14), %xmm0
	movaps	-16(%rbx), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%r14)
	movaps	-16(%r11), %xmm0
	movaps	(%r14), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%r11)
	movaps	(%rdi), %xmm0
	movq	%rsp, %r15
	movq	%r15, %r12
	addq	$-16, %r12
	movq	%r12, %rsp
	movaps	%xmm0, -16(%r15)
	movaps	-16(%r11), %xmm0
	movq	%rsp, %r12
	movq	%r12, %r13
	addq	$-16, %r13
	movq	%r13, %rsp
	movaps	%xmm0, -16(%r12)
	movaps	-16(%r11), %xmm0
	pslld	$18, %xmm0
	movaps	%xmm0, -16(%r11)
	movaps	-16(%r12), %xmm0
	psrld	$14, %xmm0
	movaps	%xmm0, -16(%r12)
	movaps	(%rcx), %xmm0
	movaps	-16(%r11), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rcx)
	movaps	(%r14), %xmm0
	pshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	movaps	%xmm0, (%r14)
	movaps	(%rcx), %xmm0
	movaps	-16(%r12), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rcx)
	movaps	-16(%r15), %xmm0
	movaps	(%rcx), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%r15)
	movaps	(%rcx), %xmm0
	movq	%rsp, %r13
	movq	%r13, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movaps	%xmm0, -16(%r13)
	movaps	-16(%r15), %xmm0
	movq	%rsp, %rax
	movq	%rax, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movaps	%xmm0, -16(%rax)
	movaps	-16(%r15), %xmm0
	pslld	$7, %xmm0
	movaps	%xmm0, -16(%r15)
	movaps	-16(%rax), %xmm0
	psrld	$25, %xmm0
	movaps	%xmm0, -16(%rax)
	movaps	(%r14), %xmm0
	movaps	-16(%r15), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%r14)
	movaps	(%r14), %xmm0
	movaps	-16(%rax), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%r14)
	movaps	-16(%r13), %xmm0
	movaps	(%r14), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%r13)
	movaps	(%r14), %xmm0
	movq	%rsp, %rcx
	movq	%rcx, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movaps	%xmm0, -16(%rcx)
	movaps	-16(%r13), %xmm0
	movq	%rsp, %rdi
	movq	%rdi, %r10
	addq	$-16, %r10
	movq	%r10, %rsp
	movaps	%xmm0, -16(%rdi)
	movaps	-16(%r13), %xmm0
	pslld	$9, %xmm0
	movaps	%xmm0, -16(%r13)
	movaps	-16(%rdi), %xmm0
	psrld	$23, %xmm0
	movaps	%xmm0, -16(%rdi)
	movq	-280(%rbp), %r10        # 8-byte Reload
	movaps	(%r10), %xmm0
	movaps	-16(%r13), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%r10)
	movaps	(%r14), %xmm0
	pshufd	$147, %xmm0, %xmm0      # xmm0 = xmm0[3,0,1,2]
	movaps	%xmm0, (%r14)
	movaps	(%r10), %xmm0
	movaps	-16(%rdi), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%r10)
	movaps	-16(%rcx), %xmm0
	movaps	(%r10), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%rcx)
	movaps	(%r10), %xmm0
	movq	%rsp, %r10
	movq	%r10, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movaps	%xmm0, -16(%r10)
	movaps	-16(%rcx), %xmm0
	movq	%rsp, %r14
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movq	%r14, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movaps	%xmm0, -16(%r14)
	movaps	-16(%rcx), %xmm0
	pslld	$13, %xmm0
	movaps	%xmm0, -16(%rcx)
	movaps	-16(%r14), %xmm0
	psrld	$19, %xmm0
	movaps	%xmm0, -16(%r14)
	movq	-272(%rbp), %rax        # 8-byte Reload
	movaps	(%rax), %xmm0
	movaps	-16(%rcx), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rax)
	movq	-280(%rbp), %rax        # 8-byte Reload
	movaps	(%rax), %xmm0
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movaps	%xmm0, (%rax)
	movq	-272(%rbp), %rax        # 8-byte Reload
	movaps	(%rax), %xmm0
	movaps	-16(%r14), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rax)
	movaps	-16(%r10), %xmm0
	movaps	(%rax), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%r10)
	movq	-264(%rbp), %rax        # 8-byte Reload
	movaps	(%rax), %xmm0
	movq	-248(%rbp), %rax        # 8-byte Reload
	movaps	%xmm0, (%rax)
	movaps	-16(%r10), %xmm0
	movq	%rsp, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	-304(%rbp), %rax        # 8-byte Reload
	movaps	%xmm0, -16(%rax)
	movaps	-16(%r10), %xmm0
	pslld	$18, %xmm0
	movaps	%xmm0, -16(%r10)
	movaps	-16(%rax), %xmm0
	psrld	$14, %xmm0
	movaps	%xmm0, -16(%rax)
	movq	-256(%rbp), %rax        # 8-byte Reload
	movaps	(%rax), %xmm0
	movaps	-16(%r10), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rax)
	movq	-272(%rbp), %rax        # 8-byte Reload
	movaps	(%rax), %xmm0
	pshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	movaps	%xmm0, (%rax)
	movq	-256(%rbp), %rax        # 8-byte Reload
	movaps	(%rax), %xmm0
	movq	-304(%rbp), %rax        # 8-byte Reload
	movaps	-16(%rax), %xmm1
	pxor	%xmm1, %xmm0
	movq	-256(%rbp), %rax        # 8-byte Reload
	movaps	%xmm0, (%rax)
	movq	-248(%rbp), %rax        # 8-byte Reload
	movaps	(%rax), %xmm0
	movq	-256(%rbp), %rax        # 8-byte Reload
	movaps	(%rax), %xmm1
	paddd	%xmm1, %xmm0
	movq	-248(%rbp), %rax        # 8-byte Reload
	movaps	%xmm0, (%rax)
	movq	-256(%rbp), %rax        # 8-byte Reload
	movaps	(%rax), %xmm0
	movaps	%xmm0, -16(%rdx)
	movq	-248(%rbp), %rax        # 8-byte Reload
	movaps	(%rax), %xmm0
	movaps	%xmm0, -16(%rsi)
	movaps	(%rax), %xmm0
	pslld	$7, %xmm0
	movaps	%xmm0, (%rax)
	movaps	-16(%rsi), %xmm0
	psrld	$25, %xmm0
	movaps	%xmm0, -16(%rsi)
	movq	-272(%rbp), %rax        # 8-byte Reload
	movaps	(%rax), %xmm0
	movq	-248(%rbp), %rax        # 8-byte Reload
	movaps	(%rax), %xmm1
	pxor	%xmm1, %xmm0
	movq	-272(%rbp), %rax        # 8-byte Reload
	movaps	%xmm0, (%rax)
	movaps	(%rax), %xmm0
	movaps	-16(%rsi), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rax)
	movaps	-16(%rdx), %xmm0
	movaps	(%rax), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%rdx)
	movaps	(%rax), %xmm0
	movaps	%xmm0, -16(%r8)
	movaps	-16(%rdx), %xmm0
	movaps	%xmm0, -16(%r9)
	movaps	-16(%rdx), %xmm0
	pslld	$9, %xmm0
	movaps	%xmm0, -16(%rdx)
	movaps	-16(%r9), %xmm0
	psrld	$23, %xmm0
	movaps	%xmm0, -16(%r9)
	movq	-280(%rbp), %rsi        # 8-byte Reload
	movaps	(%rsi), %xmm0
	movaps	-16(%rdx), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rsi)
	movaps	(%rax), %xmm0
	pshufd	$147, %xmm0, %xmm0      # xmm0 = xmm0[3,0,1,2]
	movaps	%xmm0, (%rax)
	movaps	(%rsi), %xmm0
	movaps	-16(%r9), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rsi)
	movaps	-16(%r8), %xmm0
	movaps	(%rsi), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%r8)
	movaps	(%rsi), %xmm0
	movaps	%xmm0, -16(%r11)
	movaps	-16(%r8), %xmm0
	movaps	%xmm0, -16(%rbx)
	movaps	-16(%r8), %xmm0
	pslld	$13, %xmm0
	movaps	%xmm0, -16(%r8)
	movaps	-16(%rbx), %xmm0
	psrld	$19, %xmm0
	movaps	%xmm0, -16(%rbx)
	movq	-264(%rbp), %rdx        # 8-byte Reload
	movaps	(%rdx), %xmm0
	movaps	-16(%r8), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rdx)
	movaps	(%rsi), %xmm0
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movaps	%xmm0, (%rsi)
	movaps	(%rdx), %xmm0
	movaps	-16(%rbx), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rdx)
	movaps	-16(%r11), %xmm0
	movaps	(%rdx), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%r11)
	movaps	(%rax), %xmm0
	movaps	%xmm0, -16(%r15)
	movaps	-16(%r11), %xmm0
	movaps	%xmm0, -16(%r12)
	movaps	-16(%r11), %xmm0
	pslld	$18, %xmm0
	movaps	%xmm0, -16(%r11)
	movaps	-16(%r12), %xmm0
	psrld	$14, %xmm0
	movaps	%xmm0, -16(%r12)
	movq	-256(%rbp), %r8         # 8-byte Reload
	movaps	(%r8), %xmm0
	movaps	-16(%r11), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%r8)
	movaps	(%rdx), %xmm0
	pshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	movaps	%xmm0, (%rdx)
	movaps	(%r8), %xmm0
	movaps	-16(%r12), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%r8)
	movaps	-16(%r15), %xmm0
	movaps	(%r8), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%r15)
	movaps	(%r8), %xmm0
	movaps	%xmm0, -16(%r13)
	movaps	-16(%r15), %xmm0
	movq	-296(%rbp), %r9         # 8-byte Reload
	movaps	%xmm0, -16(%r9)
	movaps	-16(%r15), %xmm0
	pslld	$7, %xmm0
	movaps	%xmm0, -16(%r15)
	movaps	-16(%r9), %xmm0
	psrld	$25, %xmm0
	movaps	%xmm0, -16(%r9)
	movaps	(%rdx), %xmm0
	movaps	-16(%r15), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rdx)
	movaps	(%rdx), %xmm0
	movaps	-16(%r9), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rdx)
	movaps	-16(%r13), %xmm0
	movaps	(%rdx), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%r13)
	movaps	(%rdx), %xmm0
	movaps	%xmm0, -16(%rcx)
	movaps	-16(%r13), %xmm0
	movaps	%xmm0, -16(%rdi)
	movaps	-16(%r13), %xmm0
	pslld	$9, %xmm0
	movaps	%xmm0, -16(%r13)
	movaps	-16(%rdi), %xmm0
	psrld	$23, %xmm0
	movaps	%xmm0, -16(%rdi)
	movaps	(%rsi), %xmm0
	movaps	-16(%r13), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rsi)
	movaps	(%rdx), %xmm0
	pshufd	$147, %xmm0, %xmm0      # xmm0 = xmm0[3,0,1,2]
	movaps	%xmm0, (%rdx)
	movaps	(%rsi), %xmm0
	movaps	-16(%rdi), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rsi)
	movaps	-16(%rcx), %xmm0
	movaps	(%rsi), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%rcx)
	movaps	(%rsi), %xmm0
	movaps	%xmm0, -16(%r10)
	movaps	-16(%rcx), %xmm0
	movaps	%xmm0, -16(%r14)
	movaps	-16(%rcx), %xmm0
	pslld	$13, %xmm0
	movaps	%xmm0, -16(%rcx)
	movaps	-16(%r14), %xmm0
	psrld	$19, %xmm0
	movaps	%xmm0, -16(%r14)
	movaps	(%rax), %xmm0
	movaps	-16(%rcx), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rax)
	movaps	(%rsi), %xmm0
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movaps	%xmm0, (%rsi)
	movaps	(%rax), %xmm0
	movaps	-16(%r14), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rax)
	movaps	-16(%r10), %xmm0
	movaps	(%rax), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%r10)
	movaps	(%rdx), %xmm0
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movaps	%xmm0, (%rcx)
	movaps	-16(%r10), %xmm0
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movaps	%xmm0, -16(%rdi)
	movaps	-16(%r10), %xmm0
	pslld	$18, %xmm0
	movaps	%xmm0, -16(%r10)
	movaps	-16(%rdi), %xmm0
	psrld	$14, %xmm0
	movaps	%xmm0, -16(%rdi)
	movaps	(%r8), %xmm0
	movaps	-16(%r10), %xmm1
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%r8)
	movaps	(%rax), %xmm0
	pshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	movaps	%xmm0, (%rax)
	movaps	(%r8), %xmm0
	movaps	-16(%rdi), %xmm1
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, (%r8)
	movl	-288(%rbp), %esi        # 4-byte Reload
	addl	$1, %esi
	movl	%esi, -284(%rbp)        # 4-byte Spill
	jmp	.LBB8_9
.LBB8_11:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movaps	(%rdx), %xmm0
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movaps	(%rsi), %xmm1
	paddd	%xmm0, %xmm1
	movaps	%xmm1, (%rsi)
	movaps	16(%rdx), %xmm0
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movaps	(%rdi), %xmm1
	paddd	%xmm0, %xmm1
	movaps	%xmm1, (%rdi)
	movaps	32(%rdx), %xmm0
	movq	-280(%rbp), %r8         # 8-byte Reload
	movaps	(%r8), %xmm1
	paddd	%xmm0, %xmm1
	movaps	%xmm1, (%r8)
	movaps	48(%rdx), %xmm0
	movq	-272(%rbp), %r9         # 8-byte Reload
	movaps	(%r9), %xmm1
	paddd	%xmm0, %xmm1
	movaps	%xmm1, (%r9)
	movq	%rsp, %r10
	movq	%r10, %r11
	addq	$-64, %r11
	movq	%r11, %rsp
	xorps	%xmm0, %xmm0
	movups	%xmm0, -16(%r10)
	movups	%xmm0, -32(%r10)
	movups	%xmm0, -48(%r10)
	movups	%xmm0, -64(%r10)
	movaps	(%rsi), %xmm0
	movl	(%rdi), %eax
	movl	(%r8), %ebx
	movl	(%r9), %r14d
	pshufd	$57, %xmm0, %xmm1       # xmm1 = xmm0[1,2,3,0]
	movaps	%xmm1, (%rsi)
	movaps	(%rdi), %xmm1
	pshufd	$57, %xmm1, %xmm1       # xmm1 = xmm1[1,2,3,0]
	movaps	%xmm1, (%rdi)
	movaps	(%r8), %xmm1
	pshufd	$57, %xmm1, %xmm1       # xmm1 = xmm1[1,2,3,0]
	movaps	%xmm1, (%r8)
	movaps	(%r9), %xmm1
	pshufd	$57, %xmm1, %xmm1       # xmm1 = xmm1[1,2,3,0]
	movaps	%xmm1, (%r9)
	movd	%xmm0, -64(%r10)
	movl	%eax, -16(%r10)
	movl	%ebx, -32(%r10)
	movl	%r14d, -48(%r10)
	movaps	(%rsi), %xmm0
	movl	(%rdi), %eax
	movl	(%r8), %ebx
	movl	(%r9), %r14d
	pshufd	$57, %xmm0, %xmm1       # xmm1 = xmm0[1,2,3,0]
	movaps	%xmm1, (%rsi)
	movaps	(%rdi), %xmm1
	pshufd	$57, %xmm1, %xmm1       # xmm1 = xmm1[1,2,3,0]
	movaps	%xmm1, (%rdi)
	movaps	(%r8), %xmm1
	pshufd	$57, %xmm1, %xmm1       # xmm1 = xmm1[1,2,3,0]
	movaps	%xmm1, (%r8)
	movaps	(%r9), %xmm1
	pshufd	$57, %xmm1, %xmm1       # xmm1 = xmm1[1,2,3,0]
	movaps	%xmm1, (%r9)
	movd	%xmm0, -44(%r10)
	movl	%eax, -60(%r10)
	movl	%ebx, -12(%r10)
	movl	%r14d, -28(%r10)
	movaps	(%rsi), %xmm0
	movl	(%rdi), %eax
	movl	(%r8), %ebx
	movl	(%r9), %r14d
	pshufd	$57, %xmm0, %xmm1       # xmm1 = xmm0[1,2,3,0]
	movaps	%xmm1, (%rsi)
	movaps	(%rdi), %xmm1
	pshufd	$57, %xmm1, %xmm1       # xmm1 = xmm1[1,2,3,0]
	movaps	%xmm1, (%rdi)
	movaps	(%r8), %xmm1
	pshufd	$57, %xmm1, %xmm1       # xmm1 = xmm1[1,2,3,0]
	movaps	%xmm1, (%r8)
	movaps	(%r9), %xmm1
	pshufd	$57, %xmm1, %xmm1       # xmm1 = xmm1[1,2,3,0]
	movaps	%xmm1, (%r9)
	movd	%xmm0, -24(%r10)
	movl	%eax, -40(%r10)
	movl	%ebx, -56(%r10)
	movl	%r14d, -8(%r10)
	movaps	(%rsi), %xmm0
	movd	%xmm0, %eax
	movl	(%rdi), %ebx
	movl	(%r8), %r14d
	movl	(%r9), %r15d
	pshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	movaps	%xmm0, (%rsi)
	movaps	(%rdi), %xmm0
	pshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	movaps	%xmm0, (%rdi)
	movaps	(%r8), %xmm0
	pshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	movaps	%xmm0, (%r8)
	movaps	(%r9), %xmm0
	pshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	movdqa	%xmm0, (%r9)
	movl	%eax, 60(%r11)
	movl	%ebx, 44(%r11)
	movl	%r14d, 28(%r11)
	movl	%r15d, 12(%r11)
	movq	%r11, -312(%rbp)        # 8-byte Spill
	movq	%rcx, -320(%rbp)        # 8-byte Spill
.LBB8_12:                               # =>This Inner Loop Header: Depth=1
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jae	.LBB8_14
# %bb.13:                               #   in Loop: Header=BB8_12 Depth=1
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	-328(%rbp), %rcx        # 8-byte Reload
	movb	(%rax,%rcx), %dl
	movq	-312(%rbp), %rsi        # 8-byte Reload
	xorb	(%rsi,%rcx), %dl
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movb	%dl, (%rdi,%rcx)
	addq	$1, %rcx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB8_12
.LBB8_14:
	xorps	%xmm0, %xmm0
	movq	-312(%rbp), %rax        # 8-byte Reload
	movups	%xmm0, 48(%rax)
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 16(%rax)
	movups	%xmm0, (%rax)
.LBB8_15:                               # %_u0.exit
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rsp
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	u0, .Lfunc_end8-u0
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _salsa20_encrypt_bytes
	.type	_salsa20_encrypt_bytes,@function
_salsa20_encrypt_bytes:                 # @_salsa20_encrypt_bytes
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movb	$1, 7(%rsp)
	callq	u0
	popq	%rax
	retq
.Lfunc_end9:
	.size	_salsa20_encrypt_bytes, .Lfunc_end9-_salsa20_encrypt_bytes
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _salsa_ivsetup
	.type	_salsa_ivsetup,@function
_salsa_ivsetup:                         # @_salsa_ivsetup
	.cfi_startproc
# %bb.0:                                # %entry
	movb	$1, -1(%rsp)
	movl	(%rsi), %eax
	movl	%eax, 24(%rdi)
	movl	4(%rsi), %eax
	movl	%eax, 44(%rdi)
	movl	(%rdx), %eax
	movl	%eax, 32(%rdi)
	movl	4(%rdx), %eax
	movl	%eax, 52(%rdi)
	retq
.Lfunc_end10:
	.size	_salsa_ivsetup, .Lfunc_end10-_salsa_ivsetup
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _salsa_keysetup
	.type	_salsa_keysetup,@function
_salsa_keysetup:                        # @_salsa_keysetup
	.cfi_startproc
# %bb.0:                                # %entry
	movb	$1, -1(%rsp)
	movl	$0, -68(%rsp)
	movl	$5, -64(%rsp)
	movl	$10, -60(%rsp)
	movl	$15, -56(%rsp)
	movl	$12, -52(%rsp)
	movl	$1, -48(%rsp)
	movl	$6, -44(%rsp)
	movl	$11, -40(%rsp)
	movl	$8, -36(%rsp)
	movl	$13, -32(%rsp)
	movl	$2, -28(%rsp)
	movl	$7, -24(%rsp)
	movl	$4, -20(%rsp)
	movl	$9, -16(%rsp)
	movl	$14, -12(%rsp)
	movl	$3, -8(%rsp)
	movl	(%rsi), %eax
	movl	%eax, 20(%rdi)
	movl	4(%rsi), %eax
	movl	%eax, 40(%rdi)
	movl	8(%rsi), %eax
	movl	%eax, 60(%rdi)
	movl	12(%rsi), %eax
	movl	%eax, 48(%rdi)
	movl	16(%rsi), %eax
	movl	%eax, 28(%rdi)
	movl	20(%rsi), %eax
	movl	%eax, 16(%rdi)
	movl	24(%rsi), %eax
	movl	%eax, 36(%rdi)
	movl	28(%rsi), %eax
	movl	%eax, 56(%rdi)
	movl	$1634760805, (%rdi)     # imm = 0x61707865
	movl	$857760878, 4(%rdi)     # imm = 0x3320646E
	movl	$2036477234, 8(%rdi)    # imm = 0x79622D32
	movl	$1797285236, 12(%rdi)   # imm = 0x6B206574
	retq
.Lfunc_end11:
	.size	_salsa_keysetup, .Lfunc_end11-_salsa_keysetup
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_stream_salsa20_xor_ic
	.type	_crypto_stream_salsa20_xor_ic,@function
_crypto_stream_salsa20_xor_ic:          # @_crypto_stream_salsa20_xor_ic
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	16(%rbp), %rax
	movl	$0, -4(%rbp)
	movb	$1, -5(%rbp)
	cmpq	$0, %rcx
	movq	%rax, -16(%rbp)         # 8-byte Spill
	movq	%r9, -24(%rbp)          # 8-byte Spill
	movq	%r8, -32(%rbp)          # 8-byte Spill
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	jne	.LBB12_2
# %bb.1:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.LBB12_2:
	jmp	.LBB12_3
.LBB12_3:
	movq	%rsp, %rax
	movq	%rax, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	$0, -16(%rax)
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movq	%rdx, -16(%rax)
	movq	%rsp, %rax
	addq	$-64, %rax
	movq	%rax, %rsp
	movq	%rax, %rsi
	xorps	%xmm0, %xmm0
	movups	%xmm0, 48(%rsi)
	movups	%xmm0, 32(%rsi)
	movups	%xmm0, 16(%rsi)
	movups	%xmm0, (%rsi)
	movq	%rax, %rdi
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	_salsa_keysetup
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	_salsa_ivsetup
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-56(%rbp), %r8          # 8-byte Reload
	callq	_salsa20_encrypt_bytes
	xorl	%eax, %eax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	xorps	%xmm0, %xmm0
	movups	%xmm0, 48(%rcx)
	movups	%xmm0, 32(%rcx)
	movups	%xmm0, 16(%rcx)
	movups	%xmm0, (%rcx)
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	_crypto_stream_salsa20_xor_ic, .Lfunc_end12-_crypto_stream_salsa20_xor_ic
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_stream_xsalsa20_xor_ic
	.type	_crypto_stream_xsalsa20_xor_ic,@function
_crypto_stream_xsalsa20_xor_ic:         # @_crypto_stream_xsalsa20_xor_ic
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	112(%rsp), %rax
	movl	$0, 100(%rsp)
	movb	$1, 99(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	leaq	64(%rsp), %r10
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movq	%r8, %rsi
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%r9, 24(%rsp)           # 8-byte Spill
	movq	%r8, 16(%rsp)           # 8-byte Spill
	callq	_crypto_core_hsalsa20
	movq	16(%rsp), %rax          # 8-byte Reload
	addq	$16, %rax
	movq	%rsp, %rcx
	leaq	64(%rsp), %rdx
	movq	%rdx, (%rcx)
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%rax, %r8
	movq	24(%rsp), %r9           # 8-byte Reload
	callq	_crypto_stream_salsa20_xor_ic
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	addq	$104, %rsp
	retq
.Lfunc_end13:
	.size	_crypto_stream_xsalsa20_xor_ic, .Lfunc_end13-_crypto_stream_xsalsa20_xor_ic
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_stream_xsalsa20_xor
	.type	_crypto_stream_xsalsa20_xor,@function
_crypto_stream_xsalsa20_xor:            # @_crypto_stream_xsalsa20_xor
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	$0, 20(%rsp)
	movb	$1, 19(%rsp)
	movq	%rsp, %rax
	movq	%r9, (%rax)
	xorl	%r10d, %r10d
	movl	%r10d, %r9d
	callq	_crypto_stream_xsalsa20_xor_ic
	addq	$24, %rsp
	retq
.Lfunc_end14:
	.size	_crypto_stream_xsalsa20_xor, .Lfunc_end14-_crypto_stream_xsalsa20_xor
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_secretbox_xsalsa20poly1305
	.type	_crypto_secretbox_xsalsa20poly1305,@function
_crypto_secretbox_xsalsa20poly1305:     # @_crypto_secretbox_xsalsa20poly1305
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movb	$0, 87(%rsp)
	movb	$1, 86(%rsp)
	cmpq	$32, %rcx
	movq	%r8, 72(%rsp)           # 8-byte Spill
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movq	%r9, 32(%rsp)           # 8-byte Spill
	jae	.LBB15_2
# %bb.1:
	xorl	%eax, %eax
	movb	%al, %cl
	movb	%cl, %al
	addq	$88, %rsp
	retq
.LBB15_2:
	jmp	.LBB15_3
.LBB15_3:
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	56(%rsp), %rdx          # 8-byte Reload
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	72(%rsp), %r8           # 8-byte Reload
	movq	32(%rsp), %r9           # 8-byte Reload
	callq	_crypto_stream_xsalsa20_xor
	movq	40(%rsp), %rcx          # 8-byte Reload
	addq	$16, %rcx
	movq	48(%rsp), %rdx          # 8-byte Reload
	subq	$32, %rdx
	movq	40(%rsp), %rsi          # 8-byte Reload
	addq	$32, %rsi
	movq	%rcx, %rdi
	movq	40(%rsp), %rcx          # 8-byte Reload
	movl	%eax, 28(%rsp)          # 4-byte Spill
	callq	_crypto_onetimeauth_poly1305
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movq	%rcx, 16(%rsp)          # 8-byte Spill
.LBB15_4:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	cmpq	$16, %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	jae	.LBB15_7
# %bb.5:                                #   in Loop: Header=BB15_4 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
	movb	$0, (%rax,%rcx)
# %bb.6:                                #   in Loop: Header=BB15_4 Depth=1
	movq	8(%rsp), %rax           # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	jmp	.LBB15_4
.LBB15_7:
	movb	$1, %al
	addq	$88, %rsp
	retq
.Lfunc_end15:
	.size	_crypto_secretbox_xsalsa20poly1305, .Lfunc_end15-_crypto_secretbox_xsalsa20poly1305
	.cfi_endproc
                                        # -- End function
	.globl	_crypto_secretbox       # -- Begin function _crypto_secretbox
	.p2align	4, 0x90
	.type	_crypto_secretbox,@function
_crypto_secretbox:                      # @_crypto_secretbox
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movb	$0, 7(%rsp)
	movb	$1, 6(%rsp)
	callq	_crypto_secretbox_xsalsa20poly1305
	movb	%al, %r10b
	movb	%r10b, 5(%rsp)          # 1-byte Spill
	popq	%rcx
	retq
.Lfunc_end16:
	.size	_crypto_secretbox, .Lfunc_end16-_crypto_secretbox
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _salsa_ivsetup_null
	.type	_salsa_ivsetup_null,@function
_salsa_ivsetup_null:                    # @_salsa_ivsetup_null
	.cfi_startproc
# %bb.0:                                # %entry
	movb	$1, -1(%rsp)
	movl	(%rsi), %eax
	movl	%eax, 24(%rdi)
	movl	4(%rsi), %eax
	movl	%eax, 44(%rdi)
	movl	$0, 32(%rdi)
	movl	$0, 52(%rdi)
	retq
.Lfunc_end17:
	.size	_salsa_ivsetup_null, .Lfunc_end17-_salsa_ivsetup_null
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_stream_salsa20
	.type	_crypto_stream_salsa20,@function
_crypto_stream_salsa20:                 # @_crypto_stream_salsa20
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$0, -4(%rbp)
	movb	$1, -5(%rbp)
	cmpq	$0, %rsi
	movq	%rdx, -16(%rbp)         # 8-byte Spill
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jne	.LBB18_2
# %bb.1:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.LBB18_2:
	jmp	.LBB18_3
.LBB18_3:
	movq	%rsp, %rax
	addq	$-64, %rax
	movq	%rax, %rsp
	movq	%rax, %rcx
	xorps	%xmm0, %xmm0
	movups	%xmm0, 48(%rcx)
	movups	%xmm0, 32(%rcx)
	movups	%xmm0, 16(%rcx)
	movups	%xmm0, (%rcx)
	movq	%rax, %rdi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	_salsa_keysetup
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	callq	_salsa_ivsetup_null
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-24(%rbp), %rdx         # 8-byte Reload
	callq	memset@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movq	-24(%rbp), %r8          # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	_salsa20_encrypt_bytes
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	xorps	%xmm0, %xmm0
	movups	%xmm0, 48(%rcx)
	movups	%xmm0, 32(%rcx)
	movups	%xmm0, 16(%rcx)
	movups	%xmm0, (%rcx)
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	_crypto_stream_salsa20, .Lfunc_end18-_crypto_stream_salsa20
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_stream_xsalsa20
	.type	_crypto_stream_xsalsa20,@function
_crypto_stream_xsalsa20:                # @_crypto_stream_xsalsa20
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movl	$0, 68(%rsp)
	movb	$1, 67(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rax
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdx, %rsi
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	%rcx, %rdx
	callq	_crypto_core_hsalsa20
	movq	8(%rsp), %rax           # 8-byte Reload
	addq	$16, %rax
	leaq	32(%rsp), %rcx
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	%rax, %rdx
	callq	_crypto_stream_salsa20
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	addq	$72, %rsp
	retq
.Lfunc_end19:
	.size	_crypto_stream_xsalsa20, .Lfunc_end19-_crypto_stream_xsalsa20
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_secretbox_xsalsa20poly1305_open
	.type	_crypto_secretbox_xsalsa20poly1305_open,@function
_crypto_secretbox_xsalsa20poly1305_open: # @_crypto_secretbox_xsalsa20poly1305_open
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movb	$0, -1(%rbp)
	movb	$1, -2(%rbp)
	cmpq	$32, %rcx
	movq	%r8, -16(%rbp)          # 8-byte Spill
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, -56(%rbp)          # 8-byte Spill
	jae	.LBB20_2
# %bb.1:
	xorl	%eax, %eax
	movb	%al, %cl
	movb	%cl, %al
	movq	%rbp, %rsp
	popq	%rbp
	retq
.LBB20_2:
	jmp	.LBB20_3
.LBB20_3:
	movq	%rsp, %rax
	addq	$-32, %rax
	movq	%rax, %rsp
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movups	%xmm0, (%rax)
	movl	$32, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	_crypto_stream_xsalsa20
	movq	-32(%rbp), %rcx         # 8-byte Reload
	addq	$16, %rcx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	subq	$32, %rdx
	movq	-32(%rbp), %rsi         # 8-byte Reload
	addq	$32, %rsi
	movq	%rcx, %rdi
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	_crypto_onetimeauth_poly1305_verify
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB20_4
	jmp	.LBB20_5
.LBB20_4:
	xorl	%eax, %eax
	movb	%al, %cl
	movb	%cl, %al
	movq	%rbp, %rsp
	popq	%rbp
	retq
.LBB20_5:
	jmp	.LBB20_6
.LBB20_6:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-16(%rbp), %r8          # 8-byte Reload
	movq	-56(%rbp), %r9          # 8-byte Reload
	callq	_crypto_stream_xsalsa20_xor
	xorl	%r10d, %r10d
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	%r10d, -76(%rbp)        # 4-byte Spill
.LBB20_7:                               # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	cmpl	$32, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jae	.LBB20_10
# %bb.8:                                #   in Loop: Header=BB20_7 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movb	$0, (%rsi,%rdx)
# %bb.9:                                #   in Loop: Header=BB20_7 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB20_7
.LBB20_10:
	movb	$1, %al
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	_crypto_secretbox_xsalsa20poly1305_open, .Lfunc_end20-_crypto_secretbox_xsalsa20poly1305_open
	.cfi_endproc
                                        # -- End function
	.globl	_crypto_secretbox_open  # -- Begin function _crypto_secretbox_open
	.p2align	4, 0x90
	.type	_crypto_secretbox_open,@function
_crypto_secretbox_open:                 # @_crypto_secretbox_open
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movb	$0, 7(%rsp)
	movb	$1, 6(%rsp)
	callq	_crypto_secretbox_xsalsa20poly1305_open
	movb	%al, %r10b
	movb	%r10b, 5(%rsp)          # 1-byte Spill
	popq	%rcx
	retq
.Lfunc_end21:
	.size	_crypto_secretbox_open, .Lfunc_end21-_crypto_secretbox_open
	.cfi_endproc
                                        # -- End function
	.section	.text.__llvm_retpoline_r11,"axG",@progbits,__llvm_retpoline_r11,comdat
	.hidden	__llvm_retpoline_r11    # -- Begin function __llvm_retpoline_r11
	.weak	__llvm_retpoline_r11
	.p2align	4, 0x90
	.type	__llvm_retpoline_r11,@function
__llvm_retpoline_r11:                   # @__llvm_retpoline_r11
# %bb.0:                                # %entry
	callq	.LBB22_2
.LBB22_1:                               # Block address taken
                                        # %entry
                                        # =>This Inner Loop Header: Depth=1
	pause
	lfence
	jmp	.LBB22_1
	.p2align	4, 0x90
.LBB22_2:                               # Block address taken
                                        # %entry
	movq	%r11, (%rsp)
	retq
.Lfunc_end22:
	.size	__llvm_retpoline_r11, .Lfunc_end22-__llvm_retpoline_r11
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
