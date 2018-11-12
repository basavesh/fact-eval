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
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movl	%r14d, %r10d
	movl	$472, %eax              # imm = 0x1D8
	xorl	%r8d, %r8d
	movl	$128, %r9d
	xorl	%esi, %esi
	movq	%rbx, %r15
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %r10
	sete	%cl
	movzbl	28(%rbx,%rsi), %edi
	#APP
	testb	%cl, %cl
	cmovnel	%r9d, %edi
	#NO_APP
	movb	%dil, 28(%rbx,%rsi)
	cmpq	%r10, %rsi
	seta	%cl
	movzbl	%dil, %edi
	#APP
	testb	%cl, %cl
	cmovnel	%r8d, %edi
	#NO_APP
	movb	%dil, 28(%rbx,%rsi)
	cmpq	$59, %rsi
	jbe	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	cmpq	%r10, %rsi
	seta	%r11b
	cmpl	$56, %r14d
	setb	%dl
	movl	20(%r15), %ebx
	leal	32(%rax), %ecx
                                        # kill: def %cl killed %cl killed %ecx
	shrl	%cl, %ebx
	andb	%r11b, %dl
	movzbl	%bl, %ebx
	movzbl	%dil, %ecx
	#APP
	testb	%dl, %dl
	cmovnel	%ebx, %ecx
	#NO_APP
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	cmpq	$55, %rsi
	jbe	.LBB0_4
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	cmpq	%r10, %rsi
	seta	%r11b
	cmpl	$56, %r14d
	setb	%bl
	movl	24(%r15), %edx
	movl	%eax, %ecx
	shrl	%cl, %edx
	andb	%r11b, %bl
	movzbl	%dl, %edx
	movzbl	%dil, %ecx
	#APP
	testb	%bl, %bl
	cmovnel	%edx, %ecx
	#NO_APP
.LBB0_3:                                # %.sink.split
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	%r15, %rbx
	movb	%cl, 28(%rbx,%rsi)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	addq	$1, %rsi
	addl	$-8, %eax
	cmpq	$64, %rsi
	jne	.LBB0_1
# %bb.5:
	leaq	28(%rbx), %r15
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
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
	movq	%rsp, %rax
	leaq	-32(%rax), %r12
	movq	%r12, %rsp
	movl	16(%rbx), %ecx
	movl	%ecx, -16(%rax)
	movups	(%rbx), %xmm0
	movups	%xmm0, -32(%rax)
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	sha1_block_data_order
	cmpl	$55, %r14d
	ja	.LBB0_7
# %bb.6:                                # %.split.us
	movl	16(%r12), %eax
	movl	%eax, 16(%rbx)
	movups	(%r12), %xmm0
	movups	%xmm0, (%rbx)
.LBB0_7:                                # %.us-lcssa.us
	movl	$0, 92(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 48(%r15)
	movups	%xmm0, 32(%r15)
	movups	%xmm0, 16(%r15)
	movups	%xmm0, (%r15)
	movl	(%rbx), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movq	%r13, %rdx
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
	movl	%r8d, %r12d
	leaq	(,%r12,8), %rax
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
	je	.LBB1_6
# %bb.1:                                # %.lr.ph
	leaq	28(%rbx), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	xorl	%r13d, %r13d
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	leal	(%rdi,%r13), %eax
	andl	$63, %eax
	cmpq	%r12, %r13
	setb	%cl
	movzbl	(%r15,%r13), %edx
	movzbl	28(%rbx,%rax), %esi
	#APP
	testb	%cl, %cl
	cmovnel	%edx, %esi
	#NO_APP
	movb	%sil, 28(%rbx,%rax)
	cmpq	$63, %rax
	jne	.LBB1_5
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	movq	%rsp, %rax
	leaq	-32(%rax), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
	movl	16(%rbx), %ecx
	movl	%ecx, -16(%rax)
	movups	(%rbx), %xmm0
	movups	%xmm0, -32(%rax)
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	sha1_block_data_order
	movq	-72(%rbp), %rdi         # 8-byte Reload
	cmpq	%r12, %r13
	jb	.LBB1_5
# %bb.4:                                # %.split
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movl	16(%rcx), %eax
	movl	%eax, 16(%rbx)
	movups	(%rcx), %xmm0
	movups	%xmm0, (%rbx)
.LBB1_5:                                # %.loopexit
                                        #   in Loop: Header=BB1_2 Depth=1
	addq	$1, %r13
	cmpq	%r13, %r14
	jne	.LBB1_2
.LBB1_6:                                # %._crit_edge
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
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movq	%rdi, %r10
	xorl	%eax, %eax
	testb	$15, %r9b
	je	.LBB2_1
.LBB2_49:                               # %.loopexit
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
	cmpl	$37, %ebx
	jb	.LBB2_49
# %bb.3:
	movups	(%r8), %xmm0
	movups	%xmm0, (%r10)
	leal	-16(%rbx), %r12d
	movl	$16, %r15d
	jmp	.LBB2_5
.LBB2_4:
	xorl	%eax, %eax
	movl	%ebx, %r12d
	movl	$0, %r15d
	cmpl	$21, %ebx
	jb	.LBB2_49
.LBB2_5:
	movl	%r15d, %eax
	addq	%rax, %r8
	addq	%r14, %rax
	movl	%r12d, %edx
	xorl	%r13d, %r13d
	xorl	%r9d, %r9d
	movq	%r8, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%r10, %r8
	callq	aesni_cbc_encrypt
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movzbl	-1(%r14,%rbx), %edx
	leal	-21(%r12), %eax
	cmpl	$255, %eax
	movl	$255, %ecx
	cmovbl	%eax, %ecx
	cmpl	%edx, %ecx
	setae	-49(%rbp)               # 1-byte Folded Spill
	movl	%edx, -92(%rbp)         # 4-byte Spill
	cmovael	%edx, %ecx
	negl	%ecx
	leal	(%r12,%rcx), %eax
	addl	$-21, %eax
	movb	%ah, 555(%rsi)  # NOREX
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movb	%al, 556(%rsi)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	movq	%rsp, %rax
	leaq	-32(%rax), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
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
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movups	%xmm0, 436(%rsi)
	movq	456(%rsi), %rax
	addq	$104, %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	%ecx, 460(%rsi)
	movl	%eax, 456(%rsi)
	movl	528(%rsi), %ebx
	testq	%rbx, %rbx
	movq	%r14, -104(%rbp)        # 8-byte Spill
	movq	%r15, -80(%rbp)         # 8-byte Spill
	je	.LBB2_6
# %bb.22:
	movq	%rsi, %r14
	leaq	544(%r14), %rsi
	movl	$64, %eax
	subl	%ebx, %eax
	cmpl	$13, %eax
	movl	$13, %r13d
	cmovbq	%rax, %r13
	leaq	(%r14,%rbx), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	movq	%r13, %rdx
	callq	memcpy
	addq	%r13, %rbx
	cmpq	$64, %rbx
	jne	.LBB2_8
# %bb.23:
	leaq	464(%r14), %rsi
	movl	$1, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	sha1_block_data_order
	xorl	%eax, %eax
	jmp	.LBB2_9
.LBB2_6:
	movl	$13, %ebx
	jmp	.LBB2_7
.LBB2_8:
	movl	528(%r14), %eax
	addl	%r13d, %eax
.LBB2_9:
	movq	%r14, %rsi
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
	movq	-64(%rbp), %rdi         # 8-byte Reload
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
.LBB2_12:                               # %.SHA1_Update_public.exit15_crit_edge
	movl	528(%rsi), %ebx
.LBB2_13:                               # %SHA1_Update_public.exit15
	leal	-276(%r12), %r14d
	movl	%r14d, %eax
	andl	$-64, %eax
	subl	%ebx, %eax
	xorl	%r15d, %r15d
	movq	%r12, -120(%rbp)        # 8-byte Spill
	cmpl	$339, %r12d             # imm = 0x153
	cmoval	%eax, %r15d
	testl	%r15d, %r15d
	je	.LBB2_20
# %bb.14:
	movl	%r15d, %r13d
	leaq	(,%r13,8), %rax
	addq	456(%rsi), %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	%ecx, 460(%rsi)
	movl	%eax, 456(%rsi)
	testl	%ebx, %ebx
	je	.LBB2_15
# %bb.24:
	movl	$64, %r12d
	subl	%ebx, %r12d
	cmpq	%r13, %r12
	cmovaq	%r13, %r12
	movl	%ebx, %ebx
	leaq	(%rsi,%rbx), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	callq	memcpy
	movq	-48(%rbp), %rsi         # 8-byte Reload
	addq	%r12, %rbx
	cmpq	$64, %rbx
	movq	-64(%rbp), %rbx         # 8-byte Reload
	jne	.LBB2_26
# %bb.25:
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	464(%rax), %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	sha1_block_data_order
	movq	-48(%rbp), %rsi         # 8-byte Reload
	xorl	%eax, %eax
	jmp	.LBB2_27
.LBB2_15:
	xorl	%r12d, %r12d
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	%r13, %rdx
	shrq	$6, %rdx
	jne	.LBB2_17
	jmp	.LBB2_18
.LBB2_26:
	movl	528(%rsi), %eax
	addl	%r12d, %eax
.LBB2_27:
	movl	%eax, 528(%rsi)
	subq	%r12, %r13
	movq	%r13, %rdx
	shrq	$6, %rdx
	je	.LBB2_18
.LBB2_17:
	movq	-88(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r12), %rsi
	movq	%rbx, %rdi
                                        # kill: def %edx killed %edx killed %rdx
	callq	sha1_block_data_order
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%r13, %rax
	andq	$-64, %rax
	addq	%rax, %r12
	subq	%rax, %r13
.LBB2_18:
	testq	%r13, %r13
	je	.LBB2_20
# %bb.19:
	leaq	464(%rsi), %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	addq	%r12, %rsi
	movq	%r13, %rdx
	callq	memcpy
	movq	-48(%rbp), %rax         # 8-byte Reload
	addl	%r13d, 528(%rax)
.LBB2_20:                               # %SHA1_Update_public.exit26
	movq	-80(%rbp), %rax         # 8-byte Reload
	leal	(%r15,%rax), %edx
	movq	-120(%rbp), %rcx        # 8-byte Reload
                                        # kill: def %ecx killed %ecx killed %rcx def %rcx
	subl	%r15d, %ecx
	addq	-104(%rbp), %rdx        # 8-byte Folded Reload
	movq	-112(%rbp), %rax        # 8-byte Reload
                                        # kill: def %eax killed %eax killed %rax
	subl	%r15d, %eax
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	-128(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rsi
	movl	%eax, %r8d
	callq	SHA1_Update_secret
	movl	(%r15), %edx
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	SHA1_Final_secret
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movups	420(%rsi), %xmm0
	movups	%xmm0, 80(%rbx)
	movups	404(%rsi), %xmm0
	movups	%xmm0, 64(%rbx)
	movups	340(%rsi), %xmm0
	movups	356(%rsi), %xmm1
	movups	372(%rsi), %xmm2
	movups	388(%rsi), %xmm3
	movups	%xmm3, 48(%rbx)
	movups	%xmm2, 32(%rbx)
	movups	%xmm1, 16(%rbx)
	movups	%xmm0, (%rbx)
	movl	$160, %eax
	addq	456(%rsi), %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	%ecx, 460(%rsi)
	movl	%eax, 456(%rsi)
	movl	528(%rsi), %ebx
	testq	%rbx, %rbx
	je	.LBB2_21
# %bb.33:
	movl	$64, %eax
	subl	%ebx, %eax
	cmpl	$20, %eax
	movl	$20, %r13d
	cmovbq	%rax, %r13
	leaq	464(%rsi,%rbx), %rdi
	movq	%rsi, %r12
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	memcpy
	addq	%r13, %rbx
	cmpq	$64, %rbx
	jne	.LBB2_35
# %bb.34:
	leaq	464(%r12), %rsi
	movl	$1, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	sha1_block_data_order
	xorl	%eax, %eax
	jmp	.LBB2_36
.LBB2_21:
	movl	$20, %ebx
	movq	%r15, %r13
	movq	-80(%rbp), %r15         # 8-byte Reload
	jmp	.LBB2_32
.LBB2_35:
	movl	528(%r12), %eax
	addl	%r13d, %eax
.LBB2_36:
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	%r12, %rsi
# %bb.28:
	movl	%eax, 528(%rsi)
	movl	$20, %ebx
	subq	%r13, %rbx
	movq	%rbx, %rdx
	shrq	$6, %rdx
	je	.LBB2_30
# %bb.29:
	leaq	(%rcx,%r13), %rsi
	movq	-64(%rbp), %rdi         # 8-byte Reload
                                        # kill: def %edx killed %edx killed %rdx
	callq	sha1_block_data_order
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rbx, %rax
	andq	$-64, %rax
	orq	%rax, %r13
	subq	%rax, %rbx
.LBB2_30:
	testq	%rbx, %rbx
	je	.LBB2_37
# %bb.31:                               # %..thread33_crit_edge
	addq	-72(%rbp), %r13         # 8-byte Folded Reload
.LBB2_32:                               # %.thread33
	leaq	464(%rsi), %r12
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movq	-48(%rbp), %rsi         # 8-byte Reload
	addl	528(%rsi), %ebx
	movl	%ebx, 528(%rsi)
	jmp	.LBB2_38
.LBB2_37:                               # %.SHA1_Update_public.exit_crit_edge
	movl	528(%rsi), %ebx
	leaq	464(%rsi), %r12
.LBB2_38:                               # %SHA1_Update_public.exit
	movl	%ebx, %eax
	movb	$-128, 464(%rsi,%rax)
	addl	$1, %ebx
	cmpl	$57, %ebx
	jb	.LBB2_39
# %bb.40:
	movl	$64, %edx
	subq	%rbx, %rdx
	leaq	(%rsi,%rbx), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	callq	memset
	movl	$1, %edx
	movq	-64(%rbp), %r13         # 8-byte Reload
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	sha1_block_data_order
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB2_41
.LBB2_39:
	movq	-64(%rbp), %r13         # 8-byte Reload
.LBB2_41:                               # %SHA1_Final_public.exit
	movl	%ebx, %eax
	movl	$56, %edx
	subq	%rax, %rdx
	leaq	(%rsi,%rax), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	movq	%rsi, %rbx
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
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	sha1_block_data_order
	movl	$0, 528(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 48(%r12)
	movups	%xmm0, 32(%r12)
	movups	%xmm0, 16(%r12)
	movups	%xmm0, (%r12)
	movl	436(%rbx), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movb	%cl, (%rdx)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 1(%rdx)
	movb	%ah, 2(%rdx)  # NOREX
	movb	%al, 3(%rdx)
	movl	440(%rbx), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 4(%rdx)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 5(%rdx)
	movb	%ah, 6(%rdx)  # NOREX
	movb	%al, 7(%rdx)
	movl	444(%rbx), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 8(%rdx)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 9(%rdx)
	movb	%ah, 10(%rdx)  # NOREX
	movb	%al, 11(%rdx)
	movl	448(%rbx), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 12(%rdx)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 13(%rdx)
	movb	%ah, 14(%rdx)  # NOREX
	movb	%al, 15(%rdx)
	movl	452(%rbx), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 16(%rdx)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 17(%rdx)
	movb	%ah, 18(%rdx)  # NOREX
	movb	%al, 19(%rdx)
	movq	-120(%rbp), %r11        # 8-byte Reload
	cmpl	$276, %r11d             # imm = 0x114
	movl	$0, %eax
	cmovbl	%eax, %r14d
	movq	-112(%rbp), %rbx        # 8-byte Reload
	leal	(%rbx,%r15), %edx
	addl	$20, %edx
	cmpl	%r11d, %edx
	setbe	%al
	andb	-49(%rbp), %al          # 1-byte Folded Reload
	movzbl	%al, %eax
	leal	(%r14,%r15), %ecx
	cmpl	%r11d, %ecx
	jae	.LBB2_49
# %bb.42:                               # %.lr.ph
	addl	%r15d, %ebx
	movl	%ecx, %ecx
	addl	$20, %r14d
	movl	-92(%rbp), %edi         # 4-byte Reload
	notl	%edi
	movl	$20, %esi
	subl	%r11d, %esi
	cmpl	%esi, %edi
	cmoval	%edi, %esi
	cmpl	$-256, %esi
	movl	$-256, %edi
	cmoval	%esi, %edi
	movl	%edx, %r8d
	movl	%ebx, %r9d
	addl	%r11d, %edi
	subl	%edi, %r14d
	movq	-104(%rbp), %r10        # 8-byte Reload
	.p2align	4, 0x90
.LBB2_43:                               # =>This Inner Loop Header: Depth=1
	cmpq	%r9, %rcx
	setae	%dl
	xorl	%esi, %esi
	cmpq	%r8, %rcx
	setb	%sil
	xorl	%edi, %edi
	#APP
	testb	%dl, %dl
	movl	%edi, %ebx
	cmovnel	%esi, %ebx
	#NO_APP
	testb	$1, %bl
	jne	.LBB2_44
# %bb.45:                               #   in Loop: Header=BB2_43 Depth=1
	xorl	%r15d, %r15d
	movzbl	(%r10,%rcx), %edx
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpb	(%rsi,%r15), %dl
	je	.LBB2_47
	jmp	.LBB2_48
	.p2align	4, 0x90
.LBB2_44:                               #   in Loop: Header=BB2_43 Depth=1
	movl	%r14d, %r15d
	movzbl	(%r10,%rcx), %edx
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpb	(%rsi,%r15), %dl
	jne	.LBB2_48
.LBB2_47:                               #   in Loop: Header=BB2_43 Depth=1
	movl	%eax, %edi
.LBB2_48:                               #   in Loop: Header=BB2_43 Depth=1
	testb	$1, %bl
	cmovnel	%edi, %eax
	addq	$1, %rcx
	addl	$1, %r14d
	cmpl	%r11d, %ecx
	jb	.LBB2_43
	jmp	.LBB2_49
.Lfunc_end2:
	.size	_aesni_cbc_hmac_sha1_cipher, .Lfunc_end2-_aesni_cbc_hmac_sha1_cipher
	.cfi_endproc
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
