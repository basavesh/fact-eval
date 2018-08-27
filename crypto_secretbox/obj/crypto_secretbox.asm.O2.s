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
	vmovd	4(%rdx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	vpinsrd	$1, 4(%rsi), %xmm0, %xmm0
	vpinsrd	$2, 8(%rsi), %xmm0, %xmm0
	vpinsrd	$3, 24(%rdx), %xmm0, %xmm1
	vmovd	(%rdx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	vpinsrd	$1, (%rsi), %xmm0, %xmm0
	vpinsrd	$2, 16(%rdx), %xmm0, %xmm0
	vpinsrd	$3, 20(%rdx), %xmm0, %xmm0
	vmovd	8(%rdx), %xmm2          # xmm2 = mem[0],zero,zero,zero
	vpinsrd	$1, 12(%rdx), %xmm2, %xmm2
	vpinsrd	$2, 12(%rsi), %xmm2, %xmm2
	vpinsrd	$3, 28(%rdx), %xmm2, %xmm3
	vmovdqa	.LCPI0_0(%rip), %xmm2   # xmm2 = [1797285236,1634760805,857760878,2036477234]
	movl	$10, %eax
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	vpshufd	$78, %xmm0, %xmm4       # xmm4 = xmm0[2,3,0,1]
	vpaddd	%xmm2, %xmm4, %xmm4
	vpslld	$7, %xmm4, %xmm5
	vpsrld	$25, %xmm4, %xmm4
	vpor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpaddd	%xmm2, %xmm3, %xmm4
	vpslld	$9, %xmm4, %xmm5
	vpsrld	$23, %xmm4, %xmm4
	vpor	%xmm5, %xmm4, %xmm4
	vpshufd	$147, %xmm4, %xmm4      # xmm4 = xmm4[3,0,1,2]
	vpxor	%xmm1, %xmm4, %xmm1
	vpshufd	$147, %xmm1, %xmm4      # xmm4 = xmm1[3,0,1,2]
	vpshufd	$78, %xmm3, %xmm5       # xmm5 = xmm3[2,3,0,1]
	vpaddd	%xmm5, %xmm4, %xmm4
	vpslld	$13, %xmm4, %xmm5
	vpsrld	$19, %xmm4, %xmm4
	vpor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm0, %xmm4, %xmm0
	vpshufd	$147, %xmm0, %xmm4      # xmm4 = xmm0[3,0,1,2]
	vpshufd	$78, %xmm1, %xmm5       # xmm5 = xmm1[2,3,0,1]
	vpaddd	%xmm5, %xmm4, %xmm4
	vpslld	$18, %xmm4, %xmm5
	vpsrld	$14, %xmm4, %xmm4
	vpor	%xmm5, %xmm4, %xmm4
	vpshufd	$57, %xmm2, %xmm2       # xmm2 = xmm2[1,2,3,0]
	vpxor	%xmm2, %xmm4, %xmm2
	vpaddd	%xmm3, %xmm2, %xmm4
	vpslld	$7, %xmm4, %xmm5
	vpsrld	$25, %xmm4, %xmm4
	vpor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm0, %xmm4, %xmm0
	vpaddd	%xmm2, %xmm0, %xmm4
	vpslld	$9, %xmm4, %xmm5
	vpsrld	$23, %xmm4, %xmm4
	vpor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpaddd	%xmm0, %xmm1, %xmm4
	vpslld	$13, %xmm4, %xmm5
	vpsrld	$19, %xmm4, %xmm4
	vpor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm3, %xmm4, %xmm3
	vpaddd	%xmm1, %xmm3, %xmm4
	vpslld	$18, %xmm4, %xmm5
	vpsrld	$14, %xmm4, %xmm4
	vpor	%xmm5, %xmm4, %xmm4
	vpxor	%xmm2, %xmm4, %xmm4
	vpshufd	$147, %xmm4, %xmm2      # xmm2 = xmm4[3,0,1,2]
	addl	$-1, %eax
	jne	.LBB0_1
# %bb.2:
	vmovdqu	%xmm4, (%rdi)
	vpshufd	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	vpblendw	$3, %xmm0, %xmm1, %xmm0 # xmm0 = xmm0[0,1],xmm1[2,3,4,5,6,7]
	vpshufd	$164, %xmm3, %xmm1      # xmm1 = xmm3[0,1,2,2]
	vpblendw	$192, %xmm1, %xmm0, %xmm0 # xmm0 = xmm0[0,1,2,3,4,5],xmm1[6,7]
	vmovdqu	%xmm0, 16(%rdi)
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
	sete	%r8b
	movq	24(%rdi), %rdx
	movq	32(%rdi), %rcx
	movq	40(%rdi), %rax
	shrq	$4, %rbx
	movq	%rdi, -104(%rsp)        # 8-byte Spill
	je	.LBB1_3
# %bb.1:                                # %.lr.ph
	xorl	%ebp, %ebp
	movb	%r8b, %bpl
	shlq	$40, %rbp
	movq	%rbp, -48(%rsp)         # 8-byte Spill
	movq	8(%rdi), %r8
	movq	16(%rdi), %rbp
	movabsq	$17592186044415, %r9    # imm = 0xFFFFFFFFFFF
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
	leaq	-1048575(%r9), %rdi
	movq	%rdi, -96(%rsp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, -8(%rsp)          # 8-byte Spill
	movq	-8(%rsi), %rdi
	movq	(%rsi), %r10
	movq	%rdi, %r11
	movabsq	$17592186044415, %rbp   # imm = 0xFFFFFFFFFFF
	andq	%rbp, %r11
	addq	%rdx, %r11
	shrq	$44, %rdi
	movq	%r10, %rbx
	shlq	$20, %rbx
	andq	-96(%rsp), %rbx         # 8-byte Folded Reload
	orq	%rdi, %rbx
	addq	%rcx, %rbx
	shrq	$24, %r10
	orq	-48(%rsp), %r10         # 8-byte Folded Reload
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
	movq	-104(%rsp), %rsi        # 8-byte Reload
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
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 80(%rsp)
	movq	(%rcx), %rax
	movq	8(%rcx), %rbx
	movabsq	$17575274610687, %rbp   # imm = 0xFFC0FFFFFFF
	andq	%rax, %rbp
	movq	%rbp, 8(%rsp)
	movabsq	$17592186044415, %r14   # imm = 0xFFFFFFFFFFF
	shrdq	$44, %rbx, %rax
	leaq	-4128768(%r14), %rbp
	andq	%rax, %rbp
	movq	%rbp, 16(%rsp)
	shrq	$24, %rbx
	movabsq	$68719475727, %rax      # imm = 0xFFFFFFC0F
	andq	%rbx, %rax
	movq	%rax, 24(%rsp)
	movq	%rdx, %r13
	movq	%rsi, %r15
	vmovups	%xmm0, 32(%rsp)
	movq	$0, 48(%rsp)
	vmovups	16(%rcx), %xmm0
	vmovups	%xmm0, 56(%rsp)
	movq	$0, 72(%rsp)
	movb	$0, 96(%rsp)
	movq	%rdi, %rbp
	cmpq	$16, %r13
	jb	.LBB2_1
# %bb.2:
	movq	%r13, %r12
	andq	$-16, %r12
	leaq	8(%rsp), %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	_poly1305_blocks
	cmpq	%r13, %r12
	jb	.LBB2_4
.LBB2_12:                               # %_poly1305_update.exitthread-pre-split
	movq	72(%rsp), %rax
	jmp	.LBB2_13
.LBB2_1:
	xorl	%r12d, %r12d
	cmpq	%r13, %r12
	jae	.LBB2_12
.LBB2_4:
	movq	%r13, %r9
	movq	72(%rsp), %rax
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
	leaq	8(%rsp), %rcx
	.p2align	4, 0x90
.LBB2_8:                                # %.lr.ph.i4
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rdx,%rsi), %ebx
	addq	%rsp, %rax
	addq	$8, %rax
	movb	%bl, 72(%rsi,%rax)
	movzbl	(%rdx,%rsi), %eax
	movq	72(%rsp), %rbx
	addq	%rcx, %rbx
	movb	%al, 73(%rsi,%rbx)
	addq	$2, %rsi
	movq	72(%rsp), %rax
	cmpq	%rsi, %rdi
	jne	.LBB2_8
# %bb.9:                                # %._crit_edge.i5.loopexit.unr-lcssa
	testq	%r8, %r8
	je	.LBB2_11
.LBB2_10:                               # %.lr.ph.i4.epil
	addq	%rsi, %r12
	addq	%rsi, %rax
	movb	(%r15,%r12), %cl
	movb	%cl, 80(%rsp,%rax)
	movq	72(%rsp), %rax
.LBB2_11:                               # %._crit_edge.i5
	addq	%r9, %rax
	movq	%rax, 72(%rsp)
.LBB2_13:                               # %_poly1305_update.exit
	movq	%rbp, %r12
	testq	%rax, %rax
	je	.LBB2_17
# %bb.14:
	movb	$1, 80(%rsp,%rax)
	leaq	80(%rsp), %r15
	leaq	1(%rax), %rcx
	cmpq	$15, %rcx
	ja	.LBB2_16
# %bb.15:                               # %.lr.ph.i
	leaq	(%rsp,%rcx), %rdi
	addq	$80, %rdi
	movl	$15, %edx
	subq	%rax, %rdx
	xorl	%esi, %esi
	callq	memset
.LBB2_16:                               # %._crit_edge.i
	movb	$1, 96(%rsp)
	leaq	8(%rsp), %rdi
	movl	$16, %edx
	movq	%r15, %rsi
	callq	_poly1305_blocks
.LBB2_17:                               # %_poly1305_finish.exit
	movq	40(%rsp), %rcx
	movq	56(%rsp), %r8
	movq	%rcx, %rdx
	shrq	$44, %rdx
	addq	48(%rsp), %rdx
	movabsq	$4398046511103, %rdi    # imm = 0x3FFFFFFFFFF
	andq	%rdx, %rdi
	shrq	$42, %rdx
	leaq	(%rdx,%rdx,4), %rbp
	addq	32(%rsp), %rbp
	andq	%r14, %rcx
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
	movq	64(%rsp), %rsi
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
	orq	%r14, %rsi
	movq	%rcx, (%r12)
	movq	%rsi, 8(%r12)
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r8
	shrq	$6, %r8
	je	.LBB3_5
# %bb.1:                                # %.lr.ph.i
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB3_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	vmovdqa	(%rdi), %xmm8
	vmovdqa	16(%rdi), %xmm9
	vmovdqa	32(%rdi), %xmm2
	vmovdqa	48(%rdi), %xmm3
	movl	$5, %eax
	vmovdqa	%xmm9, %xmm4
	vmovdqa	%xmm2, %xmm6
	vmovdqa	%xmm3, %xmm7
	vmovdqa	%xmm8, %xmm5
	.p2align	4, 0x90
.LBB3_3:                                #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vpaddd	%xmm4, %xmm5, %xmm0
	vpslld	$7, %xmm0, %xmm1
	vpxor	%xmm7, %xmm1, %xmm1
	vpsrld	$25, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpaddd	%xmm5, %xmm0, %xmm1
	vpslld	$9, %xmm1, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpsrld	$23, %xmm1, %xmm1
	vpxor	%xmm1, %xmm6, %xmm1
	vpshufd	$147, %xmm0, %xmm6      # xmm6 = xmm0[3,0,1,2]
	vpaddd	%xmm0, %xmm1, %xmm0
	vpslld	$13, %xmm0, %xmm7
	vpsrld	$19, %xmm0, %xmm0
	vpxor	%xmm4, %xmm7, %xmm4
	vpxor	%xmm0, %xmm4, %xmm0
	vpshufd	$78, %xmm1, %xmm4       # xmm4 = xmm1[2,3,0,1]
	vpaddd	%xmm1, %xmm0, %xmm1
	vpslld	$18, %xmm1, %xmm7
	vpsrld	$14, %xmm1, %xmm1
	vpxor	%xmm5, %xmm7, %xmm5
	vpxor	%xmm1, %xmm5, %xmm1
	vpshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	vpaddd	%xmm6, %xmm1, %xmm5
	vpslld	$7, %xmm5, %xmm7
	vpxor	%xmm0, %xmm7, %xmm0
	vpsrld	$25, %xmm5, %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vpaddd	%xmm1, %xmm0, %xmm5
	vpslld	$9, %xmm5, %xmm7
	vpxor	%xmm4, %xmm7, %xmm4
	vpsrld	$23, %xmm5, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpshufd	$147, %xmm0, %xmm5      # xmm5 = xmm0[3,0,1,2]
	vpaddd	%xmm0, %xmm4, %xmm0
	vpslld	$13, %xmm0, %xmm7
	vpsrld	$19, %xmm0, %xmm0
	vpxor	%xmm6, %xmm7, %xmm6
	vpxor	%xmm0, %xmm6, %xmm0
	vpshufd	$78, %xmm4, %xmm6       # xmm6 = xmm4[2,3,0,1]
	vpaddd	%xmm4, %xmm0, %xmm4
	vpslld	$18, %xmm4, %xmm7
	vpsrld	$14, %xmm4, %xmm4
	vpxor	%xmm1, %xmm7, %xmm1
	vpxor	%xmm4, %xmm1, %xmm1
	vpshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	vpaddd	%xmm5, %xmm1, %xmm4
	vpslld	$7, %xmm4, %xmm7
	vpxor	%xmm0, %xmm7, %xmm0
	vpsrld	$25, %xmm4, %xmm4
	vpxor	%xmm4, %xmm0, %xmm0
	vpaddd	%xmm1, %xmm0, %xmm4
	vpslld	$9, %xmm4, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpsrld	$23, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpshufd	$147, %xmm0, %xmm6      # xmm6 = xmm0[3,0,1,2]
	vpaddd	%xmm0, %xmm4, %xmm0
	vpslld	$13, %xmm0, %xmm7
	vpsrld	$19, %xmm0, %xmm0
	vpxor	%xmm5, %xmm7, %xmm5
	vpxor	%xmm0, %xmm5, %xmm0
	vpshufd	$78, %xmm4, %xmm5       # xmm5 = xmm4[2,3,0,1]
	vpaddd	%xmm4, %xmm0, %xmm4
	vpslld	$18, %xmm4, %xmm7
	vpsrld	$14, %xmm4, %xmm4
	vpxor	%xmm1, %xmm7, %xmm1
	vpxor	%xmm4, %xmm1, %xmm1
	vpshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	vpaddd	%xmm6, %xmm1, %xmm4
	vpslld	$7, %xmm4, %xmm7
	vpxor	%xmm0, %xmm7, %xmm0
	vpsrld	$25, %xmm4, %xmm4
	vpxor	%xmm4, %xmm0, %xmm0
	vpaddd	%xmm1, %xmm0, %xmm4
	vpslld	$9, %xmm4, %xmm7
	vpxor	%xmm5, %xmm7, %xmm5
	vpsrld	$23, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	vpshufd	$147, %xmm0, %xmm4      # xmm4 = xmm0[3,0,1,2]
	vpaddd	%xmm0, %xmm5, %xmm0
	vpslld	$13, %xmm0, %xmm7
	vpsrld	$19, %xmm0, %xmm0
	vpxor	%xmm6, %xmm7, %xmm6
	vpxor	%xmm0, %xmm6, %xmm0
	vpshufd	$78, %xmm5, %xmm6       # xmm6 = xmm5[2,3,0,1]
	vpaddd	%xmm5, %xmm0, %xmm5
	vpslld	$18, %xmm5, %xmm7
	vpsrld	$14, %xmm5, %xmm5
	vpxor	%xmm1, %xmm7, %xmm1
	vpxor	%xmm5, %xmm1, %xmm5
	vpshufd	$57, %xmm0, %xmm7       # xmm7 = xmm0[1,2,3,0]
	addl	$-1, %eax
	jne	.LBB3_3
# %bb.4:                                #   in Loop: Header=BB3_2 Depth=1
	movq	%r9, %rax
	shlq	$6, %rax
	vpaddd	%xmm8, %xmm5, %xmm0
	vpaddd	%xmm9, %xmm4, %xmm1
	vpaddd	%xmm2, %xmm6, %xmm2
	vpaddd	%xmm3, %xmm7, %xmm3
	vmovd	%xmm0, %ebx
	vmovd	%xmm1, %r10d
	vmovd	%xmm2, %r11d
	vmovd	%xmm3, %r14d
	xorl	(%rsi,%rax), %ebx
	xorl	48(%rsi,%rax), %r10d
	xorl	32(%rsi,%rax), %r11d
	xorl	16(%rsi,%rax), %r14d
	movl	%ebx, (%rcx,%rax)
	movl	%r10d, 48(%rcx,%rax)
	movl	%r11d, 32(%rcx,%rax)
	movl	%r14d, 16(%rcx,%rax)
	vpextrd	$1, %xmm0, %ebx
	vpextrd	$1, %xmm1, %r10d
	vpextrd	$1, %xmm2, %r11d
	vpextrd	$1, %xmm3, %r14d
	xorl	20(%rsi,%rax), %ebx
	xorl	4(%rsi,%rax), %r10d
	xorl	52(%rsi,%rax), %r11d
	xorl	36(%rsi,%rax), %r14d
	movl	%ebx, 20(%rcx,%rax)
	movl	%r10d, 4(%rcx,%rax)
	movl	%r11d, 52(%rcx,%rax)
	movl	%r14d, 36(%rcx,%rax)
	vpextrd	$2, %xmm0, %ebx
	vpextrd	$2, %xmm1, %r10d
	vpextrd	$2, %xmm2, %r11d
	vpextrd	$2, %xmm3, %r14d
	xorl	40(%rsi,%rax), %ebx
	xorl	24(%rsi,%rax), %r10d
	xorl	8(%rsi,%rax), %r11d
	xorl	56(%rsi,%rax), %r14d
	movl	%ebx, 40(%rcx,%rax)
	movl	%r10d, 24(%rcx,%rax)
	movl	%r11d, 8(%rcx,%rax)
	movl	%r14d, 56(%rcx,%rax)
	vpextrd	$3, %xmm0, %ebx
	vpextrd	$3, %xmm1, %r10d
	vpextrd	$3, %xmm2, %r11d
	vpextrd	$3, %xmm3, %r14d
	xorl	60(%rsi,%rax), %ebx
	xorl	44(%rsi,%rax), %r10d
	xorl	28(%rsi,%rax), %r11d
	xorl	12(%rsi,%rax), %r14d
	movl	%ebx, 60(%rcx,%rax)
	movl	%r10d, 44(%rcx,%rax)
	movl	%r11d, 28(%rcx,%rax)
	movl	%r14d, 12(%rcx,%rax)
	xorl	%eax, %eax
	addl	$1, 32(%rdi)
	sete	%al
	addl	%eax, 52(%rdi)
	addq	$1, %r9
	cmpq	%r8, %r9
	jne	.LBB3_2
.LBB3_5:                                # %_u1.exit
	movq	%rdx, %r8
	andq	$-64, %r8
	movq	%rdx, %r10
	subq	%r8, %r10
	je	.LBB3_24
# %bb.6:
	leaq	(%rsi,%r8), %r9
	leaq	(%rcx,%r8), %r11
	vmovdqa	(%rdi), %xmm8
	vmovdqa	16(%rdi), %xmm9
	vmovdqa	32(%rdi), %xmm2
	vmovdqa	48(%rdi), %xmm3
	movl	$5, %edi
	vmovdqa	%xmm9, %xmm4
	vmovdqa	%xmm2, %xmm6
	vmovdqa	%xmm3, %xmm7
	vmovdqa	%xmm8, %xmm5
	.p2align	4, 0x90
.LBB3_7:                                # =>This Inner Loop Header: Depth=1
	vpaddd	%xmm4, %xmm5, %xmm0
	vpslld	$7, %xmm0, %xmm1
	vpxor	%xmm7, %xmm1, %xmm1
	vpsrld	$25, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vpaddd	%xmm5, %xmm0, %xmm1
	vpslld	$9, %xmm1, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpsrld	$23, %xmm1, %xmm1
	vpxor	%xmm1, %xmm6, %xmm1
	vpshufd	$147, %xmm0, %xmm6      # xmm6 = xmm0[3,0,1,2]
	vpaddd	%xmm0, %xmm1, %xmm0
	vpslld	$13, %xmm0, %xmm7
	vpsrld	$19, %xmm0, %xmm0
	vpxor	%xmm4, %xmm7, %xmm4
	vpxor	%xmm0, %xmm4, %xmm0
	vpshufd	$78, %xmm1, %xmm4       # xmm4 = xmm1[2,3,0,1]
	vpaddd	%xmm1, %xmm0, %xmm1
	vpslld	$18, %xmm1, %xmm7
	vpsrld	$14, %xmm1, %xmm1
	vpxor	%xmm5, %xmm7, %xmm5
	vpxor	%xmm1, %xmm5, %xmm1
	vpshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	vpaddd	%xmm6, %xmm1, %xmm5
	vpslld	$7, %xmm5, %xmm7
	vpxor	%xmm0, %xmm7, %xmm0
	vpsrld	$25, %xmm5, %xmm5
	vpxor	%xmm5, %xmm0, %xmm0
	vpaddd	%xmm1, %xmm0, %xmm5
	vpslld	$9, %xmm5, %xmm7
	vpxor	%xmm4, %xmm7, %xmm4
	vpsrld	$23, %xmm5, %xmm5
	vpxor	%xmm5, %xmm4, %xmm4
	vpshufd	$147, %xmm0, %xmm5      # xmm5 = xmm0[3,0,1,2]
	vpaddd	%xmm0, %xmm4, %xmm0
	vpslld	$13, %xmm0, %xmm7
	vpsrld	$19, %xmm0, %xmm0
	vpxor	%xmm6, %xmm7, %xmm6
	vpxor	%xmm0, %xmm6, %xmm0
	vpshufd	$78, %xmm4, %xmm6       # xmm6 = xmm4[2,3,0,1]
	vpaddd	%xmm4, %xmm0, %xmm4
	vpslld	$18, %xmm4, %xmm7
	vpsrld	$14, %xmm4, %xmm4
	vpxor	%xmm1, %xmm7, %xmm1
	vpxor	%xmm4, %xmm1, %xmm1
	vpshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	vpaddd	%xmm5, %xmm1, %xmm4
	vpslld	$7, %xmm4, %xmm7
	vpxor	%xmm0, %xmm7, %xmm0
	vpsrld	$25, %xmm4, %xmm4
	vpxor	%xmm4, %xmm0, %xmm0
	vpaddd	%xmm1, %xmm0, %xmm4
	vpslld	$9, %xmm4, %xmm7
	vpxor	%xmm6, %xmm7, %xmm6
	vpsrld	$23, %xmm4, %xmm4
	vpxor	%xmm4, %xmm6, %xmm4
	vpshufd	$147, %xmm0, %xmm6      # xmm6 = xmm0[3,0,1,2]
	vpaddd	%xmm0, %xmm4, %xmm0
	vpslld	$13, %xmm0, %xmm7
	vpsrld	$19, %xmm0, %xmm0
	vpxor	%xmm5, %xmm7, %xmm5
	vpxor	%xmm0, %xmm5, %xmm0
	vpshufd	$78, %xmm4, %xmm5       # xmm5 = xmm4[2,3,0,1]
	vpaddd	%xmm4, %xmm0, %xmm4
	vpslld	$18, %xmm4, %xmm7
	vpsrld	$14, %xmm4, %xmm4
	vpxor	%xmm1, %xmm7, %xmm1
	vpxor	%xmm4, %xmm1, %xmm1
	vpshufd	$57, %xmm0, %xmm0       # xmm0 = xmm0[1,2,3,0]
	vpaddd	%xmm6, %xmm1, %xmm4
	vpslld	$7, %xmm4, %xmm7
	vpxor	%xmm0, %xmm7, %xmm0
	vpsrld	$25, %xmm4, %xmm4
	vpxor	%xmm4, %xmm0, %xmm0
	vpaddd	%xmm1, %xmm0, %xmm4
	vpslld	$9, %xmm4, %xmm7
	vpxor	%xmm5, %xmm7, %xmm5
	vpsrld	$23, %xmm4, %xmm4
	vpxor	%xmm4, %xmm5, %xmm5
	vpshufd	$147, %xmm0, %xmm4      # xmm4 = xmm0[3,0,1,2]
	vpaddd	%xmm0, %xmm5, %xmm0
	vpslld	$13, %xmm0, %xmm7
	vpsrld	$19, %xmm0, %xmm0
	vpxor	%xmm6, %xmm7, %xmm6
	vpxor	%xmm0, %xmm6, %xmm0
	vpshufd	$78, %xmm5, %xmm6       # xmm6 = xmm5[2,3,0,1]
	vpaddd	%xmm5, %xmm0, %xmm5
	vpslld	$18, %xmm5, %xmm7
	vpsrld	$14, %xmm5, %xmm5
	vpxor	%xmm1, %xmm7, %xmm1
	vpxor	%xmm5, %xmm1, %xmm5
	vpshufd	$57, %xmm0, %xmm7       # xmm7 = xmm0[1,2,3,0]
	addl	$-1, %edi
	jne	.LBB3_7
# %bb.8:                                # %.lr.ph.i1
	vpaddd	%xmm8, %xmm5, %xmm0
	vpaddd	%xmm9, %xmm4, %xmm1
	vpaddd	%xmm2, %xmm6, %xmm2
	vpaddd	%xmm3, %xmm7, %xmm3
	movq	%rsp, %rax
	leaq	-64(%rax), %r12
	movq	%r12, %rsp
	vinsertf128	$1, %xmm3, %ymm2, %ymm2
	vinsertf128	$1, %xmm1, %ymm0, %ymm1
	vblendps	$156, %ymm2, %ymm1, %ymm3 # ymm3 = ymm1[0,1],ymm2[2,3,4],ymm1[5,6],ymm2[7]
	vperm2f128	$1, %ymm0, %ymm3, %ymm4 # ymm4 = ymm3[2,3,0,1]
	vblendps	$170, %ymm4, %ymm3, %ymm3 # ymm3 = ymm3[0],ymm4[1],ymm3[2],ymm4[3],ymm3[4],ymm4[5],ymm3[6],ymm4[7]
	vmovups	%ymm3, -64(%rax)
	vblendps	$156, %ymm1, %ymm2, %ymm1 # ymm1 = ymm2[0,1],ymm1[2,3,4],ymm2[5,6],ymm1[7]
	vperm2f128	$1, %ymm0, %ymm1, %ymm2 # ymm2 = ymm1[2,3,0,1]
	vblendps	$170, %ymm2, %ymm1, %ymm1 # ymm1 = ymm1[0],ymm2[1],ymm1[2],ymm2[3],ymm1[4],ymm2[5],ymm1[6],ymm2[7]
	vmovups	%ymm1, -32(%rax)
	vpextrb	$0, %xmm0, %eax
	xorb	(%r9), %al
	movb	%al, (%r11)
	cmpq	$1, %r10
	je	.LBB3_23
# %bb.9:                                # %._crit_edge12.i.lr.ph
	leaq	-1(%rdx), %rdi
	movq	%rdi, %r14
	subq	%r8, %r14
	cmpq	$128, %r14
	jb	.LBB3_10
# %bb.11:                               # %vector.memcheck
	movq	%r8, %rax
	orq	$1, %rax
	leaq	(%rcx,%rax), %r10
	leaq	(%rsi,%rdx), %rbx
	cmpq	%rbx, %r10
	jae	.LBB3_14
# %bb.12:                               # %vector.memcheck
	leaq	(%rcx,%rdx), %rbx
	addq	%rsi, %rax
	cmpq	%rbx, %rax
	jae	.LBB3_14
.LBB3_10:
	movl	$1, %r10d
.LBB3_17:                               # %._crit_edge12.i.preheader
	movl	%edx, %ebx
	subl	%r10d, %ebx
	subq	%r10, %rdi
	subq	%r8, %rdi
	andq	$3, %rbx
	je	.LBB3_20
# %bb.18:                               # %._crit_edge12.i.prol.preheader
	negq	%rbx
	.p2align	4, 0x90
.LBB3_19:                               # %._crit_edge12.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r9,%r10), %eax
	xorb	(%r12,%r10), %al
	movb	%al, (%r11,%r10)
	addq	$1, %r10
	addq	$1, %rbx
	jne	.LBB3_19
.LBB3_20:                               # %._crit_edge12.i.prol.loopexit
	cmpq	$3, %rdi
	jb	.LBB3_23
# %bb.21:                               # %._crit_edge12.i.preheader.new
	subq	%r10, %rdx
	subq	%r8, %rdx
	addq	%r10, %r8
	addq	%r8, %rsi
	addq	$3, %rsi
	leaq	(%rcx,%r8), %rdi
	addq	$3, %rdi
	leaq	(%r12,%r10), %rax
	addq	$3, %rax
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB3_22:                               # %._crit_edge12.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-3(%rsi,%rbx), %ecx
	xorb	-3(%rax,%rbx), %cl
	movb	%cl, -3(%rdi,%rbx)
	movzbl	-2(%rsi,%rbx), %ecx
	xorb	-2(%rax,%rbx), %cl
	movb	%cl, -2(%rdi,%rbx)
	movzbl	-1(%rsi,%rbx), %ecx
	xorb	-1(%rax,%rbx), %cl
	movb	%cl, -1(%rdi,%rbx)
	movzbl	(%rsi,%rbx), %ecx
	xorb	(%rax,%rbx), %cl
	movb	%cl, (%rdi,%rbx)
	addq	$4, %rbx
	cmpq	%rbx, %rdx
	jne	.LBB3_22
	jmp	.LBB3_23
.LBB3_14:                               # %vector.ph
	movq	%rdi, %rax
	movq	%r14, %r15
	andq	$-128, %r15
	leaq	1(%r15), %r10
	leaq	(%rcx,%r8), %r13
	addq	$97, %r13
	leaq	(%rsi,%r8), %rdi
	addq	$97, %rdi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB3_15:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vmovups	-96(%rdi,%rbx), %ymm0
	vmovups	-64(%rdi,%rbx), %ymm1
	vmovups	-32(%rdi,%rbx), %ymm2
	vmovups	(%rdi,%rbx), %ymm3
	vxorps	1(%r12,%rbx), %ymm0, %ymm0
	vxorps	33(%r12,%rbx), %ymm1, %ymm1
	vxorps	65(%r12,%rbx), %ymm2, %ymm2
	vxorps	97(%r12,%rbx), %ymm3, %ymm3
	vmovups	%ymm0, -96(%r13,%rbx)
	vmovups	%ymm1, -64(%r13,%rbx)
	vmovups	%ymm2, -32(%r13,%rbx)
	vmovups	%ymm3, (%r13,%rbx)
	subq	$-128, %rbx
	cmpq	%rbx, %r15
	jne	.LBB3_15
# %bb.16:                               # %middle.block
	cmpq	%r15, %r14
	movq	%rax, %rdi
	jne	.LBB3_17
.LBB3_23:                               # %._crit_edge.i
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, 32(%r12)
	vmovdqu	%ymm0, (%r12)
.LBB3_24:                               # %_u0.exit
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
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
	vmovaps	.LCPI4_0(%rip), %xmm0   # xmm0 = [1634760805,857760878,2036477234,1797285236]
	vmovaps	%xmm0, -64(%rbx)
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
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, -32(%rbx)
	vmovups	%ymm0, -64(%rbx)
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	vzeroupper
	retq
.LBB4_1:
	retq
.Lfunc_end4:
	.size	_crypto_stream_salsa20_xor_ic, .Lfunc_end4-_crypto_stream_salsa20_xor_ic
                                        # -- End function
	.globl	_crypto_secretbox       # -- Begin function _crypto_secretbox
	.p2align	4, 0x90
	.type	_crypto_secretbox,@function
_crypto_secretbox:                      # @_crypto_secretbox
# %bb.0:                                # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$64, %rsp
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
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm0, (%rsp)
	movq	%rsp, %rdi
	movq	%rbx, %rsi
	movq	%r9, %rdx
	vzeroupper
	callq	_crypto_core_hsalsa20
	addq	$16, %rbx
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%rbx, %r8
	movq	%rsp, %r9
	callq	_crypto_stream_salsa20_xor_ic
	leaq	16(%r15), %rdi
	addq	$-32, %r14
	leaq	32(%r15), %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	callq	_crypto_onetimeauth_poly1305
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r15)
	movb	$1, %al
.LBB5_3:                                # %_crypto_secretbox_xsalsa20poly1305.exit
                                        # kill: def %al killed %al killed %eax
	leaq	-40(%rbp), %rsp
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
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5
.LCPI6_1:
	.zero	32
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
	andq	$-32, %rsp
	subq	$192, %rsp
	movq	%rsp, %rbx
	movq	%rdx, %r12
	xorl	%r13d, %r13d
	cmpq	$31, %rcx
	jbe	.LBB6_6
# %bb.1:
	movq	%rsi, 136(%rbx)         # 8-byte Spill
	movq	%rdi, 144(%rbx)         # 8-byte Spill
	movq	%rcx, 160(%rbx)         # 8-byte Spill
	movq	%rsp, %rax
	movq	%rax, 152(%rbx)         # 8-byte Spill
	leaq	-32(%rax), %r15
	movq	%r15, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm0, (%rbx)
	movq	%rbx, %rdi
	movq	%r8, %rsi
	movq	%r9, 128(%rbx)          # 8-byte Spill
	movq	%r9, %rdx
	movq	%r8, %r14
	vzeroupper
	callq	_crypto_core_hsalsa20
	movl	(%rbx), %eax
	movl	4(%rbx), %ecx
	movl	%eax, 68(%rbx)
	movl	%ecx, 88(%rbx)
	movl	8(%rbx), %eax
	movl	%eax, 108(%rbx)
	movl	12(%rbx), %eax
	movl	%eax, 96(%rbx)
	movl	16(%rbx), %eax
	movl	%eax, 76(%rbx)
	movl	20(%rbx), %eax
	movl	%eax, 64(%rbx)
	movl	24(%rbx), %eax
	movl	%eax, 84(%rbx)
	movl	28(%rbx), %eax
	movl	%eax, 104(%rbx)
	vmovaps	.LCPI6_0(%rip), %xmm0   # xmm0 = [1634760805,857760878,2036477234,1797285236]
	vmovaps	%xmm0, 48(%rbx)
	movl	16(%r14), %eax
	movl	%eax, 72(%rbx)
	leaq	16(%r14), %rax
	movq	%rax, 112(%rbx)         # 8-byte Spill
	movq	%r14, 120(%rbx)         # 8-byte Spill
	movl	20(%r14), %eax
	movl	%eax, 92(%rbx)
	movl	$0, 80(%rbx)
	movl	$0, 100(%rbx)
	movq	152(%rbx), %rax         # 8-byte Reload
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, -32(%rax)
	movq	160(%rbx), %r14         # 8-byte Reload
	leaq	48(%rbx), %rdi
	movl	$32, %edx
	movl	$32, %r8d
	movq	%r15, %rsi
	movq	%r15, %rcx
	vzeroupper
	callq	u0
	leaq	-32(%r14), %rdx
	leaq	32(%r12), %rsi
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 48(%rbx)
	leaq	48(%rbx), %rdi
	movq	%r15, %rcx
	callq	_crypto_onetimeauth_poly1305
	movb	$1, %cl
	movq	$-16, %rsi
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB6_2:                                # =>This Inner Loop Header: Depth=1
	movzbl	32(%r12,%rsi), %edx
	cmpb	64(%rbx,%rsi), %dl
	setne	%dl
	andb	%cl, %dl
	#APP
	testb	%dl, %dl
	cmovnel	%r13d, %eax
	#NO_APP
	andl	$1, %eax
	andb	$1, %cl
	movzbl	%cl, %ecx
	#APP
	testb	%dl, %dl
	cmovnel	%r13d, %ecx
	#NO_APP
	andl	$1, %ecx
	addq	$1, %rsi
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
	xorl	%r13d, %r13d
	jmp	.LBB6_6
.LBB6_5:                                # %.loopexit.loopexit
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm0, (%rbx)
	movq	%rbx, %r15
	movq	%r15, %rdi
	movq	120(%rbx), %rsi         # 8-byte Reload
	movq	128(%rbx), %rdx         # 8-byte Reload
	vzeroupper
	callq	_crypto_core_hsalsa20
	movq	%r14, %rcx
	movq	144(%rbx), %r14         # 8-byte Reload
	movq	%r14, %rdi
	movq	136(%rbx), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	movq	112(%rbx), %r8          # 8-byte Reload
	movq	%r15, %r9
	callq	_crypto_stream_salsa20_xor_ic
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, (%r14)
	movb	$1, %r13b
.LBB6_6:                                # %.loopexit
	movl	%r13d, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
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

	.section	".note.GNU-stack","",@progbits
