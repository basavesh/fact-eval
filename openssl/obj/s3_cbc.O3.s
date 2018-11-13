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
	subq	$104, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%r8, -80(%rbp)          # 8-byte Spill
	movq	%rcx, %rbx
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	16(%rbp), %rdi
	movq	%r9, -104(%rbp)         # 8-byte Spill
	leaq	(%r9,%rbx), %r15
	addq	$51, %r15
	leaq	(%rdi,%rbx), %r14
	addq	$-20, %r14
	cmpq	$256, %r15              # imm = 0x100
	jb	.LBB0_1
# %bb.2:
	shrq	$6, %r15
	addq	$-2, %r15
	movq	%r15, %r8
	shlq	$6, %r8
	jmp	.LBB0_3
.LBB0_1:
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
.LBB0_3:
	movq	%rsp, %rax
	leaq	-128(%rax), %r12
	movq	%r12, %rsp
	xorps	%xmm0, %xmm0
	movups	%xmm0, -16(%rax)
	movups	%xmm0, -32(%rax)
	movups	%xmm0, -48(%rax)
	movups	%xmm0, -64(%rax)
	movups	%xmm0, -80(%rax)
	movups	%xmm0, -96(%rax)
	movups	%xmm0, -112(%rax)
	movups	%xmm0, -128(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %rsp
	movups	%xmm0, -16(%rax)
	movq	%r14, %rdx
	movq	%rdx, %rcx
	shrq	$21, %rcx
	movb	%cl, -12(%rax)
	movq	%rdx, %rcx
	shrq	$13, %rcx
	movb	%cl, -11(%rax)
	movq	%rdx, %rcx
	shrq	$5, %rcx
	movb	%cl, -10(%rax)
	movl	%edx, %ecx
	shlb	$3, %cl
	movb	%cl, -9(%rax)
	testq	%r8, %r8
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	je	.LBB0_7
# %bb.4:
	xorl	%eax, %eax
	cmpq	$65, %rbx
	jb	.LBB0_5
# %bb.12:
	leaq	-64(%rbx), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %r13         # 8-byte Reload
	movq	%r13, %rdi
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%rbx, %rsi
	callq	SHA1_Transform
	leaq	64(%rbx), %rsi
	movq	%r12, %rdi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	memcpy
	movl	$128, %edx
	subq	-48(%rbp), %rdx         # 8-byte Folded Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	(%r12,%rax), %rdi
	addq	$-64, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	SHA1_Transform
	movq	16(%rbp), %rdi
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%r8, %r13
	shrq	$6, %r13
	leaq	-1(%r13), %rax
	cmpq	$2, %rax
	jb	.LBB0_7
# %bb.13:                               # %.lr.ph16.preheader
	addq	$-2, %r13
	movl	$128, %r12d
	subq	%rbx, %r12
	addq	-80(%rbp), %r12         # 8-byte Folded Reload
	movq	-72(%rbp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_14:                               # %.lr.ph16
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	SHA1_Transform
	addq	$64, %r12
	addq	$-1, %r13
	jne	.LBB0_14
# %bb.6:                                # %.loopexit9
	movl	$1, %eax
	cmpq	$-4, %r15
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	16(%rbp), %rdi
	ja	.LBB0_5
.LBB0_7:                                # %.lr.ph
	movq	%r14, %rax
	movl	%eax, %ecx
	andl	$63, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	leaq	(%rdi,%rbx), %r14
	addq	$-12, %r14
	addq	%rbx, -104(%rbp)        # 8-byte Folded Spill
	shrq	$6, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	shrq	$6, %r14
	xorl	%r13d, %r13d
	leaq	3(%r15), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	.p2align	4, 0x90
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
	movq	%rsp, %rax
	leaq	-128(%rax), %r12
	movq	%r12, %rsp
	xorps	%xmm0, %xmm0
	movups	%xmm0, -16(%rax)
	movups	%xmm0, -32(%rax)
	movups	%xmm0, -48(%rax)
	movups	%xmm0, -64(%rax)
	movups	%xmm0, -80(%rax)
	movups	%xmm0, -96(%rax)
	movups	%xmm0, -112(%rax)
	movups	%xmm0, -128(%rax)
	xorl	%r9d, %r9d
	cmpq	-64(%rbp), %r15         # 8-byte Folded Reload
	setne	%r9b
	movq	-96(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r8), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	xorl	%edx, %edx
	movq	%r8, -56(%rbp)          # 8-byte Spill
	.p2align	4, 0x90
.LBB0_9:                                #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%rdx), %rdi
	cmpq	%rbx, %rdi
	jae	.LBB0_17
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%rdx), %rdi
	movzbl	(%rdi), %r10d
	jmp	.LBB0_19
	.p2align	4, 0x90
.LBB0_17:                               #   in Loop: Header=BB0_9 Depth=2
	cmpq	-104(%rbp), %rdi        # 8-byte Folded Reload
	jae	.LBB0_18
# %bb.22:                               #   in Loop: Header=BB0_9 Depth=2
	movq	%r8, %rdi
	subq	%rbx, %rdi
	addq	-80(%rbp), %rdi         # 8-byte Folded Reload
	movzbl	(%rdi), %r10d
	jmp	.LBB0_19
	.p2align	4, 0x90
.LBB0_18:                               #   in Loop: Header=BB0_9 Depth=2
	xorl	%r10d, %r10d
.LBB0_19:                               #   in Loop: Header=BB0_9 Depth=2
	cmpq	%r14, %r15
	sete	%r11b
	cmpq	-64(%rbp), %r15         # 8-byte Folded Reload
	sete	%bl
	xorl	%eax, %eax
	xorl	%edi, %edi
	cmpq	-136(%rbp), %rdx        # 8-byte Folded Reload
	setae	%al
	seta	%dil
	#APP
	testb	%bl, %bl
	movl	%r13d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	andl	$1, %ecx
	#APP
	testb	%bl, %bl
	movl	%r13d, %eax
	cmovnel	%edi, %eax
	#NO_APP
	andl	$1, %eax
	movzbl	%r10b, %edi
	movl	$128, %esi
	#APP
	testb	%cl, %cl
	movl	%edi, %ebx
	cmovnel	%esi, %ebx
	#NO_APP
	movzbl	%bl, %ecx
	#APP
	testb	%al, %al
	cmovnel	%r13d, %ecx
	#NO_APP
	#APP
	testb	%r11b, %r11b
	movl	%r13d, %eax
	cmovnel	%r9d, %eax
	#NO_APP
	andl	$1, %eax
	movzbl	%cl, %edi
	#APP
	testb	%al, %al
	cmovnel	%r13d, %edi
	#NO_APP
	cmpq	$55, %rdx
	jbe	.LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_9 Depth=2
	cmpq	%r14, %r15
	sete	%al
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movzbl	-56(%rcx,%rdx), %ecx
	movzbl	%dil, %ebx
	#APP
	testb	%al, %al
	movl	%ebx, %edi
	cmovnel	%ecx, %edi
	#NO_APP
.LBB0_21:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-48(%rbp), %rbx         # 8-byte Reload
	addq	$1, %r8
	movb	%dil, (%r12,%rdx)
	addq	$1, %rdx
	cmpq	$64, %rdx
	jne	.LBB0_9
# %bb.15:                               #   in Loop: Header=BB0_8 Depth=1
	cmpq	%r14, %r15
	sete	-88(%rbp)               # 1-byte Folded Spill
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	SHA1_Transform
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_md_final_raw
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movzbl	(%r12), %eax
	movb	-88(%rbp), %dl          # 1-byte Reload
	#APP
	testb	%dl, %dl
	movl	%r13d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	movq	-120(%rbp), %rsi        # 8-byte Reload
	orb	%cl, (%rsi)
	movzbl	1(%r12), %eax
	#APP
	testb	%dl, %dl
	movl	%r13d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 1(%rsi)
	movzbl	2(%r12), %eax
	#APP
	testb	%dl, %dl
	movl	%r13d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 2(%rsi)
	movzbl	3(%r12), %eax
	#APP
	testb	%dl, %dl
	movl	%r13d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 3(%rsi)
	movzbl	4(%r12), %eax
	#APP
	testb	%dl, %dl
	movl	%r13d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 4(%rsi)
	movzbl	5(%r12), %eax
	#APP
	testb	%dl, %dl
	movl	%r13d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 5(%rsi)
	movzbl	6(%r12), %eax
	#APP
	testb	%dl, %dl
	movl	%r13d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 6(%rsi)
	movzbl	7(%r12), %eax
	#APP
	testb	%dl, %dl
	movl	%r13d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 7(%rsi)
	movzbl	8(%r12), %eax
	#APP
	testb	%dl, %dl
	movl	%r13d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 8(%rsi)
	movzbl	9(%r12), %eax
	#APP
	testb	%dl, %dl
	movl	%r13d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 9(%rsi)
	movzbl	10(%r12), %eax
	#APP
	testb	%dl, %dl
	movl	%r13d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 10(%rsi)
	movzbl	11(%r12), %eax
	#APP
	testb	%dl, %dl
	movl	%r13d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 11(%rsi)
	movzbl	12(%r12), %eax
	#APP
	testb	%dl, %dl
	movl	%r13d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 12(%rsi)
	movzbl	13(%r12), %eax
	#APP
	testb	%dl, %dl
	movl	%r13d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 13(%rsi)
	movzbl	14(%r12), %eax
	#APP
	testb	%dl, %dl
	movl	%r13d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 14(%rsi)
	movzbl	15(%r12), %eax
	#APP
	testb	%dl, %dl
	movl	%r13d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 15(%rsi)
	movzbl	16(%r12), %eax
	#APP
	testb	%dl, %dl
	movl	%r13d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 16(%rsi)
	movzbl	17(%r12), %eax
	#APP
	testb	%dl, %dl
	movl	%r13d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 17(%rsi)
	movzbl	18(%r12), %eax
	#APP
	testb	%dl, %dl
	movl	%r13d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 18(%rsi)
	movzbl	19(%r12), %eax
	#APP
	testb	%dl, %dl
	movl	%r13d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 19(%rsi)
	movq	-56(%rbp), %r8          # 8-byte Reload
	addq	$64, %r8
	addq	$1, %r15
	cmpq	-112(%rbp), %r15        # 8-byte Folded Reload
	jb	.LBB0_8
# %bb.16:
	movl	$1, %eax
.LBB0_5:                                # %.loopexit
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
