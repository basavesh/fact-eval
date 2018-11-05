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
	subq	$152, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rcx, %r12
	movq	%rdx, %r15
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%rdi, %rax
	movzwl	16(%rbp), %ecx
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
	leaq	(%r15,%r13), %rsi
	xorl	%r9d, %r9d
	movq	%r8, %rdi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%r14, %rdx
	movq	-120(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rcx
	movq	%rax, %r8
	callq	aesni_cbc_encrypt
	movq	%r15, -128(%rbp)        # 8-byte Spill
	movq	%r12, -176(%rbp)        # 8-byte Spill
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
	movl	%esi, -148(%rbp)        # 4-byte Spill
	andl	%esi, %ecx
	orl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	leal	21(%rcx), %eax
	movq	%r14, %rcx
	subq	%rax, %rcx
	leaq	544(%rbx), %rsi
	movb	%ch, 555(%rbx)  # NOREX
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movb	%cl, 556(%rbx)
	leaq	436(%rbx), %r15
	vmovups	244(%rbx), %ymm0
	vmovdqu	276(%rbx), %ymm1
	vmovups	308(%rbx), %ymm2
	vmovups	%ymm0, 436(%rbx)
	vmovdqu	%ymm1, 468(%rbx)
	vmovups	%ymm2, 500(%rbx)
	movl	$13, %edx
	movq	%r15, %rdi
	vzeroupper
	callq	_sha1_update
	movq	%r14, %rsi
	addq	$-20, %rsi
	cmpq	$319, %rsi              # imm = 0x13F
	movq	%r15, -112(%rbp)        # 8-byte Spill
	jbe	.LBB0_7
# %bb.9:
	leal	-276(%r14), %r14d
	andl	$-64, %r14d
	subl	528(%rbx), %r14d
	movq	%r15, %rdi
	movq	%rsi, %r15
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	callq	_sha1_update
	movq	%r15, %rsi
	addq	%r14, %r13
	subq	%r14, %rsi
	movq	-56(%rbp), %rax         # 8-byte Reload
	subq	%r14, %rax
	movq	%rbx, %r10
	movq	%rax, %rcx
	jmp	.LBB0_10
.LBB0_7:
	movq	%rbx, %r10
	movq	-56(%rbp), %rcx         # 8-byte Reload
.LBB0_10:                               # %._crit_edge39
	xorl	%edi, %edi
	movq	-128(%rbp), %rbx        # 8-byte Reload
	movl	456(%r10), %eax
	leal	(%rax,%rcx,8), %r8d
	bswapl	%r8d
	movq	%rsp, %rax
	leaq	-32(%rax), %rdx
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -32(%rax)
	movl	$0, -16(%rax)
	movl	528(%r10), %r9d
	testq	%rsi, %rsi
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	movl	%r12d, -104(%rbp)       # 4-byte Spill
	movq	%r13, -184(%rbp)        # 8-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	je	.LBB0_15
# %bb.11:                               # %.lr.ph31
	leaq	464(%r10), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rbx, %rax
	leal	7(%rcx), %r12d
	movl	$-72, %r15d
	subl	%ecx, %r15d
	leaq	(%rax,%r13), %r13
	vxorps	%xmm0, %xmm0, %xmm0
	xorl	%edi, %edi
	movq	%rsi, %rbx
	movl	%ecx, %r14d
	.p2align	4, 0x90
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r13), %eax
	leal	72(%r15), %ecx
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
	movl	%r9d, %ecx
	movb	%al, 464(%r10,%rcx)
	addl	$1, %r9d
	cmpl	$64, %r9d
	jne	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	movl	%r12d, %eax
	sarl	$31, %eax
	andl	%r8d, %eax
	orl	%eax, 524(%r10)
	movl	$1, %edx
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	vmovaps	%xmm0, -80(%rbp)        # 16-byte Spill
	callq	sha1_block_data_order
	movl	-48(%rbp), %r8d         # 4-byte Reload
	movl	-44(%rbp), %edi         # 4-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movl	%r15d, %eax
	andl	%r12d, %eax
	sarl	$31, %eax
	vmovd	%eax, %xmm0
	vpshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	vpand	436(%r10), %xmm0, %xmm0
	vmovdqa	-80(%rbp), %xmm1        # 16-byte Reload
	vpor	%xmm0, %xmm1, %xmm1
	vmovdqa	%xmm1, -80(%rbp)        # 16-byte Spill
	vmovaps	-80(%rbp), %xmm0        # 16-byte Reload
	movq	-144(%rbp), %rcx        # 8-byte Reload
	vmovaps	%xmm0, (%rcx)
	andl	452(%r10), %eax
	orl	%eax, %edi
	movl	%edi, 16(%rcx)
	xorl	%r9d, %r9d
.LBB0_14:                               #   in Loop: Header=BB0_12 Depth=1
	addl	$-1, %r12d
	addl	$1, %r15d
	addl	$-1, %r14d
	addq	$1, %r13
	addq	$-1, %rbx
	jne	.LBB0_12
.LBB0_15:                               # %._crit_edge32
	movq	-176(%rbp), %rax        # 8-byte Reload
	leaq	-1(%rax), %rax
	cmpl	$64, %r9d
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	vmovaps	%xmm0, -80(%rbp)        # 16-byte Spill
	jae	.LBB0_16
# %bb.18:
	movl	%r9d, %eax
	movq	-88(%rbp), %r13         # 8-byte Reload
	addl	$64, %r13d
	leaq	(%r10,%rax), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	movl	$64, %edx
	subq	%rax, %rdx
	xorl	%esi, %esi
	movl	%r9d, %ebx
	callq	memset
	movl	-48(%rbp), %r8d         # 4-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	subl	%ebx, %r13d
	cmpl	$56, %ebx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-144(%rbp), %r15        # 8-byte Reload
	movq	-112(%rbp), %rax        # 8-byte Reload
	ja	.LBB0_17
# %bb.19:                               # %._crit_edge
	leaq	464(%r10), %rsi
	movl	$-72, %r14d
	subl	%ecx, %r14d
	leaq	4(%r15), %rdx
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	leaq	8(%r15), %rdx
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	leaq	12(%r15), %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	vmovdqa	-80(%rbp), %xmm0        # 16-byte Reload
	vmovd	%xmm0, -92(%rbp)        # 4-byte Folded Spill
	vpextrd	$1, %xmm0, -96(%rbp)    # 4-byte Folded Spill
	vpextrd	$2, %xmm0, -100(%rbp)   # 4-byte Folded Spill
	vpextrd	$3, %xmm0, -80(%rbp)    # 4-byte Folded Spill
	movl	-44(%rbp), %r12d        # 4-byte Reload
	jmp	.LBB0_20
.LBB0_16:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-144(%rbp), %r15        # 8-byte Reload
	movq	-88(%rbp), %r13         # 8-byte Reload
.LBB0_17:                               # %.thread
	leal	8(%rcx), %eax
	subl	%r13d, %eax
	movl	$-72, %r14d
	subl	%ecx, %r14d
	leal	(%r14,%r13), %ebx
	andl	%eax, %ebx
	sarl	$31, %eax
	leaq	464(%r10), %r12
	andl	%r8d, %eax
	orl	%eax, 524(%r10)
	movl	$1, %edx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%r12, %rsi
	callq	sha1_block_data_order
	movq	%r12, %rsi
	movl	-48(%rbp), %r8d         # 4-byte Reload
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	sarl	$31, %ebx
	leaq	4(%r15), %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	leaq	8(%r15), %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	leaq	12(%r15), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	vmovd	%ebx, %xmm0
	vpshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	vpand	436(%r10), %xmm0, %xmm0
	vpor	-80(%rbp), %xmm0, %xmm0 # 16-byte Folded Reload
	vmovdqa	%xmm0, (%r15)
	andl	452(%r10), %ebx
	movl	-44(%rbp), %r12d        # 4-byte Reload
	orl	%ebx, %r12d
	movl	%r12d, 16(%r15)
	vpxor	%xmm1, %xmm1, %xmm1
	vmovdqu	%ymm1, 496(%r10)
	vmovdqu	%ymm1, 464(%r10)
	addl	$64, %r13d
	vmovd	%xmm0, -92(%rbp)        # 4-byte Folded Spill
	vpextrd	$1, %xmm0, -96(%rbp)    # 4-byte Folded Spill
	vpextrd	$2, %xmm0, -100(%rbp)   # 4-byte Folded Spill
	vpextrd	$3, %xmm0, -80(%rbp)    # 4-byte Folded Spill
.LBB0_20:
	addl	%r13d, %r14d
	andl	$1, -104(%rbp)          # 4-byte Folded Spill
	movl	%r8d, 524(%r10)
	movl	$1, %edx
	movq	%rax, %r13
	movq	%r13, %rdi
	movq	%r10, %rbx
	vzeroupper
	callq	sha1_block_data_order
	sarl	$31, %r14d
	movl	436(%rbx), %eax
	andl	%r14d, %eax
	orl	-92(%rbp), %eax         # 4-byte Folded Reload
	movl	440(%rbx), %ecx
	andl	%r14d, %ecx
	orl	-96(%rbp), %ecx         # 4-byte Folded Reload
	movl	444(%rbx), %edx
	andl	%r14d, %edx
	orl	-100(%rbp), %edx        # 4-byte Folded Reload
	movl	448(%rbx), %esi
	andl	%r14d, %esi
	andl	452(%rbx), %r14d
	orl	-80(%rbp), %esi         # 4-byte Folded Reload
	orl	%r12d, %r14d
	bswapl	%eax
	movl	%eax, (%r15)
	bswapl	%ecx
	movq	-160(%rbp), %rax        # 8-byte Reload
	movl	%ecx, (%rax)
	bswapl	%edx
	movq	-168(%rbp), %rax        # 8-byte Reload
	movl	%edx, (%rax)
	bswapl	%esi
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	%esi, (%rax)
	bswapl	%r14d
	movl	%r14d, 16(%r15)
	vmovups	340(%rbx), %ymm0
	vmovups	372(%rbx), %ymm1
	vmovups	404(%rbx), %ymm2
	vmovups	%ymm2, 64(%r13)
	vmovups	%ymm1, 32(%r13)
	vmovups	%ymm0, (%r13)
	movl	$20, %edx
	movq	%r13, %rdi
	movq	%r15, %rsi
	vzeroupper
	callq	_sha1_update
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	SHA1_Final
	movl	-148(%rbp), %edi        # 4-byte Reload
	movl	%edi, %r11d
	movq	-136(%rbp), %rax        # 8-byte Reload
	subl	%edi, %eax
	movl	$20, %ecx
	subl	%eax, %ecx
	movq	-184(%rbp), %rsi        # 8-byte Reload
	addl	%esi, %ecx
	movq	-56(%rbp), %rbx         # 8-byte Reload
	leal	(%rbx,%rcx), %r10d
	addl	$-1, %r10d
	movq	-176(%rbp), %rax        # 8-byte Reload
	leaq	-21(%rax), %rdx
	subl	%edi, %edx
	subl	%ebx, %edx
	subl	%esi, %edx
	addl	$-20, %edx
	negq	%r11
	movq	-128(%rbp), %rcx        # 8-byte Reload
	leaq	(%rcx,%rax), %r8
	addq	$-21, %r8
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movq	-192(%rbp), %r14        # 8-byte Reload
	.p2align	4, 0x90
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r8,%r11), %r9d
	movl	%edx, %edi
	andl	%r10d, %edi
	movl	%edx, %ecx
	sarl	$31, %ecx
	movl	%ebx, %eax
	movzbl	(%r15,%rax), %eax
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
	movl	-104(%rbp), %eax        # 4-byte Reload
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
	.section	.text.__llvm_retpoline_r11,"axG",@progbits,__llvm_retpoline_r11,comdat
	.hidden	__llvm_retpoline_r11    # -- Begin function __llvm_retpoline_r11
	.weak	__llvm_retpoline_r11
	.p2align	4, 0x90
	.type	__llvm_retpoline_r11,@function
__llvm_retpoline_r11:                   # @__llvm_retpoline_r11
# %bb.0:                                # %entry
	callq	.LBB1_2
.LBB1_1:                                # Block address taken
                                        # %entry
                                        # =>This Inner Loop Header: Depth=1
	pause
	lfence
	jmp	.LBB1_1
	.p2align	4, 0x90
.LBB1_2:                                # Block address taken
                                        # %entry
	movq	%r11, (%rsp)
	retq
.Lfunc_end1:
	.size	__llvm_retpoline_r11, .Lfunc_end1-__llvm_retpoline_r11
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
