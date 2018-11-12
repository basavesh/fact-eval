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
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rdi, %r12
	movq	24(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	addq	%r8, %rax
	addq	$51, %rax
	leaq	(%rdi,%r8), %r14
	addq	$-20, %r14
	cmpq	$256, %rax              # imm = 0x100
	jb	.LBB0_1
# %bb.2:
	shrq	$6, %rax
	addq	$-2, %rax
	movq	%rax, %r13
	movq	%rax, %rsi
	shlq	$6, %rsi
	jmp	.LBB0_3
.LBB0_1:
	xorl	%r13d, %r13d
	xorl	%esi, %esi
.LBB0_3:
	movq	%rsp, %rax
	leaq	-128(%rax), %r15
	movq	%r15, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, -32(%rax)
	vmovups	%ymm0, -64(%rax)
	vmovups	%ymm0, -96(%rax)
	vmovups	%ymm0, -128(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, -16(%rax)
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
	testq	%rsi, %rsi
	movq	%r8, -48(%rbp)          # 8-byte Spill
	je	.LBB0_7
# %bb.4:
	xorl	%eax, %eax
	cmpq	$65, %r8
	jb	.LBB0_5
# %bb.12:
	leaq	-64(%r8), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%r12, %rdi
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rbx, %rsi
	vzeroupper
	callq	SHA1_Transform
	leaq	64(%rbx), %rsi
	movq	%r15, %rdi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	memcpy
	movl	$128, %edx
	subq	-48(%rbp), %rdx         # 8-byte Folded Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	(%r15,%rax), %rdi
	addq	$-64, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	SHA1_Transform
	movq	24(%rbp), %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	%rsi, %rbx
	shrq	$6, %rbx
	leaq	-1(%rbx), %rax
	cmpq	$2, %rax
	jb	.LBB0_7
# %bb.13:                               # %.lr.ph16.preheader
	addq	$-2, %rbx
	movl	$128, %r15d
	subq	%r8, %r15
	addq	-72(%rbp), %r15         # 8-byte Folded Reload
	.p2align	4, 0x90
.LBB0_14:                               # %.lr.ph16
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	SHA1_Transform
	addq	$64, %r15
	addq	$-1, %rbx
	jne	.LBB0_14
# %bb.6:                                # %.loopexit9
	movl	$1, %eax
	cmpq	$-4, %r13
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	24(%rbp), %rdi
	ja	.LBB0_5
.LBB0_7:                                # %.lr.ph
	movq	%r12, -88(%rbp)         # 8-byte Spill
	movl	%r14d, %ecx
	andl	$63, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	leaq	(%rdi,%r8), %rbx
	addq	$-12, %rbx
	addq	%r8, -96(%rbp)          # 8-byte Folded Spill
	shrq	$6, %r14
	movq	%r14, -64(%rbp)         # 8-byte Spill
	shrq	$6, %rbx
	xorl	%r12d, %r12d
	leaq	3(%r13), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	.p2align	4, 0x90
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
	movq	%rsp, %rax
	leaq	-128(%rax), %r15
	movq	%r15, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, -32(%rax)
	vmovups	%ymm0, -64(%rax)
	vmovups	%ymm0, -96(%rax)
	vmovups	%ymm0, -128(%rax)
	xorl	%r9d, %r9d
	cmpq	-64(%rbp), %r13         # 8-byte Folded Reload
	setne	%r9b
	movq	-80(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%rsi), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	xorl	%edx, %edx
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rsi, %r14
	movq	%r13, %rsi
	.p2align	4, 0x90
.LBB0_9:                                #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%rdx), %rdi
	cmpq	%r8, %rdi
	jae	.LBB0_17
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-128(%rbp), %rax        # 8-byte Reload
	leaq	(%rax,%rdx), %rdi
	movzbl	(%rdi), %r10d
	jmp	.LBB0_19
	.p2align	4, 0x90
.LBB0_17:                               #   in Loop: Header=BB0_9 Depth=2
	cmpq	-96(%rbp), %rdi         # 8-byte Folded Reload
	jae	.LBB0_18
# %bb.22:                               #   in Loop: Header=BB0_9 Depth=2
	movq	%r14, %rdi
	subq	%r8, %rdi
	addq	-72(%rbp), %rdi         # 8-byte Folded Reload
	movzbl	(%rdi), %r10d
	jmp	.LBB0_19
	.p2align	4, 0x90
.LBB0_18:                               #   in Loop: Header=BB0_9 Depth=2
	xorl	%r10d, %r10d
.LBB0_19:                               #   in Loop: Header=BB0_9 Depth=2
	cmpq	%rbx, %rsi
	movq	%rbx, %r13
	sete	%r11b
	cmpq	-64(%rbp), %rsi         # 8-byte Folded Reload
	sete	%bl
	xorl	%eax, %eax
	xorl	%edi, %edi
	cmpq	-136(%rbp), %rdx        # 8-byte Folded Reload
	setae	%al
	seta	%dil
	#APP
	testb	%bl, %bl
	movl	%r12d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	andl	$1, %ecx
	#APP
	testb	%bl, %bl
	movl	%r12d, %eax
	cmovnel	%edi, %eax
	#NO_APP
	andl	$1, %eax
	movzbl	%r10b, %edi
	movq	%rsi, %r10
	movl	$128, %esi
	#APP
	testb	%cl, %cl
	movl	%edi, %ebx
	cmovnel	%esi, %ebx
	#NO_APP
	movzbl	%bl, %ecx
	#APP
	testb	%al, %al
	cmovnel	%r12d, %ecx
	#NO_APP
	#APP
	testb	%r11b, %r11b
	movl	%r12d, %eax
	cmovnel	%r9d, %eax
	#NO_APP
	andl	$1, %eax
	movzbl	%cl, %edi
	#APP
	testb	%al, %al
	cmovnel	%r12d, %edi
	#NO_APP
	cmpq	$55, %rdx
	jbe	.LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_9 Depth=2
	cmpq	%r13, %r10
	sete	%al
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movzbl	-56(%rcx,%rdx), %ecx
	movzbl	%dil, %ebx
	#APP
	testb	%al, %al
	movl	%ebx, %edi
	cmovnel	%ecx, %edi
	#NO_APP
.LBB0_21:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	%r13, %rbx
	movq	%r10, %rsi
	addq	$1, %r14
	movb	%dil, (%r15,%rdx)
	addq	$1, %rdx
	cmpq	$64, %rdx
	jne	.LBB0_9
# %bb.15:                               #   in Loop: Header=BB0_8 Depth=1
	cmpq	%rbx, %rsi
	sete	%r14b
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, %r13
	movq	%r15, %rsi
	vzeroupper
	callq	SHA1_Transform
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	_md_final_raw
	movq	-48(%rbp), %r8          # 8-byte Reload
	movzbl	(%r15), %eax
	#APP
	testb	%r14b, %r14b
	movl	%r12d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	movq	-112(%rbp), %rdx        # 8-byte Reload
	orb	%cl, (%rdx)
	movzbl	1(%r15), %eax
	#APP
	testb	%r14b, %r14b
	movl	%r12d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 1(%rdx)
	movzbl	2(%r15), %eax
	#APP
	testb	%r14b, %r14b
	movl	%r12d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 2(%rdx)
	movzbl	3(%r15), %eax
	#APP
	testb	%r14b, %r14b
	movl	%r12d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 3(%rdx)
	movzbl	4(%r15), %eax
	#APP
	testb	%r14b, %r14b
	movl	%r12d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 4(%rdx)
	movzbl	5(%r15), %eax
	#APP
	testb	%r14b, %r14b
	movl	%r12d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 5(%rdx)
	movzbl	6(%r15), %eax
	#APP
	testb	%r14b, %r14b
	movl	%r12d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 6(%rdx)
	movzbl	7(%r15), %eax
	#APP
	testb	%r14b, %r14b
	movl	%r12d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 7(%rdx)
	movzbl	8(%r15), %eax
	#APP
	testb	%r14b, %r14b
	movl	%r12d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 8(%rdx)
	movzbl	9(%r15), %eax
	#APP
	testb	%r14b, %r14b
	movl	%r12d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 9(%rdx)
	movzbl	10(%r15), %eax
	#APP
	testb	%r14b, %r14b
	movl	%r12d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 10(%rdx)
	movzbl	11(%r15), %eax
	#APP
	testb	%r14b, %r14b
	movl	%r12d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 11(%rdx)
	movzbl	12(%r15), %eax
	#APP
	testb	%r14b, %r14b
	movl	%r12d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 12(%rdx)
	movzbl	13(%r15), %eax
	#APP
	testb	%r14b, %r14b
	movl	%r12d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 13(%rdx)
	movzbl	14(%r15), %eax
	#APP
	testb	%r14b, %r14b
	movl	%r12d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 14(%rdx)
	movzbl	15(%r15), %eax
	#APP
	testb	%r14b, %r14b
	movl	%r12d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 15(%rdx)
	movzbl	16(%r15), %eax
	#APP
	testb	%r14b, %r14b
	movl	%r12d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 16(%rdx)
	movzbl	17(%r15), %eax
	#APP
	testb	%r14b, %r14b
	movl	%r12d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 17(%rdx)
	movzbl	18(%r15), %eax
	#APP
	testb	%r14b, %r14b
	movl	%r12d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 18(%rdx)
	movzbl	19(%r15), %eax
	#APP
	testb	%r14b, %r14b
	movl	%r12d, %ecx
	cmovnel	%eax, %ecx
	#NO_APP
	orb	%cl, 19(%rdx)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	addq	$64, %rsi
	addq	$1, %r13
	cmpq	-104(%rbp), %r13        # 8-byte Folded Reload
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
	vzeroupper
	retq
.Lfunc_end0:
	.size	__ssl3_cbc_digest_record, .Lfunc_end0-__ssl3_cbc_digest_record
	.cfi_endproc
                                        # -- End function
	.section	.text.__llvm_retpoline_r11,"axG",@progbits,__llvm_retpoline_r11,comdat
	.hidden	__llvm_retpoline_r11    # -- Begin function __llvm_retpoline_r11
	.weak	__llvm_retpoline_r11
	.p2align	4, 0x90
	.type	__llvm_retpoline_r11,@function
__llvm_retpoline_r11:                   # @__llvm_retpoline_r11
# %bb.0:                                # %entry
	callq	.LBB1_2
.LBB1_1:                                # Block address taken
                                        # %entry
                                        # =>This Inner Loop Header: Depth=1
	pause
	lfence
	jmp	.LBB1_1
	.p2align	4, 0x90
.LBB1_2:                                # Block address taken
                                        # %entry
	movq	%r11, (%rsp)
	retq
.Lfunc_end1:
	.size	__llvm_retpoline_r11, .Lfunc_end1-__llvm_retpoline_r11
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
