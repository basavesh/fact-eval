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
	movl	%ecx, %r15d
	movq	%rdx, %r13
	movq	%rdi, %rax
	movq	16(%rbp), %rcx
	movbew	540(%rsi,%rcx), %cx
	movzwl	%cx, %ecx
	cmpl	$770, %ecx              # imm = 0x302
	jb	.LBB0_5
# %bb.1:                                # %thenbranch
	cmpl	$36, %r15d
	jbe	.LBB0_2
# %bb.4:                                # %branchmerge
	movq	%rsi, %r12
	vmovups	(%r8), %xmm0
	vmovups	%xmm0, (%rax)
	leal	-16(%r15), %r14d
	movl	$16, %edx
	movl	$16, %ecx
	jmp	.LBB0_7
.LBB0_5:                                # %elsebranch37
	cmpl	$21, %r15d
	jae	.LBB0_6
.LBB0_2:                                # %thenbranch24
	xorl	%eax, %eax
	jmp	.LBB0_3
.LBB0_6:
	movq	%rsi, %r12
	xorl	%edx, %edx
	movl	%r15d, %r14d
	xorl	%ecx, %ecx
.LBB0_7:                                # %branchmerge47
	addq	%rcx, %r8
	movq	%rdx, 48(%rbx)          # 8-byte Spill
	movl	%edx, %esi
	addq	%r13, %rsi
	movl	%r14d, %edx
	xorl	%r9d, %r9d
	movq	%r8, %rdi
	movq	%rsi, 40(%rbx)          # 8-byte Spill
	movq	%r12, %rcx
	movq	%rax, %r8
	callq	aesni_cbc_encrypt
	leal	-1(%r15), %eax
	movq	%rax, 144(%rbx)         # 8-byte Spill
	cltq
	movzbl	(%r13,%rax), %eax
	leal	235(%r14), %ecx
	movl	$276, %edx              # imm = 0x114
	subl	%r14d, %edx
	shrl	$24, %edx
	movzbl	%cl, %ecx
	orl	%edx, %ecx
	movl	%ecx, %edx
	subl	%eax, %edx
	sarl	$31, %edx
	andnl	%eax, %edx, %eax
	movl	%edx, 100(%rbx)         # 4-byte Spill
	movl	%ecx, 108(%rbx)         # 4-byte Spill
	andl	%ecx, %edx
	orl	%eax, %edx
	leal	-21(%r14), %eax
	movl	%edx, 104(%rbx)         # 4-byte Spill
	subl	%edx, %eax
	movq	%r12, %rcx
	leaq	544(%rcx), %rsi
	movq	16(%rbp), %rdx
	movb	%ah, 542(%rcx,%rdx)  # NOREX
	movq	%rax, 32(%rbx)          # 8-byte Spill
	movb	%al, 543(%rcx,%rdx)
	leaq	436(%rcx), %r12
	vmovups	244(%rcx), %ymm0
	vmovups	276(%rcx), %ymm1
	vmovups	308(%rcx), %ymm2
	vmovups	%ymm2, 500(%rcx)
	vmovups	%ymm1, 468(%rcx)
	movq	%rcx, 88(%rbx)          # 8-byte Spill
	vmovups	%ymm0, 436(%rcx)
	movq	%r12, %rdi
	vzeroupper
	callq	_sha1_update
	leal	-20(%r14), %r8d
	cmpl	$319, %r8d              # imm = 0x13F
	movq	%r12, 80(%rbx)          # 8-byte Spill
	movq	%r15, 152(%rbx)         # 8-byte Spill
	movq	%r13, 128(%rbx)         # 8-byte Spill
	jbe	.LBB0_8
# %bb.9:                                # %thenbranch128
	addl	$-340, %r14d            # imm = 0xFEAC
	andl	$-64, %r14d
	movl	$64, %r13d
	movq	88(%rbx), %r15          # 8-byte Reload
	subl	528(%r15), %r13d
	addl	%r14d, %r13d
	movq	%r12, %rdi
	movq	40(%rbx), %rsi          # 8-byte Reload
	movq	%r13, %rdx
	movq	%r8, %r14
	callq	_sha1_update
	movq	%r14, %r8
	movq	48(%rbx), %rax          # 8-byte Reload
	addl	%r13d, %eax
	subl	%r13d, %r8d
	movq	32(%rbx), %rcx          # 8-byte Reload
	subl	%r13d, %ecx
	movq	%rax, %rdi
	movq	%r15, %rsi
	jmp	.LBB0_10
.LBB0_8:
	movq	48(%rbx), %rdi          # 8-byte Reload
	movq	88(%rbx), %rsi          # 8-byte Reload
	movq	32(%rbx), %rcx          # 8-byte Reload
.LBB0_10:                               # %branchmerge167
	movl	456(%rsi), %eax
	leal	(%rax,%rcx,8), %r9d
	bswapl	%r9d
	movq	%rsp, %rax
	addq	$-32, %rax
	andq	$-32, %rax
	movq	%rax, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, (%rax)
	movq	%rax, 40(%rbx)          # 8-byte Spill
	movl	$0, 16(%rax)
	movl	528(%rsi), %r15d
	testl	%r8d, %r8d
	movl	%r9d, 28(%rbx)          # 4-byte Spill
	movq	%rcx, 32(%rbx)          # 8-byte Spill
	movq	%rdi, 48(%rbx)          # 8-byte Spill
	je	.LBB0_15
# %bb.11:                               # %loop_body.lr.ph
	leaq	464(%rsi), %rax
	movq	%rax, 72(%rbx)          # 8-byte Spill
	movl	$-72, %eax
	subl	%ecx, %eax
	movq	%rax, 64(%rbx)          # 8-byte Spill
	movl	%ecx, %r12d
	negl	%r12d
	xorl	%r13d, %r13d
	movl	%ecx, %r14d
	.p2align	4, 0x90
.LBB0_12:                               # %loop_body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rdi,%r13), %eax
	cltq
	movq	128(%rbx), %rcx         # 8-byte Reload
	movzbl	(%rcx,%rax), %eax
	leal	(%r12,%r13), %ecx
	sarl	$24, %ecx
	andl	%ecx, %eax
	movl	%r14d, %edx
	shrl	$24, %edx
	notl	%edx
	andnl	%edx, %ecx, %ecx
	andl	$128, %ecx
	orl	%eax, %ecx
	movslq	%r15d, %r15
	movb	%cl, 464(%rsi,%r15)
	addl	$1, %r15d
	cmpl	$64, %r15d
	jne	.LBB0_14
# %bb.13:                               # %thenbranch216
                                        #   in Loop: Header=BB0_12 Depth=1
	leal	7(%r14), %eax
	movl	%eax, 56(%rbx)          # 4-byte Spill
	sarl	$31, %eax
	andl	%r9d, %eax
	orl	%eax, 524(%rsi)
	movl	$1, %edx
	movq	80(%rbx), %rdi          # 8-byte Reload
	movq	72(%rbx), %rsi          # 8-byte Reload
	movq	%r8, %r15
	callq	sha1_block_data_order
	movl	28(%rbx), %r9d          # 4-byte Reload
	movq	%r15, %r8
	movq	48(%rbx), %rdi          # 8-byte Reload
	movq	88(%rbx), %rsi          # 8-byte Reload
	movq	64(%rbx), %rax          # 8-byte Reload
	leal	(%rax,%r13), %eax
	andl	56(%rbx), %eax          # 4-byte Folded Reload
	sarl	$31, %eax
	movl	436(%rsi), %ecx
	andl	%eax, %ecx
	movq	40(%rbx), %rdx          # 8-byte Reload
	orl	%ecx, (%rdx)
	movl	440(%rsi), %ecx
	andl	%eax, %ecx
	orl	%ecx, 4(%rdx)
	movl	444(%rsi), %ecx
	andl	%eax, %ecx
	orl	%ecx, 8(%rdx)
	movl	448(%rsi), %ecx
	andl	%eax, %ecx
	orl	%ecx, 12(%rdx)
	andl	452(%rsi), %eax
	orl	%eax, 16(%rdx)
	xorl	%r15d, %r15d
.LBB0_14:                               # %branchmerge307
                                        #   in Loop: Header=BB0_12 Depth=1
	addl	$1, %r13d
	addl	$-1, %r14d
	cmpl	%r8d, %r13d
	jb	.LBB0_12
.LBB0_15:                               # %loop_end
	cmpl	$64, %r15d
	jae	.LBB0_16
# %bb.18:                               # %loop_end313
	addl	$64, %r8d
	movslq	%r15d, %rax
	leaq	(%rsi,%rax), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	movl	$63, %edx
	subl	%r15d, %edx
	addq	$1, %rdx
	movq	%rsi, %r14
	xorl	%esi, %esi
	movq	%r8, %r12
	callq	memset
	movl	28(%rbx), %r9d          # 4-byte Reload
	movq	%r12, %r8
	movq	%r14, %rsi
	subl	%r15d, %r8d
	cmpl	$56, %r15d
	movq	32(%rbx), %rcx          # 8-byte Reload
	movq	80(%rbx), %rdi          # 8-byte Reload
	ja	.LBB0_17
# %bb.19:                               # %loop_end313.branchmerge428_crit_edge
	leaq	524(%rsi), %rdx
	leaq	464(%rsi), %r15
	movl	$-72, %r13d
	subl	%ecx, %r13d
	movq	40(%rbx), %r12          # 8-byte Reload
	leaq	4(%r12), %rax
	movq	%rax, 64(%rbx)          # 8-byte Spill
	leaq	8(%r12), %rax
	movq	%rax, 72(%rbx)          # 8-byte Spill
	leaq	12(%r12), %rax
	movq	%rax, 112(%rbx)         # 8-byte Spill
	leaq	16(%r12), %rax
	movq	%rax, 120(%rbx)         # 8-byte Spill
	movq	%rsi, %r14
	jmp	.LBB0_20
.LBB0_16:
	movq	32(%rbx), %rcx          # 8-byte Reload
	movq	80(%rbx), %rdi          # 8-byte Reload
.LBB0_17:                               # %thenbranch330
	movq	%r8, 56(%rbx)           # 8-byte Spill
	leal	8(%rcx), %eax
	subl	%r8d, %eax
	movl	$-72, %r13d
	subl	%ecx, %r13d
	leal	(%r8,%r13), %r15d
	andl	%eax, %r15d
	sarl	$31, %eax
	leaq	524(%rsi), %rcx
	movq	%rcx, 136(%rbx)         # 8-byte Spill
	leaq	464(%rsi), %r12
	andl	%r9d, %eax
	orl	%eax, 524(%rsi)
	movl	$1, %edx
	movq	%rsi, %r14
	movq	%r12, %rsi
	callq	sha1_block_data_order
	sarl	$31, %r15d
	movl	436(%r14), %eax
	andl	%r15d, %eax
	movq	40(%rbx), %rcx          # 8-byte Reload
	orl	%eax, (%rcx)
	movl	440(%r14), %eax
	andl	%r15d, %eax
	orl	%eax, 4(%rcx)
	movl	444(%r14), %eax
	andl	%r15d, %eax
	orl	%eax, 8(%rcx)
	leaq	4(%rcx), %rax
	movq	%rax, 64(%rbx)          # 8-byte Spill
	leaq	8(%rcx), %rax
	movq	%rax, 72(%rbx)          # 8-byte Spill
	movl	448(%r14), %eax
	andl	%r15d, %eax
	orl	%eax, 12(%rcx)
	leaq	12(%rcx), %rax
	movq	%rax, 112(%rbx)         # 8-byte Spill
	leaq	16(%rcx), %rax
	movq	%rax, 120(%rbx)         # 8-byte Spill
	andl	452(%r14), %r15d
	orl	%r15d, 16(%rcx)
	movq	%r12, %r15
	movq	%rcx, %r12
	movq	%r15, %rdi
	callq	_memzero
	movq	136(%rbx), %rdx         # 8-byte Reload
	movl	28(%rbx), %r9d          # 4-byte Reload
	movq	56(%rbx), %r8           # 8-byte Reload
	movq	80(%rbx), %rdi          # 8-byte Reload
	addl	$64, %r8d
.LBB0_20:                               # %branchmerge428
	addl	%r8d, %r13d
	movl	100(%rbx), %eax         # 4-byte Reload
	movl	$1, %ecx
	andnl	%ecx, %eax, %eax
	movl	%eax, 56(%rbx)          # 4-byte Spill
	movl	%r9d, (%rdx)
	movl	$1, %edx
	movq	%r15, %rsi
	movq	%rdi, %r15
	callq	sha1_block_data_order
	sarl	$31, %r13d
	movl	436(%r14), %eax
	andl	%r13d, %eax
	orl	%eax, (%r12)
	movl	440(%r14), %eax
	andl	%r13d, %eax
	movq	64(%rbx), %rdx          # 8-byte Reload
	orl	%eax, (%rdx)
	movl	444(%r14), %eax
	andl	%r13d, %eax
	movq	72(%rbx), %rcx          # 8-byte Reload
	orl	%eax, (%rcx)
	movl	448(%r14), %eax
	andl	%r13d, %eax
	movq	112(%rbx), %rdi         # 8-byte Reload
	orl	%eax, (%rdi)
	andl	452(%r14), %r13d
	movq	120(%rbx), %rsi         # 8-byte Reload
	orl	%r13d, (%rsi)
	movl	(%r12), %eax
	movbel	%eax, (%r12)
	movl	(%rdx), %eax
	movbel	%eax, (%rdx)
	movl	(%rcx), %eax
	movbel	%eax, (%rcx)
	movl	(%rdi), %eax
	movbel	%eax, (%rdi)
	movl	(%rsi), %eax
	movbel	%eax, (%rsi)
	vmovups	340(%r14), %ymm0
	vmovups	372(%r14), %ymm1
	vmovups	404(%r14), %ymm2
	vmovups	%ymm2, 64(%r15)
	vmovups	%ymm1, 32(%r15)
	vmovups	%ymm0, (%r15)
	movl	$20, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	vzeroupper
	callq	_sha1_update
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	SHA1_Final
	movq	144(%rbx), %r15         # 8-byte Reload
	movl	108(%rbx), %r13d        # 4-byte Reload
	subl	%r13d, %r15d
	movl	$20, %eax
	subl	%r15d, %eax
	addl	$-20, %r15d
	movq	48(%rbx), %rcx          # 8-byte Reload
	addl	%ecx, %eax
	movq	32(%rbx), %rdx          # 8-byte Reload
	leal	(%rdx,%rax), %r9d
	addl	$-1, %r9d
	movq	152(%rbx), %r11         # 8-byte Reload
	addl	$-41, %r11d
	subl	%r13d, %r11d
	addl	$20, %r13d
	subl	%edx, %r11d
	subl	%ecx, %r11d
	xorl	%r10d, %r10d
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	128(%rbx), %r14         # 8-byte Reload
	movl	104(%rbx), %r12d        # 4-byte Reload
	.p2align	4, 0x90
.LBB0_21:                               # %loop_body598
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r15,%r10), %edi
	movslq	%edi, %rdi
	movzbl	(%r14,%rdi), %r8d
	leal	(%r11,%r10), %eax
	movl	%eax, %edi
	sarl	$31, %eax
	movslq	%esi, %rsi
	movq	40(%rbx), %rcx          # 8-byte Reload
	movzbl	(%rcx,%rsi), %ecx
	xorb	%r8b, %cl
	xorl	%r12d, %r8d
	andnl	%r8d, %eax, %eax
	orl	%edx, %eax
	andl	%r9d, %edi
	sarl	$31, %edi
	movzbl	%cl, %edx
	andl	%edi, %edx
	orl	%eax, %edx
	subl	%edi, %esi
	addl	$1, %r10d
	addl	$-1, %r9d
	cmpl	%r13d, %r10d
	jb	.LBB0_21
# %bb.22:                               # %loop_end599
	negl	%edx
	sarl	$31, %edx
	andnl	56(%rbx), %edx, %eax    # 4-byte Folded Reload
.LBB0_3:                                # %thenbranch24
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
