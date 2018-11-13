	.text
	.file	"Module"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function _crypto_core_hsalsa20
.LCPI0_0:
	.long	1797285236              # 0x6b206574
	.long	1634760805              # 0x61707865
	.long	857760878               # 0x3320646e
	.long	2036477234              # 0x79622d32
	.text
	.p2align	4, 0x90
	.type	_crypto_core_hsalsa20,@function
_crypto_core_hsalsa20:                  # @_crypto_core_hsalsa20
# %bb.0:                                # %entry
	movd	24(%rdx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movd	8(%rsi), %xmm2          # xmm2 = mem[0],zero,zero,zero
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	movd	4(%rsi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movd	4(%rdx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	punpcklqdq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0]
	movd	(%rsi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movd	(%rdx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	movq	16(%rdx), %xmm2         # xmm2 = mem[0],zero
	punpcklqdq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0]
	movd	28(%rdx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	movd	12(%rsi), %xmm3         # xmm3 = mem[0],zero,zero,zero
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	movq	8(%rdx), %xmm4          # xmm4 = mem[0],zero
	punpcklqdq	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0]
	movdqa	.LCPI0_0(%rip), %xmm3   # xmm3 = [1797285236,1634760805,857760878,2036477234]
	movl	$10, %eax
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	pshufd	$78, %xmm0, %xmm2       # xmm2 = xmm0[2,3,0,1]
	paddd	%xmm3, %xmm2
	movdqa	%xmm2, %xmm5
	pslld	$7, %xmm5
	psrld	$25, %xmm2
	por	%xmm5, %xmm2
	pxor	%xmm4, %xmm2
	movdqa	%xmm2, %xmm4
	paddd	%xmm3, %xmm4
	movdqa	%xmm4, %xmm5
	pslld	$9, %xmm5
	psrld	$23, %xmm4
	por	%xmm5, %xmm4
	pshufd	$147, %xmm4, %xmm4      # xmm4 = xmm4[3,0,1,2]
	pxor	%xmm1, %xmm4
	pshufd	$147, %xmm4, %xmm5      # xmm5 = xmm4[3,0,1,2]
	pshufd	$78, %xmm2, %xmm1       # xmm1 = xmm2[2,3,0,1]
	paddd	%xmm5, %xmm1
	movdqa	%xmm1, %xmm5
	pslld	$13, %xmm5
	psrld	$19, %xmm1
	por	%xmm5, %xmm1
	pxor	%xmm0, %xmm1
	pshufd	$147, %xmm1, %xmm0      # xmm0 = xmm1[3,0,1,2]
	pshufd	$78, %xmm4, %xmm5       # xmm5 = xmm4[2,3,0,1]
	paddd	%xmm0, %xmm5
	movdqa	%xmm5, %xmm0
	pslld	$18, %xmm0
	psrld	$14, %xmm5
	por	%xmm0, %xmm5
	pshufd	$57, %xmm3, %xmm3       # xmm3 = xmm3[1,2,3,0]
	pxor	%xmm5, %xmm3
	movdqa	%xmm3, %xmm0
	paddd	%xmm2, %xmm0
	movdqa	%xmm0, %xmm5
	pslld	$7, %xmm5
	psrld	$25, %xmm0
	por	%xmm5, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	paddd	%xmm3, %xmm1
	movdqa	%xmm1, %xmm5
	pslld	$9, %xmm5
	psrld	$23, %xmm1
	por	%xmm5, %xmm1
	pxor	%xmm4, %xmm1
	movdqa	%xmm1, %xmm4
	paddd	%xmm0, %xmm4
	movdqa	%xmm4, %xmm5
	pslld	$13, %xmm5
	psrld	$19, %xmm4
	por	%xmm5, %xmm4
	pxor	%xmm2, %xmm4
	movdqa	%xmm4, %xmm2
	paddd	%xmm1, %xmm2
	movdqa	%xmm2, %xmm5
	pslld	$18, %xmm5
	psrld	$14, %xmm2
	por	%xmm5, %xmm2
	pxor	%xmm3, %xmm2
	pshufd	$147, %xmm2, %xmm3      # xmm3 = xmm2[3,0,1,2]
	addl	$-1, %eax
	jne	.LBB0_1
# %bb.2:
	movdqu	%xmm2, (%rdi)
	shufps	$17, %xmm1, %xmm0       # xmm0 = xmm0[1,0],xmm1[1,0]
	shufps	$232, %xmm1, %xmm0      # xmm0 = xmm0[0,2],xmm1[2,3]
	shufps	$34, %xmm0, %xmm4       # xmm4 = xmm4[2,0],xmm0[2,0]
	shufps	$36, %xmm4, %xmm0       # xmm0 = xmm0[0,1],xmm4[2,0]
	movups	%xmm0, 16(%rdi)
	retq
.Lfunc_end0:
	.size	_crypto_core_hsalsa20, .Lfunc_end0-_crypto_core_hsalsa20
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _poly1305_blocks
	.type	_poly1305_blocks,@function
_poly1305_blocks:                       # @_poly1305_blocks
# %bb.0:                                # %entry
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rbx
	cmpb	$0, 88(%rdi)
	setne	%al
	xorl	%ecx, %ecx
	movabsq	$1099511627776, %rdx    # imm = 0x10000000000
	#APP
	testb	%al, %al
	movq	%rdx, %r9
	cmovneq	%rcx, %r9
	#NO_APP
	movq	24(%rdi), %rdx
	movq	32(%rdi), %rcx
	movq	40(%rdi), %rax
	shrq	$4, %rbx
	movq	%rdi, -96(%rsp)         # 8-byte Spill
	je	.LBB1_3
# %bb.1:                                # %.lr.ph
	movq	8(%rdi), %r8
	movq	16(%rdi), %rbp
	movq	%rbp, -64(%rsp)         # 8-byte Spill
	leaq	(,%rbp,4), %rbp
	leaq	(%rbp,%rbp,4), %rbp
	movq	%rbp, -72(%rsp)         # 8-byte Spill
	movq	%r8, -56(%rsp)          # 8-byte Spill
	leaq	(,%r8,4), %rbp
	leaq	(%rbp,%rbp,4), %rbp
	movq	%rbp, -80(%rsp)         # 8-byte Spill
	movq	(%rdi), %rdi
	movq	%rdi, -88(%rsp)         # 8-byte Spill
	addq	$8, %rsi
	movq	%r9, -48(%rsp)          # 8-byte Spill
	.p2align	4, 0x90
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, -8(%rsp)          # 8-byte Spill
	movq	-8(%rsi), %rdi
	movq	(%rsi), %r10
	movq	%rdi, %r11
	movabsq	$17592186044415, %rbx   # imm = 0xFFFFFFFFFFF
	andq	%rbx, %r11
	addq	%rdx, %r11
	shrq	$44, %rdi
	movq	%r10, %rdx
	shlq	$20, %rdx
	leaq	-1048575(%rbx), %rbx
	andq	%rdx, %rbx
	orq	%rdi, %rbx
	addq	%rcx, %rbx
	shrq	$24, %r10
	orq	%r9, %r10
	addq	%rax, %r10
	movq	%r11, %rax
	movq	-88(%rsp), %rdi         # 8-byte Reload
	mulq	%rdi
	movq	%rdx, %r15
	movq	%rax, %rcx
	movq	%rbx, %rax
	movq	-72(%rsp), %rbp         # 8-byte Reload
	mulq	%rbp
	movq	%rdx, %r12
	movq	%rax, %r13
	movq	%r10, %rax
	mulq	-80(%rsp)               # 8-byte Folded Reload
	movq	%rdx, %r14
	movq	%rax, %r9
	addq	%rcx, %r9
	adcq	%r15, %r14
	addq	%r13, %r9
	adcq	%r12, %r14
	movq	%r11, %rax
	movq	-56(%rsp), %r12         # 8-byte Reload
	mulq	%r12
	movq	%rdx, -32(%rsp)         # 8-byte Spill
	movq	%rax, %r13
	movq	%rbx, %rax
	mulq	%rdi
	movq	%rdx, -40(%rsp)         # 8-byte Spill
	movq	%rax, %r8
	movq	%r10, %rax
	mulq	%rbp
	movq	%rdx, %rcx
	movq	%rax, %r15
	movq	%r11, %rax
	mulq	-64(%rsp)               # 8-byte Folded Reload
	movq	%rdx, -16(%rsp)         # 8-byte Spill
	movq	%rax, -24(%rsp)         # 8-byte Spill
	movq	%rbx, %rax
	mulq	%r12
	movq	%rdx, %rbp
	movq	%rax, %r11
	movq	%r10, %rax
	mulq	%rdi
	shldq	$20, %r9, %r14
	movabsq	$17592186044415, %rdi   # imm = 0xFFFFFFFFFFF
	andq	%rdi, %r9
	addq	%r13, %r15
	adcq	-32(%rsp), %rcx         # 8-byte Folded Reload
	addq	%r8, %r15
	movq	-8(%rsp), %rbx          # 8-byte Reload
	adcq	-40(%rsp), %rcx         # 8-byte Folded Reload
	addq	%r14, %r15
	adcq	$0, %rcx
	shldq	$20, %r15, %rcx
	andq	%rdi, %r15
	movq	%rdi, %r8
	addq	-24(%rsp), %rax         # 8-byte Folded Reload
	adcq	-16(%rsp), %rdx         # 8-byte Folded Reload
	addq	%r11, %rax
	adcq	%rbp, %rdx
	addq	%rcx, %rax
	adcq	$0, %rdx
	shldq	$22, %rax, %rdx
	leaq	(%rdx,%rdx,4), %rdx
	addq	%r9, %rdx
	movq	-48(%rsp), %r9          # 8-byte Reload
	movq	%rdx, %rcx
	shrq	$44, %rcx
	addq	%r15, %rcx
	movabsq	$4398046511103, %rdi    # imm = 0x3FFFFFFFFFF
	andq	%rdi, %rax
	andq	%r8, %rdx
	addq	$16, %rsi
	addq	$-1, %rbx
	jne	.LBB1_2
.LBB1_3:                                # %._crit_edge
	movq	-96(%rsp), %rsi         # 8-byte Reload
	movq	%rdx, 24(%rsi)
	movq	%rcx, 32(%rsi)
	movq	%rax, 40(%rsi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_poly1305_blocks, .Lfunc_end1-_poly1305_blocks
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_onetimeauth_poly1305
	.type	_crypto_onetimeauth_poly1305,@function
_crypto_onetimeauth_poly1305:           # @_crypto_onetimeauth_poly1305
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	xorps	%xmm0, %xmm0
	movups	%xmm0, 72(%rsp)
	movq	(%rcx), %rax
	movq	8(%rcx), %rbx
	movabsq	$17575274610687, %rbp   # imm = 0xFFC0FFFFFFF
	andq	%rax, %rbp
	movq	%rbp, (%rsp)
	movabsq	$17592186044415, %r14   # imm = 0xFFFFFFFFFFF
	shrdq	$44, %rbx, %rax
	leaq	-4128768(%r14), %rbp
	andq	%rax, %rbp
	movq	%rbp, 8(%rsp)
	shrq	$24, %rbx
	movabsq	$68719475727, %rax      # imm = 0xFFFFFFC0F
	andq	%rbx, %rax
	movq	%rax, 16(%rsp)
	movq	%rdx, %r13
	movq	%rsi, %r15
	movups	%xmm0, 24(%rsp)
	movq	$0, 40(%rsp)
	movups	16(%rcx), %xmm0
	movups	%xmm0, 48(%rsp)
	movq	$0, 64(%rsp)
	movb	$0, 88(%rsp)
	movq	%rdi, %rbp
	cmpq	$16, %r13
	jb	.LBB2_1
# %bb.2:
	movq	%r13, %r12
	andq	$-16, %r12
	movq	%rsp, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	_poly1305_blocks
	cmpq	%r13, %r12
	jb	.LBB2_4
.LBB2_12:                               # %_poly1305_update.exitthread-pre-split
	movq	64(%rsp), %rax
	jmp	.LBB2_13
.LBB2_1:
	xorl	%r12d, %r12d
	cmpq	%r13, %r12
	jae	.LBB2_12
.LBB2_4:
	movq	%r13, %r9
	movq	64(%rsp), %rax
	subq	%r12, %r9
	je	.LBB2_11
# %bb.5:                                # %.lr.ph.i4.preheader
	addq	$-1, %r13
	movl	%r9d, %r8d
	andl	$1, %r8d
	cmpq	%r12, %r13
	jne	.LBB2_7
# %bb.6:
	xorl	%esi, %esi
	testq	%r8, %r8
	jne	.LBB2_10
	jmp	.LBB2_11
.LBB2_7:                                # %.lr.ph.i4.preheader.new
	movq	%r9, %rdi
	subq	%r8, %rdi
	leaq	(%r15,%r12), %rdx
	addq	$1, %rdx
	xorl	%esi, %esi
	movq	%rsp, %rcx
	.p2align	4, 0x90
.LBB2_8:                                # %.lr.ph.i4
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rdx,%rsi), %ebx
	leaq	(%rsp,%rax), %rax
	movb	%bl, 72(%rsi,%rax)
	movzbl	(%rdx,%rsi), %eax
	movq	64(%rsp), %rbx
	addq	%rcx, %rbx
	movb	%al, 73(%rsi,%rbx)
	addq	$2, %rsi
	movq	64(%rsp), %rax
	cmpq	%rsi, %rdi
	jne	.LBB2_8
# %bb.9:                                # %._crit_edge.i5.loopexit.unr-lcssa
	testq	%r8, %r8
	je	.LBB2_11
.LBB2_10:                               # %.lr.ph.i4.epil
	addq	%rsi, %rax
	addq	%rsi, %r12
	movb	(%r15,%r12), %cl
	movb	%cl, 72(%rsp,%rax)
	movq	64(%rsp), %rax
.LBB2_11:                               # %._crit_edge.i5
	addq	%r9, %rax
	movq	%rax, 64(%rsp)
.LBB2_13:                               # %_poly1305_update.exit
	movq	%rbp, %r12
	testq	%rax, %rax
	je	.LBB2_17
# %bb.14:
	movb	$1, 72(%rsp,%rax)
	leaq	72(%rsp), %r15
	leaq	1(%rax), %rcx
	cmpq	$15, %rcx
	ja	.LBB2_16
# %bb.15:                               # %.lr.ph.i
	leaq	(%rsp,%rcx), %rdi
	addq	$72, %rdi
	movl	$15, %edx
	subq	%rax, %rdx
	xorl	%esi, %esi
	callq	memset@PLT
.LBB2_16:                               # %._crit_edge.i
	movb	$1, 88(%rsp)
	movq	%rsp, %rdi
	movl	$16, %edx
	movq	%r15, %rsi
	callq	_poly1305_blocks
.LBB2_17:                               # %_poly1305_finish.exit
	movq	32(%rsp), %rcx
	movq	48(%rsp), %r8
	movq	%rcx, %rdx
	shrq	$44, %rdx
	andq	%r14, %rcx
	addq	40(%rsp), %rdx
	movabsq	$4398046511103, %rdi    # imm = 0x3FFFFFFFFFF
	andq	%rdx, %rdi
	shrq	$42, %rdx
	leaq	(%rdx,%rdx,4), %rbp
	addq	24(%rsp), %rbp
	movq	%rbp, %rbx
	shrq	$44, %rbx
	addq	%rcx, %rbx
	andq	%r14, %rbp
	movq	%rbx, %rsi
	shrq	$44, %rsi
	addq	%rdi, %rsi
	andq	%r14, %rbx
	movq	%rsi, %rdx
	shrq	$42, %rdx
	negl	%edx
	andl	$5, %edx
	addq	%rbp, %rdx
	movq	%rdx, %rcx
	shrq	$44, %rcx
	addq	%rbx, %rcx
	andq	%r14, %rdx
	leaq	5(%rdx), %r9
	movq	%r9, %rbp
	shrq	$44, %rbp
	addq	%rcx, %rbp
	movq	%rbp, %rax
	shrq	$44, %rax
	movabsq	$-4398046511104, %rdi   # imm = 0xFFFFFC0000000000
	orq	%rsi, %rdi
	addq	%rax, %rdi
	movq	%rdi, %rax
	shrq	$63, %rax
	addq	$-1, %rax
	movq	%rax, %rbx
	andq	%r14, %rbx
	andq	%rbx, %r9
	andq	%rbp, %rbx
	andq	%rdi, %rax
	sarq	$63, %rdi
	andq	%rdi, %rdx
	orq	%r9, %rdx
	andq	%rdi, %rcx
	orq	%rbx, %rcx
	andq	%rsi, %rdi
	orq	%rax, %rdi
	movq	56(%rsp), %rsi
	movq	%r8, %rax
	andq	%r14, %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$44, %rdx
	andq	%r14, %rax
	shrq	$44, %r8
	movq	%rsi, %rbp
	shlq	$20, %rbp
	addq	$-1048575, %r14         # imm = 0xFFF00001
	andq	%rbp, %r14
	orq	%r8, %r14
	addq	%rcx, %r14
	addq	%rdx, %r14
	movq	%r14, %rcx
	shrq	$44, %rcx
	shrq	$24, %rsi
	addq	%rdi, %rsi
	addq	%rcx, %rsi
	movq	%r14, %rcx
	shlq	$44, %rcx
	orq	%rax, %rcx
	shrq	$20, %r14
	andl	$16777215, %r14d        # imm = 0xFFFFFF
	shlq	$24, %rsi
	movq	%rcx, (%r12)
	orq	%r14, %rsi
	movq	%rsi, 8(%r12)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	movaps	%xmm0, (%rsp)
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_crypto_onetimeauth_poly1305, .Lfunc_end2-_crypto_onetimeauth_poly1305
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function u0
	.type	u0,@function
u0:                                     # @u0
# %bb.0:                                # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r8
	shrq	$6, %r8
	je	.LBB3_5
# %bb.1:                                # %.lr.ph.i
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB3_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	movdqa	(%rdi), %xmm11
	movdqa	16(%rdi), %xmm10
	movdqa	32(%rdi), %xmm9
	movdqa	48(%rdi), %xmm8
	movl	$5, %eax
	movdqa	%xmm10, %xmm4
	movdqa	%xmm9, %xmm6
	movdqa	%xmm8, %xmm7
	movdqa	%xmm11, %xmm0
	.p2align	4, 0x90
.LBB3_3:                                #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqa	%xmm0, %xmm5
	paddd	%xmm4, %xmm5
	movdqa	%xmm5, %xmm1
	pslld	$7, %xmm1
	pxor	%xmm7, %xmm1
	psrld	$25, %xmm5
	pxor	%xmm1, %xmm5
	movdqa	%xmm5, %xmm1
	paddd	%xmm0, %xmm1
	movdqa	%xmm1, %xmm7
	pslld	$9, %xmm7
	pxor	%xmm6, %xmm7
	psrld	$23, %xmm1
	pxor	%xmm7, %xmm1
	pshufd	$147, %xmm5, %xmm6      # xmm6 = xmm5[3,0,1,2]
	paddd	%xmm1, %xmm5
	movdqa	%xmm5, %xmm2
	pslld	$13, %xmm2
	psrld	$19, %xmm5
	pxor	%xmm4, %xmm2
	pxor	%xmm5, %xmm2
	pshufd	$78, %xmm1, %xmm4       # xmm4 = xmm1[2,3,0,1]
	paddd	%xmm2, %xmm1
	movdqa	%xmm1, %xmm7
	pslld	$18, %xmm7
	psrld	$14, %xmm1
	pxor	%xmm0, %xmm7
	pxor	%xmm1, %xmm7
	pshufd	$57, %xmm2, %xmm0       # xmm0 = xmm2[1,2,3,0]
	movdqa	%xmm7, %xmm1
	paddd	%xmm6, %xmm1
	movdqa	%xmm1, %xmm2
	pslld	$7, %xmm2
	pxor	%xmm0, %xmm2
	psrld	$25, %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm1, %xmm0
	paddd	%xmm7, %xmm0
	movdqa	%xmm0, %xmm2
	pslld	$9, %xmm2
	pxor	%xmm4, %xmm2
	psrld	$23, %xmm0
	pxor	%xmm2, %xmm0
	pshufd	$147, %xmm1, %xmm4      # xmm4 = xmm1[3,0,1,2]
	paddd	%xmm0, %xmm1
	movdqa	%xmm1, %xmm2
	pslld	$13, %xmm2
	psrld	$19, %xmm1
	pxor	%xmm6, %xmm2
	pxor	%xmm1, %xmm2
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddd	%xmm2, %xmm0
	movdqa	%xmm0, %xmm6
	pslld	$18, %xmm6
	psrld	$14, %xmm0
	pxor	%xmm7, %xmm6
	pxor	%xmm0, %xmm6
	pshufd	$57, %xmm2, %xmm0       # xmm0 = xmm2[1,2,3,0]
	movdqa	%xmm6, %xmm2
	paddd	%xmm4, %xmm2
	movdqa	%xmm2, %xmm5
	pslld	$7, %xmm5
	pxor	%xmm0, %xmm5
	psrld	$25, %xmm2
	pxor	%xmm5, %xmm2
	movdqa	%xmm2, %xmm0
	paddd	%xmm6, %xmm0
	movdqa	%xmm0, %xmm5
	pslld	$9, %xmm5
	pxor	%xmm1, %xmm5
	psrld	$23, %xmm0
	pxor	%xmm5, %xmm0
	pshufd	$147, %xmm2, %xmm5      # xmm5 = xmm2[3,0,1,2]
	paddd	%xmm0, %xmm2
	movdqa	%xmm2, %xmm1
	pslld	$13, %xmm1
	psrld	$19, %xmm2
	pxor	%xmm4, %xmm1
	pxor	%xmm2, %xmm1
	pshufd	$78, %xmm0, %xmm2       # xmm2 = xmm0[2,3,0,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm7
	pslld	$18, %xmm7
	psrld	$14, %xmm0
	pxor	%xmm6, %xmm7
	pxor	%xmm0, %xmm7
	pshufd	$57, %xmm1, %xmm0       # xmm0 = xmm1[1,2,3,0]
	movdqa	%xmm7, %xmm1
	paddd	%xmm5, %xmm1
	movdqa	%xmm1, %xmm4
	pslld	$7, %xmm4
	pxor	%xmm0, %xmm4
	psrld	$25, %xmm1
	pxor	%xmm4, %xmm1
	movdqa	%xmm1, %xmm3
	paddd	%xmm7, %xmm3
	movdqa	%xmm3, %xmm0
	pslld	$9, %xmm0
	pxor	%xmm2, %xmm0
	psrld	$23, %xmm3
	pxor	%xmm0, %xmm3
	pshufd	$147, %xmm1, %xmm4      # xmm4 = xmm1[3,0,1,2]
	paddd	%xmm3, %xmm1
	movdqa	%xmm1, %xmm2
	pslld	$13, %xmm2
	psrld	$19, %xmm1
	pxor	%xmm5, %xmm2
	pxor	%xmm1, %xmm2
	pshufd	$78, %xmm3, %xmm6       # xmm6 = xmm3[2,3,0,1]
	paddd	%xmm2, %xmm3
	movdqa	%xmm3, %xmm0
	pslld	$18, %xmm0
	psrld	$14, %xmm3
	pxor	%xmm7, %xmm0
	pxor	%xmm3, %xmm0
	pshufd	$57, %xmm2, %xmm7       # xmm7 = xmm2[1,2,3,0]
	addl	$-1, %eax
	jne	.LBB3_3
# %bb.4:                                #   in Loop: Header=BB3_2 Depth=1
	movq	%r9, %rax
	shlq	$6, %rax
	paddd	%xmm11, %xmm0
	paddd	%xmm10, %xmm4
	paddd	%xmm9, %xmm6
	paddd	%xmm8, %xmm7
	movd	%xmm0, %ebx
	movd	%xmm4, %r10d
	movd	%xmm6, %r11d
	movd	%xmm7, %r14d
	xorl	(%rsi,%rax), %ebx
	xorl	48(%rsi,%rax), %r10d
	xorl	32(%rsi,%rax), %r11d
	xorl	16(%rsi,%rax), %r14d
	movl	%ebx, (%rcx,%rax)
	movl	%r10d, 48(%rcx,%rax)
	movl	%r11d, 32(%rcx,%rax)
	movl	%r14d, 16(%rcx,%rax)
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %r10d
	pshufd	$229, %xmm4, %xmm1      # xmm1 = xmm4[1,1,2,3]
	movd	%xmm1, %r11d
	pshufd	$229, %xmm6, %xmm1      # xmm1 = xmm6[1,1,2,3]
	movd	%xmm1, %r14d
	pshufd	$229, %xmm7, %xmm1      # xmm1 = xmm7[1,1,2,3]
	movd	%xmm1, %ebx
	xorl	20(%rsi,%rax), %r10d
	xorl	4(%rsi,%rax), %r11d
	xorl	52(%rsi,%rax), %r14d
	xorl	36(%rsi,%rax), %ebx
	movl	%r10d, 20(%rcx,%rax)
	movl	%r11d, 4(%rcx,%rax)
	movl	%r14d, 52(%rcx,%rax)
	movl	%ebx, 36(%rcx,%rax)
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	movd	%xmm1, %r10d
	pshufd	$78, %xmm4, %xmm1       # xmm1 = xmm4[2,3,0,1]
	movd	%xmm1, %r11d
	pshufd	$78, %xmm6, %xmm1       # xmm1 = xmm6[2,3,0,1]
	movd	%xmm1, %r14d
	pshufd	$78, %xmm7, %xmm1       # xmm1 = xmm7[2,3,0,1]
	movd	%xmm1, %ebx
	xorl	40(%rsi,%rax), %r10d
	xorl	24(%rsi,%rax), %r11d
	xorl	8(%rsi,%rax), %r14d
	xorl	56(%rsi,%rax), %ebx
	movl	%r10d, 40(%rcx,%rax)
	movl	%r11d, 24(%rcx,%rax)
	movl	%r14d, 8(%rcx,%rax)
	movl	%ebx, 56(%rcx,%rax)
	pshufd	$231, %xmm0, %xmm0      # xmm0 = xmm0[3,1,2,3]
	movd	%xmm0, %r10d
	pshufd	$231, %xmm4, %xmm0      # xmm0 = xmm4[3,1,2,3]
	movd	%xmm0, %r11d
	pshufd	$231, %xmm6, %xmm0      # xmm0 = xmm6[3,1,2,3]
	movd	%xmm0, %r14d
	pshufd	$231, %xmm7, %xmm0      # xmm0 = xmm7[3,1,2,3]
	movd	%xmm0, %ebx
	xorl	60(%rsi,%rax), %r10d
	xorl	44(%rsi,%rax), %r11d
	xorl	28(%rsi,%rax), %r14d
	xorl	12(%rsi,%rax), %ebx
	movl	%r10d, 60(%rcx,%rax)
	movl	%r11d, 44(%rcx,%rax)
	movl	%r14d, 28(%rcx,%rax)
	movl	%ebx, 12(%rcx,%rax)
	movl	52(%rdi), %eax
	addl	$1, 32(%rdi)
	sete	%r10b
	leal	1(%rax), %ebx
	#APP
	testb	%r10b, %r10b
	cmovnel	%ebx, %eax
	#NO_APP
	movl	%eax, 52(%rdi)
	addq	$1, %r9
	cmpq	%r8, %r9
	jne	.LBB3_2
.LBB3_5:                                # %_u1.exit
	movq	%rdx, %r8
	andq	$-64, %r8
	movq	%rdx, %r10
	subq	%r8, %r10
	je	.LBB3_28
# %bb.6:
	leaq	(%rsi,%r8), %r9
	leaq	(%rcx,%r8), %r11
	movdqa	(%rdi), %xmm11
	movdqa	16(%rdi), %xmm10
	movdqa	32(%rdi), %xmm9
	movdqa	48(%rdi), %xmm8
	movl	$5, %edi
	movdqa	%xmm10, %xmm4
	movdqa	%xmm9, %xmm6
	movdqa	%xmm8, %xmm7
	movdqa	%xmm11, %xmm0
	.p2align	4, 0x90
.LBB3_7:                                # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, %xmm5
	paddd	%xmm4, %xmm5
	movdqa	%xmm5, %xmm1
	pslld	$7, %xmm1
	pxor	%xmm7, %xmm1
	psrld	$25, %xmm5
	pxor	%xmm1, %xmm5
	movdqa	%xmm5, %xmm1
	paddd	%xmm0, %xmm1
	movdqa	%xmm1, %xmm7
	pslld	$9, %xmm7
	pxor	%xmm6, %xmm7
	psrld	$23, %xmm1
	pxor	%xmm7, %xmm1
	pshufd	$147, %xmm5, %xmm6      # xmm6 = xmm5[3,0,1,2]
	paddd	%xmm1, %xmm5
	movdqa	%xmm5, %xmm2
	pslld	$13, %xmm2
	psrld	$19, %xmm5
	pxor	%xmm4, %xmm2
	pxor	%xmm5, %xmm2
	pshufd	$78, %xmm1, %xmm4       # xmm4 = xmm1[2,3,0,1]
	paddd	%xmm2, %xmm1
	movdqa	%xmm1, %xmm7
	pslld	$18, %xmm7
	psrld	$14, %xmm1
	pxor	%xmm0, %xmm7
	pxor	%xmm1, %xmm7
	pshufd	$57, %xmm2, %xmm0       # xmm0 = xmm2[1,2,3,0]
	movdqa	%xmm7, %xmm1
	paddd	%xmm6, %xmm1
	movdqa	%xmm1, %xmm2
	pslld	$7, %xmm2
	pxor	%xmm0, %xmm2
	psrld	$25, %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm1, %xmm0
	paddd	%xmm7, %xmm0
	movdqa	%xmm0, %xmm2
	pslld	$9, %xmm2
	pxor	%xmm4, %xmm2
	psrld	$23, %xmm0
	pxor	%xmm2, %xmm0
	pshufd	$147, %xmm1, %xmm4      # xmm4 = xmm1[3,0,1,2]
	paddd	%xmm0, %xmm1
	movdqa	%xmm1, %xmm2
	pslld	$13, %xmm2
	psrld	$19, %xmm1
	pxor	%xmm6, %xmm2
	pxor	%xmm1, %xmm2
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddd	%xmm2, %xmm0
	movdqa	%xmm0, %xmm6
	pslld	$18, %xmm6
	psrld	$14, %xmm0
	pxor	%xmm7, %xmm6
	pxor	%xmm0, %xmm6
	pshufd	$57, %xmm2, %xmm0       # xmm0 = xmm2[1,2,3,0]
	movdqa	%xmm6, %xmm2
	paddd	%xmm4, %xmm2
	movdqa	%xmm2, %xmm5
	pslld	$7, %xmm5
	pxor	%xmm0, %xmm5
	psrld	$25, %xmm2
	pxor	%xmm5, %xmm2
	movdqa	%xmm2, %xmm0
	paddd	%xmm6, %xmm0
	movdqa	%xmm0, %xmm5
	pslld	$9, %xmm5
	pxor	%xmm1, %xmm5
	psrld	$23, %xmm0
	pxor	%xmm5, %xmm0
	pshufd	$147, %xmm2, %xmm5      # xmm5 = xmm2[3,0,1,2]
	paddd	%xmm0, %xmm2
	movdqa	%xmm2, %xmm1
	pslld	$13, %xmm1
	psrld	$19, %xmm2
	pxor	%xmm4, %xmm1
	pxor	%xmm2, %xmm1
	pshufd	$78, %xmm0, %xmm2       # xmm2 = xmm0[2,3,0,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm7
	pslld	$18, %xmm7
	psrld	$14, %xmm0
	pxor	%xmm6, %xmm7
	pxor	%xmm0, %xmm7
	pshufd	$57, %xmm1, %xmm0       # xmm0 = xmm1[1,2,3,0]
	movdqa	%xmm7, %xmm1
	paddd	%xmm5, %xmm1
	movdqa	%xmm1, %xmm4
	pslld	$7, %xmm4
	pxor	%xmm0, %xmm4
	psrld	$25, %xmm1
	pxor	%xmm4, %xmm1
	movdqa	%xmm1, %xmm3
	paddd	%xmm7, %xmm3
	movdqa	%xmm3, %xmm0
	pslld	$9, %xmm0
	pxor	%xmm2, %xmm0
	psrld	$23, %xmm3
	pxor	%xmm0, %xmm3
	pshufd	$147, %xmm1, %xmm4      # xmm4 = xmm1[3,0,1,2]
	paddd	%xmm3, %xmm1
	movdqa	%xmm1, %xmm2
	pslld	$13, %xmm2
	psrld	$19, %xmm1
	pxor	%xmm5, %xmm2
	pxor	%xmm1, %xmm2
	pshufd	$78, %xmm3, %xmm6       # xmm6 = xmm3[2,3,0,1]
	paddd	%xmm2, %xmm3
	movdqa	%xmm3, %xmm0
	pslld	$18, %xmm0
	psrld	$14, %xmm3
	pxor	%xmm7, %xmm0
	pxor	%xmm3, %xmm0
	pshufd	$57, %xmm2, %xmm7       # xmm7 = xmm2[1,2,3,0]
	addl	$-1, %edi
	jne	.LBB3_7
# %bb.8:                                # %.lr.ph.i1
	paddd	%xmm11, %xmm0
	paddd	%xmm10, %xmm4
	paddd	%xmm9, %xmm6
	paddd	%xmm8, %xmm7
	movq	%rsp, %rax
	leaq	-64(%rax), %r12
	movq	%r12, %rsp
	pshufd	$229, %xmm4, %xmm1      # xmm1 = xmm4[1,1,2,3]
	movdqa	%xmm0, %xmm2
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	pshufd	$164, %xmm6, %xmm1      # xmm1 = xmm6[0,1,2,2]
	punpckhdq	%xmm7, %xmm1    # xmm1 = xmm1[2],xmm7[2],xmm1[3],xmm7[3]
	movsd	%xmm2, %xmm1            # xmm1 = xmm2[0],xmm1[1]
	movupd	%xmm1, -64(%rax)
	pshufd	$229, %xmm6, %xmm1      # xmm1 = xmm6[1,1,2,3]
	movdqa	%xmm4, %xmm2
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	pshufd	$164, %xmm7, %xmm1      # xmm1 = xmm7[0,1,2,2]
	punpckhdq	%xmm0, %xmm1    # xmm1 = xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	movsd	%xmm2, %xmm1            # xmm1 = xmm2[0],xmm1[1]
	movupd	%xmm1, -16(%rax)
	pshufd	$229, %xmm7, %xmm1      # xmm1 = xmm7[1,1,2,3]
	movdqa	%xmm6, %xmm2
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	pshufd	$164, %xmm0, %xmm1      # xmm1 = xmm0[0,1,2,2]
	punpckhdq	%xmm4, %xmm1    # xmm1 = xmm1[2],xmm4[2],xmm1[3],xmm4[3]
	movsd	%xmm2, %xmm1            # xmm1 = xmm2[0],xmm1[1]
	movupd	%xmm1, -32(%rax)
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	punpckldq	%xmm1, %xmm7    # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1]
	pshufd	$164, %xmm4, %xmm1      # xmm1 = xmm4[0,1,2,2]
	punpckhdq	%xmm6, %xmm1    # xmm1 = xmm1[2],xmm6[2],xmm1[3],xmm6[3]
	movsd	%xmm7, %xmm1            # xmm1 = xmm7[0],xmm1[1]
	movupd	%xmm1, -48(%rax)
	movd	%xmm0, %eax
	xorb	(%r9), %al
	movb	%al, (%r11)
	cmpq	$1, %r10
	je	.LBB3_27
# %bb.9:                                # %._crit_edge12.i.lr.ph
	leaq	-1(%rdx), %r10
	movq	%r10, %r15
	subq	%r8, %r15
	cmpq	$32, %r15
	jb	.LBB3_10
# %bb.11:                               # %vector.memcheck
	movq	%r8, %rax
	orq	$1, %rax
	leaq	(%rcx,%rax), %rdi
	leaq	(%rsi,%rdx), %rbx
	cmpq	%rbx, %rdi
	jae	.LBB3_14
# %bb.12:                               # %vector.memcheck
	leaq	(%rcx,%rdx), %rdi
	addq	%rsi, %rax
	cmpq	%rdi, %rax
	jae	.LBB3_14
.LBB3_10:
	movl	$1, %eax
.LBB3_21:                               # %._crit_edge12.i.preheader
	movl	%edx, %edi
	subl	%eax, %edi
	subq	%rax, %r10
	subq	%r8, %r10
	andq	$3, %rdi
	je	.LBB3_24
# %bb.22:                               # %._crit_edge12.i.prol.preheader
	negq	%rdi
	.p2align	4, 0x90
.LBB3_23:                               # %._crit_edge12.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r9,%rax), %ebx
	xorb	(%r12,%rax), %bl
	movb	%bl, (%r11,%rax)
	addq	$1, %rax
	addq	$1, %rdi
	jne	.LBB3_23
.LBB3_24:                               # %._crit_edge12.i.prol.loopexit
	cmpq	$3, %r10
	jb	.LBB3_27
# %bb.25:                               # %._crit_edge12.i.preheader.new
	subq	%rax, %rdx
	subq	%r8, %rdx
	addq	%rax, %r8
	addq	%r8, %rsi
	addq	$3, %rsi
	addq	%r8, %rcx
	addq	$3, %rcx
	addq	%r12, %rax
	addq	$3, %rax
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB3_26:                               # %._crit_edge12.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-3(%rsi,%rdi), %ebx
	xorb	-3(%rax,%rdi), %bl
	movb	%bl, -3(%rcx,%rdi)
	movzbl	-2(%rsi,%rdi), %ebx
	xorb	-2(%rax,%rdi), %bl
	movb	%bl, -2(%rcx,%rdi)
	movzbl	-1(%rsi,%rdi), %ebx
	xorb	-1(%rax,%rdi), %bl
	movb	%bl, -1(%rcx,%rdi)
	movzbl	(%rsi,%rdi), %ebx
	xorb	(%rax,%rdi), %bl
	movb	%bl, (%rcx,%rdi)
	addq	$4, %rdi
	cmpq	%rdi, %rdx
	jne	.LBB3_26
	jmp	.LBB3_27
.LBB3_14:                               # %vector.ph
	movq	%r15, %rax
	andq	$-32, %rax
	leaq	-32(%rax), %rdi
	movq	%rdi, %rbx
	shrq	$5, %rbx
	leal	1(%rbx), %r14d
	andl	$1, %r14d
	testq	%rdi, %rdi
	je	.LBB3_29
# %bb.15:                               # %vector.ph.new
	leaq	-1(%r14), %rdi
	subq	%rbx, %rdi
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB3_16:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	(%r12,%rbx), %xmm0
	movups	16(%r12,%rbx), %xmm1
	movups	(%r9,%rbx), %xmm2
	xorps	%xmm0, %xmm2
	movups	16(%r9,%rbx), %xmm0
	xorps	%xmm1, %xmm0
	movups	%xmm2, (%r11,%rbx)
	movups	%xmm0, 16(%r11,%rbx)
	movupd	32(%r12,%rbx), %xmm0
	movdqu	48(%r12,%rbx), %xmm1
	movupd	32(%r9,%rbx), %xmm2
	xorpd	%xmm0, %xmm2
	movdqu	48(%r9,%rbx), %xmm0
	pxor	%xmm1, %xmm0
	movupd	%xmm2, 32(%r11,%rbx)
	movdqu	%xmm0, 48(%r11,%rbx)
	addq	$64, %rbx
	addq	$2, %rdi
	jne	.LBB3_16
# %bb.17:                               # %middle.block.unr-lcssa
	testq	%r14, %r14
	je	.LBB3_19
.LBB3_18:                               # %vector.body.epil
	movupd	(%r12,%rbx), %xmm0
	movdqu	16(%r12,%rbx), %xmm1
	movupd	(%r9,%rbx), %xmm2
	xorpd	%xmm0, %xmm2
	movdqu	16(%r9,%rbx), %xmm0
	pxor	%xmm1, %xmm0
	movupd	%xmm2, (%r11,%rbx)
	movdqu	%xmm0, 16(%r11,%rbx)
.LBB3_19:                               # %middle.block
	cmpq	%rax, %r15
	jne	.LBB3_20
.LBB3_27:                               # %._crit_edge.i
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 48(%r12)
	movdqu	%xmm0, 32(%r12)
	movdqu	%xmm0, 16(%r12)
	movdqu	%xmm0, (%r12)
.LBB3_28:                               # %_u0.exit
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_20:
	orq	$1, %rax
	jmp	.LBB3_21
.LBB3_29:
	movl	$1, %ebx
	testq	%r14, %r14
	jne	.LBB3_18
	jmp	.LBB3_19
.Lfunc_end3:
	.size	u0, .Lfunc_end3-u0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function _crypto_stream_salsa20_xor_ic
.LCPI4_0:
	.long	1634760805              # 0x61707865
	.long	857760878               # 0x3320646e
	.long	2036477234              # 0x79622d32
	.long	1797285236              # 0x6b206574
	.text
	.p2align	4, 0x90
	.type	_crypto_stream_salsa20_xor_ic,@function
_crypto_stream_salsa20_xor_ic:          # @_crypto_stream_salsa20_xor_ic
# %bb.0:                                # %entry
	movq	%rsi, %r10
	movq	%rdi, %rax
	testq	%rcx, %rcx
	je	.LBB4_1
# %bb.2:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsp, %rbx
	leaq	-64(%rbx), %rdi
	movq	%rdi, %rsp
	movl	(%r9), %esi
	movl	%esi, -44(%rbx)
	movl	4(%r9), %esi
	movl	%esi, -24(%rbx)
	movl	8(%r9), %esi
	movl	%esi, -4(%rbx)
	movl	12(%r9), %esi
	movl	%esi, -16(%rbx)
	movl	16(%r9), %esi
	movl	%esi, -36(%rbx)
	movl	20(%r9), %esi
	movl	%esi, -48(%rbx)
	movl	24(%r9), %esi
	movl	%esi, -28(%rbx)
	movl	28(%r9), %esi
	movl	%esi, -8(%rbx)
	movaps	.LCPI4_0(%rip), %xmm0   # xmm0 = [1634760805,857760878,2036477234,1797285236]
	movaps	%xmm0, -64(%rbx)
	movl	(%r8), %esi
	movl	%esi, -40(%rbx)
	movl	4(%r8), %esi
	movl	%esi, -20(%rbx)
	movl	$0, -32(%rbx)
	movl	$0, -12(%rbx)
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	movq	%r10, %r8
	callq	u0
	xorps	%xmm0, %xmm0
	movups	%xmm0, -16(%rbx)
	movups	%xmm0, -32(%rbx)
	movups	%xmm0, -48(%rbx)
	movups	%xmm0, -64(%rbx)
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB4_1:
	retq
.Lfunc_end4:
	.size	_crypto_stream_salsa20_xor_ic, .Lfunc_end4-_crypto_stream_salsa20_xor_ic
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function _crypto_secretbox
.LCPI5_0:
	.zero	16
	.text
	.globl	_crypto_secretbox
	.p2align	4, 0x90
	.type	_crypto_secretbox,@function
_crypto_secretbox:                      # @_crypto_secretbox
# %bb.0:                                # %entry
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%r8, %rbx
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rsi, %r14
	movq	%rdi, %r15
	cmpq	$32, %r12
	jae	.LBB5_2
# %bb.1:
	xorl	%eax, %eax
	jmp	.LBB5_3
.LBB5_2:                                # %.loopexit.loopexit.i
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 16(%rsp)
	movaps	%xmm0, (%rsp)
	movq	%rsp, %rbp
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r9, %rdx
	callq	_crypto_core_hsalsa20
	addq	$16, %rbx
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%rbx, %r8
	movq	%rbp, %r9
	callq	_crypto_stream_salsa20_xor_ic
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 16(%rsp)
	movaps	%xmm0, (%rsp)
	leaq	16(%r15), %rdi
	addq	$-32, %r14
	leaq	32(%r15), %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	callq	_crypto_onetimeauth_poly1305
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%r15)
	movb	$1, %al
.LBB5_3:                                # %_crypto_secretbox_xsalsa20poly1305.exit
                                        # kill: def %al killed %al killed %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	_crypto_secretbox, .Lfunc_end5-_crypto_secretbox
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function _crypto_secretbox_xsalsa20poly1305_open
.LCPI6_0:
	.long	1634760805              # 0x61707865
	.long	857760878               # 0x3320646e
	.long	2036477234              # 0x79622d32
	.long	1797285236              # 0x6b206574
	.text
	.p2align	4, 0x90
	.type	_crypto_secretbox_xsalsa20poly1305_open,@function
_crypto_secretbox_xsalsa20poly1305_open: # @_crypto_secretbox_xsalsa20poly1305_open
# %bb.0:                                # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
	movq	%rcx, %rbx
	movq	%rdx, %r12
	xorl	%r14d, %r14d
	cmpq	$31, %rbx
	jbe	.LBB6_6
# %bb.1:
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rsp, %r15
	leaq	-32(%r15), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -80(%rbp)
	leaq	-80(%rbp), %rdi
	movq	%r8, %rsi
	movq	%r9, -168(%rbp)         # 8-byte Spill
	movq	%r9, %rdx
	movq	%r8, %r13
	callq	_crypto_core_hsalsa20
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %ecx
	movl	%eax, -124(%rbp)
	movl	%ecx, -104(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -88(%rbp)
	leaq	16(%r13), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movaps	.LCPI6_0(%rip), %xmm0   # xmm0 = [1634760805,857760878,2036477234,1797285236]
	movaps	%xmm0, -144(%rbp)
	movl	16(%r13), %eax
	movl	%eax, -120(%rbp)
	movq	%r13, -160(%rbp)        # 8-byte Spill
	movl	20(%r13), %eax
	movl	%eax, -100(%rbp)
	movl	$0, -112(%rbp)
	movl	$0, -92(%rbp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, -32(%r15)
	movups	%xmm0, -16(%r15)
	leaq	-144(%rbp), %rdi
	movl	$32, %edx
	movl	$32, %r8d
	movq	-192(%rbp), %r13        # 8-byte Reload
	movq	%r13, %rsi
	movq	%r13, %rcx
	callq	u0
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -112(%rbp)
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -80(%rbp)
	xorps	%xmm0, %xmm0
	movq	%rbx, %r15
	leaq	-32(%rbx), %rdx
	leaq	32(%r12), %rsi
	movaps	%xmm0, -144(%rbp)
	leaq	-144(%rbp), %rdi
	movq	%r13, %rcx
	callq	_crypto_onetimeauth_poly1305
	movb	$1, %cl
	movq	$-16, %rdx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB6_2:                                # =>This Inner Loop Header: Depth=1
	movzbl	32(%r12,%rdx), %ebx
	cmpb	-128(%rbp,%rdx), %bl
	setne	%bl
	andb	%cl, %bl
	#APP
	testb	%bl, %bl
	cmovnel	%r14d, %eax
	#NO_APP
	andl	$1, %eax
	andb	$1, %cl
	movzbl	%cl, %ecx
	#APP
	testb	%bl, %bl
	cmovnel	%r14d, %ecx
	#NO_APP
	andl	$1, %ecx
	addq	$1, %rdx
	jne	.LBB6_2
# %bb.3:                                # %_crypto_onetimeauth_poly1305_verify.exit
	testl	%ecx, %ecx
	setne	%cl
	movl	$1, %edx
	#APP
	testb	%cl, %cl
	cmovnel	%edx, %eax
	#NO_APP
	testb	$1, %al
	jne	.LBB6_5
# %bb.4:
	xorl	%r14d, %r14d
	jmp	.LBB6_6
.LBB6_5:                                # %.loopexit.loopexit
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -80(%rbp)
	leaq	-80(%rbp), %r14
	movq	%r14, %rdi
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	-168(%rbp), %rdx        # 8-byte Reload
	callq	_crypto_core_hsalsa20
	movq	-184(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rdi
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	-152(%rbp), %r8         # 8-byte Reload
	movq	%r14, %r9
	callq	_crypto_stream_salsa20_xor_ic
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -80(%rbp)
	movups	%xmm0, 16(%rbx)
	movups	%xmm0, (%rbx)
	movb	$1, %r14b
.LBB6_6:                                # %.loopexit
	movl	%r14d, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	_crypto_secretbox_xsalsa20poly1305_open, .Lfunc_end6-_crypto_secretbox_xsalsa20poly1305_open
                                        # -- End function
	.globl	_crypto_secretbox_open  # -- Begin function _crypto_secretbox_open
	.p2align	4, 0x90
	.type	_crypto_secretbox_open,@function
_crypto_secretbox_open:                 # @_crypto_secretbox_open
# %bb.0:                                # %entry
	jmp	_crypto_secretbox_xsalsa20poly1305_open # TAILCALL
.Lfunc_end7:
	.size	_crypto_secretbox_open, .Lfunc_end7-_crypto_secretbox_open
                                        # -- End function
	.section	.text.__llvm_retpoline_r11,"axG",@progbits,__llvm_retpoline_r11,comdat
	.hidden	__llvm_retpoline_r11    # -- Begin function __llvm_retpoline_r11
	.weak	__llvm_retpoline_r11
	.p2align	4, 0x90
	.type	__llvm_retpoline_r11,@function
__llvm_retpoline_r11:                   # @__llvm_retpoline_r11
# %bb.0:                                # %entry
	callq	.LBB8_2
.LBB8_1:                                # Block address taken
                                        # %entry
                                        # =>This Inner Loop Header: Depth=1
	pause
	lfence
	jmp	.LBB8_1
	.p2align	4, 0x90
.LBB8_2:                                # Block address taken
                                        # %entry
	movq	%r11, (%rsp)
	retq
.Lfunc_end8:
	.size	__llvm_retpoline_r11, .Lfunc_end8-__llvm_retpoline_r11
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
