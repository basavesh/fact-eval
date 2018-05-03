	.text
	.file	"Module"
	.p2align	4, 0x90         # -- Begin function _memzero
	.type	_memzero,@function
_memzero:                               # @_memzero
# %bb.0:                                # %entry
	movl	%esi, %eax
	xorl	%esi, %esi
	movq	%rax, %rdx
	jmp	memset                  # TAILCALL
.Lfunc_end0:
	.size	_memzero, .Lfunc_end0-_memzero
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _memzero64
	.type	_memzero64,@function
_memzero64:                             # @_memzero64
# %bb.0:                                # %entry
	movl	%esi, %eax
	xorl	%esi, %esi
	movq	%rax, %rdx
	jmp	memset                  # TAILCALL
.Lfunc_end1:
	.size	_memzero64, .Lfunc_end1-_memzero64
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
	cmpb	$0, 88(%rdi)
	sete	%cl
	movq	24(%rdi), %rax
	movq	32(%rdi), %rbp
	movq	40(%rdi), %r14
	shrl	$4, %edx
	movq	%rdi, -72(%rsp)         # 8-byte Spill
	je	.LBB2_3
# %bb.1:                                # %loop_body.lr.ph
	xorl	%ebx, %ebx
	movb	%cl, %bl
	shlq	$40, %rbx
	movq	%rbx, -24(%rsp)         # 8-byte Spill
	movq	8(%rdi), %rbx
	movq	16(%rdi), %rcx
	movq	%rcx, -40(%rsp)         # 8-byte Spill
	leaq	(,%rcx,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	movq	%rcx, -48(%rsp)         # 8-byte Spill
	movq	%rbx, -32(%rsp)         # 8-byte Spill
	leaq	(,%rbx,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	movq	%rcx, -56(%rsp)         # 8-byte Spill
	movq	(%rdi), %rcx
	movq	%rcx, -64(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	movl	$8, %r8d
	movl	%edx, -80(%rsp)         # 4-byte Spill
	movq	%rsi, -16(%rsp)         # 8-byte Spill
	movq	-64(%rsp), %r11         # 8-byte Reload
	.p2align	4, 0x90
.LBB2_2:                                # %loop_body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, -76(%rsp)         # 4-byte Spill
	leal	-8(%r8), %ecx
	movslq	%ecx, %rcx
	movq	(%rsi,%rcx), %rbx
	movslq	%r8d, %r8
	movq	(%rsi,%r8), %rcx
	movq	%rbx, %r9
	movabsq	$17592186044415, %rdx   # imm = 0xFFFFFFFFFFF
	movq	%rdx, %rsi
	andq	%rsi, %r9
	addq	%rax, %r9
	shrq	$44, %rbx
	movq	%rcx, %rdx
	shlq	$20, %rdx
	leaq	-1048575(%rsi), %rax
	andq	%rdx, %rax
	orq	%rbx, %rax
	addq	%rbp, %rax
	shrq	$24, %rcx
	orq	-24(%rsp), %rcx         # 8-byte Folded Reload
	addq	%r14, %rcx
	movq	%r9, %rdx
	mulxq	%r11, %rbp, %rbx
	movq	%rax, %rdx
	movq	-48(%rsp), %rsi         # 8-byte Reload
	mulxq	%rsi, %r10, %r14
	movq	%rcx, %rdx
	mulxq	-56(%rsp), %rdi, %r15   # 8-byte Folded Reload
	addq	%rbp, %rdi
	adcq	%rbx, %r15
	addq	%r10, %rdi
	adcq	%r14, %r15
	movq	%r9, %rdx
	movq	-32(%rsp), %rbp         # 8-byte Reload
	mulxq	%rbp, %rbx, %r10
	movq	%rax, %rdx
	mulxq	%r11, %r13, %rdx
	movq	%rdx, -8(%rsp)          # 8-byte Spill
	movq	%rcx, %rdx
	mulxq	%rsi, %r14, %r12
	shldq	$20, %rdi, %r15
	movabsq	$17592186044415, %rdx   # imm = 0xFFFFFFFFFFF
	andq	%rdx, %rdi
	addq	%rbx, %r14
	adcq	%r10, %r12
	movq	%r9, %rdx
	movq	-16(%rsp), %rsi         # 8-byte Reload
	mulxq	-40(%rsp), %rbx, %r9    # 8-byte Folded Reload
	addq	%r13, %r14
	movq	%rax, %rdx
	mulxq	%rbp, %rbp, %rax
	adcq	-8(%rsp), %r12          # 8-byte Folded Reload
	movq	%rcx, %rdx
	mulxq	%r11, %rcx, %rdx
	addq	%r15, %r14
	adcq	$0, %r12
	shldq	$20, %r14, %r12
	movabsq	$17592186044415, %r10   # imm = 0xFFFFFFFFFFF
	andq	%r10, %r14
	addq	%rbx, %rcx
	adcq	%r9, %rdx
	addq	%rbp, %rcx
	adcq	%rax, %rdx
	addq	%r12, %rcx
	adcq	$0, %rdx
	shldq	$22, %rcx, %rdx
	leaq	(%rdx,%rdx,4), %rax
	movl	-80(%rsp), %edx         # 4-byte Reload
	addq	%rdi, %rax
	movq	%rax, %rbp
	shrq	$44, %rbp
	addq	%r14, %rbp
	movb	$42, %dil
	bzhiq	%rdi, %rcx, %r14
	movl	-76(%rsp), %ecx         # 4-byte Reload
	andq	%r10, %rax
	addl	$1, %ecx
	addl	$16, %r8d
	cmpl	%edx, %ecx
	jb	.LBB2_2
.LBB2_3:                                # %loop_end
	movq	-72(%rsp), %rcx         # 8-byte Reload
	movq	%rax, 24(%rcx)
	movq	%rbp, 32(%rcx)
	movq	%r14, 40(%rcx)
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
# %bb.0:                                # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$160, %rsp
	movq	%rcx, %r13
                                        # kill: def %edx killed %edx def %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movabsq	$17592186044415, %r14   # imm = 0xFFFFFFFFFFF
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 92(%rsp)
	vmovaps	%ymm0, 64(%rsp)
	vmovaps	%ymm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	movl	$3, %esi
	vzeroupper
	callq	_memzero64
	leaq	56(%rsp), %rdi
	movl	$3, %esi
	callq	_memzero64
	leaq	80(%rsp), %rdi
	movl	$2, %esi
	callq	_memzero64
	movq	$0, 96(%rsp)
	leaq	104(%rsp), %r15
	movl	$16, %esi
	movq	%r15, %rdi
	callq	_memzero
	movb	$0, 120(%rsp)
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	movabsq	$17575274610687, %rdx   # imm = 0xFFC0FFFFFFF
	andq	%rax, %rdx
	movq	%rdx, 32(%rsp)
	shrdq	$44, %rcx, %rax
	leaq	-4128768(%r14), %rdx
	andq	%rax, %rdx
	movq	%rdx, 40(%rsp)
	shrq	$24, %rcx
	movabsq	$68719475727, %rax      # imm = 0xFFFFFFC0F
	andq	%rcx, %rax
	movq	%rax, 48(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 56(%rsp)
	movq	$0, 72(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 80(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 88(%rsp)
	movq	$0, 96(%rsp)
	movb	$0, 120(%rsp)
	xorl	%eax, %eax
	testb	%al, %al
	movq	%r12, 128(%rsp)         # 8-byte Spill
	je	.LBB3_1
# %bb.2:                                # %thenbranch.i12
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, %r13d
	cmpl	$16, %ecx
	movl	$16, %r12d
	cmovbq	%r13, %r12
	testq	%r12, %r12
	je	.LBB3_5
# %bb.3:                                # %loop_body.preheader.i
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB3_4:                                # %loop_body.i
                                        # =>This Inner Loop Header: Depth=1
	addq	%r15, %rax
	movzbl	(%rbx,%rcx), %edx
	movb	%dl, (%rcx,%rax)
	addq	$1, %rcx
	movq	96(%rsp), %rax
	cmpq	%r12, %rcx
	jb	.LBB3_4
.LBB3_5:                                # %loop_end.i16
	addq	%r12, %rax
	movq	%rax, 96(%rsp)
	cmpq	$16, %rax
	jb	.LBB3_14
# %bb.6:                                # %branchmerge33.i
	leaq	104(%rsp), %rsi
	leaq	32(%rsp), %rdi
	movl	$16, %edx
	callq	_poly1305_blocks
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	$0, 96(%rsp)
	jmp	.LBB3_7
.LBB3_1:                                # %entry.branchmerge38_crit_edge.i
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r13d
	xorl	%r12d, %r12d
	movq	%rax, %rcx
.LBB3_7:                                # %branchmerge38.i
	movq	%r13, %rax
	subq	%r12, %rax
	cmpq	$16, %rax
	jb	.LBB3_9
# %bb.8:                                # %thenbranch43.i
	subl	%r12d, %ecx
	andl	$-16, %ecx
	movq	%rcx, %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	leaq	(%rbx,%r12), %rsi
	leaq	32(%rsp), %rdi
                                        # kill: def %edx killed %edx killed %rdx
	callq	_poly1305_blocks
	movq	24(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r12), %r12
.LBB3_9:                                # %branchmerge56.i
	subq	%r12, %r13
	jbe	.LBB3_14
# %bb.10:                               # %thenbranch62.i
	movq	96(%rsp), %rax
	je	.LBB3_13
# %bb.11:                               # %loop_body68.preheader.i
	addq	%r12, %rbx
	leaq	104(%rsp), %rsi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB3_12:                               # %loop_body68.i
                                        # =>This Inner Loop Header: Depth=1
	addq	%rsi, %rax
	movzbl	(%rbx,%rdx), %ecx
	movb	%cl, (%rdx,%rax)
	addq	$1, %rdx
	movq	96(%rsp), %rax
	cmpq	%r13, %rdx
	jb	.LBB3_12
.LBB3_13:                               # %loop_end69.i
	addq	%r13, %rax
	movq	%rax, 96(%rsp)
.LBB3_14:                               # %_poly1305_update.exit
	movq	96(%rsp), %rax
	testq	%rax, %rax
	je	.LBB3_18
# %bb.15:                               # %thenbranch.i
	movb	$1, 104(%rsp,%rax)
	leaq	1(%rax), %rcx
	cmpq	$15, %rcx
	ja	.LBB3_17
# %bb.16:                               # %loop_body.lr.ph.i
	leaq	(%rsp,%rcx), %rdi
	addq	$104, %rdi
	movl	$15, %edx
	subq	%rax, %rdx
	xorl	%esi, %esi
	callq	memset
.LBB3_17:                               # %loop_end.i
	movb	$1, 120(%rsp)
	leaq	32(%rsp), %rdi
	movl	$16, %edx
	movq	%r15, %rsi
	callq	_poly1305_blocks
.LBB3_18:                               # %_poly1305_finish.exit
	leaq	56(%rsp), %r12
	movq	64(%rsp), %rcx
	movq	80(%rsp), %r8
	movq	%rcx, %rdx
	shrq	$44, %rdx
	addq	72(%rsp), %rdx
	andq	%r14, %rcx
	movb	$42, %sil
	bzhiq	%rsi, %rdx, %rsi
	shrq	$42, %rdx
	leaq	(%rdx,%rdx,4), %rax
	addq	56(%rsp), %rax
	movq	%rax, %rbx
	shrq	$44, %rbx
	addq	%rcx, %rbx
	andq	%r14, %rax
	movq	%rbx, %r10
	shrq	$44, %r10
	addq	%rsi, %r10
	andq	%r14, %rbx
	movq	%r10, %rdx
	shrq	$42, %rdx
	negl	%edx
	andl	$5, %edx
	addq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$44, %rcx
	addq	%rbx, %rcx
	andq	%r14, %rdx
	leaq	5(%rdx), %r9
	movq	%r9, %rax
	shrq	$44, %rax
	addq	%rcx, %rax
	movq	%rax, %rbx
	shrq	$44, %rbx
	movabsq	$-4398046511104, %rsi   # imm = 0xFFFFFC0000000000
	orq	%r10, %rsi
	addq	%rbx, %rsi
	movq	%rsi, %rbx
	shrq	$63, %rbx
	addq	$-1, %rbx
	movq	%rbx, %rdi
	andq	%r14, %rdi
	andq	%rdi, %r9
	andq	%rax, %rdi
	andq	%rsi, %rbx
	sarq	$63, %rsi
	andq	%rsi, %rdx
	orq	%r9, %rdx
	andq	%rsi, %rcx
	orq	%rdi, %rcx
	andq	%r10, %rsi
	orq	%rbx, %rsi
	leaq	80(%rsp), %r13
	movq	88(%rsp), %rdi
	movq	%r8, %rax
	andq	%r14, %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$44, %rdx
	andq	%r14, %rax
	shrq	$44, %r8
	movq	%rdi, %rbx
	shlq	$20, %rbx
	addq	$-1048575, %r14         # imm = 0xFFF00001
	andq	%rbx, %r14
	orq	%r8, %r14
	addq	%rcx, %r14
	addq	%rdx, %r14
	movq	%r14, %rcx
	shrq	$44, %rcx
	shrq	$24, %rdi
	addq	%rsi, %rdi
	addq	%rcx, %rdi
	movq	%r14, %rcx
	shlq	$44, %rcx
	orq	%rax, %rcx
	movl	$6164, %eax             # imm = 0x1814
	bextrq	%rax, %r14, %rax
	shlq	$24, %rdi
	orq	%rax, %rdi
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	%rcx, (%rax)
	movq	%rdi, 8(%rax)
	leaq	32(%rsp), %rdi
	movl	$3, %esi
	callq	_memzero64
	movl	$3, %esi
	movq	%r12, %rdi
	callq	_memzero64
	movl	$2, %esi
	movq	%r13, %rdi
	callq	_memzero64
	movq	$0, 96(%rsp)
	movl	$16, %esi
	movq	%r15, %rdi
	callq	_memzero
	movb	$0, 120(%rsp)
	leaq	-40(%rbp), %rsp
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
	.p2align	4, 0x90         # -- Begin function fact.declassify.i1
	.type	fact.declassify.i1,@function
fact.declassify.i1:                     # @fact.declassify.i1
# %bb.0:                                # %entry
	movl	%edi, %eax
	retq
.Lfunc_end4:
	.size	fact.declassify.i1, .Lfunc_end4-fact.declassify.i1
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5               # -- Begin function u0
.LCPI5_0:
	.long	0                       # 0x0
	.long	5                       # 0x5
	.long	2                       # 0x2
	.long	7                       # 0x7
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	6                       # 0x6
	.long	3                       # 0x3
	.text
	.p2align	4, 0x90
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
	cmpl	$64, %edx
	jb	.LBB5_5
# %bb.1:                                # %loop_body.lr.ph.i
	xorl	%r9d, %r9d
	movl	$64, %eax
	.p2align	4, 0x90
.LBB5_2:                                # %loop_body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
	movl	%eax, %r8d
	vmovdqa	(%rdi), %xmm8
	vmovdqa	16(%rdi), %xmm9
	vmovdqa	32(%rdi), %xmm2
	vmovdqa	48(%rdi), %xmm3
	xorl	%eax, %eax
	vmovdqa	%xmm3, %xmm7
	vmovdqa	%xmm2, %xmm6
	vmovdqa	%xmm9, %xmm4
	vmovdqa	%xmm8, %xmm5
	.p2align	4, 0x90
.LBB5_3:                                # %loop_body39.i
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vpaddd	%xmm5, %xmm4, %xmm0
	vpslld	$7, %xmm0, %xmm1
	vpxor	%xmm1, %xmm7, %xmm1
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
	addl	$4, %eax
	cmpl	$20, %eax
	jb	.LBB5_3
# %bb.4:                                # %loop_end40.i
                                        #   in Loop: Header=BB5_2 Depth=1
	vpaddd	%xmm8, %xmm5, %xmm0
	vpaddd	%xmm9, %xmm4, %xmm1
	vpaddd	%xmm2, %xmm6, %xmm2
	vpaddd	%xmm3, %xmm7, %xmm3
	vmovd	%xmm0, %r15d
	vmovd	%xmm1, %r10d
	vmovd	%xmm2, %r11d
	vmovd	%xmm3, %r14d
	movslq	%r9d, %rax
	xorl	(%rsi,%rax), %r15d
	movl	%eax, %ebx
	orl	$48, %ebx
	movslq	%ebx, %r9
	xorl	(%rsi,%r9), %r10d
	movl	%eax, %ebx
	orl	$32, %ebx
	movslq	%ebx, %r12
	xorl	(%rsi,%r12), %r11d
	movl	%eax, %ebx
	orl	$16, %ebx
	movslq	%ebx, %rbx
	xorl	(%rsi,%rbx), %r14d
	movl	%r15d, (%rcx,%rax)
	movl	%r10d, (%rcx,%r9)
	movl	%r11d, (%rcx,%r12)
	movl	%r14d, (%rcx,%rbx)
	vpextrd	$1, %xmm0, %r14d
	vpextrd	$1, %xmm1, %r9d
	vpextrd	$1, %xmm2, %r10d
	vpextrd	$1, %xmm3, %r11d
	movl	%eax, %ebx
	orl	$20, %ebx
	movslq	%ebx, %r15
	xorl	(%rsi,%r15), %r14d
	movl	%eax, %ebx
	orl	$4, %ebx
	movslq	%ebx, %r12
	xorl	(%rsi,%r12), %r9d
	movl	%eax, %ebx
	orl	$52, %ebx
	movslq	%ebx, %r13
	xorl	(%rsi,%r13), %r10d
	movl	%eax, %ebx
	orl	$36, %ebx
	movslq	%ebx, %rbx
	xorl	(%rsi,%rbx), %r11d
	movl	%r14d, (%rcx,%r15)
	movl	%r9d, (%rcx,%r12)
	movl	%r10d, (%rcx,%r13)
	movl	%r11d, (%rcx,%rbx)
	vpextrd	$2, %xmm0, %r14d
	vpextrd	$2, %xmm1, %r9d
	vpextrd	$2, %xmm2, %r10d
	vpextrd	$2, %xmm3, %r11d
	movl	%eax, %ebx
	orl	$40, %ebx
	movslq	%ebx, %r15
	xorl	(%rsi,%r15), %r14d
	movl	%eax, %ebx
	orl	$24, %ebx
	movslq	%ebx, %r12
	xorl	(%rsi,%r12), %r9d
	movl	%eax, %ebx
	orl	$8, %ebx
	movslq	%ebx, %r13
	xorl	(%rsi,%r13), %r10d
	movl	%eax, %ebx
	orl	$56, %ebx
	movslq	%ebx, %rbx
	xorl	(%rsi,%rbx), %r11d
	movl	%r14d, (%rcx,%r15)
	movl	%r9d, (%rcx,%r12)
	movl	%r10d, (%rcx,%r13)
	movl	%r11d, (%rcx,%rbx)
	vpextrd	$3, %xmm0, %r14d
	vpextrd	$3, %xmm1, %r9d
	vpextrd	$3, %xmm2, %r10d
	vpextrd	$3, %xmm3, %r11d
	movl	%eax, %ebx
	orl	$60, %ebx
	movslq	%ebx, %r15
	xorl	(%rsi,%r15), %r14d
	movl	%eax, %ebx
	orl	$44, %ebx
	movslq	%ebx, %r12
	xorl	(%rsi,%r12), %r9d
	movl	%eax, %ebx
	orl	$28, %ebx
	movslq	%ebx, %rbx
	xorl	(%rsi,%rbx), %r10d
	orl	$12, %eax
	cltq
	xorl	(%rsi,%rax), %r11d
	movl	%r14d, (%rcx,%r15)
	movl	%r9d, (%rcx,%r12)
	movl	%r10d, (%rcx,%rbx)
	movl	%r11d, (%rcx,%rax)
	movl	52(%rdi), %eax
	addl	$1, 32(%rdi)
	leal	1(%rax), %ebx
	cmovnel	%eax, %ebx
	movl	%ebx, 52(%rdi)
	leal	64(%r8), %eax
	movl	%r8d, %r9d
	cmpl	%edx, %eax
	jbe	.LBB5_2
.LBB5_5:                                # %_u1.exit
	movq	%rsp, %r14
	movl	%edx, %eax
	andl	$-64, %eax
	subl	%eax, %edx
	je	.LBB5_11
# %bb.6:                                # %thenbranch.i
	addq	%rax, %rsi
	addq	%rax, %rcx
	vmovdqa	(%rdi), %xmm8
	vmovdqa	16(%rdi), %xmm9
	vmovdqa	32(%rdi), %xmm2
	vmovdqa	48(%rdi), %xmm3
	xorl	%eax, %eax
	vmovdqa	%xmm3, %xmm7
	vmovdqa	%xmm2, %xmm6
	vmovdqa	%xmm9, %xmm4
	vmovdqa	%xmm8, %xmm5
	.p2align	4, 0x90
.LBB5_7:                                # %loop_body.i11
                                        # =>This Inner Loop Header: Depth=1
	vpaddd	%xmm5, %xmm4, %xmm0
	vpslld	$7, %xmm0, %xmm1
	vpxor	%xmm1, %xmm7, %xmm1
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
	addl	$4, %eax
	cmpl	$20, %eax
	jb	.LBB5_7
# %bb.8:                                # %loop_body507.lr.ph.i
	vpaddd	%xmm8, %xmm5, %xmm0
	vpaddd	%xmm9, %xmm4, %xmm1
	vpaddd	%xmm2, %xmm6, %xmm2
	vpaddd	%xmm3, %xmm7, %xmm3
	movq	%rsp, %rax
	leaq	-64(%rax), %rdi
	movq	%rdi, %rsp
	vinserti128	$1, %xmm3, %ymm2, %ymm2
	vinserti128	$1, %xmm1, %ymm0, %ymm0
	vpblendd	$156, %ymm2, %ymm0, %ymm1 # ymm1 = ymm0[0,1],ymm2[2,3,4],ymm0[5,6],ymm2[7]
	vmovdqa	.LCPI5_0(%rip), %ymm3   # ymm3 = [0,5,2,7,4,1,6,3]
	vpermd	%ymm1, %ymm3, %ymm1
	vmovdqu	%ymm1, -64(%rax)
	vpblendd	$156, %ymm0, %ymm2, %ymm0 # ymm0 = ymm2[0,1],ymm0[2,3,4],ymm2[5,6],ymm0[7]
	vpermd	%ymm0, %ymm3, %ymm0
	vmovdqu	%ymm0, -32(%rax)
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB5_9:                                # %loop_body507.i
                                        # =>This Inner Loop Header: Depth=1
	cltq
	movzbl	(%rdi,%rax), %ebx
	xorb	(%rsi,%rax), %bl
	movb	%bl, (%rcx,%rax)
	addl	$1, %eax
	cmpl	%edx, %eax
	jb	.LBB5_9
# %bb.10:                               # %loop_end508.i
	movl	$64, %esi
	vzeroupper
	callq	_memzero
.LBB5_11:                               # %_u0.exit
	movq	%r14, %rsp
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	u0, .Lfunc_end5-u0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function _crypto_stream_salsa20
.LCPI6_0:
	.long	1634760805              # 0x61707865
	.long	857760878               # 0x3320646e
	.long	2036477234              # 0x79622d32
	.long	1797285236              # 0x6b206574
	.text
	.p2align	4, 0x90
	.type	_crypto_stream_salsa20,@function
_crypto_stream_salsa20:                 # @_crypto_stream_salsa20
# %bb.0:                                # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%esi, %ebx
	movq	%rdi, %r14
	testl	%ebx, %ebx
	je	.LBB6_2
# %bb.1:                                # %branchmerge
	movq	%rsp, %rax
	leaq	-64(%rax), %r15
	movq	%r15, %rsp
	movl	(%rcx), %esi
	movl	%esi, -44(%rax)
	movl	4(%rcx), %esi
	movl	%esi, -24(%rax)
	movl	8(%rcx), %esi
	movl	%esi, -4(%rax)
	movl	12(%rcx), %esi
	movl	%esi, -16(%rax)
	movl	16(%rcx), %esi
	movl	%esi, -36(%rax)
	movl	20(%rcx), %esi
	movl	%esi, -48(%rax)
	movl	24(%rcx), %esi
	movl	%esi, -28(%rax)
	movl	28(%rcx), %ecx
	movl	%ecx, -8(%rax)
	vmovaps	.LCPI6_0(%rip), %xmm0   # xmm0 = [1634760805,857760878,2036477234,1797285236]
	vmovups	%xmm0, -64(%rax)
	movl	(%rdx), %ecx
	movl	%ecx, -40(%rax)
	movl	4(%rdx), %ecx
	movl	%ecx, -20(%rax)
	movl	$0, -32(%rax)
	movl	$0, -12(%rax)
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	_memzero
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	%ebx, %edx
	movq	%r14, %rcx
	movl	%ebx, %r8d
	callq	u0
	movq	%r15, %rdi
	callq	_memzero32
.LBB6_2:                                # %thenbranch
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	_crypto_stream_salsa20, .Lfunc_end6-_crypto_stream_salsa20
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _memzero32
	.type	_memzero32,@function
_memzero32:                             # @_memzero32
# %bb.0:                                # %entry
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rdi)
	retq
.Lfunc_end7:
	.size	_memzero32, .Lfunc_end7-_memzero32
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function _crypto_stream_salsa20_xor_ic
.LCPI8_0:
	.long	1634760805              # 0x61707865
	.long	857760878               # 0x3320646e
	.long	2036477234              # 0x79622d32
	.long	1797285236              # 0x6b206574
	.text
	.p2align	4, 0x90
	.type	_crypto_stream_salsa20_xor_ic,@function
_crypto_stream_salsa20_xor_ic:          # @_crypto_stream_salsa20_xor_ic
# %bb.0:                                # %entry
	movl	%esi, %r10d
	movq	%rdi, %r11
	testl	%ecx, %ecx
	je	.LBB8_1
# %bb.2:                                # %branchmerge
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	16(%rbp), %rsi
	movq	%rsp, %rdi
	leaq	-16(%rdi), %rsp
	movq	%r9, -16(%rdi)
	movq	%rsp, %rax
	leaq	-64(%rax), %r14
	movq	%r14, %rsp
	movl	(%rsi), %ebx
	movl	%ebx, -44(%rax)
	movl	4(%rsi), %ebx
	movl	%ebx, -24(%rax)
	movl	8(%rsi), %ebx
	movl	%ebx, -4(%rax)
	movl	12(%rsi), %ebx
	movl	%ebx, -16(%rax)
	movl	16(%rsi), %ebx
	movl	%ebx, -36(%rax)
	movl	20(%rsi), %ebx
	movl	%ebx, -48(%rax)
	movl	24(%rsi), %ebx
	movl	%ebx, -28(%rax)
	movl	28(%rsi), %esi
	movl	%esi, -8(%rax)
	vmovaps	.LCPI8_0(%rip), %xmm0   # xmm0 = [1634760805,857760878,2036477234,1797285236]
	vmovups	%xmm0, -64(%rax)
	movl	(%r8), %esi
	movl	%esi, -40(%rax)
	movl	4(%r8), %esi
	movl	%esi, -20(%rax)
	movl	-16(%rdi), %esi
	movl	%esi, -32(%rax)
	movl	-12(%rdi), %esi
	movl	%esi, -12(%rax)
	movq	%r14, %rdi
	movq	%rdx, %rsi
	movl	%ecx, %edx
	movq	%r11, %rcx
	movl	%r10d, %r8d
	callq	u0
	movq	%r14, %rdi
	callq	_memzero32
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB8_1:                                # %thenbranch
	retq
.Lfunc_end8:
	.size	_crypto_stream_salsa20_xor_ic, .Lfunc_end8-_crypto_stream_salsa20_xor_ic
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_core_hsalsa20
	.type	_crypto_core_hsalsa20,@function
_crypto_core_hsalsa20:                  # @_crypto_core_hsalsa20
# %bb.0:                                # %entry
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdi, -64(%rsp)         # 8-byte Spill
	movl	(%rdx), %eax
	movq	%rax, -88(%rsp)         # 8-byte Spill
	movl	4(%rdx), %eax
	movq	%rax, -80(%rsp)         # 8-byte Spill
	movl	8(%rdx), %eax
	movq	%rax, -72(%rsp)         # 8-byte Spill
	movl	12(%rdx), %ebp
	movl	16(%rdx), %r9d
	movl	20(%rdx), %r11d
	movl	24(%rdx), %r8d
	movl	28(%rdx), %r12d
	movl	(%rsi), %r14d
	movl	4(%rsi), %ebx
	movl	8(%rsi), %edi
	movl	12(%rsi), %r13d
	movl	$1797285236, %r15d      # imm = 0x6B206574
	movl	$2036477234, %r10d      # imm = 0x79622D32
	movl	$857760878, %edx        # imm = 0x3320646E
	movl	$1634760805, %eax       # imm = 0x61707865
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB9_1:                                # %loop_body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, -92(%rsp)         # 4-byte Spill
	leal	(%rax,%r11), %ecx
	rorxl	$25, %ecx, %esi
	xorl	%ebp, %esi
	leal	(%rsi,%rax), %ecx
	movq	%rsi, -40(%rsp)         # 8-byte Spill
	rorxl	$23, %ecx, %ebp
	xorl	%edi, %ebp
	movq	%rbp, -16(%rsp)         # 8-byte Spill
	leal	(%rsi,%rbp), %ecx
	rorxl	$19, %ecx, %ecx
	xorl	%r11d, %ecx
	movq	%rcx, -8(%rsp)          # 8-byte Spill
	leal	(%rcx,%rbp), %ecx
	movq	%r14, %rsi
	rorxl	$14, %ecx, %r14d
	xorl	%eax, %r14d
	movq	-88(%rsp), %rbp         # 8-byte Reload
	leal	(%rdx,%rbp), %eax
	rorxl	$25, %eax, %edi
	xorl	%r13d, %edi
	movq	%rdi, -32(%rsp)         # 8-byte Spill
	leal	(%rdi,%rdx), %eax
	rorxl	$23, %eax, %ecx
	xorl	%r8d, %ecx
	movq	%rcx, -24(%rsp)         # 8-byte Spill
	leal	(%rcx,%rdi), %eax
	rorxl	$19, %eax, %r13d
	xorl	%ebp, %r13d
	leal	(%rcx,%r13), %eax
	rorxl	$14, %eax, %r8d
	xorl	%edx, %r8d
	leal	(%r10,%rsi), %eax
	rorxl	$25, %eax, %ecx
	xorl	%r12d, %ecx
	movq	%rcx, -48(%rsp)         # 8-byte Spill
	leal	(%rcx,%r10), %eax
	rorxl	$23, %eax, %ebp
	xorl	-80(%rsp), %ebp         # 4-byte Folded Reload
	leal	(%rcx,%rbp), %eax
	rorxl	$19, %eax, %edx
	xorl	%esi, %edx
	leal	(%rdx,%rbp), %eax
	rorxl	$14, %eax, %r11d
	xorl	%r10d, %r11d
	leal	(%r15,%r9), %eax
	rorxl	$25, %eax, %eax
	xorl	-72(%rsp), %eax         # 4-byte Folded Reload
	leal	(%rax,%r15), %ecx
	rorxl	$23, %ecx, %ecx
	xorl	%ebx, %ecx
	leal	(%rcx,%rax), %ebx
	rorxl	$19, %ebx, %r10d
	xorl	%r9d, %r10d
	leal	(%r10,%rcx), %edi
	rorxl	$14, %edi, %r12d
	xorl	%r15d, %r12d
	leal	(%rax,%r14), %esi
	rorxl	$25, %esi, %ebx
	xorl	%r13d, %ebx
	leal	(%rbx,%r14), %esi
	rorxl	$23, %esi, %edi
	xorl	%ebp, %edi
	movq	%rbx, -88(%rsp)         # 8-byte Spill
	leal	(%rdi,%rbx), %esi
	rorxl	$19, %esi, %esi
	xorl	%eax, %esi
	movq	%rsi, -72(%rsp)         # 8-byte Spill
	movq	%rdi, -80(%rsp)         # 8-byte Spill
	leal	(%rsi,%rdi), %eax
	rorxl	$14, %eax, %eax
	xorl	%r14d, %eax
	movq	-40(%rsp), %rdi         # 8-byte Reload
	leal	(%r8,%rdi), %esi
	rorxl	$25, %esi, %r14d
	xorl	%edx, %r14d
	leal	(%r14,%r8), %edx
	rorxl	$23, %edx, %ebx
	xorl	%ecx, %ebx
	leal	(%rbx,%r14), %ecx
	rorxl	$19, %ecx, %ebp
	xorl	%edi, %ebp
	leal	(%rbx,%rbp), %ecx
	rorxl	$14, %ecx, %edx
	xorl	%r8d, %edx
	movq	-32(%rsp), %rsi         # 8-byte Reload
	leal	(%r11,%rsi), %ecx
	rorxl	$25, %ecx, %r9d
	xorl	%r10d, %r9d
	leal	(%r9,%r11), %ecx
	rorxl	$23, %ecx, %edi
	xorl	-16(%rsp), %edi         # 4-byte Folded Reload
	leal	(%rdi,%r9), %ecx
	rorxl	$19, %ecx, %r13d
	xorl	%esi, %r13d
	leal	(%rdi,%r13), %ecx
	rorxl	$14, %ecx, %r10d
	xorl	%r11d, %r10d
	movq	-48(%rsp), %rsi         # 8-byte Reload
	movq	%r12, -56(%rsp)         # 8-byte Spill
	leal	(%r12,%rsi), %ecx
	rorxl	$25, %ecx, %r11d
	xorl	-8(%rsp), %r11d         # 4-byte Folded Reload
	leal	(%r11,%r12), %ecx
	rorxl	$23, %ecx, %r8d
	xorl	-24(%rsp), %r8d         # 4-byte Folded Reload
	leal	(%r8,%r11), %ecx
	rorxl	$19, %ecx, %r12d
	xorl	%esi, %r12d
	leal	(%r12,%r8), %ecx
	rorxl	$14, %ecx, %r15d
	movl	-92(%rsp), %ecx         # 4-byte Reload
	xorl	-56(%rsp), %r15d        # 4-byte Folded Reload
	addl	$1, %ecx
	cmpl	$10, %ecx
	jb	.LBB9_1
# %bb.2:                                # %loop_end
	movq	-64(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	movl	%edx, 4(%rcx)
	movl	%r10d, 8(%rcx)
	movl	%r15d, 12(%rcx)
	movl	%r14d, 16(%rcx)
	movl	%ebx, 20(%rcx)
	movl	%edi, 24(%rcx)
	movl	%r13d, 28(%rcx)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	_crypto_core_hsalsa20, .Lfunc_end9-_crypto_core_hsalsa20
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_secretbox_xsalsa20poly1305_open
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
	subq	$72, %rsp
	movl	%ecx, %ebx
	movq	%rdx, %r15
	xorl	%r14d, %r14d
	cmpl	$31, %ebx
	jbe	.LBB10_6
# %bb.1:                                # %branchmerge
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rsp, %r13
	addq	$-32, %r13
	movq	%r13, %rsp
	leaq	-112(%rbp), %rdi
	movq	%r8, %rsi
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%r9, %rdx
	movq	%r8, %r12
	callq	_crypto_core_hsalsa20
	movq	%r12, -64(%rbp)         # 8-byte Spill
	leaq	16(%r12), %rdx
	movl	$32, %esi
	movq	%r13, %rdi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	leaq	-112(%rbp), %r12
	movq	%r12, %rcx
	callq	_crypto_stream_salsa20
	movl	$32, %esi
	movq	%r12, %rdi
	callq	_memzero
	movq	%rbx, %r12
	leal	-32(%rbx), %edx
	leaq	32(%r15), %rsi
	leaq	-112(%rbp), %rdi
	movq	%r13, %rcx
	callq	_crypto_onetimeauth_poly1305
	movb	$1, %al
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB10_2:                               # %loop_body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	16(%r15,%rcx), %ebx
	cmpb	-112(%rbp,%rcx), %bl
	setne	%bl
	andb	%al, %bl
	andb	$1, %dl
	movzbl	%dl, %esi
	#APP
	testb	%bl, %bl
	movl	%esi, %edx
	cmovnel	%r14d, %edx
	#NO_APP
	andl	$1, %edx
	andb	$1, %al
	movzbl	%al, %esi
	#APP
	testb	%bl, %bl
	movl	%esi, %eax
	cmovnel	%r14d, %eax
	#NO_APP
	andl	$1, %eax
	addq	$1, %rcx
	cmpl	$16, %ecx
	jb	.LBB10_2
# %bb.3:                                # %_crypto_onetimeauth_poly1305_verify.exit
	movl	$1, %ecx
	#APP
	testb	%al, %al
	movl	%edx, %edi
	cmovnel	%ecx, %edi
	#NO_APP
	andl	$1, %edi
	callq	fact.declassify.i1
	testb	$1, %al
	je	.LBB10_4
# %bb.5:                                # %branchmerge21
	leaq	-112(%rbp), %r14
	movq	%r14, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	_crypto_core_hsalsa20
	subq	$8, %rsp
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movl	-44(%rbp), %esi         # 4-byte Reload
	movq	%r15, %rdx
	movl	%r12d, %ecx
	movq	-56(%rbp), %r8          # 8-byte Reload
	pushq	%r14
	callq	_crypto_stream_salsa20_xor_ic
	addq	$16, %rsp
	movl	$32, %esi
	movq	%r14, %rdi
	callq	_memzero
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, (%rbx)
	movb	$1, %r14b
	jmp	.LBB10_6
.LBB10_4:
	xorl	%r14d, %r14d
.LBB10_6:                               # %thenbranch
	movl	%r14d, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
.Lfunc_end10:
	.size	_crypto_secretbox_xsalsa20poly1305_open, .Lfunc_end10-_crypto_secretbox_xsalsa20poly1305_open
                                        # -- End function
	.globl	_crypto_secretbox       # -- Begin function _crypto_secretbox
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
	movq	%r8, %rbp
	movl	%ecx, %r15d
	movq	%rdx, %r12
	movl	%esi, %r14d
	movq	%rdi, %rbx
	cmpl	$32, %r15d
	jae	.LBB11_2
# %bb.1:
	xorl	%eax, %eax
	jmp	.LBB11_3
.LBB11_2:                               # %branchmerge.i
	leaq	8(%rsp), %r13
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%r9, %rdx
	callq	_crypto_core_hsalsa20
	addq	$16, %rbp
	movq	%r13, (%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movq	%r12, %rdx
	movl	%r15d, %ecx
	movq	%rbp, %r8
	callq	_crypto_stream_salsa20_xor_ic
	movl	$32, %esi
	movq	%r13, %rdi
	callq	_memzero
	leaq	16(%rbx), %rdi
	addl	$-32, %r14d
	leaq	32(%rbx), %rsi
	movl	%r14d, %edx
	movq	%rbx, %rcx
	callq	_crypto_onetimeauth_poly1305
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rbx)
	movb	$1, %al
.LBB11_3:                               # %_crypto_secretbox_xsalsa20poly1305.exit
                                        # kill: def %al killed %al killed %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	_crypto_secretbox, .Lfunc_end11-_crypto_secretbox
                                        # -- End function
	.globl	_crypto_secretbox_open  # -- Begin function _crypto_secretbox_open
	.p2align	4, 0x90
	.type	_crypto_secretbox_open,@function
_crypto_secretbox_open:                 # @_crypto_secretbox_open
# %bb.0:                                # %entry
	jmp	_crypto_secretbox_xsalsa20poly1305_open # TAILCALL
.Lfunc_end12:
	.size	_crypto_secretbox_open, .Lfunc_end12-_crypto_secretbox_open
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
