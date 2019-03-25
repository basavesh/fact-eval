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
	movups	(%r8), %xmm0
	movups	%xmm0, (%rax)
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
	movl	%ecx, %edx
	notl	%edx
	movl	%edx, -92(%rbp)         # 4-byte Spill
	andl	%edx, %eax
	movl	%esi, -148(%rbp)        # 4-byte Spill
	andl	%esi, %ecx
	orl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	leal	21(%rcx), %eax
	movq	%r14, %rcx
	subq	%rax, %rcx
	movb	%ch, 555(%rbx)  # NOREX
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movb	%cl, 556(%rbx)
	movups	244(%rbx), %xmm0
	movdqu	260(%rbx), %xmm1
	movdqu	276(%rbx), %xmm2
	movups	292(%rbx), %xmm3
	movups	%xmm0, 436(%rbx)
	movdqu	%xmm1, 452(%rbx)
	movdqu	%xmm2, 468(%rbx)
	movups	%xmm3, 484(%rbx)
	leaq	544(%rbx), %rsi
	movups	308(%rbx), %xmm0
	movups	%xmm0, 500(%rbx)
	leaq	436(%rbx), %r15
	movups	324(%rbx), %xmm0
	movups	%xmm0, 516(%rbx)
	movl	$13, %edx
	movq	%r15, %rdi
	callq	_sha1_update
	movq	%r14, %r12
	addq	$-20, %r12
	cmpq	$319, %r12              # imm = 0x13F
	movq	%r15, -112(%rbp)        # 8-byte Spill
	jbe	.LBB0_7
# %bb.9:
	leal	-276(%r14), %r14d
	andl	$-64, %r14d
	subl	528(%rbx), %r14d
	movq	%r15, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	callq	_sha1_update
	addq	%r14, %r13
	subq	%r14, %r12
	movq	-64(%rbp), %rax         # 8-byte Reload
	subq	%r14, %rax
	movq	%rbx, %r9
	movq	%rax, %rcx
	jmp	.LBB0_10
.LBB0_7:
	movq	%rbx, %r9
	movq	-64(%rbp), %rcx         # 8-byte Reload
.LBB0_10:                               # %._crit_edge39
	xorl	%edi, %edi
	movq	%r12, %rbx
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movl	456(%r9), %eax
	leal	(%rax,%rcx,8), %r8d
	bswapl	%r8d
	movq	%rsp, %rax
	leaq	-32(%rax), %rdx
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rdx, %rsp
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -32(%rax)
	movl	$0, -16(%rax)
	movl	528(%r9), %r11d
	testq	%rbx, %rbx
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	movq	%r13, -184(%rbp)        # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	je	.LBB0_15
# %bb.11:                               # %.lr.ph31
	leaq	464(%r9), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rsi, %rax
	leal	7(%rcx), %r12d
	movl	$-72, %r15d
	subl	%ecx, %r15d
	leaq	(%rax,%r13), %r13
	xorps	%xmm0, %xmm0
	xorl	%edi, %edi
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
	movl	%r11d, %ecx
	movb	%al, 464(%r9,%rcx)
	addl	$1, %r11d
	cmpl	$64, %r11d
	jne	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	movl	%r12d, %eax
	sarl	$31, %eax
	andl	%r8d, %eax
	orl	%eax, 524(%r9)
	movl	$1, %edx
	movl	%edi, -144(%rbp)        # 4-byte Spill
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movaps	%xmm0, -80(%rbp)        # 16-byte Spill
	callq	sha1_block_data_order
	movl	-52(%rbp), %r8d         # 4-byte Reload
	movl	-144(%rbp), %edi        # 4-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movl	%r15d, %eax
	andl	%r12d, %eax
	sarl	$31, %eax
	movdqu	436(%r9), %xmm0
	movd	%eax, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	pand	%xmm0, %xmm1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	por	%xmm1, %xmm0
	movdqa	%xmm0, -80(%rbp)        # 16-byte Spill
	movaps	-80(%rbp), %xmm0        # 16-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movaps	%xmm0, (%rcx)
	andl	452(%r9), %eax
	orl	%eax, %edi
	movl	%edi, 16(%rcx)
	xorl	%r11d, %r11d
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
	cmpl	$64, %r11d
	movaps	%xmm0, -80(%rbp)        # 16-byte Spill
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	%edi, %r13d
	jae	.LBB0_16
# %bb.18:
	movl	%r11d, %eax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	addl	$64, %ebx
	leaq	(%r9,%rax), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	movl	$64, %edx
	subq	%rax, %rdx
	xorl	%esi, %esi
	movl	%r11d, %r14d
	callq	memset
	movl	-52(%rbp), %r8d         # 4-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	subl	%r14d, %ebx
	cmpl	$56, %r14d
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-136(%rbp), %r12        # 8-byte Reload
	movq	-112(%rbp), %rax        # 8-byte Reload
	ja	.LBB0_17
# %bb.19:                               # %._crit_edge
	leaq	464(%r9), %rsi
	movl	$-72, %r14d
	subl	%ecx, %r14d
	leaq	4(%r12), %rdx
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	leaq	8(%r12), %rdx
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	leaq	12(%r12), %rdx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	movd	%xmm1, -84(%rbp)        # 4-byte Folded Spill
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm0, -88(%rbp)        # 4-byte Folded Spill
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, -48(%rbp)        # 4-byte Folded Spill
	pshufd	$231, %xmm1, %xmm0      # xmm0 = xmm1[3,1,2,3]
	jmp	.LBB0_20
.LBB0_16:
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-136(%rbp), %r12        # 8-byte Reload
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB0_17:                               # %.thread
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	leal	8(%rcx), %eax
	subl	%ebx, %eax
	movl	$-72, %r14d
	subl	%ecx, %r14d
	movq	-48(%rbp), %rcx         # 8-byte Reload
	leal	(%r14,%rcx), %ebx
	andl	%eax, %ebx
	sarl	$31, %eax
	leaq	464(%r9), %r15
	andl	%r8d, %eax
	orl	%eax, 524(%r9)
	movl	$1, %edx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%r15, %rsi
	callq	sha1_block_data_order
	movq	%r15, %rsi
	movl	-52(%rbp), %r8d         # 4-byte Reload
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	sarl	$31, %ebx
	leaq	4(%r12), %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	leaq	8(%r12), %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	leaq	12(%r12), %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movdqu	436(%r9), %xmm0
	movd	%ebx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	pand	%xmm0, %xmm1
	movdqa	-80(%rbp), %xmm2        # 16-byte Reload
	por	%xmm1, %xmm2
	movdqa	%xmm2, (%r12)
	andl	452(%r9), %ebx
	orl	%ebx, %r13d
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movl	%r13d, 16(%r12)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 512(%r9)
	movdqu	%xmm0, 496(%r9)
	movdqu	%xmm0, 480(%r9)
	movdqu	%xmm0, 464(%r9)
	addl	$64, %ebx
	movd	%xmm2, -84(%rbp)        # 4-byte Folded Spill
	pshufd	$229, %xmm2, %xmm0      # xmm0 = xmm2[1,1,2,3]
	movd	%xmm0, -88(%rbp)        # 4-byte Folded Spill
	pshufd	$78, %xmm2, %xmm0       # xmm0 = xmm2[2,3,0,1]
	movd	%xmm0, -48(%rbp)        # 4-byte Folded Spill
	pshufd	$231, %xmm2, %xmm0      # xmm0 = xmm2[3,1,2,3]
.LBB0_20:
	movd	%xmm0, -80(%rbp)        # 4-byte Folded Spill
	addl	%ebx, %r14d
	andl	$1, -92(%rbp)           # 4-byte Folded Spill
	movl	%r8d, 524(%r9)
	movl	$1, %edx
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%r9, %r15
	callq	sha1_block_data_order
	sarl	$31, %r14d
	movl	436(%r15), %eax
	andl	%r14d, %eax
	orl	-84(%rbp), %eax         # 4-byte Folded Reload
	movl	440(%r15), %ecx
	andl	%r14d, %ecx
	orl	-88(%rbp), %ecx         # 4-byte Folded Reload
	movl	444(%r15), %edx
	andl	%r14d, %edx
	orl	-48(%rbp), %edx         # 4-byte Folded Reload
	movl	448(%r15), %esi
	andl	%r14d, %esi
	orl	-80(%rbp), %esi         # 4-byte Folded Reload
	andl	452(%r15), %r14d
	orl	%r13d, %r14d
	bswapl	%eax
	movl	%eax, (%r12)
	bswapl	%ecx
	movq	-160(%rbp), %rax        # 8-byte Reload
	movl	%ecx, (%rax)
	bswapl	%edx
	movq	-168(%rbp), %rax        # 8-byte Reload
	movl	%edx, (%rax)
	bswapl	%esi
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	%esi, (%rax)
	bswapl	%r14d
	movl	%r14d, 16(%r12)
	movups	420(%r15), %xmm0
	movups	%xmm0, 80(%rbx)
	movups	404(%r15), %xmm0
	movups	%xmm0, 64(%rbx)
	movups	340(%r15), %xmm0
	movups	356(%r15), %xmm1
	movups	372(%r15), %xmm2
	movups	388(%r15), %xmm3
	movups	%xmm3, 48(%rbx)
	movups	%xmm2, 32(%rbx)
	movups	%xmm1, 16(%rbx)
	movups	%xmm0, (%rbx)
	movl	$20, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_sha1_update
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	SHA1_Final
	movl	-148(%rbp), %edi        # 4-byte Reload
	movl	%edi, %r11d
	movq	-144(%rbp), %rax        # 8-byte Reload
	subl	%edi, %eax
	movl	$20, %ecx
	subl	%eax, %ecx
	movq	-184(%rbp), %rsi        # 8-byte Reload
	addl	%esi, %ecx
	movq	-64(%rbp), %rbx         # 8-byte Reload
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
	movl	-92(%rbp), %eax         # 4-byte Reload
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
