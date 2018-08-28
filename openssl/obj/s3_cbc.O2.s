	.text
	.file	"Module"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5               # -- Begin function __ssl3_cbc_digest_record
.LCPI0_0:
	.zero	32,54
	.text
	.globl	__ssl3_cbc_digest_record
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
	andq	$-32, %rsp
	subq	$288, %rsp              # imm = 0x120
	movq	%rsp, %rbx
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rcx, %r10
	movq	56(%rbp), %r11
	movq	24(%rbp), %r15
	movq	72(%rbp), %rcx
	addq	%r11, %rcx
	leaq	-1(%r8), %rax
	movq	%rax, 40(%rbx)          # 8-byte Spill
	subq	%r10, %rax
	addq	%r15, %rax
	movq	%rcx, 104(%rbx)         # 8-byte Spill
	addq	%rcx, %rax
	movl	%r9d, %ecx
	shrq	%cl, %rax
	movzbl	104(%rbp), %r13d
	movq	%r10, 96(%rbx)          # 8-byte Spill
	subq	%r10, %r11
	addq	80(%rbp), %r11
	movl	%r13d, %r10d
	notb	%r10b
	movq	%r11, %r14
	shrq	%cl, %r14
	movq	%r14, 80(%rbx)          # 8-byte Spill
	leaq	(%r11,%r15), %r14
	shrq	%cl, %r14
	movq	%r14, 64(%rbx)          # 8-byte Spill
	movzbl	%r10b, %r9d
	andl	$1, %r9d
	movl	%r13d, %ecx
	andl	$1, %ecx
	leaq	(%rcx,%r9,4), %r10
	addq	$2, %r10
	leaq	2(,%r9,4), %rcx
	movq	%rax, %r14
	movq	%rcx, 32(%rbx)          # 8-byte Spill
	subq	%rcx, %r14
	movq	%r14, %rcx
	imulq	%r8, %rcx
	xorl	%r9d, %r9d
	cmpq	%r10, %rax
	cmovbeq	%r9, %r14
	cmovbeq	%r9, %rcx
	movq	%rcx, 16(%rbx)          # 8-byte Spill
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm0, 224(%rbx)
	vmovaps	%ymm0, 192(%rbx)
	vmovaps	%ymm0, 160(%rbx)
	vmovaps	%ymm0, 128(%rbx)
	movq	%rdx, %r15
	movq	%rsi, 88(%rbx)          # 8-byte Spill
	movq	%rdi, %r12
	movq	%r13, 56(%rbx)          # 8-byte Spill
	testb	$1, %r13b
	movq	%r11, 48(%rbx)          # 8-byte Spill
	leaq	(,%r11,8), %r13
	movq	%r8, 8(%rbx)            # 8-byte Spill
	movq	%r12, 24(%rbx)          # 8-byte Spill
	jne	.LBB0_17
# %bb.1:
	movq	96(%rbp), %rdx
	cmpq	$128, %rdx
	jbe	.LBB0_4
# %bb.2:
	xorl	%eax, %eax
	jmp	.LBB0_3
.LBB0_4:
	movq	88(%rbp), %rsi
	movq	%r15, %rdi
	vzeroupper
	callq	memcpy
	movq	8(%rbx), %rdi           # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB0_16
# %bb.5:                                # %.lr.ph33
	cmpq	$128, %rdi
	jae	.LBB0_7
# %bb.6:
	xorl	%eax, %eax
	jmp	.LBB0_14
.LBB0_7:                                # %vector.ph
	movq	%rdi, %rax
	andq	$-128, %rax
	leaq	-128(%rax), %rsi
	movq	%rsi, %rdx
	shrq	$7, %rdx
	leal	1(%rdx), %ecx
	andl	$1, %ecx
	testq	%rsi, %rsi
	je	.LBB0_8
# %bb.9:                                # %vector.ph.new
	leaq	-1(%rcx), %rsi
	subq	%rdx, %rsi
	xorl	%edx, %edx
	vmovaps	.LCPI0_0(%rip), %ymm0   # ymm0 = [54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54]
	.p2align	4, 0x90
.LBB0_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vxorps	(%r15,%rdx), %ymm0, %ymm1
	vxorps	32(%r15,%rdx), %ymm0, %ymm2
	vxorps	64(%r15,%rdx), %ymm0, %ymm3
	vxorps	96(%r15,%rdx), %ymm0, %ymm4
	vmovups	%ymm1, (%r15,%rdx)
	vmovups	%ymm2, 32(%r15,%rdx)
	vmovups	%ymm3, 64(%r15,%rdx)
	vmovups	%ymm4, 96(%r15,%rdx)
	vxorps	128(%r15,%rdx), %ymm0, %ymm1
	vxorps	160(%r15,%rdx), %ymm0, %ymm2
	vxorps	192(%r15,%rdx), %ymm0, %ymm3
	vxorps	224(%r15,%rdx), %ymm0, %ymm4
	vmovups	%ymm1, 128(%r15,%rdx)
	vmovups	%ymm2, 160(%r15,%rdx)
	vmovups	%ymm3, 192(%r15,%rdx)
	vmovups	%ymm4, 224(%r15,%rdx)
	addq	$256, %rdx              # imm = 0x100
	addq	$2, %rsi
	jne	.LBB0_10
# %bb.11:                               # %middle.block.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB0_13
.LBB0_12:                               # %vector.body.epil
	vmovaps	.LCPI0_0(%rip), %ymm0   # ymm0 = [54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54,54]
	vxorps	(%r15,%rdx), %ymm0, %ymm1
	vxorps	32(%r15,%rdx), %ymm0, %ymm2
	vxorps	64(%r15,%rdx), %ymm0, %ymm3
	vxorps	96(%r15,%rdx), %ymm0, %ymm0
	vmovups	%ymm1, (%r15,%rdx)
	vmovups	%ymm2, 32(%r15,%rdx)
	vmovups	%ymm3, 64(%r15,%rdx)
	vmovups	%ymm0, 96(%r15,%rdx)
.LBB0_13:                               # %middle.block
	cmpq	%rdi, %rax
	je	.LBB0_16
.LBB0_14:                               # %scalar.ph.preheader
	leaq	(%r15,%rax), %rcx
	movq	%rdi, %rdx
	subq	%rax, %rdx
	.p2align	4, 0x90
.LBB0_15:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	xorb	$54, (%rcx)
	addq	$1, %rcx
	addq	$-1, %rdx
	jne	.LBB0_15
.LBB0_16:                               # %._crit_edge34
	leaq	(%r13,%rdi,8), %r13
	movl	40(%rbp), %edi
	movq	%r12, %rsi
	movq	%r15, %rdx
	vzeroupper
	callq	_md_transform
	movq	8(%rbx), %r8            # 8-byte Reload
.LBB0_17:
	movb	32(%rbp), %cl
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rdx
	movq	%rdx, 72(%rbx)          # 8-byte Spill
	movq	%rdx, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, -16(%rsi)
	andb	$1, %cl
	movzbl	%cl, %edx
	leaq	(%rdx,%rdx,2), %r11
	movq	24(%rbp), %rcx
	movq	%rcx, %r10
	addq	%r10, %r11
	leaq	(%rdx,%rdx,4), %rcx
	leaq	(%rdx,%r10), %r9
	addq	%r10, %rcx
	testb	%dl, %dl
	movq	$-1, %rdi
	movq	$-8, %rdx
	cmovneq	%rdi, %rdx
	movq	%r13, %rax
	movq	%rax, %rdi
	shrq	$24, %rdi
	movb	%dil, -21(%rsi,%r9)
	movq	%rax, %rdi
	shrq	$16, %rdi
	movb	%dil, -22(%rsi,%r11)
	movb	%ah, -23(%rsi,%rcx)  # NOREX
	addq	%r10, %rdx
	movb	%al, -16(%rsi,%rdx)
	cmpq	$0, 16(%rbx)            # 8-byte Folded Reload
	movl	$0, %eax
	je	.LBB0_21
# %bb.18:
	testb	$1, 56(%rbx)            # 1-byte Folded Reload
	je	.LBB0_28
# %bb.19:
	movq	56(%rbp), %r15
	subq	%r8, %r15
	jbe	.LBB0_3
# %bb.20:
	movl	40(%rbp), %eax
	movl	%eax, %edi
	movq	24(%rbx), %r13          # 8-byte Reload
	movq	%r13, %rsi
	movq	48(%rbp), %r12
	movq	%r12, %rdx
	vzeroupper
	callq	_md_transform
	movq	8(%rbx), %rax           # 8-byte Reload
	leaq	(%r12,%rax), %rsi
	leaq	128(%rbx), %r12
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	memcpy
	movq	8(%rbx), %rdx           # 8-byte Reload
	subq	%r15, %rdx
	leaq	(%rbx,%r15), %rdi
	addq	$128, %rdi
	movq	64(%rbp), %rsi
	callq	memcpy
	movl	40(%rbp), %edi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	_md_transform
	movq	8(%rbx), %r8            # 8-byte Reload
	xorl	%edx, %edx
	movq	16(%rbx), %rax          # 8-byte Reload
	divq	%r8
	addq	$-1, %rax
	cmpq	$2, %rax
	jb	.LBB0_21
# %bb.31:                               # %.lr.ph27.preheader
	leaq	(%r8,%r8), %r15
	subq	56(%rbp), %r15
	addq	64(%rbp), %r15
	movl	$1, %r12d
	.p2align	4, 0x90
.LBB0_32:                               # %.lr.ph27
                                        # =>This Inner Loop Header: Depth=1
	movl	40(%rbp), %edi
	movq	%r13, %rsi
	movq	%r15, %rdx
	movq	%rax, %r13
	callq	_md_transform
	movq	%r13, %rax
	movq	24(%rbx), %r13          # 8-byte Reload
	movq	8(%rbx), %r8            # 8-byte Reload
	addq	$1, %r12
	addq	%r8, %r15
	cmpq	%rax, %r12
	jb	.LBB0_32
	jmp	.LBB0_21
.LBB0_28:
	movq	48(%rbp), %rax
	movq	%rax, %rcx
	movq	(%rcx), %rax
	movq	5(%rcx), %rcx
	movq	%rcx, 133(%rbx)
	movq	%rax, 128(%rbx)
	leaq	-13(%r8), %rdx
	leaq	141(%rbx), %rdi
	movq	64(%rbp), %rsi
	vzeroupper
	callq	memcpy
	leaq	128(%rbx), %rdx
	movl	40(%rbp), %eax
	movl	%eax, %edi
	movq	24(%rbx), %r13          # 8-byte Reload
	movq	%r13, %rsi
	callq	_md_transform
	movq	8(%rbx), %r8            # 8-byte Reload
	xorl	%edx, %edx
	movq	16(%rbx), %rax          # 8-byte Reload
	divq	%r8
	movq	%rax, %rcx
	cmpq	$2, %rcx
	jb	.LBB0_21
# %bb.29:                               # %.lr.ph30.preheader
	movq	64(%rbp), %rax
	leaq	(%rax,%r8), %r15
	addq	$-13, %r15
	movl	$1, %r12d
	.p2align	4, 0x90
.LBB0_30:                               # %.lr.ph30
                                        # =>This Inner Loop Header: Depth=1
	movl	40(%rbp), %edi
	movq	%r13, %rsi
	movq	%r15, %rdx
	movq	%rcx, %r13
	callq	_md_transform
	movq	%r13, %rcx
	movq	24(%rbx), %r13          # 8-byte Reload
	movq	8(%rbx), %r8            # 8-byte Reload
	addq	$1, %r12
	addq	%r8, %r15
	cmpq	%rcx, %r12
	jb	.LBB0_30
.LBB0_21:                               # %.loopexit13
	movq	32(%rbx), %r13          # 8-byte Reload
	orq	$1, %r13
	addq	%r14, %r13
	movl	$1, %eax
	movq	%r13, 32(%rbx)          # 8-byte Spill
	cmpq	%r13, %r14
	jae	.LBB0_3
# %bb.22:                               # %.lr.ph24
	movq	48(%rbx), %r13          # 8-byte Reload
	andq	40(%rbx), %r13          # 8-byte Folded Reload
	movq	%r13, 48(%rbx)          # 8-byte Spill
	leaq	1(%r13), %rax
	movq	%rax, 40(%rbx)          # 8-byte Spill
	movq	%r8, %rcx
	movq	24(%rbp), %rax
	subq	%rax, %rcx
	movq	%rcx, 120(%rbx)         # 8-byte Spill
	subq	%r8, %rax
	addq	%rax, 72(%rbx)          # 8-byte Folded Spill
	xorl	%r12d, %r12d
	movq	64(%rbx), %r13          # 8-byte Reload
	.p2align	4, 0x90
.LBB0_23:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_25 Depth 2
                                        #     Child Loop BB0_36 Depth 2
	movq	%rsp, %rax
	leaq	-128(%rax), %r15
	movq	%r15, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, -32(%rax)
	vmovups	%ymm0, -64(%rax)
	vmovups	%ymm0, -96(%rax)
	vmovups	%ymm0, -128(%rax)
	testq	%r8, %r8
	je	.LBB0_34
# %bb.24:                               # %.lr.ph
                                        #   in Loop: Header=BB0_23 Depth=1
	xorl	%eax, %eax
	cmpq	80(%rbx), %r14          # 8-byte Folded Reload
	setne	%al
	movl	%eax, 56(%rbx)          # 4-byte Spill
	movq	16(%rbx), %r8           # 8-byte Reload
	movq	48(%rbp), %rcx
	leaq	(%rcx,%r8), %rcx
	movq	%rcx, 112(%rbx)         # 8-byte Spill
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_25:                               #   Parent Loop BB0_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rbx), %rax          # 8-byte Reload
	leaq	(%rax,%rdx), %rdi
	movq	56(%rbp), %rax
	cmpq	%rax, %rdi
	jae	.LBB0_39
# %bb.26:                               #   in Loop: Header=BB0_25 Depth=2
	movq	112(%rbx), %rax         # 8-byte Reload
	leaq	(%rax,%rdx), %rdi
	movzbl	(%rdi), %r10d
	jmp	.LBB0_41
	.p2align	4, 0x90
.LBB0_39:                               #   in Loop: Header=BB0_25 Depth=2
	cmpq	104(%rbx), %rdi         # 8-byte Folded Reload
	jae	.LBB0_40
# %bb.44:                               #   in Loop: Header=BB0_25 Depth=2
	movq	%r8, %rdi
	subq	%rax, %rdi
	addq	64(%rbp), %rdi
	movzbl	(%rdi), %r10d
	jmp	.LBB0_41
	.p2align	4, 0x90
.LBB0_40:                               #   in Loop: Header=BB0_25 Depth=2
	xorl	%r10d, %r10d
.LBB0_41:                               #   in Loop: Header=BB0_25 Depth=2
	cmpq	%r13, %r14
	sete	%r11b
	cmpq	80(%rbx), %r14          # 8-byte Folded Reload
	sete	%al
	xorl	%edi, %edi
	cmpq	48(%rbx), %rdx          # 8-byte Folded Reload
	setae	%dil
	#APP
	testb	%al, %al
	movl	%r12d, %ecx
	cmovnel	%edi, %ecx
	#NO_APP
	andl	$1, %ecx
	xorl	%edi, %edi
	cmpq	40(%rbx), %rdx          # 8-byte Folded Reload
	setae	%dil
	movzbl	%r10b, %esi
	movq	%r14, %r9
	movl	$128, %r14d
	#APP
	testb	%cl, %cl
	movl	%esi, %r10d
	cmovnel	%r14d, %r10d
	#NO_APP
	#APP
	testb	%al, %al
	movl	%r12d, %ecx
	cmovnel	%edi, %ecx
	#NO_APP
	andl	$1, %ecx
	movzbl	%r10b, %eax
	#APP
	testb	%cl, %cl
	cmovnel	%r12d, %eax
	#NO_APP
	movl	56(%rbx), %esi          # 4-byte Reload
	#APP
	testb	%r11b, %r11b
	movl	%r12d, %ecx
	cmovnel	%esi, %ecx
	#NO_APP
	andl	$1, %ecx
	movzbl	%al, %edi
	#APP
	testb	%cl, %cl
	cmovnel	%r12d, %edi
	#NO_APP
	cmpq	120(%rbx), %rdx         # 8-byte Folded Reload
	jb	.LBB0_43
# %bb.42:                               #   in Loop: Header=BB0_25 Depth=2
	cmpq	%r13, %r9
	sete	%al
	movq	72(%rbx), %rcx          # 8-byte Reload
	movzbl	(%rcx,%rdx), %ecx
	movzbl	%dil, %esi
	#APP
	testb	%al, %al
	movl	%esi, %edi
	cmovnel	%ecx, %edi
	#NO_APP
.LBB0_43:                               #   in Loop: Header=BB0_25 Depth=2
	movq	8(%rbx), %rax           # 8-byte Reload
	movq	%r9, %r14
	addq	$1, %r8
	movb	%dil, (%r15,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.LBB0_25
# %bb.33:                               # %._crit_edge.loopexit
                                        #   in Loop: Header=BB0_23 Depth=1
	addq	%rax, 16(%rbx)          # 8-byte Folded Spill
.LBB0_34:                               # %._crit_edge
                                        #   in Loop: Header=BB0_23 Depth=1
	movl	40(%rbp), %eax
	movl	%eax, %edi
	movq	24(%rbx), %r13          # 8-byte Reload
	movq	%r13, %rsi
	movq	%r15, %rdx
	vzeroupper
	callq	_md_transform
	movl	40(%rbp), %edi
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	_md_final_raw
	movq	96(%rbx), %rdi          # 8-byte Reload
	testq	%rdi, %rdi
	movq	64(%rbx), %r13          # 8-byte Reload
	movq	88(%rbx), %r8           # 8-byte Reload
	je	.LBB0_37
# %bb.35:                               # %.lr.ph19.preheader
                                        #   in Loop: Header=BB0_23 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_36:                               # %.lr.ph19
                                        #   Parent Loop BB0_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r13, %r14
	sete	%cl
	movzbl	(%r15,%rax), %edx
	#APP
	testb	%cl, %cl
	movl	%r12d, %esi
	cmovnel	%edx, %esi
	#NO_APP
	orb	%sil, (%r8,%rax)
	addq	$1, %rax
	cmpq	%rax, %rdi
	jne	.LBB0_36
.LBB0_37:                               # %._crit_edge20
                                        #   in Loop: Header=BB0_23 Depth=1
	addq	$1, %r14
	cmpq	32(%rbx), %r14          # 8-byte Folded Reload
	movq	8(%rbx), %r8            # 8-byte Reload
	jne	.LBB0_23
# %bb.38:
	movl	$1, %eax
.LBB0_3:                                # %.loopexit
                                        # kill: def %eax killed %eax killed %rax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
.LBB0_8:
	xorl	%edx, %edx
	testq	%rcx, %rcx
	jne	.LBB0_12
	jmp	.LBB0_13
.Lfunc_end0:
	.size	__ssl3_cbc_digest_record, .Lfunc_end0-__ssl3_cbc_digest_record
	.cfi_endproc
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
