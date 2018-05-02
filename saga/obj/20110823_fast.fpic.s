	.text
	.file	"Module"
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
.Lfunc_end0:
	.size	load16_be, .Lfunc_end0-load16_be
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
.Lfunc_end1:
	.size	store16_be, .Lfunc_end1-store16_be
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function store32_be
	.type	store32_be,@function
store32_be:                             # @store32_be
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -8(%rsp)
	movl	%esi, -16(%rsp)
	movb	$1, -9(%rsp)
	movb	-13(%rsp), %al
	movb	%al, (%rdi)
	movq	-8(%rsp), %rax
	movb	-14(%rsp), %cl
	movb	%cl, 1(%rax)
	movq	-8(%rsp), %rax
	movb	-15(%rsp), %cl
	movb	%cl, 2(%rax)
	movq	-8(%rsp), %rax
	movb	-16(%rsp), %cl
	movb	%cl, 3(%rax)
	retq
.Lfunc_end2:
	.size	store32_be, .Lfunc_end2-store32_be
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function SHA1_Update_public
	.type	SHA1_Update_public,@function
SHA1_Update_public:                     # @SHA1_Update_public
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	%rsi, -48(%rbp)
	movl	%edx, -36(%rbp)
	movb	$1, -37(%rbp)
	movl	$16, -80(%rbp)
	movl	$64, -20(%rbp)
	movl	-36(%rbp), %eax
	shlq	$3, %rax
	movq	%rax, -88(%rbp)
	addq	20(%rbx), %rax
	movq	%rax, -72(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, 24(%rbx)
	movl	-72(%rbp), %eax
	movl	%eax, 20(%rbx)
	movl	$0, -16(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	92(%rbx), %ecx
	movl	%ecx, -24(%rbp)
	testl	%ecx, %ecx
	setne	%cl
	testl	%eax, %eax
	setne	%al
	andb	%cl, %al
	cmpb	$1, %al
	jne	.LBB3_5
# %bb.1:                                # %thenbranch
	movl	-20(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	-36(%rbp), %ecx
	cmpl	%eax, %ecx
	cmovbl	%ecx, %eax
	movl	%eax, -32(%rbp)
	movl	%eax, -64(%rbp)
	movl	%eax, -60(%rbp)
	movslq	-24(%rbp), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	leaq	28(%rbx,%rax), %rax
	movq	%rax, -16(%rcx)
	movslq	-24(%rbp), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	leaq	28(%rbx,%rax), %rdi
	movq	%rdi, -16(%rcx)
	movl	-64(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	-48(%rbp), %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdx, -16(%rax)
	movl	-60(%rbp), %ecx
	callq	_arrcopy
	movl	-32(%rbp), %eax
	addl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	je	.LBB3_2
# %bb.3:                                # %elsebranch
	movl	-32(%rbp), %eax
	addl	%eax, 92(%rbx)
	jmp	.LBB3_4
.LBB3_2:                                # %thenbranch44
	leaq	28(%rbx), %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	sha1_block_data_order@PLT
	movl	$0, 92(%rbx)
.LBB3_4:                                # %branchmerge
	movl	-32(%rbp), %eax
	addl	%eax, -16(%rbp)
	subl	%eax, -12(%rbp)
.LBB3_5:                                # %branchmerge60
	movl	-12(%rbp), %eax
	xorl	%edx, %edx
	divl	-20(%rbp)
	movl	%eax, -28(%rbp)
	testl	%eax, %eax
	jne	.LBB3_6
# %bb.7:                                # %branchmerge91
	cmpl	$0, -12(%rbp)
	je	.LBB3_9
.LBB3_8:                                # %thenbranch95
	movl	-12(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	%eax, -52(%rbp)
	leaq	28(%rbx), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	-56(%rbp), %esi
	movslq	-16(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movslq	-16(%rbp), %rdx
	addq	-48(%rbp), %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdx, -16(%rax)
	movl	-52(%rbp), %ecx
	callq	_arrcopy
	movl	-12(%rbp), %eax
	addl	%eax, 92(%rbx)
.LBB3_9:                                # %branchmerge122
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB3_6:                                # %thenbranch66
	movl	-28(%rbp), %eax
	imull	-20(%rbp), %eax
	movl	%eax, -76(%rbp)
	movslq	-16(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movslq	-16(%rbp), %rsi
	addq	-48(%rbp), %rsi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rsi, -16(%rax)
	movl	-28(%rbp), %edx
	movq	%rbx, %rdi
	callq	sha1_block_data_order@PLT
	movl	-28(%rbp), %eax
	imull	-20(%rbp), %eax
	addl	%eax, -16(%rbp)
	subl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB3_9
	jmp	.LBB3_8
.Lfunc_end3:
	.size	SHA1_Update_public, .Lfunc_end3-SHA1_Update_public
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
.Lfunc_end4:
	.size	_arrcopy, .Lfunc_end4-_arrcopy
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
	subq	$72, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %r12
	movq	%rdx, -88(%rbp)
	movl	%ecx, -72(%rbp)
	movl	%r8d, -56(%rbp)
	movb	$1, -43(%rbp)
	movl	$16, -92(%rbp)
	movl	$64, -52(%rbp)
	movl	-56(%rbp), %eax
	shlq	$3, %rax
	movq	%rax, -104(%rbp)
	addq	20(%r12), %rax
	movq	%rax, -80(%rbp)
	movq	%rsi, %r14
	movl	-76(%rbp), %eax
	movl	%eax, 24(%r12)
	movl	-80(%rbp), %eax
	movl	%eax, 20(%r12)
	movl	92(%r12), %eax
	movl	%eax, -64(%rbp)
	movl	$0, -48(%rbp)
	leaq	28(%r12), %r15
	jmp	.LBB5_1
	.p2align	4, 0x90
.LBB5_7:                                # %branchmerge
                                        #   in Loop: Header=BB5_1 Depth=1
	addl	$1, -48(%rbp)
.LBB5_1:                                # %loop_check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_5 Depth 2
	movl	-48(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jae	.LBB5_8
# %bb.2:                                # %loop_body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-48(%rbp), %ecx
	movl	-64(%rbp), %eax
	addl	%ecx, %eax
	xorl	%edx, %edx
	divl	-52(%rbp)
	movl	%edx, -68(%rbp)
	cmpl	-56(%rbp), %ecx
	setb	%al
	setb	-42(%rbp)
	movslq	-68(%rbp), %rbx
	andb	-43(%rbp), %al
	movq	-88(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	movzbl	(%rcx,%rdx), %esi
	movzbl	28(%r12,%rbx), %edx
	movzbl	%al, %edi
	callq	select.cmov.asm.i8
	movb	%al, 28(%r12,%rbx)
	movb	-42(%rbp), %al
	notb	%al
	andb	$1, %al
	movb	%al, -42(%rbp)
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	cmpl	%eax, -68(%rbp)
	jne	.LBB5_7
# %bb.3:                                # %thenbranch
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	%rsp, %rax
	leaq	-32(%rax), %r13
	movq	%r13, %rsp
	movl	16(%r12), %ecx
	movl	%ecx, -16(%rax)
	vmovups	(%r12), %xmm0
	vmovups	%xmm0, -32(%rax)
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	sha1_block_data_order@PLT
	movl	-48(%rbp), %eax
	cmpl	-56(%rbp), %eax
	setae	-41(%rbp)
	movl	$0, -60(%rbp)
	cmpl	$4, -60(%rbp)
	ja	.LBB5_6
	.p2align	4, 0x90
.LBB5_5:                                # %loop_body45
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-43(%rbp), %eax
	andb	-41(%rbp), %al
	movslq	-60(%rbp), %rbx
	movl	(%r13,%rbx,4), %esi
	movl	(%r12,%rbx,4), %edx
	movzbl	%al, %edi
	callq	select.cmov.sel.i32
	movl	%eax, (%r12,%rbx,4)
	addl	$1, -60(%rbp)
	cmpl	$4, -60(%rbp)
	jbe	.LBB5_5
.LBB5_6:                                # %loop_end46
                                        #   in Loop: Header=BB5_1 Depth=1
	movb	-41(%rbp), %al
	notb	%al
	andb	$1, %al
	movb	%al, -41(%rbp)
	jmp	.LBB5_7
.LBB5_8:                                # %loop_end
	movl	-64(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	-52(%rbp), %ecx
	addl	$-1, %ecx
	andl	%eax, %ecx
	movl	%ecx, (%r14)
	movl	-64(%rbp), %eax
	addl	-72(%rbp), %eax
	xorl	%edx, %edx
	divl	-52(%rbp)
	movl	%edx, 92(%r12)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	SHA1_Update_secret, .Lfunc_end5-SHA1_Update_secret
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
.Lfunc_end6:
	.size	select.cmov.asm.i8, .Lfunc_end6-select.cmov.asm.i8
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
.Lfunc_end7:
	.size	select.cmov.sel.i32, .Lfunc_end7-select.cmov.sel.i32
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function SHA1_MAKE_STRING
	.type	SHA1_MAKE_STRING,@function
SHA1_MAKE_STRING:                       # @SHA1_MAKE_STRING
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	movq	%rsi, -24(%rbp)
	movq	%rdi, %rbx
	movb	$1, -13(%rbp)
	movl	$0, -12(%rbp)
	cmpl	$4, -12(%rbp)
	ja	.LBB8_3
	.p2align	4, 0x90
.LBB8_2:                                # %loop_body
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	shll	$2, %eax
	cltq
	addq	-24(%rbp), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movl	-12(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rdi
	addq	-24(%rbp), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movslq	-12(%rbp), %rax
	movl	(%rbx,%rax,4), %esi
	callq	store32_be
	addl	$1, -12(%rbp)
	cmpl	$4, -12(%rbp)
	jbe	.LBB8_2
.LBB8_3:                                # %loop_end
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	SHA1_MAKE_STRING, .Lfunc_end8-SHA1_MAKE_STRING
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function SHA1_Final_public
	.type	SHA1_Final_public,@function
SHA1_Final_public:                      # @SHA1_Final_public
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, -40(%rbp)
	movb	$1, -21(%rbp)
	movq	%rsi, %rbx
	movl	92(%rbx), %eax
	movl	%eax, -20(%rbp)
	movslq	-20(%rbp), %rax
	movb	$-128, 28(%rbx,%rax)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	cmpl	$57, %eax
	jb	.LBB9_2
# %bb.1:                                # %thenbranch
	movl	$64, %eax
	subl	-20(%rbp), %eax
	movl	%eax, -32(%rbp)
	leaq	28(%rbx), %r14
	movslq	-20(%rbp), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	leaq	28(%rbx,%rax), %rax
	movq	%rax, -16(%rcx)
	movslq	-20(%rbp), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	leaq	(%rbx,%rax), %rdi
	addq	$28, %rdi
	movq	%rdi, -16(%rcx)
	movl	-32(%rbp), %esi
	callq	_memzero
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	sha1_block_data_order@PLT
	movl	$0, -20(%rbp)
.LBB9_2:                                # %branchmerge
	movl	$56, %eax
	subl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
	leaq	28(%rbx), %r14
	movslq	-20(%rbp), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	leaq	28(%rbx,%rax), %rax
	movq	%rax, -16(%rcx)
	movslq	-20(%rbp), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	leaq	(%rbx,%rax), %rdi
	addq	$28, %rdi
	movq	%rdi, -16(%rcx)
	movl	-28(%rbp), %esi
	callq	_memzero
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	leaq	84(%rbx), %rdi
	movq	%rdi, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	24(%rbx), %esi
	callq	store32_be
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	leaq	88(%rbx), %rdi
	movq	%rdi, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	20(%rbx), %esi
	callq	store32_be
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	sha1_block_data_order@PLT
	movl	$0, 92(%rbx)
	movl	$64, %esi
	movq	%r14, %rdi
	callq	_memzero
	movq	-40(%rbp), %rsi
	movq	%rbx, %rdi
	callq	SHA1_MAKE_STRING
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	SHA1_Final_public, .Lfunc_end9-SHA1_Final_public
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
.Lfunc_end10:
	.size	_memzero, .Lfunc_end10-_memzero
	.cfi_endproc
                                        # -- End function
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
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, -80(%rbp)
	movl	%edx, -56(%rbp)
	movq	%rsi, %r12
	movb	$1, -33(%rbp)
	cmpl	$56, %edx
	setb	-45(%rbp)
	movl	$0, -44(%rbp)
	cmpl	$63, -44(%rbp)
	jbe	.LBB11_2
	jmp	.LBB11_8
	.p2align	4, 0x90
.LBB11_7:                               # %branchmerge84
                                        #   in Loop: Header=BB11_2 Depth=1
	movzbl	-34(%rbp), %eax
	notb	%al
	andb	$1, %al
	movb	%al, -34(%rbp)
	movzbl	-35(%rbp), %eax
	notb	%al
	andb	$1, %al
	movb	%al, -35(%rbp)
	addl	$1, -44(%rbp)
	cmpl	$63, -44(%rbp)
	ja	.LBB11_8
.LBB11_2:                               # %loop_body
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-56(%rbp), %eax
	sete	%al
	sete	-36(%rbp)
	movslq	-44(%rbp), %rbx
	andb	-33(%rbp), %al
	movzbl	28(%r12,%rbx), %edx
	movzbl	%al, %edi
	movl	$128, %esi
	callq	select.cmov.asm.i8
	movb	%al, 28(%r12,%rbx)
	movzbl	-36(%rbp), %eax
	xorb	$1, %al
	movl	%eax, %ecx
	andb	$1, %cl
	movb	%cl, -36(%rbp)
	movl	-44(%rbp), %ecx
	cmpl	-56(%rbp), %ecx
	seta	-35(%rbp)
	seta	%cl
	andb	-33(%rbp), %al
	movslq	-44(%rbp), %rbx
	andb	%cl, %al
	movzbl	28(%r12,%rbx), %edx
	movzbl	%al, %edi
	xorl	%esi, %esi
	callq	select.cmov.asm.i8
	movb	%al, 28(%r12,%rbx)
	movzbl	-45(%rbp), %eax
	movb	%al, -34(%rbp)
	cmpl	$59, -44(%rbp)
	ja	.LBB11_3
# %bb.4:                                # %elsebranch
                                        #   in Loop: Header=BB11_2 Depth=1
	cmpl	$56, -44(%rbp)
	jb	.LBB11_7
# %bb.5:                                # %thenbranch57
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	$59, %eax
	subl	-44(%rbp), %eax
	shll	$3, %eax
	movl	%eax, -64(%rbp)
	movslq	-44(%rbp), %rbx
	movzbl	-35(%rbp), %eax
	andb	-34(%rbp), %al
	movzbl	-33(%rbp), %ecx
	andb	-36(%rbp), %cl
	andb	%al, %cl
	movzbl	-64(%rbp), %eax
	shrxl	%eax, 24(%r12), %esi
	jmp	.LBB11_6
	.p2align	4, 0x90
.LBB11_3:                               # %thenbranch
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	$63, %eax
	subl	-44(%rbp), %eax
	shll	$3, %eax
	movl	%eax, -68(%rbp)
	movslq	-44(%rbp), %rbx
	movzbl	-35(%rbp), %eax
	andb	-34(%rbp), %al
	movzbl	-33(%rbp), %ecx
	andb	-36(%rbp), %cl
	andb	%al, %cl
	movzbl	-68(%rbp), %eax
	shrxl	%eax, 20(%r12), %esi
.LBB11_6:                               # %branchmerge84
                                        #   in Loop: Header=BB11_2 Depth=1
	movzbl	28(%r12,%rbx), %edx
	movzbl	%cl, %edi
	callq	select.cmov.asm.i8
	movb	%al, 28(%r12,%rbx)
	jmp	.LBB11_7
.LBB11_8:                               # %loop_end
	leaq	28(%r12), %r14
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	sha1_block_data_order@PLT
	movl	$56, -60(%rbp)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r14, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r14, -16(%rax)
	movl	-60(%rbp), %esi
	movq	%r14, %rdi
	callq	_memzero
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	leaq	84(%r12), %rdi
	movq	%rdi, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	24(%r12), %esi
	callq	store32_be
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	leaq	88(%r12), %rdi
	movq	%rdi, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	20(%r12), %esi
	callq	store32_be
	movq	%rsp, %rax
	leaq	-32(%rax), %r15
	movq	%r15, %rsp
	movl	16(%r12), %ecx
	movl	%ecx, -16(%rax)
	vmovups	(%r12), %xmm0
	vmovups	%xmm0, -32(%rax)
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	sha1_block_data_order@PLT
	movb	-45(%rbp), %al
	movb	%al, -37(%rbp)
	movl	$0, -52(%rbp)
	cmpl	$4, -52(%rbp)
	ja	.LBB11_11
	.p2align	4, 0x90
.LBB11_10:                              # %loop_body121
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-33(%rbp), %eax
	andb	-37(%rbp), %al
	movslq	-52(%rbp), %rbx
	movl	(%r15,%rbx,4), %esi
	movl	(%r12,%rbx,4), %edx
	movzbl	%al, %edi
	callq	select.cmov.sel.i32
	movl	%eax, (%r12,%rbx,4)
	addl	$1, -52(%rbp)
	cmpl	$4, -52(%rbp)
	jbe	.LBB11_10
.LBB11_11:                              # %loop_end122
	movb	-37(%rbp), %al
	notb	%al
	andb	$1, %al
	movb	%al, -37(%rbp)
	movl	$0, 92(%r12)
	movl	$64, %esi
	movq	%r14, %rdi
	callq	_memzero
	movq	-80(%rbp), %rsi
	movq	%r12, %rdi
	callq	SHA1_MAKE_STRING
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	SHA1_Final_secret, .Lfunc_end11-SHA1_Final_secret
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function SHA1_Update_Final_secret
	.type	SHA1_Update_Final_secret,@function
SHA1_Update_Final_secret:               # @SHA1_Update_Final_secret
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %r14
	movq	%rsi, -88(%rbp)
	movl	%edx, -56(%rbp)
	movl	%ecx, -48(%rbp)
	movq	%r8, -80(%rbp)
	movb	$1, -25(%rbp)
	movl	-48(%rbp), %eax
	shlq	$3, %rax
	movq	%rax, -120(%rbp)
	addq	20(%r14), %rax
	movq	%rax, -64(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, 24(%r14)
	movl	-64(%rbp), %eax
	movl	%eax, 20(%r14)
	movl	-56(%rbp), %eax
	addl	$9, %eax
	movl	%eax, -112(%rbp)
	movl	%eax, %ecx
	shrl	$6, %ecx
	movl	%ecx, -108(%rbp)
	xorl	%edx, %edx
	andl	$63, %eax
	movl	%eax, -104(%rbp)
	setne	%dl
	movl	%edx, -100(%rbp)
	addl	%edx, %ecx
	shll	$6, %ecx
	movl	%ecx, -68(%rbp)
	movl	-48(%rbp), %eax
	andl	$63, %eax
	movl	%eax, -96(%rbp)
	cmpb	$56, %al
	setb	-36(%rbp)
	movb	$0, -32(%rbp)
	movl	$0, -40(%rbp)
	jmp	.LBB12_1
	.p2align	4, 0x90
.LBB12_11:                              # %branchmerge194
                                        #   in Loop: Header=BB12_1 Depth=1
	addl	$1, -40(%rbp)
.LBB12_1:                               # %loop_check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_9 Depth 2
	movl	-40(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jae	.LBB12_12
# %bb.2:                                # %loop_body
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	cmpl	-48(%rbp), %eax
	setb	-26(%rbp)
	movl	%ecx, -44(%rbp)
	cmpl	-56(%rbp), %eax
	jae	.LBB12_4
# %bb.3:                                # %thenbranch
                                        #   in Loop: Header=BB12_1 Depth=1
	movslq	-44(%rbp), %rbx
	movb	-25(%rbp), %al
	andb	-26(%rbp), %al
	movq	-88(%rbp), %rcx
	movslq	-40(%rbp), %rsi
	movzbl	28(%r14,%rbx), %edx
	movzbl	(%rcx,%rsi), %esi
	movzbl	%al, %edi
	callq	select.cmov.asm.i8
	movb	%al, 28(%r14,%rbx)
.LBB12_4:                               # %branchmerge
                                        #   in Loop: Header=BB12_1 Depth=1
	movb	-26(%rbp), %al
	xorb	$1, %al
	movl	%eax, %ecx
	andb	$1, %cl
	movb	%cl, -26(%rbp)
	movl	-40(%rbp), %ecx
	cmpl	-48(%rbp), %ecx
	sete	-29(%rbp)
	sete	%cl
	andb	-25(%rbp), %al
	movslq	-44(%rbp), %rbx
	andb	%cl, %al
	movzbl	28(%r14,%rbx), %edx
	movzbl	%al, %edi
	movl	$128, %esi
	callq	select.cmov.asm.i8
	movb	%al, 28(%r14,%rbx)
	movb	-29(%rbp), %al
	xorb	$1, %al
	movb	-36(%rbp), %cl
	movb	%cl, -35(%rbp)
	andb	-26(%rbp), %cl
	andb	%al, %cl
	andb	$1, %al
	movb	%al, -29(%rbp)
	movb	$0, -28(%rbp)
	andb	-25(%rbp), %cl
	movzbl	%cl, %edi
	movzbl	-28(%rbp), %edx
	movl	$1, %esi
	callq	select.cmov.asm.i1
	andb	$1, %al
	movb	%al, -28(%rbp)
	movb	-35(%rbp), %al
	xorb	$1, %al
	movl	%eax, %ecx
	andb	$1, %cl
	movb	%cl, -35(%rbp)
	movb	-26(%rbp), %cl
	andb	-29(%rbp), %cl
	andb	%al, %cl
	andb	-25(%rbp), %cl
	movl	-48(%rbp), %eax
	addl	$64, %eax
	xorl	%esi, %esi
	cmpl	%eax, -40(%rbp)
	seta	%sil
	movzbl	%cl, %edi
	movzbl	-28(%rbp), %edx
	callq	select.cmov.asm.i1
	andb	$1, %al
	movb	%al, -28(%rbp)
	movb	-28(%rbp), %al
	movb	%al, -31(%rbp)
	cmpl	$56, -44(%rbp)
	jb	.LBB12_6
# %bb.5:                                # %thenbranch100
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$63, %eax
	subl	-44(%rbp), %eax
	shll	$3, %eax
	movl	%eax, -92(%rbp)
	movslq	-44(%rbp), %r15
	movb	-29(%rbp), %cl
	andb	-31(%rbp), %cl
	movb	-25(%rbp), %bl
	andb	-26(%rbp), %bl
	andb	%cl, %bl
	shrxq	%rax, -64(%rbp), %rsi
	movzbl	28(%r14,%r15), %edx
	movzbl	%bl, %edi
                                        # kill: def %esi killed %esi killed %rsi
	callq	select.cmov.asm.i8
	movb	%al, 28(%r14,%r15)
.LBB12_6:                               # %branchmerge126
                                        #   in Loop: Header=BB12_1 Depth=1
	movb	-31(%rbp), %al
	notb	%al
	andb	$1, %al
	movb	%al, -31(%rbp)
	cmpl	$63, -44(%rbp)
	jne	.LBB12_11
# %bb.7:                                # %thenbranch131
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	%rsp, %rax
	leaq	-32(%rax), %r15
	movq	%r15, %rsp
	movl	16(%r14), %ecx
	movl	%ecx, -16(%rax)
	vmovups	(%r14), %xmm0
	vmovups	%xmm0, -32(%rax)
	leaq	28(%r14), %rsi
	movl	$1, %edx
	movq	%r14, %rdi
	callq	sha1_block_data_order@PLT
	movb	-32(%rbp), %al
	movb	%al, -30(%rbp)
	movl	$0, -52(%rbp)
	cmpl	$4, -52(%rbp)
	ja	.LBB12_10
	.p2align	4, 0x90
.LBB12_9:                               # %loop_body137
                                        #   Parent Loop BB12_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-25(%rbp), %eax
	andb	-30(%rbp), %al
	movslq	-52(%rbp), %rbx
	movl	(%r15,%rbx,4), %esi
	movl	(%r14,%rbx,4), %edx
	movzbl	%al, %edi
	callq	select.cmov.sel.i32
	movl	%eax, (%r14,%rbx,4)
	addl	$1, -52(%rbp)
	cmpl	$4, -52(%rbp)
	jbe	.LBB12_9
.LBB12_10:                              # %loop_end138
                                        #   in Loop: Header=BB12_1 Depth=1
	movb	-30(%rbp), %al
	notb	%al
	andb	$1, %al
	movb	%al, -30(%rbp)
	movl	-40(%rbp), %r15d
	movb	$0, -27(%rbp)
	movl	-48(%rbp), %ebx
	movb	-36(%rbp), %al
	movb	%al, -34(%rbp)
	andb	-25(%rbp), %al
	movzbl	%al, %edi
	movzbl	-27(%rbp), %edx
	xorl	%esi, %esi
	callq	select.cmov.asm.i8
	movb	%al, -27(%rbp)
	movb	-34(%rbp), %al
	xorb	$1, %al
	movl	%eax, %ecx
	andb	$1, %cl
	movb	%cl, -34(%rbp)
	andb	-25(%rbp), %al
	movzbl	%al, %edi
	movzbl	-27(%rbp), %edx
	movl	$64, %esi
	callq	select.cmov.asm.i8
	movb	%al, -27(%rbp)
	movzbl	-27(%rbp), %eax
	addl	%ebx, %eax
	cmpl	%eax, %r15d
	seta	%al
	seta	-33(%rbp)
	andb	-25(%rbp), %al
	movzbl	%al, %edi
	movzbl	-32(%rbp), %edx
	movl	$1, %esi
	callq	select.cmov.asm.i1
	andb	$1, %al
	movb	%al, -32(%rbp)
	movb	-33(%rbp), %al
	notb	%al
	andb	$1, %al
	movb	%al, -33(%rbp)
	jmp	.LBB12_11
.LBB12_12:                              # %loop_end
	movl	$0, 92(%r14)
	leaq	28(%r14), %rdi
	movl	$64, %esi
	callq	_memzero
	movq	-80(%rbp), %rsi
	movq	%r14, %rdi
	callq	SHA1_MAKE_STRING
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	SHA1_Update_Final_secret, .Lfunc_end12-SHA1_Update_Final_secret
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
.Lfunc_end13:
	.size	select.cmov.asm.i1, .Lfunc_end13-select.cmov.asm.i1
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
	subq	$192, %rsp
	movq	%rsp, %rbx
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, 128(%rbx)
	movq	%rdx, 40(%rbx)
	movl	%ecx, 76(%rbx)
	movq	%r8, 80(%rbx)
	movl	%r9d, 72(%rbx)
	movl	$0, 36(%rbx)
	movb	$1, 1(%rbx)
	movq	$-1, 152(%rbx)
	movl	$16, 68(%rbx)
	movl	$20, 20(%rbx)
	movl	$770, 124(%rbx)         # imm = 0x302
	movl	$16, 148(%rbx)
	movl	$64, 120(%rbx)
	movl	$1, 16(%rbx)
	testb	$15, 72(%rbx)
	jne	.LBB14_1
# %bb.3:                                # %branchmerge
	movl	$0, 52(%rbx)
	movl	$0, 8(%rbx)
	movl	76(%rbx), %eax
	movl	%eax, 4(%rbx)
	movq	16(%rbp), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	leaq	540(%r14,%rax), %rax
	movq	%rax, -16(%rcx)
	movq	16(%rbp), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	leaq	(%r14,%rax), %rdi
	addq	$540, %rdi              # imm = 0x21C
	movq	%rdi, -16(%rcx)
	callq	load16_be
	movw	%ax, 58(%rbx)
	movzwl	58(%rbx), %eax
	cmpl	124(%rbx), %eax
	jae	.LBB14_4
# %bb.6:                                # %elsebranch43
	movl	20(%rbx), %eax
	addl	$1, %eax
	cmpl	%eax, 4(%rbx)
	jae	.LBB14_7
	jmp	.LBB14_1
.LBB14_4:                               # %thenbranch21
	movl	68(%rbx), %eax
	movl	20(%rbx), %ecx
	leal	(%rax,%rcx), %eax
	addl	$1, %eax
	cmpl	%eax, 4(%rbx)
	jb	.LBB14_1
# %bb.5:                                # %branchmerge30
	movq	128(%rbx), %rdi
	movq	80(%rbx), %rdx
	movl	72(%rbx), %ecx
	movl	$16, %esi
	callq	_arrcopy
	movl	68(%rbx), %eax
	addl	%eax, 52(%rbx)
	addl	%eax, 8(%rbx)
	subl	%eax, 4(%rbx)
.LBB14_7:                               # %branchmerge53
	movl	4(%rbx), %eax
	movl	%eax, 144(%rbx)
	movl	%eax, 140(%rbx)
	movslq	52(%rbx), %rax
	addq	80(%rbx), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movslq	52(%rbx), %rdi
	addq	80(%rbx), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movslq	8(%rbx), %rax
	addq	40(%rbx), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movslq	8(%rbx), %rsi
	addq	40(%rbx), %rsi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rsi, -16(%rax)
	movl	4(%rbx), %edx
	movq	128(%rbx), %r8
	xorl	%r9d, %r9d
	movq	%r14, %rcx
	callq	aesni_cbc_encrypt@PLT
	movl	76(%rbx), %eax
	addl	$-1, %eax
	movq	40(%rbx), %rcx
	cltq
	movzbl	(%rcx,%rax), %eax
	movl	4(%rbx), %ecx
	movl	20(%rbx), %edx
	addl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, 116(%rbx)
	movl	116(%rbx), %ecx
	cmpl	$255, %ecx
	movl	$255, %edx
	cmovbel	%ecx, %edx
	movl	%eax, 64(%rbx)
	movl	%edx, 112(%rbx)
	cmpl	%edx, %eax
	seta	%al
	seta	3(%rbx)
	andb	1(%rbx), %al
	movl	16(%rbx), %edx
	movzbl	%al, %edi
	xorl	%esi, %esi
	callq	select.cmov.sel.i32
	movl	%eax, 16(%rbx)
	movb	1(%rbx), %al
	andb	3(%rbx), %al
	movl	112(%rbx), %esi
	movl	64(%rbx), %edx
	movzbl	%al, %edi
	callq	select.cmov.sel.i32
                                        # kill: def %eax killed %eax def %rax
	movl	%eax, 64(%rbx)
	movb	3(%rbx), %cl
	notb	%cl
	andb	$1, %cl
	movb	%cl, 3(%rbx)
	movl	4(%rbx), %ecx
	movl	20(%rbx), %edx
	leal	(%rax,%rdx), %eax
	addl	$1, %eax
	subl	%eax, %ecx
	movl	%ecx, 28(%rbx)
	movq	16(%rbp), %rax
	leaq	544(%r14), %r13
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
	movl	28(%rbx), %esi
	callq	store16_be
	movl	$0, 60(%rbx)
	movq	%rsp, %r15
	addq	$-32, %r15
	andq	$-32, %r15
	movq	%r15, %rsp
	leaq	436(%r14), %r12
	leaq	244(%r14), %rsi
	movq	%r12, %rdi
	callq	_structcopy_SHA_CTX
	movl	16(%rbp), %eax
	movl	%eax, 108(%rbx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r13, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%r13, -16(%rax)
	movl	108(%rbx), %edx
	movq	%r12, %rdi
	movq	%r13, %rsi
	xorl	%r13d, %r13d
	callq	SHA1_Update_public
	movl	4(%rbx), %eax
	movl	120(%rbx), %ecx
	movl	20(%rbx), %edx
	leal	(%rcx,%rdx), %edx
	addl	$256, %edx              # imm = 0x100
	movl	%eax, %esi
	subl	%edx, %esi
	movl	%ecx, %edi
	negl	%edi
	andl	%esi, %edi
	subl	528(%r14), %ecx
	addl	%edi, %ecx
	cmpl	%edx, %eax
	cmovbl	%r13d, %ecx
	movl	%ecx, 32(%rbx)
	testl	%ecx, %ecx
	je	.LBB14_9
# %bb.8:                                # %thenbranch150
	movl	32(%rbx), %eax
	movl	%eax, 104(%rbx)
	movslq	8(%rbx), %rax
	addq	40(%rbx), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movslq	8(%rbx), %rsi
	addq	40(%rbx), %rsi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rsi, -16(%rax)
	movl	104(%rbx), %edx
	movq	%r12, %rdi
	callq	SHA1_Update_public
.LBB14_9:                               # %branchmerge164
	movl	4(%rbx), %eax
	movl	32(%rbx), %ecx
	subl	%ecx, %eax
	movl	%eax, 100(%rbx)
	addl	8(%rbx), %ecx
	movslq	%ecx, %rax
	addq	40(%rbx), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movl	8(%rbx), %eax
	addl	32(%rbx), %eax
	movslq	%eax, %rdx
	addq	40(%rbx), %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdx, -16(%rax)
	movl	100(%rbx), %ecx
	movl	28(%rbx), %r8d
	subl	32(%rbx), %r8d
	leaq	60(%rbx), %rsi
	movq	%r12, %rdi
	callq	SHA1_Update_secret
	movl	60(%rbx), %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	SHA1_Final_secret
	addq	$340, %r14              # imm = 0x154
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	_structcopy_SHA_CTX
	movl	$20, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	SHA1_Update_public
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	SHA1_Final_public
	movl	4(%rbx), %eax
	movl	20(%rbx), %ecx
	leal	256(%rcx), %edx
	movl	%eax, %esi
	subl	%edx, %esi
	cmovbl	%r13d, %esi
	movl	%esi, 96(%rbx)
	movl	8(%rbx), %edx
	addl	28(%rbx), %edx
	addl	%ecx, %edx
	cmpl	%eax, %edx
	seta	%al
	seta	15(%rbx)
	andb	1(%rbx), %al
	movl	16(%rbx), %edx
	movzbl	%al, %edi
	xorl	%esi, %esi
	callq	select.cmov.sel.i32
	movl	%eax, 16(%rbx)
	movb	15(%rbx), %al
	notb	%al
	andb	$1, %al
	movb	%al, 15(%rbx)
	movl	8(%rbx), %eax
	addl	96(%rbx), %eax
	movl	%eax, 24(%rbx)
	jmp	.LBB14_10
	.p2align	4, 0x90
.LBB14_11:                              # %loop_body
                                        #   in Loop: Header=BB14_10 Depth=1
	movb	$0, 2(%rbx)
	movl	24(%rbx), %eax
	movl	8(%rbx), %ecx
	addl	28(%rbx), %ecx
	cmpl	%ecx, %eax
	setae	14(%rbx)
	setae	%dl
	andb	1(%rbx), %dl
	addl	20(%rbx), %ecx
	xorl	%esi, %esi
	cmpl	%ecx, %eax
	setb	%sil
	movzbl	%dl, %edi
	movzbl	2(%rbx), %edx
	callq	select.cmov.asm.i1
	andb	$1, %al
	movb	%al, 2(%rbx)
	movzbl	14(%rbx), %eax
	xorb	$1, %al
	movl	%eax, %ecx
	andb	$1, %cl
	movb	%cl, 14(%rbx)
	andb	1(%rbx), %al
	movzbl	%al, %edi
	movzbl	2(%rbx), %edx
	xorl	%esi, %esi
	callq	select.cmov.asm.i1
	andb	$1, %al
	movb	%al, 2(%rbx)
	movzbl	2(%rbx), %eax
	movb	%al, 13(%rbx)
	movl	24(%rbx), %ecx
	movl	8(%rbx), %edx
	addl	28(%rbx), %edx
	subl	%edx, %ecx
	movl	%ecx, 92(%rbx)
	movq	40(%rbx), %rcx
	movslq	24(%rbx), %rdx
	movzbl	(%rcx,%rdx), %ecx
	movslq	92(%rbx), %rdx
	cmpb	(%r15,%rdx), %cl
	setne	12(%rbx)
	setne	%cl
	andb	1(%rbx), %al
	andb	%cl, %al
	movl	16(%rbx), %edx
	movzbl	%al, %edi
	xorl	%esi, %esi
	callq	select.cmov.sel.i32
	movl	%eax, 16(%rbx)
	movzbl	12(%rbx), %eax
	notb	%al
	andb	$1, %al
	movb	%al, 12(%rbx)
	movzbl	13(%rbx), %eax
	notb	%al
	andb	$1, %al
	movb	%al, 13(%rbx)
	addl	$1, 24(%rbx)
.LBB14_10:                              # %loop_check
                                        # =>This Inner Loop Header: Depth=1
	movl	24(%rbx), %eax
	cmpl	4(%rbx), %eax
	jb	.LBB14_11
# %bb.12:                               # %loop_end
	movl	16(%rbx), %eax
	movl	%eax, 36(%rbx)
	jmp	.LBB14_2
.LBB14_1:                               # %thenbranch
	movl	$0, 36(%rbx)
	xorl	%eax, %eax
.LBB14_2:                               # %thenbranch
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	_aesni_cbc_hmac_sha1_cipher, .Lfunc_end14-_aesni_cbc_hmac_sha1_cipher
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
.Lfunc_end15:
	.size	_structcopy_SHA_CTX, .Lfunc_end15-_structcopy_SHA_CTX
	.cfi_endproc
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
