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
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %rax
	movzwl	16(%rbp), %ecx
	xorl	%r13d, %r13d
	cmpl	$770, %ecx              # imm = 0x302
	jb	.LBB0_3
# %bb.1:
	cmpl	$37, %r15d
	jb	.LBB0_2
# %bb.7:
	movups	(%r8), %xmm0
	movups	%xmm0, (%rax)
	leal	-16(%r15), %r12d
	movl	$16, %r13d
	movl	$16, %ecx
	jmp	.LBB0_5
.LBB0_3:
	cmpl	$21, %r15d
	jb	.LBB0_2
# %bb.4:
	xorl	%ecx, %ecx
	movl	%r15d, %r12d
.LBB0_5:
	movl	%r13d, %esi
	addq	%rcx, %r8
	addq	%r14, %rsi
	movl	%r12d, %edx
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	xorl	%r9d, %r9d
	movq	%r8, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rbx, %rcx
	movq	%rax, %r8
	callq	aesni_cbc_encrypt
	movzbl	-1(%r14,%r15), %eax
	leal	-21(%r12), %edx
	cmpl	$255, %edx
	movl	$255, %ecx
	cmovbl	%edx, %ecx
	cmpl	%eax, %ecx
	setae	-45(%rbp)               # 1-byte Folded Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	cmovbl	%ecx, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	subl	%eax, %edx
	movb	%dh, 555(%rbx)  # NOREX
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movb	%dl, 556(%rbx)
	movups	244(%rbx), %xmm0
	movdqu	260(%rbx), %xmm1
	movups	276(%rbx), %xmm2
	movups	292(%rbx), %xmm3
	movups	%xmm0, 436(%rbx)
	movdqu	%xmm1, 452(%rbx)
	movups	%xmm2, 468(%rbx)
	movups	%xmm3, 484(%rbx)
	leaq	544(%rbx), %rsi
	movups	308(%rbx), %xmm0
	movups	%xmm0, 500(%rbx)
	leaq	436(%rbx), %rdi
	movdqu	324(%rbx), %xmm0
	movdqu	%xmm0, 516(%rbx)
	movl	$13, %edx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	_sha1_update
	leal	-20(%r12), %esi
	cmpl	$319, %esi              # imm = 0x13F
	jbe	.LBB0_6
# %bb.8:
	addl	$-276, %r12d            # imm = 0xFEEC
	andl	$-64, %r12d
	subl	528(%rbx), %r12d
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	%esi, -80(%rbp)         # 4-byte Spill
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	callq	_sha1_update
	addl	%r12d, %r13d
	movq	%r13, -168(%rbp)        # 8-byte Spill
	movl	-80(%rbp), %ecx         # 4-byte Reload
	subl	%r12d, %ecx
	movq	-56(%rbp), %rax         # 8-byte Reload
	subl	%r12d, %eax
	movq	%rax, %rdx
	movl	%ecx, %esi
	jmp	.LBB0_9
.LBB0_6:
	movq	%r13, -168(%rbp)        # 8-byte Spill
	movq	-56(%rbp), %rdx         # 8-byte Reload
.LBB0_9:
	movl	456(%rbx), %eax
	leal	(%rax,%rdx,8), %eax
	bswapl	%eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movq	%rsp, %rax
	leaq	-32(%rax), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
	pxor	%xmm1, %xmm1
	movdqa	%xmm1, -32(%rax)
	movl	$0, -16(%rax)
	movl	528(%rbx), %r13d
	testl	%esi, %esi
	movq	%r14, -192(%rbp)        # 8-byte Spill
	movq	%rbx, -144(%rbp)        # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%esi, -80(%rbp)         # 4-byte Spill
	je	.LBB0_13
# %bb.10:                               # %.lr.ph32
	leaq	464(%rbx), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	leal	7(%rdx), %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	leal	72(%rdx), %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	%edx, %r8d
	movl	%esi, %r9d
	movl	-168(%rbp), %r10d       # 4-byte Reload
	pxor	%xmm1, %xmm1
	xorl	%r11d, %r11d
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	xorl	%r12d, %r12d
	movq	%r8, -112(%rbp)         # 8-byte Spill
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movq	%r10, -96(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movl	%r13d, %eax
	leal	(%r10,%r12), %ecx
	cmpq	%r8, %r12
	setb	%dl
	cmpq	%r12, %r8
	sete	%bl
	movl	$128, %edi
	#APP
	testb	%bl, %bl
	movl	%r11d, %esi
	cmovnel	%edi, %esi
	#NO_APP
	movzbl	(%r14,%rcx), %ecx
	movzbl	%sil, %esi
	#APP
	testb	%dl, %dl
	movl	%esi, %edi
	cmovnel	%ecx, %edi
	#NO_APP
	movq	-144(%rbp), %rbx        # 8-byte Reload
	movb	%dil, 464(%rbx,%rax)
	addl	$1, %r13d
	cmpl	$64, %r13d
	jne	.LBB0_12
# %bb.20:                               #   in Loop: Header=BB0_11 Depth=1
	movdqa	%xmm1, -160(%rbp)       # 16-byte Spill
	cmpq	-128(%rbp), %r12        # 8-byte Folded Reload
	seta	%r14b
	movl	-68(%rbp), %eax         # 4-byte Reload
	ja	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_11 Depth=1
	movl	524(%rbx), %eax
.LBB0_22:                               #   in Loop: Header=BB0_11 Depth=1
	movl	%eax, 524(%rbx)
	movl	$1, %edx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	callq	sha1_block_data_order
	xorl	%eax, %eax
	cmpq	-120(%rbp), %r12        # 8-byte Folded Reload
	setb	%al
	xorl	%r13d, %r13d
	#APP
	testb	%r14b, %r14b
	movl	%r13d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	movdqu	436(%rbx), %xmm0
	andl	$1, %ecx
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	pslld	$31, %xmm1
	psrad	$31, %xmm1
	pand	%xmm1, %xmm0
	pandn	-160(%rbp), %xmm1       # 16-byte Folded Reload
	por	%xmm0, %xmm1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movdqa	%xmm1, (%rcx)
	movq	-56(%rbp), %rdx         # 8-byte Reload
	je	.LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movl	452(%rax), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB0_24:                               #   in Loop: Header=BB0_11 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, 16(%rcx)
	movq	-192(%rbp), %r14        # 8-byte Reload
	movq	-112(%rbp), %r8         # 8-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	xorl	%r11d, %r11d
	addq	$1, %r12
	cmpq	%r12, %r9
	jne	.LBB0_11
	jmp	.LBB0_13
	.p2align	4, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	addq	$1, %r12
	cmpq	%r12, %r9
	jne	.LBB0_11
.LBB0_13:                               # %._crit_edge33
	cmpl	$64, %r13d
	movdqa	%xmm1, -160(%rbp)       # 16-byte Spill
	jae	.LBB0_14
# %bb.26:
	movl	%r13d, %eax
	movl	-80(%rbp), %r12d        # 4-byte Reload
	addl	$64, %r12d
	movq	-144(%rbp), %r14        # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	movl	$63, %edx
	subl	%r13d, %edx
	addq	$1, %rdx
	xorl	%esi, %esi
	callq	memset
	movdqa	-160(%rbp), %xmm1       # 16-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	-64(%rbp), %rax         # 8-byte Reload
	subl	%r13d, %r12d
	cmpl	$56, %r13d
	movq	-88(%rbp), %rcx         # 8-byte Reload
	ja	.LBB0_15
# %bb.27:                               # %._crit_edge
	leaq	464(%r14), %rsi
	leal	73(%rdx), %r13d
	leaq	4(%rax), %rdx
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	leaq	8(%rax), %rdx
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	leaq	12(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movd	%xmm1, -112(%rbp)       # 4-byte Folded Spill
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm0, -104(%rbp)       # 4-byte Folded Spill
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, -96(%rbp)        # 4-byte Folded Spill
	pshufd	$231, %xmm1, %xmm0      # xmm0 = xmm1[3,1,2,3]
	movd	%xmm0, -160(%rbp)       # 4-byte Folded Spill
	jmp	.LBB0_28
.LBB0_14:
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movl	-80(%rbp), %r12d        # 4-byte Reload
.LBB0_15:                               # %.thread
	leal	8(%rdx), %eax
	movq	-144(%rbp), %r14        # 8-byte Reload
	leaq	464(%r14), %rsi
	cmpl	%r12d, %eax
	movl	%r12d, %r13d
	setb	%r12b
	movl	-68(%rbp), %eax         # 4-byte Reload
	movq	%rdx, %rbx
	jb	.LBB0_17
# %bb.16:                               # %.thread
	movl	524(%r14), %eax
.LBB0_17:                               # %.thread
	movl	%eax, 524(%r14)
	movl	$1, %edx
	movq	%rcx, %rdi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	sha1_block_data_order
	leal	73(%rbx), %ecx
	xorl	%eax, %eax
	movl	%ecx, %edi
	cmpl	%ecx, %r13d
	setb	%al
	xorl	%ecx, %ecx
	#APP
	testb	%r12b, %r12b
	movl	%ecx, %edx
	cmovnel	%eax, %edx
	#NO_APP
	movdqu	436(%r14), %xmm1
	andl	$1, %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	pslld	$31, %xmm0
	psrad	$31, %xmm0
	pand	%xmm0, %xmm1
	pandn	-160(%rbp), %xmm0       # 16-byte Folded Reload
	por	%xmm1, %xmm0
	movq	-64(%rbp), %rax         # 8-byte Reload
	movdqa	%xmm0, (%rax)
	je	.LBB0_19
# %bb.18:                               # %.thread
	movl	452(%r14), %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
.LBB0_19:                               # %.thread
	leaq	4(%rax), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	leaq	8(%rax), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	leaq	12(%rax), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, 16(%rax)
	pxor	%xmm1, %xmm1
	movdqu	%xmm1, 512(%r14)
	movdqu	%xmm1, 496(%r14)
	movdqu	%xmm1, 480(%r14)
	movdqu	%xmm1, 464(%r14)
	addl	$64, %r13d
	movd	%xmm0, -112(%rbp)       # 4-byte Folded Spill
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, -104(%rbp)       # 4-byte Folded Spill
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	movd	%xmm1, -96(%rbp)        # 4-byte Folded Spill
	pshufd	$231, %xmm0, %xmm0      # xmm0 = xmm0[3,1,2,3]
	movd	%xmm0, -160(%rbp)       # 4-byte Folded Spill
	movl	%r13d, %r12d
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movl	%edi, %r13d
.LBB0_28:
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, 524(%r14)
	movl	$1, %edx
	movq	%rcx, %rbx
	movq	%rbx, %rdi
	callq	sha1_block_data_order
	cmpl	%r13d, %r12d
	movq	%rbx, %r12
	movl	-112(%rbp), %ecx        # 4-byte Reload
	movl	-104(%rbp), %edx        # 4-byte Reload
	movl	-96(%rbp), %esi         # 4-byte Reload
	movl	-160(%rbp), %edi        # 4-byte Reload
	jae	.LBB0_30
# %bb.29:
	movl	436(%r14), %ecx
	movl	440(%r14), %edx
	movl	444(%r14), %esi
	movl	448(%r14), %edi
	movl	452(%r14), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB0_30:
	bswapl	%ecx
	movq	-64(%rbp), %r13         # 8-byte Reload
	movl	%ecx, (%r13)
	bswapl	%edx
	movq	-120(%rbp), %rax        # 8-byte Reload
	movl	%edx, (%rax)
	bswapl	%esi
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	%esi, (%rax)
	bswapl	%edi
	movq	-136(%rbp), %rax        # 8-byte Reload
	movl	%edi, (%rax)
	movl	-44(%rbp), %eax         # 4-byte Reload
	bswapl	%eax
	movl	%eax, 16(%r13)
	movups	420(%r14), %xmm0
	movups	%xmm0, 80(%r12)
	movl	$0, %ebx
	movb	-45(%rbp), %al          # 1-byte Reload
	movb	%al, %bl
	movups	404(%r14), %xmm0
	movups	%xmm0, 64(%r12)
	movups	340(%r14), %xmm0
	movups	356(%r14), %xmm1
	movups	372(%r14), %xmm2
	movups	388(%r14), %xmm3
	movups	%xmm3, 48(%r12)
	movups	%xmm2, 32(%r12)
	movups	%xmm1, 16(%r12)
	movups	%xmm0, (%r12)
	movl	$20, %edx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	_sha1_update
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	SHA1_Final
	movq	-56(%rbp), %rdx         # 8-byte Reload
	addl	-168(%rbp), %edx        # 4-byte Folded Reload
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movl	%ecx, %eax
	addl	$20, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	addq	$-21, %r15
	subq	%rax, %r15
	movq	%rdx, %r12
	leaq	20(%rdx), %r10
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	%ebx, %r13d
	movq	-192(%rbp), %r11        # 8-byte Reload
	movl	-180(%rbp), %r14d       # 4-byte Reload
	.p2align	4, 0x90
.LBB0_31:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r11,%r15), %eax
	cmpl	%eax, %r14d
	setne	%r8b
	movq	%r12, %rcx
	cmpq	%rcx, %r15
	setae	%cl
	movl	%esi, %edi
	movq	-64(%rbp), %rbx         # 8-byte Reload
	cmpb	(%rbx,%rdi), %al
	setne	%al
	cmpq	%r10, %r15
	setb	%r9b
	jae	.LBB0_33
# %bb.32:                               #   in Loop: Header=BB0_31 Depth=1
	andb	%cl, %al
	movl	%eax, %r8d
.LBB0_33:                               #   in Loop: Header=BB0_31 Depth=1
	testb	%r8b, %r8b
	movl	$0, %eax
	cmovnel	%eax, %r13d
	andb	%r9b, %cl
	movzbl	%cl, %eax
	addl	%eax, %esi
	addq	$1, %rdx
	addq	$1, %r15
	cmpq	-176(%rbp), %rdx        # 8-byte Folded Reload
	jb	.LBB0_31
.LBB0_2:                                # %.loopexit
	movl	%r13d, %eax
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
