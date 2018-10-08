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
	movq	%rsi, %r8
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
	movq	%r8, %rbp
	callq	memset
	movq	%rbp, %r8
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	216(%rsp), %rdi
	movq	8(%rsp), %r9            # 8-byte Reload
.LBB0_2:                                # %._crit_edge31
	testq	%r9, %r9
	movq	%r8, 24(%rsp)           # 8-byte Spill
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
	movq	24(%rsp), %r8           # 8-byte Reload
	movq	32(%rsp), %r13          # 8-byte Reload
	je	.LBB0_49
# %bb.30:                               # %.lr.ph
	cmpq	$16, %rbp
	jae	.LBB0_33
	jmp	.LBB0_31
.LBB0_32:
	movl	$1, %ebp
	cmpq	$16, %rbp
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
.LBB0_43:                               # %scalar.ph.preheader
	leaq	-1(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rbp, %rdx
	andq	$3, %rdx
	je	.LBB0_46
# %bb.44:                               # %scalar.ph.prol.preheader
	leaq	(%rdi,%r9,8), %rsi
	negq	%rdx
	.p2align	4, 0x90
.LBB0_45:                               # %scalar.ph.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi,%rax,8), %rdi
	movq	%rdi, (%r13,%rax,8)
	addq	$1, %rax
	addq	$1, %rdx
	jne	.LBB0_45
.LBB0_46:                               # %scalar.ph.prol.loopexit
	cmpq	$3, %rcx
	movq	216(%rsp), %rcx
	jb	.LBB0_49
# %bb.47:                               # %scalar.ph.preheader.new
	leaq	(%rcx,%r9,8), %rcx
	addq	$24, %rcx
	.p2align	4, 0x90
.LBB0_48:                               # %scalar.ph
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
	jne	.LBB0_48
	jmp	.LBB0_49
.LBB0_36:                               # %vector.ph
	movq	%rbp, %rax
	andq	$-16, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rdx
	shrq	$4, %rdx
	leal	1(%rdx), %ecx
	andl	$1, %ecx
	testq	%rsi, %rsi
	je	.LBB0_39
# %bb.37:                               # %vector.ph.new
	leaq	(%rdi,%r9,8), %rsi
	addq	$224, %rsi
	leaq	-1(%rcx), %rdi
	subq	%rdx, %rdi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_38:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vmovups	-224(%rsi,%rdx,8), %ymm0
	vmovups	-192(%rsi,%rdx,8), %ymm1
	vmovups	-160(%rsi,%rdx,8), %ymm2
	vmovups	-128(%rsi,%rdx,8), %ymm3
	vmovups	%ymm0, (%r13,%rdx,8)
	vmovups	%ymm1, 32(%r13,%rdx,8)
	vmovups	%ymm2, 64(%r13,%rdx,8)
	vmovups	%ymm3, 96(%r13,%rdx,8)
	vmovups	-96(%rsi,%rdx,8), %ymm0
	vmovups	-64(%rsi,%rdx,8), %ymm1
	vmovups	-32(%rsi,%rdx,8), %ymm2
	vmovups	(%rsi,%rdx,8), %ymm3
	vmovups	%ymm0, 128(%r13,%rdx,8)
	vmovups	%ymm1, 160(%r13,%rdx,8)
	vmovups	%ymm2, 192(%r13,%rdx,8)
	vmovups	%ymm3, 224(%r13,%rdx,8)
	addq	$32, %rdx
	addq	$2, %rdi
	jne	.LBB0_38
	jmp	.LBB0_40
.LBB0_39:
	xorl	%edx, %edx
.LBB0_40:                               # %middle.block.unr-lcssa
	testq	%rcx, %rcx
	movq	216(%rsp), %rdi
	je	.LBB0_42
# %bb.41:                               # %vector.body.epil
	leaq	(%rdx,%r9), %rcx
	vmovups	(%rdi,%rcx,8), %ymm0
	vmovups	32(%rdi,%rcx,8), %ymm1
	vmovups	64(%rdi,%rcx,8), %ymm2
	vmovups	96(%rdi,%rcx,8), %ymm3
	vmovups	%ymm0, (%r13,%rdx,8)
	vmovups	%ymm1, 32(%r13,%rdx,8)
	vmovups	%ymm2, 64(%r13,%rdx,8)
	vmovups	%ymm3, 96(%r13,%rdx,8)
.LBB0_42:                               # %middle.block
	cmpq	%rax, %rbp
	jne	.LBB0_43
.LBB0_49:                               # %._crit_edge
	xorl	%esi, %esi
	testq	%r8, %r8
	je	.LBB0_54
# %bb.50:                               # %.lr.ph36.i.preheader
	movq	%r8, %rdx
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB0_51:                               # %.lr.ph36.i
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
	je	.LBB0_53
# %bb.52:                               # %.lr.ph36.i
                                        #   in Loop: Header=BB0_51 Depth=1
	movq	%rdx, %r15
.LBB0_53:                               # %.lr.ph36.i
                                        #   in Loop: Header=BB0_51 Depth=1
	addq	$-1, %rdx
	jne	.LBB0_51
	jmp	.LBB0_55
.LBB0_54:
	xorl	%r15d, %r15d
.LBB0_55:                               # %._crit_edge37.i
	xorl	%edi, %edi
	testq	%r9, %r9
	je	.LBB0_60
# %bb.56:                               # %.lr.ph31.i.preheader
	movq	%r9, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_57:                               # %.lr.ph31.i
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
	je	.LBB0_59
# %bb.58:                               # %.lr.ph31.i
                                        #   in Loop: Header=BB0_57 Depth=1
	movq	%rcx, %rdx
.LBB0_59:                               # %.lr.ph31.i
                                        #   in Loop: Header=BB0_57 Depth=1
	addq	$-1, %rcx
	jne	.LBB0_57
	jmp	.LBB0_61
.LBB0_60:
	xorl	%edx, %edx
.LBB0_61:                               # %._crit_edge32.i
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
	cmpq	%rax, %r8
	movq	%rax, %r12
	cmovbq	%r8, %r12
	andl	%ebp, %r11d
	testq	%r12, %r12
	je	.LBB0_64
# %bb.62:                               # %.lr.ph.i16.preheader
	movl	%ebp, %esi
	andl	$1, %esi
	xorl	%r10d, %r10d
	movq	%r12, %rdi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_63:                               # %.lr.ph.i16
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
	ja	.LBB0_63
.LBB0_64:                               # %_mbedtls_mpi_cmp_abs.exit
	testl	%r11d, %ebp
	setne	%dl
	testl	%ecx, %ecx
	setns	%r8b
	orb	%dl, %r8b
	movq	8(%rsp), %r9            # 8-byte Reload
	testq	%r9, %r9
	je	.LBB0_68
# %bb.65:                               # %.lr.ph7.i.preheader
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	24(%rsp), %r10          # 8-byte Reload
	.p2align	4, 0x90
.LBB0_66:                               # %.lr.ph7.i
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
	jne	.LBB0_66
# %bb.67:                               # %._crit_edge8.i
	cmpq	%r9, %r10
	ja	.LBB0_69
	jmp	.LBB0_74
.LBB0_68:
	xorl	%ecx, %ecx
	movq	24(%rsp), %r10          # 8-byte Reload
	cmpq	%r9, %r10
	jbe	.LBB0_74
.LBB0_69:                               # %.lr.ph.i1.preheader
	movl	%r10d, %eax
	subl	%r9d, %eax
	leaq	-1(%r10), %rdx
	testb	$1, %al
	jne	.LBB0_71
# %bb.70:
	movq	%r9, %rsi
	cmpq	%r9, %rdx
	jne	.LBB0_72
	jmp	.LBB0_74
.LBB0_71:                               # %.lr.ph.i1.prol
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
	je	.LBB0_74
.LBB0_72:                               # %.lr.ph.i1.preheader.new
	subq	%rsi, %r10
	leaq	8(,%rsi,8), %rdx
	addq	%r13, %rdx
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB0_73:                               # %.lr.ph.i1
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
	jne	.LBB0_73
.LBB0_74:                               # %_mpi_sub_hlp.exit
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
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
	subq	$168, %rsp
	movq	%r9, 112(%rsp)          # 8-byte Spill
	movl	%r8d, 108(%rsp)         # 4-byte Spill
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rsi, %r14
	movq	%rdi, (%rsp)            # 8-byte Spill
	movq	256(%rsp), %rbp
	movq	248(%rsp), %rbx
	movq	288(%rsp), %r9
	cmpq	%rbp, %r14
	movq	%rbp, %rax
	cmovbq	%r14, %rax
	testq	%rax, %rax
	je	.LBB1_13
# %bb.1:                                # %.lr.ph3.i
	cmpq	$16, %rax
	jae	.LBB1_3
# %bb.2:
	xorl	%ecx, %ecx
	movq	(%rsp), %rsi            # 8-byte Reload
	jmp	.LBB1_12
.LBB1_3:                                # %vector.memcheck
	leaq	(%rbx,%rax,8), %rcx
	movq	(%rsp), %rsi            # 8-byte Reload
	cmpq	%rsi, %rcx
	jbe	.LBB1_6
# %bb.4:                                # %vector.memcheck
	leaq	(%rsi,%rax,8), %rcx
	cmpq	%rbx, %rcx
	jbe	.LBB1_6
# %bb.5:
	xorl	%ecx, %ecx
	jmp	.LBB1_12
.LBB1_6:                                # %vector.ph
	movq	%rax, %rcx
	andq	$-16, %rcx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rsi
	shrq	$4, %rsi
	leal	1(%rsi), %edx
	andl	$1, %edx
	movq	%rbp, %r8
	testq	%rdi, %rdi
	je	.LBB1_137
# %bb.7:                                # %vector.ph.new
	leaq	-1(%rdx), %rdi
	subq	%rsi, %rdi
	xorl	%esi, %esi
	movq	(%rsp), %rbp            # 8-byte Reload
	.p2align	4, 0x90
.LBB1_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vmovups	(%rbx,%rsi,8), %ymm0
	vmovups	32(%rbx,%rsi,8), %ymm1
	vmovups	64(%rbx,%rsi,8), %ymm2
	vmovups	96(%rbx,%rsi,8), %ymm3
	vmovups	%ymm0, (%rbp,%rsi,8)
	vmovups	%ymm1, 32(%rbp,%rsi,8)
	vmovups	%ymm2, 64(%rbp,%rsi,8)
	vmovups	%ymm3, 96(%rbp,%rsi,8)
	vmovups	128(%rbx,%rsi,8), %ymm0
	vmovups	160(%rbx,%rsi,8), %ymm1
	vmovups	192(%rbx,%rsi,8), %ymm2
	vmovups	224(%rbx,%rsi,8), %ymm3
	vmovups	%ymm0, 128(%rbp,%rsi,8)
	vmovups	%ymm1, 160(%rbp,%rsi,8)
	vmovups	%ymm2, 192(%rbp,%rsi,8)
	vmovups	%ymm3, 224(%rbp,%rsi,8)
	addq	$32, %rsi
	addq	$2, %rdi
	jne	.LBB1_8
# %bb.9:                                # %middle.block.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB1_11
.LBB1_10:                               # %vector.body.epil
	vmovups	(%rbx,%rsi,8), %ymm0
	vmovups	32(%rbx,%rsi,8), %ymm1
	vmovups	64(%rbx,%rsi,8), %ymm2
	vmovups	96(%rbx,%rsi,8), %ymm3
	movq	(%rsp), %rdx            # 8-byte Reload
	vmovups	%ymm0, (%rdx,%rsi,8)
	vmovups	%ymm1, 32(%rdx,%rsi,8)
	vmovups	%ymm2, 64(%rdx,%rsi,8)
	vmovups	%ymm3, 96(%rdx,%rsi,8)
.LBB1_11:                               # %middle.block
	cmpq	%rcx, %rax
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	%r8, %rbp
	je	.LBB1_13
	.p2align	4, 0x90
.LBB1_12:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx,%rcx,8), %rdx
	movq	%rdx, (%rsi,%rcx,8)
	addq	$1, %rcx
	cmpq	%rax, %rcx
	jb	.LBB1_12
.LBB1_13:                               # %._crit_edge4.i
	shrq	$4, %r9
	movq	%r9, 24(%rsp)           # 8-byte Spill
	movabsq	$2305843009213693951, %r15 # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rbp, %r14
	jbe	.LBB1_15
# %bb.14:                               # %.lr.ph.i
	movq	(%rsp), %rcx            # 8-byte Reload
	leaq	(%rcx,%rax,8), %rdi
	movq	%rbp, %rax
	xorq	%r15, %rax
	addq	%r14, %rax
	leaq	8(,%rax,8), %rdx
	xorl	%esi, %esi
	vzeroupper
	callq	memset
.LBB1_15:                               # %_mpi_copy.exit
	movq	280(%rsp), %rbx
	movq	$1, 96(%rsp)
	subq	$8, %rsp
	leaq	104(%rsp), %rdx
	movl	$1, %ecx
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%r14, %rsi
	movq	240(%rsp), %r8
	movq	248(%rsp), %r9
	pushq	280(%rsp)
	pushq	280(%rsp)
	pushq	336(%rsp)
	vzeroupper
	callq	_mpi_montmul
	movq	%rbx, %rax
	addq	$32, %rsp
	movl	24(%rsp), %esi          # 4-byte Reload
	cmpq	%r14, %rsi
	movq	%r14, %rbx
	cmovbq	%rsi, %rbx
	testq	%rbx, %rbx
	je	.LBB1_28
# %bb.16:                               # %.lr.ph3.i3
	cmpq	$16, %rbx
	jae	.LBB1_18
# %bb.17:
	xorl	%ecx, %ecx
	movq	(%rsp), %rdi            # 8-byte Reload
	jmp	.LBB1_27
.LBB1_18:                               # %vector.memcheck89
	movq	(%rsp), %rdi            # 8-byte Reload
	leaq	(%rdi,%rbx,8), %rcx
	cmpq	%rax, %rcx
	jbe	.LBB1_21
# %bb.19:                               # %vector.memcheck89
	leaq	(%rax,%rbx,8), %rcx
	cmpq	%rdi, %rcx
	jbe	.LBB1_21
# %bb.20:
	xorl	%ecx, %ecx
	jmp	.LBB1_27
.LBB1_21:                               # %vector.ph90
	movl	%ebx, %ecx
	andl	$-16, %ecx
	leaq	-16(%rcx), %rdi
	movq	%rdi, %rdx
	shrq	$4, %rdx
	leal	1(%rdx), %r8d
	andl	$1, %r8d
	testq	%rdi, %rdi
	je	.LBB1_138
# %bb.22:                               # %vector.ph90.new
	leaq	-1(%r8), %rdi
	subq	%rdx, %rdi
	xorl	%ebp, %ebp
	movq	(%rsp), %rdx            # 8-byte Reload
	.p2align	4, 0x90
.LBB1_23:                               # %vector.body75
                                        # =>This Inner Loop Header: Depth=1
	vmovups	(%rdx,%rbp,8), %ymm0
	vmovups	32(%rdx,%rbp,8), %ymm1
	vmovups	64(%rdx,%rbp,8), %ymm2
	vmovups	96(%rdx,%rbp,8), %ymm3
	vmovups	%ymm0, (%rax,%rbp,8)
	vmovups	%ymm1, 32(%rax,%rbp,8)
	vmovups	%ymm2, 64(%rax,%rbp,8)
	vmovups	%ymm3, 96(%rax,%rbp,8)
	vmovups	128(%rdx,%rbp,8), %ymm0
	vmovups	160(%rdx,%rbp,8), %ymm1
	vmovups	192(%rdx,%rbp,8), %ymm2
	vmovups	224(%rdx,%rbp,8), %ymm3
	vmovups	%ymm0, 128(%rax,%rbp,8)
	vmovups	%ymm1, 160(%rax,%rbp,8)
	vmovups	%ymm2, 192(%rax,%rbp,8)
	vmovups	%ymm3, 224(%rax,%rbp,8)
	addq	$32, %rbp
	addq	$2, %rdi
	jne	.LBB1_23
# %bb.24:                               # %middle.block76.unr-lcssa
	testq	%r8, %r8
	je	.LBB1_26
.LBB1_25:                               # %vector.body75.epil
	movq	(%rsp), %rdx            # 8-byte Reload
	vmovups	(%rdx,%rbp,8), %ymm0
	vmovups	32(%rdx,%rbp,8), %ymm1
	vmovups	64(%rdx,%rbp,8), %ymm2
	vmovups	96(%rdx,%rbp,8), %ymm3
	vmovups	%ymm0, (%rax,%rbp,8)
	vmovups	%ymm1, 32(%rax,%rbp,8)
	vmovups	%ymm2, 64(%rax,%rbp,8)
	vmovups	%ymm3, 96(%rax,%rbp,8)
.LBB1_26:                               # %middle.block76
	cmpq	%rcx, %rbx
	movq	(%rsp), %rdi            # 8-byte Reload
	je	.LBB1_28
	.p2align	4, 0x90
.LBB1_27:                               # %scalar.ph77
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%rcx,8), %rdx
	movq	%rdx, (%rax,%rcx,8)
	addq	$1, %rcx
	cmpq	%rbx, %rcx
	jb	.LBB1_27
.LBB1_28:                               # %._crit_edge4.i5
	cmpq	%r14, %rsi
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	jbe	.LBB1_30
# %bb.29:                               # %.lr.ph.i6
	leaq	(%rax,%rbx,8), %rdi
	xorq	%r14, %r15
	addq	%rsi, %r15
	leaq	8(,%r15,8), %rdx
	xorl	%esi, %esi
	vzeroupper
	callq	memset
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	280(%rsp), %rax
.LBB1_30:                               # %_mpi_copy.exit8
	leaq	(%rax,%rsi,8), %rdi
	cmpq	%r12, %rsi
	movq	%r12, %r8
	cmovbq	%rsi, %r8
	testq	%r8, %r8
	movq	232(%rsp), %rbx
	movq	312(%rsp), %rbp
	movq	248(%rsp), %r15
	je	.LBB1_43
# %bb.31:                               # %.lr.ph3.i10
	cmpq	$16, %r8
	jae	.LBB1_33
# %bb.32:
	xorl	%ecx, %ecx
	jmp	.LBB1_42
.LBB1_33:                               # %vector.memcheck121
	cmpq	%r12, %rsi
	movq	%r12, %rcx
	cmovbq	%rsi, %rcx
	leaq	(,%r8,8), %rdx
	addq	%r13, %rdx
	cmpq	%rdx, %rdi
	jae	.LBB1_36
# %bb.34:                               # %vector.memcheck121
	notq	%rcx
	negq	%rcx
	addq	%rsi, %rcx
	addq	$-1, %rcx
	leaq	(%rax,%rcx,8), %rcx
	cmpq	%r13, %rcx
	jbe	.LBB1_36
# %bb.35:
	xorl	%ecx, %ecx
	jmp	.LBB1_42
.LBB1_36:                               # %vector.ph122
	movl	%r8d, %ecx
	andl	$-16, %ecx
	leaq	-16(%rcx), %rbp
	movq	%rbp, %rbx
	shrq	$4, %rbx
	leal	1(%rbx), %r9d
	andl	$1, %r9d
	testq	%rbp, %rbp
	je	.LBB1_139
# %bb.37:                               # %vector.ph122.new
	leaq	(%rax,%rsi,8), %rdx
	addq	$224, %rdx
	leaq	-1(%r9), %rbp
	subq	%rbx, %rbp
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_38:                               # %vector.body107
                                        # =>This Inner Loop Header: Depth=1
	vmovups	(%r13,%rax,8), %ymm0
	vmovups	32(%r13,%rax,8), %ymm1
	vmovups	64(%r13,%rax,8), %ymm2
	vmovups	96(%r13,%rax,8), %ymm3
	vmovups	%ymm0, -224(%rdx,%rax,8)
	vmovups	%ymm1, -192(%rdx,%rax,8)
	vmovups	%ymm2, -160(%rdx,%rax,8)
	vmovups	%ymm3, -128(%rdx,%rax,8)
	vmovups	128(%r13,%rax,8), %ymm0
	vmovups	160(%r13,%rax,8), %ymm1
	vmovups	192(%r13,%rax,8), %ymm2
	vmovups	224(%r13,%rax,8), %ymm3
	vmovups	%ymm0, -96(%rdx,%rax,8)
	vmovups	%ymm1, -64(%rdx,%rax,8)
	vmovups	%ymm2, -32(%rdx,%rax,8)
	vmovups	%ymm3, (%rdx,%rax,8)
	addq	$32, %rax
	addq	$2, %rbp
	jne	.LBB1_38
# %bb.39:                               # %middle.block108.unr-lcssa
	testq	%r9, %r9
	je	.LBB1_41
.LBB1_40:                               # %vector.body107.epil
	vmovups	(%r13,%rax,8), %ymm0
	vmovups	32(%r13,%rax,8), %ymm1
	vmovups	64(%r13,%rax,8), %ymm2
	vmovups	96(%r13,%rax,8), %ymm3
	vmovups	%ymm0, (%rdi,%rax,8)
	vmovups	%ymm1, 32(%rdi,%rax,8)
	vmovups	%ymm2, 64(%rdi,%rax,8)
	vmovups	%ymm3, 96(%rdi,%rax,8)
.LBB1_41:                               # %middle.block108
	cmpq	%rcx, %r8
	movq	232(%rsp), %rbx
	movq	312(%rsp), %rbp
	je	.LBB1_43
	.p2align	4, 0x90
.LBB1_42:                               # %scalar.ph109
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13,%rcx,8), %rdx
	movq	%rdx, (%rdi,%rcx,8)
	addq	$1, %rcx
	cmpq	%r8, %rcx
	jb	.LBB1_42
.LBB1_43:                               # %._crit_edge4.i12
	movq	%r14, 8(%rsp)           # 8-byte Spill
	cmpq	%r12, %rsi
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	jbe	.LBB1_45
# %bb.44:                               # %.lr.ph.i13
	leaq	-1(%rsi), %rax
	notq	%r12
	subq	%r12, %rax
	movq	280(%rsp), %rcx
	leaq	(%rcx,%rax,8), %rdi
	addq	%rsi, %r12
	leaq	8(,%r12,8), %rdx
	xorl	%esi, %esi
	vzeroupper
	callq	memset
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
.LBB1_45:                               # %_mpi_copy.exit15
	movq	296(%rsp), %r13
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	%rax, 48(%rsp)          # 8-byte Spill
	subq	$8, %rsp
	movq	%r15, %rdx
	movq	264(%rsp), %rcx
	movq	%rbx, %r8
	movq	248(%rsp), %r12
	movq	%r12, %r9
	pushq	280(%rsp)
	pushq	280(%rsp)
	pushq	%rbp
	movq	%rsi, %r12
	vzeroupper
	callq	_mpi_montmul
	addq	$32, %rsp
	movq	24(%rsp), %r10          # 8-byte Reload
	leal	(%r10,%r10), %r15d
	leaq	-1(%r12), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movl	%r10d, %eax
	andl	$15, %eax
	movq	%r12, %rcx
	movq	%rax, 56(%rsp)          # 8-byte Spill
	subq	%rax, %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	280(%rsp), %rax
	leaq	96(%rax), %rcx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movl	$-1, %r14d
	addl	$2, %r14d
	imull	%r10d, %r14d
	leaq	24(%rax), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	xorl	%r11d, %r11d
	movl	$2, %ecx
	movq	%r15, %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
                                        # kill: def %r15d killed %r15d killed %r15 def %r15
	jmp	.LBB1_46
.LBB1_52:                               # %vector.ph159
                                        #   in Loop: Header=BB1_46 Depth=1
	movq	128(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r15,8), %rax
	leaq	(%rcx,%r14,8), %rcx
	xorl	%ebx, %ebx
	movq	32(%rsp), %rbp          # 8-byte Reload
	.p2align	4, 0x90
.LBB1_53:                               # %vector.body139
                                        #   Parent Loop BB1_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovups	-96(%rcx,%rbx,8), %ymm0
	vmovups	-64(%rcx,%rbx,8), %ymm1
	vmovups	-32(%rcx,%rbx,8), %ymm2
	vmovups	(%rcx,%rbx,8), %ymm3
	vmovups	%ymm0, -96(%rax,%rbx,8)
	vmovups	%ymm1, -64(%rax,%rbx,8)
	vmovups	%ymm2, -32(%rax,%rbx,8)
	vmovups	%ymm3, (%rax,%rbx,8)
	addq	$16, %rbx
	cmpq	%rbx, %rbp
	jne	.LBB1_53
# %bb.54:                               # %middle.block140
                                        #   in Loop: Header=BB1_46 Depth=1
	movq	%rbp, %rax
	cmpq	$0, 56(%rsp)            # 8-byte Folded Reload
	jne	.LBB1_55
	jmp	.LBB1_61
	.p2align	4, 0x90
.LBB1_46:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_53 Depth 2
                                        #     Child Loop BB1_57 Depth 2
                                        #     Child Loop BB1_60 Depth 2
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movl	%ecx, %eax
	imull	%r10d, %eax
	movl	%r14d, %r14d
	movl	%r15d, %r15d
	movq	280(%rsp), %r9
	leaq	(%r9,%rax,8), %rdi
	testq	%r12, %r12
	movq	40(%rsp), %rdx          # 8-byte Reload
	je	.LBB1_61
# %bb.47:                               # %.lr.ph3.i16
                                        #   in Loop: Header=BB1_46 Depth=1
	cmpq	$16, %r12
	jb	.LBB1_48
# %bb.49:                               # %vector.memcheck158
                                        #   in Loop: Header=BB1_46 Depth=1
	movl	%r11d, %eax
	imull	%r10d, %eax
	movq	72(%rsp), %rcx          # 8-byte Reload
	leal	(%rax,%rcx), %ecx
	addl	%r10d, %eax
	leaq	(%r9,%rcx,8), %r8
	leaq	(%rdx,%rax,8), %rbx
	cmpq	%rbx, %r8
	jae	.LBB1_52
# %bb.50:                               # %vector.memcheck158
                                        #   in Loop: Header=BB1_46 Depth=1
	leaq	(%rdx,%rcx,8), %rcx
	leaq	(%r9,%rax,8), %rax
	cmpq	%rcx, %rax
	jae	.LBB1_52
.LBB1_48:                               #   in Loop: Header=BB1_46 Depth=1
	xorl	%eax, %eax
.LBB1_55:                               # %scalar.ph141.preheader
                                        #   in Loop: Header=BB1_46 Depth=1
	movl	%r10d, %ebx
	subl	%eax, %ebx
	movq	80(%rsp), %r8           # 8-byte Reload
	subq	%rax, %r8
	andq	$3, %rbx
	je	.LBB1_58
# %bb.56:                               # %scalar.ph141.prol.preheader
                                        #   in Loop: Header=BB1_46 Depth=1
	leaq	(%r9,%r14,8), %r10
	leaq	(%r9,%r15,8), %rbp
	negq	%rbx
	.p2align	4, 0x90
.LBB1_57:                               # %scalar.ph141.prol
                                        #   Parent Loop BB1_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r10,%rax,8), %rcx
	movq	%rcx, (%rbp,%rax,8)
	addq	$1, %rax
	addq	$1, %rbx
	jne	.LBB1_57
.LBB1_58:                               # %scalar.ph141.prol.loopexit
                                        #   in Loop: Header=BB1_46 Depth=1
	cmpq	$3, %r8
	jb	.LBB1_61
# %bb.59:                               # %scalar.ph141.preheader.new
                                        #   in Loop: Header=BB1_46 Depth=1
	movq	%r12, %r8
	subq	%rax, %r8
	leaq	(%rax,%r14), %rcx
	movq	64(%rsp), %rbp          # 8-byte Reload
	leaq	(,%rcx,8), %rcx
	addq	%rbp, %rcx
	addq	%r15, %rax
	leaq	(,%rax,8), %rax
	addq	%rbp, %rax
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_60:                               # %scalar.ph141
                                        #   Parent Loop BB1_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rcx,%rbx,8), %rbp
	movq	%rbp, -24(%rax,%rbx,8)
	movq	-16(%rcx,%rbx,8), %rbp
	movq	%rbp, -16(%rax,%rbx,8)
	movq	-8(%rcx,%rbx,8), %rbp
	movq	%rbp, -8(%rax,%rbx,8)
	movq	(%rcx,%rbx,8), %rbp
	movq	%rbp, (%rax,%rbx,8)
	addq	$4, %rbx
	cmpq	%rbx, %r8
	jne	.LBB1_60
.LBB1_61:                               # %_mpi_copy.exit19
                                        #   in Loop: Header=BB1_46 Depth=1
	subq	$8, %rsp
	movq	%r12, %rsi
	movq	%r12, %rcx
	movq	240(%rsp), %r8
	movq	248(%rsp), %r9
	pushq	280(%rsp)
	pushq	280(%rsp)
	pushq	336(%rsp)
	movq	%r11, %rbx
	vzeroupper
	callq	_mpi_montmul
	movq	%rbx, %r11
	movq	56(%rsp), %r10          # 8-byte Reload
	addq	$32, %rsp
	movq	88(%rsp), %rcx          # 8-byte Reload
	addq	$1, %rcx
	addl	$1, %r11d
	addl	%r10d, %r15d
	addl	%r10d, %r14d
	cmpq	$16, %rcx
	jne	.LBB1_46
# %bb.62:
	cmpq	$0, 224(%rsp)
	je	.LBB1_91
# %bb.63:                               # %.lr.ph
	movq	48(%rsp), %rax          # 8-byte Reload
	addq	224(%rsp), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	304(%rsp), %rax
	movq	%rax, %rdx
	cmpq	%rdx, %rcx
	movq	%rcx, %r14
	cmovaq	%rdx, %r14
	cmovbq	%rcx, %rax
	notq	%rax
	leaq	1(%rax,%rdx), %rdx
	leaq	(%r13,%r14,8), %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	280(%rsp), %rcx
	leaq	(%rcx,%r14,8), %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	andq	$-16, %rdx
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	leaq	(%r14,%rdx), %rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movl	%r14d, %ecx
	andl	$-16, %ecx
	movq	%rcx, 160(%rsp)         # 8-byte Spill
	movl	$11, %ecx
	subq	%rax, %rcx
	leaq	(,%rcx,8), %rax
	addq	%r13, %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_64:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_65 Depth 2
                                        #       Child Loop BB1_66 Depth 3
                                        #         Child Loop BB1_73 Depth 4
                                        #         Child Loop BB1_76 Depth 4
                                        #         Child Loop BB1_80 Depth 4
                                        #         Child Loop BB1_84 Depth 4
	movq	48(%rsp), %rax          # 8-byte Reload
                                        # kill: def %eax killed %eax killed %rax def %rax
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	subl	%ecx, %eax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movl	$1, %ecx
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	(%rsp), %rbp            # 8-byte Reload
	movq	272(%rsp), %r12
	movq	312(%rsp), %r15
	.p2align	4, 0x90
.LBB1_65:                               #   Parent Loop BB1_64 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_66 Depth 3
                                        #         Child Loop BB1_73 Depth 4
                                        #         Child Loop BB1_76 Depth 4
                                        #         Child Loop BB1_80 Depth 4
                                        #         Child Loop BB1_84 Depth 4
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	subq	$8, %rsp
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	movq	240(%rsp), %rax
	movq	%rax, %r8
	movq	248(%rsp), %rax
	movq	%rax, %r9
	pushq	%r12
	movq	280(%rsp), %rax
	pushq	%rax
	pushq	%r15
	callq	_mpi_montmul
	addq	$24, %rsp
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	movq	240(%rsp), %r8
	movq	248(%rsp), %r9
	pushq	%r12
	pushq	280(%rsp)
	pushq	%r15
	callq	_mpi_montmul
	addq	$24, %rsp
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	movq	240(%rsp), %r8
	movq	248(%rsp), %r9
	pushq	%r12
	pushq	280(%rsp)
	pushq	%r15
	callq	_mpi_montmul
	addq	$24, %rsp
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	movq	240(%rsp), %r8
	movq	248(%rsp), %r9
	pushq	%r12
	pushq	280(%rsp)
	pushq	%r15
	callq	_mpi_montmul
	addq	$32, %rsp
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	152(%rsp), %rcx         # 8-byte Reload
	movq	(%rax,%rcx,8), %r10
	movq	120(%rsp), %rax         # 8-byte Reload
	leal	(,%rax,4), %edx
	movl	$64, %ecx
	subl	%edx, %ecx
                                        # kill: def %cl killed %cl killed %ecx
	shrq	%cl, %r10
	andl	$15, %r10d
	xorl	%ebp, %ebp
	xorl	%edx, %edx
	movq	24(%rsp), %r9           # 8-byte Reload
	movq	280(%rsp), %rbx
	movq	%rbx, %r8
	movq	16(%rsp), %r11          # 8-byte Reload
	movq	304(%rsp), %rcx
	movq	32(%rsp), %r15          # 8-byte Reload
	movq	136(%rsp), %r12         # 8-byte Reload
	jmp	.LBB1_66
.LBB1_72:                               # %vector.ph224
                                        #   in Loop: Header=BB1_66 Depth=3
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	%rbx, 80(%rsp)          # 8-byte Spill
	leaq	(%rax,%rbx,8), %rdi
	xorl	%esi, %esi
	movq	160(%rsp), %r9          # 8-byte Reload
	.p2align	4, 0x90
.LBB1_73:                               # %vector.body206
                                        #   Parent Loop BB1_64 Depth=1
                                        #     Parent Loop BB1_65 Depth=2
                                        #       Parent Loop BB1_66 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpq	%rdx, %r10
	leaq	(%rdi,%rsi,8), %r11
	leaq	-96(%rdi,%rsi,8), %rcx
	leaq	-64(%rdi,%rsi,8), %rbx
	leaq	-32(%rdi,%rsi,8), %rax
	leaq	(%r13,%rsi,8), %rbp
	leaq	32(%r13,%rsi,8), %r12
	leaq	64(%r13,%rsi,8), %r8
	leaq	96(%r13,%rsi,8), %r15
	cmoveq	%rcx, %rbp
	vmovups	(%rbp), %ymm0
	cmoveq	%rbx, %r12
	vmovups	(%r12), %ymm1
	cmoveq	%rax, %r8
	cmoveq	%r11, %r15
	vmovups	(%r8), %ymm2
	vmovups	(%r15), %ymm3
	vmovups	%ymm0, (%r13,%rsi,8)
	vmovups	%ymm1, 32(%r13,%rsi,8)
	vmovups	%ymm2, 64(%r13,%rsi,8)
	vmovups	%ymm3, 96(%r13,%rsi,8)
	addq	$16, %rsi
	cmpq	%rsi, %r9
	jne	.LBB1_73
# %bb.74:                               # %middle.block207
                                        #   in Loop: Header=BB1_66 Depth=3
	movq	%r9, %rsi
	cmpq	%r9, %r14
	movq	24(%rsp), %r9           # 8-byte Reload
	movq	280(%rsp), %rbx
	movq	%rbx, %r8
	movq	16(%rsp), %r11          # 8-byte Reload
	movq	304(%rsp), %rcx
	movq	32(%rsp), %r15          # 8-byte Reload
	movq	136(%rsp), %r12         # 8-byte Reload
	movq	40(%rsp), %rbp          # 8-byte Reload
	movq	80(%rsp), %rbx          # 8-byte Reload
	je	.LBB1_77
	jmp	.LBB1_75
	.p2align	4, 0x90
.LBB1_66:                               #   Parent Loop BB1_64 Depth=1
                                        #     Parent Loop BB1_65 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_73 Depth 4
                                        #         Child Loop BB1_76 Depth 4
                                        #         Child Loop BB1_80 Depth 4
                                        #         Child Loop BB1_84 Depth 4
	testq	%r14, %r14
	je	.LBB1_77
# %bb.67:                               # %.lr.ph3.i34
                                        #   in Loop: Header=BB1_66 Depth=3
	movl	%ebp, %ebx
	cmpq	$16, %r14
	jb	.LBB1_68
# %bb.69:                               # %vector.memcheck223
                                        #   in Loop: Header=BB1_66 Depth=3
	movl	%r9d, %esi
	imull	%edx, %esi
	movq	88(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rsi,8), %rdi
	cmpq	%r13, %rdi
	jbe	.LBB1_72
# %bb.70:                               # %vector.memcheck223
                                        #   in Loop: Header=BB1_66 Depth=3
	leaq	(%r8,%rsi,8), %rsi
	cmpq	56(%rsp), %rsi          # 8-byte Folded Reload
	jae	.LBB1_72
.LBB1_68:                               #   in Loop: Header=BB1_66 Depth=3
	xorl	%esi, %esi
.LBB1_75:                               # %scalar.ph208.preheader
                                        #   in Loop: Header=BB1_66 Depth=3
	leaq	(%r8,%rbx,8), %rdi
	.p2align	4, 0x90
.LBB1_76:                               # %scalar.ph208
                                        #   Parent Loop BB1_64 Depth=1
                                        #     Parent Loop BB1_65 Depth=2
                                        #       Parent Loop BB1_66 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpq	%rdx, %r10
	leaq	(%r13,%rsi,8), %rax
	leaq	(%rdi,%rsi,8), %rbx
	cmovneq	%rax, %rbx
	movq	(%rbx), %rax
	movq	%rax, (%r13,%rsi,8)
	addq	$1, %rsi
	cmpq	%r14, %rsi
	jb	.LBB1_76
.LBB1_77:                               # %._crit_edge4.i36
                                        #   in Loop: Header=BB1_66 Depth=3
	cmpq	%rcx, %r11
	jae	.LBB1_88
# %bb.78:                               # %.lr.ph.i37
                                        #   in Loop: Header=BB1_66 Depth=3
	movq	%r14, %rsi
	cmpq	$16, %r15
	jb	.LBB1_84
# %bb.79:                               # %vector.ph181
                                        #   in Loop: Header=BB1_66 Depth=3
	movq	%r12, %rsi
	movq	64(%rsp), %rdi          # 8-byte Reload
	.p2align	4, 0x90
.LBB1_80:                               # %vector.body176
                                        #   Parent Loop BB1_64 Depth=1
                                        #     Parent Loop BB1_65 Depth=2
                                        #       Parent Loop BB1_66 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vxorps	%xmm0, %xmm0, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	vxorps	%xmm3, %xmm3, %xmm3
	cmpq	%rdx, %r10
	je	.LBB1_82
# %bb.81:                               # %vector.body176
                                        #   in Loop: Header=BB1_80 Depth=4
	vmovups	-96(%rdi), %ymm0
	vmovups	-64(%rdi), %ymm1
	vmovups	-32(%rdi), %ymm2
	vmovups	(%rdi), %ymm3
.LBB1_82:                               # %vector.body176
                                        #   in Loop: Header=BB1_80 Depth=4
	vmovups	%ymm0, -96(%rdi)
	vmovups	%ymm1, -64(%rdi)
	vmovups	%ymm2, -32(%rdi)
	vmovups	%ymm3, (%rdi)
	subq	$-128, %rdi
	addq	$-16, %rsi
	jne	.LBB1_80
# %bb.83:                               # %middle.block177
                                        #   in Loop: Header=BB1_66 Depth=3
	movq	72(%rsp), %rsi          # 8-byte Reload
	cmpq	%r12, %r15
	je	.LBB1_88
	.p2align	4, 0x90
.LBB1_84:                               # %scalar.ph178
                                        #   Parent Loop BB1_64 Depth=1
                                        #     Parent Loop BB1_65 Depth=2
                                        #       Parent Loop BB1_66 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpq	%rdx, %r10
	je	.LBB1_86
# %bb.85:                               # %scalar.ph178
                                        #   in Loop: Header=BB1_84 Depth=4
	movq	(%r13,%rsi,8), %rdi
	jmp	.LBB1_87
	.p2align	4, 0x90
.LBB1_86:                               #   in Loop: Header=BB1_84 Depth=4
	xorl	%edi, %edi
.LBB1_87:                               # %scalar.ph178
                                        #   in Loop: Header=BB1_84 Depth=4
	movq	%rdi, (%r13,%rsi,8)
	addq	$1, %rsi
	cmpq	%rcx, %rsi
	jb	.LBB1_84
.LBB1_88:                               # %_mpi_copy.exit39
                                        #   in Loop: Header=BB1_66 Depth=3
	addq	$1, %rdx
	addl	%r9d, %ebp
	cmpq	$16, %rdx
	jne	.LBB1_66
# %bb.89:                               #   in Loop: Header=BB1_65 Depth=2
	subq	$8, %rsp
	movq	8(%rsp), %rbp           # 8-byte Reload
	movq	%rbp, %rdi
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r13, %rdx
	movq	240(%rsp), %rax
	movq	%rax, %r8
	movq	248(%rsp), %rax
	movq	%rax, %r9
	movq	280(%rsp), %r12
	pushq	%r12
	movq	280(%rsp), %r15
	pushq	%r15
	movq	336(%rsp), %rax
	movq	%rax, %r15
	pushq	%rax
	vzeroupper
	callq	_mpi_montmul
	addq	$32, %rsp
	movq	120(%rsp), %rcx         # 8-byte Reload
	addq	$1, %rcx
	cmpq	$17, %rcx
	jne	.LBB1_65
# %bb.90:                               #   in Loop: Header=BB1_64 Depth=1
	movq	144(%rsp), %rcx         # 8-byte Reload
	addq	$1, %rcx
	cmpq	224(%rsp), %rcx
	jne	.LBB1_64
.LBB1_91:                               # %._crit_edge
	movq	$1, 96(%rsp)
	subq	$8, %rsp
	leaq	104(%rsp), %rdx
	movl	$1, %ecx
	movq	8(%rsp), %r15           # 8-byte Reload
	movq	%r15, %rdi
	movq	16(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rsi
	movq	240(%rsp), %rbp
	movq	%rbp, %r8
	movq	248(%rsp), %rbx
	movq	%rbx, %r9
	movq	280(%rsp), %r13
	pushq	%r13
	movq	280(%rsp), %r12
	pushq	%r12
	pushq	336(%rsp)
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
	andl	$1, %r11d
	cmpq	%rbx, %r13
	movq	%rbx, %rax
	cmovbq	%r13, %rax
	testq	%rax, %rax
	je	.LBB1_101
# %bb.92:                               # %.lr.ph3.i22
	cmpq	$16, %rax
	jae	.LBB1_94
# %bb.93:
	xorl	%edx, %edx
	jmp	.LBB1_100
.LBB1_94:                               # %vector.memcheck268
	leaq	(,%rax,8), %rdx
	addq	%rbp, %rdx
	cmpq	%r12, %rdx
	jbe	.LBB1_97
# %bb.95:                               # %vector.memcheck268
	leaq	(%r12,%rax,8), %rdx
	cmpq	%rbp, %rdx
	jbe	.LBB1_97
# %bb.96:
	xorl	%edx, %edx
	jmp	.LBB1_100
.LBB1_97:                               # %vector.ph269
	movq	%rax, %rdx
	andq	$-16, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_98:                               # %vector.body253
                                        # =>This Inner Loop Header: Depth=1
	testl	%r11d, %r11d
	leaq	(%rbp,%rsi,8), %r14
	leaq	32(%rbp,%rsi,8), %r10
	leaq	64(%rbp,%rsi,8), %r9
	leaq	96(%rbp,%rsi,8), %r8
	leaq	(%r12,%rsi,8), %rbx
	leaq	32(%r12,%rsi,8), %rbp
	leaq	64(%r12,%rsi,8), %rcx
	leaq	96(%r12,%rsi,8), %rdi
	cmovneq	%r14, %rbx
	vmovups	(%rbx), %ymm0
	cmovneq	%r10, %rbp
	vmovups	(%rbp), %ymm1
	movq	232(%rsp), %rbp
	cmovneq	%r9, %rcx
	cmovneq	%r8, %rdi
	vmovups	(%rcx), %ymm2
	vmovups	(%rdi), %ymm3
	vmovups	%ymm0, (%r12,%rsi,8)
	vmovups	%ymm1, 32(%r12,%rsi,8)
	vmovups	%ymm2, 64(%r12,%rsi,8)
	vmovups	%ymm3, 96(%r12,%rsi,8)
	addq	$16, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB1_98
# %bb.99:                               # %middle.block254
	cmpq	%rdx, %rax
	movq	8(%rsp), %r14           # 8-byte Reload
	je	.LBB1_101
	.p2align	4, 0x90
.LBB1_100:                              # %scalar.ph255
                                        # =>This Inner Loop Header: Depth=1
	testl	%r11d, %r11d
	leaq	(%r12,%rdx,8), %rcx
	leaq	(%rbp,%rdx,8), %rsi
	cmoveq	%rcx, %rsi
	movq	(%rsi), %rcx
	movq	%rcx, (%r12,%rdx,8)
	addq	$1, %rdx
	cmpq	%rax, %rdx
	jb	.LBB1_100
.LBB1_101:                              # %._crit_edge4.i24
	movq	240(%rsp), %rsi
	cmpq	%rsi, %r13
	jbe	.LBB1_112
# %bb.102:                              # %.lr.ph.i25
	notq	%rsi
	leaq	(%rsi,%r13), %rbp
	addq	$1, %rbp
	cmpq	$16, %rbp
	jb	.LBB1_108
# %bb.103:                              # %vector.ph303
	movq	%rbp, %rdx
	andq	$-16, %rdx
	addq	%rdx, %rax
	movq	%r13, %rcx
	notq	%rcx
	cmpq	%rsi, %rcx
	cmovbeq	%rsi, %rcx
	movl	$11, %esi
	subq	%rcx, %rsi
	leaq	(%r12,%rsi,8), %rdi
	movq	%rdx, %rsi
	.p2align	4, 0x90
.LBB1_104:                              # %vector.body298
                                        # =>This Inner Loop Header: Depth=1
	vxorps	%xmm0, %xmm0, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	vxorps	%xmm3, %xmm3, %xmm3
	testl	%r11d, %r11d
	jne	.LBB1_106
# %bb.105:                              # %vector.body298
                                        #   in Loop: Header=BB1_104 Depth=1
	vmovups	-96(%rdi), %ymm0
	vmovups	-64(%rdi), %ymm1
	vmovups	-32(%rdi), %ymm2
	vmovups	(%rdi), %ymm3
.LBB1_106:                              # %vector.body298
                                        #   in Loop: Header=BB1_104 Depth=1
	vmovups	%ymm0, -96(%rdi)
	vmovups	%ymm1, -64(%rdi)
	vmovups	%ymm2, -32(%rdi)
	vmovups	%ymm3, (%rdi)
	subq	$-128, %rdi
	addq	$-16, %rsi
	jne	.LBB1_104
# %bb.107:                              # %middle.block299
	cmpq	%rdx, %rbp
	je	.LBB1_112
	.p2align	4, 0x90
.LBB1_108:                              # %scalar.ph300
                                        # =>This Inner Loop Header: Depth=1
	testl	%r11d, %r11d
	jne	.LBB1_110
# %bb.109:                              # %scalar.ph300
                                        #   in Loop: Header=BB1_108 Depth=1
	movq	(%r12,%rax,8), %rdx
	jmp	.LBB1_111
	.p2align	4, 0x90
.LBB1_110:                              #   in Loop: Header=BB1_108 Depth=1
	xorl	%edx, %edx
.LBB1_111:                              # %scalar.ph300
                                        #   in Loop: Header=BB1_108 Depth=1
	movq	%rdx, (%r12,%rax,8)
	addq	$1, %rax
	cmpq	%r13, %rax
	jb	.LBB1_108
.LBB1_112:                              # %_mpi_copy.exit27
	leal	(%r11,%r11), %eax
	testq	%r14, %r14
	je	.LBB1_115
# %bb.113:                              # %.lr.ph7.i.preheader
	xorl	%esi, %esi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_114:                              # %.lr.ph7.i
                                        # =>This Inner Loop Header: Depth=1
	testl	%r11d, %r11d
	movq	(%r12,%rsi,8), %r8
	movl	$0, %edi
	cmovneq	%rdx, %rdi
	movq	%r8, %rcx
	subq	%rdi, %rcx
	testl	%r11d, %r11d
	movq	%rcx, (%r12,%rsi,8)
	movq	(%r15,%rsi,8), %rdi
	movl	$0, %ebx
	cmovneq	%rdi, %rbx
	xorl	%ebp, %ebp
	cmpq	%rdi, %rcx
	setb	%bpl
	cmpq	%rdx, %r8
	adcq	$0, %rbp
	testl	%r11d, %r11d
	cmovneq	%rbp, %rdx
	subq	%rbx, %rcx
	movq	%rcx, (%r12,%rsi,8)
	addq	$1, %rsi
	cmpq	%rsi, %r14
	jne	.LBB1_114
	jmp	.LBB1_116
.LBB1_115:
	xorl	%edx, %edx
.LBB1_116:                              # %._crit_edge8.i
	xorl	$2, %eax
	cmpq	%r14, %r13
	jbe	.LBB1_122
# %bb.117:                              # %.lr.ph.i28.preheader
	movl	%r13d, %ecx
	subl	%r14d, %ecx
	leaq	-1(%r13), %rsi
	testb	$1, %cl
	jne	.LBB1_119
# %bb.118:
	movq	%r14, %rdi
	cmpq	%r14, %rsi
	jne	.LBB1_120
	jmp	.LBB1_122
.LBB1_119:                              # %.lr.ph.i28.prol
	movq	(%r12,%r14,8), %rcx
	xorl	%edi, %edi
	cmpq	%rdx, %rcx
	setb	%dil
	xorl	%ebp, %ebp
	testl	%r11d, %r11d
	cmovneq	%rdx, %rbp
	cmovneq	%rdi, %rdx
	subq	%rbp, %rcx
	movq	%rcx, (%r12,%r14,8)
	leaq	1(%r14), %rdi
	cmpq	%r14, %rsi
	je	.LBB1_122
.LBB1_120:                              # %.lr.ph.i28.preheader.new
	subq	%rdi, %r13
	leaq	(%r12,%rdi,8), %rsi
	addq	$8, %rsi
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB1_121:                              # %.lr.ph.i28
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
	addq	$-2, %r13
	jne	.LBB1_121
.LBB1_122:                              # %_mpi_sub_hlp.exit
	addl	$-1, %eax
	testq	%r14, %r14
	je	.LBB1_136
# %bb.123:                              # %.lr.ph3.i29
	cmpq	$16, %r14
	jb	.LBB1_124
# %bb.125:                              # %vector.memcheck343
	leaq	(%r12,%r14,8), %rcx
	cmpq	%r15, %rcx
	jbe	.LBB1_128
# %bb.126:                              # %vector.memcheck343
	leaq	(%r15,%r14,8), %rcx
	cmpq	%r12, %rcx
	jbe	.LBB1_128
.LBB1_124:
	xorl	%edx, %edx
.LBB1_131:                              # %scalar.ph332.preheader
	leaq	-1(%r14), %rsi
	subq	%rdx, %rsi
	movq	%r14, %rdi
	andq	$3, %rdi
	je	.LBB1_134
# %bb.132:                              # %scalar.ph332.prol.preheader
	negq	%rdi
	.p2align	4, 0x90
.LBB1_133:                              # %scalar.ph332.prol
                                        # =>This Inner Loop Header: Depth=1
	testl	%r11d, %r11d
	leaq	(%r15,%rdx,8), %rcx
	leaq	(%r12,%rdx,8), %rbp
	cmoveq	%rcx, %rbp
	movq	(%rbp), %rcx
	movq	%rcx, (%r15,%rdx,8)
	addq	$1, %rdx
	addq	$1, %rdi
	jne	.LBB1_133
.LBB1_134:                              # %scalar.ph332.prol.loopexit
	cmpq	$3, %rsi
	jb	.LBB1_136
	.p2align	4, 0x90
.LBB1_135:                              # %scalar.ph332
                                        # =>This Inner Loop Header: Depth=1
	testl	%r11d, %r11d
	leaq	(%r12,%rdx,8), %rcx
	leaq	(%r15,%rdx,8), %rsi
	cmovneq	%rcx, %rsi
	movq	(%rsi), %rcx
	movq	%rcx, (%r15,%rdx,8)
	leaq	8(%r12,%rdx,8), %rcx
	leaq	8(%r15,%rdx,8), %rsi
	cmovneq	%rcx, %rsi
	movq	(%rsi), %rcx
	movq	%rcx, 8(%r15,%rdx,8)
	leaq	16(%r12,%rdx,8), %rcx
	leaq	16(%r15,%rdx,8), %rsi
	cmovneq	%rcx, %rsi
	movq	(%rsi), %rcx
	movq	%rcx, 16(%r15,%rdx,8)
	leaq	24(%r12,%rdx,8), %rcx
	leaq	24(%r15,%rdx,8), %rsi
	cmovneq	%rcx, %rsi
	movq	(%rsi), %rcx
	movq	%rcx, 24(%r15,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %r14
	jne	.LBB1_135
	jmp	.LBB1_136
.LBB1_128:                              # %vector.ph344
	movq	%r14, %rdx
	andq	$-16, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_129:                              # %vector.body330
                                        # =>This Inner Loop Header: Depth=1
	testl	%r11d, %r11d
	leaq	(%r12,%rsi,8), %r14
	leaq	32(%r12,%rsi,8), %r10
	leaq	64(%r12,%rsi,8), %r9
	leaq	96(%r12,%rsi,8), %r8
	leaq	(%r15,%rsi,8), %rbx
	leaq	32(%r15,%rsi,8), %rbp
	leaq	64(%r15,%rsi,8), %rdi
	leaq	96(%r15,%rsi,8), %rcx
	cmovneq	%r14, %rbx
	vmovups	(%rbx), %ymm0
	cmovneq	%r10, %rbp
	vmovups	(%rbp), %ymm1
	cmovneq	%r9, %rdi
	cmovneq	%r8, %rcx
	vmovups	(%rdi), %ymm2
	vmovups	(%rcx), %ymm3
	vmovups	%ymm0, (%r15,%rsi,8)
	vmovups	%ymm1, 32(%r15,%rsi,8)
	vmovups	%ymm2, 64(%r15,%rsi,8)
	vmovups	%ymm3, 96(%r15,%rsi,8)
	addq	$16, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB1_129
# %bb.130:                              # %middle.block331
	movq	8(%rsp), %r14           # 8-byte Reload
	cmpq	%r14, %rdx
	jne	.LBB1_131
.LBB1_136:                              # %_mpi_copy.exit32
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
.LBB1_137:
	xorl	%esi, %esi
	testq	%rdx, %rdx
	jne	.LBB1_10
	jmp	.LBB1_11
.LBB1_138:
	xorl	%ebp, %ebp
	testq	%r8, %r8
	jne	.LBB1_25
	jmp	.LBB1_26
.LBB1_139:
	xorl	%eax, %eax
	testq	%r9, %r9
	jne	.LBB1_40
	jmp	.LBB1_41
.Lfunc_end1:
	.size	_f_mpi_exp_mod, .Lfunc_end1-_f_mpi_exp_mod
                                        # -- End function
	.section	.text.__llvm_retpoline_r11,"axG",@progbits,__llvm_retpoline_r11,comdat
	.hidden	__llvm_retpoline_r11    # -- Begin function __llvm_retpoline_r11
	.weak	__llvm_retpoline_r11
	.p2align	4, 0x90
	.type	__llvm_retpoline_r11,@function
__llvm_retpoline_r11:                   # @__llvm_retpoline_r11
# %bb.0:                                # %entry
	callq	.LBB2_2
.LBB2_1:                                # Block address taken
                                        # %entry
                                        # =>This Inner Loop Header: Depth=1
	pause
	lfence
	jmp	.LBB2_1
	.p2align	4, 0x90
.LBB2_2:                                # Block address taken
                                        # %entry
	movq	%r11, (%rsp)
	retq
.Lfunc_end2:
	.size	__llvm_retpoline_r11, .Lfunc_end2-__llvm_retpoline_r11
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
