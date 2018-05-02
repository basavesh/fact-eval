	.text
	.file	"Module"
	.p2align	4, 0x90         # -- Begin function constant_time_msb
	.type	constant_time_msb,@function
constant_time_msb:                      # @constant_time_msb
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%edi, -4(%rsp)
	movb	$1, -9(%rsp)
	sarl	$31, %edi
	movl	%edi, -8(%rsp)
	movl	%edi, %eax
	retq
.Lfunc_end0:
	.size	constant_time_msb, .Lfunc_end0-constant_time_msb
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function constant_time_lt
	.type	constant_time_lt,@function
constant_time_lt:                       # @constant_time_lt
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	%edi, 20(%rsp)
	movl	%esi, 16(%rsp)
	movl	$0, 12(%rsp)
	movb	$1, 11(%rsp)
	movl	%edi, %ecx
	xorl	%esi, %ecx
	movl	%edi, %eax
	subl	%esi, %eax
	xorl	%esi, %eax
	orl	%ecx, %eax
	xorl	%edi, %eax
	movl	%eax, %edi
	callq	constant_time_msb
	movl	%eax, 12(%rsp)
	addq	$24, %rsp
	retq
.Lfunc_end1:
	.size	constant_time_lt, .Lfunc_end1-constant_time_lt
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function constant_time_ge
	.type	constant_time_ge,@function
constant_time_ge:                       # @constant_time_ge
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	%edi, 20(%rsp)
	movl	%esi, 16(%rsp)
	movl	$0, 12(%rsp)
	movb	$1, 11(%rsp)
	callq	constant_time_lt
	notl	%eax
	movl	%eax, 12(%rsp)
	addq	$24, %rsp
	retq
.Lfunc_end2:
	.size	constant_time_ge, .Lfunc_end2-constant_time_ge
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function constant_time_select
	.type	constant_time_select,@function
constant_time_select:                   # @constant_time_select
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%edi, -4(%rsp)
	movl	%esi, -8(%rsp)
	movl	%edx, -12(%rsp)
	movb	$1, -17(%rsp)
	andl	%edi, %esi
	andnl	%edx, %edi, %eax
	orl	%esi, %eax
	movl	%eax, -16(%rsp)
	retq
.Lfunc_end3:
	.size	constant_time_select, .Lfunc_end3-constant_time_select
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function bswap4
	.type	bswap4,@function
bswap4:                                 # @bswap4
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%edi, -28(%rsp)
	movb	$1, -21(%rsp)
	movzbl	-28(%rsp), %eax
	shll	$24, %eax
	movl	%eax, -8(%rsp)
	movzbl	-27(%rsp), %ecx
	shll	$16, %ecx
	movl	%ecx, -12(%rsp)
	movzbl	-26(%rsp), %edx
	shll	$8, %edx
	movl	%edx, -16(%rsp)
	shrl	$24, %edi
	movl	%edi, -20(%rsp)
	orl	%edx, %edi
	orl	%ecx, %edi
	orl	%eax, %edi
	movl	%edi, -4(%rsp)
	movl	%edi, %eax
	retq
.Lfunc_end4:
	.size	bswap4, .Lfunc_end4-bswap4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function pmac_oreq
	.type	pmac_oreq,@function
pmac_oreq:                              # @pmac_oreq
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
	movl	%esi, 4(%rsp)
	movb	$1, 3(%rsp)
	callq	_load32_le
	movl	%eax, 20(%rsp)
	movq	8(%rsp), %rdi
	orl	4(%rsp), %eax
	movl	%eax, %esi
	callq	_store32_le
	addq	$24, %rsp
	retq
.Lfunc_end5:
	.size	pmac_oreq, .Lfunc_end5-pmac_oreq
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _load32_le
	.type	_load32_le,@function
_load32_le:                             # @_load32_le
	.cfi_startproc
# %bb.0:                                # %entry
	movl	(%rdi), %eax
	retq
.Lfunc_end6:
	.size	_load32_le, .Lfunc_end6-_load32_le
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _store32_le
	.type	_store32_le,@function
_store32_le:                            # @_store32_le
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, (%rdi)
	retq
.Lfunc_end7:
	.size	_store32_le, .Lfunc_end7-_store32_le
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
	andq	$-32, %rsp
	subq	$288, %rsp              # imm = 0x120
	movq	%rsp, %rbx
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, 200(%rbx)
	movq	%rdx, 88(%rbx)
	movl	%ecx, 148(%rbx)
	movq	%r8, 176(%rbx)
	movl	%r9d, 196(%rbx)
	movl	$0, 120(%rbx)
	movb	$1, 127(%rbx)
	movq	$-1, 248(%rbx)
	movl	$16, 144(%rbx)
	movl	$20, 40(%rbx)
	movl	$770, 244(%rbx)         # imm = 0x302
	movl	$16, 60(%rbx)
	movl	$64, 80(%rbx)
	movl	$0, 116(%rbx)
	movl	%ecx, 28(%rbx)
	movl	$0, 48(%rbx)
	movl	$1, 112(%rbx)
	movzwl	24(%rbp), %eax
	cmpl	$770, %eax              # imm = 0x302
	jae	.LBB8_1
# %bb.4:                                # %elsebranch29
	movl	40(%rbx), %eax
	addl	$1, %eax
	cmpl	%eax, 28(%rbx)
	jae	.LBB8_6
	jmp	.LBB8_2
.LBB8_1:                                # %thenbranch
	movl	144(%rbx), %eax
	movl	40(%rbx), %ecx
	leal	(%rax,%rcx), %eax
	addl	$1, %eax
	cmpl	%eax, 28(%rbx)
	jb	.LBB8_2
# %bb.5:                                # %branchmerge
	movq	200(%rbx), %rdi
	movq	176(%rbx), %rdx
	movl	196(%rbx), %ecx
	movl	$16, %esi
	callq	_arrcopy
	movl	144(%rbx), %eax
	addl	%eax, 116(%rbx)
	addl	%eax, 48(%rbx)
	subl	%eax, 28(%rbx)
.LBB8_6:                                # %branchmerge39
	movl	28(%rbx), %eax
	movl	%eax, 240(%rbx)
	movl	%eax, 236(%rbx)
	movslq	116(%rbx), %rax
	addq	176(%rbx), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movslq	116(%rbx), %rdi
	addq	176(%rbx), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movslq	48(%rbx), %rax
	addq	88(%rbx), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movslq	48(%rbx), %rsi
	addq	88(%rbx), %rsi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rsi, -16(%rax)
	movl	28(%rbx), %edx
	movq	200(%rbx), %r8
	xorl	%r9d, %r9d
	movq	%r14, %rcx
	callq	aesni_cbc_encrypt
	movl	148(%rbx), %eax
	addl	$-1, %eax
	movq	88(%rbx), %rcx
	cltq
	movzbl	(%rcx,%rax), %esi
	movl	%esi, 108(%rbx)
	movl	28(%rbx), %eax
	movl	40(%rbx), %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, 36(%rbx)
	movl	36(%rbx), %eax
	movl	$255, %ecx
	subl	%eax, %ecx
	sarl	$24, %ecx
	orl	%eax, %ecx
	movl	%ecx, 36(%rbx)
	movzbl	36(%rbx), %edi
	movl	%edi, 36(%rbx)
	callq	constant_time_ge
	andl	%eax, 112(%rbx)
	movl	%eax, 232(%rbx)
	movl	108(%rbx), %esi
	movl	36(%rbx), %edx
	movl	%eax, %edi
	callq	constant_time_select
                                        # kill: def %eax killed %eax def %rax
	movl	%eax, 108(%rbx)
	movl	28(%rbx), %ecx
	movl	40(%rbx), %edx
	leal	(%rdx,%rax), %eax
	addl	$1, %eax
	subl	%eax, %ecx
	movl	%ecx, 32(%rbx)
	leaq	544(%r14), %r15
	movq	16(%rbp), %rax
	movb	33(%rbx), %cl
	movb	%cl, 542(%r14,%rax)
	movq	16(%rbp), %rax
	movb	32(%rbx), %cl
	movb	%cl, 543(%r14,%rax)
	leaq	436(%r14), %r12
	leaq	244(%r14), %rsi
	movq	%r12, %rdi
	callq	_structcopy_SHA_CTX
	movl	16(%rbp), %eax
	movl	%eax, 228(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r15, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r15, -16(%rax)
	movq	16(%rbp), %rdx
	movq	%r12, 128(%rbx)         # 8-byte Spill
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	_sha1_update
	movl	28(%rbx), %eax
	subl	40(%rbx), %eax
	movl	%eax, 28(%rbx)
	movl	$256, %ecx              # imm = 0x100
	addl	80(%rbx), %ecx
	cmpl	%ecx, %eax
	jb	.LBB8_8
# %bb.7:                                # %thenbranch117
	movl	28(%rbx), %eax
	movl	80(%rbx), %ecx
	leal	256(%rcx), %edx
	subl	%edx, %eax
	movl	%ecx, %edx
	negl	%edx
	andl	%eax, %edx
	movl	%edx, 104(%rbx)
	subl	528(%r14), %ecx
	addl	%edx, %ecx
	movl	%ecx, 104(%rbx)
	movl	%ecx, 224(%rbx)
	movslq	48(%rbx), %rax
	addq	88(%rbx), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movslq	48(%rbx), %rsi
	addq	88(%rbx), %rsi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rsi, -16(%rax)
	movl	104(%rbx), %edx
	movq	128(%rbx), %rdi         # 8-byte Reload
	callq	_sha1_update
	movl	104(%rbx), %eax
	addl	%eax, 48(%rbx)
	subl	%eax, 28(%rbx)
	subl	%eax, 32(%rbx)
.LBB8_8:                                # %branchmerge156
	movl	32(%rbx), %edi
	shll	$3, %edi
	addl	456(%r14), %edi
	movl	%edi, 84(%rbx)
	callq	bswap4
	movl	%eax, 84(%rbx)
	movq	%rsp, %r12
	addq	$-32, %r12
	andq	$-32, %r12
	movq	%r12, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r12)
	movl	$0, 16(%r12)
	movl	528(%r14), %eax
	movl	%eax, 56(%rbx)
	movl	$0, 76(%rbx)
	leaq	464(%r14), %rax
	movq	%rax, 152(%rbx)         # 8-byte Spill
	leaq	4(%r12), %r15
	leaq	8(%r12), %r13
	leaq	12(%r12), %rax
	movq	%rax, 160(%rbx)         # 8-byte Spill
	leaq	16(%r12), %rax
	movq	%rax, 168(%rbx)         # 8-byte Spill
	jmp	.LBB8_9
	.p2align	4, 0x90
.LBB8_12:                               # %branchmerge295
                                        #   in Loop: Header=BB8_9 Depth=1
	addl	$1, 76(%rbx)
.LBB8_9:                                # %loop_check
                                        # =>This Inner Loop Header: Depth=1
	movl	76(%rbx), %eax
	cmpl	28(%rbx), %eax
	jae	.LBB8_13
# %bb.10:                               # %loop_body
                                        #   in Loop: Header=BB8_9 Depth=1
	movl	76(%rbx), %eax
	movl	48(%rbx), %ecx
	addl	%eax, %ecx
	movq	88(%rbx), %rdx
	movslq	%ecx, %rcx
	movzbl	(%rdx,%rcx), %ecx
	movl	32(%rbx), %edx
	movl	%eax, %esi
	subl	%edx, %esi
	sarl	$24, %esi
	movl	%esi, 44(%rbx)
	andl	%esi, %ecx
	subl	%eax, %edx
	shrl	$24, %edx
	notl	%edx
	andnl	%edx, %esi, %eax
	andl	$128, %eax
	orl	%ecx, %eax
	movl	%eax, 192(%rbx)
	movslq	56(%rbx), %rax
	movzbl	192(%rbx), %ecx
	movb	%cl, 464(%r14,%rax)
	movl	56(%rbx), %eax
	addl	$1, %eax
	movl	%eax, 56(%rbx)
	cmpl	80(%rbx), %eax
	jne	.LBB8_12
# %bb.11:                               # %thenbranch204
                                        #   in Loop: Header=BB8_9 Depth=1
	movl	32(%rbx), %eax
	addl	$7, %eax
	subl	76(%rbx), %eax
	sarl	$31, %eax
	movl	%eax, 44(%rbx)
	movl	60(%rbx), %eax
	leal	-4(,%rax,4), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	cltq
	leaq	464(%r14,%rax), %rax
	movq	%rax, -16(%rcx)
	movl	60(%rbx), %eax
	leal	-4(,%rax,4), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	cltq
	leaq	(%r14,%rax), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	movq	%rdi, -16(%rcx)
	movl	84(%rbx), %esi
	andl	44(%rbx), %esi
	callq	pmac_oreq
	movl	$1, %edx
	movq	128(%rbx), %rdi         # 8-byte Reload
	movq	152(%rbx), %rsi         # 8-byte Reload
	callq	sha1_block_data_order
	movl	76(%rbx), %eax
	subl	32(%rbx), %eax
	addl	$-72, %eax
	sarl	$31, %eax
	andl	%eax, 44(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r12, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r12, -16(%rax)
	movl	436(%r14), %esi
	andl	44(%rbx), %esi
	movq	%r12, %rdi
	callq	pmac_oreq
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r15, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r15, -16(%rax)
	movl	440(%r14), %esi
	andl	44(%rbx), %esi
	movq	%r15, %rdi
	callq	pmac_oreq
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r13, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r13, -16(%rax)
	movl	444(%r14), %esi
	andl	44(%rbx), %esi
	movq	%r13, %rdi
	callq	pmac_oreq
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	160(%rbx), %rdi         # 8-byte Reload
	movq	%rdi, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	448(%r14), %esi
	andl	44(%rbx), %esi
	callq	pmac_oreq
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	168(%rbx), %rdi         # 8-byte Reload
	movq	%rdi, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	452(%r14), %esi
	andl	44(%rbx), %esi
	callq	pmac_oreq
	movl	$0, 56(%rbx)
	jmp	.LBB8_12
.LBB8_13:                               # %loop_end
	movl	28(%rbx), %eax
	movl	%eax, 72(%rbx)
	movl	56(%rbx), %eax
	movl	%eax, 100(%rbx)
	jmp	.LBB8_14
	.p2align	4, 0x90
.LBB8_15:                               # %loop_body300
                                        #   in Loop: Header=BB8_14 Depth=1
	movslq	100(%rbx), %rax
	movb	$0, 464(%r14,%rax)
	addl	$1, 72(%rbx)
	addl	$1, 100(%rbx)
.LBB8_14:                               # %loop_check299
                                        # =>This Inner Loop Header: Depth=1
	movl	100(%rbx), %eax
	cmpl	80(%rbx), %eax
	jb	.LBB8_15
# %bb.16:                               # %loop_end301
	movl	80(%rbx), %eax
	addl	$-8, %eax
	cmpl	%eax, 56(%rbx)
	jbe	.LBB8_18
# %bb.17:                               # %thenbranch318
	movl	32(%rbx), %eax
	addl	$8, %eax
	subl	72(%rbx), %eax
	sarl	$31, %eax
	movl	%eax, 52(%rbx)
	movl	60(%rbx), %eax
	leal	-4(,%rax,4), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	cltq
	leaq	464(%r14,%rax), %rax
	movq	%rax, -16(%rcx)
	movl	60(%rbx), %eax
	leal	-4(,%rax,4), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	cltq
	leaq	(%r14,%rax), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	movq	%rdi, -16(%rcx)
	movl	84(%rbx), %esi
	andl	52(%rbx), %esi
	callq	pmac_oreq
	movl	$1, %edx
	movq	128(%rbx), %rdi         # 8-byte Reload
	movq	152(%rbx), %rsi         # 8-byte Reload
	callq	sha1_block_data_order
	movl	72(%rbx), %eax
	subl	32(%rbx), %eax
	addl	$-72, %eax
	sarl	$31, %eax
	andl	%eax, 52(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r12, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r12, -16(%rax)
	movl	436(%r14), %esi
	andl	52(%rbx), %esi
	movq	%r12, %rdi
	callq	pmac_oreq
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r15, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r15, -16(%rax)
	movl	440(%r14), %esi
	andl	52(%rbx), %esi
	movq	%r15, %rdi
	callq	pmac_oreq
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r13, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r13, -16(%rax)
	movl	444(%r14), %esi
	andl	52(%rbx), %esi
	movq	%r13, %rdi
	callq	pmac_oreq
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	160(%rbx), %rdi         # 8-byte Reload
	movq	%rdi, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	448(%r14), %esi
	andl	52(%rbx), %esi
	callq	pmac_oreq
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	168(%rbx), %rdi         # 8-byte Reload
	movq	%rdi, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	452(%r14), %esi
	andl	52(%rbx), %esi
	callq	pmac_oreq
	movl	$64, %esi
	movq	152(%rbx), %rdi         # 8-byte Reload
	callq	_memzero
	addl	$64, 72(%rbx)
.LBB8_18:                               # %branchmerge416
	movl	60(%rbx), %eax
	leal	-4(,%rax,4), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	cltq
	leaq	464(%r14,%rax), %rax
	movq	%rax, -16(%rcx)
	movl	60(%rbx), %eax
	leal	-4(,%rax,4), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	cltq
	leaq	(%r14,%rax), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	movq	%rdi, -16(%rcx)
	movl	84(%rbx), %esi
	callq	_store32_le
	movl	$1, %edx
	movq	128(%rbx), %rdi         # 8-byte Reload
	movq	152(%rbx), %rsi         # 8-byte Reload
	callq	sha1_block_data_order
	movl	72(%rbx), %eax
	subl	32(%rbx), %eax
	addl	$-72, %eax
	sarl	$31, %eax
	movl	%eax, 68(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r12, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r12, -16(%rax)
	movl	436(%r14), %esi
	andl	68(%rbx), %esi
	movq	%r12, %rdi
	callq	pmac_oreq
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r15, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r15, -16(%rax)
	movl	440(%r14), %esi
	andl	68(%rbx), %esi
	movq	%r15, %rdi
	callq	pmac_oreq
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r13, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r13, -16(%rax)
	movl	444(%r14), %esi
	andl	68(%rbx), %esi
	movq	%r13, %rdi
	callq	pmac_oreq
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	160(%rbx), %rdi         # 8-byte Reload
	movq	%rdi, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	448(%r14), %esi
	andl	68(%rbx), %esi
	callq	pmac_oreq
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	168(%rbx), %rdi         # 8-byte Reload
	movq	%rdi, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	452(%r14), %esi
	andl	68(%rbx), %esi
	callq	pmac_oreq
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r12, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r12, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r12, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r12, -16(%rax)
	movq	%r12, %rdi
	callq	_load32_le
	movl	%eax, %edi
	callq	bswap4
	movq	%r12, %rdi
	movl	%eax, %esi
	callq	_store32_le
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r15, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r15, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r15, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r15, -16(%rax)
	movq	%r15, %rdi
	callq	_load32_le
	movl	%eax, %edi
	callq	bswap4
	movq	%r15, %rdi
	movl	%eax, %esi
	callq	_store32_le
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r13, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r13, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r13, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r13, -16(%rax)
	movq	%r13, %rdi
	callq	_load32_le
	movl	%eax, %edi
	callq	bswap4
	movq	%r13, %rdi
	movl	%eax, %esi
	callq	_store32_le
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	160(%rbx), %r15         # 8-byte Reload
	movq	%r15, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r15, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r15, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r15, -16(%rax)
	movq	%r15, %rdi
	callq	_load32_le
	movl	%eax, %edi
	callq	bswap4
	movq	%r15, %rdi
	movl	%eax, %esi
	callq	_store32_le
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	168(%rbx), %r15         # 8-byte Reload
	movq	%r15, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r15, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r15, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r15, -16(%rax)
	movq	%r15, %rdi
	callq	_load32_le
	movl	%eax, %edi
	callq	bswap4
	movq	%r15, %rdi
	movl	%eax, %esi
	callq	_store32_le
	movl	40(%rbx), %eax
	addl	%eax, 28(%rbx)
	addq	$340, %r14              # imm = 0x154
	movq	128(%rbx), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_structcopy_SHA_CTX
	movl	$20, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	_sha1_update
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	SHA1_Final
	movl	32(%rbx), %eax
	movl	48(%rbx), %ecx
	addl	%eax, %ecx
	movl	%ecx, 220(%rbx)
	movl	28(%rbx), %edx
	subl	%eax, %edx
	movl	%edx, 216(%rbx)
	movl	148(%rbx), %eax
	addl	$-1, %eax
	movl	36(%rbx), %edx
	subl	%edx, %eax
	movl	40(%rbx), %esi
	subl	%esi, %eax
	movl	%eax, 188(%rbx)
	subl	%eax, %ecx
	movl	%ecx, 184(%rbx)
	addl	%esi, %edx
	movl	%edx, 36(%rbx)
	movl	$0, 64(%rbx)
	movl	$0, 140(%rbx)
	movl	$0, 96(%rbx)
	jmp	.LBB8_19
	.p2align	4, 0x90
.LBB8_20:                               # %loop_body586
                                        #   in Loop: Header=BB8_19 Depth=1
	movl	96(%rbx), %eax
	movl	188(%rbx), %ecx
	addl	%eax, %ecx
	movq	88(%rbx), %rdx
	movslq	%ecx, %rcx
	movzbl	(%rdx,%rcx), %ecx
	movl	%ecx, 212(%rbx)
	movl	184(%rbx), %edx
	movl	%eax, %esi
	subl	%edx, %esi
	subl	40(%rbx), %esi
	addl	$-1, %edx
	subl	%eax, %edx
	andl	%esi, %edx
	sarl	$31, %esi
	movl	108(%rbx), %eax
	xorl	%ecx, %eax
	andnl	%eax, %esi, %eax
	orl	64(%rbx), %eax
	movl	%eax, 64(%rbx)
	sarl	$31, %edx
	movl	%edx, 208(%rbx)
	movslq	140(%rbx), %rsi
	movzbl	(%r12,%rsi), %esi
	xorl	%ecx, %esi
	andl	%edx, %esi
	orl	%eax, %esi
	movl	%esi, 64(%rbx)
	subl	%edx, 140(%rbx)
	addl	$1, 96(%rbx)
.LBB8_19:                               # %loop_check585
                                        # =>This Inner Loop Header: Depth=1
	movl	96(%rbx), %eax
	cmpl	36(%rbx), %eax
	jb	.LBB8_20
# %bb.21:                               # %loop_end587
	movl	40(%rbx), %eax
	subl	%eax, 36(%rbx)
	xorl	%eax, %eax
	subl	64(%rbx), %eax
	sarl	$31, %eax
	movl	%eax, 64(%rbx)
	andnl	112(%rbx), %eax, %eax
	movl	%eax, 112(%rbx)
	movl	%eax, 120(%rbx)
	jmp	.LBB8_3
.LBB8_2:                                # %thenbranch18
	movl	$0, 120(%rbx)
	xorl	%eax, %eax
.LBB8_3:                                # %thenbranch18
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	_aesni_cbc_hmac_sha1_cipher, .Lfunc_end8-_aesni_cbc_hmac_sha1_cipher
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _arrcopy
	.type	_arrcopy,@function
_arrcopy:                               # @_arrcopy
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	memcpy
	popq	%rax
	retq
.Lfunc_end9:
	.size	_arrcopy, .Lfunc_end9-_arrcopy
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _structcopy_SHA_CTX
	.type	_structcopy_SHA_CTX,@function
_structcopy_SHA_CTX:                    # @_structcopy_SHA_CTX
	.cfi_startproc
# %bb.0:                                # %entry
	vmovups	(%rsi), %ymm0
	vmovups	32(%rsi), %ymm1
	vmovups	64(%rsi), %ymm2
	vmovups	%ymm2, 64(%rdi)
	vmovups	%ymm1, 32(%rdi)
	vmovups	%ymm0, (%rdi)
	vzeroupper
	retq
.Lfunc_end10:
	.size	_structcopy_SHA_CTX, .Lfunc_end10-_structcopy_SHA_CTX
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _memzero
	.type	_memzero,@function
_memzero:                               # @_memzero
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	xorl	%esi, %esi
	movq	%rax, %rdx
	callq	memset
	popq	%rax
	retq
.Lfunc_end11:
	.size	_memzero, .Lfunc_end11-_memzero
	.cfi_endproc
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
