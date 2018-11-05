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
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 52(%rbx)
	vmovups	%ymm0, 28(%rbx)
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
	vmovups	(%rbx), %xmm0
	vmovups	%xmm0, -32(%rax)
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	vzeroupper
	callq	sha1_block_data_order
	cmpl	$55, %r14d
	ja	.LBB0_7
# %bb.6:                                # %.split.us
	movl	16(%r12), %eax
	movl	%eax, 16(%rbx)
	vmovups	(%r12), %xmm0
	vmovups	%xmm0, (%rbx)
.LBB0_7:                                # %.us-lcssa.us
	movl	$0, 92(%rbx)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 32(%r15)
	vmovups	%ymm0, (%r15)
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
	vzeroupper
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
	vmovups	(%rbx), %xmm0
	vmovups	%xmm0, -32(%rax)
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
	vmovups	(%rcx), %xmm0
	vmovups	%xmm0, (%rbx)
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
	movq	%rdx, %r11
	movq	%rdi, %r10
	xorl	%eax, %eax
	testb	$15, %r9b
	je	.LBB2_1
.LBB2_47:                               # %.loopexit
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
.LBB2_1:
	movzwl	16(%rbp), %ecx
	cmpl	$770, %ecx              # imm = 0x302
	jb	.LBB2_4
# %bb.2:
	cmpl	$37, %ebx
	jb	.LBB2_47
# %bb.3:
	vmovups	(%r8), %xmm0
	vmovups	%xmm0, (%r10)
	leal	-16(%rbx), %r15d
	movl	$16, %r12d
	jmp	.LBB2_5
.LBB2_4:
	xorl	%eax, %eax
	movl	%ebx, %r15d
	movl	$0, %r12d
	cmpl	$21, %ebx
	jb	.LBB2_47
.LBB2_5:
	movl	%r12d, %eax
	addq	%rax, %r8
	addq	%r11, %rax
	movl	%r15d, %edx
	movq	%r11, %r14
	xorl	%r13d, %r13d
	xorl	%r9d, %r9d
	movq	%r8, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%r10, %r8
	callq	aesni_cbc_encrypt
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%r14, -128(%rbp)        # 8-byte Spill
	movzbl	-1(%r14,%rbx), %edx
	leal	-21(%r15), %eax
	cmpl	$255, %eax
	movl	$255, %ecx
	cmovbl	%eax, %ecx
	cmpl	%edx, %ecx
	setae	-49(%rbp)               # 1-byte Folded Spill
	movl	%edx, -84(%rbp)         # 4-byte Spill
	cmovael	%edx, %ecx
	negl	%ecx
	leal	(%r15,%rcx), %eax
	addl	$-21, %eax
	movb	%ah, 555(%rsi)  # NOREX
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movb	%al, 556(%rsi)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	movq	%rsp, %rax
	leaq	-32(%rax), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, -32(%rax)
	movl	$0, -16(%rax)
	vmovups	244(%rsi), %ymm0
	vmovups	276(%rsi), %ymm1
	vmovups	308(%rsi), %ymm2
	vmovups	%ymm0, 436(%rsi)
	vmovups	%ymm2, 500(%rsi)
	leaq	436(%rsi), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	vmovups	%ymm1, 468(%rsi)
	movq	456(%rsi), %rax
	addq	$104, %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	%ecx, 460(%rsi)
	movl	%eax, 456(%rsi)
	movl	528(%rsi), %ebx
	testq	%rbx, %rbx
	movq	%r12, -104(%rbp)        # 8-byte Spill
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
	vzeroupper
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
	vzeroupper
	callq	memcpy
	movq	-48(%rbp), %rsi         # 8-byte Reload
	addl	528(%rsi), %ebx
	movl	%ebx, 528(%rsi)
	jmp	.LBB2_13
.LBB2_12:                               # %.SHA1_Update_public.exit15_crit_edge
	movl	528(%rsi), %ebx
.LBB2_13:                               # %SHA1_Update_public.exit15
	leal	-276(%r15), %r14d
	movl	%r14d, %eax
	andl	$-64, %eax
	subl	%ebx, %eax
	xorl	%r12d, %r12d
	movq	%r15, -112(%rbp)        # 8-byte Spill
	cmpl	$339, %r15d             # imm = 0x153
	cmoval	%eax, %r12d
	testl	%r12d, %r12d
	je	.LBB2_20
# %bb.14:
	movl	%r12d, %r13d
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
	movq	-80(%rbp), %rsi         # 8-byte Reload
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
	movq	-64(%rbp), %rdi         # 8-byte Reload
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
	movq	-80(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r15), %rsi
	movq	-64(%rbp), %rdi         # 8-byte Reload
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
	movq	-80(%rbp), %rsi         # 8-byte Reload
	addq	%r15, %rsi
	movq	%r13, %rdx
	callq	memcpy
	movq	-48(%rbp), %rax         # 8-byte Reload
	addl	%r13d, 528(%rax)
.LBB2_20:                               # %SHA1_Update_public.exit26
	movq	-104(%rbp), %rax        # 8-byte Reload
	leal	(%r12,%rax), %edx
	movq	-112(%rbp), %rcx        # 8-byte Reload
                                        # kill: def %ecx killed %ecx killed %rcx def %rcx
	subl	%r12d, %ecx
	movq	-128(%rbp), %r13        # 8-byte Reload
	addq	%r13, %rdx
	movq	-96(%rbp), %rax         # 8-byte Reload
                                        # kill: def %eax killed %eax killed %rax
	subl	%r12d, %eax
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	-120(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rsi
	movl	%eax, %r8d
	callq	SHA1_Update_secret
	movl	(%r15), %edx
	movq	-72(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	SHA1_Final_secret
	movq	-48(%rbp), %rsi         # 8-byte Reload
	vmovups	340(%rsi), %ymm0
	vmovups	372(%rsi), %ymm1
	vmovups	404(%rsi), %ymm2
	vmovups	%ymm2, 64(%rbx)
	vmovups	%ymm1, 32(%rbx)
	vmovups	%ymm0, (%rbx)
	movl	$160, %eax
	addq	456(%rsi), %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	%ecx, 460(%rsi)
	movl	%eax, 456(%rsi)
	movl	528(%rsi), %ebx
	testq	%rbx, %rbx
	je	.LBB2_21
# %bb.34:
	movl	$64, %eax
	subl	%ebx, %eax
	cmpl	$20, %eax
	movl	$20, %r15d
	cmovbq	%rax, %r15
	leaq	464(%rsi,%rbx), %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	vzeroupper
	callq	memcpy
	addq	%r15, %rbx
	cmpq	$64, %rbx
	jne	.LBB2_28
# %bb.35:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	leaq	464(%rbx), %rsi
	movl	$1, %edx
	movq	-64(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	callq	sha1_block_data_order
	xorl	%eax, %eax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rbx, %rsi
	jmp	.LBB2_29
.LBB2_21:
	movl	$20, %ebx
	movq	%r12, %r15
	jmp	.LBB2_33
.LBB2_28:
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	528(%rdx), %eax
	addl	%r15d, %eax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rdx, %rsi
	movq	-64(%rbp), %r12         # 8-byte Reload
.LBB2_29:
	movl	%eax, 528(%rsi)
	movl	$20, %ebx
	subq	%r15, %rbx
	movq	%rbx, %rdx
	shrq	$6, %rdx
	je	.LBB2_31
# %bb.30:
	leaq	(%rcx,%r15), %rsi
	movq	%r12, %rdi
                                        # kill: def %edx killed %edx killed %rdx
	callq	sha1_block_data_order
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rbx, %rax
	andq	$-64, %rax
	orq	%rax, %r15
	subq	%rax, %rbx
.LBB2_31:
	testq	%rbx, %rbx
	je	.LBB2_36
# %bb.32:                               # %..thread33_crit_edge
	addq	-72(%rbp), %r15         # 8-byte Folded Reload
.LBB2_33:                               # %.thread33
	leaq	464(%rsi), %r12
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	vzeroupper
	callq	memcpy
	movq	-48(%rbp), %rsi         # 8-byte Reload
	addl	528(%rsi), %ebx
	movl	%ebx, 528(%rsi)
	jmp	.LBB2_37
.LBB2_36:                               # %.SHA1_Update_public.exit_crit_edge
	movl	528(%rsi), %ebx
	leaq	464(%rsi), %r12
.LBB2_37:                               # %SHA1_Update_public.exit
	movl	%ebx, %eax
	movb	$-128, 464(%rsi,%rax)
	addl	$1, %ebx
	cmpl	$57, %ebx
	movq	-112(%rbp), %r15        # 8-byte Reload
	jb	.LBB2_39
# %bb.38:
	movl	$64, %edx
	subq	%rbx, %rdx
	leaq	(%rsi,%rbx), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	callq	memset
	movl	$1, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	sha1_block_data_order
	movq	-48(%rbp), %rsi         # 8-byte Reload
.LBB2_39:                               # %SHA1_Final_public.exit
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
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	sha1_block_data_order
	movl	$0, 528(%rbx)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 32(%r12)
	vmovups	%ymm0, (%r12)
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
	cmpl	$276, %r15d             # imm = 0x114
	movl	$0, %eax
	cmovbl	%eax, %r14d
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	-96(%rbp), %rbx         # 8-byte Reload
	leal	(%rbx,%rsi), %edx
	addl	$20, %edx
	cmpl	%r15d, %edx
	setbe	%al
	andb	-49(%rbp), %al          # 1-byte Folded Reload
	movzbl	%al, %eax
	leal	(%r14,%rsi), %ecx
	cmpl	%r15d, %ecx
	jae	.LBB2_47
# %bb.40:                               # %.lr.ph
	addl	%esi, %ebx
	movl	%ecx, %ecx
	addl	$20, %r14d
	movl	-84(%rbp), %edi         # 4-byte Reload
	notl	%edi
	movl	$20, %esi
	subl	%r15d, %esi
	cmpl	%esi, %edi
	cmoval	%edi, %esi
	cmpl	$-256, %esi
	movl	$-256, %edi
	cmoval	%esi, %edi
	movl	%edx, %r8d
	movl	%ebx, %r9d
	addl	%r15d, %edi
	subl	%edi, %r14d
	.p2align	4, 0x90
.LBB2_41:                               # =>This Inner Loop Header: Depth=1
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
	jne	.LBB2_42
# %bb.43:                               #   in Loop: Header=BB2_41 Depth=1
	xorl	%r10d, %r10d
	movzbl	(%r13,%rcx), %edx
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpb	(%rsi,%r10), %dl
	je	.LBB2_45
	jmp	.LBB2_46
	.p2align	4, 0x90
.LBB2_42:                               #   in Loop: Header=BB2_41 Depth=1
	movl	%r14d, %r10d
	movzbl	(%r13,%rcx), %edx
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpb	(%rsi,%r10), %dl
	jne	.LBB2_46
.LBB2_45:                               #   in Loop: Header=BB2_41 Depth=1
	movl	%eax, %edi
.LBB2_46:                               #   in Loop: Header=BB2_41 Depth=1
	testb	$1, %bl
	cmovnel	%edi, %eax
	addq	$1, %rcx
	addl	$1, %r14d
	cmpl	%r15d, %ecx
	jb	.LBB2_41
	jmp	.LBB2_47
.Lfunc_end2:
	.size	_aesni_cbc_hmac_sha1_cipher, .Lfunc_end2-_aesni_cbc_hmac_sha1_cipher
	.cfi_endproc
                                        # -- End function
	.section	.text.__llvm_retpoline_r11,"axG",@progbits,__llvm_retpoline_r11,comdat
	.hidden	__llvm_retpoline_r11    # -- Begin function __llvm_retpoline_r11
	.weak	__llvm_retpoline_r11
	.p2align	4, 0x90
	.type	__llvm_retpoline_r11,@function
__llvm_retpoline_r11:                   # @__llvm_retpoline_r11
# %bb.0:                                # %entry
	callq	.LBB3_2
.LBB3_1:                                # Block address taken
                                        # %entry
                                        # =>This Inner Loop Header: Depth=1
	pause
	lfence
	jmp	.LBB3_1
	.p2align	4, 0x90
.LBB3_2:                                # Block address taken
                                        # %entry
	movq	%r11, (%rsp)
	retq
.Lfunc_end3:
	.size	__llvm_retpoline_r11, .Lfunc_end3-__llvm_retpoline_r11
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
