	.text
	.file	"Module"
	.p2align	4, 0x90         # -- Begin function _mpi_sub_hlp
	.type	_mpi_sub_hlp,@function
_mpi_sub_hlp:                           # @_mpi_sub_hlp
# %bb.0:                                # %entry
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	testq	%rdi, %rdi
	je	.LBB0_1
# %bb.2:                                # %.lr.ph7.preheader
	xorl	%r10d, %r10d
	movl	$1, %r11d
	xorl	%r12d, %r12d
	xorl	%r14d, %r14d
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB0_3:                                # %.lr.ph7
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdx,%r12,8), %rbp
	movq	%rbp, %r15
	subq	%r9, %r15
	setb	%bl
	#APP
	testb	%bl, %bl
	movq	%r10, %r13
	cmovneq	%r11, %r13
	#NO_APP
	#APP
	testb	%r8b, %r8b
	cmovneq	%r15, %rbp
	#NO_APP
	movq	%rbp, (%rdx,%r12,8)
	#APP
	testb	%r8b, %r8b
	cmovneq	%r13, %r14
	#NO_APP
	movq	%rbp, %r15
	subq	(%rsi,%r12,8), %r15
	setb	%bl
	#APP
	testb	%bl, %bl
	movq	%r10, %rax
	cmovneq	%r11, %rax
	#NO_APP
	addq	%r14, %rax
	#APP
	testb	%r8b, %r8b
	cmovneq	%rax, %r9
	#NO_APP
	#APP
	testb	%r8b, %r8b
	cmovneq	%r15, %rbp
	#NO_APP
	movq	%rbp, (%rdx,%r12,8)
	addq	$1, %r12
	cmpq	%r12, %rdi
	jne	.LBB0_3
# %bb.4:                                # %._crit_edge8
	cmpq	%rcx, %rdi
	jb	.LBB0_5
	jmp	.LBB0_7
.LBB0_1:
	xorl	%r9d, %r9d
	xorl	%r14d, %r14d
	cmpq	%rcx, %rdi
	jae	.LBB0_7
.LBB0_5:                                # %.lr.ph.preheader
	leaq	(%rdx,%rdi,8), %rdx
	subq	%rdi, %rcx
	movl	$1, %r10d
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_6:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdx), %rax
	movq	%rax, %rbp
	subq	%r9, %rbp
	setb	%bl
	#APP
	testb	%bl, %bl
	movq	%rdi, %rsi
	cmovneq	%r10, %rsi
	#NO_APP
	#APP
	testb	%r8b, %r8b
	cmovneq	%rbp, %rax
	#NO_APP
	movq	%rax, (%rdx)
	#APP
	testb	%r8b, %r8b
	cmovneq	%rsi, %r14
	#NO_APP
	#APP
	testb	%r8b, %r8b
	cmovneq	%r14, %r9
	#NO_APP
	addq	$8, %rdx
	addq	$-1, %rcx
	jne	.LBB0_6
.LBB0_7:                                # %._crit_edge
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_mpi_sub_hlp, .Lfunc_end0-_mpi_sub_hlp
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _mpi_montmul
	.type	_mpi_montmul,@function
_mpi_montmul:                           # @_mpi_montmul
# %bb.0:                                # %entry
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movq	%r9, %r15
	movq	%r8, %r13
	movq	%rcx, %r12
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %rbp
	movq	160(%rsp), %r14
	movq	152(%rsp), %rbx
	movq	144(%rsp), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	cmpq	%r15, %r12
	movq	%r15, %rax
	cmovbq	%r12, %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	testq	%r14, %r14
	je	.LBB1_2
# %bb.1:                                # %.lr.ph26
	leaq	(,%r14,8), %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	memset@PLT
.LBB1_2:                                # %._crit_edge27
	testq	%r15, %r15
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movq	%rbp, (%rsp)            # 8-byte Spill
	je	.LBB1_22
# %bb.3:                                # %.lr.ph23
	leaq	1(%r15), %rsi
	notq	%r12
	notq	%r15
	cmpq	%r15, %r12
	cmovaq	%r12, %r15
	movq	$-2, %r9
	subq	%r15, %r9
	xorl	%r12d, %r12d
	movl	$1, %r10d
	movq	%r14, 48(%rsp)          # 8-byte Spill
	movq	%r14, %r8
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	.p2align	4, 0x90
.LBB1_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
                                        #     Child Loop BB1_12 Depth 2
                                        #     Child Loop BB1_14 Depth 2
                                        #     Child Loop BB1_17 Depth 2
	movq	(%rbp,%rcx,8), %r11
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, %r14
	imulq	%r11, %r14
	addq	(%rbx,%rcx,8), %r14
	movq	48(%rsp), %rdx          # 8-byte Reload
	subq	%rcx, %rdx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	cmpq	$0, 8(%rsp)             # 8-byte Folded Reload
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	je	.LBB1_9
# %bb.5:                                # %.lr.ph5.i
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	%r13, %rsi
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	jmp	.LBB1_7
	.p2align	4, 0x90
.LBB1_6:                                # %._crit_edge37
                                        #   in Loop: Header=BB1_7 Depth=2
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	8(%rax,%rbp,8), %rax
	addq	$1, %rbp
.LBB1_7:                                #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mulq	%r11
	addq	%r15, %rax
	setb	%cl
	#APP
	testb	%cl, %cl
	movq	%r12, %r13
	cmovneq	%r10, %r13
	#NO_APP
	addq	(%rdi,%rbp,8), %rax
	setb	%cl
	#APP
	testb	%cl, %cl
	movq	%r12, %r15
	cmovneq	%r10, %r15
	#NO_APP
	addq	%r13, %r15
	addq	%rdx, %r15
	movq	%rax, (%rdi,%rbp,8)
	cmpq	%rbp, %r9
	jne	.LBB1_6
# %bb.8:                                #   in Loop: Header=BB1_4 Depth=1
	movq	%rsi, %r13
	jmp	.LBB1_10
	.p2align	4, 0x90
.LBB1_9:                                #   in Loop: Header=BB1_4 Depth=1
	xorl	%r15d, %r15d
.LBB1_10:                               # %._crit_edge6.i
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	cmpq	%rax, 8(%rsp)           # 8-byte Folded Reload
	jae	.LBB1_13
# %bb.11:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	8(%rsp), %rax           # 8-byte Reload
	.p2align	4, 0x90
.LBB1_12:                               # %.lr.ph.i
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	%r15, (%rdi,%rax,8)
	setb	%cl
	#APP
	testb	%cl, %cl
	movq	%r12, %r15
	cmovneq	%r10, %r15
	#NO_APP
	addq	$1, %rax
	cmpq	%rax, %r8
	jne	.LBB1_12
.LBB1_13:                               # %.lr.ph5.i1
                                        #   in Loop: Header=BB1_4 Depth=1
	imulq	72(%rsp), %r14          # 8-byte Folded Reload
	xorl	%ecx, %ecx
	xorl	%ebp, %ebp
	movq	24(%rsp), %r15          # 8-byte Reload
	.p2align	4, 0x90
.LBB1_14:                               #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rax
	mulq	(%r13,%rcx,8)
	addq	%rbp, %rax
	setb	%bl
	#APP
	testb	%bl, %bl
	movq	%r12, %rsi
	cmovneq	%r10, %rsi
	#NO_APP
	addq	(%rdi,%rcx,8), %rax
	setb	%bl
	#APP
	testb	%bl, %bl
	movq	%r12, %rbp
	cmovneq	%r10, %rbp
	#NO_APP
	addq	%rsi, %rbp
	addq	%rdx, %rbp
	movq	%rax, (%rdi,%rcx,8)
	addq	$1, %rcx
	cmpq	%rcx, %r15
	jne	.LBB1_14
# %bb.15:                               # %._crit_edge6.i7
                                        #   in Loop: Header=BB1_4 Depth=1
	cmpq	%r15, 32(%rsp)          # 8-byte Folded Reload
	jbe	.LBB1_18
# %bb.16:                               # %.lr.ph.i8.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	%r15, %rax
	.p2align	4, 0x90
.LBB1_17:                               # %.lr.ph.i8
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	%rbp, (%rdi,%rax,8)
	setb	%cl
	#APP
	testb	%cl, %cl
	movq	%r12, %rbp
	cmovneq	%r10, %rbp
	#NO_APP
	addq	$1, %rax
	cmpq	%rax, %r8
	jne	.LBB1_17
.LBB1_18:                               # %_mpi_mul_hlp.exit12
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	64(%rsp), %rbx          # 8-byte Reload
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	%r11, (%rbx,%rcx,8)
	movq	56(%rsp), %rsi          # 8-byte Reload
	leaq	(%rsi,%rcx), %rax
	addq	$1, %rax
	addq	$1, %rcx
	movq	$0, (%rbx,%rax,8)
	addq	$8, %rdi
	addq	$-1, %r8
	cmpq	%r15, %rcx
	movq	(%rsp), %rbp            # 8-byte Reload
	jne	.LBB1_4
# %bb.19:                               # %._crit_edge24
	testq	%rsi, %rsi
	je	.LBB1_40
# %bb.20:                               # %.lr.ph
	cmpq	$4, %rsi
	jae	.LBB1_23
	jmp	.LBB1_21
.LBB1_22:
	movl	$1, %esi
	cmpq	$4, %rsi
	jb	.LBB1_21
.LBB1_23:                               # %vector.memcheck
	leaq	(%rsi,%r15), %rax
	leaq	(%rbx,%rax,8), %rax
	cmpq	%rbp, %rax
	jbe	.LBB1_26
# %bb.24:                               # %vector.memcheck
	leaq	(,%rsi,8), %rax
	addq	%rbp, %rax
	leaq	(%rbx,%r15,8), %rcx
	cmpq	%rax, %rcx
	jae	.LBB1_26
.LBB1_21:
	xorl	%eax, %eax
.LBB1_34:                               # %scalar.ph.preheader
	leaq	-1(%rsi), %r8
	subq	%rax, %r8
	movq	%rsi, %rdx
	andq	$3, %rdx
	je	.LBB1_37
# %bb.35:                               # %scalar.ph.prol.preheader
	leaq	(%rbx,%r15,8), %rcx
	negq	%rdx
	.p2align	4, 0x90
.LBB1_36:                               # %scalar.ph.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rax,8), %rdi
	movq	%rdi, (%rbp,%rax,8)
	addq	$1, %rax
	addq	$1, %rdx
	jne	.LBB1_36
.LBB1_37:                               # %scalar.ph.prol.loopexit
	cmpq	$3, %r8
	jb	.LBB1_40
# %bb.38:                               # %scalar.ph.preheader.new
	leaq	(%rbx,%r15,8), %rcx
	addq	$24, %rcx
	.p2align	4, 0x90
.LBB1_39:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rcx,%rax,8), %rdx
	movq	%rdx, (%rbp,%rax,8)
	movq	-16(%rcx,%rax,8), %rdx
	movq	%rdx, 8(%rbp,%rax,8)
	movq	-8(%rcx,%rax,8), %rdx
	movq	%rdx, 16(%rbp,%rax,8)
	movq	(%rcx,%rax,8), %rdx
	movq	%rdx, 24(%rbp,%rax,8)
	addq	$4, %rax
	cmpq	%rax, %rsi
	jne	.LBB1_39
	jmp	.LBB1_40
.LBB1_26:                               # %vector.ph
	movq	%rsi, %rax
	andq	$-4, %rax
	leaq	-4(%rax), %rdi
	movq	%rdi, %rdx
	shrq	$2, %rdx
	leal	1(%rdx), %r8d
	andl	$3, %r8d
	cmpq	$12, %rdi
	jae	.LBB1_28
# %bb.27:
	xorl	%edx, %edx
	testq	%r8, %r8
	jne	.LBB1_31
	jmp	.LBB1_33
.LBB1_28:                               # %vector.ph.new
	leaq	(%rbx,%r15,8), %rcx
	addq	$112, %rcx
	leaq	-1(%r8), %rdi
	subq	%rdx, %rdi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_29:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-112(%rcx,%rdx,8), %xmm0
	movups	-96(%rcx,%rdx,8), %xmm1
	movups	%xmm0, (%rbp,%rdx,8)
	movups	%xmm1, 16(%rbp,%rdx,8)
	movups	-80(%rcx,%rdx,8), %xmm0
	movups	-64(%rcx,%rdx,8), %xmm1
	movups	%xmm0, 32(%rbp,%rdx,8)
	movups	%xmm1, 48(%rbp,%rdx,8)
	movups	-48(%rcx,%rdx,8), %xmm0
	movups	-32(%rcx,%rdx,8), %xmm1
	movups	%xmm0, 64(%rbp,%rdx,8)
	movups	%xmm1, 80(%rbp,%rdx,8)
	movups	-16(%rcx,%rdx,8), %xmm0
	movups	(%rcx,%rdx,8), %xmm1
	movups	%xmm0, 96(%rbp,%rdx,8)
	movups	%xmm1, 112(%rbp,%rdx,8)
	addq	$16, %rdx
	addq	$4, %rdi
	jne	.LBB1_29
# %bb.30:                               # %middle.block.unr-lcssa
	testq	%r8, %r8
	je	.LBB1_33
.LBB1_31:                               # %vector.body.epil.preheader
	leaq	16(,%rdx,8), %rcx
	addq	%rbp, %rcx
	addq	%r15, %rdx
	leaq	(%rbx,%rdx,8), %rdx
	addq	$16, %rdx
	negq	%r8
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_32:                               # %vector.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movups	-16(%rdx,%rdi), %xmm0
	movups	(%rdx,%rdi), %xmm1
	movups	%xmm0, -16(%rcx,%rdi)
	movups	%xmm1, (%rcx,%rdi)
	addq	$32, %rdi
	addq	$1, %r8
	jne	.LBB1_32
.LBB1_33:                               # %middle.block
	cmpq	%rax, %rsi
	jne	.LBB1_34
.LBB1_40:                               # %._crit_edge
	xorl	%ecx, %ecx
	movq	16(%rsp), %rax          # 8-byte Reload
	testq	%rax, %rax
	je	.LBB1_43
# %bb.41:                               # %.lr.ph36.i.preheader
	movq	%rax, %rdx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB1_42:                               # %.lr.ph36.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%r14, %r14
	sete	%bl
	xorl	%esi, %esi
	cmpq	$0, -8(%rbp,%rdx,8)
	setne	%sil
	#APP
	testb	%bl, %bl
	movl	%ecx, %edi
	cmovnel	%esi, %edi
	#NO_APP
	andl	$1, %edi
	#APP
	testb	%dil, %dil
	cmovneq	%rdx, %r14
	#NO_APP
	addq	$-1, %rdx
	jne	.LBB1_42
	jmp	.LBB1_44
.LBB1_43:
	xorl	%r14d, %r14d
.LBB1_44:                               # %._crit_edge37.i
	xorl	%edi, %edi
	testq	%r15, %r15
	je	.LBB1_47
# %bb.45:                               # %.lr.ph31.i.preheader
	movq	%r15, %rcx
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB1_46:                               # %.lr.ph31.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbp, %rbp
	sete	%dl
	xorl	%esi, %esi
	cmpq	$0, -8(%r13,%rcx,8)
	setne	%sil
	#APP
	testb	%dl, %dl
	movl	%edi, %ebx
	cmovnel	%esi, %ebx
	#NO_APP
	andl	$1, %ebx
	#APP
	testb	%bl, %bl
	cmovneq	%rcx, %rbp
	#NO_APP
	addq	$-1, %rcx
	jne	.LBB1_46
	jmp	.LBB1_48
.LBB1_47:
	xorl	%ebp, %ebp
.LBB1_48:                               # %._crit_edge32.i
	testq	%r14, %r14
	sete	%cl
	xorl	%edx, %edx
	testq	%rbp, %rbp
	sete	%dl
	#APP
	testb	%cl, %cl
	movl	%edi, %esi
	cmovnel	%edx, %esi
	#NO_APP
	andl	$1, %esi
	xorl	%ecx, %ecx
	#APP
	testb	%sil, %sil
	cmovnel	%ecx, %ecx
	#NO_APP
	movl	$1, %edx
	#APP
	testb	%sil, %sil
	cmovnel	%edi, %edx
	#NO_APP
	andl	$1, %edx
	cmpq	%rbp, %r14
	seta	%bl
	movl	$1, %esi
	andb	%dl, %bl
	#APP
	testb	%bl, %bl
	cmovnel	%esi, %ecx
	#NO_APP
	movl	%edx, %r11d
	#APP
	testb	%bl, %bl
	cmovnel	%edi, %r11d
	#NO_APP
	movl	%r11d, %r12d
	andl	$1, %r12d
	cmpq	%r14, %rbp
	seta	%bl
	andl	%edx, %r11d
	setne	%dl
	andb	%bl, %dl
	movl	$-1, %esi
	#APP
	testb	%dl, %dl
	cmovnel	%esi, %ecx
	#NO_APP
	#APP
	testb	%dl, %dl
	cmovnel	%edi, %r12d
	#NO_APP
	cmpq	%r15, %rax
	cmovbq	%rax, %r15
	andl	%r12d, %r11d
	testq	%r15, %r15
	je	.LBB1_51
# %bb.49:                               # %.lr.ph.i14.preheader
	movl	%r12d, %ebx
	andl	$1, %ebx
	xorl	%r10d, %r10d
	movq	%r15, %rdi
	movl	$-1, %r9d
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_50:                               # %.lr.ph.i14
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r14, %rdi
	setbe	%al
	movq	(%rsp), %rdx            # 8-byte Reload
	movq	-8(%rdx,%rdi,8), %rbp
	cmpq	-8(%r13,%rdi,8), %rbp
	seta	%bpl
	setb	%r8b
	testl	%r11d, %r12d
	setne	%r12b
	andb	%al, %r8b
	andb	%r12b, %al
	andb	%bpl, %al
	movq	(%rsp), %rdx            # 8-byte Reload
	movl	$1, %ebp
	#APP
	testb	%al, %al
	cmovnel	%ebp, %ecx
	#NO_APP
	#APP
	testb	%al, %al
	cmovnel	%r10d, %ebx
	#NO_APP
	andl	$1, %ebx
	andb	%r12b, %r8b
	andb	%bl, %r8b
	#APP
	testb	%r8b, %r8b
	cmovnel	%r9d, %ecx
	#NO_APP
	#APP
	testb	%r8b, %r8b
	cmovnel	%r10d, %ebx
	#NO_APP
	movl	%ebx, %r12d
	addq	$1, %rsi
	andl	$1, %ebx
	addq	$-1, %rdi
	cmpq	%rsi, %r15
	ja	.LBB1_50
	jmp	.LBB1_52
.LBB1_51:
	movq	(%rsp), %rdx            # 8-byte Reload
.LBB1_52:                               # %_mbedtls_mpi_cmp_abs.exit
	testl	%r11d, %r12d
	setne	%al
	xorl	%esi, %esi
	#APP
	testb	%al, %al
	cmovnel	%esi, %ecx
	#NO_APP
	xorl	%r8d, %r8d
	testl	%ecx, %ecx
	setns	%r8b
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rsi
	movq	16(%rsp), %rcx          # 8-byte Reload
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_mpi_sub_hlp            # TAILCALL
.Lfunc_end1:
	.size	_mpi_montmul, .Lfunc_end1-_mpi_montmul
                                        # -- End function
	.globl	_f_mpi_exp_mod          # -- Begin function _f_mpi_exp_mod
	.p2align	4, 0x90
	.type	_f_mpi_exp_mod,@function
_f_mpi_exp_mod:                         # @_f_mpi_exp_mod
# %bb.0:                                # %entry
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movq	%r9, 72(%rsp)           # 8-byte Spill
	movl	%r8d, 60(%rsp)          # 4-byte Spill
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbp
	movq	176(%rsp), %r9
	movq	168(%rsp), %rbx
	movq	208(%rsp), %r8
	cmpq	%r9, %r15
	movq	%r9, %rax
	cmovbq	%r15, %rax
	testq	%rax, %rax
	je	.LBB2_3
# %bb.1:                                # %.lr.ph3.i.preheader
	xorl	%ecx, %ecx
	movb	$1, %dl
	.p2align	4, 0x90
.LBB2_2:                                # %.lr.ph3.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx,%rcx,8), %rsi
	movq	(%rbp,%rcx,8), %rdi
	#APP
	testb	%dl, %dl
	cmovneq	%rsi, %rdi
	#NO_APP
	movq	%rdi, (%rbp,%rcx,8)
	addq	$1, %rcx
	cmpq	%rax, %rcx
	jb	.LBB2_2
.LBB2_3:                                # %._crit_edge4.i
	shrq	$4, %r8
	movq	%r8, 8(%rsp)            # 8-byte Spill
	cmpq	%r9, %r15
	jbe	.LBB2_6
# %bb.4:                                # %.lr.ph.i.preheader
	xorl	%ecx, %ecx
	movb	$1, %dl
	.p2align	4, 0x90
.LBB2_5:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbp,%rax,8), %rsi
	#APP
	testb	%dl, %dl
	cmovneq	%rcx, %rsi
	#NO_APP
	movq	%rsi, (%rbp,%rax,8)
	addq	$1, %rax
	cmpq	%r15, %rax
	jb	.LBB2_5
.LBB2_6:                                # %_mpi_copy.exit
	movq	200(%rsp), %rbx
	movq	$1, 48(%rsp)
	subq	$8, %rsp
	leaq	56(%rsp), %rdx
	movl	$1, %ecx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	160(%rsp), %r8
	movq	168(%rsp), %r9
	pushq	200(%rsp)
	pushq	200(%rsp)
	pushq	256(%rsp)
	callq	_mpi_montmul
	addq	$32, %rsp
	movl	8(%rsp), %esi           # 4-byte Reload
	cmpq	%r15, %rsi
	movq	%r15, %rax
	cmovbq	%rsi, %rax
	testq	%rax, %rax
	je	.LBB2_9
# %bb.7:                                # %.lr.ph3.i3.preheader
	xorl	%ecx, %ecx
	movb	$1, %r8b
	.p2align	4, 0x90
.LBB2_8:                                # %.lr.ph3.i3
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbp,%rcx,8), %rdx
	movq	(%rbx,%rcx,8), %rdi
	#APP
	testb	%r8b, %r8b
	cmovneq	%rdx, %rdi
	#NO_APP
	movq	%rdi, (%rbx,%rcx,8)
	addq	$1, %rcx
	cmpq	%rax, %rcx
	jb	.LBB2_8
.LBB2_9:                                # %._crit_edge4.i5
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	cmpq	%r15, %rsi
	jbe	.LBB2_12
# %bb.10:                               # %.lr.ph.i6.preheader
	xorl	%ecx, %ecx
	movb	$1, %dl
	.p2align	4, 0x90
.LBB2_11:                               # %.lr.ph.i6
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx,%rax,8), %rdi
	#APP
	testb	%dl, %dl
	cmovneq	%rcx, %rdi
	#NO_APP
	movq	%rdi, (%rbx,%rax,8)
	addq	$1, %rax
	cmpq	%rsi, %rax
	jb	.LBB2_11
.LBB2_12:                               # %_mpi_copy.exit8
	leaq	(%rbx,%rsi,8), %rdi
	cmpq	%r12, %rsi
	movq	%r12, %rax
	cmovbq	%rsi, %rax
	testq	%rax, %rax
	movq	176(%rsp), %rcx
	movq	168(%rsp), %rdx
	je	.LBB2_15
# %bb.13:                               # %.lr.ph3.i10.preheader
	xorl	%ebp, %ebp
	movb	$1, %r8b
	.p2align	4, 0x90
.LBB2_14:                               # %.lr.ph3.i10
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14,%rbp,8), %r9
	movq	(%rdi,%rbp,8), %rbx
	#APP
	testb	%r8b, %r8b
	cmovneq	%r9, %rbx
	#NO_APP
	movq	%rbx, (%rdi,%rbp,8)
	addq	$1, %rbp
	cmpq	%rax, %rbp
	jb	.LBB2_14
.LBB2_15:                               # %._crit_edge4.i12
	movq	%r15, 24(%rsp)          # 8-byte Spill
	cmpq	%r12, %rsi
	jbe	.LBB2_18
# %bb.16:                               # %.lr.ph.i13.preheader
	xorl	%r8d, %r8d
	movb	$1, %bl
	.p2align	4, 0x90
.LBB2_17:                               # %.lr.ph.i13
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%rax,8), %rbp
	#APP
	testb	%bl, %bl
	cmovneq	%r8, %rbp
	#NO_APP
	movq	%rbp, (%rdi,%rax,8)
	addq	$1, %rax
	cmpq	%rsi, %rax
	jb	.LBB2_17
.LBB2_18:                               # %_mpi_copy.exit15
	movq	224(%rsp), %r12
	movq	216(%rsp), %r15
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	%rax, 32(%rsp)          # 8-byte Spill
	subq	$8, %rsp
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movq	160(%rsp), %r8
	movq	168(%rsp), %r9
	pushq	200(%rsp)
	pushq	200(%rsp)
	pushq	256(%rsp)
	movq	%rsi, %rbx
	callq	_mpi_montmul
	addq	$32, %rsp
	movl	$-1, %r8d
	addl	$2, %r8d
	movq	8(%rsp), %rcx           # 8-byte Reload
	imull	%ecx, %r8d
	leal	(%rcx,%rcx), %r13d
	movl	$2, %eax
	movb	$1, %r14b
	.p2align	4, 0x90
.LBB2_19:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_21 Depth 2
	movq	%rax, (%rsp)            # 8-byte Spill
                                        # kill: def %eax killed %eax killed %rax def %rax
	imull	%ecx, %eax
	movq	200(%rsp), %rdx
	leaq	(%rdx,%rax,8), %rdi
	testq	%rbx, %rbx
	movq	%rbx, %rsi
	je	.LBB2_22
# %bb.20:                               # %.lr.ph3.i16.preheader
                                        #   in Loop: Header=BB2_19 Depth=1
	movl	%r8d, %eax
	leaq	(%rdx,%rax,8), %rax
	movl	%r13d, %ecx
	leaq	(%rdx,%rcx,8), %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB2_21:                               # %.lr.ph3.i16
                                        #   Parent Loop BB2_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax,%rdx,8), %rbp
	movq	(%rcx,%rdx,8), %rbx
	#APP
	testb	%r14b, %r14b
	cmovneq	%rbp, %rbx
	#NO_APP
	movq	%rbx, (%rcx,%rdx,8)
	addq	$1, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB2_21
.LBB2_22:                               # %_mpi_copy.exit19
                                        #   in Loop: Header=BB2_19 Depth=1
	subq	$8, %rsp
	movq	48(%rsp), %rdx          # 8-byte Reload
	movq	%rsi, %rcx
	movl	%r8d, %ebp
	movq	160(%rsp), %r8
	movq	168(%rsp), %r9
	pushq	200(%rsp)
	pushq	200(%rsp)
	pushq	256(%rsp)
	movq	%rsi, %rbx
	callq	_mpi_montmul
	movl	%ebp, %r8d
	addq	$32, %rsp
	movq	(%rsp), %rax            # 8-byte Reload
	addq	$1, %rax
	movq	8(%rsp), %rcx           # 8-byte Reload
	addl	%ecx, %r8d
	addl	%ecx, %r13d
	cmpq	$16, %rax
	jne	.LBB2_19
# %bb.23:
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	cmpq	$0, 144(%rsp)
	movq	16(%rsp), %rdi          # 8-byte Reload
	je	.LBB2_36
# %bb.24:                               # %.lr.ph
	movq	32(%rsp), %rax          # 8-byte Reload
	addq	144(%rsp), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	64(%rsp), %r13          # 8-byte Reload
	cmpq	%r12, %r13
	cmovaq	%r12, %r13
	xorl	%r14d, %r14d
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB2_25:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_26 Depth 2
                                        #       Child Loop BB2_27 Depth 3
                                        #         Child Loop BB2_29 Depth 4
                                        #         Child Loop BB2_32 Depth 4
	movq	32(%rsp), %rax          # 8-byte Reload
                                        # kill: def %eax killed %eax killed %rax def %rax
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	subl	%ecx, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	$1, %eax
	movq	192(%rsp), %rbp
	movq	232(%rsp), %rbx
	.p2align	4, 0x90
.LBB2_26:                               #   Parent Loop BB2_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_27 Depth 3
                                        #         Child Loop BB2_29 Depth 4
                                        #         Child Loop BB2_32 Depth 4
	movq	%rax, (%rsp)            # 8-byte Spill
	subq	$8, %rsp
	movq	%rbp, %r11
	movq	%rdi, %rbp
	movq	%rbx, %r10
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	movq	160(%rsp), %rax
	movq	%rax, %r8
	movq	168(%rsp), %rax
	movq	%rax, %r9
	pushq	%r11
	movq	200(%rsp), %rax
	pushq	%rax
	pushq	%r10
	callq	_mpi_montmul
	addq	$24, %rsp
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	movq	160(%rsp), %r8
	movq	168(%rsp), %r9
	pushq	200(%rsp)
	pushq	200(%rsp)
	pushq	256(%rsp)
	callq	_mpi_montmul
	addq	$24, %rsp
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	movq	160(%rsp), %r8
	movq	168(%rsp), %r9
	pushq	200(%rsp)
	pushq	200(%rsp)
	pushq	256(%rsp)
	callq	_mpi_montmul
	addq	$24, %rsp
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	movq	160(%rsp), %r8
	movq	168(%rsp), %r9
	pushq	200(%rsp)
	pushq	200(%rsp)
	pushq	256(%rsp)
	callq	_mpi_montmul
	addq	$32, %rsp
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	(%rax,%rcx,8), %rax
	movq	(%rsp), %rcx            # 8-byte Reload
	leal	(,%rcx,4), %edx
	movl	$64, %ecx
	subl	%edx, %ecx
                                        # kill: def %cl killed %cl killed %ecx
	shrq	%cl, %rax
	andl	$15, %eax
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	8(%rsp), %r9            # 8-byte Reload
	movq	200(%rsp), %r10
	movq	64(%rsp), %r11          # 8-byte Reload
	.p2align	4, 0x90
.LBB2_27:                               #   Parent Loop BB2_25 Depth=1
                                        #     Parent Loop BB2_26 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_29 Depth 4
                                        #         Child Loop BB2_32 Depth 4
	testq	%r13, %r13
	je	.LBB2_30
# %bb.28:                               # %.lr.ph3.i33.preheader
                                        #   in Loop: Header=BB2_27 Depth=3
	movl	%r8d, %esi
	leaq	(%r10,%rsi,8), %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB2_29:                               # %.lr.ph3.i33
                                        #   Parent Loop BB2_25 Depth=1
                                        #     Parent Loop BB2_26 Depth=2
                                        #       Parent Loop BB2_27 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpq	%rdx, %rax
	sete	%cl
	movq	(%rsi,%rdi,8), %rbx
	movq	(%r15,%rdi,8), %rbp
	#APP
	testb	%cl, %cl
	cmovneq	%rbx, %rbp
	#NO_APP
	movq	%rbp, (%r15,%rdi,8)
	addq	$1, %rdi
	cmpq	%r13, %rdi
	jb	.LBB2_29
.LBB2_30:                               # %._crit_edge4.i35
                                        #   in Loop: Header=BB2_27 Depth=3
	cmpq	%r12, %r11
	jae	.LBB2_33
# %bb.31:                               # %.lr.ph.i36.preheader
                                        #   in Loop: Header=BB2_27 Depth=3
	movq	%r13, %rsi
	.p2align	4, 0x90
.LBB2_32:                               # %.lr.ph.i36
                                        #   Parent Loop BB2_25 Depth=1
                                        #     Parent Loop BB2_26 Depth=2
                                        #       Parent Loop BB2_27 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpq	%rdx, %rax
	sete	%cl
	movq	(%r15,%rsi,8), %rdi
	#APP
	testb	%cl, %cl
	cmovneq	%r14, %rdi
	#NO_APP
	movq	%rdi, (%r15,%rsi,8)
	addq	$1, %rsi
	cmpq	%r12, %rsi
	jb	.LBB2_32
.LBB2_33:                               # %_mpi_copy.exit38
                                        #   in Loop: Header=BB2_27 Depth=3
	addq	$1, %rdx
	addl	%r9d, %r8d
	cmpq	$16, %rdx
	jne	.LBB2_27
# %bb.34:                               #   in Loop: Header=BB2_26 Depth=2
	subq	$8, %rsp
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%r15, %rdx
	movq	%r12, %rcx
	movq	160(%rsp), %rax
	movq	%rax, %r8
	movq	168(%rsp), %rax
	movq	%rax, %r9
	movq	200(%rsp), %rbp
	pushq	%rbp
	movq	200(%rsp), %rbx
	pushq	%rbx
	movq	256(%rsp), %rbx
	pushq	%rbx
	callq	_mpi_montmul
	movq	48(%rsp), %rdi          # 8-byte Reload
	addq	$32, %rsp
	movq	(%rsp), %rax            # 8-byte Reload
	addq	$1, %rax
	cmpq	$17, %rax
	jne	.LBB2_26
# %bb.35:                               #   in Loop: Header=BB2_25 Depth=1
	movq	80(%rsp), %rcx          # 8-byte Reload
	addq	$1, %rcx
	cmpq	144(%rsp), %rcx
	jne	.LBB2_25
.LBB2_36:                               # %._crit_edge
	movq	$1, 48(%rsp)
	subq	$8, %rsp
	leaq	56(%rsp), %rdx
	movl	$1, %ecx
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	160(%rsp), %r13
	movq	%r13, %r8
	movq	168(%rsp), %rbp
	movq	%rbp, %r9
	movq	200(%rsp), %r15
	pushq	%r15
	movq	200(%rsp), %r12
	pushq	%r12
	pushq	256(%rsp)
	callq	_mpi_montmul
	addq	$32, %rsp
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	andl	$1, %eax
	movl	60(%rsp), %edx          # 4-byte Reload
	shrl	$31, %edx
	xorl	%ecx, %ecx
	#APP
	testb	%dl, %dl
	movl	%ecx, %r14d
	cmovnel	%eax, %r14d
	#NO_APP
	andl	$1, %r14d
	movl	$-1, %eax
	movl	$1, %ecx
	#APP
	testb	%r14b, %r14b
	cmovnel	%eax, %ecx
	#NO_APP
	movl	%ecx, (%rsp)            # 4-byte Spill
	cmpq	%rbp, %r15
	movq	%rbp, %rax
	cmovbq	%r15, %rax
	testq	%rax, %rax
	je	.LBB2_39
# %bb.37:                               # %.lr.ph3.i22.preheader
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB2_38:                               # %.lr.ph3.i22
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13,%rcx,8), %rdx
	movq	(%r12,%rcx,8), %rsi
	#APP
	testb	%r14b, %r14b
	cmovneq	%rdx, %rsi
	#NO_APP
	movq	%rsi, (%r12,%rcx,8)
	addq	$1, %rcx
	cmpq	%rax, %rcx
	jb	.LBB2_38
.LBB2_39:                               # %._crit_edge4.i24
	cmpq	%rbp, %r15
	jbe	.LBB2_42
# %bb.40:                               # %.lr.ph.i25.preheader
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB2_41:                               # %.lr.ph.i25
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12,%rax,8), %rdx
	#APP
	testb	%r14b, %r14b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, (%r12,%rax,8)
	addq	$1, %rax
	cmpq	%r15, %rax
	jb	.LBB2_41
.LBB2_42:                               # %_mpi_copy.exit27
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movl	%r14d, %r8d
	callq	_mpi_sub_hlp
	testq	%rbx, %rbx
	je	.LBB2_45
# %bb.43:                               # %.lr.ph3.i28.preheader
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB2_44:                               # %.lr.ph3.i28
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12,%rax,8), %rcx
	movq	(%rbp,%rax,8), %rdx
	#APP
	testb	%r14b, %r14b
	cmovneq	%rcx, %rdx
	#NO_APP
	movq	%rdx, (%rbp,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.LBB2_44
.LBB2_45:                               # %_mpi_copy.exit31
	movl	(%rsp), %eax            # 4-byte Reload
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_f_mpi_exp_mod, .Lfunc_end2-_f_mpi_exp_mod
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
