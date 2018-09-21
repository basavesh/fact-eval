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
	movq	%rdx, %rbx
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdi, %rax
	movzwl	24(%rbp), %ecx
	xorl	%r13d, %r13d
	cmpl	$770, %ecx              # imm = 0x302
	jb	.LBB0_3
# %bb.1:
	cmpl	$37, %r15d
	jb	.LBB0_2
# %bb.7:
	vmovups	(%r8), %xmm0
	vmovups	%xmm0, (%rax)
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
	addq	%rbx, %rsi
	movl	%r12d, %edx
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	movq	%rbx, %r14
	xorl	%r9d, %r9d
	movq	%r8, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rcx
	movq	%rax, %r8
	callq	aesni_cbc_encrypt
	movq	%r14, -200(%rbp)        # 8-byte Spill
	movzbl	-1(%r14,%r15), %eax
	leal	-21(%r12), %edx
	cmpl	$255, %edx
	movl	$255, %ecx
	cmovbl	%edx, %ecx
	cmpl	%eax, %ecx
	setae	-45(%rbp)               # 1-byte Folded Spill
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	cmovbl	%ecx, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	subl	%eax, %edx
	leaq	544(%rbx), %rsi
	movq	16(%rbp), %rax
	movb	%dh, 542(%rbx,%rax)  # NOREX
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movb	%dl, 543(%rbx,%rax)
	movq	%rax, %rdx
	leaq	436(%rbx), %rdi
	vmovups	244(%rbx), %ymm0
	vmovups	276(%rbx), %ymm1
	vmovups	308(%rbx), %ymm2
	vmovups	%ymm2, 500(%rbx)
	vmovups	%ymm1, 468(%rbx)
	vmovups	%ymm0, 436(%rbx)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	vzeroupper
	callq	_sha1_update
	leal	-20(%r12), %r14d
	cmpl	$319, %r14d             # imm = 0x13F
	jbe	.LBB0_6
# %bb.8:
	addl	$-276, %r12d            # imm = 0xFEEC
	andl	$-64, %r12d
	subl	528(%rbx), %r12d
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	callq	_sha1_update
	addl	%r12d, %r13d
	movq	%r13, -168(%rbp)        # 8-byte Spill
	subl	%r12d, %r14d
	movq	-80(%rbp), %rax         # 8-byte Reload
	subl	%r12d, %eax
	movq	%rax, %rsi
	jmp	.LBB0_9
.LBB0_6:
	movq	%r13, -168(%rbp)        # 8-byte Spill
	movq	-80(%rbp), %rsi         # 8-byte Reload
.LBB0_9:
	movl	456(%rbx), %eax
	leal	(%rax,%rsi,8), %eax
	bswapl	%eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movq	%rsp, %rax
	leaq	-32(%rax), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -32(%rax)
	movl	$0, -16(%rax)
	movl	528(%rbx), %r13d
	testl	%r14d, %r14d
	movl	%r14d, -92(%rbp)        # 4-byte Spill
	je	.LBB0_10
# %bb.18:                               # %.lr.ph32
	leaq	464(%rbx), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	leal	7(%rsi), %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	leal	72(%rsi), %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	%esi, %r9d
	movl	%r14d, %r10d
	movl	-168(%rbp), %r11d       # 4-byte Reload
	vxorps	%xmm0, %xmm0, %xmm0
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	xorl	%r12d, %r12d
	movq	%rsi, %r14
	movq	%r9, -112(%rbp)         # 8-byte Spill
	movq	%r10, -104(%rbp)        # 8-byte Spill
	movq	%r11, -176(%rbp)        # 8-byte Spill
	.p2align	4, 0x90
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	movl	%r13d, %eax
	leal	(%r11,%r12), %ecx
	cmpq	%r9, %r12
	setb	%dl
	cmpq	%r12, %r9
	sete	%bl
	xorl	%edi, %edi
	movl	$128, %r8d
	#APP
	testb	%bl, %bl
	movl	%edi, %esi
	cmovnel	%r8d, %esi
	#NO_APP
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movzbl	(%rdi,%rcx), %ecx
	movzbl	%sil, %esi
	#APP
	testb	%dl, %dl
	movl	%esi, %edi
	cmovnel	%ecx, %edi
	#NO_APP
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movb	%dil, 464(%rcx,%rax)
	addl	$1, %r13d
	cmpl	$64, %r13d
	jne	.LBB0_25
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=1
	vmovaps	%xmm0, -160(%rbp)       # 16-byte Spill
	cmpq	-128(%rbp), %r12        # 8-byte Folded Reload
	seta	%bl
	movl	-68(%rbp), %eax         # 4-byte Reload
	ja	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=1
	movl	524(%rcx), %eax
.LBB0_22:                               #   in Loop: Header=BB0_19 Depth=1
	movl	%eax, 524(%rcx)
	movl	$1, %edx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	callq	sha1_block_data_order
	movq	-56(%rbp), %rdx         # 8-byte Reload
	xorl	%eax, %eax
	cmpq	-120(%rbp), %r12        # 8-byte Folded Reload
	setb	%al
	xorl	%r13d, %r13d
	#APP
	testb	%bl, %bl
	movl	%r13d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	andl	$1, %ecx
	vmovd	%ecx, %xmm0
	vpshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	vpslld	$31, %xmm0, %xmm0
	vmovaps	-160(%rbp), %xmm1       # 16-byte Reload
	vblendvps	%xmm0, 436(%rdx), %xmm1, %xmm1
	vmovaps	%xmm1, %xmm0
	movq	-64(%rbp), %rax         # 8-byte Reload
	vmovaps	%xmm0, (%rax)
	je	.LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_19 Depth=1
	movl	452(%rdx), %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
.LBB0_24:                               #   in Loop: Header=BB0_19 Depth=1
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, 16(%rax)
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	-176(%rbp), %r11        # 8-byte Reload
.LBB0_25:                               #   in Loop: Header=BB0_19 Depth=1
	addq	$1, %r12
	cmpq	%r12, %r10
	jne	.LBB0_19
# %bb.11:                               # %._crit_edge33
	movq	%r14, -80(%rbp)         # 8-byte Spill
	cmpl	$64, %r13d
	vmovaps	%xmm0, -160(%rbp)       # 16-byte Spill
	jae	.LBB0_12
.LBB0_26:
	movl	%r13d, %eax
	movl	-92(%rbp), %ebx         # 4-byte Reload
	addl	$64, %ebx
	movq	-56(%rbp), %r14         # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	movl	$63, %edx
	subl	%r13d, %edx
	addq	$1, %rdx
	xorl	%esi, %esi
	callq	memset
	vmovdqa	-160(%rbp), %xmm0       # 16-byte Reload
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%r14, %r8
	subl	%r13d, %ebx
	cmpl	$56, %r13d
	movq	-88(%rbp), %rdi         # 8-byte Reload
	ja	.LBB0_13
# %bb.27:                               # %._crit_edge
	leaq	464(%r8), %rsi
	movq	-80(%rbp), %rcx         # 8-byte Reload
	leal	73(%rcx), %ecx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
	leaq	4(%rax), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	leaq	8(%rax), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	leaq	12(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	vmovd	%xmm0, %r12d
	vpextrd	$1, %xmm0, %r13d
	vpextrd	$2, %xmm0, -104(%rbp)   # 4-byte Folded Spill
	vpextrd	$3, %xmm0, -160(%rbp)   # 4-byte Folded Spill
	jmp	.LBB0_28
.LBB0_10:
	movq	%rsi, %r14
	movq	%r14, -80(%rbp)         # 8-byte Spill
	cmpl	$64, %r13d
	vmovaps	%xmm0, -160(%rbp)       # 16-byte Spill
	jb	.LBB0_26
.LBB0_12:
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %ebx         # 4-byte Reload
.LBB0_13:                               # %.thread
	movq	-80(%rbp), %r12         # 8-byte Reload
	leal	8(%r12), %eax
	leaq	464(%r8), %rsi
	cmpl	%ebx, %eax
	setb	%r14b
	movl	-68(%rbp), %eax         # 4-byte Reload
	jb	.LBB0_15
# %bb.14:                               # %.thread
	movl	524(%r8), %eax
.LBB0_15:                               # %.thread
	movl	%eax, 524(%r8)
	movl	$1, %edx
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	callq	sha1_block_data_order
	movq	-56(%rbp), %r8          # 8-byte Reload
	leal	73(%r12), %ecx
	xorl	%eax, %eax
	movl	%ecx, -112(%rbp)        # 4-byte Spill
	cmpl	%ecx, %ebx
	setb	%al
	xorl	%ecx, %ecx
	#APP
	testb	%r14b, %r14b
	movl	%ecx, %edx
	cmovnel	%eax, %edx
	#NO_APP
	andl	$1, %edx
	vmovd	%edx, %xmm0
	vpshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	vpslld	$31, %xmm0, %xmm0
	vmovaps	-160(%rbp), %xmm1       # 16-byte Reload
	vblendvps	%xmm0, 436(%r8), %xmm1, %xmm0
	movq	-64(%rbp), %rax         # 8-byte Reload
	vmovaps	%xmm0, (%rax)
	je	.LBB0_17
# %bb.16:                               # %.thread
	movl	452(%r8), %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
.LBB0_17:                               # %.thread
	leaq	4(%rax), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	leaq	8(%rax), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	leaq	12(%rax), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, 16(%rax)
	vxorps	%xmm1, %xmm1, %xmm1
	vmovups	%ymm1, 496(%r8)
	vmovups	%ymm1, 464(%r8)
	addl	$64, %ebx
	vmovd	%xmm0, %r12d
	vpextrd	$1, %xmm0, %r13d
	vpextrd	$2, %xmm0, -104(%rbp)   # 4-byte Folded Spill
	vpextrd	$3, %xmm0, -160(%rbp)   # 4-byte Folded Spill
	movq	-176(%rbp), %rsi        # 8-byte Reload
.LBB0_28:
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, 524(%r8)
	movl	$1, %edx
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	vzeroupper
	callq	sha1_block_data_order
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpl	-112(%rbp), %ebx        # 4-byte Folded Reload
	movl	-104(%rbp), %edx        # 4-byte Reload
	movl	-160(%rbp), %esi        # 4-byte Reload
	jae	.LBB0_30
# %bb.29:
	movl	436(%rax), %r12d
	movl	440(%rax), %r13d
	movl	444(%rax), %edx
	movl	448(%rax), %esi
	movl	452(%rax), %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
.LBB0_30:
	bswapl	%r12d
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movl	%r12d, (%rbx)
	bswapl	%r13d
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movl	%r13d, (%rcx)
	bswapl	%edx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movl	%edx, (%rcx)
	bswapl	%esi
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movl	%esi, (%rcx)
	movl	-44(%rbp), %edx         # 4-byte Reload
	bswapl	%edx
	movb	-45(%rbp), %cl          # 1-byte Reload
	movl	$0, %r13d
	movb	%cl, %r13b
	movl	%edx, 16(%rbx)
	vmovups	340(%rax), %ymm0
	vmovups	372(%rax), %ymm1
	vmovups	404(%rax), %ymm2
	vmovups	%ymm2, 64(%r14)
	vmovups	%ymm1, 32(%r14)
	vmovups	%ymm0, (%r14)
	movl	$20, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	vzeroupper
	callq	_sha1_update
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	SHA1_Final
	movq	-80(%rbp), %rdx         # 8-byte Reload
	addl	-168(%rbp), %edx        # 4-byte Folded Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movl	%ecx, %eax
	addl	$20, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	addq	$-21, %r15
	subq	%rax, %r15
	movq	%rdx, %r12
	leaq	20(%rdx), %r10
	xorl	%edx, %edx
	xorl	%esi, %esi
                                        # kill: def %r13d killed %r13d def %r13
	movq	-200(%rbp), %r11        # 8-byte Reload
	movl	-188(%rbp), %r14d       # 4-byte Reload
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
	cmpq	-184(%rbp), %rdx        # 8-byte Folded Reload
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
