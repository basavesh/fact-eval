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
	subq	$440, %rsp              # imm = 0x1B8
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movb	104(%rbp), %al
	movq	96(%rbp), %r10
	movq	88(%rbp), %r11
	movq	80(%rbp), %rbx
	movq	72(%rbp), %r14
	movq	64(%rbp), %r15
	movq	56(%rbp), %r12
	movq	48(%rbp), %r13
	movb	%al, -65(%rbp)          # 1-byte Spill
	movl	40(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movb	32(%rbp), %al
	movb	%al, -73(%rbp)          # 1-byte Spill
	movq	24(%rbp), %rax
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	xorl	%esi, %esi
                                        # kill: def %rsi killed %esi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movl	$1, %esi
                                        # kill: def %rsi killed %esi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movl	$6, %esi
                                        # kill: def %rsi killed %esi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movl	$2, %esi
                                        # kill: def %rsi killed %esi
	movl	$0, -44(%rbp)
	movb	$1, -45(%rbp)
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movb	-65(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	movq	-112(%rbp), %rax        # 8-byte Reload
	cmovneq	%rsi, %rax
	movq	%r14, %rsi
	addq	%r12, %rsi
	subq	%rcx, %rsi
	subq	$1, %rsi
	addq	$1, %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	-120(%rbp), %rax        # 8-byte Reload
	addq	%rax, %rsi
	addq	%r8, %rsi
	subq	$1, %rsi
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movq	%r9, %rcx
                                        # kill: def %cl killed %rcx
	shrq	%cl, %rsi
	addq	%r12, %rbx
	movq	-136(%rbp), %rax        # 8-byte Reload
	subq	%rax, %rbx
	movq	%r8, %rax
	subq	$1, %rax
	movq	%rbx, %rcx
	andq	%rax, %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	%r9, %rcx
                                        # kill: def %cl killed %rcx
	movq	%rbx, %rax
	shrq	%cl, %rax
	movq	%rbx, %rcx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	-120(%rbp), %rax        # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movq	%r9, %rcx
                                        # kill: def %cl killed %rcx
	movq	-160(%rbp), %r9         # 8-byte Reload
	shrq	%cl, %r9
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movb	-65(%rbp), %cl          # 1-byte Reload
	testb	$1, %cl
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmovneq	%rcx, %rax
	movq	-128(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	cmpq	%rcx, %rsi
	movq	%r13, -168(%rbp)        # 8-byte Spill
	movq	%r9, -176(%rbp)         # 8-byte Spill
	movq	%r8, -184(%rbp)         # 8-byte Spill
	movq	%r12, -192(%rbp)        # 8-byte Spill
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rbx, -216(%rbp)        # 8-byte Spill
	movq	%r10, -224(%rbp)        # 8-byte Spill
	movq	%r11, -232(%rbp)        # 8-byte Spill
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	movq	%r14, -248(%rbp)        # 8-byte Spill
	movq	%r15, -256(%rbp)        # 8-byte Spill
	jbe	.LBB0_2
# %bb.1:
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	subq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-184(%rbp), %rax        # 8-byte Reload
	imulq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	jmp	.LBB0_3
.LBB0_3:
	movq	%rsp, %rax
	movq	%rax, %rcx
	addq	$-128, %rcx
	movq	%rcx, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, -32(%rax)
	vmovups	%ymm0, -64(%rax)
	vmovups	%ymm0, -96(%rax)
	vmovups	%ymm0, -128(%rax)
	movq	-216(%rbp), %rax        # 8-byte Reload
	shlq	$3, %rax
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movq	%rax, (%rdx)
	movb	-65(%rbp), %sil         # 1-byte Reload
	xorb	$-1, %sil
	testb	$1, %sil
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	jne	.LBB0_4
	jmp	.LBB0_5
.LBB0_4:
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rcx
	movq	-184(%rbp), %rdx        # 8-byte Reload
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, (%rax)
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	$128, %rcx
	ja	.LBB0_7
	jmp	.LBB0_8
.LBB0_5:
	jmp	.LBB0_6
.LBB0_6:
	xorl	%esi, %esi
	movl	$16, %eax
	movl	%eax, %edx
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rcx, %rdi
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	vzeroupper
	callq	memset
	movb	-73(%rbp), %r8b         # 1-byte Reload
	testb	$1, %r8b
	jne	.LBB0_14
	jmp	.LBB0_15
.LBB0_7:
	xorl	%eax, %eax
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
	jmp	.LBB0_9
.LBB0_9:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movq	-224(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	vzeroupper
	callq	memcpy
	movq	-288(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -296(%rbp)        # 8-byte Spill
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jae	.LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	-304(%rbp), %rcx        # 8-byte Reload
	movb	(%rax,%rcx), %dl
	xorb	$54, %dl
	movb	%dl, (%rax,%rcx)
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-304(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB0_10
.LBB0_13:
	movl	-72(%rbp), %edi         # 4-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	-200(%rbp), %rdx        # 8-byte Reload
	callq	_md_transform
	jmp	.LBB0_6
.LBB0_14:
	movq	-120(%rbp), %rax        # 8-byte Reload
	subq	$4, %rax
	movq	-272(%rbp), %rcx        # 8-byte Reload
	movq	(%rcx), %rdx
	shrq	$24, %rdx
	movb	%dl, %sil
	movq	-280(%rbp), %rdx        # 8-byte Reload
	movb	%sil, (%rdx,%rax)
	movq	-120(%rbp), %rax        # 8-byte Reload
	subq	$3, %rax
	movq	(%rcx), %rdi
	shrq	$16, %rdi
	movb	%dil, %sil
	movb	%sil, (%rdx,%rax)
	movq	-120(%rbp), %rax        # 8-byte Reload
	subq	$2, %rax
	movq	(%rcx), %rdi
	shrq	$8, %rdi
	movb	%dil, %sil
	movb	%sil, (%rdx,%rax)
	movq	-120(%rbp), %rax        # 8-byte Reload
	subq	$1, %rax
	movq	(%rcx), %rdi
	movb	%dil, %sil
	movb	%sil, (%rdx,%rax)
	jmp	.LBB0_16
.LBB0_15:
	movq	-120(%rbp), %rax        # 8-byte Reload
	subq	$5, %rax
	movq	-272(%rbp), %rcx        # 8-byte Reload
	movq	(%rcx), %rdx
	shrq	$24, %rdx
	movb	%dl, %sil
	movq	-280(%rbp), %rdx        # 8-byte Reload
	movb	%sil, (%rdx,%rax)
	movq	-120(%rbp), %rax        # 8-byte Reload
	subq	$6, %rax
	movq	(%rcx), %rdi
	shrq	$16, %rdi
	movb	%dil, %sil
	movb	%sil, (%rdx,%rax)
	movq	-120(%rbp), %rax        # 8-byte Reload
	subq	$7, %rax
	movq	(%rcx), %rdi
	shrq	$8, %rdi
	movb	%dil, %sil
	movb	%sil, (%rdx,%rax)
	movq	-120(%rbp), %rax        # 8-byte Reload
	subq	$8, %rax
	movq	(%rcx), %rdi
	movb	%dil, %sil
	movb	%sil, (%rdx,%rax)
.LBB0_16:
	cmpq	$0, -64(%rbp)
	jbe	.LBB0_18
# %bb.17:
	movb	-65(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_20
	jmp	.LBB0_21
.LBB0_18:
	jmp	.LBB0_19
.LBB0_19:
	movq	-56(%rbp), %rax
	movq	-128(%rbp), %rcx        # 8-byte Reload
	addq	-56(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB0_34
.LBB0_20:
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rcx, %rax
	jbe	.LBB0_23
	jmp	.LBB0_24
.LBB0_21:
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rcx
	movq	-264(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, (%rdx)
	movl	8(%rax), %esi
	movl	%esi, 8(%rdx)
	movb	12(%rax), %dil
	movb	%dil, 12(%rdx)
	movq	-184(%rbp), %rcx        # 8-byte Reload
	subq	$13, %rcx
	addq	$13, %rdx
	movq	%rdx, %rdi
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movq	%rcx, %rdx
	callq	memcpy
	movl	-72(%rbp), %edi         # 4-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	-264(%rbp), %rdx        # 8-byte Reload
	callq	_md_transform
	movl	$1, %edi
	movl	%edi, %eax
	movq	-64(%rbp), %rcx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	divq	%rcx
	movq	-328(%rbp), %rsi        # 8-byte Reload
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movq	%rsi, -344(%rbp)        # 8-byte Spill
	jmp	.LBB0_30
.LBB0_22:
	jmp	.LBB0_19
.LBB0_23:
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_24:
	jmp	.LBB0_25
.LBB0_25:
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	subq	%rcx, %rax
	movl	-72(%rbp), %edi         # 4-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	-168(%rbp), %rdx        # 8-byte Reload
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	_md_transform
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	addq	%rcx, %rax
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	-352(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-352(%rbp), %rcx        # 8-byte Reload
	subq	%rcx, %rax
	movq	-264(%rbp), %rdx        # 8-byte Reload
	addq	%rcx, %rdx
	movq	%rdx, %rdi
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	memcpy
	movl	-72(%rbp), %edi         # 4-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	-264(%rbp), %rdx        # 8-byte Reload
	callq	_md_transform
	movl	$1, %edi
	movl	%edi, %eax
	movq	-64(%rbp), %rcx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	divq	%rcx
	subq	$1, %rax
	movq	-360(%rbp), %rsi        # 8-byte Reload
	movq	%rax, -368(%rbp)        # 8-byte Spill
	movq	%rsi, -376(%rbp)        # 8-byte Spill
.LBB0_26:                               # =>This Inner Loop Header: Depth=1
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	-368(%rbp), %rcx        # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jae	.LBB0_29
# %bb.27:                               #   in Loop: Header=BB0_26 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-384(%rbp), %rcx        # 8-byte Reload
	imulq	%rcx, %rax
	movq	-352(%rbp), %rdx        # 8-byte Reload
	subq	%rdx, %rax
	movq	-256(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	movl	-72(%rbp), %edi         # 4-byte Reload
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-392(%rbp), %rdx        # 8-byte Reload
	callq	_md_transform
# %bb.28:                               #   in Loop: Header=BB0_26 Depth=1
	movq	-384(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB0_26
.LBB0_29:
	jmp	.LBB0_22
.LBB0_30:                               # =>This Inner Loop Header: Depth=1
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jae	.LBB0_33
# %bb.31:                               #   in Loop: Header=BB0_30 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-400(%rbp), %rcx        # 8-byte Reload
	imulq	%rcx, %rax
	subq	$13, %rax
	movq	-256(%rbp), %rdx        # 8-byte Reload
	addq	%rax, %rdx
	movl	-72(%rbp), %edi         # 4-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	callq	_md_transform
# %bb.32:                               #   in Loop: Header=BB0_30 Depth=1
	movq	-400(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB0_30
.LBB0_33:
	jmp	.LBB0_22
.LBB0_34:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_38 Depth 2
                                        #     Child Loop BB0_51 Depth 2
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	-312(%rbp), %rcx        # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jae	.LBB0_37
# %bb.35:                               #   in Loop: Header=BB0_34 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%esi, %esi
	movl	$128, %eax
	movl	%eax, %edx
	movq	%rsp, %rdi
	addq	$-128, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	callq	memset
	movq	-408(%rbp), %rcx        # 8-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	cmpq	%rdx, %rcx
	sete	%r8b
	movq	-176(%rbp), %rdi        # 8-byte Reload
	cmpq	%rdi, %rcx
	sete	%r9b
	movq	-424(%rbp), %r10        # 8-byte Reload
	movb	%r8b, -425(%rbp)        # 1-byte Spill
	movb	%r9b, -426(%rbp)        # 1-byte Spill
	movq	%r10, -440(%rbp)        # 8-byte Spill
	jmp	.LBB0_38
.LBB0_36:                               #   in Loop: Header=BB0_34 Depth=1
	movq	-408(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB0_34
.LBB0_37:
	movl	$1, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_38:                               #   Parent Loop BB0_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-440(%rbp), %rax        # 8-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jae	.LBB0_41
# %bb.39:                               #   in Loop: Header=BB0_38 Depth=2
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movb	$0, (%rax)
	movq	-64(%rbp), %rcx
	movq	-192(%rbp), %rdx        # 8-byte Reload
	cmpq	%rdx, %rcx
	movq	%rax, -456(%rbp)        # 8-byte Spill
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	jb	.LBB0_42
	jmp	.LBB0_43
.LBB0_40:                               #   in Loop: Header=BB0_38 Depth=2
	movq	-448(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jmp	.LBB0_38
.LBB0_41:                               #   in Loop: Header=BB0_34 Depth=1
	movl	-72(%rbp), %edi         # 4-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	-416(%rbp), %rdx        # 8-byte Reload
	callq	_md_transform
	movl	-72(%rbp), %edi         # 4-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	-416(%rbp), %rdx        # 8-byte Reload
	callq	_md_final_raw
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	jmp	.LBB0_51
.LBB0_42:                               #   in Loop: Header=BB0_38 Depth=2
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-464(%rbp), %rcx        # 8-byte Reload
	movb	(%rax,%rcx), %dl
	movq	-456(%rbp), %rsi        # 8-byte Reload
	movb	%dl, (%rsi)
	jmp	.LBB0_44
.LBB0_43:                               #   in Loop: Header=BB0_38 Depth=2
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	-192(%rbp), %rcx        # 8-byte Reload
	addq	%rcx, %rax
	movq	-464(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jb	.LBB0_45
	jmp	.LBB0_46
.LBB0_44:                               #   in Loop: Header=BB0_38 Depth=2
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rcx, %rax
	setae	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	xorl	%edi, %edi
	movb	-425(%rbp), %dl         # 1-byte Reload
	#APP
	testb	%dl, %dl
	movl	%edi, %r8d
	cmovnel	%esi, %r8d
	#NO_APP
	movb	%r8b, %dl
	addq	$1, %rcx
	cmpq	%rcx, %rax
	setae	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %esi
	xorl	%edi, %edi
	movb	-425(%rbp), %r9b        # 1-byte Reload
	#APP
	testb	%r9b, %r9b
	movl	%edi, %r8d
	cmovnel	%esi, %r8d
	#NO_APP
	movb	%r8b, %r9b
	movq	-456(%rbp), %rcx        # 8-byte Reload
	movzbl	(%rcx), %esi
	movl	$128, %edi
	#APP
	testb	%dl, %dl
	movl	%esi, %r8d
	cmovnel	%edi, %r8d
	#NO_APP
	movb	%r8b, %dl
	movb	%dl, (%rcx)
	andb	$1, %r9b
	movzbl	(%rcx), %esi
	xorl	%edi, %edi
	#APP
	testb	%r9b, %r9b
	cmovnel	%edi, %esi
	#NO_APP
	movb	%sil, %dl
	movb	%dl, (%rcx)
	movb	-425(%rbp), %dl         # 1-byte Reload
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	xorl	%edi, %edi
	movb	-426(%rbp), %dl         # 1-byte Reload
	#APP
	testb	%dl, %dl
	movl	%edi, %r8d
	cmovnel	%esi, %r8d
	#NO_APP
	movb	%r8b, %dl
	andb	$1, %dl
	movzbl	(%rcx), %esi
	xorl	%edi, %edi
	#APP
	testb	%dl, %dl
	cmovnel	%edi, %esi
	#NO_APP
	movb	%sil, %dl
	movb	%dl, (%rcx)
	movq	-184(%rbp), %r10        # 8-byte Reload
	movq	-120(%rbp), %r11        # 8-byte Reload
	subq	%r11, %r10
	cmpq	%r10, %rax
	jae	.LBB0_48
	jmp	.LBB0_49
.LBB0_45:                               #   in Loop: Header=BB0_38 Depth=2
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	-192(%rbp), %rcx        # 8-byte Reload
	subq	%rcx, %rax
	movq	-256(%rbp), %rdx        # 8-byte Reload
	movb	(%rdx,%rax), %sil
	movq	-456(%rbp), %rax        # 8-byte Reload
	movb	%sil, (%rax)
	jmp	.LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_38 Depth=2
	jmp	.LBB0_47
.LBB0_47:                               #   in Loop: Header=BB0_38 Depth=2
	jmp	.LBB0_44
.LBB0_48:                               #   in Loop: Header=BB0_38 Depth=2
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	subq	%rcx, %rax
	movq	-448(%rbp), %rdx        # 8-byte Reload
	subq	%rax, %rdx
	movq	-280(%rbp), %rax        # 8-byte Reload
	movb	(%rax,%rdx), %sil
	movq	-456(%rbp), %rdx        # 8-byte Reload
	movb	(%rdx), %dil
	movzbl	%sil, %r8d
	movzbl	%dil, %r9d
	movb	-426(%rbp), %sil        # 1-byte Reload
	#APP
	testb	%sil, %sil
	movl	%r9d, %r10d
	cmovnel	%r8d, %r10d
	#NO_APP
	movb	%r10b, %sil
	movb	%sil, (%rdx)
	jmp	.LBB0_50
.LBB0_49:                               #   in Loop: Header=BB0_38 Depth=2
	jmp	.LBB0_50
.LBB0_50:                               #   in Loop: Header=BB0_38 Depth=2
	movq	-456(%rbp), %rax        # 8-byte Reload
	movb	(%rax), %cl
	movq	-416(%rbp), %rdx        # 8-byte Reload
	movq	-448(%rbp), %rsi        # 8-byte Reload
	movb	%cl, (%rdx,%rsi)
	jmp	.LBB0_40
.LBB0_51:                               #   Parent Loop BB0_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-472(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jae	.LBB0_54
# %bb.52:                               #   in Loop: Header=BB0_51 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-480(%rbp), %rcx        # 8-byte Reload
	movb	(%rax,%rcx), %dl
	movq	-416(%rbp), %rsi        # 8-byte Reload
	movzbl	(%rsi,%rcx), %edi
	xorl	%r8d, %r8d
	movb	-426(%rbp), %r9b        # 1-byte Reload
	#APP
	testb	%r9b, %r9b
	movl	%r8d, %r10d
	cmovnel	%edi, %r10d
	#NO_APP
	movb	%r10b, %r9b
	orb	%r9b, %dl
	movb	%dl, (%rax,%rcx)
# %bb.53:                               #   in Loop: Header=BB0_51 Depth=2
	movq	-480(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jmp	.LBB0_51
.LBB0_54:                               #   in Loop: Header=BB0_34 Depth=1
	jmp	.LBB0_36
.Lfunc_end0:
	.size	__ssl3_cbc_digest_record, .Lfunc_end0-__ssl3_cbc_digest_record
	.cfi_endproc
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
