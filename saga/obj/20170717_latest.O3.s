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
	andq	$-32, %rsp
	subq	$192, %rsp
	movq	%rsp, %rbx
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%ecx, %r13d
	movq	%rdx, %rax
	movq	%rsi, 56(%rbx)          # 8-byte Spill
	movq	%rdi, %r10
	movzwl	24(%rbp), %ecx
	xorl	%r15d, %r15d
	cmpl	$770, %ecx              # imm = 0x302
	jb	.LBB0_3
# %bb.1:                                # %thenbranch
	cmpl	$36, %r13d
	jbe	.LBB0_24
# %bb.2:                                # %branchmerge
	vmovups	(%r8), %xmm0
	vmovups	%xmm0, (%r10)
	leal	-16(%r13), %r12d
	movl	$16, %r15d
	movl	$16, %ecx
	jmp	.LBB0_5
.LBB0_3:                                # %elsebranch29
	cmpl	$21, %r13d
	jb	.LBB0_24
# %bb.4:
	xorl	%ecx, %ecx
	movl	%r13d, %r12d
.LBB0_5:                                # %branchmerge39
	addq	%rcx, %r8
	movl	%r15d, %esi
	addq	%rax, %rsi
	movl	%r12d, %edx
	xorl	%r9d, %r9d
	movq	%r8, %rdi
	movq	%rsi, 32(%rbx)          # 8-byte Spill
	movq	56(%rbx), %r14          # 8-byte Reload
	movq	%r14, %rcx
	movq	%r10, %r8
	movq	%rax, 80(%rbx)          # 8-byte Spill
	callq	aesni_cbc_encrypt
	movq	%r13, 152(%rbx)         # 8-byte Spill
	leal	-1(%r13), %eax
	cltq
	movq	80(%rbx), %rcx          # 8-byte Reload
	movzbl	(%rcx,%rax), %eax
	leal	-21(%r12), %edx
	cmpl	$255, %edx
	movl	$255, %ecx
	cmovbl	%edx, %ecx
	cmpl	%eax, %ecx
	setae	27(%rbx)                # 1-byte Folded Spill
	movl	%ecx, 112(%rbx)         # 4-byte Spill
	cmovbl	%ecx, %eax
	movl	%eax, 116(%rbx)         # 4-byte Spill
	subl	%eax, %edx
	movq	%r14, %rcx
	leaq	544(%rcx), %rsi
	movq	16(%rbp), %rax
	movb	%dh, 542(%rcx,%rax)  # NOREX
	movq	%rdx, 48(%rbx)          # 8-byte Spill
	movb	%dl, 543(%rcx,%rax)
	movq	%rax, %rdx
	leaq	436(%rcx), %r13
	vmovups	244(%rcx), %ymm0
	vmovups	276(%rcx), %ymm1
	vmovups	308(%rcx), %ymm2
	vmovups	%ymm2, 500(%rcx)
	vmovups	%ymm1, 468(%rcx)
	vmovups	%ymm0, 436(%rcx)
	movq	%r13, %rdi
	vzeroupper
	callq	_sha1_update
	movq	80(%rbx), %r8           # 8-byte Reload
	leal	-20(%r12), %r9d
	cmpl	$319, %r9d              # imm = 0x13F
	movq	%r12, 144(%rbx)         # 8-byte Spill
	movq	%r13, 104(%rbx)         # 8-byte Spill
	jbe	.LBB0_6
# %bb.7:                                # %thenbranch122
	movq	%r13, %rdi
	leal	-276(%r12), %r13d
	andl	$-64, %r13d
	movq	56(%rbx), %r12          # 8-byte Reload
	subl	528(%r12), %r13d
	movq	32(%rbx), %rsi          # 8-byte Reload
	movq	%r13, %rdx
	movl	%r9d, %r14d
	callq	_sha1_update
	movl	%r14d, %r9d
	addl	%r13d, %r15d
	subl	%r13d, %r9d
	movq	48(%rbx), %rax          # 8-byte Reload
	subl	%r13d, %eax
	movq	80(%rbx), %r8           # 8-byte Reload
	movq	%r12, %rcx
	movq	%rax, %rdx
	jmp	.LBB0_8
.LBB0_6:
	movq	56(%rbx), %rcx          # 8-byte Reload
	movq	48(%rbx), %rdx          # 8-byte Reload
.LBB0_8:                                # %branchmerge160
	movl	456(%rcx), %eax
	leal	(%rax,%rdx,8), %eax
	bswapl	%eax
	movl	%eax, 68(%rbx)          # 4-byte Spill
	movq	%rsp, %rax
	addq	$-32, %rax
	andq	$-32, %rax
	movq	%rax, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, (%rax)
	movl	$0, 16(%rax)
	movl	528(%rcx), %r12d
	testl	%r9d, %r9d
	movq	%rdx, 48(%rbx)          # 8-byte Spill
	movq	%rax, 96(%rbx)          # 8-byte Spill
	je	.LBB0_15
# %bb.9:                                # %loop_body.lr.ph
	leal	7(%rdx), %eax
	movl	%eax, 44(%rbx)          # 4-byte Spill
	leaq	464(%rcx), %rax
	movq	%rax, 72(%rbx)          # 8-byte Spill
	leal	72(%rdx), %eax
	movl	%eax, 88(%rbx)          # 4-byte Spill
	xorl	%r10d, %r10d
	movl	$128, %r11d
	xorl	%r14d, %r14d
	movl	%r9d, 28(%rbx)          # 4-byte Spill
	.p2align	4, 0x90
.LBB0_10:                               # %loop_body
                                        # =>This Inner Loop Header: Depth=1
	movslq	%r12d, %r12
	cmpl	%edx, %r14d
	setae	%al
	setb	%cl
	movq	%rdx, %rdi
	leal	(%r15,%r14), %edx
	movslq	%edx, %rdx
	movzbl	(%r8,%rdx), %edx
	#APP
	testb	%cl, %cl
	movl	%r10d, %esi
	cmovnel	%edx, %esi
	#NO_APP
	cmpl	%r14d, %edi
	sete	%cl
	#APP
	testb	%cl, %cl
	movl	%r10d, %edx
	cmovnel	%r11d, %edx
	#NO_APP
	xorb	%al, %cl
	movzwl	%dx, %edx
	#APP
	testb	%cl, %cl
	movl	%edx, %edi
	cmovnel	%r10d, %edi
	#NO_APP
	movzbl	%dil, %ecx
	movzbl	%sil, %edx
	#APP
	testb	%al, %al
	movl	%edx, %esi
	cmovnel	%ecx, %esi
	#NO_APP
	movq	56(%rbx), %rax          # 8-byte Reload
	movb	%sil, 464(%rax,%r12)
	movq	%rax, %rcx
	addl	$1, %r12d
	cmpl	$64, %r12d
	jne	.LBB0_14
# %bb.11:                               # %thenbranch229
                                        #   in Loop: Header=BB0_10 Depth=1
	xorl	%r12d, %r12d
	cmpl	%r14d, 44(%rbx)         # 4-byte Folded Reload
	setae	32(%rbx)                # 1-byte Folded Spill
	setb	%r13b
	movl	68(%rbx), %eax          # 4-byte Reload
	jb	.LBB0_13
# %bb.12:                               # %thenbranch229
                                        #   in Loop: Header=BB0_10 Depth=1
	movl	524(%rcx), %eax
.LBB0_13:                               # %thenbranch229
                                        #   in Loop: Header=BB0_10 Depth=1
	movl	%eax, 524(%rcx)
	movl	$1, %edx
	movq	104(%rbx), %rdi         # 8-byte Reload
	movq	72(%rbx), %rsi          # 8-byte Reload
	callq	sha1_block_data_order
	movq	56(%rbx), %rdi          # 8-byte Reload
	xorl	%eax, %eax
	cmpl	88(%rbx), %r14d         # 4-byte Folded Reload
	setb	%al
	#APP
	testb	%r13b, %r13b
	movl	%r12d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	andl	$1, %ecx
	movzbl	32(%rbx), %edx          # 1-byte Folded Reload
	#APP
	testb	%dl, %dl
	movl	%ecx, %eax
	cmovnel	%r12d, %eax
	#NO_APP
	andl	$1, %eax
	movl	436(%rdi), %ecx
	cmovel	%eax, %ecx
	movq	96(%rbx), %rsi          # 8-byte Reload
	cmovel	(%rsi), %ecx
	movl	%ecx, (%rsi)
	movl	440(%rdi), %ecx
	cmovel	%eax, %ecx
	cmovel	4(%rsi), %ecx
	movl	%ecx, 4(%rsi)
	movl	444(%rdi), %ecx
	cmovel	%eax, %ecx
	cmovel	8(%rsi), %ecx
	movl	%ecx, 8(%rsi)
	movl	448(%rdi), %ecx
	cmovel	%eax, %ecx
	cmovel	12(%rsi), %ecx
	movl	%ecx, 12(%rsi)
	cmovnel	452(%rdi), %eax
	cmovel	16(%rsi), %eax
	movl	%eax, 16(%rsi)
	movq	80(%rbx), %r8           # 8-byte Reload
	movl	28(%rbx), %r9d          # 4-byte Reload
	xorl	%r10d, %r10d
	movl	$128, %r11d
.LBB0_14:                               # %branchmerge330
                                        #   in Loop: Header=BB0_10 Depth=1
	addl	$1, %r14d
	cmpl	%r9d, %r14d
	movq	48(%rbx), %rdx          # 8-byte Reload
	jb	.LBB0_10
.LBB0_15:                               # %loop_end
	cmpl	$64, %r12d
	jae	.LBB0_16
# %bb.20:                               # %loop_end336
	addl	$64, %r9d
	movslq	%r12d, %rax
	movq	56(%rbx), %r14          # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	movl	$63, %edx
	subl	%r12d, %edx
	addq	$1, %rdx
	xorl	%esi, %esi
	movl	%r9d, %r13d
	callq	memset
	movl	%r13d, %r9d
	movq	48(%rbx), %rdx          # 8-byte Reload
	movq	%r14, %rcx
	subl	%r12d, %r9d
	cmpl	$56, %r12d
	ja	.LBB0_17
# %bb.21:                               # %loop_end336.branchmerge462_crit_edge
	leaq	524(%rcx), %rdi
	leaq	464(%rcx), %rsi
	leal	73(%rdx), %eax
	movl	%eax, 44(%rbx)          # 4-byte Spill
	movq	96(%rbx), %r13          # 8-byte Reload
	leaq	4(%r13), %rax
	movq	%rax, 72(%rbx)          # 8-byte Spill
	leaq	8(%r13), %rax
	movq	%rax, 128(%rbx)         # 8-byte Spill
	leaq	12(%r13), %rax
	movq	%rax, 120(%rbx)         # 8-byte Spill
	leaq	16(%r13), %rax
	movq	%rax, 88(%rbx)          # 8-byte Spill
	movq	%rcx, %r12
	movl	%r9d, 28(%rbx)          # 4-byte Spill
	jmp	.LBB0_22
.LBB0_16:
	movq	56(%rbx), %rcx          # 8-byte Reload
.LBB0_17:                               # %thenbranch354
	leal	8(%rdx), %eax
	leaq	464(%rcx), %rsi
	cmpl	%r9d, %eax
	setae	28(%rbx)                # 1-byte Folded Spill
	setb	72(%rbx)                # 1-byte Folded Spill
	movl	68(%rbx), %eax          # 4-byte Reload
	movl	%r9d, %r14d
	jb	.LBB0_19
# %bb.18:                               # %thenbranch354
	movl	524(%rcx), %eax
.LBB0_19:                               # %thenbranch354
	leaq	524(%rcx), %rdx
	movq	%rdx, 136(%rbx)         # 8-byte Spill
	movl	%eax, 524(%rcx)
	movl	$1, %edx
	movq	104(%rbx), %rdi         # 8-byte Reload
	movq	%rcx, %r12
	movq	%rsi, 32(%rbx)          # 8-byte Spill
	movq	32(%rbx), %rsi          # 8-byte Reload
	callq	sha1_block_data_order
	movq	48(%rbx), %rax          # 8-byte Reload
	leal	73(%rax), %ecx
	xorl	%eax, %eax
	movl	%ecx, 44(%rbx)          # 4-byte Spill
	cmpl	%ecx, %r14d
	setb	%al
	xorl	%esi, %esi
	movb	72(%rbx), %dl           # 1-byte Reload
	#APP
	testb	%dl, %dl
	movl	%esi, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	andl	$1, %ecx
	movb	28(%rbx), %dl           # 1-byte Reload
	#APP
	testb	%dl, %dl
	movl	%ecx, %eax
	cmovnel	%esi, %eax
	#NO_APP
	andl	$1, %eax
	testl	%eax, %eax
	movl	436(%r12), %ecx
	cmovel	%eax, %ecx
	movq	96(%rbx), %r13          # 8-byte Reload
	cmovel	(%r13), %ecx
	movl	%ecx, (%r13)
	movl	440(%r12), %ecx
	cmovel	%eax, %ecx
	cmovel	4(%r13), %ecx
	movl	%ecx, 4(%r13)
	movl	444(%r12), %ecx
	cmovel	%eax, %ecx
	cmovel	8(%r13), %ecx
	movl	%ecx, 8(%r13)
	movl	448(%r12), %ecx
	cmovel	%eax, %ecx
	cmovel	12(%r13), %ecx
	movl	%ecx, 12(%r13)
	leaq	4(%r13), %rcx
	movq	%rcx, 72(%rbx)          # 8-byte Spill
	cmovnel	452(%r12), %eax
	leaq	8(%r13), %rcx
	movq	%rcx, 128(%rbx)         # 8-byte Spill
	cmovel	16(%r13), %eax
	leaq	12(%r13), %rcx
	movq	%rcx, 120(%rbx)         # 8-byte Spill
	leaq	16(%r13), %rcx
	movq	%rcx, 88(%rbx)          # 8-byte Spill
	movl	%eax, 16(%r13)
	movq	32(%rbx), %rdi          # 8-byte Reload
	callq	_memzero
	movq	136(%rbx), %rdi         # 8-byte Reload
	movq	32(%rbx), %rsi          # 8-byte Reload
	addl	$64, %r14d
	movl	%r14d, 28(%rbx)         # 4-byte Spill
.LBB0_22:                               # %branchmerge462
	xorl	%ecx, %ecx
	movb	27(%rbx), %al           # 1-byte Reload
	movb	%al, %cl
	movl	%ecx, 32(%rbx)          # 4-byte Spill
	movl	68(%rbx), %eax          # 4-byte Reload
	movl	%eax, (%rdi)
	movl	$1, %edx
	movq	104(%rbx), %r14         # 8-byte Reload
	movq	%r14, %rdi
	callq	sha1_block_data_order
	xorl	%ecx, %ecx
	movl	44(%rbx), %eax          # 4-byte Reload
	cmpl	%eax, 28(%rbx)          # 4-byte Folded Reload
	movl	436(%r12), %eax
	cmovael	%ecx, %eax
	cmovael	(%r13), %eax
	movl	%eax, (%r13)
	movl	440(%r12), %eax
	cmovael	%ecx, %eax
	movq	72(%rbx), %rdx          # 8-byte Reload
	cmovael	(%rdx), %eax
	movl	%eax, (%rdx)
	movl	444(%r12), %eax
	cmovael	%ecx, %eax
	movq	128(%rbx), %rsi         # 8-byte Reload
	cmovael	(%rsi), %eax
	movl	%eax, (%rsi)
	movl	448(%r12), %eax
	cmovael	%ecx, %eax
	movq	120(%rbx), %rdi         # 8-byte Reload
	cmovael	(%rdi), %eax
	movl	%eax, (%rdi)
	movl	452(%r12), %eax
	cmovael	%ecx, %eax
	movq	88(%rbx), %rcx          # 8-byte Reload
	cmovael	(%rcx), %eax
	movl	%eax, (%rcx)
	movl	(%r13), %eax
	movbel	%eax, (%r13)
	movl	(%rdx), %eax
	movbel	%eax, (%rdx)
	movl	(%rsi), %eax
	movbel	%eax, (%rsi)
	movl	(%rdi), %eax
	movbel	%eax, (%rdi)
	movl	(%rcx), %eax
	movbel	%eax, (%rcx)
	vmovups	340(%r12), %ymm0
	vmovups	372(%r12), %ymm1
	vmovups	404(%r12), %ymm2
	vmovups	%ymm2, 64(%r14)
	vmovups	%ymm1, 32(%r14)
	vmovups	%ymm0, (%r14)
	movl	$20, %edx
	movq	%r14, %rdi
	movq	%r13, %rsi
	vzeroupper
	callq	_sha1_update
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	SHA1_Final
	movl	112(%rbx), %r12d        # 4-byte Reload
	addl	$20, %r12d
	movl	$20, %eax
	subl	144(%rbx), %eax         # 4-byte Folded Reload
	cmpl	$-256, %eax
	movl	$-256, %edx
	cmoval	%eax, %edx
	movq	48(%rbx), %rax          # 8-byte Reload
	leal	(%rax,%r15), %r8d
	leal	(%rax,%r15), %r9d
	addl	$20, %r9d
	movq	152(%rbx), %rax         # 8-byte Reload
	leal	(%rax,%rdx), %r10d
	addl	$-20, %r10d
	xorl	%esi, %esi
	xorl	%edi, %edi
	movl	32(%rbx), %eax          # 4-byte Reload
	movl	%eax, %r15d
	movl	116(%rbx), %r14d        # 4-byte Reload
	.p2align	4, 0x90
.LBB0_23:                               # %loop_body622
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r10,%rsi), %eax
	cltq
	movq	80(%rbx), %rdx          # 8-byte Reload
	movzbl	(%rdx,%rax), %r11d
	cmpl	%r11d, %r14d
	movl	%r15d, %edx
	movl	$0, %ecx
	cmovnel	%ecx, %edx
	movslq	%edi, %rcx
	leal	1(%rdi), %edi
	cmpl	%r9d, %eax
	cmovbl	%r15d, %edx
	movl	$0, %r15d
	cmovael	%edx, %r15d
	cmovael	%ecx, %edi
	cmpb	(%r13,%rcx), %r11b
	cmovel	%edx, %r15d
	cmpl	%r8d, %eax
	cmovbl	%edx, %r15d
	cmovbl	%ecx, %edi
	addl	$1, %esi
                                        # kill: def %edi killed %edi def %rdi
	cmpl	%r12d, %esi
	jb	.LBB0_23
.LBB0_24:                               # %thenbranch18
	movl	%r15d, %eax
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
	.p2align	4, 0x90         # -- Begin function _memzero
	.type	_memzero,@function
_memzero:                               # @_memzero
# %bb.0:                                # %entry
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 32(%rdi)
	vmovups	%ymm0, (%rdi)
	vzeroupper
	retq
.Lfunc_end1:
	.size	_memzero, .Lfunc_end1-_memzero
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
