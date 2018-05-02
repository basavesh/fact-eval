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
	movq	%rsi, 56(%rbx)          # 8-byte Spill
	movq	%rdi, %rax
	movzwl	24(%rbp), %ecx
	cmpl	$770, %ecx              # imm = 0x302
	jb	.LBB0_5
# %bb.1:                                # %thenbranch
	cmpl	$36, %r15d
	jbe	.LBB0_2
# %bb.4:                                # %branchmerge
	vmovups	(%r8), %xmm0
	vmovups	%xmm0, (%rax)
	leal	-16(%r15), %r14d
	movl	$16, %edx
	movl	$16, %ecx
	jmp	.LBB0_7
.LBB0_5:                                # %elsebranch29
	cmpl	$21, %r15d
	jae	.LBB0_6
.LBB0_2:                                # %thenbranch18
	xorl	%eax, %eax
	jmp	.LBB0_3
.LBB0_6:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	%r15d, %r14d
.LBB0_7:                                # %branchmerge39
	movq	%rdx, 64(%rbx)          # 8-byte Spill
	addq	%rcx, %r8
	movl	%edx, %esi
	addq	%r13, %rsi
	movl	%r14d, %edx
	xorl	%r9d, %r9d
	movq	%r8, %rdi
	movq	%rsi, 24(%rbx)          # 8-byte Spill
	movq	56(%rbx), %r12          # 8-byte Reload
	movq	%r12, %rcx
	movq	%rax, %r8
	callq	aesni_cbc_encrypt@PLT
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
	leal	-21(%r14), %ecx
	movl	%edx, 104(%rbx)         # 4-byte Spill
	subl	%edx, %ecx
	movq	%r12, %rdi
	leaq	544(%rdi), %rsi
	movq	16(%rbp), %rax
	movb	%ch, 542(%rdi,%rax)  # NOREX
	movq	%rcx, 40(%rbx)          # 8-byte Spill
	movb	%cl, 543(%rdi,%rax)
	movq	%rax, %rdx
	leaq	436(%rdi), %r12
	vmovups	244(%rdi), %ymm0
	vmovups	276(%rdi), %ymm1
	vmovups	308(%rdi), %ymm2
	vmovups	%ymm2, 500(%rdi)
	vmovups	%ymm1, 468(%rdi)
	vmovups	%ymm0, 436(%rdi)
	movq	%r12, %rdi
	vzeroupper
	callq	_sha1_update@PLT
	leal	-20(%r14), %r9d
	cmpl	$319, %r9d              # imm = 0x13F
	movq	%r12, 48(%rbx)          # 8-byte Spill
	movq	%r15, 152(%rbx)         # 8-byte Spill
	movq	%r13, 120(%rbx)         # 8-byte Spill
	jbe	.LBB0_8
# %bb.9:                                # %thenbranch117
	addl	$-340, %r14d            # imm = 0xFEAC
	andl	$-64, %r14d
	movl	$64, %r13d
	movq	56(%rbx), %r15          # 8-byte Reload
	subl	528(%r15), %r13d
	addl	%r14d, %r13d
	movq	%r12, %rdi
	movq	24(%rbx), %rsi          # 8-byte Reload
	movq	%r13, %rdx
	movq	%r9, %r14
	callq	_sha1_update@PLT
	movq	%r14, %r9
	movq	64(%rbx), %rax          # 8-byte Reload
	addl	%r13d, %eax
	subl	%r13d, %r9d
	movq	40(%rbx), %rcx          # 8-byte Reload
	subl	%r13d, %ecx
	movq	%rax, %rsi
	movq	%r15, %rdi
	jmp	.LBB0_10
.LBB0_8:
	movq	64(%rbx), %rsi          # 8-byte Reload
	movq	56(%rbx), %rdi          # 8-byte Reload
	movq	40(%rbx), %rcx          # 8-byte Reload
.LBB0_10:                               # %branchmerge156
	movl	456(%rdi), %eax
	leal	(%rax,%rcx,8), %r10d
	bswapl	%r10d
	movq	%rsp, %rax
	addq	$-32, %rax
	andq	$-32, %rax
	movq	%rax, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, (%rax)
	movq	%rax, 24(%rbx)          # 8-byte Spill
	movl	$0, 16(%rax)
	movl	528(%rdi), %r15d
	testl	%r9d, %r9d
	movl	%r10d, 36(%rbx)         # 4-byte Spill
	movq	%rsi, 64(%rbx)          # 8-byte Spill
	movq	%rcx, 40(%rbx)          # 8-byte Spill
	je	.LBB0_11
# %bb.15:                               # %loop_body.lr.ph
	leaq	464(%rdi), %rax
	movq	%rax, 88(%rbx)          # 8-byte Spill
	movl	$-72, %eax
	subl	%ecx, %eax
	movq	%rax, 80(%rbx)          # 8-byte Spill
	movl	%ecx, %r11d
	negl	%r11d
	xorl	%r13d, %r13d
	movl	%ecx, %r14d
	movq	48(%rbx), %r12          # 8-byte Reload
	.p2align	4, 0x90
.LBB0_16:                               # %loop_body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rsi,%r13), %eax
	cltq
	movq	120(%rbx), %rcx         # 8-byte Reload
	movzbl	(%rcx,%rax), %eax
	leal	(%r11,%r13), %ecx
	sarl	$24, %ecx
	andl	%ecx, %eax
	movl	%r14d, %edx
	shrl	$24, %edx
	notl	%edx
	andnl	%edx, %ecx, %ecx
	andl	$128, %ecx
	orl	%eax, %ecx
	movslq	%r15d, %r15
	movb	%cl, 464(%rdi,%r15)
	addl	$1, %r15d
	cmpl	$64, %r15d
	jne	.LBB0_18
# %bb.17:                               # %thenbranch204
                                        #   in Loop: Header=BB0_16 Depth=1
	leal	7(%r14), %eax
	movl	%eax, 72(%rbx)          # 4-byte Spill
	sarl	$31, %eax
	andl	%r10d, %eax
	orl	%eax, 524(%rdi)
	movl	$1, %edx
	movq	%r12, %rdi
	movq	88(%rbx), %rsi          # 8-byte Reload
	movq	%r9, %r15
	movq	%r11, %r12
	callq	sha1_block_data_order@PLT
	movq	%r12, %r11
	movl	36(%rbx), %r10d         # 4-byte Reload
	movq	%r15, %r9
	movq	56(%rbx), %rdi          # 8-byte Reload
	movq	64(%rbx), %rsi          # 8-byte Reload
	movq	48(%rbx), %r12          # 8-byte Reload
	movq	80(%rbx), %rax          # 8-byte Reload
	leal	(%rax,%r13), %eax
	andl	72(%rbx), %eax          # 4-byte Folded Reload
	sarl	$31, %eax
	movl	436(%rdi), %ecx
	andl	%eax, %ecx
	movq	24(%rbx), %rdx          # 8-byte Reload
	orl	%ecx, (%rdx)
	movl	440(%rdi), %ecx
	andl	%eax, %ecx
	orl	%ecx, 4(%rdx)
	movl	444(%rdi), %ecx
	andl	%eax, %ecx
	orl	%ecx, 8(%rdx)
	movl	448(%rdi), %ecx
	andl	%eax, %ecx
	orl	%ecx, 12(%rdx)
	andl	452(%rdi), %eax
	orl	%eax, 16(%rdx)
	xorl	%r15d, %r15d
.LBB0_18:                               # %branchmerge295
                                        #   in Loop: Header=BB0_16 Depth=1
	addl	$1, %r13d
	addl	$-1, %r14d
	cmpl	%r9d, %r13d
	jb	.LBB0_16
# %bb.12:                               # %loop_end
	cmpl	$64, %r15d
	jae	.LBB0_13
.LBB0_19:                               # %loop_end301
	addl	$64, %r9d
	movslq	%r15d, %rax
	movq	56(%rbx), %rcx          # 8-byte Reload
	leaq	(%rcx,%rax), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	movl	$63, %edx
	subl	%r15d, %edx
	addq	$1, %rdx
	xorl	%esi, %esi
	movq	%r9, %r14
	callq	memset@PLT
	movl	36(%rbx), %r10d         # 4-byte Reload
	movq	%r14, %r9
	movq	56(%rbx), %rdi          # 8-byte Reload
	subl	%r15d, %r9d
	cmpl	$56, %r15d
	movq	40(%rbx), %rcx          # 8-byte Reload
	ja	.LBB0_14
# %bb.20:                               # %loop_end301.branchmerge416_crit_edge
	leaq	524(%rdi), %rdx
	leaq	464(%rdi), %rsi
	movl	$-72, %r13d
	subl	%ecx, %r13d
	movq	24(%rbx), %r15          # 8-byte Reload
	leaq	4(%r15), %rax
	movq	%rax, 88(%rbx)          # 8-byte Spill
	leaq	8(%r15), %rax
	movq	%rax, 48(%rbx)          # 8-byte Spill
	leaq	12(%r15), %rax
	movq	%rax, 112(%rbx)         # 8-byte Spill
	leaq	16(%r15), %rax
	movq	%rax, 80(%rbx)          # 8-byte Spill
	movq	%rdi, %r14
	jmp	.LBB0_21
.LBB0_11:
	movq	48(%rbx), %r12          # 8-byte Reload
	cmpl	$64, %r15d
	jb	.LBB0_19
.LBB0_13:
	movq	40(%rbx), %rcx          # 8-byte Reload
.LBB0_14:                               # %thenbranch318
	movq	%r9, 72(%rbx)           # 8-byte Spill
	leal	8(%rcx), %eax
	subl	%r9d, %eax
	movl	$-72, %r13d
	subl	%ecx, %r13d
	leal	(%r9,%r13), %r15d
	andl	%eax, %r15d
	sarl	$31, %eax
	leaq	524(%rdi), %rcx
	movq	%rcx, 136(%rbx)         # 8-byte Spill
	leaq	464(%rdi), %rsi
	movq	%rsi, 128(%rbx)         # 8-byte Spill
	andl	%r10d, %eax
	orl	%eax, 524(%rdi)
	movl	$1, %edx
	movq	%rdi, %r14
	movq	%r12, %rdi
	callq	sha1_block_data_order@PLT
	sarl	$31, %r15d
	movl	436(%r14), %eax
	andl	%r15d, %eax
	movq	24(%rbx), %rcx          # 8-byte Reload
	orl	%eax, (%rcx)
	movl	440(%r14), %eax
	andl	%r15d, %eax
	orl	%eax, 4(%rcx)
	movl	444(%r14), %eax
	andl	%r15d, %eax
	orl	%eax, 8(%rcx)
	leaq	4(%rcx), %rax
	movq	%rax, 88(%rbx)          # 8-byte Spill
	leaq	8(%rcx), %rax
	movq	%rax, 48(%rbx)          # 8-byte Spill
	movl	448(%r14), %eax
	andl	%r15d, %eax
	orl	%eax, 12(%rcx)
	leaq	12(%rcx), %rax
	movq	%rax, 112(%rbx)         # 8-byte Spill
	leaq	16(%rcx), %rax
	movq	%rax, 80(%rbx)          # 8-byte Spill
	andl	452(%r14), %r15d
	orl	%r15d, 16(%rcx)
	movq	128(%rbx), %r15         # 8-byte Reload
	movq	%r15, %rdi
	callq	_memzero
	movq	136(%rbx), %rdx         # 8-byte Reload
	movq	%r15, %rsi
	movq	24(%rbx), %r15          # 8-byte Reload
	movl	36(%rbx), %r10d         # 4-byte Reload
	movq	72(%rbx), %r9           # 8-byte Reload
	addl	$64, %r9d
.LBB0_21:                               # %branchmerge416
	addl	%r9d, %r13d
	movl	100(%rbx), %eax         # 4-byte Reload
	movl	$1, %ecx
	andnl	%ecx, %eax, %eax
	movl	%eax, 72(%rbx)          # 4-byte Spill
	movl	%r10d, (%rdx)
	movl	$1, %edx
	movq	%r12, %rdi
	callq	sha1_block_data_order@PLT
	sarl	$31, %r13d
	movl	436(%r14), %eax
	andl	%r13d, %eax
	orl	%eax, (%r15)
	movl	440(%r14), %eax
	andl	%r13d, %eax
	movq	88(%rbx), %rdx          # 8-byte Reload
	orl	%eax, (%rdx)
	movl	444(%r14), %eax
	andl	%r13d, %eax
	movq	48(%rbx), %rcx          # 8-byte Reload
	orl	%eax, (%rcx)
	movl	448(%r14), %eax
	andl	%r13d, %eax
	movq	112(%rbx), %rdi         # 8-byte Reload
	orl	%eax, (%rdi)
	andl	452(%r14), %r13d
	movq	80(%rbx), %rsi          # 8-byte Reload
	orl	%r13d, (%rsi)
	movl	(%r15), %eax
	movbel	%eax, (%r15)
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
	vmovups	%ymm2, 64(%r12)
	vmovups	%ymm1, 32(%r12)
	vmovups	%ymm0, (%r12)
	movl	$20, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	vzeroupper
	callq	_sha1_update@PLT
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	SHA1_Final@PLT
	movq	144(%rbx), %r15         # 8-byte Reload
	movl	108(%rbx), %r13d        # 4-byte Reload
	subl	%r13d, %r15d
	movl	$20, %eax
	subl	%r15d, %eax
	addl	$-20, %r15d
	movq	64(%rbx), %rcx          # 8-byte Reload
	addl	%ecx, %eax
	movq	40(%rbx), %rdx          # 8-byte Reload
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
	movq	120(%rbx), %r14         # 8-byte Reload
	movl	104(%rbx), %r12d        # 4-byte Reload
	.p2align	4, 0x90
.LBB0_22:                               # %loop_body586
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r15,%r10), %edi
	movslq	%edi, %rdi
	movzbl	(%r14,%rdi), %r8d
	leal	(%r11,%r10), %eax
	movl	%eax, %edi
	sarl	$31, %eax
	movslq	%esi, %rsi
	movq	24(%rbx), %rcx          # 8-byte Reload
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
	jb	.LBB0_22
# %bb.23:                               # %loop_end587
	negl	%edx
	sarl	$31, %edx
	andnl	72(%rbx), %edx, %eax    # 4-byte Folded Reload
.LBB0_3:                                # %thenbranch18
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
