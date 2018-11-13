	.text
	.file	"Module"
	.p2align	4, 0x90         # -- Begin function SHA1_Final_secret
	.type	SHA1_Final_secret,@function
SHA1_Final_secret:                      # @SHA1_Final_secret
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
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %r12
	movl	%edx, %r14d
	movl	$472, %eax              # imm = 0x1D8
	xorl	%r8d, %r8d
	movl	$128, %r9d
	xorl	%edi, %edi
	movq	%rsi, %r15
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	%rdi, %r14
	sete	%cl
	movzbl	28(%rsi,%rdi), %ebx
	#APP
	testb	%cl, %cl
	cmovnel	%r9d, %ebx
	#NO_APP
	movb	%bl, 28(%rsi,%rdi)
	cmpq	%r14, %rdi
	seta	%cl
	movzbl	%bl, %ebx
	#APP
	testb	%cl, %cl
	cmovnel	%r8d, %ebx
	#NO_APP
	movb	%bl, 28(%rsi,%rdi)
	cmpq	$59, %rdi
	jbe	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	cmpq	%r14, %rdi
	seta	%r10b
	cmpl	$56, %edx
	setb	%r11b
	movl	20(%r15), %esi
	leal	32(%rax), %ecx
                                        # kill: def %cl killed %cl killed %ecx
	shrl	%cl, %esi
	andb	%r10b, %r11b
	movzbl	%sil, %esi
	movzbl	%bl, %ecx
	#APP
	testb	%r11b, %r11b
	cmovnel	%esi, %ecx
	#NO_APP
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	cmpq	$55, %rdi
	jbe	.LBB0_4
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	cmpq	%r14, %rdi
	seta	%r11b
	cmpl	$56, %edx
	setb	%r10b
	movl	24(%r15), %esi
	movl	%eax, %ecx
	shrl	%cl, %esi
	andb	%r11b, %r10b
	movzbl	%sil, %esi
	movzbl	%bl, %ecx
	#APP
	testb	%r10b, %r10b
	cmovnel	%esi, %ecx
	#NO_APP
.LBB0_3:                                # %.sink.split
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	%r15, %rsi
	movb	%cl, 28(%rsi,%rdi)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	addq	$1, %rdi
	addl	$-8, %eax
	cmpq	$64, %rdi
	jne	.LBB0_1
# %bb.5:
	cmpl	$56, %edx
	setb	%r15b
	leaq	28(%rsi), %r14
	movl	$1, %edx
	movq	%rsi, %rdi
	movq	%rsi, %rbx
	movq	%r14, %rsi
	callq	sha1_block_data_order
	xorps	%xmm0, %xmm0
	movups	%xmm0, 60(%rbx)
	movups	%xmm0, 44(%rbx)
	movups	%xmm0, 28(%rbx)
	movq	$0, 76(%rbx)
	movl	20(%rbx), %eax
	movl	24(%rbx), %ecx
	movl	%ecx, %edx
	shrl	$24, %edx
	movb	%dl, 84(%rbx)
	movl	%ecx, %edx
	shrl	$16, %edx
	movb	%dl, 85(%rbx)
	movb	%ch, 86(%rbx)  # NOREX
	movb	%cl, 87(%rbx)
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 88(%rbx)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 89(%rbx)
	movb	%ah, 90(%rbx)  # NOREX
	movb	%al, 91(%rbx)
	movq	%rsp, %r13
	leaq	-32(%r13), %rsp
	movl	16(%rbx), %eax
	movl	%eax, -16(%r13)
	movups	(%rbx), %xmm0
	movups	%xmm0, -32(%r13)
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	sha1_block_data_order
	movl	-32(%r13), %eax
	movl	(%rbx), %ecx
	movl	4(%rbx), %edx
	#APP
	testb	%r15b, %r15b
	cmovnel	%eax, %ecx
	#NO_APP
	movl	%ecx, (%rbx)
	movl	-28(%r13), %eax
	#APP
	testb	%r15b, %r15b
	cmovnel	%eax, %edx
	#NO_APP
	movl	%edx, 4(%rbx)
	movl	-24(%r13), %eax
	movl	8(%rbx), %ecx
	#APP
	testb	%r15b, %r15b
	cmovnel	%eax, %ecx
	#NO_APP
	movl	%ecx, 8(%rbx)
	movl	-20(%r13), %eax
	movl	12(%rbx), %ecx
	#APP
	testb	%r15b, %r15b
	cmovnel	%eax, %ecx
	#NO_APP
	movl	%ecx, 12(%rbx)
	movl	-16(%r13), %eax
	movl	16(%rbx), %ecx
	#APP
	testb	%r15b, %r15b
	cmovnel	%eax, %ecx
	#NO_APP
	movl	%ecx, 16(%rbx)
	movl	$0, 92(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 76(%rbx)
	movups	%xmm0, 60(%rbx)
	movups	%xmm0, 44(%rbx)
	movups	%xmm0, 28(%rbx)
	movl	(%rbx), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movq	%r12, %rdx
	movb	%cl, (%rdx)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 1(%rdx)
	movb	%ah, 2(%rdx)  # NOREX
	movb	%al, 3(%rdx)
	movl	4(%rbx), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 4(%rdx)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 5(%rdx)
	movb	%ah, 6(%rdx)  # NOREX
	movb	%al, 7(%rdx)
	movl	8(%rbx), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 8(%rdx)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 9(%rdx)
	movb	%ah, 10(%rdx)  # NOREX
	movb	%al, 11(%rdx)
	movl	12(%rbx), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 12(%rdx)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 13(%rdx)
	movb	%ah, 14(%rdx)  # NOREX
	movb	%al, 15(%rdx)
	movl	16(%rbx), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 16(%rdx)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 17(%rdx)
	movb	%ah, 18(%rdx)  # NOREX
	movb	%al, 19(%rdx)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	SHA1_Final_secret, .Lfunc_end0-SHA1_Final_secret
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function SHA1_Update_secret
	.type	SHA1_Update_secret,@function
SHA1_Update_secret:                     # @SHA1_Update_secret
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
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movl	%r8d, %r9d
	leaq	(,%r9,8), %rax
	addq	20(%rbx), %rax
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	%ecx, 24(%rbx)
	movl	%eax, 20(%rbx)
	movl	92(%rbx), %edi
	testq	%r14, %r14
	je	.LBB1_5
# %bb.1:                                # %.lr.ph
	leaq	28(%rbx), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	xorl	%r13d, %r13d
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r9, -72(%rbp)          # 8-byte Spill
	.p2align	4, 0x90
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	leal	(%rdi,%r13), %eax
	andl	$63, %eax
	cmpq	%r9, %r13
	setb	%cl
	movzbl	(%r15,%r13), %edx
	movzbl	28(%rbx,%rax), %esi
	#APP
	testb	%cl, %cl
	cmovnel	%edx, %esi
	#NO_APP
	movb	%sil, 28(%rbx,%rax)
	cmpq	$63, %rax
	jne	.LBB1_4
# %bb.3:                                # %.loopexit.loopexit4
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%rsp, %r12
	leaq	-32(%r12), %rsp
	movl	16(%rbx), %eax
	movl	%eax, -16(%r12)
	movups	(%rbx), %xmm0
	movups	%xmm0, -32(%r12)
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	sha1_block_data_order
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	cmpq	%r9, %r13
	setae	%al
	movl	-32(%r12), %ecx
	movl	(%rbx), %edx
	movl	4(%rbx), %esi
	#APP
	testb	%al, %al
	cmovnel	%ecx, %edx
	#NO_APP
	movl	%edx, (%rbx)
	movl	-28(%r12), %ecx
	#APP
	testb	%al, %al
	cmovnel	%ecx, %esi
	#NO_APP
	movl	%esi, 4(%rbx)
	movl	-24(%r12), %ecx
	movl	8(%rbx), %edx
	#APP
	testb	%al, %al
	cmovnel	%ecx, %edx
	#NO_APP
	movl	%edx, 8(%rbx)
	movl	-20(%r12), %ecx
	movl	12(%rbx), %edx
	#APP
	testb	%al, %al
	cmovnel	%ecx, %edx
	#NO_APP
	movl	%edx, 12(%rbx)
	movl	-16(%r12), %ecx
	movl	16(%rbx), %edx
	#APP
	testb	%al, %al
	cmovnel	%ecx, %edx
	#NO_APP
	movl	%edx, 16(%rbx)
.LBB1_4:                                # %.loopexit
                                        #   in Loop: Header=BB1_2 Depth=1
	addq	$1, %r13
	cmpq	%r13, %r14
	jne	.LBB1_2
.LBB1_5:                                # %._crit_edge
	movl	-44(%rbp), %eax         # 4-byte Reload
	addl	%edi, %eax
	andl	$63, %eax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	addl	%edi, %r14d
	andl	$63, %r14d
	movl	%r14d, 92(%rbx)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	SHA1_Update_secret, .Lfunc_end1-SHA1_Update_secret
	.cfi_endproc
                                        # -- End function
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
	subq	$88, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rcx, %r15
	movq	%rdx, %rbx
	movq	%rdi, %rax
	xorl	%r12d, %r12d
	testb	$15, %r9b
	je	.LBB2_1
.LBB2_42:                               # %.loopexit
	movl	%r12d, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_1:
	movzwl	16(%rbp), %ecx
	cmpl	$770, %ecx              # imm = 0x302
	jb	.LBB2_4
# %bb.2:
	cmpl	$37, %r15d
	jb	.LBB2_42
# %bb.3:
	movups	(%r8), %xmm0
	movups	%xmm0, (%rax)
	leal	-16(%r15), %edi
	movl	$16, %edx
	jmp	.LBB2_5
.LBB2_4:
	xorl	%r12d, %r12d
	movl	%r15d, %edi
	movl	$0, %edx
	cmpl	$21, %r15d
	jb	.LBB2_42
.LBB2_5:
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movl	%edx, %ecx
	addq	%rcx, %r8
	addq	%rbx, %rcx
	movl	%edi, %edx
	movq	%rdi, %r14
	xorl	%r13d, %r13d
	xorl	%r9d, %r9d
	movq	%r8, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	callq	aesni_cbc_encrypt
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	movzbl	-1(%rbx,%r15), %edx
	movq	%r14, -80(%rbp)         # 8-byte Spill
	leal	-21(%r14), %ebx
	cmpl	$255, %ebx
	movl	$255, %eax
	cmovbl	%ebx, %eax
	cmpl	%edx, %eax
	setb	%cl
	movl	$1, %r12d
	#APP
	testb	%cl, %cl
	cmovnel	%r13d, %r12d
	#NO_APP
	#APP
	testb	%cl, %cl
	cmovnel	%eax, %edx
	#NO_APP
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	subl	%edx, %ebx
	movb	%bh, 555(%rsi)  # NOREX
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	movb	%bl, 556(%rsi)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	movq	%rsp, %rax
	leaq	-32(%rax), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
	xorps	%xmm0, %xmm0
	movups	%xmm0, -32(%rax)
	movl	$0, -16(%rax)
	movups	244(%rsi), %xmm0
	movups	260(%rsi), %xmm1
	movups	276(%rsi), %xmm2
	movups	292(%rsi), %xmm3
	movups	%xmm1, 452(%rsi)
	movups	324(%rsi), %xmm1
	movups	%xmm1, 516(%rsi)
	movups	308(%rsi), %xmm1
	movups	%xmm1, 500(%rsi)
	movups	%xmm3, 484(%rsi)
	movups	%xmm2, 468(%rsi)
	leaq	436(%rsi), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movups	%xmm0, 436(%rsi)
	movq	456(%rsi), %rax
	addq	$104, %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	%ecx, 460(%rsi)
	movl	%eax, 456(%rsi)
	movl	528(%rsi), %r14d
	testq	%r14, %r14
	je	.LBB2_6
# %bb.22:
	movq	%rsi, %rbx
	leaq	544(%rbx), %rsi
	movl	$64, %eax
	subl	%r14d, %eax
	cmpl	$13, %eax
	movl	$13, %r13d
	cmovbq	%rax, %r13
	leaq	(%rbx,%r14), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	movq	%r13, %rdx
	callq	memcpy
	addq	%r13, %r14
	cmpq	$64, %r14
	jne	.LBB2_8
# %bb.23:
	leaq	464(%rbx), %rsi
	movl	$1, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	sha1_block_data_order
	xorl	%eax, %eax
	jmp	.LBB2_9
.LBB2_6:
	movl	$13, %ebx
	jmp	.LBB2_7
.LBB2_8:
	movl	528(%rbx), %eax
	addl	%r13d, %eax
.LBB2_9:
	movq	%rbx, %rsi
	movl	%eax, 528(%rsi)
	movl	$13, %ebx
	subq	%r13, %rbx
	movq	%rbx, %rdx
	shrq	$6, %rdx
	je	.LBB2_11
# %bb.10:
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r13), %rsi
	addq	$544, %rsi              # imm = 0x220
	movq	-56(%rbp), %rdi         # 8-byte Reload
                                        # kill: def %edx killed %edx killed %rdx
	callq	sha1_block_data_order
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rbx, %rax
	andq	$-64, %rax
	orq	%rax, %r13
	subq	%rax, %rbx
.LBB2_11:
	testq	%rbx, %rbx
	je	.LBB2_12
.LBB2_7:                                # %.thread28
	leaq	464(%rsi), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r13), %rsi
	addq	$544, %rsi              # imm = 0x220
	movq	%rbx, %rdx
	callq	memcpy
	movq	-48(%rbp), %rsi         # 8-byte Reload
	addl	528(%rsi), %ebx
	movl	%ebx, 528(%rsi)
	jmp	.LBB2_13
.LBB2_12:                               # %.SHA1_Update_public.exit_crit_edge
	movl	528(%rsi), %ebx
.LBB2_13:                               # %SHA1_Update_public.exit
	movq	-80(%rbp), %rcx         # 8-byte Reload
	leal	-276(%rcx), %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
                                        # kill: def %eax killed %eax killed %rax
	andl	$-64, %eax
	subl	%ebx, %eax
	xorl	%r14d, %r14d
	cmpl	$339, %ecx              # imm = 0x153
	cmoval	%eax, %r14d
	testl	%r14d, %r14d
	je	.LBB2_20
# %bb.14:
	movl	%r14d, %r13d
	leaq	(,%r13,8), %rax
	addq	456(%rsi), %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	%ecx, 460(%rsi)
	movl	%eax, 456(%rsi)
	testl	%ebx, %ebx
	je	.LBB2_15
# %bb.24:
	movl	$64, %r15d
	subl	%ebx, %r15d
	cmpq	%r13, %r15
	cmovaq	%r13, %r15
	movl	%ebx, %ebx
	leaq	(%rsi,%rbx), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%r15, %rdx
	callq	memcpy
	movq	-48(%rbp), %rsi         # 8-byte Reload
	addq	%r15, %rbx
	cmpq	$64, %rbx
	jne	.LBB2_26
# %bb.25:
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	464(%rax), %rsi
	movl	$1, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	sha1_block_data_order
	movq	-48(%rbp), %rsi         # 8-byte Reload
	xorl	%eax, %eax
	jmp	.LBB2_27
.LBB2_15:
	xorl	%r15d, %r15d
	movq	%r13, %rdx
	shrq	$6, %rdx
	jne	.LBB2_17
	jmp	.LBB2_18
.LBB2_26:
	movl	528(%rsi), %eax
	addl	%r15d, %eax
.LBB2_27:
	movl	%eax, 528(%rsi)
	subq	%r15, %r13
	movq	%r13, %rdx
	shrq	$6, %rdx
	je	.LBB2_18
.LBB2_17:
	movq	-72(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r15), %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
                                        # kill: def %edx killed %edx killed %rdx
	callq	sha1_block_data_order
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%r13, %rax
	andq	$-64, %rax
	addq	%rax, %r15
	subq	%rax, %r13
.LBB2_18:
	testq	%r13, %r13
	je	.LBB2_20
# %bb.19:
	leaq	464(%rsi), %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	addq	%r15, %rsi
	movq	%r13, %rdx
	callq	memcpy
	movq	-48(%rbp), %rax         # 8-byte Reload
	addl	%r13d, 528(%rax)
.LBB2_20:                               # %SHA1_Update_public.exit15
	movq	-104(%rbp), %rax        # 8-byte Reload
	leal	(%r14,%rax), %edx
	movq	-80(%rbp), %rcx         # 8-byte Reload
                                        # kill: def %ecx killed %ecx killed %rcx def %rcx
	subl	%r14d, %ecx
	addq	-88(%rbp), %rdx         # 8-byte Folded Reload
	movq	-96(%rbp), %rax         # 8-byte Reload
                                        # kill: def %eax killed %eax killed %rax
	subl	%r14d, %eax
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	%r13, %rdi
	movq	-120(%rbp), %r14        # 8-byte Reload
	movq	%r14, %rsi
	movl	%eax, %r8d
	callq	SHA1_Update_secret
	movl	(%r14), %edx
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	SHA1_Final_secret
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movups	420(%rbx), %xmm0
	movups	%xmm0, 80(%r13)
	movups	404(%rbx), %xmm0
	movups	%xmm0, 64(%r13)
	movups	340(%rbx), %xmm0
	movups	356(%rbx), %xmm1
	movups	372(%rbx), %xmm2
	movups	388(%rbx), %xmm3
	movups	%xmm3, 48(%r13)
	movups	%xmm2, 32(%r13)
	movups	%xmm1, 16(%r13)
	movups	%xmm0, (%r13)
	movl	$160, %eax
	addq	456(%rbx), %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	%ecx, 460(%rbx)
	movl	%eax, 456(%rbx)
	movl	528(%rbx), %r14d
	testq	%r14, %r14
	je	.LBB2_21
# %bb.34:
	movl	$64, %eax
	subl	%r14d, %eax
	cmpl	$20, %eax
	movq	%r15, %rsi
	movl	$20, %r15d
	cmovbq	%rax, %r15
	leaq	(%rbx,%r14), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	movq	%r15, %rdx
	callq	memcpy
	addq	%r15, %r14
	cmpq	$64, %r14
	jne	.LBB2_28
# %bb.35:
	leaq	464(%rbx), %rsi
	movl	$1, %edx
	movq	%r13, %rdi
	callq	sha1_block_data_order
	xorl	%eax, %eax
	jmp	.LBB2_29
.LBB2_21:
	movl	$20, %r13d
	jmp	.LBB2_33
.LBB2_28:
	movl	528(%rbx), %eax
	addl	%r15d, %eax
.LBB2_29:
	movl	%eax, 528(%rbx)
	movl	$20, %r13d
	subq	%r15, %r13
	movq	%r13, %rdx
	shrq	$6, %rdx
	je	.LBB2_31
# %bb.30:
	movq	-64(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r15), %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
                                        # kill: def %edx killed %edx killed %rdx
	callq	sha1_block_data_order
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%r13, %rax
	andq	$-64, %rax
	orq	%rax, %r15
	subq	%rax, %r13
.LBB2_31:
	testq	%r13, %r13
	je	.LBB2_36
# %bb.32:                               # %..thread33_crit_edge
	addq	-64(%rbp), %r15         # 8-byte Folded Reload
.LBB2_33:                               # %.thread33
	leaq	464(%rbx), %r14
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	memcpy
	movq	-48(%rbp), %rbx         # 8-byte Reload
	addl	528(%rbx), %r13d
	movl	%r13d, 528(%rbx)
	jmp	.LBB2_37
.LBB2_36:                               # %.SHA1_Update_public.exit26_crit_edge
	movl	528(%rbx), %r13d
	leaq	464(%rbx), %r14
.LBB2_37:                               # %SHA1_Update_public.exit26
	movl	%r13d, %eax
	movb	$-128, 464(%rbx,%rax)
	addl	$1, %r13d
	cmpl	$57, %r13d
	jb	.LBB2_39
# %bb.38:
	movl	$64, %edx
	subq	%r13, %rdx
	leaq	(%rbx,%r13), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	callq	memset
	movl	$1, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	sha1_block_data_order
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB2_39:                               # %SHA1_Final_public.exit
	movl	%r13d, %eax
	movl	$56, %edx
	subq	%rax, %rdx
	leaq	(%rbx,%rax), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	callq	memset
	movl	456(%rbx), %eax
	movl	460(%rbx), %ecx
	movl	%ecx, %edx
	shrl	$24, %edx
	movb	%dl, 520(%rbx)
	movl	%ecx, %edx
	shrl	$16, %edx
	movb	%dl, 521(%rbx)
	movb	%ch, 522(%rbx)  # NOREX
	movb	%cl, 523(%rbx)
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 524(%rbx)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 525(%rbx)
	movb	%ah, 526(%rbx)  # NOREX
	movb	%al, 527(%rbx)
	movl	$1, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	sha1_block_data_order
	movl	$0, 528(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 48(%r14)
	movups	%xmm0, 32(%r14)
	movups	%xmm0, 16(%r14)
	movups	%xmm0, (%r14)
	movl	436(%rbx), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movb	%cl, (%rdi)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 1(%rdi)
	movb	%ah, 2(%rdi)  # NOREX
	movb	%al, 3(%rdi)
	movl	440(%rbx), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 4(%rdi)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 5(%rdi)
	movb	%ah, 6(%rdi)  # NOREX
	movb	%al, 7(%rdi)
	movl	444(%rbx), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 8(%rdi)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 9(%rdi)
	movb	%ah, 10(%rdi)  # NOREX
	movb	%al, 11(%rdi)
	movl	448(%rbx), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 12(%rdi)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 13(%rdi)
	movb	%ah, 14(%rdi)  # NOREX
	movb	%al, 15(%rdi)
	movl	452(%rbx), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 16(%rdi)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 17(%rdi)
	movb	%ah, 18(%rdi)  # NOREX
	movb	%al, 19(%rdi)
	movq	-80(%rbp), %r9          # 8-byte Reload
	cmpl	$276, %r9d              # imm = 0x114
	movq	-128(%rbp), %rbx        # 8-byte Reload
	cmovbl	%r15d, %ebx
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	leal	(%rsi,%rdx), %ecx
	addl	$20, %ecx
	cmpl	%r9d, %ecx
	seta	%al
	#APP
	testb	%al, %al
	cmovnel	%r15d, %r12d
	#NO_APP
	leal	(%rbx,%rdx), %eax
	cmpl	%r9d, %eax
	jae	.LBB2_42
# %bb.40:                               # %.lr.ph
	addl	%edx, %esi
	movl	%eax, %eax
	movl	%ecx, %r8d
	movl	%esi, %r10d
	movq	-112(%rbp), %rcx        # 8-byte Reload
	leal	(%rcx,%rbx), %esi
	addl	$21, %esi
	subl	%r9d, %esi
	movq	%rdi, %r11
	movq	-88(%rbp), %rdx         # 8-byte Reload
	.p2align	4, 0x90
.LBB2_41:                               # =>This Inner Loop Header: Depth=1
	cmpq	%r10, %rax
	setae	%bl
	xorl	%edi, %edi
	cmpq	%r8, %rax
	setb	%dil
	#APP
	testb	%bl, %bl
	movl	%r15d, %ecx
	cmovnel	%edi, %ecx
	#NO_APP
	andl	$1, %ecx
	xorl	%edi, %edi
	#APP
	testb	%cl, %cl
	cmovnel	%esi, %edi
	#NO_APP
	movl	%edi, %edi
	movzbl	(%rdx,%rax), %ebx
	cmpb	(%r11,%rdi), %bl
	setne	%bl
	andb	%cl, %bl
	#APP
	testb	%bl, %bl
	cmovnel	%r15d, %r12d
	#NO_APP
	addq	$1, %rax
	addl	$1, %esi
	cmpl	%r9d, %eax
	jb	.LBB2_41
	jmp	.LBB2_42
.Lfunc_end2:
	.size	_aesni_cbc_hmac_sha1_cipher, .Lfunc_end2-_aesni_cbc_hmac_sha1_cipher
	.cfi_endproc
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
