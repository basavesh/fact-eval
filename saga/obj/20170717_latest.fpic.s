	.text
	.file	"Module"
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
.Lfunc_end0:
	.size	bswap4, .Lfunc_end0-bswap4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function load16_be
	.type	load16_be,@function
load16_be:                              # @load16_be
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movw	$0, -16(%rsp)
	movb	$1, -13(%rsp)
	movzbl	(%rdi), %eax
	shll	$8, %eax
	movw	%ax, -10(%rsp)
	movzbl	1(%rdi), %ecx
	movw	%cx, -12(%rsp)
	orl	%ecx, %eax
	movw	%ax, -16(%rsp)
                                        # kill: def %ax killed %ax killed %eax
	retq
.Lfunc_end1:
	.size	load16_be, .Lfunc_end1-load16_be
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function store16_be
	.type	store16_be,@function
store16_be:                             # @store16_be
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movw	%si, -12(%rsp)
	movb	$1, -9(%rsp)
	movb	-11(%rsp), %al
	movb	%al, (%rdi)
	movq	-8(%rsp), %rax
	movb	-12(%rsp), %cl
	movb	%cl, 1(%rax)
	retq
.Lfunc_end2:
	.size	store16_be, .Lfunc_end2-store16_be
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function cond_store
	.type	cond_store,@function
cond_store:                             # @cond_store
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 24(%rsp)
	movl	%esi, 20(%rsp)
	andl	$1, %edx
	movb	%dl, 11(%rsp)
	movb	$1, 10(%rsp)
	callq	_load32_le
	movl	%eax, 16(%rsp)
	movl	$0, 12(%rsp)
	movb	11(%rsp), %al
	movb	%al, 9(%rsp)
	andb	10(%rsp), %al
	movl	20(%rsp), %esi
	movzbl	%al, %edi
	xorl	%edx, %edx
	callq	select.cmov.sel.i32
	movl	%eax, 12(%rsp)
	movb	9(%rsp), %cl
	xorb	$1, %cl
	movl	%ecx, %edx
	andb	$1, %dl
	movb	%dl, 9(%rsp)
	andb	10(%rsp), %cl
	movl	16(%rsp), %esi
	movzbl	%cl, %edi
	movl	%eax, %edx
	callq	select.cmov.sel.i32
	movl	%eax, 12(%rsp)
	movl	%eax, 36(%rsp)
	movq	24(%rsp), %rdi
	movl	%eax, %esi
	callq	_store32_le
	addq	$40, %rsp
	retq
.Lfunc_end3:
	.size	cond_store, .Lfunc_end3-cond_store
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _load32_le
	.type	_load32_le,@function
_load32_le:                             # @_load32_le
	.cfi_startproc
# %bb.0:                                # %entry
	movl	(%rdi), %eax
	retq
.Lfunc_end4:
	.size	_load32_le, .Lfunc_end4-_load32_le
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function select.cmov.sel.i32
	.type	select.cmov.sel.i32,@function
select.cmov.sel.i32:                    # @select.cmov.sel.i32
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %dil
	cmovel	%edx, %esi
	movl	%esi, %eax
	retq
.Lfunc_end5:
	.size	select.cmov.sel.i32, .Lfunc_end5-select.cmov.sel.i32
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _store32_le
	.type	_store32_le,@function
_store32_le:                            # @_store32_le
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, (%rdi)
	retq
.Lfunc_end6:
	.size	_store32_le, .Lfunc_end6-_store32_le
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
	movq	%rdi, 216(%rbx)
	movq	%rdx, 96(%rbx)
	movl	%ecx, 164(%rbx)
	movq	%r8, 192(%rbx)
	movl	%r9d, 212(%rbx)
	movl	$0, 124(%rbx)
	movb	$1, 29(%rbx)
	movq	$-1, 248(%rbx)
	movl	$16, 160(%rbx)
	movl	$20, 60(%rbx)
	movl	$770, 244(%rbx)         # imm = 0x302
	movl	$16, 80(%rbx)
	movl	$64, 88(%rbx)
	movl	$0, 120(%rbx)
	movl	%ecx, 40(%rbx)
	movl	$0, 64(%rbx)
	movl	$1, 68(%rbx)
	movzwl	24(%rbp), %eax
	cmpl	$770, %eax              # imm = 0x302
	jae	.LBB7_1
# %bb.4:                                # %elsebranch29
	movl	60(%rbx), %eax
	addl	$1, %eax
	cmpl	%eax, 40(%rbx)
	jae	.LBB7_6
	jmp	.LBB7_2
.LBB7_1:                                # %thenbranch
	movl	160(%rbx), %eax
	movl	60(%rbx), %ecx
	leal	(%rax,%rcx), %eax
	addl	$1, %eax
	cmpl	%eax, 40(%rbx)
	jb	.LBB7_2
# %bb.5:                                # %branchmerge
	movq	216(%rbx), %rdi
	movq	192(%rbx), %rdx
	movl	212(%rbx), %ecx
	movl	$16, %esi
	callq	_arrcopy
	movl	160(%rbx), %eax
	addl	%eax, 120(%rbx)
	addl	%eax, 64(%rbx)
	subl	%eax, 40(%rbx)
.LBB7_6:                                # %branchmerge39
	movl	40(%rbx), %eax
	movl	%eax, 240(%rbx)
	movl	%eax, 236(%rbx)
	movslq	120(%rbx), %rax
	addq	192(%rbx), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movslq	120(%rbx), %rdi
	addq	192(%rbx), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movslq	64(%rbx), %rax
	addq	96(%rbx), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movslq	64(%rbx), %rsi
	addq	96(%rbx), %rsi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rsi, -16(%rax)
	movl	40(%rbx), %edx
	movq	216(%rbx), %r8
	xorl	%r9d, %r9d
	movq	%r14, %rcx
	callq	aesni_cbc_encrypt@PLT
	movl	164(%rbx), %eax
	addl	$-1, %eax
	movq	96(%rbx), %rcx
	cltq
	movzbl	(%rcx,%rax), %edx
	movl	40(%rbx), %eax
	movl	60(%rbx), %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, 208(%rbx)
	movl	208(%rbx), %eax
	cmpl	$255, %eax
	movl	$255, %esi
	cmovbel	%eax, %esi
	movl	%edx, 116(%rbx)
	movl	%esi, 156(%rbx)
	cmpl	%esi, %edx
	seta	%al
	seta	39(%rbx)
	andb	29(%rbx), %al
	movzbl	%al, %edi
	callq	select.cmov.sel.i32
	movl	%eax, 116(%rbx)
	movb	29(%rbx), %al
	andb	39(%rbx), %al
	movl	68(%rbx), %edx
	movzbl	%al, %edi
	xorl	%esi, %esi
	callq	select.cmov.sel.i32
	movl	%eax, 68(%rbx)
	movb	39(%rbx), %al
	notb	%al
	andb	$1, %al
	movb	%al, 39(%rbx)
	movl	40(%rbx), %eax
	movl	60(%rbx), %ecx
	movl	116(%rbx), %edx
	leal	(%rcx,%rdx), %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, 44(%rbx)
	movq	16(%rbp), %rax
	leaq	544(%r14), %r15
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	leaq	542(%r14,%rax), %rax
	movq	%rax, -16(%rcx)
	movq	16(%rbp), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	leaq	(%r14,%rax), %rdi
	addq	$542, %rdi              # imm = 0x21E
	movq	%rdi, -16(%rcx)
	movl	44(%rbx), %esi
	callq	store16_be
	leaq	436(%r14), %r12
	leaq	244(%r14), %rsi
	movq	%r12, %rdi
	callq	_structcopy_SHA_CTX
	movl	16(%rbp), %eax
	movl	%eax, 232(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r15, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r15, -16(%rax)
	movq	16(%rbp), %rdx
	movq	%r12, 136(%rbx)         # 8-byte Spill
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	_sha1_update@PLT
	movl	40(%rbx), %eax
	subl	60(%rbx), %eax
	movl	%eax, 40(%rbx)
	movl	$256, %ecx              # imm = 0x100
	addl	88(%rbx), %ecx
	cmpl	%ecx, %eax
	jb	.LBB7_8
# %bb.7:                                # %thenbranch122
	movl	40(%rbx), %eax
	movl	88(%rbx), %ecx
	leal	256(%rcx), %edx
	subl	%edx, %eax
	movl	%ecx, %edx
	negl	%edx
	andl	%eax, %edx
	addl	%ecx, %edx
	subl	528(%r14), %edx
	movl	%edx, 152(%rbx)
	movl	%edx, 228(%rbx)
	movslq	64(%rbx), %rax
	addq	96(%rbx), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movslq	64(%rbx), %rsi
	addq	96(%rbx), %rsi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rsi, -16(%rax)
	movl	152(%rbx), %edx
	movq	136(%rbx), %rdi         # 8-byte Reload
	callq	_sha1_update@PLT
	movl	152(%rbx), %eax
	addl	%eax, 64(%rbx)
	subl	%eax, 40(%rbx)
	subl	%eax, 44(%rbx)
.LBB7_8:                                # %branchmerge160
	movl	44(%rbx), %edi
	shll	$3, %edi
	addl	456(%r14), %edi
	callq	bswap4
	movl	%eax, 112(%rbx)
	movq	%rsp, %r15
	addq	$-32, %r15
	andq	$-32, %r15
	movq	%r15, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%r15)
	movl	$0, 16(%r15)
	movl	528(%r14), %eax
	movl	%eax, 76(%rbx)
	movl	$0, 72(%rbx)
	leaq	464(%r14), %rax
	movq	%rax, 128(%rbx)         # 8-byte Spill
	leaq	4(%r15), %rax
	movq	%rax, 176(%rbx)         # 8-byte Spill
	leaq	8(%r15), %rax
	movq	%rax, 184(%rbx)         # 8-byte Spill
	leaq	12(%r15), %rax
	movq	%rax, 168(%rbx)         # 8-byte Spill
	jmp	.LBB7_9
	.p2align	4, 0x90
.LBB7_12:                               # %branchmerge330
                                        #   in Loop: Header=BB7_9 Depth=1
	addl	$1, 72(%rbx)
.LBB7_9:                                # %loop_check
                                        # =>This Inner Loop Header: Depth=1
	movl	72(%rbx), %eax
	cmpl	40(%rbx), %eax
	jae	.LBB7_13
# %bb.10:                               # %loop_body
                                        #   in Loop: Header=BB7_9 Depth=1
	movb	$0, 37(%rbx)
	movl	72(%rbx), %eax
	cmpl	44(%rbx), %eax
	setb	38(%rbx)
	setb	%cl
	andb	29(%rbx), %cl
	movslq	76(%rbx), %r12
	addl	64(%rbx), %eax
	movq	96(%rbx), %rdx
	cltq
	movzbl	(%rdx,%rax), %esi
	movzbl	%cl, %edi
	movzbl	37(%rbx), %edx
	callq	select.cmov.asm.i8
	movb	%al, 37(%rbx)
	movzbl	38(%rbx), %r13d
	xorb	$1, %r13b
	movl	%r13d, %eax
	andb	$1, %al
	movb	%al, 38(%rbx)
	andb	29(%rbx), %r13b
	movl	72(%rbx), %eax
	cmpl	44(%rbx), %eax
	movw	$0, 50(%rbx)
	sete	59(%rbx)
	sete	%al
	andb	%r13b, %al
	movzbl	%al, %edi
	movzwl	50(%rbx), %edx
	movl	$128, %esi
	callq	select.cmov.asm.i16
	movw	%ax, 50(%rbx)
	movzbl	59(%rbx), %eax
	xorb	$1, %al
	movzbl	29(%rbx), %ecx
	andb	38(%rbx), %cl
	andb	%al, %cl
	andb	$1, %al
	movb	%al, 59(%rbx)
	movzbl	%cl, %edi
	movzwl	50(%rbx), %edx
	xorl	%esi, %esi
	callq	select.cmov.asm.i16
	movw	%ax, 50(%rbx)
	movzbl	%r13b, %edi
	movzbl	37(%rbx), %edx
	movzbl	50(%rbx), %esi
	callq	select.cmov.asm.i8
	movb	%al, 37(%rbx)
	movb	%al, 464(%r14,%r12)
	movl	76(%rbx), %eax
	addl	$1, %eax
	movl	%eax, 76(%rbx)
	cmpl	88(%rbx), %eax
	jne	.LBB7_12
# %bb.11:                               # %thenbranch229
                                        #   in Loop: Header=BB7_9 Depth=1
	movl	44(%rbx), %eax
	addl	$7, %eax
	cmpl	72(%rbx), %eax
	setb	58(%rbx)
	movl	80(%rbx), %eax
	leal	-4(,%rax,4), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	cltq
	leaq	464(%r14,%rax), %rax
	movq	%rax, -16(%rcx)
	movl	80(%rbx), %eax
	leal	-4(,%rax,4), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	cltq
	leaq	464(%r14,%rax), %rdi
	movq	%rdi, -16(%rcx)
	movl	112(%rbx), %esi
	movzbl	58(%rbx), %edx
	callq	cond_store
	movl	$1, %edx
	movq	136(%rbx), %rdi         # 8-byte Reload
	movq	128(%rbx), %rsi         # 8-byte Reload
	callq	sha1_block_data_order@PLT
	movb	$0, 34(%rbx)
	movzbl	58(%rbx), %eax
	movb	%al, 57(%rbx)
	andb	29(%rbx), %al
	movl	44(%rbx), %ecx
	addl	$72, %ecx
	xorl	%esi, %esi
	cmpl	%ecx, 72(%rbx)
	setb	%sil
	movzbl	%al, %edi
	movzbl	34(%rbx), %edx
	callq	select.cmov.asm.i1
	andb	$1, %al
	movb	%al, 34(%rbx)
	movzbl	57(%rbx), %eax
	xorb	$1, %al
	movl	%eax, %ecx
	andb	$1, %cl
	movb	%cl, 57(%rbx)
	andb	29(%rbx), %al
	movzbl	%al, %edi
	movzbl	34(%rbx), %edx
	xorl	%esi, %esi
	callq	select.cmov.asm.i1
	andb	$1, %al
	movb	%al, 34(%rbx)
	movzbl	34(%rbx), %eax
	movb	%al, 33(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r15, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r15, -16(%rax)
	movl	436(%r14), %esi
	movzbl	33(%rbx), %edx
	movq	%r15, %rdi
	callq	cond_store
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	176(%rbx), %rdi         # 8-byte Reload
	movq	%rdi, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	440(%r14), %esi
	movzbl	33(%rbx), %edx
	callq	cond_store
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	184(%rbx), %rdi         # 8-byte Reload
	movq	%rdi, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	444(%r14), %esi
	movzbl	33(%rbx), %edx
	callq	cond_store
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	168(%rbx), %rdi         # 8-byte Reload
	movq	%rdi, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	448(%r14), %esi
	movzbl	33(%rbx), %edx
	callq	cond_store
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	leaq	16(%r15), %rdi
	movq	%rdi, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	452(%r14), %esi
	movzbl	33(%rbx), %edx
	callq	cond_store
	movl	$0, 76(%rbx)
	jmp	.LBB7_12
.LBB7_13:                               # %loop_end
	movl	40(%rbx), %eax
	movl	%eax, 84(%rbx)
	movl	76(%rbx), %eax
	movl	%eax, 108(%rbx)
	jmp	.LBB7_14
	.p2align	4, 0x90
.LBB7_15:                               # %loop_body335
                                        #   in Loop: Header=BB7_14 Depth=1
	movslq	108(%rbx), %rax
	movb	$0, 464(%r14,%rax)
	addl	$1, 84(%rbx)
	addl	$1, 108(%rbx)
.LBB7_14:                               # %loop_check334
                                        # =>This Inner Loop Header: Depth=1
	movl	108(%rbx), %eax
	cmpl	88(%rbx), %eax
	jb	.LBB7_15
# %bb.16:                               # %loop_end336
	movl	88(%rbx), %eax
	addl	$-8, %eax
	cmpl	%eax, 76(%rbx)
	jbe	.LBB7_18
# %bb.17:                               # %thenbranch354
	movl	44(%rbx), %eax
	addl	$8, %eax
	cmpl	84(%rbx), %eax
	setb	56(%rbx)
	movl	80(%rbx), %eax
	leal	-4(,%rax,4), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	cltq
	leaq	464(%r14,%rax), %rax
	movq	%rax, -16(%rcx)
	movl	80(%rbx), %eax
	leal	-4(,%rax,4), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	cltq
	leaq	464(%r14,%rax), %rdi
	movq	%rdi, -16(%rcx)
	movl	112(%rbx), %esi
	movzbl	56(%rbx), %edx
	callq	cond_store
	movl	$1, %edx
	movq	136(%rbx), %rdi         # 8-byte Reload
	movq	128(%rbx), %r12         # 8-byte Reload
	movq	%r12, %rsi
	callq	sha1_block_data_order@PLT
	movb	$0, 32(%rbx)
	movb	56(%rbx), %al
	movb	%al, 55(%rbx)
	andb	29(%rbx), %al
	movl	44(%rbx), %ecx
	addl	$73, %ecx
	xorl	%esi, %esi
	cmpl	%ecx, 84(%rbx)
	setb	%sil
	movzbl	%al, %edi
	movzbl	32(%rbx), %edx
	callq	select.cmov.asm.i1
	andb	$1, %al
	movb	%al, 32(%rbx)
	movb	55(%rbx), %al
	xorb	$1, %al
	movl	%eax, %ecx
	andb	$1, %cl
	movb	%cl, 55(%rbx)
	andb	29(%rbx), %al
	movzbl	%al, %edi
	movzbl	32(%rbx), %edx
	xorl	%esi, %esi
	callq	select.cmov.asm.i1
	andb	$1, %al
	movb	%al, 32(%rbx)
	movb	32(%rbx), %al
	movb	%al, 31(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r15, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r15, -16(%rax)
	movl	436(%r14), %esi
	movzbl	31(%rbx), %edx
	movq	%r15, %rdi
	callq	cond_store
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	176(%rbx), %rdi         # 8-byte Reload
	movq	%rdi, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	440(%r14), %esi
	movzbl	31(%rbx), %edx
	callq	cond_store
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	184(%rbx), %rdi         # 8-byte Reload
	movq	%rdi, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	444(%r14), %esi
	movzbl	31(%rbx), %edx
	callq	cond_store
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	168(%rbx), %rdi         # 8-byte Reload
	movq	%rdi, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	448(%r14), %esi
	movzbl	31(%rbx), %edx
	callq	cond_store
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	leaq	16(%r15), %rdi
	movq	%rdi, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	452(%r14), %esi
	movzbl	31(%rbx), %edx
	callq	cond_store
	movl	$64, %esi
	movq	%r12, %rdi
	callq	_memzero
	addl	$64, 84(%rbx)
.LBB7_18:                               # %branchmerge462
	movl	80(%rbx), %eax
	leal	-4(,%rax,4), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	cltq
	leaq	464(%r14,%rax), %rax
	movq	%rax, -16(%rcx)
	movl	80(%rbx), %eax
	leal	-4(,%rax,4), %eax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	cltq
	leaq	(%r14,%rax), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	movq	%rdi, -16(%rcx)
	movl	112(%rbx), %esi
	callq	_store32_le
	movl	$1, %edx
	movq	136(%rbx), %rdi         # 8-byte Reload
	movq	128(%rbx), %rsi         # 8-byte Reload
	callq	sha1_block_data_order@PLT
	movl	44(%rbx), %eax
	addl	$73, %eax
	cmpl	%eax, 84(%rbx)
	setb	30(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r15, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r15, -16(%rax)
	movl	436(%r14), %esi
	movzbl	30(%rbx), %edx
	movq	%r15, %rdi
	callq	cond_store
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	176(%rbx), %r13         # 8-byte Reload
	movq	%r13, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r13, -16(%rax)
	movl	440(%r14), %esi
	movzbl	30(%rbx), %edx
	movq	%r13, %rdi
	callq	cond_store
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	184(%rbx), %r12         # 8-byte Reload
	movq	%r12, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r12, -16(%rax)
	movl	444(%r14), %esi
	movzbl	30(%rbx), %edx
	movq	%r12, %rdi
	callq	cond_store
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	168(%rbx), %rdi         # 8-byte Reload
	movq	%rdi, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	448(%r14), %esi
	movzbl	30(%rbx), %edx
	callq	cond_store
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	leaq	16(%r15), %rdi
	movq	%rdi, 128(%rbx)         # 8-byte Spill
	movq	%rdi, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	452(%r14), %esi
	movzbl	30(%rbx), %edx
	callq	cond_store
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
	movq	168(%rbx), %r12         # 8-byte Reload
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
	movq	128(%rbx), %r12         # 8-byte Reload
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
	movl	60(%rbx), %eax
	addl	%eax, 40(%rbx)
	addq	$340, %r14              # imm = 0x154
	movq	136(%rbx), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	_structcopy_SHA_CTX
	movl	$20, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	_sha1_update@PLT
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	SHA1_Final@PLT
	movl	64(%rbx), %eax
	addl	44(%rbx), %eax
	movl	%eax, 148(%rbx)
	movl	164(%rbx), %eax
	addl	$-1, %eax
	subl	156(%rbx), %eax
	subl	60(%rbx), %eax
	movl	%eax, 144(%rbx)
	movl	$0, 104(%rbx)
	movl	$0, 92(%rbx)
	jmp	.LBB7_19
	.p2align	4, 0x90
.LBB7_20:                               # %loop_body622
                                        #   in Loop: Header=BB7_19 Depth=1
	movl	144(%rbx), %eax
	addl	92(%rbx), %eax
	movq	96(%rbx), %rcx
	cltq
	movzbl	(%rcx,%rax), %ecx
	movl	%ecx, 204(%rbx)
	movl	148(%rbx), %edx
	addl	60(%rbx), %edx
	cmpl	%edx, %eax
	setae	36(%rbx)
	setae	%al
	cmpl	116(%rbx), %ecx
	setne	54(%rbx)
	setne	%cl
	andb	29(%rbx), %al
	andb	%cl, %al
	movl	68(%rbx), %edx
	movzbl	%al, %edi
	xorl	%esi, %esi
	callq	select.cmov.sel.i32
	movl	%eax, 68(%rbx)
	movzbl	54(%rbx), %eax
	notb	%al
	andb	$1, %al
	movb	%al, 54(%rbx)
	movzbl	36(%rbx), %eax
	notb	%al
	andb	$1, %al
	movl	144(%rbx), %ecx
	addl	92(%rbx), %ecx
	cmpl	148(%rbx), %ecx
	setae	35(%rbx)
	movb	%al, 36(%rbx)
	movl	204(%rbx), %r14d
	movl	104(%rbx), %edi
	callq	fact.declassify.i32
	cltq
	movzbl	(%r15,%rax), %eax
	cmpl	%eax, %r14d
	setne	%al
	setne	53(%rbx)
	movzbl	36(%rbx), %ecx
	andb	35(%rbx), %cl
	andb	29(%rbx), %cl
	andb	%al, %cl
	movl	68(%rbx), %edx
	movzbl	%cl, %edi
	xorl	%esi, %esi
	callq	select.cmov.sel.i32
	movl	%eax, 68(%rbx)
	movzbl	53(%rbx), %eax
	notb	%al
	andb	$1, %al
	movb	%al, 53(%rbx)
	movzbl	36(%rbx), %eax
	andb	35(%rbx), %al
	andb	29(%rbx), %al
	movl	104(%rbx), %edx
	leal	1(%rdx), %esi
	movzbl	%al, %edi
                                        # kill: def %edx killed %edx killed %rdx
	callq	select.cmov.sel.i32
	movl	%eax, 104(%rbx)
	movzbl	35(%rbx), %eax
	notb	%al
	andb	$1, %al
	movb	%al, 35(%rbx)
	addl	$1, 92(%rbx)
.LBB7_19:                               # %loop_check621
                                        # =>This Inner Loop Header: Depth=1
	movl	156(%rbx), %eax
	addl	60(%rbx), %eax
	cmpl	%eax, 92(%rbx)
	jb	.LBB7_20
# %bb.21:                               # %loop_end623
	movl	68(%rbx), %eax
	movl	%eax, 124(%rbx)
	jmp	.LBB7_3
.LBB7_2:                                # %thenbranch18
	movl	$0, 124(%rbx)
	xorl	%eax, %eax
.LBB7_3:                                # %thenbranch18
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	_aesni_cbc_hmac_sha1_cipher, .Lfunc_end7-_aesni_cbc_hmac_sha1_cipher
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
	callq	memcpy@PLT
	popq	%rax
	retq
.Lfunc_end8:
	.size	_arrcopy, .Lfunc_end8-_arrcopy
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
.Lfunc_end9:
	.size	_structcopy_SHA_CTX, .Lfunc_end9-_structcopy_SHA_CTX
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function select.cmov.asm.i8
	.type	select.cmov.asm.i8,@function
select.cmov.asm.i8:                     # @select.cmov.asm.i8
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	%sil, %ecx
	movzbl	%dl, %edx
	#APP
	testb	%dil, %dil
	movl	%edx, %eax
	cmovnel	%ecx, %eax
	#NO_APP
                                        # kill: def %al killed %al killed %eax
	retq
.Lfunc_end10:
	.size	select.cmov.asm.i8, .Lfunc_end10-select.cmov.asm.i8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function select.cmov.asm.i16
	.type	select.cmov.asm.i16,@function
select.cmov.asm.i16:                    # @select.cmov.asm.i16
	.cfi_startproc
# %bb.0:                                # %entry
	movzwl	%si, %ecx
	movzwl	%dx, %edx
	#APP
	testb	%dil, %dil
	movl	%edx, %eax
	cmovnel	%ecx, %eax
	#NO_APP
                                        # kill: def %ax killed %ax killed %eax
	retq
.Lfunc_end11:
	.size	select.cmov.asm.i16, .Lfunc_end11-select.cmov.asm.i16
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function select.cmov.asm.i1
	.type	select.cmov.asm.i1,@function
select.cmov.asm.i1:                     # @select.cmov.asm.i1
	.cfi_startproc
# %bb.0:                                # %entry
	andl	$1, %esi
	andl	$1, %edx
	#APP
	testb	%dil, %dil
	movl	%edx, %eax
	cmovnel	%esi, %eax
	#NO_APP
                                        # kill: def %al killed %al killed %eax
	retq
.Lfunc_end12:
	.size	select.cmov.asm.i1, .Lfunc_end12-select.cmov.asm.i1
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
	callq	memset@PLT
	popq	%rax
	retq
.Lfunc_end13:
	.size	_memzero, .Lfunc_end13-_memzero
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fact.declassify.i32
	.type	fact.declassify.i32,@function
fact.declassify.i32:                    # @fact.declassify.i32
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%edi, %eax
	retq
.Lfunc_end14:
	.size	fact.declassify.i32, .Lfunc_end14-fact.declassify.i32
	.cfi_endproc
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
