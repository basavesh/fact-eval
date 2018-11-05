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
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rsi, %r9
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	24(%rbp), %rdi
	movq	16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	leaq	(%rax,%r8), %r13
	addq	$51, %r13
	leaq	(%rdi,%r8), %rax
	addq	$-20, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	cmpq	$256, %r13              # imm = 0x100
	jb	.LBB0_1
# %bb.2:
	shrq	$6, %r13
	addq	$-2, %r13
	movq	%r13, %r8
	shlq	$6, %r8
	jmp	.LBB0_3
.LBB0_1:
	xorl	%r13d, %r13d
	xorl	%r8d, %r8d
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
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, -16(%rax)
	movq	-48(%rbp), %rdx         # 8-byte Reload
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
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%r9, -120(%rbp)         # 8-byte Spill
	je	.LBB0_7
# %bb.4:
	xorl	%eax, %eax
	cmpq	$65, %rdx
	jb	.LBB0_5
# %bb.12:
	leaq	-64(%rdx), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%rbx, %rsi
	movq	%rdx, %r14
	vzeroupper
	callq	SHA1_Transform
	leaq	64(%rbx), %rsi
	movq	%r15, %rdi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	callq	memcpy
	movl	$128, %edx
	subq	%r14, %rdx
	leaq	(%r15,%r14), %rdi
	addq	$-64, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	SHA1_Transform
	movq	%r14, %rdx
	movq	24(%rbp), %rdi
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	%r8, %rbx
	shrq	$6, %rbx
	leaq	-1(%rbx), %rax
	cmpq	$2, %rax
	jb	.LBB0_7
# %bb.13:                               # %.lr.ph16.preheader
	addq	$-2, %rbx
	movl	$128, %r15d
	subq	%rdx, %r15
	addq	-80(%rbp), %r15         # 8-byte Folded Reload
	movq	-64(%rbp), %r12         # 8-byte Reload
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
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	24(%rbp), %rdi
	ja	.LBB0_5
.LBB0_7:                                # %.lr.ph
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	andl	$63, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	leaq	(%rdi,%rdx), %r14
	addq	$-12, %r14
	addq	%rdx, -104(%rbp)        # 8-byte Folded Spill
	shrq	$6, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	shrq	$6, %r14
	xorl	%r12d, %r12d
	leaq	3(%r13), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rbx
	.p2align	4, 0x90
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_21 Depth 2
	movq	%rsp, %rax
	leaq	-128(%rax), %r15
	movq	%r15, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, -32(%rax)
	vmovups	%ymm0, -64(%rax)
	vmovups	%ymm0, -96(%rax)
	vmovups	%ymm0, -128(%rax)
	xorl	%r9d, %r9d
	cmpq	-48(%rbp), %r13         # 8-byte Folded Reload
	setne	%r9b
	movq	-96(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r8), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	xorl	%edx, %edx
	movq	%r8, -56(%rbp)          # 8-byte Spill
	.p2align	4, 0x90
.LBB0_9:                                #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%rdx), %rdi
	cmpq	%rbx, %rdi
	jae	.LBB0_15
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-136(%rbp), %rax        # 8-byte Reload
	leaq	(%rax,%rdx), %rdi
	movzbl	(%rdi), %r10d
	jmp	.LBB0_17
	.p2align	4, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_9 Depth=2
	cmpq	-104(%rbp), %rdi        # 8-byte Folded Reload
	jae	.LBB0_16
# %bb.24:                               #   in Loop: Header=BB0_9 Depth=2
	movq	%r8, %rdi
	subq	%rbx, %rdi
	addq	-80(%rbp), %rdi         # 8-byte Folded Reload
	movzbl	(%rdi), %r10d
	jmp	.LBB0_17
	.p2align	4, 0x90
.LBB0_16:                               #   in Loop: Header=BB0_9 Depth=2
	xorl	%r10d, %r10d
.LBB0_17:                               #   in Loop: Header=BB0_9 Depth=2
	cmpq	%r14, %r13
	sete	%r11b
	cmpq	-48(%rbp), %r13         # 8-byte Folded Reload
	sete	%al
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	cmpq	-88(%rbp), %rdx         # 8-byte Folded Reload
	setae	%bl
	seta	%dil
	#APP
	testb	%al, %al
	movl	%r12d, %ecx
	cmovnel	%ebx, %ecx
	#NO_APP
	andl	$1, %ecx
	#APP
	testb	%al, %al
	movl	%r12d, %ebx
	cmovnel	%edi, %ebx
	#NO_APP
	andl	$1, %ebx
	movzbl	%r10b, %eax
	movl	$128, %esi
	#APP
	testb	%cl, %cl
	movl	%eax, %edi
	cmovnel	%esi, %edi
	#NO_APP
	movzbl	%dil, %eax
	#APP
	testb	%bl, %bl
	cmovnel	%r12d, %eax
	#NO_APP
	#APP
	testb	%r11b, %r11b
	movl	%r12d, %ecx
	cmovnel	%r9d, %ecx
	#NO_APP
	andl	$1, %ecx
	movzbl	%al, %edi
	#APP
	testb	%cl, %cl
	cmovnel	%r12d, %edi
	#NO_APP
	cmpq	$55, %rdx
	jbe	.LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_9 Depth=2
	cmpq	%r14, %r13
	sete	%al
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movzbl	-56(%rcx,%rdx), %ecx
	movzbl	%dil, %ebx
	#APP
	testb	%al, %al
	movl	%ebx, %edi
	cmovnel	%ecx, %edi
	#NO_APP
.LBB0_19:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-72(%rbp), %rbx         # 8-byte Reload
	addq	$1, %r8
	movb	%dil, (%r15,%rdx)
	addq	$1, %rdx
	cmpq	$64, %rdx
	jne	.LBB0_9
# %bb.20:                               #   in Loop: Header=BB0_8 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	vzeroupper
	callq	SHA1_Transform
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	_md_final_raw
	movq	$-20, %rax
	movq	-120(%rbp), %r9         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_21:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r14, %r13
	sete	%cl
	movzbl	20(%r15,%rax), %edx
	#APP
	testb	%cl, %cl
	movl	%r12d, %esi
	cmovnel	%edx, %esi
	#NO_APP
	orb	%sil, 20(%r9,%rax)
	addq	$1, %rax
	jne	.LBB0_21
# %bb.22:                               #   in Loop: Header=BB0_8 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	addq	$64, %r8
	addq	$1, %r13
	cmpq	-112(%rbp), %r13        # 8-byte Folded Reload
	jb	.LBB0_8
# %bb.23:
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
