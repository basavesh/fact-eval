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
	subq	$168, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rcx, %r15
	movq	%rdx, %r11
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rdi, %r10
	movzwl	16(%rbp), %ecx
	cmpl	$770, %ecx              # imm = 0x302
	jb	.LBB0_3
# %bb.1:
	xorl	%r14d, %r14d
	cmpl	$37, %r15d
	jb	.LBB0_2
# %bb.8:
	movups	(%r8), %xmm0
	movups	%xmm0, (%r10)
	leal	-16(%r15), %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$16, %eax
	movl	$16, %ecx
	jmp	.LBB0_6
.LBB0_3:
	xorl	%eax, %eax
	cmpl	$21, %r15d
	jae	.LBB0_5
# %bb.4:
	xorl	%r14d, %r14d
	jmp	.LBB0_2
.LBB0_5:
	xorl	%ecx, %ecx
	movl	%r15d, %edx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
.LBB0_6:
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	addq	%rcx, %r8
	addq	%r11, %rsi
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	%eax, %edx
	movq	%rax, %r12
	movq	%r12, -56(%rbp)         # 8-byte Spill
	xorl	%r9d, %r9d
	movq	%r8, %rdi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	-104(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rcx
	movq	%r10, %r8
	movq	%r11, %r14
	callq	aesni_cbc_encrypt
	movq	%r14, -176(%rbp)        # 8-byte Spill
	movzbl	-1(%r14,%r15), %r13d
	leal	-21(%r12), %edx
	cmpl	$255, %edx
	movl	$255, %ecx
	cmovbl	%edx, %ecx
	cmpl	%r13d, %ecx
	setb	%al
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	#APP
	testb	%al, %al
	cmovnel	%ecx, %r13d
	#NO_APP
	movl	$1, %r14d
	xorl	%ecx, %ecx
	#APP
	testb	%al, %al
	cmovnel	%ecx, %r14d
	#NO_APP
	subl	%r13d, %edx
	movb	%dh, 555(%rbx)  # NOREX
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movb	%dl, 556(%rbx)
	movups	244(%rbx), %xmm0
	movups	260(%rbx), %xmm1
	movups	276(%rbx), %xmm2
	movups	292(%rbx), %xmm3
	movups	%xmm0, 436(%rbx)
	movups	%xmm1, 452(%rbx)
	movups	%xmm2, 468(%rbx)
	movups	%xmm3, 484(%rbx)
	leaq	544(%rbx), %rsi
	movups	308(%rbx), %xmm0
	movups	%xmm0, 500(%rbx)
	leaq	436(%rbx), %r12
	movups	324(%rbx), %xmm0
	movups	%xmm0, 516(%rbx)
	movl	$13, %edx
	movq	%r12, %rdi
	callq	_sha1_update
	movq	-56(%rbp), %rax         # 8-byte Reload
	leal	-20(%rax), %ecx
	cmpl	$319, %ecx              # imm = 0x13F
	movq	%r12, -128(%rbp)        # 8-byte Spill
	movl	%r13d, -164(%rbp)       # 4-byte Spill
	jbe	.LBB0_7
# %bb.9:
	movq	-56(%rbp), %r13         # 8-byte Reload
	addl	$-276, %r13d            # imm = 0xFEEC
	andl	$-64, %r13d
	subl	528(%rbx), %r13d
	movq	%r12, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%r13, %rdx
	movl	%ecx, %r12d
	callq	_sha1_update
	movq	-120(%rbp), %rax        # 8-byte Reload
	addl	%r13d, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	subl	%r13d, %r12d
	movq	-72(%rbp), %rax         # 8-byte Reload
	subl	%r13d, %eax
	movq	%rax, %rdi
	xorl	%r10d, %r10d
	movl	%r12d, %ecx
	jmp	.LBB0_10
.LBB0_7:
	movq	-72(%rbp), %rdi         # 8-byte Reload
	xorl	%r10d, %r10d
.LBB0_10:
	movl	456(%rbx), %eax
	leal	(%rax,%rdi,8), %edx
	bswapl	%edx
	movq	%rsp, %rax
	leaq	-32(%rax), %r9
	movq	%r9, %rsp
	xorps	%xmm0, %xmm0
	movups	%xmm0, -32(%rax)
	movl	$0, -16(%rax)
	movl	528(%rbx), %eax
	testl	%ecx, %ecx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	%edx, -60(%rbp)         # 4-byte Spill
	je	.LBB0_11
# %bb.15:                               # %.lr.ph32
	leaq	464(%rbx), %rdx
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	leal	7(%rdi), %edx
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	leal	72(%rdi), %edx
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movl	%edi, %edx
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movl	%ecx, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movl	-120(%rbp), %ecx        # 4-byte Reload
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%r12d, %r12d
	movl	%eax, %ebx
	movq	%r15, -208(%rbp)        # 8-byte Spill
	movl	%r14d, -168(%rbp)       # 4-byte Spill
	.p2align	4, 0x90
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	movl	%esi, -80(%rbp)         # 4-byte Spill
	movl	%edx, -56(%rbp)         # 4-byte Spill
	movl	%ebx, %eax
	movq	-136(%rbp), %rcx        # 8-byte Reload
	leal	(%rcx,%r12), %ecx
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	%rdx, %rsi
	cmpq	%rsi, %r12
	setb	%dl
	cmpq	%r12, %rsi
	movl	%ebx, %edi
	sete	%bl
	xorl	%r8d, %r8d
	movl	$128, %r13d
	#APP
	testb	%bl, %bl
	movl	%r8d, %esi
	cmovnel	%r13d, %esi
	#NO_APP
	movl	%edi, %ebx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movzbl	(%rdi,%rcx), %ecx
	movzbl	%sil, %esi
	#APP
	testb	%dl, %dl
	movl	%esi, %edi
	cmovnel	%ecx, %edi
	#NO_APP
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movb	%dil, 464(%rcx,%rax)
	addl	$1, %ebx
	cmpl	$64, %ebx
	jne	.LBB0_17
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=1
	cmpq	-192(%rbp), %r12        # 8-byte Folded Reload
	seta	%bl
	movb	%bl, -144(%rbp)         # 1-byte Spill
	movl	524(%rcx), %eax
	movl	-60(%rbp), %edx         # 4-byte Reload
	#APP
	testb	%bl, %bl
	cmovnel	%edx, %eax
	#NO_APP
	movl	%eax, 524(%rcx)
	movl	$1, %edx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-200(%rbp), %rsi        # 8-byte Reload
	movq	%rcx, %r15
	movq	%r9, %rbx
	movl	%r10d, %r13d
	movl	%r11d, %r14d
	callq	sha1_block_data_order
	movl	%r14d, %r11d
	movl	-168(%rbp), %r14d       # 4-byte Reload
	movl	%r13d, %r10d
	movl	-44(%rbp), %edi         # 4-byte Reload
	movq	%rbx, %r9
	xorl	%eax, %eax
	cmpq	-184(%rbp), %r12        # 8-byte Folded Reload
	setb	%al
	xorl	%ebx, %ebx
	movzbl	-144(%rbp), %edx        # 1-byte Folded Reload
	#APP
	testb	%dl, %dl
	movl	%ebx, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	andl	$1, %ecx
	movl	436(%r15), %eax
	movl	-80(%rbp), %esi         # 4-byte Reload
	#APP
	testb	%cl, %cl
	cmovnel	%eax, %esi
	#NO_APP
	movl	%esi, (%r9)
	movl	440(%r15), %eax
	movl	-56(%rbp), %edx         # 4-byte Reload
	#APP
	testb	%cl, %cl
	cmovnel	%eax, %edx
	#NO_APP
	movl	%edx, 4(%r9)
	movl	444(%r15), %eax
	#APP
	testb	%cl, %cl
	cmovnel	%eax, %edi
	#NO_APP
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movl	%edi, 8(%r9)
	movl	448(%r15), %eax
	#APP
	testb	%cl, %cl
	cmovnel	%eax, %r11d
	#NO_APP
	movl	%r11d, 12(%r9)
	movl	452(%r15), %eax
	movq	-208(%rbp), %r15        # 8-byte Reload
	#APP
	testb	%cl, %cl
	cmovnel	%eax, %r10d
	#NO_APP
	movl	%r10d, 16(%r9)
	movq	-72(%rbp), %rdi         # 8-byte Reload
	addq	$1, %r12
	cmpq	%r12, -88(%rbp)         # 8-byte Folded Reload
	jne	.LBB0_16
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_17:                               #   in Loop: Header=BB0_16 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-56(%rbp), %edx         # 4-byte Reload
	movl	-80(%rbp), %esi         # 4-byte Reload
	addq	$1, %r12
	cmpq	%r12, -88(%rbp)         # 8-byte Folded Reload
	jne	.LBB0_16
	jmp	.LBB0_12
.LBB0_11:
	xorl	%r11d, %r11d
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	%eax, %ebx
.LBB0_12:                               # %._crit_edge33
	cmpl	$64, %ebx
	movq	%r9, -152(%rbp)         # 8-byte Spill
	movl	%r10d, -96(%rbp)        # 4-byte Spill
	movl	%r11d, -88(%rbp)        # 4-byte Spill
	movl	%edx, -56(%rbp)         # 4-byte Spill
	movl	%esi, -80(%rbp)         # 4-byte Spill
	jae	.LBB0_13
# %bb.20:
	movl	%ebx, %eax
	movl	%ebx, %r12d
	movl	-108(%rbp), %r13d       # 4-byte Reload
	addl	$64, %r13d
	movq	-104(%rbp), %rbx        # 8-byte Reload
	leaq	(%rbx,%rax), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	movl	$63, %edx
	subl	%r12d, %edx
	addq	$1, %rdx
	xorl	%esi, %esi
	callq	memset
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rcx
	subl	%r12d, %r13d
	cmpl	$56, %r12d
	movq	-128(%rbp), %r8         # 8-byte Reload
	movl	-60(%rbp), %edx         # 4-byte Reload
	movl	-44(%rbp), %r9d         # 4-byte Reload
	ja	.LBB0_14
# %bb.21:                               # %._crit_edge
	leaq	464(%rcx), %rsi
	leal	73(%rdi), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movl	%r9d, -44(%rbp)         # 4-byte Spill
	jmp	.LBB0_22
.LBB0_13:
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movl	-108(%rbp), %r13d       # 4-byte Reload
	movl	-60(%rbp), %edx         # 4-byte Reload
.LBB0_14:                               # %.thread
	leal	8(%rdi), %eax
	cmpl	%r13d, %eax
	setb	%r12b
	leaq	464(%rcx), %rsi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movl	524(%rcx), %eax
	#APP
	testb	%r12b, %r12b
	cmovnel	%edx, %eax
	#NO_APP
	movl	%eax, 524(%rcx)
	movl	$1, %edx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	sha1_block_data_order
	movq	-128(%rbp), %r8         # 8-byte Reload
	movq	-72(%rbp), %rax         # 8-byte Reload
	leal	73(%rax), %ecx
	movl	%ecx, -136(%rbp)        # 4-byte Spill
	xorl	%eax, %eax
	cmpl	%ecx, %r13d
	setb	%al
	xorl	%ecx, %ecx
	#APP
	testb	%r12b, %r12b
	movl	%ecx, %edx
	cmovnel	%eax, %edx
	#NO_APP
	movq	-104(%rbp), %rcx        # 8-byte Reload
	andl	$1, %edx
	movl	436(%rcx), %eax
	movl	-80(%rbp), %esi         # 4-byte Reload
	#APP
	testb	%dl, %dl
	cmovnel	%eax, %esi
	#NO_APP
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	%esi, -80(%rbp)         # 4-byte Spill
	movl	%esi, (%rdi)
	movl	440(%rcx), %eax
	movl	-56(%rbp), %esi         # 4-byte Reload
	#APP
	testb	%dl, %dl
	cmovnel	%eax, %esi
	#NO_APP
	movl	%esi, -56(%rbp)         # 4-byte Spill
	movl	%esi, 4(%rdi)
	movl	444(%rcx), %eax
	movl	-44(%rbp), %esi         # 4-byte Reload
	#APP
	testb	%dl, %dl
	cmovnel	%eax, %esi
	#NO_APP
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movl	%esi, 8(%rdi)
	movl	448(%rcx), %eax
	movl	-88(%rbp), %esi         # 4-byte Reload
	#APP
	testb	%dl, %dl
	cmovnel	%eax, %esi
	#NO_APP
	movl	%esi, -88(%rbp)         # 4-byte Spill
	movl	%esi, 12(%rdi)
	movl	452(%rcx), %eax
	movl	-96(%rbp), %ebx         # 4-byte Reload
	#APP
	testb	%dl, %dl
	cmovnel	%eax, %ebx
	#NO_APP
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movl	-60(%rbp), %edx         # 4-byte Reload
	movl	%ebx, -96(%rbp)         # 4-byte Spill
	movl	%ebx, 16(%rdi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 512(%rcx)
	movups	%xmm0, 496(%rcx)
	movups	%xmm0, 480(%rcx)
	movups	%xmm0, 464(%rcx)
	addl	$64, %r13d
.LBB0_22:
	movl	%edx, 524(%rcx)
	movl	$1, %edx
	movq	%r8, %r12
	movq	%r12, %rdi
	movq	%rcx, %rbx
	callq	sha1_block_data_order
	cmpl	-136(%rbp), %r13d       # 4-byte Folded Reload
	setb	%r8b
	movl	436(%rbx), %ecx
	movl	-80(%rbp), %r9d         # 4-byte Reload
	#APP
	testb	%r8b, %r8b
	cmovnel	%ecx, %r9d
	#NO_APP
	movq	-152(%rbp), %r13        # 8-byte Reload
	movl	%r9d, (%r13)
	movl	440(%rbx), %ecx
	movl	-56(%rbp), %esi         # 4-byte Reload
	#APP
	testb	%r8b, %r8b
	cmovnel	%ecx, %esi
	#NO_APP
	movl	%esi, 4(%r13)
	movl	444(%rbx), %ecx
	movl	-44(%rbp), %edi         # 4-byte Reload
	#APP
	testb	%r8b, %r8b
	cmovnel	%ecx, %edi
	#NO_APP
	movl	%edi, 8(%r13)
	movl	448(%rbx), %ecx
	movl	-88(%rbp), %eax         # 4-byte Reload
	#APP
	testb	%r8b, %r8b
	cmovnel	%ecx, %eax
	#NO_APP
	movl	%eax, 12(%r13)
	movl	452(%rbx), %ecx
	movl	-96(%rbp), %edx         # 4-byte Reload
	#APP
	testb	%r8b, %r8b
	cmovnel	%ecx, %edx
	#NO_APP
	bswapl	%r9d
	movl	%r9d, (%r13)
	bswapl	%esi
	movl	%esi, 4(%r13)
	bswapl	%edi
	movl	%edi, 8(%r13)
	bswapl	%eax
	movl	%eax, 12(%r13)
	bswapl	%edx
	movl	%edx, 16(%r13)
	movups	420(%rbx), %xmm0
	movups	%xmm0, 80(%r12)
	movups	404(%rbx), %xmm0
	movups	%xmm0, 64(%r12)
	movups	340(%rbx), %xmm0
	movups	356(%rbx), %xmm1
	movups	372(%rbx), %xmm2
	movups	388(%rbx), %xmm3
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
	movq	-72(%rbp), %rcx         # 8-byte Reload
	addl	-120(%rbp), %ecx        # 4-byte Folded Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movl	%edx, %eax
	addl	$20, %edx
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	addq	$-21, %r15
	subq	%rax, %r15
	leaq	20(%rcx), %r8
	xorl	%r9d, %r9d
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	-176(%rbp), %r10        # 8-byte Reload
	movq	%rcx, %r11
	movl	-164(%rbp), %r13d       # 4-byte Reload
	movq	-152(%rbp), %r12        # 8-byte Reload
	.p2align	4, 0x90
.LBB0_23:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r10,%r15), %edi
	cmpq	%r8, %r15
	setb	%bl
	setae	%al
	cmpl	%edi, %r13d
	setne	%cl
	andb	%al, %cl
	#APP
	testb	%cl, %cl
	cmovnel	%r9d, %r14d
	#NO_APP
	cmpq	%r11, %r15
	setae	%al
	movl	%esi, %ecx
	cmpb	(%r12,%rcx), %dil
	setne	%cl
	andb	%bl, %al
	leal	1(%rsi), %edi
	#APP
	testb	%al, %al
	cmovnel	%edi, %esi
	#NO_APP
	andb	%al, %cl
	#APP
	testb	%cl, %cl
	cmovnel	%r9d, %r14d
	#NO_APP
	addq	$1, %rdx
	addq	$1, %r15
	cmpq	-160(%rbp), %rdx        # 8-byte Folded Reload
	jb	.LBB0_23
.LBB0_2:                                # %.loopexit
	movl	%r14d, %eax
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
