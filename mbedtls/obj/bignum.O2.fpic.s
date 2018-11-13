	.text
	.file	"Module"
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
	subq	$152, %rsp
	movq	%r8, %r14
	movq	%rcx, %rbx
	movq	%rdx, %rcx
	movq	%rsi, %r12
	movq	%rdi, %r13
	movq	224(%rsp), %r15
	movq	216(%rsp), %rdi
	cmpq	%r9, %rbx
	movq	%r9, %rax
	cmovbq	%rbx, %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	testq	%r15, %r15
	movq	%r9, 8(%rsp)            # 8-byte Spill
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	je	.LBB0_2
# %bb.1:                                # %.lr.ph30
	leaq	(,%r15,8), %rdx
	xorl	%esi, %esi
	movq	216(%rsp), %rdi
	callq	memset@PLT
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	216(%rsp), %rdi
	movq	8(%rsp), %r9            # 8-byte Reload
.LBB0_2:                                # %._crit_edge31
	testq	%r9, %r9
	movq	%r12, 24(%rsp)          # 8-byte Spill
	je	.LBB0_32
# %bb.3:                                # %.lr.ph27
	movq	%r13, 32(%rsp)          # 8-byte Spill
	leaq	1(%r9), %rbp
	cmpq	%r9, %rbx
	movq	%r9, %rdx
	cmovbq	%rbx, %rdx
	leal	-1(%rdx), %esi
	movq	%r15, %r8
	subq	%r9, %r8
	leaq	-1(%r15), %rax
	subq	%r9, %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movl	%r9d, %eax
	andl	$1, %eax
	andl	$1, %esi
	movq	%r9, %r13
	movq	%rax, 120(%rsp)         # 8-byte Spill
	subq	%rax, %r13
	leaq	8(%rdi), %r10
	notq	%rbx
	movq	%r9, %rax
	notq	%rax
	cmpq	%rax, %rbx
	cmovaq	%rbx, %rax
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	leaq	2(%rax,%rsi), %rsi
	leaq	1(%r15,%rax), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	leaq	(%rdi,%rdx,8), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	movq	%r8, 112(%rsp)          # 8-byte Spill
	movl	%r8d, %eax
	movb	%al, 7(%rsp)            # 1-byte Spill
	movq	%rdi, %r11
	movq	%rbp, 128(%rsp)         # 8-byte Spill
	movq	%rsi, 80(%rsp)          # 8-byte Spill
	jmp	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=1
	movq	%r9, %rax
	cmpq	$3, %r8
	jae	.LBB0_27
	jmp	.LBB0_28
	.p2align	4, 0x90
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_25 Depth 2
                                        #     Child Loop BB0_27 Depth 2
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	(%rax,%rbx,8), %r12
	movq	(%rdi,%rbx,8), %r8
	movq	(%rcx), %rax
	movq	%rax, %rsi
	imulq	%r12, %rsi
	movq	224(%rsp), %rdx
	movq	%rdx, %rbp
	subq	%rbx, %rbp
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	leaq	(%rdi,%rbx,8), %rdi
	movq	72(%rsp), %rbx          # 8-byte Reload
	testq	%rbx, %rbx
	movq	%rbp, 144(%rsp)         # 8-byte Spill
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	movq	%r8, 136(%rsp)          # 8-byte Spill
	je	.LBB0_8
# %bb.6:                                # %.lr.ph5.i
                                        #   in Loop: Header=BB0_5 Depth=1
	mulq	%r12
	movq	%rdx, %r9
	addq	%r8, %rax
	adcq	$0, %r9
	movq	%rax, (%rdi)
	cmpq	$1, %rbx
	jne	.LBB0_9
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movq	16(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB0_15
	.p2align	4, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	xorl	%r9d, %r9d
	movq	16(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB0_15
	.p2align	4, 0x90
.LBB0_9:                                # %._crit_edge44.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	cmpq	$2, 96(%rsp)            # 8-byte Folded Reload
	jne	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$1, %r8d
	movq	16(%rsp), %rbx          # 8-byte Reload
	cmpq	$0, 88(%rsp)            # 8-byte Folded Reload
	jne	.LBB0_14
	jmp	.LBB0_15
.LBB0_11:                               # %._crit_edge44.preheader.new
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	$1, %r8d
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	16(%rsp), %rbx          # 8-byte Reload
	.p2align	4, 0x90
.LBB0_12:                               # %._crit_edge44
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %rax
	mulq	(%rcx,%r8,8)
	xorl	%ebp, %ebp
	addq	%r9, %rax
	setb	%bpl
	addq	-8(%r10,%r8,8), %rax
	adcq	%rdx, %rbp
	movq	%rax, -8(%r10,%r8,8)
	movq	%r12, %rax
	mulq	8(%rcx,%r8,8)
	xorl	%r9d, %r9d
	addq	%rbp, %rax
	setb	%r9b
	addq	(%r10,%r8,8), %rax
	adcq	%rdx, %r9
	movq	%rax, (%r10,%r8,8)
	leaq	(%rdi,%r8), %rax
	addq	$2, %rax
	addq	$2, %r8
	cmpq	$1, %rax
	jne	.LBB0_12
# %bb.13:                               # %._crit_edge6.i.loopexit.unr-lcssa
                                        #   in Loop: Header=BB0_5 Depth=1
	cmpq	$0, 88(%rsp)            # 8-byte Folded Reload
	je	.LBB0_15
.LBB0_14:                               # %._crit_edge44.epil
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	%r12, %rax
	mulq	(%rcx,%r8,8)
	xorl	%ebp, %ebp
	addq	%rax, %r9
	setb	%bpl
	movq	64(%rsp), %rax          # 8-byte Reload
	addq	(%rax,%r8,8), %r9
	movq	%r9, (%rax,%r8,8)
	adcq	%rdx, %rbp
	movq	%rbp, %r9
	.p2align	4, 0x90
.LBB0_15:                               # %._crit_edge6.i
                                        #   in Loop: Header=BB0_5 Depth=1
	addq	136(%rsp), %rsi         # 8-byte Folded Reload
	movq	144(%rsp), %r8          # 8-byte Reload
	cmpq	%r8, 72(%rsp)           # 8-byte Folded Reload
	jae	.LBB0_18
# %bb.16:                               # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	56(%rsp), %rdx          # 8-byte Reload
	.p2align	4, 0x90
.LBB0_17:                               # %.lr.ph.i
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%edi, %edi
	addq	%r9, (%rax)
	setb	%dil
	addq	$8, %rax
	movq	%rdi, %r9
	addq	$-1, %rdx
	jne	.LBB0_17
.LBB0_18:                               # %.lr.ph5.i3
                                        #   in Loop: Header=BB0_5 Depth=1
	imulq	208(%rsp), %rsi
	movq	8(%rsp), %r9            # 8-byte Reload
	xorl	%ebp, %ebp
	xorl	%edi, %edi
	cmpq	$1, %r9
	je	.LBB0_20
	.p2align	4, 0x90
.LBB0_19:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsi, %rax
	mulq	(%r14,%rbp,8)
	xorl	%ecx, %ecx
	addq	%rdi, %rax
	setb	%cl
	addq	-8(%r10,%rbp,8), %rax
	adcq	%rdx, %rcx
	movq	%rax, -8(%r10,%rbp,8)
	movq	%rsi, %rax
	mulq	8(%r14,%rbp,8)
	xorl	%edi, %edi
	addq	%rcx, %rax
	setb	%dil
	addq	(%r10,%rbp,8), %rax
	adcq	%rdx, %rdi
	movq	%rax, (%r10,%rbp,8)
	addq	$2, %rbp
	cmpq	%rbp, %r13
	jne	.LBB0_19
.LBB0_20:                               # %._crit_edge6.i9.unr-lcssa
                                        #   in Loop: Header=BB0_5 Depth=1
	cmpq	$0, 120(%rsp)           # 8-byte Folded Reload
	je	.LBB0_22
# %bb.21:                               # %.epil.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	%rsi, %rax
	mulq	(%r14,%rbp,8)
	xorl	%ecx, %ecx
	addq	%rax, %rdi
	setb	%cl
	movq	64(%rsp), %rax          # 8-byte Reload
	addq	(%rax,%rbp,8), %rdi
	movq	%rdi, (%rax,%rbp,8)
	adcq	%rdx, %rcx
	movq	%rcx, %rdi
.LBB0_22:                               # %._crit_edge6.i9
                                        #   in Loop: Header=BB0_5 Depth=1
	cmpq	%r9, %r8
	jbe	.LBB0_28
# %bb.23:                               # %.lr.ph.i10.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	112(%rsp), %rax         # 8-byte Reload
	subq	%rbx, %rax
	movq	104(%rsp), %r8          # 8-byte Reload
	subq	%rbx, %r8
	testb	$3, %al
	je	.LBB0_4
# %bb.24:                               # %.lr.ph.i10.prol.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	movb	7(%rsp), %al            # 1-byte Reload
	andb	$3, %al
	movzbl	%al, %esi
	negq	%rsi
	movq	%r9, %rax
	.p2align	4, 0x90
.LBB0_25:                               # %.lr.ph.i10.prol
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdi, %rbp
	xorl	%edi, %edi
	movq	(%r11,%rax,8), %rdx
	addq	%rbp, %rdx
	setb	%dil
	movq	%rdx, (%r11,%rax,8)
	addq	$1, %rax
	addq	$1, %rsi
	jne	.LBB0_25
# %bb.26:                               # %.lr.ph.i10.prol.loopexit.unr-lcssa
                                        #   in Loop: Header=BB0_5 Depth=1
	xorl	%edi, %edi
	cmpq	%rbp, %rdx
	setb	%dil
	cmpq	$3, %r8
	jb	.LBB0_28
	.p2align	4, 0x90
.LBB0_27:                               # %.lr.ph.i10
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	%rdi, (%r11,%rax,8)
	movq	8(%r11,%rax,8), %rcx
	movq	16(%r11,%rax,8), %rdx
	adcq	$0, %rcx
	movq	%rcx, 8(%r11,%rax,8)
	adcq	$0, %rdx
	movq	%rdx, 16(%r11,%rax,8)
	movq	24(%r11,%rax,8), %rcx
	adcq	$0, %rcx
	movq	%rcx, 24(%r11,%rax,8)
	setb	%cl
	movzbl	%cl, %edi
	addq	$4, %rax
	cmpq	%rax, %r15
	jne	.LBB0_27
.LBB0_28:                               # %_mpi_mul_hlp.exit14
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	216(%rsp), %rdi
	movq	%r12, (%rdi,%rbx,8)
	movq	128(%rsp), %rbp         # 8-byte Reload
	leaq	(%rbx,%rbp), %rax
	addq	$1, %rax
	addq	$1, %rbx
	movq	$0, (%rdi,%rax,8)
	addq	$8, %r10
	addq	$-1, 56(%rsp)           # 8-byte Folded Spill
	addq	$8, 48(%rsp)            # 8-byte Folded Spill
	addq	$8, %r11
	addb	$3, 7(%rsp)             # 1-byte Folded Spill
	addq	$-1, %r15
	cmpq	%r9, %rbx
	movq	40(%rsp), %rcx          # 8-byte Reload
	jne	.LBB0_5
# %bb.29:                               # %._crit_edge28
	testq	%rbp, %rbp
	movq	24(%rsp), %r12          # 8-byte Reload
	movq	32(%rsp), %r13          # 8-byte Reload
	je	.LBB0_50
# %bb.30:                               # %.lr.ph
	cmpq	$4, %rbp
	jae	.LBB0_33
	jmp	.LBB0_31
.LBB0_32:
	movl	$1, %ebp
	cmpq	$4, %rbp
	jb	.LBB0_31
.LBB0_33:                               # %vector.memcheck
	leaq	(%r9,%rbp), %rax
	leaq	(%rdi,%rax,8), %rax
	cmpq	%r13, %rax
	jbe	.LBB0_36
# %bb.34:                               # %vector.memcheck
	leaq	(,%rbp,8), %rax
	addq	%r13, %rax
	leaq	(%rdi,%r9,8), %rcx
	cmpq	%rax, %rcx
	jae	.LBB0_36
.LBB0_31:
	xorl	%eax, %eax
.LBB0_44:                               # %scalar.ph.preheader
	leaq	-1(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rbp, %rdx
	andq	$3, %rdx
	je	.LBB0_47
# %bb.45:                               # %scalar.ph.prol.preheader
	leaq	(%rdi,%r9,8), %rsi
	negq	%rdx
	.p2align	4, 0x90
.LBB0_46:                               # %scalar.ph.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi,%rax,8), %rdi
	movq	%rdi, (%r13,%rax,8)
	addq	$1, %rax
	addq	$1, %rdx
	jne	.LBB0_46
.LBB0_47:                               # %scalar.ph.prol.loopexit
	cmpq	$3, %rcx
	movq	216(%rsp), %rcx
	jb	.LBB0_50
# %bb.48:                               # %scalar.ph.preheader.new
	leaq	(%rcx,%r9,8), %rcx
	addq	$24, %rcx
	.p2align	4, 0x90
.LBB0_49:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rcx,%rax,8), %rdx
	movq	%rdx, (%r13,%rax,8)
	movq	-16(%rcx,%rax,8), %rdx
	movq	%rdx, 8(%r13,%rax,8)
	movq	-8(%rcx,%rax,8), %rdx
	movq	%rdx, 16(%r13,%rax,8)
	movq	(%rcx,%rax,8), %rdx
	movq	%rdx, 24(%r13,%rax,8)
	addq	$4, %rax
	cmpq	%rax, %rbp
	jne	.LBB0_49
	jmp	.LBB0_50
.LBB0_36:                               # %vector.ph
	movq	%rbp, %rax
	andq	$-4, %rax
	leaq	-4(%rax), %rsi
	movq	%rsi, %rdx
	shrq	$2, %rdx
	leal	1(%rdx), %ecx
	andl	$3, %ecx
	cmpq	$12, %rsi
	jae	.LBB0_38
# %bb.37:
	xorl	%edx, %edx
	testq	%rcx, %rcx
	jne	.LBB0_41
	jmp	.LBB0_43
.LBB0_38:                               # %vector.ph.new
	leaq	(%rdi,%r9,8), %rsi
	addq	$112, %rsi
	leaq	-1(%rcx), %rdi
	subq	%rdx, %rdi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_39:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-112(%rsi,%rdx,8), %xmm0
	movups	-96(%rsi,%rdx,8), %xmm1
	movups	%xmm0, (%r13,%rdx,8)
	movups	%xmm1, 16(%r13,%rdx,8)
	movups	-80(%rsi,%rdx,8), %xmm0
	movups	-64(%rsi,%rdx,8), %xmm1
	movups	%xmm0, 32(%r13,%rdx,8)
	movups	%xmm1, 48(%r13,%rdx,8)
	movups	-48(%rsi,%rdx,8), %xmm0
	movups	-32(%rsi,%rdx,8), %xmm1
	movups	%xmm0, 64(%r13,%rdx,8)
	movups	%xmm1, 80(%r13,%rdx,8)
	movups	-16(%rsi,%rdx,8), %xmm0
	movups	(%rsi,%rdx,8), %xmm1
	movups	%xmm0, 96(%r13,%rdx,8)
	movups	%xmm1, 112(%r13,%rdx,8)
	addq	$16, %rdx
	addq	$4, %rdi
	jne	.LBB0_39
# %bb.40:                               # %middle.block.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB0_43
.LBB0_41:                               # %vector.body.epil.preheader
	leaq	16(,%rdx,8), %rsi
	addq	%r13, %rsi
	addq	%r9, %rdx
	movq	216(%rsp), %rdi
	leaq	(%rdi,%rdx,8), %rdx
	addq	$16, %rdx
	negq	%rcx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_42:                               # %vector.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movups	-16(%rdx,%rdi), %xmm0
	movups	(%rdx,%rdi), %xmm1
	movups	%xmm0, -16(%rsi,%rdi)
	movups	%xmm1, (%rsi,%rdi)
	addq	$32, %rdi
	addq	$1, %rcx
	jne	.LBB0_42
.LBB0_43:                               # %middle.block
	cmpq	%rax, %rbp
	movq	216(%rsp), %rdi
	jne	.LBB0_44
.LBB0_50:                               # %._crit_edge
	xorl	%esi, %esi
	testq	%r12, %r12
	je	.LBB0_55
# %bb.51:                               # %.lr.ph36.i.preheader
	movq	%r12, %rdx
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB0_52:                               # %.lr.ph36.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%r15, %r15
	sete	%cl
	xorl	%edi, %edi
	cmpq	$0, -8(%r13,%rdx,8)
	setne	%dil
	#APP
	testb	%cl, %cl
	movl	%esi, %ebp
	cmovnel	%edi, %ebp
	#NO_APP
	testb	$1, %bpl
	je	.LBB0_54
# %bb.53:                               # %.lr.ph36.i
                                        #   in Loop: Header=BB0_52 Depth=1
	movq	%rdx, %r15
.LBB0_54:                               # %.lr.ph36.i
                                        #   in Loop: Header=BB0_52 Depth=1
	addq	$-1, %rdx
	jne	.LBB0_52
	jmp	.LBB0_56
.LBB0_55:
	xorl	%r15d, %r15d
.LBB0_56:                               # %._crit_edge37.i
	xorl	%edi, %edi
	testq	%r9, %r9
	je	.LBB0_61
# %bb.57:                               # %.lr.ph31.i.preheader
	movq	%r9, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_58:                               # %.lr.ph31.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rdx, %rdx
	sete	%al
	xorl	%esi, %esi
	cmpq	$0, -8(%r14,%rcx,8)
	setne	%sil
	#APP
	testb	%al, %al
	movl	%edi, %ebp
	cmovnel	%esi, %ebp
	#NO_APP
	testb	$1, %bpl
	je	.LBB0_60
# %bb.59:                               # %.lr.ph31.i
                                        #   in Loop: Header=BB0_58 Depth=1
	movq	%rcx, %rdx
.LBB0_60:                               # %.lr.ph31.i
                                        #   in Loop: Header=BB0_58 Depth=1
	addq	$-1, %rcx
	jne	.LBB0_58
	jmp	.LBB0_62
.LBB0_61:
	xorl	%edx, %edx
.LBB0_62:                               # %._crit_edge32.i
	testq	%r15, %r15
	sete	%al
	xorl	%ecx, %ecx
	testq	%rdx, %rdx
	sete	%cl
	#APP
	testb	%al, %al
	movl	%edi, %esi
	cmovnel	%ecx, %esi
	#NO_APP
	andl	$1, %esi
	movl	$1, %eax
	#APP
	testb	%sil, %sil
	cmovnel	%edi, %eax
	#NO_APP
	andl	$1, %eax
	cmpq	%rdx, %r15
	seta	%cl
	andb	%al, %cl
	movzbl	%cl, %ecx
	movl	%eax, %r11d
	#APP
	testb	%cl, %cl
	cmovnel	%edi, %r11d
	#NO_APP
	movl	%r11d, %ebp
	andl	$1, %ebp
	cmpq	%r15, %rdx
	seta	%dl
	andl	%eax, %r11d
	setne	%al
	andb	%dl, %al
	movl	$-1, %edx
	cmovnel	%edx, %ecx
	#APP
	testb	%al, %al
	cmovnel	%edi, %ebp
	#NO_APP
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpq	%rax, %r12
	movq	%r12, %rdx
	movq	%rax, %r12
	cmovbq	%rdx, %r12
	andl	%ebp, %r11d
	testq	%r12, %r12
	je	.LBB0_65
# %bb.63:                               # %.lr.ph.i16.preheader
	movl	%ebp, %esi
	andl	$1, %esi
	xorl	%r10d, %r10d
	movq	%r12, %rdi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_64:                               # %.lr.ph.i16
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r15, %rdi
	setbe	%al
	movq	-8(%r13,%rdi,8), %rbx
	cmpq	-8(%r14,%rdi,8), %rbx
	movq	%r13, %r8
	seta	%r13b
	setb	%bl
	testl	%r11d, %ebp
	setne	%r9b
	andb	%al, %bl
	andb	%r9b, %al
	andb	%r13b, %al
	movq	%r8, %r13
	movl	$-1, %r8d
	movl	$1, %ebp
	cmovnel	%ebp, %ecx
	#APP
	testb	%al, %al
	cmovnel	%r10d, %esi
	#NO_APP
	andl	$1, %esi
	andb	%r9b, %bl
	andb	%sil, %bl
	cmovnel	%r8d, %ecx
	#APP
	testb	%bl, %bl
	cmovnel	%r10d, %esi
	#NO_APP
	movl	%esi, %ebp
	addq	$1, %rdx
	andl	$1, %esi
	addq	$-1, %rdi
	cmpq	%rdx, %r12
	ja	.LBB0_64
.LBB0_65:                               # %_mbedtls_mpi_cmp_abs.exit
	testl	%r11d, %ebp
	setne	%dl
	testl	%ecx, %ecx
	setns	%r8b
	orb	%dl, %r8b
	movq	8(%rsp), %r9            # 8-byte Reload
	testq	%r9, %r9
	je	.LBB0_69
# %bb.66:                               # %.lr.ph7.i.preheader
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	24(%rsp), %r10          # 8-byte Reload
	.p2align	4, 0x90
.LBB0_67:                               # %.lr.ph7.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13,%rdx,8), %rbp
	testb	%r8b, %r8b
	movl	$0, %edi
	cmovneq	%rcx, %rdi
	movq	%rbp, %rsi
	subq	%rdi, %rsi
	testb	%r8b, %r8b
	movq	%rsi, (%r13,%rdx,8)
	movq	(%r14,%rdx,8), %rdi
	movl	$0, %ebx
	cmovneq	%rdi, %rbx
	xorl	%eax, %eax
	cmpq	%rdi, %rsi
	setb	%al
	cmpq	%rcx, %rbp
	adcq	$0, %rax
	testb	%r8b, %r8b
	cmovneq	%rax, %rcx
	subq	%rbx, %rsi
	movq	%rsi, (%r13,%rdx,8)
	addq	$1, %rdx
	cmpq	%rdx, %r9
	jne	.LBB0_67
# %bb.68:                               # %._crit_edge8.i
	cmpq	%r9, %r10
	ja	.LBB0_70
	jmp	.LBB0_75
.LBB0_69:
	xorl	%ecx, %ecx
	movq	24(%rsp), %r10          # 8-byte Reload
	cmpq	%r9, %r10
	jbe	.LBB0_75
.LBB0_70:                               # %.lr.ph.i1.preheader
	movl	%r10d, %eax
	subl	%r9d, %eax
	leaq	-1(%r10), %rdx
	testb	$1, %al
	jne	.LBB0_72
# %bb.71:
	movq	%r9, %rsi
	cmpq	%r9, %rdx
	jne	.LBB0_73
	jmp	.LBB0_75
.LBB0_72:                               # %.lr.ph.i1.prol
	movq	(%r13,%r9,8), %rax
	xorl	%esi, %esi
	cmpq	%rcx, %rax
	setb	%sil
	xorl	%edi, %edi
	testb	%r8b, %r8b
	cmovneq	%rcx, %rdi
	cmovneq	%rsi, %rcx
	subq	%rdi, %rax
	movq	%rax, (%r13,%r9,8)
	leaq	1(%r9), %rsi
	cmpq	%r9, %rdx
	je	.LBB0_75
.LBB0_73:                               # %.lr.ph.i1.preheader.new
	subq	%rsi, %r10
	leaq	8(,%rsi,8), %rdx
	addq	%r13, %rdx
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB0_74:                               # %.lr.ph.i1
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rdx), %rax
	movq	(%rdx), %rdi
	xorl	%ebx, %ebx
	cmpq	%rcx, %rax
	setb	%bl
	testb	%r8b, %r8b
	movq	%rbx, %rbp
	cmoveq	%rcx, %rbp
	xorl	%esi, %esi
	cmpq	%rbp, %rdi
	setb	%sil
	testb	%r8b, %r8b
	cmoveq	%rcx, %rsi
	cmoveq	%r9, %rcx
	subq	%rcx, %rax
	movq	%rax, -8(%rdx)
	andb	%r8b, %bl
	movzbl	%bl, %eax
	subq	%rax, %rdi
	movq	%rdi, (%rdx)
	addq	$16, %rdx
	movq	%rsi, %rcx
	addq	$-2, %r10
	jne	.LBB0_74
.LBB0_75:                               # %_mpi_sub_hlp.exit
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_mpi_montmul, .Lfunc_end0-_mpi_montmul
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
	subq	$200, %rsp
	movq	%r9, 112(%rsp)          # 8-byte Spill
	movl	%r8d, 108(%rsp)         # 4-byte Spill
	movq	%rcx, %rbp
	movq	%rdx, %r15
	movq	%rdi, %r13
	movq	288(%rsp), %r8
	movq	280(%rsp), %rbx
	movq	320(%rsp), %r9
	cmpq	%r8, %rsi
	movq	%r8, %rax
	movq	%rsi, (%rsp)            # 8-byte Spill
	cmovbq	%rsi, %rax
	testq	%rax, %rax
	je	.LBB1_15
# %bb.1:                                # %.lr.ph3.i
	cmpq	$4, %rax
	jae	.LBB1_3
# %bb.2:
	xorl	%ecx, %ecx
	jmp	.LBB1_14
.LBB1_3:                                # %vector.memcheck
	leaq	(%rbx,%rax,8), %rcx
	cmpq	%r13, %rcx
	jbe	.LBB1_6
# %bb.4:                                # %vector.memcheck
	leaq	(,%rax,8), %rcx
	addq	%r13, %rcx
	cmpq	%rbx, %rcx
	jbe	.LBB1_6
# %bb.5:
	xorl	%ecx, %ecx
	jmp	.LBB1_14
.LBB1_6:                                # %vector.ph
	movq	%rax, %rcx
	andq	$-4, %rcx
	leaq	-4(%rcx), %rdi
	movq	%rdi, %rsi
	shrq	$2, %rsi
	leal	1(%rsi), %edx
	andl	$3, %edx
	cmpq	$12, %rdi
	jae	.LBB1_8
# %bb.7:
	xorl	%esi, %esi
	testq	%rdx, %rdx
	jne	.LBB1_11
	jmp	.LBB1_13
.LBB1_8:                                # %vector.ph.new
	leaq	-1(%rdx), %rdi
	subq	%rsi, %rdi
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	(%rbx,%rsi,8), %xmm0
	movups	16(%rbx,%rsi,8), %xmm1
	movups	%xmm0, (%r13,%rsi,8)
	movups	%xmm1, 16(%r13,%rsi,8)
	movups	32(%rbx,%rsi,8), %xmm0
	movups	48(%rbx,%rsi,8), %xmm1
	movups	%xmm0, 32(%r13,%rsi,8)
	movups	%xmm1, 48(%r13,%rsi,8)
	movups	64(%rbx,%rsi,8), %xmm0
	movups	80(%rbx,%rsi,8), %xmm1
	movups	%xmm0, 64(%r13,%rsi,8)
	movups	%xmm1, 80(%r13,%rsi,8)
	movups	96(%rbx,%rsi,8), %xmm0
	movups	112(%rbx,%rsi,8), %xmm1
	movups	%xmm0, 96(%r13,%rsi,8)
	movups	%xmm1, 112(%r13,%rsi,8)
	addq	$16, %rsi
	addq	$4, %rdi
	jne	.LBB1_9
# %bb.10:                               # %middle.block.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB1_13
.LBB1_11:                               # %vector.body.epil.preheader
	leaq	16(,%rsi,8), %rsi
	negq	%rdx
	.p2align	4, 0x90
.LBB1_12:                               # %vector.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movups	-16(%rbx,%rsi), %xmm0
	movups	(%rbx,%rsi), %xmm1
	movups	%xmm0, -16(%r13,%rsi)
	movups	%xmm1, (%r13,%rsi)
	addq	$32, %rsi
	addq	$1, %rdx
	jne	.LBB1_12
.LBB1_13:                               # %middle.block
	cmpq	%rcx, %rax
	je	.LBB1_15
	.p2align	4, 0x90
.LBB1_14:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx,%rcx,8), %rdx
	movq	%rdx, (%r13,%rcx,8)
	addq	$1, %rcx
	cmpq	%rax, %rcx
	jb	.LBB1_14
.LBB1_15:                               # %._crit_edge4.i
	movq	344(%rsp), %r10
	shrq	$4, %r9
	movq	%r9, 16(%rsp)           # 8-byte Spill
	movabsq	$2305843009213693951, %r14 # imm = 0x1FFFFFFFFFFFFFFF
	movq	(%rsp), %rbx            # 8-byte Reload
	cmpq	%r8, %rbx
	jbe	.LBB1_17
# %bb.16:                               # %.lr.ph.i
	leaq	(,%rax,8), %rdi
	addq	%r13, %rdi
	movq	%r8, %rax
	xorq	%r14, %rax
	addq	%rbx, %rax
	leaq	8(,%rax,8), %rdx
	xorl	%esi, %esi
	callq	memset@PLT
	movq	344(%rsp), %r10
.LBB1_17:                               # %_mpi_copy.exit
	movq	312(%rsp), %r12
	movq	$1, 96(%rsp)
	subq	$8, %rsp
	leaq	104(%rsp), %rdx
	movl	$1, %ecx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	272(%rsp), %r8
	movq	280(%rsp), %r9
	pushq	312(%rsp)
	pushq	312(%rsp)
	pushq	%r10
	callq	_mpi_montmul
	addq	$32, %rsp
	movl	16(%rsp), %esi          # 4-byte Reload
	cmpq	%rbx, %rsi
	movq	%rbx, %r9
	movq	%r12, %rbx
	cmovbq	%rsi, %r9
	testq	%r9, %r9
	je	.LBB1_32
# %bb.18:                               # %.lr.ph3.i3
	cmpq	$4, %r9
	jae	.LBB1_20
# %bb.19:
	xorl	%ecx, %ecx
	jmp	.LBB1_31
.LBB1_20:                               # %vector.memcheck85
	leaq	(,%r9,8), %rcx
	addq	%r13, %rcx
	cmpq	%rbx, %rcx
	jbe	.LBB1_23
# %bb.21:                               # %vector.memcheck85
	leaq	(%rbx,%r9,8), %rcx
	cmpq	%r13, %rcx
	jbe	.LBB1_23
# %bb.22:
	xorl	%ecx, %ecx
	jmp	.LBB1_31
.LBB1_23:                               # %vector.ph86
	movl	%r9d, %ecx
	andl	$-4, %ecx
	leaq	-4(%rcx), %rdi
	movq	%rdi, %r8
	shrq	$2, %r8
	leal	1(%r8), %edx
	andl	$3, %edx
	cmpq	$12, %rdi
	jae	.LBB1_25
# %bb.24:
	xorl	%eax, %eax
	testq	%rdx, %rdx
	jne	.LBB1_28
	jmp	.LBB1_30
.LBB1_25:                               # %vector.ph86.new
	leaq	-1(%rdx), %rdi
	subq	%r8, %rdi
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_26:                               # %vector.body71
                                        # =>This Inner Loop Header: Depth=1
	movups	(%r13,%rax,8), %xmm0
	movups	16(%r13,%rax,8), %xmm1
	movups	%xmm0, (%rbx,%rax,8)
	movups	%xmm1, 16(%rbx,%rax,8)
	movups	32(%r13,%rax,8), %xmm0
	movups	48(%r13,%rax,8), %xmm1
	movups	%xmm0, 32(%rbx,%rax,8)
	movups	%xmm1, 48(%rbx,%rax,8)
	movups	64(%r13,%rax,8), %xmm0
	movups	80(%r13,%rax,8), %xmm1
	movups	%xmm0, 64(%rbx,%rax,8)
	movups	%xmm1, 80(%rbx,%rax,8)
	movups	96(%r13,%rax,8), %xmm0
	movups	112(%r13,%rax,8), %xmm1
	movups	%xmm0, 96(%rbx,%rax,8)
	movups	%xmm1, 112(%rbx,%rax,8)
	addq	$16, %rax
	addq	$4, %rdi
	jne	.LBB1_26
# %bb.27:                               # %middle.block72.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB1_30
.LBB1_28:                               # %vector.body71.epil.preheader
	leaq	16(,%rax,8), %rax
	negq	%rdx
	.p2align	4, 0x90
.LBB1_29:                               # %vector.body71.epil
                                        # =>This Inner Loop Header: Depth=1
	movups	-16(%r13,%rax), %xmm0
	movups	(%r13,%rax), %xmm1
	movups	%xmm0, -16(%rbx,%rax)
	movups	%xmm1, (%rbx,%rax)
	addq	$32, %rax
	addq	$1, %rdx
	jne	.LBB1_29
.LBB1_30:                               # %middle.block72
	cmpq	%rcx, %r9
	je	.LBB1_32
	.p2align	4, 0x90
.LBB1_31:                               # %scalar.ph73
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13,%rcx,8), %rdx
	movq	%rdx, (%rbx,%rcx,8)
	addq	$1, %rcx
	cmpq	%r9, %rcx
	jb	.LBB1_31
.LBB1_32:                               # %._crit_edge4.i5
	cmpq	(%rsp), %rsi            # 8-byte Folded Reload
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	jbe	.LBB1_34
# %bb.33:                               # %.lr.ph.i6
	leaq	(%rbx,%r9,8), %rdi
	xorq	(%rsp), %r14            # 8-byte Folded Reload
	addq	%rsi, %r14
	leaq	8(,%r14,8), %rdx
	xorl	%esi, %esi
	callq	memset@PLT
	movq	8(%rsp), %rsi           # 8-byte Reload
.LBB1_34:                               # %_mpi_copy.exit8
	leaq	(%rbx,%rsi,8), %rdi
	cmpq	%rbp, %rsi
	movq	%rbp, %r9
	cmovbq	%rsi, %r9
	testq	%r9, %r9
	movq	344(%rsp), %r10
	movq	288(%rsp), %r12
	je	.LBB1_49
# %bb.35:                               # %.lr.ph3.i10
	cmpq	$4, %r9
	jae	.LBB1_37
# %bb.36:
	xorl	%ecx, %ecx
	jmp	.LBB1_48
.LBB1_37:                               # %vector.memcheck113
	cmpq	%rbp, %rsi
	movq	%rbp, %rcx
	cmovbq	%rsi, %rcx
	leaq	(%r15,%r9,8), %rdx
	cmpq	%rdx, %rdi
	jae	.LBB1_40
# %bb.38:                               # %vector.memcheck113
	notq	%rcx
	negq	%rcx
	addq	%rsi, %rcx
	addq	$-1, %rcx
	leaq	(%rbx,%rcx,8), %rcx
	cmpq	%r15, %rcx
	jbe	.LBB1_40
# %bb.39:
	xorl	%ecx, %ecx
	jmp	.LBB1_48
.LBB1_40:                               # %vector.ph114
	movl	%r9d, %ecx
	andl	$-4, %ecx
	leaq	-4(%rcx), %rax
	movq	%rax, %r8
	shrq	$2, %r8
	leal	1(%r8), %edx
	andl	$3, %edx
	movq	%rbp, %r11
	cmpq	$12, %rax
	jae	.LBB1_42
# %bb.41:
	xorl	%eax, %eax
	testq	%rdx, %rdx
	jne	.LBB1_45
	jmp	.LBB1_47
.LBB1_42:                               # %vector.ph114.new
	leaq	(%rbx,%rsi,8), %rbp
	addq	$112, %rbp
	leaq	-1(%rdx), %rbx
	subq	%r8, %rbx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_43:                               # %vector.body99
                                        # =>This Inner Loop Header: Depth=1
	movups	(%r15,%rax,8), %xmm0
	movups	16(%r15,%rax,8), %xmm1
	movups	%xmm0, -112(%rbp,%rax,8)
	movups	%xmm1, -96(%rbp,%rax,8)
	movups	32(%r15,%rax,8), %xmm0
	movups	48(%r15,%rax,8), %xmm1
	movups	%xmm0, -80(%rbp,%rax,8)
	movups	%xmm1, -64(%rbp,%rax,8)
	movups	64(%r15,%rax,8), %xmm0
	movups	80(%r15,%rax,8), %xmm1
	movups	%xmm0, -48(%rbp,%rax,8)
	movups	%xmm1, -32(%rbp,%rax,8)
	movups	96(%r15,%rax,8), %xmm0
	movups	112(%r15,%rax,8), %xmm1
	movups	%xmm0, -16(%rbp,%rax,8)
	movups	%xmm1, (%rbp,%rax,8)
	addq	$16, %rax
	addq	$4, %rbx
	jne	.LBB1_43
# %bb.44:                               # %middle.block100.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB1_47
.LBB1_45:                               # %vector.body99.epil.preheader
	leaq	(%r15,%rax,8), %rbp
	addq	$16, %rbp
	addq	%rsi, %rax
	movq	312(%rsp), %rbx
	leaq	(%rbx,%rax,8), %rax
	addq	$16, %rax
	negq	%rdx
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_46:                               # %vector.body99.epil
                                        # =>This Inner Loop Header: Depth=1
	movups	-16(%rbp,%rbx), %xmm0
	movups	(%rbp,%rbx), %xmm1
	movups	%xmm0, -16(%rax,%rbx)
	movups	%xmm1, (%rax,%rbx)
	addq	$32, %rbx
	addq	$1, %rdx
	jne	.LBB1_46
.LBB1_47:                               # %middle.block100
	cmpq	%rcx, %r9
	movq	312(%rsp), %rbx
	movq	%r11, %rbp
	je	.LBB1_49
	.p2align	4, 0x90
.LBB1_48:                               # %scalar.ph101
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rcx,8), %rdx
	movq	%rdx, (%rdi,%rcx,8)
	addq	$1, %rcx
	cmpq	%r9, %rcx
	jb	.LBB1_48
.LBB1_49:                               # %._crit_edge4.i12
	movq	%r13, 40(%rsp)          # 8-byte Spill
	cmpq	%rbp, %rsi
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	jbe	.LBB1_51
# %bb.50:                               # %.lr.ph.i13
	leaq	-1(%rsi), %rax
	notq	%rbp
	subq	%rbp, %rax
	leaq	(%rbx,%rax,8), %rdi
	addq	%rsi, %rbp
	leaq	8(,%rbp,8), %rdx
	xorl	%esi, %esi
	callq	memset@PLT
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	344(%rsp), %r10
.LBB1_51:                               # %_mpi_copy.exit15
	movq	328(%rsp), %r14
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	%rax, 32(%rsp)          # 8-byte Spill
	subq	$8, %rsp
	movq	288(%rsp), %rdx
	movq	%r12, %rcx
	movq	%rsi, %rbp
	movq	272(%rsp), %r8
	movq	280(%rsp), %r13
	movq	%r13, %r9
	pushq	312(%rsp)
	movq	312(%rsp), %r15
	pushq	%r15
	pushq	%r10
	callq	_mpi_montmul
	addq	$32, %rsp
	movq	%rbx, %rax
	movq	16(%rsp), %rbx          # 8-byte Reload
	leal	(%rbx,%rbx), %r12d
	leaq	-1(%rbp), %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movl	%ebx, %ecx
	andl	$3, %ecx
	movq	%rbp, %rdx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	subq	%rcx, %rdx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	leaq	16(%rax), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movl	$-1, %r13d
	addl	$2, %r13d
	imull	%ebx, %r13d
	leaq	24(%rax), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	xorl	%r9d, %r9d
	movl	$2, %ecx
	movq	%r12, %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
                                        # kill: def %r12d killed %r12d killed %r12 def %r12
	jmp	.LBB1_52
.LBB1_58:                               # %vector.ph147
                                        #   in Loop: Header=BB1_52 Depth=1
	movq	48(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%r12,8), %rax
	leaq	(%rcx,%r13,8), %rcx
	xorl	%esi, %esi
	movq	56(%rsp), %rbp          # 8-byte Reload
	.p2align	4, 0x90
.LBB1_59:                               # %vector.body127
                                        #   Parent Loop BB1_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-16(%rcx,%rsi,8), %xmm0
	movups	(%rcx,%rsi,8), %xmm1
	movups	%xmm0, -16(%rax,%rsi,8)
	movups	%xmm1, (%rax,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rbp
	jne	.LBB1_59
# %bb.60:                               # %middle.block128
                                        #   in Loop: Header=BB1_52 Depth=1
	movq	%rbp, %rax
	cmpq	$0, 64(%rsp)            # 8-byte Folded Reload
	movq	8(%rsp), %rsi           # 8-byte Reload
	jne	.LBB1_61
	jmp	.LBB1_67
	.p2align	4, 0x90
.LBB1_52:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_59 Depth 2
                                        #     Child Loop BB1_63 Depth 2
                                        #     Child Loop BB1_66 Depth 2
	movq	%rcx, %r15
	movl	%ecx, %eax
	imull	%ebx, %eax
	movl	%r13d, %r13d
	movl	%r12d, %r12d
	movq	312(%rsp), %rcx
	leaq	(%rcx,%rax,8), %rdi
	testq	%rbp, %rbp
	movq	344(%rsp), %r10
	movq	%rbp, %rsi
	movq	24(%rsp), %rdx          # 8-byte Reload
	je	.LBB1_67
# %bb.53:                               # %.lr.ph3.i16
                                        #   in Loop: Header=BB1_52 Depth=1
	cmpq	$4, %rsi
	jb	.LBB1_54
# %bb.55:                               # %vector.memcheck146
                                        #   in Loop: Header=BB1_52 Depth=1
	movl	%r9d, %eax
	imull	%ebx, %eax
	movq	80(%rsp), %rcx          # 8-byte Reload
	leal	(%rax,%rcx), %ecx
	addl	%ebx, %eax
	movq	312(%rsp), %r8
	leaq	(%r8,%rcx,8), %rbp
	leaq	(%rdx,%rax,8), %rsi
	cmpq	%rsi, %rbp
	jae	.LBB1_58
# %bb.56:                               # %vector.memcheck146
                                        #   in Loop: Header=BB1_52 Depth=1
	leaq	(%rdx,%rcx,8), %rcx
	leaq	(%r8,%rax,8), %rax
	cmpq	%rcx, %rax
	jae	.LBB1_58
.LBB1_54:                               #   in Loop: Header=BB1_52 Depth=1
	xorl	%eax, %eax
.LBB1_61:                               # %scalar.ph129.preheader
                                        #   in Loop: Header=BB1_52 Depth=1
	movl	%ebx, %ebp
	subl	%eax, %ebp
	movq	88(%rsp), %r8           # 8-byte Reload
	subq	%rax, %r8
	andq	$3, %rbp
	je	.LBB1_64
# %bb.62:                               # %scalar.ph129.prol.preheader
                                        #   in Loop: Header=BB1_52 Depth=1
	movq	312(%rsp), %rcx
	leaq	(%rcx,%r13,8), %rsi
	leaq	(%rcx,%r12,8), %rcx
	negq	%rbp
	.p2align	4, 0x90
.LBB1_63:                               # %scalar.ph129.prol
                                        #   Parent Loop BB1_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rsi,%rax,8), %rbx
	movq	%rbx, (%rcx,%rax,8)
	addq	$1, %rax
	addq	$1, %rbp
	jne	.LBB1_63
.LBB1_64:                               # %scalar.ph129.prol.loopexit
                                        #   in Loop: Header=BB1_52 Depth=1
	cmpq	$3, %r8
	movq	8(%rsp), %rsi           # 8-byte Reload
	jb	.LBB1_67
# %bb.65:                               # %scalar.ph129.preheader.new
                                        #   in Loop: Header=BB1_52 Depth=1
	movq	%rsi, %r8
	subq	%rax, %r8
	leaq	(%rax,%r13), %rcx
	movq	72(%rsp), %rbp          # 8-byte Reload
	leaq	(,%rcx,8), %rcx
	addq	%rbp, %rcx
	addq	%r12, %rax
	leaq	(,%rax,8), %rax
	addq	%rbp, %rax
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB1_66:                               # %scalar.ph129
                                        #   Parent Loop BB1_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rcx,%rbp,8), %rbx
	movq	%rbx, -24(%rax,%rbp,8)
	movq	-16(%rcx,%rbp,8), %rbx
	movq	%rbx, -16(%rax,%rbp,8)
	movq	-8(%rcx,%rbp,8), %rbx
	movq	%rbx, -8(%rax,%rbp,8)
	movq	(%rcx,%rbp,8), %rbx
	movq	%rbx, (%rax,%rbp,8)
	addq	$4, %rbp
	cmpq	%rbp, %r8
	jne	.LBB1_66
.LBB1_67:                               # %_mpi_copy.exit19
                                        #   in Loop: Header=BB1_52 Depth=1
	subq	$8, %rsp
	movq	%rsi, %rcx
	movq	%rsi, %rbp
	movq	272(%rsp), %r8
	movq	%r9, %rbx
	movq	280(%rsp), %r9
	pushq	312(%rsp)
	pushq	312(%rsp)
	pushq	%r10
	callq	_mpi_montmul
	movq	%rbx, %r9
	movq	48(%rsp), %rbx          # 8-byte Reload
	addq	$32, %rsp
	movq	%r15, %rcx
	addq	$1, %rcx
	addl	$1, %r9d
	addl	%ebx, %r12d
	addl	%ebx, %r13d
	cmpq	$16, %rcx
	jne	.LBB1_52
# %bb.68:
	cmpq	$0, 256(%rsp)
	movq	344(%rsp), %r10
	je	.LBB1_109
# %bb.69:                               # %.lr.ph
	movq	32(%rsp), %rax          # 8-byte Reload
	addq	256(%rsp), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	336(%rsp), %rax
	movq	%rax, %rsi
	cmpq	%rsi, %rcx
	movq	%rcx, %r15
	cmovaq	%rsi, %r15
	cmovbq	%rcx, %rax
	notq	%rax
	leaq	1(%rax,%rsi), %rdi
	leaq	(%r14,%r15,8), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	312(%rsp), %rcx
	movq	%rcx, %rdx
	leaq	(%rdx,%r15,8), %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movl	%r15d, %ecx
	andl	$-4, %ecx
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	leaq	-4(%rcx), %rcx
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	shrq	$2, %rcx
	leal	1(%rcx), %ebp
	addq	%rax, %rsi
	addq	$-3, %rsi
	shrq	$2, %rsi
	leal	1(%rsi), %ebx
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	andq	$-4, %rdi
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	leaq	(%r15,%rdi), %rdi
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	andl	$1, %ebx
	andl	$1, %ebp
	leaq	48(%rdx), %rdx
	movq	%rdx, 152(%rsp)         # 8-byte Spill
	movq	%rbp, 168(%rsp)         # 8-byte Spill
	leaq	-1(%rbp), %rdx
	subq	%rcx, %rdx
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	movl	$5, %ecx
	subq	%rax, %rcx
	leaq	(%r14,%rcx,8), %r12
	movq	%rbx, 72(%rsp)          # 8-byte Spill
	leaq	-1(%rbx), %rax
	movq	%rsi, 80(%rsp)          # 8-byte Spill
	subq	%rsi, %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_70:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_71 Depth 2
                                        #       Child Loop BB1_73 Depth 3
                                        #         Child Loop BB1_81 Depth 4
                                        #         Child Loop BB1_86 Depth 4
                                        #         Child Loop BB1_91 Depth 4
                                        #         Child Loop BB1_102 Depth 4
	movq	32(%rsp), %rax          # 8-byte Reload
                                        # kill: def %eax killed %eax killed %rax def %rax
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	subl	%ecx, %eax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movl	$1, %eax
	movq	296(%rsp), %rbp
	movq	304(%rsp), %r13
	movq	(%rsp), %rbx            # 8-byte Reload
	.p2align	4, 0x90
.LBB1_71:                               #   Parent Loop BB1_70 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_73 Depth 3
                                        #         Child Loop BB1_81 Depth 4
                                        #         Child Loop BB1_86 Depth 4
                                        #         Child Loop BB1_91 Depth 4
                                        #         Child Loop BB1_102 Depth 4
	movq	%rax, 120(%rsp)         # 8-byte Spill
	subq	$8, %rsp
	movq	%rbp, %r11
	movq	48(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	movq	272(%rsp), %rax
	movq	%rax, %r8
	movq	280(%rsp), %rax
	movq	%rax, %r9
	pushq	%r13
	pushq	%r11
	pushq	%r10
	callq	_mpi_montmul
	addq	$24, %rsp
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	movq	272(%rsp), %r8
	movq	280(%rsp), %r9
	pushq	%r13
	movq	312(%rsp), %r13
	pushq	%r13
	pushq	368(%rsp)
	callq	_mpi_montmul
	addq	$24, %rsp
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	movq	272(%rsp), %r8
	movq	280(%rsp), %r9
	pushq	312(%rsp)
	pushq	%r13
	movq	368(%rsp), %r13
	pushq	%r13
	callq	_mpi_montmul
	addq	$24, %rsp
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	movq	272(%rsp), %r8
	movq	280(%rsp), %r9
	pushq	312(%rsp)
	pushq	312(%rsp)
	pushq	%r13
	callq	_mpi_montmul
	addq	$32, %rsp
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	136(%rsp), %rcx         # 8-byte Reload
	movq	(%rax,%rcx,8), %r11
	movq	120(%rsp), %rax         # 8-byte Reload
	leal	(,%rax,4), %edx
	movl	$64, %ecx
	subl	%edx, %ecx
                                        # kill: def %cl killed %cl killed %ecx
	shrq	%cl, %r11
	andl	$15, %r11d
	xorl	%r10d, %r10d
	xorl	%r13d, %r13d
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	312(%rsp), %rbx
	movq	%rbx, %rax
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	336(%rsp), %r8
	movq	%rax, %rdi
	jmp	.LBB1_73
.LBB1_72:                               #   in Loop: Header=BB1_73 Depth=3
	xorl	%edi, %edi
	cmpq	$0, 168(%rsp)           # 8-byte Folded Reload
	jne	.LBB1_83
	jmp	.LBB1_84
	.p2align	4, 0x90
.LBB1_73:                               #   Parent Loop BB1_70 Depth=1
                                        #     Parent Loop BB1_71 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_81 Depth 4
                                        #         Child Loop BB1_86 Depth 4
                                        #         Child Loop BB1_91 Depth 4
                                        #         Child Loop BB1_102 Depth 4
	testq	%r15, %r15
	je	.LBB1_87
# %bb.74:                               # %.lr.ph3.i34
                                        #   in Loop: Header=BB1_73 Depth=3
	movl	%r10d, %r9d
	cmpq	$4, %r15
	jb	.LBB1_75
# %bb.76:                               # %vector.memcheck199
                                        #   in Loop: Header=BB1_73 Depth=3
	movl	%r13d, %ecx
	imull	%ebp, %ecx
	leaq	(%rdi,%rcx,8), %rdx
	movq	88(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rcx,8), %rcx
	cmpq	%r14, %rcx
	jbe	.LBB1_79
# %bb.77:                               # %vector.memcheck199
                                        #   in Loop: Header=BB1_73 Depth=3
	cmpq	48(%rsp), %rdx          # 8-byte Folded Reload
	jae	.LBB1_79
.LBB1_75:                               #   in Loop: Header=BB1_73 Depth=3
	xorl	%ecx, %ecx
.LBB1_85:                               # %scalar.ph184.preheader
                                        #   in Loop: Header=BB1_73 Depth=3
	leaq	(%rdi,%r9,8), %rsi
	.p2align	4, 0x90
.LBB1_86:                               # %scalar.ph184
                                        #   Parent Loop BB1_70 Depth=1
                                        #     Parent Loop BB1_71 Depth=2
                                        #       Parent Loop BB1_73 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpq	%r13, %r11
	leaq	(%r14,%rcx,8), %rax
	leaq	(%rsi,%rcx,8), %rdx
	cmovneq	%rax, %rdx
	movq	(%rdx), %rax
	movq	%rax, (%r14,%rcx,8)
	addq	$1, %rcx
	cmpq	%r15, %rcx
	jb	.LBB1_86
.LBB1_87:                               # %._crit_edge4.i36
                                        #   in Loop: Header=BB1_73 Depth=3
	cmpq	%r8, %rbx
	jae	.LBB1_106
# %bb.88:                               # %.lr.ph.i37
                                        #   in Loop: Header=BB1_73 Depth=3
	movq	%r15, %rcx
	cmpq	$4, 24(%rsp)            # 8-byte Folded Reload
	jb	.LBB1_102
# %bb.89:                               # %vector.ph165
                                        #   in Loop: Header=BB1_73 Depth=3
	cmpq	$0, 80(%rsp)            # 8-byte Folded Reload
	je	.LBB1_96
# %bb.90:                               # %vector.ph165.new
                                        #   in Loop: Header=BB1_73 Depth=3
	movq	%rdi, %rax
	movq	160(%rsp), %rdi         # 8-byte Reload
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_91:                               # %vector.body160
                                        #   Parent Loop BB1_70 Depth=1
                                        #     Parent Loop BB1_71 Depth=2
                                        #       Parent Loop BB1_73 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xorps	%xmm0, %xmm0
	movups	-16(%r12,%rsi,8), %xmm1
	movups	(%r12,%rsi,8), %xmm2
	xorps	%xmm3, %xmm3
	xorps	%xmm4, %xmm4
	cmpq	%r13, %r11
	je	.LBB1_93
# %bb.92:                               # %vector.body160
                                        #   in Loop: Header=BB1_91 Depth=4
	movups	-48(%r12,%rsi,8), %xmm3
	movups	-32(%r12,%rsi,8), %xmm4
.LBB1_93:                               # %vector.body160
                                        #   in Loop: Header=BB1_91 Depth=4
	movups	%xmm3, -48(%r12,%rsi,8)
	movups	%xmm4, -32(%r12,%rsi,8)
	xorps	%xmm3, %xmm3
	je	.LBB1_95
# %bb.94:                               # %vector.body160
                                        #   in Loop: Header=BB1_91 Depth=4
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm3
.LBB1_95:                               # %vector.body160
                                        #   in Loop: Header=BB1_91 Depth=4
	movups	%xmm0, -16(%r12,%rsi,8)
	movups	%xmm3, (%r12,%rsi,8)
	addq	$8, %rsi
	addq	$2, %rdi
	jne	.LBB1_91
	jmp	.LBB1_97
.LBB1_79:                               # %vector.ph200
                                        #   in Loop: Header=BB1_73 Depth=3
	cmpq	$0, 176(%rsp)           # 8-byte Folded Reload
	movq	%rdx, 192(%rsp)         # 8-byte Spill
	je	.LBB1_72
# %bb.80:                               # %vector.ph200.new
                                        #   in Loop: Header=BB1_73 Depth=3
	movq	152(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%r9,8), %rsi
	movq	144(%rsp), %rcx         # 8-byte Reload
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_81:                               # %vector.body182
                                        #   Parent Loop BB1_70 Depth=1
                                        #     Parent Loop BB1_71 Depth=2
                                        #       Parent Loop BB1_73 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpq	%r13, %r11
	leaq	-48(%rsi,%rdi,8), %rbx
	leaq	-32(%rsi,%rdi,8), %rbp
	leaq	(%r14,%rdi,8), %rax
	leaq	16(%r14,%rdi,8), %r8
	cmoveq	%rbx, %rax
	movups	(%rax), %xmm0
	cmoveq	%rbp, %r8
	movups	(%r8), %xmm1
	movups	%xmm0, (%r14,%rdi,8)
	movups	%xmm1, 16(%r14,%rdi,8)
	leaq	(%rsi,%rdi,8), %rax
	leaq	-16(%rsi,%rdi,8), %rbp
	leaq	32(%r14,%rdi,8), %rbx
	leaq	48(%r14,%rdi,8), %rdx
	cmoveq	%rbp, %rbx
	cmoveq	%rax, %rdx
	movups	(%rbx), %xmm0
	movups	(%rdx), %xmm1
	movups	%xmm0, 32(%r14,%rdi,8)
	movups	%xmm1, 48(%r14,%rdi,8)
	addq	$8, %rdi
	addq	$2, %rcx
	jne	.LBB1_81
# %bb.82:                               # %middle.block183.unr-lcssa
                                        #   in Loop: Header=BB1_73 Depth=3
	cmpq	$0, 168(%rsp)           # 8-byte Folded Reload
	je	.LBB1_84
.LBB1_83:                               # %vector.body182.epil
                                        #   in Loop: Header=BB1_73 Depth=3
	cmpq	%r13, %r11
	leaq	(%r14,%rdi,8), %rax
	movq	192(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rdi,8), %rcx
	leaq	16(%rdx,%rdi,8), %rdx
	leaq	16(%r14,%rdi,8), %rsi
	cmovneq	%rax, %rcx
	movups	(%rcx), %xmm0
	cmoveq	%rdx, %rsi
	movups	(%rsi), %xmm1
	movups	%xmm0, (%r14,%rdi,8)
	movups	%xmm1, 16(%r14,%rdi,8)
.LBB1_84:                               # %middle.block183
                                        #   in Loop: Header=BB1_73 Depth=3
	movq	184(%rsp), %rax         # 8-byte Reload
	movq	%rax, %rcx
	cmpq	%rax, %r15
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	312(%rsp), %rbx
	movq	%rbx, %rax
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	336(%rsp), %r8
	movq	%rax, %rdi
	je	.LBB1_87
	jmp	.LBB1_85
.LBB1_96:                               #   in Loop: Header=BB1_73 Depth=3
	movq	%rdi, %rax
	xorl	%esi, %esi
.LBB1_97:                               # %middle.block161.unr-lcssa
                                        #   in Loop: Header=BB1_73 Depth=3
	cmpq	$0, 72(%rsp)            # 8-byte Folded Reload
	movq	336(%rsp), %r8
	movq	%rax, %rdi
	je	.LBB1_101
# %bb.98:                               # %vector.body160.epil
                                        #   in Loop: Header=BB1_73 Depth=3
	addq	%r15, %rsi
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cmpq	%r13, %r11
	je	.LBB1_100
# %bb.99:                               # %vector.body160.epil
                                        #   in Loop: Header=BB1_73 Depth=3
	movups	(%r14,%rsi,8), %xmm0
	movups	16(%r14,%rsi,8), %xmm1
.LBB1_100:                              # %vector.body160.epil
                                        #   in Loop: Header=BB1_73 Depth=3
	movups	%xmm0, (%r14,%rsi,8)
	movups	%xmm1, 16(%r14,%rsi,8)
.LBB1_101:                              # %middle.block161
                                        #   in Loop: Header=BB1_73 Depth=3
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	64(%rsp), %rax          # 8-byte Reload
	cmpq	%rax, 24(%rsp)          # 8-byte Folded Reload
	je	.LBB1_106
	.p2align	4, 0x90
.LBB1_102:                              # %scalar.ph162
                                        #   Parent Loop BB1_70 Depth=1
                                        #     Parent Loop BB1_71 Depth=2
                                        #       Parent Loop BB1_73 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpq	%r13, %r11
	je	.LBB1_104
# %bb.103:                              # %scalar.ph162
                                        #   in Loop: Header=BB1_102 Depth=4
	movq	(%r14,%rcx,8), %rsi
	jmp	.LBB1_105
	.p2align	4, 0x90
.LBB1_104:                              #   in Loop: Header=BB1_102 Depth=4
	xorl	%esi, %esi
.LBB1_105:                              # %scalar.ph162
                                        #   in Loop: Header=BB1_102 Depth=4
	movq	%rsi, (%r14,%rcx,8)
	addq	$1, %rcx
	cmpq	%r8, %rcx
	jb	.LBB1_102
.LBB1_106:                              # %_mpi_copy.exit39
                                        #   in Loop: Header=BB1_73 Depth=3
	addq	$1, %r13
	addl	%ebp, %r10d
	cmpq	$16, %r13
	jne	.LBB1_73
# %bb.107:                              #   in Loop: Header=BB1_71 Depth=2
	subq	$8, %rsp
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r14, %rdx
	movq	%r8, %rcx
	movq	272(%rsp), %rax
	movq	%rax, %r8
	movq	280(%rsp), %rax
	movq	%rax, %r9
	movq	312(%rsp), %r13
	pushq	%r13
	movq	312(%rsp), %rbp
	pushq	%rbp
	movq	368(%rsp), %rax
	pushq	%rax
	callq	_mpi_montmul
	movq	376(%rsp), %r10
	addq	$32, %rsp
	movq	120(%rsp), %rax         # 8-byte Reload
	addq	$1, %rax
	cmpq	$17, %rax
	jne	.LBB1_71
# %bb.108:                              #   in Loop: Header=BB1_70 Depth=1
	movq	128(%rsp), %rcx         # 8-byte Reload
	addq	$1, %rcx
	cmpq	256(%rsp), %rcx
	jne	.LBB1_70
.LBB1_109:                              # %._crit_edge
	movq	$1, 96(%rsp)
	subq	$8, %rsp
	leaq	104(%rsp), %rdx
	movl	$1, %ecx
	movq	48(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	272(%rsp), %rbx
	movq	%rbx, %r8
	movq	280(%rsp), %r13
	movq	%r13, %r9
	movq	312(%rsp), %r12
	pushq	%r12
	movq	312(%rsp), %r15
	pushq	%r15
	pushq	%r10
	callq	_mpi_montmul
	addq	$32, %rsp
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	andl	$1, %eax
	movl	108(%rsp), %ecx         # 4-byte Reload
	shrl	$31, %ecx
	xorl	%edx, %edx
	#APP
	testb	%cl, %cl
	movl	%edx, %r11d
	cmovnel	%eax, %r11d
	#NO_APP
	movq	%rbx, %rcx
	andl	$1, %r11d
	cmpq	%r13, %r12
	movq	%r13, %rax
	cmovbq	%r12, %rax
	testq	%rax, %rax
	je	.LBB1_122
# %bb.110:                              # %.lr.ph3.i22
	cmpq	$4, %rax
	jae	.LBB1_112
# %bb.111:
	xorl	%edx, %edx
	jmp	.LBB1_121
.LBB1_112:                              # %vector.memcheck234
	leaq	(%rcx,%rax,8), %rdx
	cmpq	%r15, %rdx
	jbe	.LBB1_115
# %bb.113:                              # %vector.memcheck234
	leaq	(%r15,%rax,8), %rdx
	cmpq	%rcx, %rdx
	jbe	.LBB1_115
# %bb.114:
	xorl	%edx, %edx
	jmp	.LBB1_121
.LBB1_115:                              # %vector.ph235
	movq	%rax, %rdx
	andq	$-4, %rdx
	leaq	-4(%rdx), %rbp
	movq	%rbp, %rsi
	shrq	$2, %rsi
	leal	1(%rsi), %r8d
	andl	$1, %r8d
	testq	%rbp, %rbp
	je	.LBB1_170
# %bb.116:                              # %vector.ph235.new
	leaq	-1(%r8), %rbp
	subq	%rsi, %rbp
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_117:                              # %vector.body219
                                        # =>This Inner Loop Header: Depth=1
	testl	%r11d, %r11d
	leaq	(%rcx,%rsi,8), %r10
	leaq	16(%rcx,%rsi,8), %r9
	leaq	(%r15,%rsi,8), %rdi
	leaq	16(%r15,%rsi,8), %rbx
	cmovneq	%r10, %rdi
	movups	(%rdi), %xmm0
	cmovneq	%r9, %rbx
	movups	(%rbx), %xmm1
	movups	%xmm0, (%r15,%rsi,8)
	movups	%xmm1, 16(%r15,%rsi,8)
	leaq	32(%rcx,%rsi,8), %r10
	leaq	48(%rcx,%rsi,8), %r9
	leaq	32(%r15,%rsi,8), %rbx
	leaq	48(%r15,%rsi,8), %rdi
	cmovneq	%r10, %rbx
	cmovneq	%r9, %rdi
	movups	(%rbx), %xmm0
	movups	(%rdi), %xmm1
	movups	%xmm0, 32(%r15,%rsi,8)
	movups	%xmm1, 48(%r15,%rsi,8)
	addq	$8, %rsi
	addq	$2, %rbp
	jne	.LBB1_117
# %bb.118:                              # %middle.block220.unr-lcssa
	testq	%r8, %r8
	je	.LBB1_120
.LBB1_119:                              # %vector.body219.epil
	testl	%r11d, %r11d
	leaq	(%r15,%rsi,8), %rdi
	leaq	(%rcx,%rsi,8), %rbp
	leaq	16(%rcx,%rsi,8), %r8
	leaq	16(%r15,%rsi,8), %rbx
	cmoveq	%rdi, %rbp
	movups	(%rbp), %xmm0
	cmovneq	%r8, %rbx
	movups	(%rbx), %xmm1
	movups	%xmm0, (%r15,%rsi,8)
	movups	%xmm1, 16(%r15,%rsi,8)
.LBB1_120:                              # %middle.block220
	cmpq	%rdx, %rax
	je	.LBB1_122
	.p2align	4, 0x90
.LBB1_121:                              # %scalar.ph221
                                        # =>This Inner Loop Header: Depth=1
	testl	%r11d, %r11d
	leaq	(%r15,%rdx,8), %rsi
	leaq	(%rcx,%rdx,8), %rdi
	cmoveq	%rsi, %rdi
	movq	(%rdi), %rsi
	movq	%rsi, (%r15,%rdx,8)
	addq	$1, %rdx
	cmpq	%rax, %rdx
	jb	.LBB1_121
.LBB1_122:                              # %._crit_edge4.i24
	cmpq	%r13, %r12
	movq	(%rsp), %r10            # 8-byte Reload
	jbe	.LBB1_142
# %bb.123:                              # %.lr.ph.i25
	notq	%r13
	leaq	(%r12,%r13), %rdx
	addq	$1, %rdx
	cmpq	$4, %rdx
	jb	.LBB1_138
# %bb.124:                              # %vector.ph259
	movq	%rdx, %r8
	andq	$-4, %r8
	leaq	-4(%r8), %rsi
	movq	%rsi, %rbp
	shrq	$2, %rbp
	leal	1(%rbp), %edi
	andl	$1, %edi
	testq	%rsi, %rsi
	je	.LBB1_133
# %bb.125:                              # %vector.ph259.new
	movq	%r12, %rsi
	notq	%rsi
	cmpq	%r13, %rsi
	cmovbeq	%r13, %rsi
	movl	$5, %ebx
	subq	%rsi, %rbx
	leaq	(%r15,%rbx,8), %rbx
	leaq	-1(%rdi), %rsi
	subq	%rbp, %rsi
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB1_126:                              # %vector.body254
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	movups	-16(%rbx,%rbp,8), %xmm1
	movups	(%rbx,%rbp,8), %xmm2
	xorps	%xmm3, %xmm3
	xorps	%xmm4, %xmm4
	testl	%r11d, %r11d
	jne	.LBB1_128
# %bb.127:                              # %vector.body254
                                        #   in Loop: Header=BB1_126 Depth=1
	movups	-48(%rbx,%rbp,8), %xmm3
	movups	-32(%rbx,%rbp,8), %xmm4
.LBB1_128:                              # %vector.body254
                                        #   in Loop: Header=BB1_126 Depth=1
	movups	%xmm3, -48(%rbx,%rbp,8)
	movups	%xmm4, -32(%rbx,%rbp,8)
	xorps	%xmm3, %xmm3
	jne	.LBB1_130
# %bb.129:                              # %vector.body254
                                        #   in Loop: Header=BB1_126 Depth=1
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm3
.LBB1_130:                              # %vector.body254
                                        #   in Loop: Header=BB1_126 Depth=1
	movups	%xmm0, -16(%rbx,%rbp,8)
	movups	%xmm3, (%rbx,%rbp,8)
	addq	$8, %rbp
	addq	$2, %rsi
	jne	.LBB1_126
# %bb.131:                              # %middle.block255.unr-lcssa
	testq	%rdi, %rdi
	jne	.LBB1_134
.LBB1_132:                              # %middle.block255
	cmpq	%r8, %rdx
	jne	.LBB1_137
	jmp	.LBB1_142
.LBB1_133:
	xorl	%ebp, %ebp
	testq	%rdi, %rdi
	je	.LBB1_132
.LBB1_134:                              # %vector.body254.epil
	addq	%rax, %rbp
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	testl	%r11d, %r11d
	jne	.LBB1_136
# %bb.135:                              # %vector.body254.epil
	movups	(%r15,%rbp,8), %xmm0
	movups	16(%r15,%rbp,8), %xmm1
.LBB1_136:                              # %vector.body254.epil
	movups	%xmm0, (%r15,%rbp,8)
	movups	%xmm1, 16(%r15,%rbp,8)
	cmpq	%r8, %rdx
	je	.LBB1_142
.LBB1_137:
	addq	%r8, %rax
	.p2align	4, 0x90
.LBB1_138:                              # %scalar.ph256
                                        # =>This Inner Loop Header: Depth=1
	testl	%r11d, %r11d
	jne	.LBB1_140
# %bb.139:                              # %scalar.ph256
                                        #   in Loop: Header=BB1_138 Depth=1
	movq	(%r15,%rax,8), %rdx
	jmp	.LBB1_141
	.p2align	4, 0x90
.LBB1_140:                              #   in Loop: Header=BB1_138 Depth=1
	xorl	%edx, %edx
.LBB1_141:                              # %scalar.ph256
                                        #   in Loop: Header=BB1_138 Depth=1
	movq	%rdx, (%r15,%rax,8)
	addq	$1, %rax
	cmpq	%r12, %rax
	jb	.LBB1_138
.LBB1_142:                              # %_mpi_copy.exit27
	leal	(%r11,%r11), %eax
	testq	%r10, %r10
	je	.LBB1_145
# %bb.143:                              # %.lr.ph7.i.preheader
	xorl	%esi, %esi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_144:                              # %.lr.ph7.i
                                        # =>This Inner Loop Header: Depth=1
	testl	%r11d, %r11d
	movq	(%r15,%rsi,8), %r8
	movl	$0, %ebp
	cmovneq	%rdx, %rbp
	movq	%r8, %rdi
	subq	%rbp, %rdi
	testl	%r11d, %r11d
	movq	%rdi, (%r15,%rsi,8)
	movq	(%r14,%rsi,8), %rbp
	movl	$0, %ecx
	cmovneq	%rbp, %rcx
	xorl	%ebx, %ebx
	cmpq	%rbp, %rdi
	setb	%bl
	cmpq	%rdx, %r8
	adcq	$0, %rbx
	testl	%r11d, %r11d
	cmovneq	%rbx, %rdx
	subq	%rcx, %rdi
	movq	%rdi, (%r15,%rsi,8)
	addq	$1, %rsi
	cmpq	%rsi, %r10
	jne	.LBB1_144
	jmp	.LBB1_146
.LBB1_145:
	xorl	%edx, %edx
.LBB1_146:                              # %._crit_edge8.i
	xorl	$2, %eax
	cmpq	%r10, %r12
	jbe	.LBB1_152
# %bb.147:                              # %.lr.ph.i28.preheader
	movl	%r12d, %ecx
	subl	%r10d, %ecx
	leaq	-1(%r12), %rsi
	testb	$1, %cl
	jne	.LBB1_149
# %bb.148:
	movq	%r10, %rdi
	cmpq	%r10, %rsi
	jne	.LBB1_150
	jmp	.LBB1_152
.LBB1_149:                              # %.lr.ph.i28.prol
	movq	(%r15,%r10,8), %rcx
	xorl	%edi, %edi
	cmpq	%rdx, %rcx
	setb	%dil
	xorl	%ebp, %ebp
	testl	%r11d, %r11d
	cmovneq	%rdx, %rbp
	cmovneq	%rdi, %rdx
	subq	%rbp, %rcx
	movq	%rcx, (%r15,%r10,8)
	leaq	1(%r10), %rdi
	cmpq	%r10, %rsi
	je	.LBB1_152
.LBB1_150:                              # %.lr.ph.i28.preheader.new
	subq	%rdi, %r12
	leaq	(%r15,%rdi,8), %rsi
	addq	$8, %rsi
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB1_151:                              # %.lr.ph.i28
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rsi), %rcx
	movq	(%rsi), %r9
	xorl	%edi, %edi
	cmpq	%rdx, %rcx
	setb	%dil
	testl	%r11d, %r11d
	movq	%rdi, %rbx
	cmoveq	%rdx, %rbx
	xorl	%ebp, %ebp
	cmpq	%rbx, %r9
	setb	%bpl
	testl	%r11d, %r11d
	cmoveq	%rdx, %rbp
	cmoveq	%r8, %rdx
	setne	%bl
	subq	%rdx, %rcx
	movq	%rcx, -8(%rsi)
	andb	%bl, %dil
	movzbl	%dil, %ecx
	subq	%rcx, %r9
	movq	%r9, (%rsi)
	addq	$16, %rsi
	movq	%rbp, %rdx
	addq	$-2, %r12
	jne	.LBB1_151
.LBB1_152:                              # %_mpi_sub_hlp.exit
	addl	$-1, %eax
	testq	%r10, %r10
	je	.LBB1_169
# %bb.153:                              # %.lr.ph3.i29
	cmpq	$4, %r10
	jb	.LBB1_154
# %bb.155:                              # %vector.memcheck291
	leaq	(%r15,%r10,8), %rcx
	cmpq	%r14, %rcx
	jbe	.LBB1_158
# %bb.156:                              # %vector.memcheck291
	leaq	(%r14,%r10,8), %rcx
	cmpq	%r15, %rcx
	jbe	.LBB1_158
.LBB1_154:
	xorl	%edx, %edx
.LBB1_164:                              # %scalar.ph280.preheader
	leaq	-1(%r10), %rsi
	subq	%rdx, %rsi
	movq	%r10, %rdi
	andq	$3, %rdi
	je	.LBB1_167
# %bb.165:                              # %scalar.ph280.prol.preheader
	negq	%rdi
	.p2align	4, 0x90
.LBB1_166:                              # %scalar.ph280.prol
                                        # =>This Inner Loop Header: Depth=1
	testl	%r11d, %r11d
	leaq	(%r14,%rdx,8), %rcx
	leaq	(%r15,%rdx,8), %rbp
	cmoveq	%rcx, %rbp
	movq	(%rbp), %rcx
	movq	%rcx, (%r14,%rdx,8)
	addq	$1, %rdx
	addq	$1, %rdi
	jne	.LBB1_166
.LBB1_167:                              # %scalar.ph280.prol.loopexit
	cmpq	$3, %rsi
	jb	.LBB1_169
	.p2align	4, 0x90
.LBB1_168:                              # %scalar.ph280
                                        # =>This Inner Loop Header: Depth=1
	testl	%r11d, %r11d
	leaq	(%r15,%rdx,8), %rcx
	leaq	(%r14,%rdx,8), %rsi
	cmovneq	%rcx, %rsi
	movq	(%rsi), %rcx
	movq	%rcx, (%r14,%rdx,8)
	leaq	8(%r15,%rdx,8), %rcx
	leaq	8(%r14,%rdx,8), %rsi
	cmovneq	%rcx, %rsi
	movq	(%rsi), %rcx
	movq	%rcx, 8(%r14,%rdx,8)
	leaq	16(%r15,%rdx,8), %rcx
	leaq	16(%r14,%rdx,8), %rsi
	cmovneq	%rcx, %rsi
	movq	(%rsi), %rcx
	movq	%rcx, 16(%r14,%rdx,8)
	leaq	24(%r15,%rdx,8), %rcx
	leaq	24(%r14,%rdx,8), %rsi
	cmovneq	%rcx, %rsi
	movq	(%rsi), %rcx
	movq	%rcx, 24(%r14,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %r10
	jne	.LBB1_168
	jmp	.LBB1_169
.LBB1_158:                              # %vector.ph292
	movq	%r10, %rdx
	andq	$-4, %rdx
	leaq	-4(%rdx), %rcx
	movq	%rcx, %rsi
	shrq	$2, %rsi
	leal	1(%rsi), %r8d
	andl	$1, %r8d
	testq	%rcx, %rcx
	je	.LBB1_171
# %bb.159:                              # %vector.ph292.new
	leaq	-1(%r8), %rbp
	subq	%rsi, %rbp
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_160:                              # %vector.body278
                                        # =>This Inner Loop Header: Depth=1
	testl	%r11d, %r11d
	leaq	(%r15,%rsi,8), %rcx
	leaq	16(%r15,%rsi,8), %r9
	leaq	(%r14,%rsi,8), %rdi
	leaq	16(%r14,%rsi,8), %rbx
	cmovneq	%rcx, %rdi
	movups	(%rdi), %xmm0
	cmovneq	%r9, %rbx
	movups	(%rbx), %xmm1
	movups	%xmm0, (%r14,%rsi,8)
	movups	%xmm1, 16(%r14,%rsi,8)
	leaq	32(%r15,%rsi,8), %rcx
	leaq	48(%r15,%rsi,8), %r9
	leaq	32(%r14,%rsi,8), %rbx
	leaq	48(%r14,%rsi,8), %rdi
	cmovneq	%rcx, %rbx
	cmovneq	%r9, %rdi
	movups	(%rbx), %xmm0
	movups	(%rdi), %xmm1
	movups	%xmm0, 32(%r14,%rsi,8)
	movups	%xmm1, 48(%r14,%rsi,8)
	addq	$8, %rsi
	addq	$2, %rbp
	jne	.LBB1_160
# %bb.161:                              # %middle.block279.unr-lcssa
	testq	%r8, %r8
	je	.LBB1_163
.LBB1_162:                              # %vector.body278.epil
	testl	%r11d, %r11d
	leaq	(%r14,%rsi,8), %rcx
	leaq	(%r15,%rsi,8), %rdi
	leaq	16(%r15,%rsi,8), %rbp
	leaq	16(%r14,%rsi,8), %rbx
	cmoveq	%rcx, %rdi
	movups	(%rdi), %xmm0
	cmovneq	%rbp, %rbx
	movups	(%rbx), %xmm1
	movups	%xmm0, (%r14,%rsi,8)
	movups	%xmm1, 16(%r14,%rsi,8)
.LBB1_163:                              # %middle.block279
	cmpq	%r10, %rdx
	jne	.LBB1_164
.LBB1_169:                              # %_mpi_copy.exit32
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_170:
	xorl	%esi, %esi
	testq	%r8, %r8
	jne	.LBB1_119
	jmp	.LBB1_120
.LBB1_171:
	xorl	%esi, %esi
	testq	%r8, %r8
	jne	.LBB1_162
	jmp	.LBB1_163
.Lfunc_end1:
	.size	_f_mpi_exp_mod, .Lfunc_end1-_f_mpi_exp_mod
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
