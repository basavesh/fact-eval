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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function _crypto_core_salsa20
.LCPI1_0:
	.long	1797285236              # 0x6b206574
	.long	2036477234              # 0x79622d32
	.long	857760878               # 0x3320646e
	.long	1634760805              # 0x61707865
	.text
	.p2align	4, 0x90
	.type	_crypto_core_salsa20,@function
_crypto_core_salsa20:                   # @_crypto_core_salsa20
# %bb.0:                                # %entry
	vmovdqu	(%rdx), %xmm2
	vmovdqu	16(%rdx), %xmm8
	vmovdqu	(%rsi), %xmm1
	vpshufd	$78, %xmm8, %xmm3       # xmm3 = xmm8[2,3,0,1]
	vpshufd	$216, %xmm1, %xmm4      # xmm4 = xmm1[0,2,1,3]
	vpblendw	$3, %xmm3, %xmm4, %xmm3 # xmm3 = xmm3[0,1],xmm4[2,3,4,5,6,7]
	vpshufd	$68, %xmm2, %xmm4       # xmm4 = xmm2[0,1,0,1]
	vpblendw	$192, %xmm4, %xmm3, %xmm5 # xmm5 = xmm3[0,1,2,3,4,5],xmm4[6,7]
	vshufps	$193, %xmm1, %xmm8, %xmm3 # xmm3 = xmm8[1,0],xmm1[0,3]
	vpshufd	$36, %xmm2, %xmm4       # xmm4 = xmm2[0,1,2,0]
	vpblendw	$192, %xmm4, %xmm3, %xmm3 # xmm3 = xmm3[0,1,2,3,4,5],xmm4[6,7]
	vpshufd	$78, %xmm1, %xmm4       # xmm4 = xmm1[2,3,0,1]
	vpshufd	$231, %xmm8, %xmm6      # xmm6 = xmm8[3,1,2,3]
	vpblendw	$12, %xmm4, %xmm6, %xmm4 # xmm4 = xmm6[0,1],xmm4[2,3],xmm6[4,5,6,7]
	vshufps	$180, %xmm2, %xmm4, %xmm6 # xmm6 = xmm4[0,1],xmm2[3,2]
	vmovdqa	.LCPI1_0(%rip), %xmm4   # xmm4 = [1797285236,2036477234,857760878,1634760805]
	movl	$10, %eax
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	vpshufd	$78, %xmm3, %xmm7       # xmm7 = xmm3[2,3,0,1]
	vpshufd	$57, %xmm4, %xmm0       # xmm0 = xmm4[1,2,3,0]
	vpaddd	%xmm0, %xmm7, %xmm0
	vpslld	$7, %xmm0, %xmm7
	vpsrld	$25, %xmm0, %xmm0
	vpor	%xmm7, %xmm0, %xmm0
	vpxor	%xmm6, %xmm0, %xmm6
	vpshufd	$57, %xmm6, %xmm0       # xmm0 = xmm6[1,2,3,0]
	vpshufd	$78, %xmm4, %xmm7       # xmm7 = xmm4[2,3,0,1]
	vpaddd	%xmm7, %xmm0, %xmm0
	vpslld	$9, %xmm0, %xmm7
	vpsrld	$23, %xmm0, %xmm0
	vpor	%xmm7, %xmm0, %xmm0
	vpxor	%xmm5, %xmm0, %xmm0
	vpshufd	$57, %xmm0, %xmm5       # xmm5 = xmm0[1,2,3,0]
	vpshufd	$78, %xmm6, %xmm7       # xmm7 = xmm6[2,3,0,1]
	vpaddd	%xmm7, %xmm5, %xmm5
	vpslld	$13, %xmm5, %xmm7
	vpsrld	$19, %xmm5, %xmm5
	vpor	%xmm7, %xmm5, %xmm5
	vpxor	%xmm3, %xmm5, %xmm3
	vpshufd	$57, %xmm3, %xmm5       # xmm5 = xmm3[1,2,3,0]
	vpshufd	$78, %xmm0, %xmm7       # xmm7 = xmm0[2,3,0,1]
	vpaddd	%xmm7, %xmm5, %xmm5
	vpslld	$18, %xmm5, %xmm7
	vpsrld	$14, %xmm5, %xmm5
	vpor	%xmm7, %xmm5, %xmm5
	vpxor	%xmm4, %xmm5, %xmm4
	vpaddd	%xmm6, %xmm4, %xmm5
	vpslld	$7, %xmm5, %xmm7
	vpsrld	$25, %xmm5, %xmm5
	vpor	%xmm7, %xmm5, %xmm5
	vpxor	%xmm3, %xmm5, %xmm3
	vpaddd	%xmm4, %xmm3, %xmm5
	vpslld	$9, %xmm5, %xmm7
	vpsrld	$23, %xmm5, %xmm5
	vpor	%xmm7, %xmm5, %xmm5
	vpxor	%xmm0, %xmm5, %xmm5
	vpaddd	%xmm3, %xmm5, %xmm0
	vpslld	$13, %xmm0, %xmm7
	vpsrld	$19, %xmm0, %xmm0
	vpor	%xmm7, %xmm0, %xmm0
	vpxor	%xmm6, %xmm0, %xmm6
	vpaddd	%xmm5, %xmm6, %xmm0
	vpslld	$18, %xmm0, %xmm7
	vpsrld	$14, %xmm0, %xmm0
	vpor	%xmm7, %xmm0, %xmm0
	vpxor	%xmm4, %xmm0, %xmm4
	addl	$-1, %eax
	jne	.LBB1_1
# %bb.2:
	vpextrd	$3, %xmm4, %eax
	addl	$1634760805, %eax       # imm = 0x61707865
	movl	%eax, (%rdi)
	vpshufd	$78, %xmm5, %xmm0       # xmm0 = xmm5[2,3,0,1]
	vpshufd	$231, %xmm3, %xmm7      # xmm7 = xmm3[3,1,2,3]
	vpblendw	$12, %xmm0, %xmm7, %xmm0 # xmm0 = xmm7[0,1],xmm0[2,3],xmm7[4,5,6,7]
	vshufps	$180, %xmm6, %xmm0, %xmm0 # xmm0 = xmm0[0,1],xmm6[3,2]
	vpaddd	%xmm2, %xmm0, %xmm0
	vmovdqu	%xmm0, 4(%rdi)
	vpextrd	$2, %xmm4, %eax
	addl	$857760878, %eax        # imm = 0x3320646E
	movl	%eax, 20(%rdi)
	vpshufd	$78, %xmm3, %xmm0       # xmm0 = xmm3[2,3,0,1]
	vpshufd	$216, %xmm5, %xmm2      # xmm2 = xmm5[0,2,1,3]
	vpblendw	$3, %xmm0, %xmm2, %xmm0 # xmm0 = xmm0[0,1],xmm2[2,3,4,5,6,7]
	vpshufd	$68, %xmm6, %xmm2       # xmm2 = xmm6[0,1,0,1]
	vpblendw	$192, %xmm2, %xmm0, %xmm0 # xmm0 = xmm0[0,1,2,3,4,5],xmm2[6,7]
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovdqu	%xmm0, 24(%rdi)
	vpextrd	$1, %xmm4, %eax
	addl	$2036477234, %eax       # imm = 0x79622D32
	movl	%eax, 40(%rdi)
	vshufps	$193, %xmm5, %xmm3, %xmm0 # xmm0 = xmm3[1,0],xmm5[0,3]
	vpshufd	$36, %xmm6, %xmm1       # xmm1 = xmm6[0,1,2,0]
	vpblendw	$192, %xmm1, %xmm0, %xmm0 # xmm0 = xmm0[0,1,2,3,4,5],xmm1[6,7]
	vpaddd	%xmm8, %xmm0, %xmm0
	vmovdqu	%xmm0, 44(%rdi)
	vmovd	%xmm4, %eax
	addl	$1797285236, %eax       # imm = 0x6B206574
	movl	%eax, 60(%rdi)
	retq
.Lfunc_end1:
	.size	_crypto_core_salsa20, .Lfunc_end1-_crypto_core_salsa20
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
	je	.LBB2_3
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
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
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
	jne	.LBB2_2
.LBB2_3:                                # %._crit_edge
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
.Lfunc_end2:
	.size	_poly1305_blocks, .Lfunc_end2-_poly1305_blocks
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
	jb	.LBB3_1
# %bb.2:
	movq	%r13, %r12
	andq	$-16, %r12
	leaq	8(%rsp), %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	_poly1305_blocks
	cmpq	%r13, %r12
	jb	.LBB3_4
.LBB3_12:                               # %_poly1305_update.exitthread-pre-split
	movq	72(%rsp), %rax
	jmp	.LBB3_13
.LBB3_1:
	xorl	%r12d, %r12d
	cmpq	%r13, %r12
	jae	.LBB3_12
.LBB3_4:
	movq	%r13, %r9
	movq	72(%rsp), %rax
	subq	%r12, %r9
	je	.LBB3_11
# %bb.5:                                # %.lr.ph.i4.preheader
	addq	$-1, %r13
	movl	%r9d, %r8d
	andl	$1, %r8d
	cmpq	%r12, %r13
	jne	.LBB3_7
# %bb.6:
	xorl	%esi, %esi
	testq	%r8, %r8
	jne	.LBB3_10
	jmp	.LBB3_11
.LBB3_7:                                # %.lr.ph.i4.preheader.new
	movq	%r9, %rdi
	subq	%r8, %rdi
	leaq	(%r15,%r12), %rdx
	addq	$1, %rdx
	xorl	%esi, %esi
	leaq	8(%rsp), %rcx
	.p2align	4, 0x90
.LBB3_8:                                # %.lr.ph.i4
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
	jne	.LBB3_8
# %bb.9:                                # %._crit_edge.i5.loopexit.unr-lcssa
	testq	%r8, %r8
	je	.LBB3_11
.LBB3_10:                               # %.lr.ph.i4.epil
	addq	%rsi, %rax
	addq	%rsi, %r12
	movb	(%r15,%r12), %cl
	movb	%cl, 80(%rsp,%rax)
	movq	72(%rsp), %rax
.LBB3_11:                               # %._crit_edge.i5
	addq	%r9, %rax
	movq	%rax, 72(%rsp)
.LBB3_13:                               # %_poly1305_update.exit
	movq	%rbp, %r12
	testq	%rax, %rax
	je	.LBB3_17
# %bb.14:
	movb	$1, 80(%rsp,%rax)
	leaq	80(%rsp), %r15
	leaq	1(%rax), %rcx
	cmpq	$15, %rcx
	ja	.LBB3_16
# %bb.15:                               # %.lr.ph.i
	leaq	(%rsp,%rcx), %rdi
	addq	$80, %rdi
	movl	$15, %edx
	subq	%rax, %rdx
	xorl	%esi, %esi
	callq	memset
.LBB3_16:                               # %._crit_edge.i
	movb	$1, 96(%rsp)
	leaq	8(%rsp), %rdi
	movl	$16, %edx
	movq	%r15, %rsi
	callq	_poly1305_blocks
.LBB3_17:                               # %_poly1305_finish.exit
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
.Lfunc_end3:
	.size	_crypto_onetimeauth_poly1305, .Lfunc_end3-_crypto_onetimeauth_poly1305
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_stream_salsa20_xor_ic
	.type	_crypto_stream_salsa20_xor_ic,@function
_crypto_stream_salsa20_xor_ic:          # @_crypto_stream_salsa20_xor_ic
# %bb.0:                                # %entry
	testq	%rdx, %rdx
	je	.LBB4_25
# %bb.1:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rsp, %rax
	leaq	-32(%rax), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rsi, %rsp
	vmovups	(%r8), %ymm0
	vmovups	%ymm0, -32(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	movq	(%rcx), %rcx
	movq	%rcx, -16(%rax)
	movq	$0, -8(%rax)
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	shrq	$6, %rdx
	movq	%rsp, %rax
	leaq	-64(%rax), %rbx
	movq	%rbx, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, -32(%rax)
	vmovups	%ymm0, -64(%rax)
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	testq	%rdx, %rdx
	je	.LBB4_9
# %bb.2:                                # %.lr.ph8.preheader
	movq	-80(%rbp), %rax         # 8-byte Reload
	leaq	3(%rax), %r15
	movq	-72(%rbp), %rax         # 8-byte Reload
	leaq	3(%rax), %r12
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	xorl	%r13d, %r13d
	xorl	%edi, %edi
	xorl	%edx, %edx
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB4_3:                                # %.lr.ph8
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_6 Depth 2
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movl	%edi, -48(%rbp)         # 4-byte Spill
	movl	%r13d, -52(%rbp)        # 4-byte Spill
	movl	%r11d, -56(%rbp)        # 4-byte Spill
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	movl	%r9d, -64(%rbp)         # 4-byte Spill
	movq	%r8, -104(%rbp)         # 8-byte Spill
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rax, %r13
	shlq	$6, %r13
	movq	%rbx, %rdi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	vzeroupper
	callq	_crypto_core_salsa20
	movq	-72(%rbp), %rsi         # 8-byte Reload
	leaq	(%rsi,%r13), %rax
	addq	$64, %rax
	movq	-80(%rbp), %rdx         # 8-byte Reload
	leaq	(%rdx,%r13), %rcx
	cmpq	%rax, %rcx
	jae	.LBB4_7
# %bb.4:                                # %.lr.ph8
                                        #   in Loop: Header=BB4_3 Depth=1
	leaq	(%rsi,%r13), %rax
	leaq	(%rdx,%r13), %rcx
	addq	$64, %rcx
	cmpq	%rcx, %rax
	jae	.LBB4_7
# %bb.5:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	$-64, %rax
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	-104(%rbp), %r8         # 8-byte Reload
	movl	-64(%rbp), %r9d         # 4-byte Reload
	movl	-60(%rbp), %r10d        # 4-byte Reload
	movl	-56(%rbp), %r11d        # 4-byte Reload
	movl	-52(%rbp), %r13d        # 4-byte Reload
	movl	-48(%rbp), %edi         # 4-byte Reload
	movl	-44(%rbp), %edx         # 4-byte Reload
	.p2align	4, 0x90
.LBB4_6:                                # %scalar.ph
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	64(%rbx,%rax), %ecx
	xorb	61(%r12,%rax), %cl
	movb	%cl, 61(%r15,%rax)
	movzbl	65(%rbx,%rax), %ecx
	xorb	62(%r12,%rax), %cl
	movb	%cl, 62(%r15,%rax)
	movzbl	66(%rbx,%rax), %ecx
	xorb	63(%r12,%rax), %cl
	movb	%cl, 63(%r15,%rax)
	movzbl	67(%rbx,%rax), %ecx
	xorb	64(%r12,%rax), %cl
	movb	%cl, 64(%r15,%rax)
	addq	$4, %rax
	jne	.LBB4_6
	jmp	.LBB4_8
	.p2align	4, 0x90
.LBB4_7:                                # %vector.body
                                        #   in Loop: Header=BB4_3 Depth=1
	vmovups	(%rbx), %ymm0
	vxorps	(%rsi,%r13), %ymm0, %ymm0
	vmovups	%ymm0, (%rdx,%r13)
	vmovups	32(%rbx), %ymm0
	vxorps	32(%rsi,%r13), %ymm0, %ymm0
	vmovups	%ymm0, 32(%rdx,%r13)
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	-104(%rbp), %r8         # 8-byte Reload
	movl	-64(%rbp), %r9d         # 4-byte Reload
	movl	-60(%rbp), %r10d        # 4-byte Reload
	movl	-56(%rbp), %r11d        # 4-byte Reload
	movl	-52(%rbp), %r13d        # 4-byte Reload
	movl	-48(%rbp), %edi         # 4-byte Reload
	movl	-44(%rbp), %edx         # 4-byte Reload
.LBB4_8:                                # %middle.block
                                        #   in Loop: Header=BB4_3 Depth=1
	movzbl	%r14b, %r14d
	addl	$1, %r14d
	movb	%r14b, 8(%rsi)
	movl	%r14d, %eax
	shrl	$8, %eax
	movzbl	%dl, %edx
	addl	%eax, %edx
	movb	%dl, 9(%rsi)
	movl	%edx, %eax
	shrl	$8, %eax
	movzbl	%dil, %edi
	addl	%eax, %edi
	movb	%dil, 10(%rsi)
	movl	%edi, %eax
	shrl	$8, %eax
	movzbl	%r13b, %r13d
	addl	%eax, %r13d
	movb	%r13b, 11(%rsi)
	movl	%r13d, %eax
	shrl	$8, %eax
	movzbl	%r11b, %r11d
	addl	%eax, %r11d
	movb	%r11b, 12(%rsi)
	movl	%r11d, %eax
	shrl	$8, %eax
	movzbl	%r10b, %r10d
	addl	%eax, %r10d
	movb	%r10b, 13(%rsi)
	movl	%r10d, %eax
	shrl	$8, %eax
	movzbl	%r9b, %r9d
	addl	%eax, %r9d
	movb	%r9b, 14(%rsi)
	movl	%r9d, %eax
	shrl	$8, %eax
	movzbl	%r8b, %r8d
	addl	%eax, %r8d
	movb	%r8b, 15(%rsi)
	movq	-128(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	addq	$64, %r15
	addq	$64, %r12
	cmpq	-120(%rbp), %rax        # 8-byte Folded Reload
	jne	.LBB4_3
.LBB4_9:                                # %._crit_edge
	movq	-112(%rbp), %r15        # 8-byte Reload
	movq	%r15, %r14
	andq	$-64, %r14
	cmpq	%r15, %r14
	jae	.LBB4_24
# %bb.10:
	movq	%rbx, %rdi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	vzeroupper
	callq	_crypto_core_salsa20
	movq	%r15, %r8
	subq	%r14, %r8
	je	.LBB4_24
# %bb.11:                               # %.lr.ph
	movq	-80(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r14), %r9
	movq	-72(%rbp), %rsi         # 8-byte Reload
	leaq	(%rsi,%r14), %rdx
	cmpq	$127, %r8
	jbe	.LBB4_12
# %bb.19:                               # %vector.memcheck38
	leaq	(%rsi,%r15), %rax
	cmpq	%rax, %r9
	jae	.LBB4_21
# %bb.20:                               # %vector.memcheck38
	leaq	(%rcx,%r15), %rax
	cmpq	%rax, %rdx
	jae	.LBB4_21
.LBB4_12:
	xorl	%eax, %eax
.LBB4_13:                               # %scalar.ph30.preheader
	leaq	-1(%r15), %rsi
	subq	%rax, %rsi
	subq	%r14, %rsi
	movq	%r15, %rdi
	andq	$3, %rdi
	je	.LBB4_16
# %bb.14:                               # %scalar.ph30.prol.preheader
	negq	%rdi
	.p2align	4, 0x90
.LBB4_15:                               # %scalar.ph30.prol
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx,%rax), %ecx
	xorb	(%rdx,%rax), %cl
	movb	%cl, (%r9,%rax)
	addq	$1, %rax
	addq	$1, %rdi
	jne	.LBB4_15
.LBB4_16:                               # %scalar.ph30.prol.loopexit
	cmpq	$3, %rsi
	jb	.LBB4_24
# %bb.17:                               # %scalar.ph30.preheader.new
	subq	%rax, %r15
	subq	%r14, %r15
	leaq	(%rbx,%rax), %rdi
	addq	$3, %rdi
	addq	%r14, %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax), %rdx
	addq	$3, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	addq	%rcx, %rax
	addq	$3, %rax
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB4_18:                               # %scalar.ph30
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-3(%rdi,%rsi), %ecx
	xorb	-3(%rdx,%rsi), %cl
	movb	%cl, -3(%rax,%rsi)
	movzbl	-2(%rdi,%rsi), %ecx
	xorb	-2(%rdx,%rsi), %cl
	movb	%cl, -2(%rax,%rsi)
	movzbl	-1(%rdi,%rsi), %ecx
	xorb	-1(%rdx,%rsi), %cl
	movb	%cl, -1(%rax,%rsi)
	movzbl	(%rdi,%rsi), %ecx
	xorb	(%rdx,%rsi), %cl
	movb	%cl, (%rax,%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %r15
	jne	.LBB4_18
	jmp	.LBB4_24
.LBB4_21:                               # %vector.ph39
	movq	%r8, %rax
	andq	$-128, %rax
	leaq	(%rcx,%r14), %rdi
	addq	$96, %rdi
	addq	%r14, %rsi
	addq	$96, %rsi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB4_22:                               # %vector.body28
                                        # =>This Inner Loop Header: Depth=1
	vmovups	(%rbx,%rcx), %ymm0
	vmovups	32(%rbx,%rcx), %ymm1
	vmovups	64(%rbx,%rcx), %ymm2
	vmovups	96(%rbx,%rcx), %ymm3
	vxorps	-96(%rsi,%rcx), %ymm0, %ymm0
	vxorps	-64(%rsi,%rcx), %ymm1, %ymm1
	vxorps	-32(%rsi,%rcx), %ymm2, %ymm2
	vxorps	(%rsi,%rcx), %ymm3, %ymm3
	vmovups	%ymm0, -96(%rdi,%rcx)
	vmovups	%ymm1, -64(%rdi,%rcx)
	vmovups	%ymm2, -32(%rdi,%rcx)
	vmovups	%ymm3, (%rdi,%rcx)
	subq	$-128, %rcx
	cmpq	%rcx, %rax
	jne	.LBB4_22
# %bb.23:                               # %middle.block29
	cmpq	%rax, %r8
	jne	.LBB4_13
.LBB4_24:                               # %.loopexit
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 32(%rbx)
	vmovups	%ymm0, (%rbx)
	movq	-88(%rbp), %rax         # 8-byte Reload
	vmovups	%ymm0, (%rax)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
.LBB4_25:
	vzeroupper
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
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%rbx, %rcx
	movq	%rsp, %r8
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
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5               # -- Begin function _crypto_secretbox_xsalsa20poly1305_open
.LCPI6_0:
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
	subq	$224, %rsp
	movq	%rsp, %rbx
	movq	%rsi, %r12
	xorl	%r13d, %r13d
	cmpq	$31, %rdx
	jbe	.LBB6_6
# %bb.1:
	movq	%rdi, 40(%rbx)          # 8-byte Spill
	movq	%rdx, 56(%rbx)          # 8-byte Spill
	movq	%rsp, %r14
	leaq	-32(%r14), %rax
	movq	%rax, 48(%rbx)          # 8-byte Spill
	movq	%rax, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, -32(%r14)
	vmovaps	%ymm0, 96(%rbx)
	leaq	96(%rbx), %rdi
	movq	%rcx, %rsi
	movq	%r8, 32(%rbx)           # 8-byte Spill
	movq	%r8, %rdx
	movq	%rcx, %r15
	vzeroupper
	callq	_crypto_core_hsalsa20
	leaq	16(%r15), %rax
	movq	%rax, 16(%rbx)          # 8-byte Spill
	vmovaps	96(%rbx), %ymm0
	vmovaps	%ymm0, 64(%rbx)
	movq	$0, 8(%rbx)
	movq	%r15, 24(%rbx)          # 8-byte Spill
	movq	16(%r15), %rax
	movq	%rax, (%rbx)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm0, 160(%rbx)
	vmovaps	%ymm0, 128(%rbx)
	leaq	128(%rbx), %rdi
	movq	%rbx, %r15
	leaq	64(%rbx), %rdx
	movq	%r15, %rsi
	vzeroupper
	callq	_crypto_core_salsa20
	vmovaps	128(%rbx), %ymm0
	vmovups	%ymm0, -32(%r14)
	movq	56(%rbx), %r14          # 8-byte Reload
	leaq	-32(%r14), %rdx
	leaq	32(%r12), %rsi
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, (%rbx)
	movq	%r15, %rdi
	movq	48(%rbx), %rcx          # 8-byte Reload
	vzeroupper
	callq	_crypto_onetimeauth_poly1305
	movb	$1, %cl
	movq	$-16, %rsi
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB6_2:                                # =>This Inner Loop Header: Depth=1
	movzbl	32(%r12,%rsi), %edx
	cmpb	16(%rbx,%rsi), %dl
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
	vmovaps	%ymm0, 64(%rbx)
	leaq	64(%rbx), %r15
	movq	%r15, %rdi
	movq	24(%rbx), %rsi          # 8-byte Reload
	movq	32(%rbx), %rdx          # 8-byte Reload
	vzeroupper
	callq	_crypto_core_hsalsa20
	movq	%r14, %rdx
	movq	40(%rbx), %r14          # 8-byte Reload
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	16(%rbx), %rcx          # 8-byte Reload
	movq	%r15, %r8
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
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movq	%r8, %rcx
	movq	%r9, %r8
	jmp	_crypto_secretbox_xsalsa20poly1305_open # TAILCALL
.Lfunc_end7:
	.size	_crypto_secretbox_open, .Lfunc_end7-_crypto_secretbox_open
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
