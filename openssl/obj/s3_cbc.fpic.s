	.text
	.file	"Module"
	.p2align	4, 0x90         # -- Begin function _fact_memzero
	.type	_fact_memzero,@function
_fact_memzero:                          # @_fact_memzero
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	%esi, 12(%rsp)
	movb	$1, 11(%rsp)
	callq	_memzero
	addq	$24, %rsp
	retq
.Lfunc_end0:
	.size	_fact_memzero, .Lfunc_end0-_fact_memzero
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
.Lfunc_end1:
	.size	_memzero, .Lfunc_end1-_memzero
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _fact_memzero64
	.type	_fact_memzero64,@function
_fact_memzero64:                        # @_fact_memzero64
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	%esi, 12(%rsp)
	movb	$1, 11(%rsp)
	callq	_memzero64
	addq	$24, %rsp
	retq
.Lfunc_end2:
	.size	_fact_memzero64, .Lfunc_end2-_fact_memzero64
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _memzero64
	.type	_memzero64,@function
_memzero64:                             # @_memzero64
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
.Lfunc_end3:
	.size	_memzero64, .Lfunc_end3-_memzero64
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _memcpy
	.type	_memcpy,@function
_memcpy:                                # @_memcpy
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)
	movl	%esi, -4(%rsp)
	movq	%rdx, -24(%rsp)
	movl	%ecx, -28(%rsp)
	movb	$1, -41(%rsp)
	movq	$0, -40(%rsp)
	jmp	.LBB4_1
	.p2align	4, 0x90
.LBB4_2:                                # %loop_body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-40(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	-24(%rsp), %rdx
	movzbl	(%rdx,%rax), %edx
	movb	%dl, (%rcx,%rax)
	addq	$1, -40(%rsp)
.LBB4_1:                                # %loop_check
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rsp), %eax
	cmpq	%rax, -40(%rsp)
	jb	.LBB4_2
# %bb.3:                                # %loop_end
	retq
.Lfunc_end4:
	.size	_memcpy, .Lfunc_end4-_memcpy
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_verify_16
	.type	_crypto_verify_16,@function
_crypto_verify_16:                      # @_crypto_verify_16
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movb	$0, 2(%rsp)
	movb	$1, 1(%rsp)
	movl	$0, 4(%rsp)
	cmpl	$15, 4(%rsp)
	ja	.LBB5_3
	.p2align	4, 0x90
.LBB5_2:                                # %loop_body
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rax
	movslq	4(%rsp), %rcx
	movzbl	(%rax,%rcx), %eax
	movq	8(%rsp), %rdx
	cmpb	(%rdx,%rcx), %al
	setne	%al
	setne	3(%rsp)
	andb	1(%rsp), %al
	movzbl	%al, %edi
	movzbl	2(%rsp), %edx
	xorl	%esi, %esi
	callq	select.cmov.asm.i1
	andb	$1, %al
	movb	%al, 2(%rsp)
	movzbl	1(%rsp), %edx
	movzbl	3(%rsp), %eax
	andb	%dl, %al
	movzbl	%al, %edi
	xorl	%esi, %esi
	callq	select.cmov.asm.i1
	andb	$1, %al
	movb	%al, 1(%rsp)
	movzbl	3(%rsp), %eax
	notb	%al
	andb	$1, %al
	movb	%al, 3(%rsp)
	addl	$1, 4(%rsp)
	cmpl	$15, 4(%rsp)
	jbe	.LBB5_2
.LBB5_3:                                # %loop_end
	movzbl	2(%rsp), %edx
	movzbl	1(%rsp), %edi
	movl	$1, %esi
	callq	select.cmov.asm.i1
	andb	$1, %al
	movb	%al, 2(%rsp)
	movzbl	1(%rsp), %edi
	xorl	%esi, %esi
	movl	%edi, %edx
	callq	select.cmov.asm.i1
	andb	$1, %al
	movb	%al, 1(%rsp)
	movb	2(%rsp), %al
	addq	$24, %rsp
	retq
.Lfunc_end5:
	.size	_crypto_verify_16, .Lfunc_end5-_crypto_verify_16
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
.Lfunc_end6:
	.size	select.cmov.asm.i1, .Lfunc_end6-select.cmov.asm.i1
	.cfi_endproc
                                        # -- End function
	.globl	__ssl3_cbc_digest_record # -- Begin function __ssl3_cbc_digest_record
	.p2align	4, 0x90
	.type	__ssl3_cbc_digest_record,@function
__ssl3_cbc_digest_record:               # @__ssl3_cbc_digest_record
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
	subq	$296, %rsp              # imm = 0x128
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -288(%rbp)
	movq	%rdx, -200(%rbp)
	movq	%rcx, -240(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -280(%rbp)
	movb	$1, -41(%rbp)
	movl	$0, -116(%rbp)
	movl	$128, -224(%rbp)
	movl	$216, -308(%rbp)
	movl	$16, -304(%rbp)
	movq	16(%rbp), %rax
	movl	88(%rbp), %ecx
	addq	%rax, %rcx
	addq	$11, %rcx
	movb	96(%rbp), %dl
	testb	%dl, %dl
	movl	$13, %eax
	cmovneq	%rcx, %rax
	movq	%rax, -136(%rbp)
	xorb	$1, %dl
	shlb	$2, %dl
	orb	$2, %dl
	movzbl	%dl, %ecx
	movq	%rcx, -192(%rbp)
	movl	64(%rbp), %ecx
	addq	%rax, %rcx
	movq	%rcx, -328(%rbp)
	movl	$64, -300(%rbp)
	movq	-240(%rbp), %rdx
	subq	%rdx, %rcx
	leaq	-1(%rcx), %rsi
	movq	%rsi, -320(%rbp)
	movq	24(%rbp), %rsi
	addq	%rsi, %rcx
	addq	$-1, %rcx
	movq	-72(%rbp), %rdi
	addq	%rdi, %rcx
	movb	-280(%rbp), %bl
	shrxq	%rbx, %rcx, %rcx
	movq	%rcx, -272(%rbp)
	addq	72(%rbp), %rax
	subq	%rdx, %rax
	movq	%rax, -264(%rbp)
	addq	$-1, %rdi
	andq	%rax, %rdi
	movq	%rdi, -232(%rbp)
	shrxq	%rbx, %rax, %rdx
	movq	%rdx, -256(%rbp)
	addq	%rsi, %rax
	shrxq	%rbx, %rax, %rax
	movq	%rax, -248(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -96(%rbp)
	movzbl	96(%rbp), %eax
	addq	-192(%rbp), %rax
	cmpq	%rax, %rcx
	jbe	.LBB7_2
# %bb.1:                                # %thenbranch
	movq	-272(%rbp), %rax
	subq	-192(%rbp), %rax
	movq	%rax, -184(%rbp)
	imulq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB7_2:                                # %branchmerge
	movq	%rsp, %rbx
	addq	$-128, %rbx
	movq	%rbx, %rsp
	movq	-264(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -88(%rbp)
	movb	96(%rbp), %al
	notb	%al
	testb	$1, %al
	je	.LBB7_10
# %bb.3:                                # %thenbranch72
	movq	-72(%rbp), %rax
	shlq	$3, %rax
	addq	%rax, -88(%rbp)
	movl	88(%rbp), %eax
	cmpl	-224(%rbp), %eax
	ja	.LBB7_4
# %bb.6:                                # %branchmerge84
	movq	-200(%rbp), %rdi
	movq	80(%rbp), %rdx
	movl	88(%rbp), %ecx
	movl	$128, %esi
	callq	_memcpy
	movq	$0, -176(%rbp)
	jmp	.LBB7_7
	.p2align	4, 0x90
.LBB7_8:                                # %loop_body
                                        #   in Loop: Header=BB7_7 Depth=1
	movq	-176(%rbp), %rax
	movq	-200(%rbp), %rcx
	xorb	$54, (%rcx,%rax)
	addq	$1, -176(%rbp)
.LBB7_7:                                # %loop_check
                                        # =>This Inner Loop Header: Depth=1
	movq	-176(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.LBB7_8
# %bb.9:                                # %loop_end
	movl	40(%rbp), %edi
	movq	-104(%rbp), %rsi
	movq	-200(%rbp), %rdx
	callq	_md_transform@PLT
.LBB7_10:                               # %branchmerge100
	movq	%rsp, %rax
	leaq	-16(%rax), %r14
	movq	%r14, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, -16(%rax)
	cmpb	$1, 32(%rbp)
	je	.LBB7_11
# %bb.12:                               # %elsebranch126
	movq	24(%rbp), %rax
	movb	-85(%rbp), %cl
	movb	%cl, -5(%r14,%rax)
	movq	24(%rbp), %rax
	movb	-86(%rbp), %cl
	movb	%cl, -6(%r14,%rax)
	movq	24(%rbp), %rax
	movb	-87(%rbp), %cl
	movb	%cl, -7(%r14,%rax)
	movq	24(%rbp), %rax
	movb	-88(%rbp), %cl
	movb	%cl, -8(%r14,%rax)
	cmpq	$0, -96(%rbp)
	je	.LBB7_28
.LBB7_14:                               # %thenbranch154
	cmpb	$1, 96(%rbp)
	je	.LBB7_15
# %bb.22:                               # %elsebranch236
	movq	48(%rbp), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	48(%rbp), %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdx, -16(%rax)
	movl	$128, %esi
	movl	$13, %ecx
	movq	%rbx, %rdi
	callq	_memcpy
	movl	-72(%rbp), %eax
	addl	$-13, %eax
	movl	%eax, -208(%rbp)
	movl	%eax, -204(%rbp)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	leaq	13(%rbx), %rdi
	movq	%rdi, -16(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	-208(%rbp), %esi
	movq	56(%rbp), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	56(%rbp), %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdx, -16(%rax)
	movl	-204(%rbp), %ecx
	callq	_memcpy
	movl	40(%rbp), %edi
	movq	-104(%rbp), %rsi
	movq	%rbx, %rdx
	callq	_md_transform@PLT
	movq	$1, -144(%rbp)
	jmp	.LBB7_23
	.p2align	4, 0x90
.LBB7_27:                               # %loop_body269
                                        #   in Loop: Header=BB7_23 Depth=1
	movq	-72(%rbp), %rax
	movl	%eax, -292(%rbp)
	movl	40(%rbp), %edi
	movq	-104(%rbp), %rsi
	imulq	-144(%rbp), %rax
	movq	56(%rbp), %rcx
	addq	%rcx, %rax
	addq	$-13, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	-72(%rbp), %rax
	imulq	-144(%rbp), %rax
	movq	56(%rbp), %rcx
	leaq	(%rcx,%rax), %rdx
	addq	$-13, %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdx, -16(%rax)
	callq	_md_transform@PLT
	addq	$1, -144(%rbp)
.LBB7_23:                               # %loop_check268
                                        # =>This Inner Loop Header: Depth=1
	movq	-144(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdx
	orq	%rsi, %rdx
	shrq	$32, %rdx
	je	.LBB7_24
# %bb.25:                               #   in Loop: Header=BB7_23 Depth=1
	xorl	%edx, %edx
	divq	%rsi
	cmpq	%rax, %rcx
	jb	.LBB7_27
	jmp	.LBB7_28
	.p2align	4, 0x90
.LBB7_24:                               #   in Loop: Header=BB7_23 Depth=1
	xorl	%edx, %edx
                                        # kill: def %eax killed %eax killed %rax
	divl	%esi
                                        # kill: def %eax killed %eax def %rax
	cmpq	%rax, %rcx
	jb	.LBB7_27
	jmp	.LBB7_28
.LBB7_11:                               # %thenbranch103
	movq	24(%rbp), %rax
	movb	-85(%rbp), %cl
	movb	%cl, -4(%r14,%rax)
	movq	24(%rbp), %rax
	movb	-86(%rbp), %cl
	movb	%cl, -3(%r14,%rax)
	movq	24(%rbp), %rax
	movb	-87(%rbp), %cl
	movb	%cl, -2(%r14,%rax)
	movq	24(%rbp), %rax
	movb	-88(%rbp), %cl
	movb	%cl, -1(%r14,%rax)
	cmpq	$0, -96(%rbp)
	je	.LBB7_28
	jmp	.LBB7_14
.LBB7_15:                               # %thenbranch157
	movq	-136(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jbe	.LBB7_4
# %bb.16:                               # %branchmerge164
	movq	-136(%rbp), %rax
	subq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)
	movl	40(%rbp), %edi
	movq	-104(%rbp), %rsi
	movq	48(%rbp), %rdx
	callq	_md_transform@PLT
	movl	-128(%rbp), %eax
	movl	%eax, -220(%rbp)
	movq	48(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	48(%rbp), %rdx
	addq	-72(%rbp), %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdx, -16(%rax)
	movl	-220(%rbp), %ecx
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	_memcpy
	movq	-128(%rbp), %rax
	movl	-72(%rbp), %ecx
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, -216(%rbp)
	subl	-128(%rbp), %ecx
	movl	%ecx, -212(%rbp)
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	addq	%rbx, %rax
	movq	%rax, -16(%rcx)
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	-128(%rbp), %rdi
	addq	%rbx, %rdi
	movq	%rdi, -16(%rax)
	movl	-216(%rbp), %esi
	movq	56(%rbp), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	56(%rbp), %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdx, -16(%rax)
	movl	-212(%rbp), %ecx
	callq	_memcpy
	movl	40(%rbp), %edi
	movq	-104(%rbp), %rsi
	movq	%rbx, %rdx
	callq	_md_transform@PLT
	movq	$1, -152(%rbp)
	jmp	.LBB7_17
	.p2align	4, 0x90
.LBB7_21:                               # %loop_body206
                                        #   in Loop: Header=BB7_17 Depth=1
	movq	-72(%rbp), %rax
	movl	%eax, -296(%rbp)
	movl	40(%rbp), %edi
	movq	-104(%rbp), %rsi
	imulq	-152(%rbp), %rax
	subq	-128(%rbp), %rax
	addq	56(%rbp), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	-72(%rbp), %rdx
	imulq	-152(%rbp), %rdx
	subq	-128(%rbp), %rdx
	addq	56(%rbp), %rdx
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdx, -16(%rax)
	callq	_md_transform@PLT
	addq	$1, -152(%rbp)
.LBB7_17:                               # %loop_check205
                                        # =>This Inner Loop Header: Depth=1
	movq	-152(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdx
	orq	%rsi, %rdx
	shrq	$32, %rdx
	je	.LBB7_18
# %bb.19:                               #   in Loop: Header=BB7_17 Depth=1
	xorl	%edx, %edx
	divq	%rsi
	jmp	.LBB7_20
	.p2align	4, 0x90
.LBB7_18:                               #   in Loop: Header=BB7_17 Depth=1
	xorl	%edx, %edx
                                        # kill: def %eax killed %eax killed %rax
	divl	%esi
                                        # kill: def %eax killed %eax def %rax
.LBB7_20:                               #   in Loop: Header=BB7_17 Depth=1
	addq	$-1, %rax
	cmpq	%rax, %rcx
	jb	.LBB7_21
.LBB7_28:                               # %branchmerge299
	movq	-184(%rbp), %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB7_29
	.p2align	4, 0x90
.LBB7_43:                               # %loop_end494
                                        #   in Loop: Header=BB7_29 Depth=1
	addq	$1, -168(%rbp)
.LBB7_29:                               # %loop_check300
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_31 Depth 2
                                        #     Child Loop BB7_41 Depth 2
	movq	-184(%rbp), %rax
	movq	-192(%rbp), %rcx
	addq	%rcx, %rax
	addq	$1, %rax
	cmpq	%rax, -168(%rbp)
	jae	.LBB7_44
# %bb.30:                               # %loop_body301
                                        #   in Loop: Header=BB7_29 Depth=1
	movq	%rsp, %rax
	leaq	-128(%rax), %r15
	movq	%r15, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, -32(%rax)
	vmovups	%ymm0, -64(%rax)
	vmovups	%ymm0, -96(%rax)
	movq	-168(%rbp), %rcx
	cmpq	-256(%rbp), %rcx
	sete	-50(%rbp)
	vmovups	%ymm0, -128(%rax)
	cmpq	-248(%rbp), %rcx
	sete	-49(%rbp)
	movq	$0, -112(%rbp)
	jmp	.LBB7_31
	.p2align	4, 0x90
.LBB7_39:                               # %branchmerge480
                                        #   in Loop: Header=BB7_31 Depth=2
	movq	-112(%rbp), %rax
	movzbl	-42(%rbp), %ecx
	movb	%cl, (%r15,%rax)
	addq	$1, -112(%rbp)
.LBB7_31:                               # %loop_check316
                                        #   Parent Loop BB7_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-112(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jae	.LBB7_40
# %bb.32:                               # %loop_body317
                                        #   in Loop: Header=BB7_31 Depth=2
	movb	$0, -42(%rbp)
	movq	-96(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jb	.LBB7_33
# %bb.34:                               # %elsebranch331
                                        #   in Loop: Header=BB7_31 Depth=2
	movl	64(%rbp), %eax
	addq	-136(%rbp), %rax
	cmpq	%rax, -96(%rbp)
	jae	.LBB7_37
# %bb.35:                               # %thenbranch339
                                        #   in Loop: Header=BB7_31 Depth=2
	movq	-96(%rbp), %rax
	subq	-136(%rbp), %rax
	movq	56(%rbp), %rcx
	jmp	.LBB7_36
	.p2align	4, 0x90
.LBB7_33:                               # %thenbranch326
                                        #   in Loop: Header=BB7_31 Depth=2
	movq	-96(%rbp), %rax
	movq	48(%rbp), %rcx
.LBB7_36:                               # %branchmerge348
                                        #   in Loop: Header=BB7_31 Depth=2
	movzbl	(%rcx,%rax), %eax
	movb	%al, -42(%rbp)
.LBB7_37:                               # %branchmerge348
                                        #   in Loop: Header=BB7_31 Depth=2
	addq	$1, -96(%rbp)
	movb	$0, -45(%rbp)
	movzbl	-50(%rbp), %eax
	movb	%al, -58(%rbp)
	andb	-41(%rbp), %al
	movq	-112(%rbp), %rcx
	xorl	%esi, %esi
	cmpq	-232(%rbp), %rcx
	setae	%sil
	movzbl	%al, %edi
	movzbl	-45(%rbp), %edx
	vzeroupper
	callq	select.cmov.asm.i1
	andb	$1, %al
	movb	%al, -45(%rbp)
	movzbl	-58(%rbp), %eax
	xorb	$1, %al
	movl	%eax, %ecx
	andb	$1, %cl
	movb	%cl, -58(%rbp)
	andb	-41(%rbp), %al
	movzbl	%al, %edi
	movzbl	-45(%rbp), %edx
	xorl	%esi, %esi
	callq	select.cmov.asm.i1
	andb	$1, %al
	movb	%al, -45(%rbp)
	movzbl	-45(%rbp), %eax
	movb	%al, -74(%rbp)
	movb	$0, -44(%rbp)
	movzbl	-50(%rbp), %eax
	movb	%al, -57(%rbp)
	andb	-41(%rbp), %al
	movq	-232(%rbp), %rcx
	addq	$1, %rcx
	xorl	%esi, %esi
	cmpq	%rcx, -112(%rbp)
	setae	%sil
	movzbl	%al, %edi
	movzbl	-44(%rbp), %edx
	callq	select.cmov.asm.i1
	andb	$1, %al
	movb	%al, -44(%rbp)
	movzbl	-57(%rbp), %eax
	xorb	$1, %al
	movl	%eax, %ecx
	andb	$1, %cl
	movb	%cl, -57(%rbp)
	andb	-41(%rbp), %al
	movzbl	%al, %edi
	movzbl	-44(%rbp), %edx
	xorl	%esi, %esi
	callq	select.cmov.asm.i1
	andb	$1, %al
	movb	%al, -44(%rbp)
	movzbl	-44(%rbp), %eax
	movb	%al, -73(%rbp)
	movb	$0, -48(%rbp)
	movzbl	-74(%rbp), %eax
	movb	%al, -56(%rbp)
	andb	-41(%rbp), %al
	movzbl	%al, %edi
	movzbl	-48(%rbp), %edx
	movl	$128, %esi
	callq	select.cmov.asm.i8
	movb	%al, -48(%rbp)
	movzbl	-56(%rbp), %eax
	xorb	$1, %al
	movl	%eax, %ecx
	andb	$1, %cl
	movb	%cl, -56(%rbp)
	andb	-41(%rbp), %al
	movzbl	%al, %edi
	movzbl	-42(%rbp), %esi
	movzbl	-48(%rbp), %edx
	callq	select.cmov.asm.i8
	movb	%al, -48(%rbp)
	movb	%al, -42(%rbp)
	movzbl	-73(%rbp), %eax
	movb	%al, -55(%rbp)
	andb	-41(%rbp), %al
	movzbl	%al, %edi
	movzbl	-42(%rbp), %edx
	xorl	%esi, %esi
	callq	select.cmov.asm.i8
	movb	%al, -42(%rbp)
	movzbl	-55(%rbp), %eax
	notb	%al
	andb	$1, %al
	movb	%al, -55(%rbp)
	movb	$0, -43(%rbp)
	movzbl	-49(%rbp), %eax
	movb	%al, -54(%rbp)
	andb	-41(%rbp), %al
	movzbl	-50(%rbp), %ecx
	xorb	$1, %cl
	movzbl	%al, %edi
	movzbl	-43(%rbp), %edx
	movzbl	%cl, %esi
	callq	select.cmov.asm.i1
	andb	$1, %al
	movb	%al, -43(%rbp)
	movzbl	-54(%rbp), %eax
	xorb	$1, %al
	movl	%eax, %ecx
	andb	$1, %cl
	movb	%cl, -54(%rbp)
	andb	-41(%rbp), %al
	movzbl	%al, %edi
	movzbl	-43(%rbp), %edx
	xorl	%esi, %esi
	callq	select.cmov.asm.i1
	andb	$1, %al
	movb	%al, -43(%rbp)
	movzbl	-43(%rbp), %eax
	movb	%al, -53(%rbp)
	andb	-41(%rbp), %al
	movzbl	%al, %edi
	movzbl	-42(%rbp), %edx
	xorl	%esi, %esi
	callq	select.cmov.asm.i8
	movb	%al, -42(%rbp)
	movzbl	-53(%rbp), %eax
	notb	%al
	andb	$1, %al
	movb	%al, -53(%rbp)
	movq	-72(%rbp), %rax
	subq	24(%rbp), %rax
	cmpq	%rax, -112(%rbp)
	jb	.LBB7_39
# %bb.38:                               # %thenbranch452
                                        #   in Loop: Header=BB7_31 Depth=2
	movb	$0, -47(%rbp)
	movzbl	-49(%rbp), %eax
	movb	%al, -52(%rbp)
	andb	-41(%rbp), %al
	movq	-112(%rbp), %rcx
	movq	-72(%rbp), %rdx
	subq	24(%rbp), %rdx
	subq	%rdx, %rcx
	movzbl	(%r14,%rcx), %esi
	movzbl	%al, %edi
	movzbl	-47(%rbp), %edx
	callq	select.cmov.asm.i8
	movb	%al, -47(%rbp)
	movzbl	-52(%rbp), %eax
	xorb	$1, %al
	movl	%eax, %ecx
	andb	$1, %cl
	movb	%cl, -52(%rbp)
	andb	-41(%rbp), %al
	movzbl	%al, %edi
	movzbl	-42(%rbp), %esi
	movzbl	-47(%rbp), %edx
	callq	select.cmov.asm.i8
	movb	%al, -47(%rbp)
	movb	%al, -42(%rbp)
	jmp	.LBB7_39
	.p2align	4, 0x90
.LBB7_40:                               # %loop_end318
                                        #   in Loop: Header=BB7_29 Depth=1
	movl	40(%rbp), %edi
	movq	-104(%rbp), %rsi
	movq	%r15, %rdx
	vzeroupper
	callq	_md_transform@PLT
	movl	40(%rbp), %edi
	movq	-104(%rbp), %rsi
	movq	%r15, %rdx
	callq	_md_final_raw@PLT
	movq	$0, -160(%rbp)
	jmp	.LBB7_41
	.p2align	4, 0x90
.LBB7_42:                               # %loop_body493
                                        #   in Loop: Header=BB7_41 Depth=2
	movq	-160(%rbp), %r13
	movq	-288(%rbp), %r12
	movzbl	(%r12,%r13), %ebx
	movb	$0, -46(%rbp)
	movzbl	-49(%rbp), %eax
	movb	%al, -51(%rbp)
	andb	-41(%rbp), %al
	movzbl	(%r15,%r13), %esi
	movzbl	%al, %edi
	movzbl	-46(%rbp), %edx
	callq	select.cmov.asm.i8
	movb	%al, -46(%rbp)
	movzbl	-51(%rbp), %eax
	xorb	$1, %al
	movl	%eax, %ecx
	andb	$1, %cl
	movb	%cl, -51(%rbp)
	andb	-41(%rbp), %al
	movzbl	%al, %edi
	movzbl	-46(%rbp), %edx
	xorl	%esi, %esi
	callq	select.cmov.asm.i8
	movb	%al, -46(%rbp)
	orb	%al, %bl
	movb	%bl, (%r12,%r13)
	addq	$1, -160(%rbp)
.LBB7_41:                               # %loop_check492
                                        #   Parent Loop BB7_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-160(%rbp), %rax
	cmpq	-240(%rbp), %rax
	jb	.LBB7_42
	jmp	.LBB7_43
.LBB7_44:                               # %loop_end302
	movl	$1, -116(%rbp)
	movl	$1, %eax
.LBB7_5:                                # %thenbranch81
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_4:                                # %thenbranch81
	movl	$0, -116(%rbp)
	xorl	%eax, %eax
	jmp	.LBB7_5
.Lfunc_end7:
	.size	__ssl3_cbc_digest_record, .Lfunc_end7-__ssl3_cbc_digest_record
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
.Lfunc_end8:
	.size	select.cmov.asm.i8, .Lfunc_end8-select.cmov.asm.i8
	.cfi_endproc
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
