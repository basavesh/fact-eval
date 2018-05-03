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
	callq	memset
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
	callq	memset
	popq	%rax
	retq
.Lfunc_end3:
	.size	_memzero64, .Lfunc_end3-_memzero64
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
	ja	.LBB4_3
	.p2align	4, 0x90
.LBB4_2:                                # %loop_body
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
	jbe	.LBB4_2
.LBB4_3:                                # %loop_end
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
.Lfunc_end4:
	.size	_crypto_verify_16, .Lfunc_end4-_crypto_verify_16
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
.Lfunc_end5:
	.size	select.cmov.asm.i1, .Lfunc_end5-select.cmov.asm.i1
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _poly1305_blocks
	.type	_poly1305_blocks,@function
_poly1305_blocks:                       # @_poly1305_blocks
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$192, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, -64(%rbp)
	movl	%edx, -88(%rbp)
	movb	$1, -18(%rbp)
	movabsq	$17592186044415, %rax   # imm = 0xFFFFFFFFFFF
	movq	%rax, -56(%rbp)
	movabsq	$4398046511103, %rax    # imm = 0x3FFFFFFFFFF
	movq	%rax, -120(%rbp)
	movq	%rdi, %r14
	movq	$0, -112(%rbp)
	cmpb	$0, 88(%r14)
	setne	-17(%rbp)
	movzbl	-17(%rbp), %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	select.cmov.sel.i64
	movq	%rax, -112(%rbp)
	movb	-17(%rbp), %cl
	xorb	$1, %cl
	movl	%ecx, %edx
	andb	$1, %dl
	movb	%dl, -17(%rbp)
	andb	-18(%rbp), %cl
	movzbl	%cl, %edi
	movabsq	$1099511627776, %rsi    # imm = 0x10000000000
	movq	%rax, %rdx
	callq	select.cmov.sel.i64
	movq	%rax, -112(%rbp)
	movq	%rax, -184(%rbp)
	movq	(%r14), %rax
	movq	%rax, -80(%rbp)
	movq	8(%r14), %rax
	movq	%rax, -104(%rbp)
	movq	16(%r14), %rcx
	movq	%rcx, -176(%rbp)
	movq	24(%r14), %rdx
	movq	%rdx, -32(%rbp)
	movq	32(%r14), %rdx
	movq	%rdx, -40(%rbp)
	movq	40(%r14), %rdx
	movq	%rdx, -48(%rbp)
	shlq	$2, %rax
	leaq	(%rax,%rax,4), %rax
	movq	%rax, -168(%rbp)
	shlq	$2, %rcx
	leaq	(%rcx,%rcx,4), %rax
	movq	%rax, -96(%rbp)
	movl	-88(%rbp), %eax
	shrl	$4, %eax
	movl	%eax, -84(%rbp)
	movl	$0, -24(%rbp)
	jmp	.LBB6_1
	.p2align	4, 0x90
.LBB6_2:                                # %loop_body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-24(%rbp), %eax
	shll	$4, %eax
	cltq
	addq	-64(%rbp), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movl	-24(%rbp), %eax
	shll	$4, %eax
	movslq	%eax, %rdi
	addq	-64(%rbp), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	callq	_load64_le
	movq	%rax, -160(%rbp)
	movl	-24(%rbp), %eax
	shll	$4, %eax
	orl	$8, %eax
	cltq
	addq	-64(%rbp), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movl	-24(%rbp), %eax
	shll	$4, %eax
	orl	$8, %eax
	movslq	%eax, %rdi
	addq	-64(%rbp), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	callq	_load64_le
	movq	-160(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	shldq	$20, %rcx, %rsi
	andq	%rdx, %rcx
	addq	%rcx, -32(%rbp)
	andq	%rdx, %rsi
	addq	%rsi, -40(%rbp)
	movq	%rax, -208(%rbp)
	shrq	$24, %rax
	andq	-120(%rbp), %rax
	orq	-184(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdx
	mulxq	-80(%rbp), %rsi, %rdi
	movq	-40(%rbp), %r10
	movq	%r10, %rdx
	mulxq	-96(%rbp), %rbx, %rax
	addq	%rsi, %rbx
	adcq	%rdi, %rax
	movq	-48(%rbp), %r8
	movq	%r8, %rdx
	mulxq	-168(%rbp), %r11, %rsi
	addq	%rbx, %r11
	adcq	%rax, %rsi
	movq	%r11, -200(%rbp)
	movq	%rsi, -192(%rbp)
	movq	-32(%rbp), %rdx
	mulxq	-104(%rbp), %rcx, %r9
	movq	%r10, %rdx
	mulxq	-80(%rbp), %rax, %rbx
	addq	%rcx, %rax
	adcq	%r9, %rbx
	movq	%r8, %rdx
	mulxq	-96(%rbp), %r9, %rcx
	addq	%rax, %r9
	adcq	%rbx, %rcx
	movq	%r9, -152(%rbp)
	movq	%rcx, -144(%rbp)
	movq	-32(%rbp), %rdx
	mulxq	-176(%rbp), %rax, %r10
	movq	-40(%rbp), %rdx
	mulxq	-104(%rbp), %rbx, %rdi
	addq	%rax, %rbx
	adcq	%r10, %rdi
	movq	%r8, %rdx
	mulxq	-80(%rbp), %rdx, %rax
	addq	%rbx, %rdx
	adcq	%rdi, %rax
	movq	%rdx, -136(%rbp)
	movq	%rax, -128(%rbp)
	shldq	$20, %r11, %rsi
	movq	%rsi, -72(%rbp)
	andq	-56(%rbp), %r11
	movq	%r11, -32(%rbp)
	addq	%r9, %rsi
	adcq	$0, %rcx
	movq	%rcx, -144(%rbp)
	movq	%rsi, -152(%rbp)
	shldq	$20, %rsi, %rcx
	movq	%rcx, -72(%rbp)
	andq	-56(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	addq	%rdx, %rcx
	adcq	$0, %rax
	movq	%rax, -128(%rbp)
	movq	%rcx, -136(%rbp)
	shldq	$22, %rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-136(%rbp), %rcx
	andq	-120(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	leaq	(%rax,%rax,4), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	%rax, %rcx
	shrq	$44, %rcx
	movq	%rcx, -72(%rbp)
	andq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	addq	%rcx, -40(%rbp)
	addl	$1, -24(%rbp)
.LBB6_1:                                # %loop_check
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jb	.LBB6_2
# %bb.3:                                # %loop_end
	movq	-32(%rbp), %rax
	movq	%rax, 24(%r14)
	movq	-40(%rbp), %rax
	movq	%rax, 32(%r14)
	movq	-48(%rbp), %rax
	movq	%rax, 40(%r14)
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	_poly1305_blocks, .Lfunc_end6-_poly1305_blocks
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function select.cmov.sel.i64
	.type	select.cmov.sel.i64,@function
select.cmov.sel.i64:                    # @select.cmov.sel.i64
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %dil
	cmoveq	%rdx, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end7:
	.size	select.cmov.sel.i64, .Lfunc_end7-select.cmov.sel.i64
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _load64_le
	.type	_load64_le,@function
_load64_le:                             # @_load64_le
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	retq
.Lfunc_end8:
	.size	_load64_le, .Lfunc_end8-_load64_le
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _poly1305_init
	.type	_poly1305_init,@function
_poly1305_init:                         # @_poly1305_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$96, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	%rsi, 8(%rsp)
	movb	$1, 7(%rsp)
	movq	%rsi, 88(%rsp)
	movq	%rsi, 80(%rsp)
	movq	%rsi, %rdi
	callq	_load64_le
	movq	%rax, 24(%rsp)
	movq	8(%rsp), %rdi
	addq	$8, %rdi
	movq	%rdi, 72(%rsp)
	movq	%rdi, 64(%rsp)
	callq	_load64_le
	movq	%rax, 16(%rsp)
	movabsq	$17575274610687, %rax   # imm = 0xFFC0FFFFFFF
	andq	24(%rsp), %rax
	movq	%rax, (%rbx)
	movq	24(%rsp), %rax
	movq	16(%rsp), %rcx
	shldq	$20, %rax, %rcx
	movabsq	$17592181915647, %rax   # imm = 0xFFFFFC0FFFF
	andq	%rcx, %rax
	movq	%rax, 8(%rbx)
	movq	16(%rsp), %rax
	shrq	$24, %rax
	movabsq	$68719475727, %rcx      # imm = 0xFFFFFFC0F
	andq	%rax, %rcx
	movq	%rcx, 16(%rbx)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 24(%rbx)
	movq	$0, 40(%rbx)
	movq	8(%rsp), %rdi
	addq	$16, %rdi
	movq	%rdi, 56(%rsp)
	movq	%rdi, 48(%rsp)
	callq	_load64_le
	movq	%rax, 48(%rbx)
	movq	8(%rsp), %rdi
	addq	$24, %rdi
	movq	%rdi, 40(%rsp)
	movq	%rdi, 32(%rsp)
	callq	_load64_le
	movq	%rax, 56(%rbx)
	movq	$0, 64(%rbx)
	movb	$0, 88(%rbx)
	addq	$96, %rsp
	popq	%rbx
	retq
.Lfunc_end9:
	.size	_poly1305_init, .Lfunc_end9-_poly1305_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _poly1305_update
	.type	_poly1305_update,@function
_poly1305_update:                       # @_poly1305_update
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
	movq	%rsi, -64(%rbp)
	movl	%edx, -12(%rbp)
	movb	$1, -25(%rbp)
	movq	%rdi, %rbx
	movq	$0, -24(%rbp)
	cmpq	$0, 64(%rbx)
	je	.LBB10_8
# %bb.1:                                # %thenbranch
	movl	$16, %eax
	subq	64(%rbx), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	cmpq	%rcx, %rax
	jbe	.LBB10_3
# %bb.2:                                # %thenbranch8
	movl	-12(%rbp), %eax
	movq	%rax, -56(%rbp)
.LBB10_3:                               # %branchmerge
	movq	$0, -48(%rbp)
	jmp	.LBB10_4
	.p2align	4, 0x90
.LBB10_5:                               # %loop_body
                                        #   in Loop: Header=BB10_4 Depth=1
	movq	-48(%rbp), %rax
	movq	64(%rbx), %rcx
	addq	%rax, %rcx
	movq	-64(%rbp), %rdx
	movzbl	(%rdx,%rax), %eax
	movb	%al, 72(%rbx,%rcx)
	addq	$1, -48(%rbp)
.LBB10_4:                               # %loop_check
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.LBB10_5
# %bb.6:                                # %loop_end
	movq	-56(%rbp), %rax
	addq	%rax, -24(%rbp)
	addq	64(%rbx), %rax
	movq	%rax, 64(%rbx)
	cmpq	$15, %rax
	jbe	.LBB10_15
# %bb.7:                                # %branchmerge33
	leaq	72(%rbx), %rsi
	movl	$16, %edx
	movq	%rbx, %rdi
	callq	_poly1305_blocks
	movq	$0, 64(%rbx)
.LBB10_8:                               # %branchmerge38
	movl	-12(%rbp), %eax
	subq	-24(%rbp), %rax
	cmpq	$16, %rax
	jb	.LBB10_10
# %bb.9:                                # %thenbranch43
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rsi
	subl	%esi, %eax
	andl	$-16, %eax
	movq	%rax, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -68(%rbp)
	addq	-64(%rbp), %rsi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rsi, -16(%rax)
	movl	-68(%rbp), %edx
	movq	%rbx, %rdi
	callq	_poly1305_blocks
	movq	-88(%rbp), %rax
	addq	%rax, -24(%rbp)
.LBB10_10:                              # %branchmerge56
	movl	-12(%rbp), %eax
	cmpq	%rax, -24(%rbp)
	jae	.LBB10_15
# %bb.11:                               # %thenbranch62
	movl	-12(%rbp), %eax
	subq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$0, -40(%rbp)
	jmp	.LBB10_12
	.p2align	4, 0x90
.LBB10_13:                              # %loop_body68
                                        #   in Loop: Header=BB10_12 Depth=1
	movq	-40(%rbp), %rax
	movq	64(%rbx), %rcx
	addq	%rax, %rcx
	addq	-24(%rbp), %rax
	movq	-64(%rbp), %rdx
	movzbl	(%rdx,%rax), %eax
	movb	%al, 72(%rbx,%rcx)
	addq	$1, -40(%rbp)
.LBB10_12:                              # %loop_check67
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	.LBB10_13
# %bb.14:                               # %loop_end69
	movq	-80(%rbp), %rax
	addq	%rax, 64(%rbx)
.LBB10_15:                              # %thenbranch31
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	_poly1305_update, .Lfunc_end10-_poly1305_update
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _poly1305_finish
	.type	_poly1305_finish,@function
_poly1305_finish:                       # @_poly1305_finish
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
	subq	$128, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %r12
	movq	%rsi, -88(%rbp)
	movb	$1, -49(%rbp)
	cmpq	$0, 64(%r12)
	je	.LBB11_5
# %bb.1:                                # %thenbranch
	movq	64(%r12), %rax
	movq	%rax, -144(%rbp)
	movb	$1, 72(%r12,%rax)
	movq	-144(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	cmpq	$15, -96(%rbp)
	ja	.LBB11_4
	.p2align	4, 0x90
.LBB11_3:                               # %loop_body
                                        # =>This Inner Loop Header: Depth=1
	movq	-96(%rbp), %rax
	movb	$0, 72(%r12,%rax)
	addq	$1, -96(%rbp)
	cmpq	$15, -96(%rbp)
	jbe	.LBB11_3
.LBB11_4:                               # %loop_end
	movb	$1, 88(%r12)
	leaq	72(%r12), %rsi
	movl	$16, %edx
	movq	%r12, %rdi
	callq	_poly1305_blocks
.LBB11_5:                               # %branchmerge
	movabsq	$17592186044415, %rax   # imm = 0xFFFFFFFFFFF
	movq	%rax, -80(%rbp)
	movabsq	$4398046511103, %rax    # imm = 0x3FFFFFFFFFF
	movq	%rax, -136(%rbp)
	movq	24(%r12), %rcx
	movq	%rcx, -48(%rbp)
	movq	32(%r12), %rsi
	movq	%rsi, -40(%rbp)
	movb	$44, %r10b
	bzhiq	%r10, %rsi, %r9
	shrq	$44, %rsi
	addq	40(%r12), %rsi
	movb	$42, %r8b
	bzhiq	%r8, %rsi, %rdi
	shrq	$42, %rsi
	leaq	(%rsi,%rsi,4), %rsi
	addq	%rcx, %rsi
	bzhiq	%r10, %rsi, %rcx
	shrq	$44, %rsi
	addq	%r9, %rsi
	bzhiq	%r10, %rsi, %r9
	shrq	$44, %rsi
	addq	%rdi, %rsi
	bzhiq	%r8, %rsi, %rdi
	shrq	$42, %rsi
	movq	%rdi, -72(%rbp)
	leaq	(%rsi,%rsi,4), %rsi
	addq	%rcx, %rsi
	bzhiq	%r10, %rsi, %rcx
	shrq	$44, %rsi
	movq	%rcx, -48(%rbp)
	addq	%r9, %rsi
	movq	%rsi, -40(%rbp)
	addq	$5, %rcx
	bzhiq	%r10, %rcx, %rdx
	shrq	$44, %rcx
	movq	%rdx, -128(%rbp)
	addq	%rsi, %rcx
	bzhiq	%r10, %rcx, %rdx
	movq	%rdx, -120(%rbp)
	shrq	$44, %rcx
	addq	%rdi, %rcx
	addq	$1, %rax
	subq	%rax, %rcx
	movq	%rcx, -112(%rbp)
	shrq	$63, %rcx
	addq	$-1, %rcx
	movq	%rcx, -64(%rbp)
	movq	-128(%rbp), %rax
	andq	%rcx, %rax
	movq	%rax, -128(%rbp)
	andq	-120(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	movq	-112(%rbp), %rdx
	andq	-64(%rbp), %rdx
	movq	%rdx, -112(%rbp)
	movq	-64(%rbp), %rsi
	andnq	-48(%rbp), %rsi, %rdi
	andnq	-40(%rbp), %rsi, %r8
	andnq	-72(%rbp), %rsi, %rbx
	notq	%rsi
	movq	%rsi, -64(%rbp)
	orq	%rax, %rdi
	movq	%rdi, -48(%rbp)
	orq	%rcx, %r8
	movq	%r8, -40(%rbp)
	orq	%rdx, %rbx
	movq	%rbx, -72(%rbp)
	movq	48(%r12), %rax
	movq	%rax, -152(%rbp)
	movq	56(%r12), %rcx
	movq	%rcx, -104(%rbp)
	movq	-80(%rbp), %rcx
	andq	%rax, %rcx
	addq	%rdi, %rcx
	movq	%rcx, -48(%rbp)
	movq	%rcx, %rdx
	shrq	$44, %rdx
	movq	%rdx, -64(%rbp)
	andq	-80(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-104(%rbp), %rcx
	shldq	$20, %rax, %rcx
	andq	-80(%rbp), %rcx
	addq	%rdx, %rcx
	addq	%r8, %rcx
	movq	%rcx, -40(%rbp)
	leaq	24(%r12), %r15
	shrq	$44, %rcx
	movq	%rcx, -64(%rbp)
	leaq	48(%r12), %r14
	movq	-40(%rbp), %rax
	andq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-104(%rbp), %rcx
	shrq	$24, %rcx
	andq	-136(%rbp), %rcx
	addq	-64(%rbp), %rcx
	addq	-72(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	andq	-136(%rbp), %rcx
	movq	-40(%rbp), %rdx
	shlq	$44, %rdx
	orq	%rdx, -48(%rbp)
	movq	%rcx, -72(%rbp)
	shrq	$20, %rax
	shlq	$24, %rcx
	orq	%rax, %rcx
	movq	%rcx, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	-88(%rbp), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movq	-48(%rbp), %rsi
	callq	_store64_le
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	-88(%rbp), %rdi
	addq	$8, %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movq	-40(%rbp), %rsi
	callq	_store64_le
	movl	$3, %esi
	movq	%r12, %rdi
	callq	_fact_memzero64
	movl	$3, %esi
	movq	%r15, %rdi
	callq	_fact_memzero64
	movl	$2, %esi
	movq	%r14, %rdi
	callq	_fact_memzero64
	movq	$0, 64(%r12)
	leaq	72(%r12), %rdi
	movl	$16, %esi
	callq	_fact_memzero
	movb	$0, 88(%r12)
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	_poly1305_finish, .Lfunc_end11-_poly1305_finish
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _store64_le
	.type	_store64_le,@function
_store64_le:                            # @_store64_le
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rsi, (%rdi)
	retq
.Lfunc_end12:
	.size	_store64_le, .Lfunc_end12-_store64_le
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_onetimeauth_poly1305
	.type	_crypto_onetimeauth_poly1305,@function
_crypto_onetimeauth_poly1305:           # @_crypto_onetimeauth_poly1305
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	andq	$-32, %rsp
	subq	$192, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, 56(%rsp)
	movq	%rsi, 48(%rsp)
	movl	%edx, 36(%rsp)
	movq	%rcx, 40(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 124(%rsp)
	vmovaps	%ymm0, 96(%rsp)
	vmovaps	%ymm0, 64(%rsp)
	movl	$0, 32(%rsp)
	movb	$1, 31(%rsp)
	leaq	64(%rsp), %rbx
	movl	$3, %esi
	movq	%rbx, %rdi
	vzeroupper
	callq	_fact_memzero64
	leaq	88(%rsp), %rdi
	movl	$3, %esi
	callq	_fact_memzero64
	leaq	112(%rsp), %rdi
	movl	$2, %esi
	callq	_fact_memzero64
	movq	$0, 128(%rsp)
	leaq	136(%rsp), %rdi
	movl	$16, %esi
	callq	_fact_memzero
	movb	$0, 152(%rsp)
	movq	40(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_poly1305_init
	movq	48(%rsp), %rsi
	movl	36(%rsp), %edx
	movq	%rbx, %rdi
	callq	_poly1305_update
	movq	56(%rsp), %rsi
	movq	%rbx, %rdi
	callq	_poly1305_finish
	movl	$0, 32(%rsp)
	xorl	%eax, %eax
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	_crypto_onetimeauth_poly1305, .Lfunc_end13-_crypto_onetimeauth_poly1305
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_onetimeauth_poly1305_verify
	.type	_crypto_onetimeauth_poly1305_verify,@function
_crypto_onetimeauth_poly1305_verify:    # @_crypto_onetimeauth_poly1305_verify
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$64, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -16
	movq	%rdi, 16(%rsp)
	movq	%rsi, 40(%rsp)
	movl	%edx, 28(%rsp)
	movq	%rcx, 32(%rsp)
	movb	$0, 14(%rsp)
	movb	$1, 15(%rsp)
	leaq	48(%rsp), %rbx
	movq	%rbx, %rdi
	callq	_crypto_onetimeauth_poly1305
	movq	16(%rsp), %rdi
	movq	%rbx, %rsi
	callq	_crypto_verify_16
	movzbl	%al, %edi
	callq	fact.declassify.i1
	andb	$1, %al
	movb	%al, 14(%rsp)
	movb	14(%rsp), %al
	addq	$64, %rsp
	popq	%rbx
	retq
.Lfunc_end14:
	.size	_crypto_onetimeauth_poly1305_verify, .Lfunc_end14-_crypto_onetimeauth_poly1305_verify
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fact.declassify.i1
	.type	fact.declassify.i1,@function
fact.declassify.i1:                     # @fact.declassify.i1
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%edi, %eax
	retq
.Lfunc_end15:
	.size	fact.declassify.i1, .Lfunc_end15-fact.declassify.i1
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_core_salsa20
	.type	_crypto_core_salsa20,@function
_crypto_core_salsa20:                   # @_crypto_core_salsa20
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$360, %rsp              # imm = 0x168
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -104(%rbp)
	movq	%rdx, -88(%rbp)
	movb	$1, -89(%rbp)
	movl	$1634760805, -32(%rbp)  # imm = 0x61707865
	movl	$857760878, -28(%rbp)   # imm = 0x3320646E
	movl	$2036477234, -24(%rbp)  # imm = 0x79622D32
	movl	$1797285236, -20(%rbp)  # imm = 0x6B206574
	movl	$1634760805, -172(%rbp) # imm = 0x61707865
	movl	$857760878, -168(%rbp)  # imm = 0x3320646E
	movl	$2036477234, -164(%rbp) # imm = 0x79622D32
	movl	$1797285236, -160(%rbp) # imm = 0x6B206574
	movq	%rdx, -368(%rbp)
	movq	%rdx, -360(%rbp)
	movq	%rdx, %rdi
	callq	_load32_le
	movl	%eax, -72(%rbp)
	movq	-88(%rbp), %rdi
	addq	$4, %rdi
	movq	%rdi, -352(%rbp)
	movq	%rdi, -344(%rbp)
	callq	_load32_le
	movl	%eax, -68(%rbp)
	movq	-88(%rbp), %rdi
	addq	$8, %rdi
	movq	%rdi, -336(%rbp)
	movq	%rdi, -328(%rbp)
	callq	_load32_le
	movl	%eax, -64(%rbp)
	movq	-88(%rbp), %rdi
	addq	$12, %rdi
	movq	%rdi, -320(%rbp)
	movq	%rdi, -312(%rbp)
	callq	_load32_le
	movl	%eax, -60(%rbp)
	movq	-88(%rbp), %rdi
	addq	$16, %rdi
	movq	%rdi, -304(%rbp)
	movq	%rdi, -296(%rbp)
	callq	_load32_le
	movl	%eax, -56(%rbp)
	movq	-88(%rbp), %rdi
	addq	$20, %rdi
	movq	%rdi, -288(%rbp)
	movq	%rdi, -280(%rbp)
	callq	_load32_le
	movl	%eax, -52(%rbp)
	movq	-88(%rbp), %rdi
	addq	$24, %rdi
	movq	%rdi, -272(%rbp)
	movq	%rdi, -264(%rbp)
	callq	_load32_le
	movl	%eax, -48(%rbp)
	movq	-88(%rbp), %rdi
	addq	$28, %rdi
	movq	%rdi, -256(%rbp)
	movq	%rdi, -248(%rbp)
	callq	_load32_le
	movl	%eax, -80(%rbp)
	movl	-72(%rbp), %ecx
	movl	%ecx, -156(%rbp)
	movl	-68(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movl	-64(%rbp), %ecx
	movl	%ecx, -148(%rbp)
	movl	-60(%rbp), %ecx
	movl	%ecx, -144(%rbp)
	movl	-56(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-52(%rbp), %ecx
	movl	%ecx, -136(%rbp)
	movl	-48(%rbp), %ecx
	movl	%ecx, -132(%rbp)
	movl	%eax, -128(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-104(%rbp), %rdi
	movq	%rdi, -232(%rbp)
	callq	_load32_le
	movl	%eax, -44(%rbp)
	movq	-104(%rbp), %rdi
	addq	$4, %rdi
	movq	%rdi, -224(%rbp)
	movq	%rdi, -216(%rbp)
	callq	_load32_le
	movl	%eax, -40(%rbp)
	movq	-104(%rbp), %rdi
	addq	$8, %rdi
	movq	%rdi, -208(%rbp)
	movq	%rdi, -200(%rbp)
	callq	_load32_le
	movl	%eax, -36(%rbp)
	movq	-104(%rbp), %rdi
	addq	$12, %rdi
	movq	%rdi, -192(%rbp)
	movq	%rdi, -184(%rbp)
	callq	_load32_le
	movl	%eax, -76(%rbp)
	movl	-44(%rbp), %ecx
	movl	%ecx, -124(%rbp)
	movl	-40(%rbp), %ecx
	movl	%ecx, -120(%rbp)
	movl	-36(%rbp), %ecx
	movl	%ecx, -116(%rbp)
	movl	%eax, -112(%rbp)
	movl	$0, -108(%rbp)
	cmpl	$9, -108(%rbp)
	ja	.LBB16_3
	.p2align	4, 0x90
.LBB16_2:                               # %loop_body
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %ebx
	movl	-32(%rbp), %edi
	addl	-52(%rbp), %edi
	movl	$7, %esi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -60(%rbp)
	movl	-36(%rbp), %ebx
	addl	-32(%rbp), %eax
	movl	$9, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -36(%rbp)
	movl	-52(%rbp), %ebx
	addl	-60(%rbp), %eax
	movl	$13, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -52(%rbp)
	movl	-32(%rbp), %ebx
	addl	-36(%rbp), %eax
	movl	$18, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -32(%rbp)
	movl	-76(%rbp), %ebx
	movl	-28(%rbp), %edi
	addl	-72(%rbp), %edi
	movl	$7, %esi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -76(%rbp)
	movl	-48(%rbp), %ebx
	addl	-28(%rbp), %eax
	movl	$9, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -48(%rbp)
	movl	-72(%rbp), %ebx
	addl	-76(%rbp), %eax
	movl	$13, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -72(%rbp)
	movl	-28(%rbp), %ebx
	addl	-48(%rbp), %eax
	movl	$18, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -28(%rbp)
	movl	-80(%rbp), %ebx
	movl	-24(%rbp), %edi
	addl	-44(%rbp), %edi
	movl	$7, %esi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -80(%rbp)
	movl	-68(%rbp), %ebx
	addl	-24(%rbp), %eax
	movl	$9, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -68(%rbp)
	movl	-44(%rbp), %ebx
	addl	-80(%rbp), %eax
	movl	$13, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -44(%rbp)
	movl	-24(%rbp), %ebx
	addl	-68(%rbp), %eax
	movl	$18, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -24(%rbp)
	movl	-64(%rbp), %ebx
	movl	-20(%rbp), %edi
	addl	-56(%rbp), %edi
	movl	$7, %esi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -64(%rbp)
	movl	-40(%rbp), %ebx
	addl	-20(%rbp), %eax
	movl	$9, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -40(%rbp)
	movl	-56(%rbp), %ebx
	addl	-64(%rbp), %eax
	movl	$13, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -56(%rbp)
	movl	-20(%rbp), %ebx
	addl	-40(%rbp), %eax
	movl	$18, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -20(%rbp)
	movl	-72(%rbp), %ebx
	movl	-32(%rbp), %edi
	addl	-64(%rbp), %edi
	movl	$7, %esi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -72(%rbp)
	movl	-68(%rbp), %ebx
	addl	-32(%rbp), %eax
	movl	$9, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -68(%rbp)
	movl	-64(%rbp), %ebx
	addl	-72(%rbp), %eax
	movl	$13, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -64(%rbp)
	movl	-32(%rbp), %ebx
	addl	-68(%rbp), %eax
	movl	$18, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -32(%rbp)
	movl	-44(%rbp), %ebx
	movl	-28(%rbp), %edi
	addl	-60(%rbp), %edi
	movl	$7, %esi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %ebx
	addl	-28(%rbp), %eax
	movl	$9, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -40(%rbp)
	movl	-60(%rbp), %ebx
	addl	-44(%rbp), %eax
	movl	$13, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -60(%rbp)
	movl	-28(%rbp), %ebx
	addl	-40(%rbp), %eax
	movl	$18, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -28(%rbp)
	movl	-56(%rbp), %ebx
	movl	-24(%rbp), %edi
	addl	-76(%rbp), %edi
	movl	$7, %esi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -56(%rbp)
	movl	-36(%rbp), %ebx
	addl	-24(%rbp), %eax
	movl	$9, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -36(%rbp)
	movl	-76(%rbp), %ebx
	addl	-56(%rbp), %eax
	movl	$13, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -76(%rbp)
	movl	-24(%rbp), %ebx
	addl	-36(%rbp), %eax
	movl	$18, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -24(%rbp)
	movl	-52(%rbp), %ebx
	movl	-20(%rbp), %edi
	addl	-80(%rbp), %edi
	movl	$7, %esi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -52(%rbp)
	movl	-48(%rbp), %ebx
	addl	-20(%rbp), %eax
	movl	$9, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -48(%rbp)
	movl	-80(%rbp), %ebx
	addl	-52(%rbp), %eax
	movl	$13, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -80(%rbp)
	movl	-20(%rbp), %ebx
	addl	-48(%rbp), %eax
	movl	$18, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -20(%rbp)
	addl	$1, -108(%rbp)
	cmpl	$9, -108(%rbp)
	jbe	.LBB16_2
.LBB16_3:                               # %loop_end
	movq	-16(%rbp), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	-16(%rbp), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	-32(%rbp), %esi
	addl	-172(%rbp), %esi
	callq	_store32_le
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	-16(%rbp), %rdi
	addq	$4, %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	-72(%rbp), %esi
	addl	-156(%rbp), %esi
	callq	_store32_le
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	-16(%rbp), %rdi
	addq	$8, %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	-68(%rbp), %esi
	addl	-152(%rbp), %esi
	callq	_store32_le
	movq	-16(%rbp), %rax
	addq	$12, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	-16(%rbp), %rdi
	addq	$12, %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	-64(%rbp), %esi
	addl	-148(%rbp), %esi
	callq	_store32_le
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	-16(%rbp), %rdi
	addq	$16, %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	-60(%rbp), %esi
	addl	-144(%rbp), %esi
	callq	_store32_le
	movq	-16(%rbp), %rax
	addq	$20, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	-16(%rbp), %rdi
	addq	$20, %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	-28(%rbp), %esi
	addl	-168(%rbp), %esi
	callq	_store32_le
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	-16(%rbp), %rdi
	addq	$24, %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	-44(%rbp), %esi
	addl	-124(%rbp), %esi
	callq	_store32_le
	movq	-16(%rbp), %rax
	addq	$28, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	-16(%rbp), %rdi
	addq	$28, %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	-40(%rbp), %esi
	addl	-120(%rbp), %esi
	callq	_store32_le
	movq	-16(%rbp), %rax
	addq	$32, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	-16(%rbp), %rdi
	addq	$32, %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	-36(%rbp), %esi
	addl	-116(%rbp), %esi
	callq	_store32_le
	movq	-16(%rbp), %rax
	addq	$36, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	-16(%rbp), %rdi
	addq	$36, %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	-76(%rbp), %esi
	addl	-112(%rbp), %esi
	callq	_store32_le
	movq	-16(%rbp), %rax
	addq	$40, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	-16(%rbp), %rdi
	addq	$40, %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	-24(%rbp), %esi
	addl	-164(%rbp), %esi
	callq	_store32_le
	movq	-16(%rbp), %rax
	addq	$44, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	-16(%rbp), %rdi
	addq	$44, %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	-56(%rbp), %esi
	addl	-140(%rbp), %esi
	callq	_store32_le
	movq	-16(%rbp), %rax
	addq	$48, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	-16(%rbp), %rdi
	addq	$48, %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	-52(%rbp), %esi
	addl	-136(%rbp), %esi
	callq	_store32_le
	movq	-16(%rbp), %rax
	addq	$52, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	-16(%rbp), %rdi
	addq	$52, %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	-48(%rbp), %esi
	addl	-132(%rbp), %esi
	callq	_store32_le
	movq	-16(%rbp), %rax
	addq	$56, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	-16(%rbp), %rdi
	addq	$56, %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	-80(%rbp), %esi
	addl	-128(%rbp), %esi
	callq	_store32_le
	movq	-16(%rbp), %rax
	addq	$60, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	-16(%rbp), %rdi
	addq	$60, %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	-20(%rbp), %esi
	addl	-160(%rbp), %esi
	callq	_store32_le
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end16:
	.size	_crypto_core_salsa20, .Lfunc_end16-_crypto_core_salsa20
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _load32_le
	.type	_load32_le,@function
_load32_le:                             # @_load32_le
	.cfi_startproc
# %bb.0:                                # %entry
	movl	(%rdi), %eax
	retq
.Lfunc_end17:
	.size	_load32_le, .Lfunc_end17-_load32_le
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function __rotl32
	.type	__rotl32,@function
__rotl32:                               # @__rotl32
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, %ecx
	roll	%cl, %edi
	movl	%edi, %eax
	retq
.Lfunc_end18:
	.size	__rotl32, .Lfunc_end18-__rotl32
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _store32_le
	.type	_store32_le,@function
_store32_le:                            # @_store32_le
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, (%rdi)
	retq
.Lfunc_end19:
	.size	_store32_le, .Lfunc_end19-_store32_le
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_stream_salsa20
	.type	_crypto_stream_salsa20,@function
_crypto_stream_salsa20:                 # @_crypto_stream_salsa20
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
	subq	$88, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, -72(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -96(%rbp)
	movq	%rcx, -88(%rbp)
	movl	$0, -60(%rbp)
	movb	$1, -53(%rbp)
	testl	%esi, %esi
	je	.LBB20_15
# %bb.1:                                # %branchmerge
	movq	%rsp, %rax
	leaq	-32(%rax), %r14
	movq	%r14, %rsp
	movq	-88(%rbp), %rcx
	vmovups	(%rcx), %ymm0
	vmovups	%ymm0, -32(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rbx
	movq	%rbx, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, -16(%rax)
	movl	$0, -48(%rbp)
	cmpl	$7, -48(%rbp)
	ja	.LBB20_4
	.p2align	4, 0x90
.LBB20_3:                               # %loop_body
                                        # =>This Inner Loop Header: Depth=1
	movslq	-48(%rbp), %rax
	movq	-96(%rbp), %rcx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, (%rbx,%rax)
	addl	$1, -48(%rbp)
	cmpl	$7, -48(%rbp)
	jbe	.LBB20_3
.LBB20_4:                               # %loop_end
	movl	-52(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, -44(%rbp)
	movl	$0, -28(%rbp)
	jmp	.LBB20_5
	.p2align	4, 0x90
.LBB20_9:                               # %loop_end28
                                        #   in Loop: Header=BB20_5 Depth=1
	addl	$1, -28(%rbp)
.LBB20_5:                               # %loop_check13
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_8 Depth 2
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jae	.LBB20_10
# %bb.6:                                # %loop_body14
                                        #   in Loop: Header=BB20_5 Depth=1
	movl	-28(%rbp), %eax
	shll	$6, %eax
	cltq
	addq	-72(%rbp), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movl	-28(%rbp), %eax
	shll	$6, %eax
	movslq	%eax, %rdi
	addq	-72(%rbp), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movq	%rbx, %rsi
	movq	%r14, %rdx
	vzeroupper
	callq	_crypto_core_salsa20
	movl	$1, -40(%rbp)
	movl	$8, -36(%rbp)
	cmpl	$15, -36(%rbp)
	ja	.LBB20_9
	.p2align	4, 0x90
.LBB20_8:                               # %loop_body27
                                        #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-36(%rbp), %rax
	movzbl	(%rbx,%rax), %ecx
	addl	%ecx, -40(%rbp)
	movzbl	-40(%rbp), %ecx
	movb	%cl, (%rbx,%rax)
	shrl	$8, -40(%rbp)
	addl	$1, -36(%rbp)
	cmpl	$15, -36(%rbp)
	jbe	.LBB20_8
	jmp	.LBB20_9
.LBB20_10:                              # %loop_end15
	movq	%rsp, %r15
	addq	$-64, %r15
	movq	%r15, %rsp
	movl	-44(%rbp), %eax
	shll	$6, %eax
	cmpl	-52(%rbp), %eax
	jae	.LBB20_14
# %bb.11:                               # %thenbranch47
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	vzeroupper
	callq	_crypto_core_salsa20
	movl	-52(%rbp), %eax
	movl	-44(%rbp), %ecx
	shll	$6, %ecx
	subl	%ecx, %eax
	movl	%eax, -76(%rbp)
	movl	%eax, -100(%rbp)
	movslq	%ecx, %rcx
	addq	-72(%rbp), %rcx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movq	%rcx, -16(%rdx)
	movl	$0, -32(%rbp)
	jmp	.LBB20_12
	.p2align	4, 0x90
.LBB20_13:                              # %loop_body61
                                        #   in Loop: Header=BB20_12 Depth=1
	movq	(%rax), %rcx
	movslq	-32(%rbp), %rdx
	movzbl	(%r15,%rdx), %ebx
	movb	%bl, (%rcx,%rdx)
	addl	$1, -32(%rbp)
.LBB20_12:                              # %loop_check60
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %ecx
	cmpl	-76(%rbp), %ecx
	jb	.LBB20_13
.LBB20_14:                              # %branchmerge74
	movl	$64, %esi
	movq	%r15, %rdi
	vzeroupper
	callq	_fact_memzero
	movl	$32, %esi
	movq	%r14, %rdi
	callq	_fact_memzero
.LBB20_15:                              # %thenbranch
	movl	$0, -60(%rbp)
	xorl	%eax, %eax
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	_crypto_stream_salsa20, .Lfunc_end20-_crypto_stream_salsa20
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_stream_salsa20_xor_ic
	.type	_crypto_stream_salsa20_xor_ic,@function
_crypto_stream_salsa20_xor_ic:          # @_crypto_stream_salsa20_xor_ic
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
	subq	$112, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, -104(%rbp)
	movl	%esi, -132(%rbp)
	movq	%rdx, -96(%rbp)
	movl	%ecx, -72(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -112(%rbp)
	movl	$0, -80(%rbp)
	movb	$1, -73(%rbp)
	testl	%ecx, %ecx
	je	.LBB21_21
# %bb.1:                                # %branchmerge
	movq	-112(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	%rsp, %rax
	leaq	-32(%rax), %r14
	movq	%r14, %rsp
	movq	16(%rbp), %rcx
	vmovups	(%rcx), %ymm0
	vmovups	%ymm0, -32(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %r12
	movq	%r12, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, -16(%rax)
	movl	$0, -68(%rbp)
	cmpl	$7, -68(%rbp)
	ja	.LBB21_4
	.p2align	4, 0x90
.LBB21_3:                               # %loop_body
                                        # =>This Inner Loop Header: Depth=1
	movslq	-68(%rbp), %rax
	movq	-120(%rbp), %rcx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, (%r12,%rax)
	addl	$1, -68(%rbp)
	cmpl	$7, -68(%rbp)
	jbe	.LBB21_3
.LBB21_4:                               # %loop_end
	movl	$8, -64(%rbp)
	cmpl	$15, -64(%rbp)
	ja	.LBB21_7
	.p2align	4, 0x90
.LBB21_6:                               # %loop_body19
                                        # =>This Inner Loop Header: Depth=1
	movslq	-64(%rbp), %rax
	movzbl	-88(%rbp), %ecx
	movb	%cl, (%r12,%rax)
	shrq	$8, -88(%rbp)
	addl	$1, -64(%rbp)
	cmpl	$15, -64(%rbp)
	jbe	.LBB21_6
.LBB21_7:                               # %loop_end20
	movl	-72(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, -36(%rbp)
	movq	%rsp, %r15
	addq	$-64, %r15
	movq	%r15, %rsp
	movl	$0, -40(%rbp)
	jmp	.LBB21_8
	.p2align	4, 0x90
.LBB21_15:                              # %loop_end63
                                        #   in Loop: Header=BB21_8 Depth=1
	addl	$1, -40(%rbp)
.LBB21_8:                               # %loop_check31
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_11 Depth 2
                                        #     Child Loop BB21_14 Depth 2
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jae	.LBB21_16
# %bb.9:                                # %loop_body32
                                        #   in Loop: Header=BB21_8 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	vzeroupper
	callq	_crypto_core_salsa20
	movl	-40(%rbp), %eax
	shll	$6, %eax
	movslq	%eax, %rcx
	addq	-104(%rbp), %rcx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movq	%rcx, -16(%rdx)
	movl	-40(%rbp), %ecx
	shll	$6, %ecx
	movslq	%ecx, %rdx
	addq	-96(%rbp), %rdx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movq	%rdx, -16(%rsi)
	movl	$0, -60(%rbp)
	cmpl	$63, -60(%rbp)
	ja	.LBB21_12
	.p2align	4, 0x90
.LBB21_11:                              # %loop_body45
                                        #   Parent Loop BB21_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rdx
	movslq	-60(%rbp), %rsi
	movq	(%rcx), %rdi
	movzbl	(%rdi,%rsi), %ebx
	xorb	(%r15,%rsi), %bl
	movb	%bl, (%rdx,%rsi)
	addl	$1, -60(%rbp)
	cmpl	$63, -60(%rbp)
	jbe	.LBB21_11
.LBB21_12:                              # %loop_end46
                                        #   in Loop: Header=BB21_8 Depth=1
	movl	$1, -56(%rbp)
	movl	$8, -52(%rbp)
	cmpl	$15, -52(%rbp)
	ja	.LBB21_15
	.p2align	4, 0x90
.LBB21_14:                              # %loop_body62
                                        #   Parent Loop BB21_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-52(%rbp), %rax
	movzbl	(%r12,%rax), %ecx
	addl	%ecx, -56(%rbp)
	movzbl	-56(%rbp), %ecx
	movb	%cl, (%r12,%rax)
	shrl	$8, -56(%rbp)
	addl	$1, -52(%rbp)
	cmpl	$15, -52(%rbp)
	jbe	.LBB21_14
	jmp	.LBB21_15
.LBB21_16:                              # %loop_end33
	movl	-36(%rbp), %eax
	shll	$6, %eax
	cmpl	-72(%rbp), %eax
	jae	.LBB21_20
# %bb.17:                               # %thenbranch83
	movl	-72(%rbp), %eax
	movl	-36(%rbp), %ecx
	shll	$6, %ecx
	subl	%ecx, %eax
	movl	%eax, -48(%rbp)
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	vzeroupper
	callq	_crypto_core_salsa20
	movl	-48(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-36(%rbp), %eax
	shll	$6, %eax
	movslq	%eax, %rcx
	addq	-104(%rbp), %rcx
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rax
	movq	%rax, %rsp
	movq	%rcx, -16(%rdx)
	movl	-48(%rbp), %ecx
	movl	%ecx, -124(%rbp)
	movl	-36(%rbp), %ecx
	shll	$6, %ecx
	movslq	%ecx, %rdx
	addq	-96(%rbp), %rdx
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rcx
	movq	%rcx, %rsp
	movq	%rdx, -16(%rsi)
	movl	$0, -44(%rbp)
	jmp	.LBB21_18
	.p2align	4, 0x90
.LBB21_19:                              # %loop_body101
                                        #   in Loop: Header=BB21_18 Depth=1
	movq	(%rax), %rdx
	movslq	-44(%rbp), %rsi
	movq	(%rcx), %rdi
	movzbl	(%rdi,%rsi), %ebx
	xorb	(%r15,%rsi), %bl
	movb	%bl, (%rdx,%rsi)
	addl	$1, -44(%rbp)
.LBB21_18:                              # %loop_check100
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %edx
	cmpl	-48(%rbp), %edx
	jb	.LBB21_19
.LBB21_20:                              # %branchmerge120
	movl	$64, %esi
	movq	%r15, %rdi
	vzeroupper
	callq	_memzero
	movl	$32, %esi
	movq	%r14, %rdi
	callq	_memzero
.LBB21_21:                              # %thenbranch
	movl	$0, -80(%rbp)
	xorl	%eax, %eax
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	_crypto_stream_salsa20_xor_ic, .Lfunc_end21-_crypto_stream_salsa20_xor_ic
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_core_hsalsa20
	.type	_crypto_core_hsalsa20,@function
_crypto_core_hsalsa20:                  # @_crypto_core_hsalsa20
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$296, %rsp              # imm = 0x128
	.cfi_offset %rbx, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -104(%rbp)
	movq	%rdx, -88(%rbp)
	movb	$1, -89(%rbp)
	movl	$1634760805, -24(%rbp)  # imm = 0x61707865
	movl	$857760878, -20(%rbp)   # imm = 0x3320646E
	movl	$2036477234, -16(%rbp)  # imm = 0x79622D32
	movl	$1797285236, -12(%rbp)  # imm = 0x6B206574
	movq	%rdx, -296(%rbp)
	movq	%rdx, -288(%rbp)
	movq	%rdx, %rdi
	callq	_load32_le
	movl	%eax, -80(%rbp)
	movq	-88(%rbp), %rdi
	addq	$4, %rdi
	movq	%rdi, -280(%rbp)
	movq	%rdi, -272(%rbp)
	callq	_load32_le
	movl	%eax, -76(%rbp)
	movq	-88(%rbp), %rdi
	addq	$8, %rdi
	movq	%rdi, -264(%rbp)
	movq	%rdi, -256(%rbp)
	callq	_load32_le
	movl	%eax, -72(%rbp)
	movq	-88(%rbp), %rdi
	addq	$12, %rdi
	movq	%rdi, -248(%rbp)
	movq	%rdi, -240(%rbp)
	callq	_load32_le
	movl	%eax, -68(%rbp)
	movq	-88(%rbp), %rdi
	addq	$16, %rdi
	movq	%rdi, -232(%rbp)
	movq	%rdi, -224(%rbp)
	callq	_load32_le
	movl	%eax, -64(%rbp)
	movq	-88(%rbp), %rdi
	addq	$20, %rdi
	movq	%rdi, -216(%rbp)
	movq	%rdi, -208(%rbp)
	callq	_load32_le
	movl	%eax, -60(%rbp)
	movq	-88(%rbp), %rdi
	addq	$24, %rdi
	movq	%rdi, -200(%rbp)
	movq	%rdi, -192(%rbp)
	callq	_load32_le
	movl	%eax, -56(%rbp)
	movq	-88(%rbp), %rdi
	addq	$28, %rdi
	movq	%rdi, -184(%rbp)
	movq	%rdi, -176(%rbp)
	callq	_load32_le
	movl	%eax, -52(%rbp)
	movq	-104(%rbp), %rdi
	movq	%rdi, -168(%rbp)
	movq	%rdi, -160(%rbp)
	callq	_load32_le
	movl	%eax, -48(%rbp)
	movq	-104(%rbp), %rdi
	addq	$4, %rdi
	movq	%rdi, -152(%rbp)
	movq	%rdi, -144(%rbp)
	callq	_load32_le
	movl	%eax, -44(%rbp)
	movq	-104(%rbp), %rdi
	addq	$8, %rdi
	movq	%rdi, -136(%rbp)
	movq	%rdi, -128(%rbp)
	callq	_load32_le
	movl	%eax, -40(%rbp)
	movq	-104(%rbp), %rdi
	addq	$12, %rdi
	movq	%rdi, -120(%rbp)
	movq	%rdi, -112(%rbp)
	callq	_load32_le
	movl	%eax, -36(%rbp)
	movl	$0, -96(%rbp)
	cmpl	$9, -96(%rbp)
	ja	.LBB22_3
	.p2align	4, 0x90
.LBB22_2:                               # %loop_body
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %ebx
	movl	-24(%rbp), %edi
	addl	-60(%rbp), %edi
	movl	$7, %esi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -68(%rbp)
	movl	-40(%rbp), %ebx
	addl	-24(%rbp), %eax
	movl	$9, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -40(%rbp)
	movl	-60(%rbp), %ebx
	addl	-68(%rbp), %eax
	movl	$13, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -60(%rbp)
	movl	-24(%rbp), %ebx
	addl	-40(%rbp), %eax
	movl	$18, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -24(%rbp)
	movl	-36(%rbp), %ebx
	movl	-20(%rbp), %edi
	addl	-80(%rbp), %edi
	movl	$7, %esi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -36(%rbp)
	movl	-56(%rbp), %ebx
	addl	-20(%rbp), %eax
	movl	$9, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -56(%rbp)
	movl	-80(%rbp), %ebx
	addl	-36(%rbp), %eax
	movl	$13, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -80(%rbp)
	movl	-20(%rbp), %ebx
	addl	-56(%rbp), %eax
	movl	$18, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -20(%rbp)
	movl	-52(%rbp), %ebx
	movl	-16(%rbp), %edi
	addl	-48(%rbp), %edi
	movl	$7, %esi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -52(%rbp)
	movl	-76(%rbp), %ebx
	addl	-16(%rbp), %eax
	movl	$9, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -76(%rbp)
	movl	-48(%rbp), %ebx
	addl	-52(%rbp), %eax
	movl	$13, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -48(%rbp)
	movl	-16(%rbp), %ebx
	addl	-76(%rbp), %eax
	movl	$18, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -16(%rbp)
	movl	-72(%rbp), %ebx
	movl	-12(%rbp), %edi
	addl	-64(%rbp), %edi
	movl	$7, %esi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -72(%rbp)
	movl	-44(%rbp), %ebx
	addl	-12(%rbp), %eax
	movl	$9, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -44(%rbp)
	movl	-64(%rbp), %ebx
	addl	-72(%rbp), %eax
	movl	$13, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -64(%rbp)
	movl	-12(%rbp), %ebx
	addl	-44(%rbp), %eax
	movl	$18, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -12(%rbp)
	movl	-80(%rbp), %ebx
	movl	-24(%rbp), %edi
	addl	-72(%rbp), %edi
	movl	$7, %esi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -80(%rbp)
	movl	-76(%rbp), %ebx
	addl	-24(%rbp), %eax
	movl	$9, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -76(%rbp)
	movl	-72(%rbp), %ebx
	addl	-80(%rbp), %eax
	movl	$13, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -72(%rbp)
	movl	-24(%rbp), %ebx
	addl	-76(%rbp), %eax
	movl	$18, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -24(%rbp)
	movl	-48(%rbp), %ebx
	movl	-20(%rbp), %edi
	addl	-68(%rbp), %edi
	movl	$7, %esi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %ebx
	addl	-20(%rbp), %eax
	movl	$9, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -44(%rbp)
	movl	-68(%rbp), %ebx
	addl	-48(%rbp), %eax
	movl	$13, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -68(%rbp)
	movl	-20(%rbp), %ebx
	addl	-44(%rbp), %eax
	movl	$18, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -20(%rbp)
	movl	-64(%rbp), %ebx
	movl	-16(%rbp), %edi
	addl	-36(%rbp), %edi
	movl	$7, %esi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -64(%rbp)
	movl	-40(%rbp), %ebx
	addl	-16(%rbp), %eax
	movl	$9, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %ebx
	addl	-64(%rbp), %eax
	movl	$13, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -36(%rbp)
	movl	-16(%rbp), %ebx
	addl	-40(%rbp), %eax
	movl	$18, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -16(%rbp)
	movl	-60(%rbp), %ebx
	movl	-12(%rbp), %edi
	addl	-52(%rbp), %edi
	movl	$7, %esi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %ebx
	addl	-12(%rbp), %eax
	movl	$9, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -56(%rbp)
	movl	-52(%rbp), %ebx
	addl	-60(%rbp), %eax
	movl	$13, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -52(%rbp)
	movl	-12(%rbp), %ebx
	addl	-56(%rbp), %eax
	movl	$18, %esi
	movl	%eax, %edi
	callq	__rotl32
	xorl	%ebx, %eax
	movl	%eax, -12(%rbp)
	addl	$1, -96(%rbp)
	cmpl	$9, -96(%rbp)
	jbe	.LBB22_2
.LBB22_3:                               # %loop_end
	movq	-32(%rbp), %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	-32(%rbp), %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	-24(%rbp), %esi
	callq	_store32_le
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	-32(%rbp), %rdi
	addq	$4, %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	-20(%rbp), %esi
	callq	_store32_le
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	-32(%rbp), %rdi
	addq	$8, %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	-16(%rbp), %esi
	callq	_store32_le
	movq	-32(%rbp), %rax
	addq	$12, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	-32(%rbp), %rdi
	addq	$12, %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	-12(%rbp), %esi
	callq	_store32_le
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	-32(%rbp), %rdi
	addq	$16, %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	-48(%rbp), %esi
	callq	_store32_le
	movq	-32(%rbp), %rax
	addq	$20, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	-32(%rbp), %rdi
	addq	$20, %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	-44(%rbp), %esi
	callq	_store32_le
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	-32(%rbp), %rdi
	addq	$24, %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	-40(%rbp), %esi
	callq	_store32_le
	movq	-32(%rbp), %rax
	addq	$28, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movq	-32(%rbp), %rdi
	addq	$28, %rdi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rdi, -16(%rax)
	movl	-36(%rbp), %esi
	callq	_store32_le
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end22:
	.size	_crypto_core_hsalsa20, .Lfunc_end22-_crypto_core_hsalsa20
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_stream_xsalsa20
	.type	_crypto_stream_xsalsa20,@function
_crypto_stream_xsalsa20:                # @_crypto_stream_xsalsa20
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$112, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -16
	movq	%rdi, 32(%rsp)
	movl	%esi, 20(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rcx, 72(%rsp)
	movl	$0, 16(%rsp)
	movb	$1, 11(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rdx, 56(%rsp)
	leaq	80(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	callq	_crypto_core_hsalsa20
	movq	32(%rsp), %rdi
	movl	20(%rsp), %esi
	movq	24(%rsp), %rdx
	addq	$16, %rdx
	movq	%rdx, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%rbx, %rcx
	callq	_crypto_stream_salsa20
	movl	%eax, 12(%rsp)
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	_fact_memzero
	movl	12(%rsp), %eax
	movl	%eax, 16(%rsp)
	addq	$112, %rsp
	popq	%rbx
	retq
.Lfunc_end23:
	.size	_crypto_stream_xsalsa20, .Lfunc_end23-_crypto_stream_xsalsa20
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_stream_xsalsa20_xor_ic
	.type	_crypto_stream_xsalsa20_xor_ic,@function
_crypto_stream_xsalsa20_xor_ic:         # @_crypto_stream_xsalsa20_xor_ic
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$128, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -16
	movq	%rdi, 64(%rsp)
	movl	%esi, 36(%rsp)
	movq	%rdx, 56(%rsp)
	movl	%ecx, 32(%rsp)
	movq	%r8, 48(%rsp)
	movq	%r9, 40(%rsp)
	movb	$1, 23(%rsp)
	movq	%r8, 88(%rsp)
	movl	$0, 28(%rsp)
	movq	%r8, 80(%rsp)
	movq	144(%rsp), %rdx
	leaq	96(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r8, %rsi
	callq	_crypto_core_hsalsa20
	movq	48(%rsp), %r8
	addq	$16, %r8
	movq	%r8, 72(%rsp)
	movq	64(%rsp), %rdi
	movl	36(%rsp), %esi
	movq	56(%rsp), %rdx
	movl	32(%rsp), %ecx
	movq	40(%rsp), %r9
	movq	%rbx, (%rsp)
	callq	_crypto_stream_salsa20_xor_ic
	movl	%eax, 24(%rsp)
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	_fact_memzero
	movl	24(%rsp), %eax
	movl	%eax, 28(%rsp)
	addq	$128, %rsp
	popq	%rbx
	retq
.Lfunc_end24:
	.size	_crypto_stream_xsalsa20_xor_ic, .Lfunc_end24-_crypto_stream_xsalsa20_xor_ic
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_stream_xsalsa20_xor
	.type	_crypto_stream_xsalsa20_xor,@function
_crypto_stream_xsalsa20_xor:            # @_crypto_stream_xsalsa20_xor
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 48(%rsp)
	movl	%esi, 20(%rsp)
	movq	%rdx, 40(%rsp)
	movl	%ecx, 16(%rsp)
	movq	%r8, 32(%rsp)
	movq	%r9, 24(%rsp)
	movl	$0, 12(%rsp)
	movb	$1, 11(%rsp)
	movq	%r9, (%rsp)
	xorl	%r9d, %r9d
	callq	_crypto_stream_xsalsa20_xor_ic
	movl	%eax, 12(%rsp)
	addq	$56, %rsp
	retq
.Lfunc_end25:
	.size	_crypto_stream_xsalsa20_xor, .Lfunc_end25-_crypto_stream_xsalsa20_xor
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_secretbox_xsalsa20poly1305
	.type	_crypto_secretbox_xsalsa20poly1305,@function
_crypto_secretbox_xsalsa20poly1305:     # @_crypto_secretbox_xsalsa20poly1305
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -64(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -48(%rbp)
	movb	$0, -1(%rbp)
	movb	$1, -9(%rbp)
	cmpl	$31, %ecx
	jbe	.LBB26_1
# %bb.3:                                # %branchmerge
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movq	-64(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movq	-56(%rbp), %r8
	movq	-48(%rbp), %r9
	callq	_crypto_stream_xsalsa20_xor
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rsp, %rdx
	leaq	-16(%rdx), %rsp
	movq	%rax, -16(%rdx)
	movl	-28(%rbp), %eax
	addl	$-32, %eax
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rsp
	movq	%rax, -16(%rsi)
	movq	-24(%rbp), %rcx
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rcx, -16(%rax)
	movq	-16(%rdx), %rdi
	movq	-16(%rsi), %rsi
	movl	-32(%rbp), %edx
	callq	_crypto_onetimeauth_poly1305
	movl	$0, -8(%rbp)
	cmpl	$15, -8(%rbp)
	jg	.LBB26_6
	.p2align	4, 0x90
.LBB26_5:                               # %loop_body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movslq	-8(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	addl	$1, -8(%rbp)
	cmpl	$15, -8(%rbp)
	jle	.LBB26_5
.LBB26_6:                               # %loop_end
	movb	$1, -1(%rbp)
	jmp	.LBB26_2
.LBB26_1:                               # %thenbranch
	movb	$0, -1(%rbp)
.LBB26_2:                               # %thenbranch
	movb	-1(%rbp), %al
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	_crypto_secretbox_xsalsa20poly1305, .Lfunc_end26-_crypto_secretbox_xsalsa20poly1305
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_secretbox_xsalsa20poly1305_open
	.type	_crypto_secretbox_xsalsa20poly1305_open,@function
_crypto_secretbox_xsalsa20poly1305_open: # @_crypto_secretbox_xsalsa20poly1305_open
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, -64(%rbp)
	movl	%esi, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -48(%rbp)
	movb	$0, -9(%rbp)
	movb	$1, -17(%rbp)
	cmpl	$31, %ecx
	jbe	.LBB27_1
# %bb.3:                                # %branchmerge
	movq	%rsp, %rbx
	addq	$-32, %rbx
	movq	%rbx, %rsp
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	_crypto_stream_xsalsa20
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rsp
	movq	%rax, -16(%rcx)
	movl	-24(%rbp), %eax
	addl	$-32, %eax
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rsi
	addq	$32, %rsi
	movq	%rsp, %rax
	leaq	-16(%rax), %rsp
	movq	%rsi, -16(%rax)
	movq	-16(%rcx), %rdi
	movl	-36(%rbp), %edx
	movq	%rbx, %rcx
	callq	_crypto_onetimeauth_poly1305_verify
	notb	%al
	testb	$1, %al
	jne	.LBB27_1
# %bb.4:                                # %branchmerge21
	movq	-64(%rbp), %rdi
	movl	-40(%rbp), %esi
	movq	-32(%rbp), %rdx
	movl	-24(%rbp), %ecx
	movq	-56(%rbp), %r8
	movq	-48(%rbp), %r9
	callq	_crypto_stream_xsalsa20_xor
	movl	$0, -16(%rbp)
	cmpl	$31, -16(%rbp)
	ja	.LBB27_7
	.p2align	4, 0x90
.LBB27_6:                               # %loop_body
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	addl	$1, -16(%rbp)
	cmpl	$31, -16(%rbp)
	jbe	.LBB27_6
.LBB27_7:                               # %loop_end
	movb	$1, -9(%rbp)
	jmp	.LBB27_2
.LBB27_1:                               # %thenbranch
	movb	$0, -9(%rbp)
.LBB27_2:                               # %thenbranch
	movb	-9(%rbp), %al
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end27:
	.size	_crypto_secretbox_xsalsa20poly1305_open, .Lfunc_end27-_crypto_secretbox_xsalsa20poly1305_open
	.cfi_endproc
                                        # -- End function
	.globl	_crypto_secretbox       # -- Begin function _crypto_secretbox
	.p2align	4, 0x90
	.type	_crypto_secretbox,@function
_crypto_secretbox:                      # @_crypto_secretbox
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 48(%rsp)
	movl	%esi, 20(%rsp)
	movq	%rdx, 40(%rsp)
	movl	%ecx, 16(%rsp)
	movq	%r8, 32(%rsp)
	movq	%r9, 24(%rsp)
	movb	$0, 14(%rsp)
	movb	$1, 15(%rsp)
	callq	_crypto_secretbox_xsalsa20poly1305
	andb	$1, %al
	movb	%al, 14(%rsp)
	movb	14(%rsp), %al
	addq	$56, %rsp
	retq
.Lfunc_end28:
	.size	_crypto_secretbox, .Lfunc_end28-_crypto_secretbox
	.cfi_endproc
                                        # -- End function
	.globl	_crypto_secretbox_open  # -- Begin function _crypto_secretbox_open
	.p2align	4, 0x90
	.type	_crypto_secretbox_open,@function
_crypto_secretbox_open:                 # @_crypto_secretbox_open
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 48(%rsp)
	movl	%esi, 20(%rsp)
	movq	%rdx, 40(%rsp)
	movl	%ecx, 16(%rsp)
	movq	%r8, 32(%rsp)
	movq	%r9, 24(%rsp)
	movb	$0, 14(%rsp)
	movb	$1, 15(%rsp)
	callq	_crypto_secretbox_xsalsa20poly1305_open
	andb	$1, %al
	movb	%al, 14(%rsp)
	movb	14(%rsp), %al
	addq	$56, %rsp
	retq
.Lfunc_end29:
	.size	_crypto_secretbox_open, .Lfunc_end29-_crypto_secretbox_open
	.cfi_endproc
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
