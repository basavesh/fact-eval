	.text
	.file	"Module"
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
	subq	$280, %rsp              # imm = 0x118
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movzbl	96(%rbp), %r12d
	movq	16(%rbp), %rbx
	movl	88(%rbp), %eax
	addq	%rax, %rbx
	addq	$11, %rbx
	testb	$1, %r12b
	movl	$13, %r11d
	cmovneq	%rbx, %r11
	movl	%r12d, %ebx
	notb	%bl
	movzbl	%bl, %r13d
	andl	$1, %r13d
	leaq	2(,%r13,4), %r10
	movl	64(%rbp), %eax
	addq	%r11, %rax
	leaq	-1(%r8), %r15
	movl	%r12d, %ebx
	andl	$1, %ebx
	leaq	(%rbx,%r13,4), %r14
	addq	$2, %r14
	movq	%r15, -120(%rbp)        # 8-byte Spill
	movq	%r15, %rbx
	subq	%rcx, %rbx
	addq	24(%rbp), %rbx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	addq	%rax, %rbx
	movq	%r9, -72(%rbp)          # 8-byte Spill
	shrxq	%r9, %rbx, %rbx
	movq	72(%rbp), %r9
	subq	%rcx, %r9
	movq	%r11, -88(%rbp)         # 8-byte Spill
	addq	%r11, %r9
	movq	%rbx, %rcx
	subq	%r10, %rcx
	movq	%rcx, %r13
	imulq	%r8, %r13
	xorl	%eax, %eax
	cmpq	%r14, %rbx
	cmovbeq	%rax, %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	cmovbeq	%rax, %r13
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	testb	$1, %r12b
	leaq	(,%r9,8), %r15
	movq	%r8, -48(%rbp)          # 8-byte Spill
	je	.LBB0_1
# %bb.9:                                # %elsebranch99
	movq	%r10, -80(%rbp)         # 8-byte Spill
	movq	%r9, %r8
	shrq	$5, %r8
	movq	%r9, %rax
	shrq	$13, %r9
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rax, %r11
	shrq	$21, %r11
	jmp	.LBB0_10
.LBB0_1:                                # %thenbranch72
	movl	88(%rbp), %esi
	cmpl	$129, %esi
	jae	.LBB0_48
# %bb.2:                                # %branchmerge84
	testl	%esi, %esi
	je	.LBB0_5
# %bb.3:                                # %loop_body.preheader.i
	movq	80(%rbp), %rcx
	movl	%esi, %eax
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_4:                                # %loop_body.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rsi), %ebx
	movb	%bl, (%rdx,%rsi)
	addq	$1, %rsi
	cmpq	%rax, %rsi
	jb	.LBB0_4
.LBB0_5:                                # %_memcpy.exit
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%r10, -80(%rbp)         # 8-byte Spill
	leaq	(%r15,%r8,8), %r15
	testq	%r8, %r8
	je	.LBB0_8
# %bb.6:                                # %loop_body.preheader
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_7:                                # %loop_body
                                        # =>This Inner Loop Header: Depth=1
	xorb	$54, (%rdx,%rax)
	addq	$1, %rax
	cmpq	%r8, %rax
	jb	.LBB0_7
.LBB0_8:                                # %loop_end
	movl	40(%rbp), %edi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	_md_transform@PLT
	movq	%r15, %r8
	shrq	$8, %r8
	movq	%r15, %r9
	shrq	$16, %r9
	movq	%r15, %r11
	shrq	$24, %r11
.LBB0_10:                               # %branchmerge100
	movq	56(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movb	32(%rbp), %bl
	movq	%rsp, %rsi
	leaq	-16(%rsi), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, -16(%rsi)
	andb	$1, %bl
	movzbl	%bl, %edi
	leaq	(%rdi,%rdi,2), %rbx
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	addq	%rdx, %rbx
	leaq	(%rdi,%rdi,4), %rax
	leaq	(%rdi,%rdx), %rcx
	addq	%rdx, %rax
	testb	%dil, %dil
	movq	$-1, %r10
	movq	$-8, %rdi
	cmovneq	%r10, %rdi
	movb	%r11b, -21(%rsi,%rcx)
	movb	%r9b, -22(%rsi,%rbx)
	movb	%r8b, -23(%rsi,%rax)
	addq	%rdx, %rdi
	movb	%r15b, -16(%rsi,%rdi)
	movq	%r13, -56(%rbp)         # 8-byte Spill
	testq	%r13, %r13
	movq	-64(%rbp), %r15         # 8-byte Reload
	je	.LBB0_36
# %bb.11:                               # %thenbranch154
	testb	$1, %r12b
	movl	$0, %eax
	je	.LBB0_25
# %bb.12:                               # %thenbranch157
	movq	-88(%rbp), %r15         # 8-byte Reload
	movq	-48(%rbp), %r14         # 8-byte Reload
	subq	%r14, %r15
	jbe	.LBB0_48
# %bb.13:                               # %branchmerge164
	movl	40(%rbp), %edi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	48(%rbp), %rbx
	movq	%rbx, %rdx
	callq	_md_transform@PLT
	testl	%r15d, %r15d
	movq	-56(%rbp), %r12         # 8-byte Reload
	je	.LBB0_16
# %bb.14:                               # %loop_body.preheader.i574
	leaq	(%rbx,%r14), %rax
	movl	%r15d, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_15:                               # %loop_body.i581
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rax,%rdx), %ebx
	movb	%bl, -312(%rbp,%rdx)
	addq	$1, %rdx
	cmpq	%rcx, %rdx
	jb	.LBB0_15
.LBB0_16:                               # %_memcpy.exit582
	movq	%r14, %rax
	subq	%r15, %rax
	testl	%eax, %eax
	movq	56(%rbp), %rsi
	je	.LBB0_19
# %bb.17:                               # %loop_body.preheader.i587
	movl	%eax, %eax
	leaq	(%r15,%rbp), %rcx
	addq	$-312, %rcx             # imm = 0xFEC8
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_18:                               # %loop_body.i594
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%rdx), %ebx
	movb	%bl, (%rcx,%rdx)
	addq	$1, %rdx
	cmpq	%rax, %rdx
	jb	.LBB0_18
.LBB0_19:                               # %_memcpy.exit595
	leaq	-312(%rbp), %rdx
	movl	40(%rbp), %edi
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	callq	_md_transform@PLT
	movq	%r12, %rax
	orq	%r14, %rax
	shrq	$32, %rax
	je	.LBB0_20
# %bb.21:
	xorl	%edx, %edx
	movq	%r12, %rax
	divq	%r14
	jmp	.LBB0_22
.LBB0_25:                               # %elsebranch236
	xorl	%eax, %eax
	movq	48(%rbp), %rdx
	.p2align	4, 0x90
.LBB0_26:                               # %loop_body.i607
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdx,%rax), %ecx
	movb	%cl, -312(%rbp,%rax)
	addq	$1, %rax
	cmpq	$13, %rax
	jb	.LBB0_26
# %bb.27:                               # %_memcpy.exit608
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movl	%ebx, %eax
	addl	$-13, %eax
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	56(%rbp), %rsi
	je	.LBB0_30
# %bb.28:                               # %loop_body.preheader.i614
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_29:                               # %loop_body.i621
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%rcx), %edx
	movb	%dl, -299(%rbp,%rcx)
	addq	$1, %rcx
	cmpq	%rax, %rcx
	jb	.LBB0_29
.LBB0_30:                               # %_memcpy.exit622
	leaq	-312(%rbp), %rdx
	movl	40(%rbp), %edi
	movq	%r15, %rsi
	callq	_md_transform@PLT
	movq	%r14, %rax
	orq	%rbx, %rax
	shrq	$32, %rax
	je	.LBB0_31
# %bb.32:
	xorl	%edx, %edx
	movq	%r14, %rax
	divq	%rbx
	movq	%rax, %rcx
	jmp	.LBB0_33
.LBB0_31:
	xorl	%edx, %edx
	movl	%r14d, %eax
	divl	%ebx
	movl	%eax, %ecx
.LBB0_33:
	cmpq	$2, %rcx
	movl	40(%rbp), %r12d
	jb	.LBB0_36
# %bb.34:                               # %loop_body269.preheader
	movq	56(%rbp), %rax
	movq	-48(%rbp), %rdx         # 8-byte Reload
	leaq	(%rax,%rdx), %r13
	addq	$-13, %r13
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB0_35:                               # %loop_body269
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %edi
	movq	%r15, %rsi
	movq	%r13, %rdx
	movq	%r15, %r14
	movq	%rcx, %r15
	callq	_md_transform@PLT
	movq	%r15, %rcx
	movq	%r14, %r15
	addq	$1, %rbx
	addq	-48(%rbp), %r13         # 8-byte Folded Reload
	cmpq	%rcx, %rbx
	jb	.LBB0_35
	jmp	.LBB0_36
.LBB0_20:
	xorl	%edx, %edx
	movl	%r12d, %eax
	divl	%r14d
                                        # kill: def %eax killed %eax def %rax
.LBB0_22:
	addq	$-1, %rax
	cmpq	$2, %rax
	movl	40(%rbp), %r15d
	movq	%rbx, %r12
	jb	.LBB0_36
# %bb.23:                               # %loop_body206.preheader
	movq	-48(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rcx), %r13
	subq	-88(%rbp), %r13         # 8-byte Folded Reload
	addq	56(%rbp), %r13
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB0_24:                               # %loop_body206
                                        # =>This Inner Loop Header: Depth=1
	movl	%r15d, %edi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movq	%rax, %r14
	callq	_md_transform@PLT
	movq	%r14, %rax
	addq	$1, %rbx
	addq	-48(%rbp), %r13         # 8-byte Folded Reload
	cmpq	%rax, %rbx
	jb	.LBB0_24
.LBB0_36:                               # %branchmerge299
	movq	-80(%rbp), %rdi         # 8-byte Reload
	orq	$1, %rdi
	movq	-112(%rbp), %rbx        # 8-byte Reload
	addq	%rbx, %rdi
	movl	$1, %eax
	cmpq	%rdi, %rbx
	jae	.LBB0_48
# %bb.37:                               # %loop_body301.lr.ph
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-96(%rbp), %rax         # 8-byte Reload
	andq	%rax, %rcx
	movq	-72(%rbp), %rdx         # 8-byte Reload
	shrxq	%rdx, %rax, %rsi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	24(%rbp), %rsi
	addq	%rsi, %rax
	shrxq	%rdx, %rax, %r15
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	leaq	1(%rcx), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, %rax
	subq	%rsi, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	subq	%rcx, %rsi
	addq	%rsi, -128(%rbp)        # 8-byte Folded Spill
	movq	-104(%rbp), %rdx        # 8-byte Reload
	subq	-88(%rbp), %rdx         # 8-byte Folded Reload
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	xorl	%r12d, %r12d
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %r13         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_38:                               # %loop_body301
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_40 Depth 2
                                        #     Child Loop BB0_45 Depth 2
	movq	%rsp, %rax
	leaq	-128(%rax), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, -32(%rax)
	vmovups	%ymm0, -64(%rax)
	vmovups	%ymm0, -96(%rax)
	vmovups	%ymm0, -128(%rax)
	testq	%rcx, %rcx
	movq	%rbx, -112(%rbp)        # 8-byte Spill
	je	.LBB0_43
# %bb.39:                               # %loop_body317.lr.ph
                                        #   in Loop: Header=BB0_38 Depth=1
	cmpq	%r15, %rbx
	setne	-96(%rbp)               # 1-byte Folded Spill
	cmpq	-136(%rbp), %rbx        # 8-byte Folded Reload
	setne	%r10b
	movq	-104(%rbp), %rax        # 8-byte Reload
	leaq	(%rax,%r13), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	xorl	%esi, %esi
	movq	%r13, %r9
	movq	%r13, -56(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB0_40:                               # %loop_body317
                                        #   Parent Loop BB0_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%rsi,%r13), %rdx
	cmpq	-88(%rbp), %rdx         # 8-byte Folded Reload
	jae	.LBB0_49
# %bb.41:                               # %thenbranch326
                                        #   in Loop: Header=BB0_40 Depth=2
	movq	48(%rbp), %rax
	leaq	(%rax,%r9), %rdx
	jmp	.LBB0_52
	.p2align	4, 0x90
.LBB0_49:                               # %elsebranch331
                                        #   in Loop: Header=BB0_40 Depth=2
	cmpq	-168(%rbp), %rdx        # 8-byte Folded Reload
	jae	.LBB0_50
# %bb.51:                               # %thenbranch339
                                        #   in Loop: Header=BB0_40 Depth=2
	movq	-160(%rbp), %rax        # 8-byte Reload
	leaq	(%rax,%rsi), %rdx
.LBB0_52:                               # %branchmerge348.sink.split
                                        #   in Loop: Header=BB0_40 Depth=2
	movzbl	(%rdx), %edi
	jmp	.LBB0_53
	.p2align	4, 0x90
.LBB0_50:                               #   in Loop: Header=BB0_40 Depth=2
	xorl	%edi, %edi
.LBB0_53:                               # %branchmerge348
                                        #   in Loop: Header=BB0_40 Depth=2
	cmpq	%r15, %rbx
	sete	%r11b
	cmpq	-136(%rbp), %rbx        # 8-byte Folded Reload
	sete	%al
	xorl	%ecx, %ecx
	cmpq	-120(%rbp), %rsi        # 8-byte Folded Reload
	setae	%cl
	#APP
	testb	%al, %al
	movl	%r12d, %edx
	cmovnel	%ecx, %edx
	#NO_APP
	andl	$1, %edx
	#APP
	testb	%r10b, %r10b
	movl	%edx, %ecx
	cmovnel	%r12d, %ecx
	#NO_APP
	andl	$1, %ecx
	sete	%dl
	movq	%rbx, %r13
	xorl	%r8d, %r8d
	cmpq	-184(%rbp), %rsi        # 8-byte Folded Reload
	setae	%r8b
	movl	$128, %ebx
	#APP
	testb	%cl, %cl
	movl	%r12d, %r14d
	cmovnel	%ebx, %r14d
	#NO_APP
	movzbl	%dil, %ecx
	movzbl	%r14b, %ebx
	#APP
	testb	%dl, %dl
	movl	%ebx, %edi
	cmovnel	%ecx, %edi
	#NO_APP
	#APP
	testb	%al, %al
	movl	%r12d, %ecx
	cmovnel	%r8d, %ecx
	#NO_APP
	andl	$1, %ecx
	#APP
	testb	%r10b, %r10b
	movl	%ecx, %eax
	cmovnel	%r12d, %eax
	#NO_APP
	andl	$1, %eax
	movzbl	%dil, %ecx
	#APP
	testb	%al, %al
	movl	%ecx, %edx
	cmovnel	%r12d, %edx
	#NO_APP
	xorl	%eax, %eax
	movb	%r10b, %al
	#APP
	testb	%r11b, %r11b
	movl	%r12d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	andl	$1, %ecx
	movzbl	-96(%rbp), %ebx         # 1-byte Folded Reload
	#APP
	testb	%bl, %bl
	movl	%ecx, %eax
	cmovnel	%r12d, %eax
	#NO_APP
	andl	$1, %eax
	movzbl	%dl, %ecx
	#APP
	testb	%al, %al
	movl	%ecx, %edx
	cmovnel	%r12d, %edx
	#NO_APP
	cmpq	-176(%rbp), %rsi        # 8-byte Folded Reload
	jb	.LBB0_55
# %bb.54:                               # %thenbranch452
                                        #   in Loop: Header=BB0_40 Depth=2
	cmpq	%r15, %r13
	sete	%al
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movzbl	(%rcx,%rsi), %ecx
	#APP
	testb	%al, %al
	movl	%r12d, %edi
	cmovnel	%ecx, %edi
	#NO_APP
	movzbl	%dl, %eax
	movzbl	%dil, %ecx
	#APP
	testb	%bl, %bl
	movl	%ecx, %edx
	cmovnel	%eax, %edx
	#NO_APP
.LBB0_55:                               # %branchmerge480
                                        #   in Loop: Header=BB0_40 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%r13, %rbx
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	addq	$1, %r9
	movb	%dl, (%rcx,%rsi)
	addq	$1, %rsi
	cmpq	%rax, %rsi
	jb	.LBB0_40
# %bb.42:                               # %loop_end318.loopexit
                                        #   in Loop: Header=BB0_38 Depth=1
	addq	%rax, %r13
.LBB0_43:                               # %loop_end318
                                        #   in Loop: Header=BB0_38 Depth=1
	movl	40(%rbp), %ebx
	movl	%ebx, %edi
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	vzeroupper
	callq	_md_transform@PLT
	movl	40(%rbp), %edi
	movq	%r14, %rsi
	movq	%rbx, %r14
	movq	%r14, %rdx
	callq	_md_final_raw@PLT
	movq	-152(%rbp), %r8         # 8-byte Reload
	testq	%r8, %r8
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movq	-144(%rbp), %r9         # 8-byte Reload
	je	.LBB0_46
# %bb.44:                               # %loop_body493.lr.ph
                                        #   in Loop: Header=BB0_38 Depth=1
	cmpq	%r15, %rbx
	setne	%al
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_45:                               # %loop_body493
                                        #   Parent Loop BB0_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r15, %rbx
	sete	%dl
	movzbl	(%r14,%rcx), %esi
	#APP
	testb	%dl, %dl
	movl	%r12d, %edi
	cmovnel	%esi, %edi
	#NO_APP
	movzbl	%dil, %edx
	#APP
	testb	%al, %al
	movl	%edx, %esi
	cmovnel	%r12d, %esi
	#NO_APP
	orb	%sil, (%r9,%rcx)
	addq	$1, %rcx
	cmpq	%r8, %rcx
	jb	.LBB0_45
.LBB0_46:                               # %loop_end494
                                        #   in Loop: Header=BB0_38 Depth=1
	addq	$1, %rbx
	cmpq	-80(%rbp), %rbx         # 8-byte Folded Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	jb	.LBB0_38
# %bb.47:
	movl	$1, %eax
.LBB0_48:                               # %thenbranch81
                                        # kill: def %eax killed %eax killed %rax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__ssl3_cbc_digest_record, .Lfunc_end0-__ssl3_cbc_digest_record
	.cfi_endproc
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
