	.text
	.file	"Module"
	.globl	_aesni_cbc_hmac_sha1_cipher # -- Begin function _aesni_cbc_hmac_sha1_cipher
	.p2align	4, 0x90
	.type	_aesni_cbc_hmac_sha1_cipher,@function
_aesni_cbc_hmac_sha1_cipher:            # @_aesni_cbc_hmac_sha1_cipher
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
	subq	$184, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rcx, %r12
	movq	%rdx, %r15
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%rdi, %rax
	movzwl	24(%rbp), %ecx
	cmpl	$770, %ecx              # imm = 0x302
	jb	.LBB0_4
# %bb.1:
	cmpq	$37, %r12
	jb	.LBB0_2
# %bb.8:
	vmovups	(%r8), %xmm0
	vmovups	%xmm0, (%rax)
	leaq	-16(%r12), %r14
	movl	$16, %r13d
	jmp	.LBB0_6
.LBB0_4:
	cmpq	$21, %r12
	jae	.LBB0_5
.LBB0_2:
	xorl	%eax, %eax
	jmp	.LBB0_3
.LBB0_5:
	xorl	%r13d, %r13d
	movq	%r12, %r14
.LBB0_6:
	addq	%r13, %r8
	movq	%r13, -120(%rbp)        # 8-byte Spill
	leaq	(%r15,%r13), %rsi
	xorl	%r9d, %r9d
	movq	%r8, %rdi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%r14, %rdx
	movq	-136(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rcx
	movq	%rax, %r8
	callq	aesni_cbc_encrypt
	movq	%r15, -144(%rbp)        # 8-byte Spill
	movq	%r12, -208(%rbp)        # 8-byte Spill
	movzbl	-1(%r15,%r12), %eax
	leal	235(%r14), %ecx
	movl	$276, %edx              # imm = 0x114
	subl	%r14d, %edx
	shrl	$24, %edx
	movzbl	%cl, %esi
	orl	%edx, %esi
	movl	%esi, %ecx
	subl	%eax, %ecx
	sarl	$31, %ecx
	movl	%ecx, %r12d
	notl	%r12d
	andl	%r12d, %eax
	movl	%esi, -164(%rbp)        # 4-byte Spill
	andl	%esi, %ecx
	orl	%eax, %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	leal	21(%rcx), %eax
	movq	%r14, %rcx
	subq	%rax, %rcx
	leaq	544(%rbx), %rsi
	movq	16(%rbp), %rax
	movb	%ch, 542(%rbx,%rax)  # NOREX
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movb	%cl, 543(%rbx,%rax)
	movq	%rax, %rdx
	leaq	436(%rbx), %r13
	vmovups	244(%rbx), %ymm0
	vmovdqu	276(%rbx), %ymm1
	vmovups	308(%rbx), %ymm2
	vmovups	%ymm2, 500(%rbx)
	vmovdqu	%ymm1, 468(%rbx)
	vmovups	%ymm0, 436(%rbx)
	movq	%r13, %rdi
	vzeroupper
	callq	_sha1_update
	movq	%r14, %r15
	addq	$-20, %r15
	cmpq	$319, %r15              # imm = 0x13F
	movq	%r13, -128(%rbp)        # 8-byte Spill
	movl	%r12d, -108(%rbp)       # 4-byte Spill
	jbe	.LBB0_7
# %bb.9:
	leal	-276(%r14), %r14d
	andl	$-64, %r14d
	subl	528(%rbx), %r14d
	movq	%r13, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	callq	_sha1_update
	movq	-120(%rbp), %rax        # 8-byte Reload
	addq	%r14, %rax
	subq	%r14, %r15
	movq	-72(%rbp), %rcx         # 8-byte Reload
	subq	%r14, %rcx
	movq	%rax, %r13
	movq	%rbx, %r11
	jmp	.LBB0_10
.LBB0_7:
	movq	-120(%rbp), %r13        # 8-byte Reload
	movq	%rbx, %r11
	movq	-72(%rbp), %rcx         # 8-byte Reload
.LBB0_10:                               # %._crit_edge40
	xorl	%edi, %edi
	movq	%r15, %r8
	movq	-144(%rbp), %r9         # 8-byte Reload
	movl	456(%r11), %eax
	leal	(%rax,%rcx,8), %r10d
	bswapl	%r10d
	movq	%rsp, %rax
	leaq	-32(%rax), %rdx
	movq	%rdx, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -32(%rax)
	movl	$0, -16(%rax)
	movl	528(%r11), %ebx
	testq	%r8, %r8
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	movq	%r13, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%r8, -56(%rbp)          # 8-byte Spill
	je	.LBB0_15
# %bb.11:                               # %.lr.ph32
	leaq	464(%r11), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%r9, %rax
	movq	%rcx, %r12
	negq	%r12
	leaq	(%rax,%r13), %r15
	vxorps	%xmm0, %xmm0, %xmm0
	xorl	%edi, %edi
	movq	%r8, %r13
	movq	%rcx, %r14
	.p2align	4, 0x90
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r15), %eax
	movl	%r12d, %ecx
	sarl	$24, %ecx
	movl	%ecx, %edx
	notl	%edx
	andl	%eax, %ecx
	movl	%r14d, %eax
	shrl	$24, %eax
	notl	%eax
	andl	%edx, %eax
	andl	$128, %eax
	orl	%ecx, %eax
	movl	%ebx, %ecx
	movb	%al, 464(%r11,%rcx)
	addl	$1, %ebx
	cmpl	$64, %ebx
	jne	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	leaq	7(%r14), %rbx
	shrq	$31, %rbx
	negl	%ebx
	movl	%r10d, %eax
	andl	%ebx, %eax
	orl	%eax, 524(%r11)
	movl	$1, %edx
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	vmovaps	%xmm0, -96(%rbp)        # 16-byte Spill
	callq	sha1_block_data_order
	movl	-60(%rbp), %r10d        # 4-byte Reload
	movabsq	$9223372036854775736, %r9 # imm = 0x7FFFFFFFFFFFFFB8
	movl	-44(%rbp), %edi         # 4-byte Reload
	movq	-136(%rbp), %r11        # 8-byte Reload
	leaq	(%r12,%r9), %rax
	shrq	$31, %rax
	negl	%eax
	andl	%ebx, %eax
	vmovd	%eax, %xmm0
	vpshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	vpand	436(%r11), %xmm0, %xmm0
	vmovdqa	-96(%rbp), %xmm1        # 16-byte Reload
	vpor	%xmm0, %xmm1, %xmm1
	vmovdqa	%xmm1, -96(%rbp)        # 16-byte Spill
	vmovaps	-96(%rbp), %xmm0        # 16-byte Reload
	movq	-160(%rbp), %rcx        # 8-byte Reload
	vmovaps	%xmm0, (%rcx)
	andl	452(%r11), %eax
	orl	%eax, %edi
	movl	%edi, 16(%rcx)
	xorl	%ebx, %ebx
.LBB0_14:                               #   in Loop: Header=BB0_12 Depth=1
	addq	$-1, %r14
	addq	$1, %r12
	addq	$1, %r15
	addq	$-1, %r13
	jne	.LBB0_12
.LBB0_15:                               # %._crit_edge33
	movq	-208(%rbp), %rax        # 8-byte Reload
	leaq	-1(%rax), %rax
	cmpl	$64, %ebx
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	vmovaps	%xmm0, -96(%rbp)        # 16-byte Spill
	jae	.LBB0_16
# %bb.18:
	movl	%ebx, %eax
	movq	-56(%rbp), %r13         # 8-byte Reload
	addl	$64, %r13d
	leaq	(%r11,%rax), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	movl	$64, %edx
	subq	%rax, %rdx
	xorl	%esi, %esi
	callq	memset
	movl	-60(%rbp), %r10d        # 4-byte Reload
	movq	-136(%rbp), %r11        # 8-byte Reload
	subl	%ebx, %r13d
	cmpl	$56, %ebx
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	-160(%rbp), %r12        # 8-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	ja	.LBB0_17
# %bb.19:                               # %._crit_edge
	leaq	464(%r11), %rsi
	movabsq	$9223372036854775736, %rdx # imm = 0x7FFFFFFFFFFFFFB8
	subq	%r14, %rdx
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	leaq	4(%r12), %rdx
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	leaq	8(%r12), %rdx
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	leaq	12(%r12), %rdx
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	vmovdqa	-96(%rbp), %xmm0        # 16-byte Reload
	vmovd	%xmm0, -100(%rbp)       # 4-byte Folded Spill
	vpextrd	$1, %xmm0, -104(%rbp)   # 4-byte Folded Spill
	vpextrd	$2, %xmm0, -56(%rbp)    # 4-byte Folded Spill
	vpextrd	$3, %xmm0, -96(%rbp)    # 4-byte Folded Spill
	movq	%r13, %r14
	movl	-44(%rbp), %r15d        # 4-byte Reload
	jmp	.LBB0_20
.LBB0_16:
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	-160(%rbp), %r12        # 8-byte Reload
	movq	-56(%rbp), %r13         # 8-byte Reload
.LBB0_17:                               # %.thread
	movq	%r13, -56(%rbp)         # 8-byte Spill
	leaq	8(%r14), %r15
	movl	%r13d, %ebx
	subq	%rbx, %r15
	shrq	$31, %r15
	negl	%r15d
	leaq	464(%r11), %r13
	movl	%r10d, %eax
	andl	%r15d, %eax
	orl	%eax, 524(%r11)
	movl	$1, %edx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%r13, %rsi
	callq	sha1_block_data_order
	movq	%r13, %rsi
	movl	-60(%rbp), %r10d        # 4-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	-136(%rbp), %r11        # 8-byte Reload
	movabsq	$9223372036854775736, %rax # imm = 0x7FFFFFFFFFFFFFB8
	subq	%r14, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	addq	%rax, %rbx
	shrq	$31, %rbx
	negl	%ebx
	andl	%r15d, %ebx
	leaq	4(%r12), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	leaq	8(%r12), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	leaq	12(%r12), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	vmovd	%ebx, %xmm0
	vpshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	vpand	436(%r11), %xmm0, %xmm0
	vpor	-96(%rbp), %xmm0, %xmm0 # 16-byte Folded Reload
	vmovdqa	%xmm0, (%r12)
	andl	452(%r11), %ebx
	movq	-56(%rbp), %r14         # 8-byte Reload
	movl	-44(%rbp), %r15d        # 4-byte Reload
	orl	%ebx, %r15d
	movl	%r15d, 16(%r12)
	vpxor	%xmm1, %xmm1, %xmm1
	vmovdqu	%ymm1, 496(%r11)
	vmovdqu	%ymm1, 464(%r11)
	addl	$64, %r14d
	vmovd	%xmm0, -100(%rbp)       # 4-byte Folded Spill
	vpextrd	$1, %xmm0, -104(%rbp)   # 4-byte Folded Spill
	vpextrd	$2, %xmm0, -56(%rbp)    # 4-byte Folded Spill
	vpextrd	$3, %xmm0, -96(%rbp)    # 4-byte Folded Spill
.LBB0_20:
	andl	$1, -108(%rbp)          # 4-byte Folded Spill
	movl	%r10d, 524(%r11)
	movl	$1, %edx
	movq	%rcx, %rbx
	movq	%rbx, %rdi
	movq	%r11, %r13
	vzeroupper
	callq	sha1_block_data_order
	movl	%r14d, %eax
	addq	-176(%rbp), %rax        # 8-byte Folded Reload
	shrq	$31, %rax
	negl	%eax
	movl	436(%r13), %ecx
	andl	%eax, %ecx
	orl	-100(%rbp), %ecx        # 4-byte Folded Reload
	movl	440(%r13), %edx
	andl	%eax, %edx
	orl	-104(%rbp), %edx        # 4-byte Folded Reload
	movl	444(%r13), %esi
	andl	%eax, %esi
	orl	-56(%rbp), %esi         # 4-byte Folded Reload
	movl	448(%r13), %edi
	andl	%eax, %edi
	andl	452(%r13), %eax
	orl	-96(%rbp), %edi         # 4-byte Folded Reload
	orl	%r15d, %eax
	bswapl	%ecx
	movl	%ecx, (%r12)
	bswapl	%edx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movl	%edx, (%rcx)
	bswapl	%esi
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movl	%esi, (%rcx)
	bswapl	%edi
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movl	%edi, (%rcx)
	bswapl	%eax
	movl	%eax, 16(%r12)
	vmovups	340(%r13), %ymm0
	vmovups	372(%r13), %ymm1
	vmovups	404(%r13), %ymm2
	vmovups	%ymm2, 64(%rbx)
	vmovups	%ymm1, 32(%rbx)
	vmovups	%ymm0, (%rbx)
	movl	$20, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	vzeroupper
	callq	_sha1_update
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	SHA1_Final
	movl	-164(%rbp), %edi        # 4-byte Reload
	movl	%edi, %r11d
	movq	-152(%rbp), %rax        # 8-byte Reload
	subl	%edi, %eax
	movl	$20, %ecx
	subl	%eax, %ecx
	movq	-120(%rbp), %rsi        # 8-byte Reload
	addl	%esi, %ecx
	movq	-72(%rbp), %rbx         # 8-byte Reload
	leal	(%rbx,%rcx), %r10d
	addl	$-1, %r10d
	movq	-208(%rbp), %rax        # 8-byte Reload
	leaq	-21(%rax), %rdx
	subl	%edi, %edx
	subl	%ebx, %edx
	subl	%esi, %edx
	addl	$-20, %edx
	negq	%r11
	movq	-144(%rbp), %rcx        # 8-byte Reload
	leaq	(%rcx,%rax), %r8
	addq	$-21, %r8
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movq	-216(%rbp), %r14        # 8-byte Reload
	.p2align	4, 0x90
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r8,%r11), %r9d
	movl	%edx, %edi
	andl	%r10d, %edi
	movl	%edx, %ecx
	sarl	$31, %ecx
	movl	%ebx, %eax
	movzbl	(%r12,%rax), %eax
	xorb	%r9b, %al
	xorl	%r14d, %r9d
	notl	%ecx
	andl	%r9d, %ecx
	orl	%esi, %ecx
	sarl	$31, %edi
	movzbl	%al, %esi
	andl	%edi, %esi
	orl	%ecx, %esi
	subl	%edi, %ebx
	addl	$-1, %r10d
	addl	$1, %edx
	addq	$1, %r11
	cmpq	$20, %r11
	jne	.LBB0_21
# %bb.22:
	negl	%esi
	sarl	$31, %esi
	notl	%esi
	movl	-108(%rbp), %eax        # 4-byte Reload
	andl	%esi, %eax
.LBB0_3:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_aesni_cbc_hmac_sha1_cipher, .Lfunc_end0-_aesni_cbc_hmac_sha1_cipher
	.cfi_endproc
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
