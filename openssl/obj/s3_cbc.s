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
	pushq	%r14
	pushq	%rbx
	subq	$272, %rsp              # imm = 0x110
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	16(%rbp), %rax
	movl	$0, -20(%rbp)
	movb	$1, -21(%rbp)
	movq	%r9, %r10
	addq	%rcx, %r10
	subq	$20, %r10
	subq	$1, %r10
	addq	$1, %r10
	addq	$8, %r10
	addq	$64, %r10
	subq	$1, %r10
	shrq	$6, %r10
	addq	%rcx, %rax
	subq	$20, %rax
	movq	%rax, %r11
	andq	$63, %r11
	movq	%rax, %rbx
	shrq	$6, %rbx
	movq	%rax, %r14
	addq	$8, %r14
	shrq	$6, %r14
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$3, %r10
	movq	%r10, -48(%rbp)         # 8-byte Spill
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%r11, -112(%rbp)        # 8-byte Spill
	movq	%rbx, -120(%rbp)        # 8-byte Spill
	movq	%r14, -128(%rbp)        # 8-byte Spill
	jbe	.LBB0_2
# %bb.1:
	movq	-48(%rbp), %rax         # 8-byte Reload
	subq	$2, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	shlq	$6, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	jmp	.LBB0_3
.LBB0_3:
	xorl	%esi, %esi
	movl	$16, %eax
	movl	%eax, %edx
	movq	%rsp, %rcx
	movq	%rcx, %rdi
	addq	$-128, %rdi
	movq	%rdi, %rsp
	xorps	%xmm0, %xmm0
	movups	%xmm0, -16(%rcx)
	movups	%xmm0, -32(%rcx)
	movups	%xmm0, -48(%rcx)
	movups	%xmm0, -64(%rcx)
	movups	%xmm0, -80(%rcx)
	movups	%xmm0, -96(%rcx)
	movups	%xmm0, -112(%rcx)
	movups	%xmm0, -128(%rcx)
	movq	-104(%rbp), %rcx        # 8-byte Reload
	shlq	$3, %rcx
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	%r8, -152(%rbp)         # 8-byte Spill
	callq	memset
	movq	-144(%rbp), %rcx        # 8-byte Reload
	shrq	$24, %rcx
	movb	%cl, %r9b
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movb	%r9b, 4(%rcx)
	movq	-144(%rbp), %rdx        # 8-byte Reload
	shrq	$16, %rdx
	movb	%dl, %r9b
	movb	%r9b, 5(%rcx)
	movq	-144(%rbp), %rdx        # 8-byte Reload
	shrq	$8, %rdx
	movb	%dl, %r9b
	movb	%r9b, 6(%rcx)
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movb	%dl, %r9b
	movb	%r9b, 7(%rcx)
	cmpq	$0, -40(%rbp)
	jbe	.LBB0_5
# %bb.4:
	movq	-72(%rbp), %rax         # 8-byte Reload
	cmpq	$64, %rax
	jbe	.LBB0_7
	jmp	.LBB0_8
.LBB0_5:
	jmp	.LBB0_6
.LBB0_6:
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$2, %rcx
	addq	$1, %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB0_14
.LBB0_7:
	xorl	%eax, %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:
	movq	-72(%rbp), %rax         # 8-byte Reload
	subq	$64, %rax
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	SHA1_Transform
	movl	$64, %ecx
	movl	%ecx, %eax
	movq	-80(%rbp), %rsi         # 8-byte Reload
	addq	$64, %rsi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rdx        # 8-byte Reload
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-176(%rbp), %rdx        # 8-byte Reload
	subq	%rdx, %rax
	movq	-136(%rbp), %rsi        # 8-byte Reload
	addq	%rdx, %rsi
	movq	%rsi, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	memcpy
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	callq	SHA1_Transform
	movl	$1, %ecx
	movl	%ecx, %eax
	movq	-40(%rbp), %rdx
	shrq	$6, %rdx
	subq	$1, %rdx
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jae	.LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	shlq	$6, %rax
	movq	-176(%rbp), %rcx        # 8-byte Reload
	subq	%rcx, %rax
	movq	-64(%rbp), %rdx         # 8-byte Reload
	addq	%rax, %rdx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rdx, %rsi
	callq	SHA1_Transform
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB0_10
.LBB0_13:
	jmp	.LBB0_6
.LBB0_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_18 Depth 2
                                        #     Child Loop BB0_31 Depth 2
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jae	.LBB0_17
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%esi, %esi
	movl	$128, %eax
	movl	%eax, %edx
	movq	%rsp, %rdi
	addq	$-128, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	callq	memset
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
	cmpq	%rdx, %rcx
	sete	%r8b
	movq	-128(%rbp), %rdi        # 8-byte Reload
	cmpq	%rdi, %rcx
	sete	%r9b
	movq	-232(%rbp), %r10        # 8-byte Reload
	movb	%r8b, -233(%rbp)        # 1-byte Spill
	movb	%r9b, -234(%rbp)        # 1-byte Spill
	movq	%r10, -248(%rbp)        # 8-byte Spill
	jmp	.LBB0_18
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB0_14
.LBB0_17:
	movl	$1, %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB0_18:                               #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-248(%rbp), %rax        # 8-byte Reload
	cmpq	$64, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jae	.LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=2
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movb	$0, (%rax)
	movq	-40(%rbp), %rcx
	movq	-72(%rbp), %rdx         # 8-byte Reload
	cmpq	%rdx, %rcx
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	jb	.LBB0_22
	jmp	.LBB0_23
.LBB0_20:                               #   in Loop: Header=BB0_18 Depth=2
	movq	-256(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB0_18
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=1
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-224(%rbp), %rsi        # 8-byte Reload
	callq	SHA1_Transform
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-224(%rbp), %rsi        # 8-byte Reload
	callq	_md_final_raw
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	jmp	.LBB0_31
.LBB0_22:                               #   in Loop: Header=BB0_18 Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-272(%rbp), %rcx        # 8-byte Reload
	movb	(%rax,%rcx), %dl
	movq	-264(%rbp), %rsi        # 8-byte Reload
	movb	%dl, (%rsi)
	jmp	.LBB0_24
.LBB0_23:                               #   in Loop: Header=BB0_18 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	addq	%rcx, %rax
	movq	-272(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jb	.LBB0_25
	jmp	.LBB0_26
.LBB0_24:                               #   in Loop: Header=BB0_18 Depth=2
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rcx, %rax
	setae	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	xorl	%edi, %edi
	movb	-233(%rbp), %dl         # 1-byte Reload
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
	movb	-233(%rbp), %r9b        # 1-byte Reload
	#APP
	testb	%r9b, %r9b
	movl	%edi, %r8d
	cmovnel	%esi, %r8d
	#NO_APP
	movb	%r8b, %r9b
	movq	-264(%rbp), %rcx        # 8-byte Reload
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
	movb	-233(%rbp), %dl         # 1-byte Reload
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	xorl	%edi, %edi
	movb	-234(%rbp), %dl         # 1-byte Reload
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
	cmpq	$56, %rax
	jae	.LBB0_28
	jmp	.LBB0_29
.LBB0_25:                               #   in Loop: Header=BB0_18 Depth=2
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	subq	%rcx, %rax
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movb	(%rdx,%rax), %sil
	movq	-264(%rbp), %rax        # 8-byte Reload
	movb	%sil, (%rax)
	jmp	.LBB0_27
.LBB0_26:                               #   in Loop: Header=BB0_18 Depth=2
	jmp	.LBB0_27
.LBB0_27:                               #   in Loop: Header=BB0_18 Depth=2
	jmp	.LBB0_24
.LBB0_28:                               #   in Loop: Header=BB0_18 Depth=2
	movq	-256(%rbp), %rax        # 8-byte Reload
	subq	$56, %rax
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movb	(%rcx,%rax), %dl
	movq	-264(%rbp), %rax        # 8-byte Reload
	movb	(%rax), %sil
	movzbl	%dl, %edi
	movzbl	%sil, %r8d
	movb	-234(%rbp), %dl         # 1-byte Reload
	#APP
	testb	%dl, %dl
	movl	%r8d, %r9d
	cmovnel	%edi, %r9d
	#NO_APP
	movb	%r9b, %dl
	movb	%dl, (%rax)
	jmp	.LBB0_30
.LBB0_29:                               #   in Loop: Header=BB0_18 Depth=2
	jmp	.LBB0_30
.LBB0_30:                               #   in Loop: Header=BB0_18 Depth=2
	movq	-264(%rbp), %rax        # 8-byte Reload
	movb	(%rax), %cl
	movq	-224(%rbp), %rdx        # 8-byte Reload
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movb	%cl, (%rdx,%rsi)
	jmp	.LBB0_20
.LBB0_31:                               #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-280(%rbp), %rax        # 8-byte Reload
	cmpq	$20, %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jae	.LBB0_34
# %bb.32:                               #   in Loop: Header=BB0_31 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-288(%rbp), %rcx        # 8-byte Reload
	movb	(%rax,%rcx), %dl
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movzbl	(%rsi,%rcx), %edi
	xorl	%r8d, %r8d
	movb	-234(%rbp), %r9b        # 1-byte Reload
	#APP
	testb	%r9b, %r9b
	movl	%r8d, %r10d
	cmovnel	%edi, %r10d
	#NO_APP
	movb	%r10b, %r9b
	orb	%r9b, %dl
	movb	%dl, (%rax,%rcx)
# %bb.33:                               #   in Loop: Header=BB0_31 Depth=2
	movq	-288(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jmp	.LBB0_31
.LBB0_34:                               #   in Loop: Header=BB0_14 Depth=1
	jmp	.LBB0_16
.Lfunc_end0:
	.size	__ssl3_cbc_digest_record, .Lfunc_end0-__ssl3_cbc_digest_record
	.cfi_endproc
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
