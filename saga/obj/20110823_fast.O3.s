	.text
	.file	"Module"
	.p2align	4, 0x90         # -- Begin function SHA1_Update_public
	.type	SHA1_Update_public,@function
SHA1_Update_public:                     # @SHA1_Update_public
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movq	%rdi, %r14
	movl	%r12d, %eax
	shlq	$3, %rax
	addq	20(%r14), %rax
	movq	%rsi, %r15
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	%ecx, 24(%r14)
	movl	%eax, 20(%r14)
	xorl	%ebx, %ebx
	testl	%r12d, %r12d
	je	.LBB0_6
# %bb.1:                                # %entry
	movl	92(%r14), %ebp
	testl	%ebp, %ebp
	je	.LBB0_6
# %bb.2:                                # %thenbranch
	movslq	%ebp, %rax
	movl	$64, %ebx
	subl	%ebp, %ebx
	cmpl	%r12d, %ebx
	cmoval	%r12d, %ebx
	leaq	(%r14,%rax), %rdi
	addq	$28, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	addl	%ebx, %ebp
	cmpl	$64, %ebp
	jne	.LBB0_4
# %bb.3:                                # %thenbranch44
	leaq	28(%r14), %rsi
	movl	$1, %edx
	movq	%r14, %rdi
	callq	sha1_block_data_order
	xorl	%eax, %eax
	jmp	.LBB0_5
.LBB0_4:                                # %elsebranch
	movl	92(%r14), %eax
	addl	%ebx, %eax
.LBB0_5:                                # %branchmerge
	movl	%eax, 92(%r14)
	subl	%ebx, %r12d
.LBB0_6:                                # %branchmerge60
	movl	%r12d, %edx
	shrl	$6, %edx
	je	.LBB0_8
# %bb.7:                                # %thenbranch66
	movslq	%ebx, %rbx
	leaq	(%r15,%rbx), %rsi
	movq	%r14, %rdi
	callq	sha1_block_data_order
	movl	%r12d, %eax
	andl	$-64, %eax
	addl	%eax, %ebx
	andl	$63, %r12d
.LBB0_8:                                # %branchmerge91
	testl	%r12d, %r12d
	je	.LBB0_10
# %bb.9:                                # %thenbranch95
	leaq	28(%r14), %rdi
	movslq	%ebx, %rax
	addq	%rax, %r15
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	memcpy
	addl	%r12d, 92(%r14)
.LBB0_10:                               # %branchmerge122
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	SHA1_Update_public, .Lfunc_end0-SHA1_Update_public
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function SHA1_Update_secret
	.type	SHA1_Update_secret,@function
SHA1_Update_secret:                     # @SHA1_Update_secret
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
	subq	$56, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %r15
	movl	%r8d, %eax
	shlq	$3, %rax
	addq	20(%r15), %rax
	movl	%ecx, %r14d
	movq	%rdx, %r10
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	shrq	$32, %rdx
	movl	%edx, 24(%r15)
	movl	%eax, 20(%r15)
	movl	92(%r15), %r9d
	testl	%r14d, %r14d
	je	.LBB1_5
# %bb.1:                                # %loop_body.lr.ph
	leaq	28(%r15), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	xorl	%r13d, %r13d
	leaq	16(%r15), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%r10, -80(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB1_2:                                # %loop_body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r9,%r13), %eax
	andl	$63, %eax
	cmpl	%r8d, %r13d
	setb	%bl
	movslq	%r13d, %rdx
	movzbl	(%r10,%rdx), %edx
	movzbl	28(%r15,%rax), %esi
	#APP
	testb	%bl, %bl
	movl	%esi, %edi
	cmovnel	%edx, %edi
	#NO_APP
	movb	%dil, 28(%r15,%rax)
	cmpl	$63, %eax
	jne	.LBB1_4
# %bb.3:                                # %thenbranch
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%rsp, %r12
	leaq	-32(%r12), %rbx
	movq	%rbx, %rsp
	movl	16(%r15), %eax
	movl	%eax, -16(%r12)
	vmovups	(%r15), %xmm0
	vmovups	%xmm0, -32(%r12)
	movl	$1, %edx
	movq	%r15, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	sha1_block_data_order
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	-44(%rbp), %r8d         # 4-byte Reload
	leaq	4(%r15), %rax
	leaq	8(%r15), %rsi
	leaq	-16(%r12), %rdx
	cmpl	%r8d, %r13d
	cmovbq	%r15, %rbx
	leaq	-28(%r12), %r9
	movl	(%rbx), %edi
	movl	%edi, (%r15)
	leaq	-24(%r12), %rdi
	cmovaeq	%r9, %rax
	movq	-88(%rbp), %r9          # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, 4(%r15)
	cmovaeq	%rdi, %rsi
	leaq	-20(%r12), %rax
	movl	(%rsi), %esi
	movl	%esi, 8(%r15)
	leaq	12(%r15), %rsi
	cmovaeq	%rax, %rsi
	movl	(%rsi), %eax
	movl	%eax, 12(%r15)
	cmovbq	-64(%rbp), %rdx         # 8-byte Folded Reload
	movl	(%rdx), %eax
	movl	%eax, 16(%r15)
.LBB1_4:                                # %branchmerge
                                        #   in Loop: Header=BB1_2 Depth=1
	addl	$1, %r13d
	cmpl	%r14d, %r13d
	jb	.LBB1_2
.LBB1_5:                                # %loop_end
	addl	%r9d, %r8d
	andl	$63, %r8d
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	%r8d, (%rax)
	addl	%r9d, %r14d
	andl	$63, %r14d
	movl	%r14d, 92(%r15)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	SHA1_Update_secret, .Lfunc_end1-SHA1_Update_secret
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _memzero
	.type	_memzero,@function
_memzero:                               # @_memzero
# %bb.0:                                # %entry
	movl	%esi, %eax
	xorl	%esi, %esi
	movq	%rax, %rdx
	jmp	memset                  # TAILCALL
.Lfunc_end2:
	.size	_memzero, .Lfunc_end2-_memzero
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function SHA1_Final_secret
	.type	SHA1_Final_secret,@function
SHA1_Final_secret:                      # @SHA1_Final_secret
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
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	leaq	20(%rbx), %r11
	leaq	24(%rbx), %r9
	movl	%r14d, %r15d
	xorl	%r8d, %r8d
	movl	$128, %r10d
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB3_1:                                # %loop_body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, %r15d
	sete	%al
	movzbl	28(%rbx,%rcx), %edx
	#APP
	testb	%al, %al
	movl	%edx, %edi
	cmovnel	%r10d, %edi
	#NO_APP
	movb	%dil, 28(%rbx,%rcx)
	cmpl	%r14d, %ecx
	seta	%al
	movzbl	%dil, %edx
	#APP
	testb	%al, %al
	movl	%edx, %edi
	cmovnel	%r8d, %edi
	#NO_APP
	movb	%dil, 28(%rbx,%rcx)
	movl	$504, %eax              # imm = 0x1F8
	movq	%r11, %rdx
	cmpl	$59, %ecx
	ja	.LBB3_3
# %bb.2:                                # %elsebranch
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$472, %eax              # imm = 0x1D8
	movq	%r9, %rdx
	cmpl	$56, %ecx
	jb	.LBB3_4
.LBB3_3:                                # %branchmerge84.sink.split
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpl	%r14d, %ecx
	seta	%r12b
	cmpl	$56, %r14d
	movq	%rbx, %r13
	setb	%bl
	addl	%esi, %eax
	andb	%r12b, %bl
	shrxl	%eax, (%rdx), %eax
	movzbl	%al, %eax
	movzbl	%dil, %edx
	#APP
	testb	%bl, %bl
	movl	%edx, %edi
	cmovnel	%eax, %edi
	#NO_APP
	movq	%r13, %rbx
	movb	%dil, 28(%rbx,%rcx)
.LBB3_4:                                # %branchmerge84
                                        #   in Loop: Header=BB3_1 Depth=1
	addq	$1, %rcx
	addl	$-8, %esi
	cmpl	$64, %ecx
	jb	.LBB3_1
# %bb.5:                                # %loop_end
	leaq	28(%rbx), %r15
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	sha1_block_data_order
	movl	$56, %esi
	movq	%r15, %rdi
	callq	_memzero
	movl	20(%rbx), %eax
	movl	24(%rbx), %ecx
	movl	%ecx, %edx
	shrl	$24, %edx
	movb	%dl, 84(%rbx)
	movl	%ecx, %edx
	shrl	$16, %edx
	movb	%dl, 85(%rbx)
	movb	%ch, 86(%rbx)  # NOREX
	movb	%cl, 87(%rbx)
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 88(%rbx)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 89(%rbx)
	movb	%ah, 90(%rbx)  # NOREX
	movb	%al, 91(%rbx)
	movq	%rsp, %r12
	leaq	-32(%r12), %r13
	movq	%r13, %rsp
	movl	16(%rbx), %eax
	movl	%eax, -16(%r12)
	vmovups	(%rbx), %xmm0
	vmovups	%xmm0, -32(%r12)
	leaq	16(%rbx), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	sha1_block_data_order
	leaq	4(%rbx), %rax
	leaq	8(%rbx), %rcx
	leaq	12(%rbx), %rdx
	cmpl	$56, %r14d
	cmovaeq	%rbx, %r13
	leaq	-28(%r12), %rsi
	movl	(%r13), %edi
	movl	%edi, (%rbx)
	leaq	-24(%r12), %rdi
	cmovaeq	%rax, %rsi
	movl	(%rsi), %eax
	movl	%eax, 4(%rbx)
	cmovaeq	%rcx, %rdi
	leaq	-16(%r12), %rax
	movl	(%rdi), %ecx
	movl	%ecx, 8(%rbx)
	leaq	-20(%r12), %rcx
	cmovaeq	%rdx, %rcx
	movl	(%rcx), %ecx
	movl	%ecx, 12(%rbx)
	cmovaeq	-48(%rbp), %rax         # 8-byte Folded Reload
	movl	(%rax), %eax
	movl	%eax, 16(%rbx)
	movl	$0, 92(%rbx)
	movl	$64, %esi
	movq	%r15, %rdi
	callq	_memzero
	movl	(%rbx), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movb	%cl, (%rdx)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 1(%rdx)
	movb	%ah, 2(%rdx)  # NOREX
	movb	%al, 3(%rdx)
	movl	4(%rbx), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 4(%rdx)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 5(%rdx)
	movb	%ah, 6(%rdx)  # NOREX
	movb	%al, 7(%rdx)
	movl	8(%rbx), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 8(%rdx)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 9(%rdx)
	movb	%ah, 10(%rdx)  # NOREX
	movb	%al, 11(%rdx)
	movl	12(%rbx), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 12(%rdx)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 13(%rdx)
	movb	%ah, 14(%rdx)  # NOREX
	movb	%al, 15(%rdx)
	movl	16(%rbx), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 16(%rdx)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 17(%rdx)
	movb	%ah, 18(%rdx)  # NOREX
	movb	%al, 19(%rdx)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	SHA1_Final_secret, .Lfunc_end3-SHA1_Final_secret
	.cfi_endproc
                                        # -- End function
	.globl	_aesni_cbc_hmac_sha1_cipher # -- Begin function _aesni_cbc_hmac_sha1_cipher
	.p2align	4, 0x90
	.type	_aesni_cbc_hmac_sha1_cipher,@function
_aesni_cbc_hmac_sha1_cipher:            # @_aesni_cbc_hmac_sha1_cipher
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
	subq	$128, %rsp
	movq	%rsp, %rbx
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%ecx, %r13d
	movq	%rdx, %r14
	movq	%rdi, %r10
	xorl	%r15d, %r15d
	testb	$15, %r9b
	je	.LBB4_1
.LBB4_17:                               # %thenbranch
	movl	%r15d, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_1:                                # %branchmerge
	movzwl	24(%rbp), %ecx
	cmpl	$770, %ecx              # imm = 0x302
	jb	.LBB4_4
# %bb.2:                                # %thenbranch16
	cmpl	$37, %r13d
	jb	.LBB4_17
# %bb.3:                                # %branchmerge25
	vmovups	(%r8), %xmm0
	vmovups	%xmm0, (%r10)
	leal	-16(%r13), %r12d
	movl	$16, %edx
	movl	$16, %ecx
	jmp	.LBB4_7
.LBB4_4:                                # %elsebranch36
	xorl	%edx, %edx
	cmpl	$21, %r13d
	jae	.LBB4_6
# %bb.5:
	xorl	%r15d, %r15d
	jmp	.LBB4_17
.LBB4_6:
	xorl	%ecx, %ecx
	movl	%r13d, %r12d
.LBB4_7:                                # %branchmerge46
	movq	%r12, 40(%rbx)          # 8-byte Spill
	addq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rcx, 72(%rbx)          # 8-byte Spill
	movl	%edx, %eax
	addq	%r14, %rax
	movl	%r12d, %edx
	xorl	%r9d, %r9d
	movq	%r8, %rdi
	movq	%rsi, %rcx
	movq	%rcx, 64(%rbx)          # 8-byte Spill
	movq	%rax, 88(%rbx)          # 8-byte Spill
	movq	%rax, %rsi
	movq	%r10, %r8
	callq	aesni_cbc_encrypt
	addl	$-1, %r13d
	movslq	%r13d, %rax
	movq	%r14, 56(%rbx)          # 8-byte Spill
	movzbl	(%r14,%rax), %edx
	leal	-21(%r12), %eax
	cmpl	$255, %eax
	movl	$255, %ecx
	cmovbl	%eax, %ecx
	xorl	%r15d, %r15d
	cmpl	%edx, %ecx
	setae	15(%rbx)                # 1-byte Folded Spill
	movl	%edx, 52(%rbx)          # 4-byte Spill
	cmovael	%edx, %ecx
	negl	%ecx
	leal	(%r12,%rcx), %eax
	addl	$-21, %eax
	movq	16(%rbp), %rcx
	movq	64(%rbx), %rdx          # 8-byte Reload
	movb	%ah, 542(%rdx,%rcx)  # NOREX
	leaq	544(%rdx), %rsi
	movq	%rax, 80(%rbx)          # 8-byte Spill
	movb	%al, 543(%rdx,%rcx)
	movq	%rdx, %r12
	movq	%rcx, %rdx
	movl	$0, 28(%rbx)
	movq	%rsp, %rax
	addq	$-32, %rax
	andq	$-32, %rax
	movq	%rax, 32(%rbx)          # 8-byte Spill
	movq	%rax, %rsp
	leaq	436(%r12), %rdi
	vmovups	244(%r12), %ymm0
	vmovups	276(%r12), %ymm1
	vmovups	308(%r12), %ymm2
	vmovups	%ymm2, 500(%r12)
	vmovups	%ymm1, 468(%r12)
	vmovups	%ymm0, 436(%r12)
	movq	%rdi, 16(%rbx)          # 8-byte Spill
                                        # kill: def %edx killed %edx killed %rdx
	vzeroupper
	callq	SHA1_Update_public
	movq	40(%rbx), %rax          # 8-byte Reload
	leal	-276(%rax), %r13d
	movl	%r13d, %r14d
	andl	$-64, %r14d
	subl	528(%r12), %r14d
	movq	40(%rbx), %r12          # 8-byte Reload
	cmpl	$339, %r12d             # imm = 0x153
	movl	$0, %eax
	cmovbel	%eax, %r14d
	testl	%r14d, %r14d
	je	.LBB4_9
# %bb.8:                                # %thenbranch141
	movq	16(%rbx), %rdi          # 8-byte Reload
	movq	88(%rbx), %rsi          # 8-byte Reload
	movl	%r14d, %edx
	callq	SHA1_Update_public
.LBB4_9:                                # %branchmerge155
	movb	15(%rbx), %al           # 1-byte Reload
	movb	%al, %r15b
	movl	%r12d, %ecx
	subl	%r14d, %ecx
	movq	72(%rbx), %rax          # 8-byte Reload
	leal	(%r14,%rax), %eax
	movslq	%eax, %rdx
	addq	56(%rbx), %rdx          # 8-byte Folded Reload
	movq	80(%rbx), %rax          # 8-byte Reload
                                        # kill: def %eax killed %eax killed %rax
	subl	%r14d, %eax
	leaq	28(%rbx), %rsi
	movq	16(%rbx), %r12          # 8-byte Reload
	movq	%r12, %rdi
	movl	%eax, %r8d
	callq	SHA1_Update_secret
	movl	28(%rbx), %edx
	movq	32(%rbx), %rdi          # 8-byte Reload
	movq	%r12, %rsi
	callq	SHA1_Final_secret
	movq	64(%rbx), %r14          # 8-byte Reload
	vmovups	340(%r14), %ymm0
	vmovups	372(%r14), %ymm1
	vmovups	404(%r14), %ymm2
	vmovups	%ymm2, 64(%r12)
	vmovups	%ymm1, 32(%r12)
	vmovups	%ymm0, (%r12)
	movl	$20, %edx
	movq	%r12, %rdi
	movq	32(%rbx), %rsi          # 8-byte Reload
	vzeroupper
	callq	SHA1_Update_public
	movslq	528(%r14), %rcx
	movb	$-128, 464(%r14,%rcx)
	leal	1(%rcx), %eax
	cmpl	$56, %eax
	jbe	.LBB4_10
# %bb.11:                               # %thenbranch.i
	movl	$63, %esi
	subl	%ecx, %esi
	cltq
	movq	16(%rbx), %r14          # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$28, %rdi
	leaq	28(%r14), %r12
	callq	_memzero
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	sha1_block_data_order
	xorl	%eax, %eax
	jmp	.LBB4_12
.LBB4_10:                               # %entry.branchmerge_crit_edge.i
	movq	16(%rbx), %rcx          # 8-byte Reload
	leaq	28(%rcx), %r12
.LBB4_12:                               # %SHA1_Final_public.exit
	movl	$56, %esi
	subl	%eax, %esi
	cltq
	movq	16(%rbx), %r14          # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$28, %rdi
	callq	_memzero
	movq	%r14, %rdi
	movl	20(%rdi), %eax
	movl	24(%rdi), %ecx
	movl	%ecx, %edx
	shrl	$24, %edx
	movb	%dl, 84(%rdi)
	movl	%ecx, %edx
	shrl	$16, %edx
	movb	%dl, 85(%rdi)
	movb	%ch, 86(%rdi)  # NOREX
	movb	%cl, 87(%rdi)
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 88(%rdi)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 89(%rdi)
	movb	%ah, 90(%rdi)  # NOREX
	movb	%al, 91(%rdi)
	movl	$1, %edx
	movq	%r12, %rsi
	callq	sha1_block_data_order
	movl	$0, 92(%r14)
	movl	$64, %esi
	movq	%r12, %rdi
	callq	_memzero
	movl	(%r14), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movq	32(%rbx), %rdi          # 8-byte Reload
	movb	%cl, (%rdi)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 1(%rdi)
	movb	%ah, 2(%rdi)  # NOREX
	movb	%al, 3(%rdi)
	movl	4(%r14), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 4(%rdi)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 5(%rdi)
	movb	%ah, 6(%rdi)  # NOREX
	movb	%al, 7(%rdi)
	movl	8(%r14), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 8(%rdi)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 9(%rdi)
	movb	%ah, 10(%rdi)  # NOREX
	movb	%al, 11(%rdi)
	movl	12(%r14), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 12(%rdi)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 13(%rdi)
	movb	%ah, 14(%rdi)  # NOREX
	movb	%al, 15(%rdi)
	movl	16(%r14), %ecx
	movl	%ecx, %eax
	shrl	$24, %eax
	movb	%al, 16(%rdi)
	movl	%ecx, %eax
	shrl	$16, %eax
	movb	%al, 17(%rdi)
	movb	%ch, 18(%rdi)  # NOREX
	xorl	%edx, %edx
	movq	40(%rbx), %r12          # 8-byte Reload
	cmpl	$276, %r12d             # imm = 0x114
	cmovbl	%edx, %r13d
	movq	80(%rbx), %rax          # 8-byte Reload
	movq	72(%rbx), %rsi          # 8-byte Reload
	leal	(%rax,%rsi), %r9d
	addl	$20, %r9d
	cmpl	%r12d, %r9d
	cmoval	%edx, %r15d
	movb	%cl, 19(%rdi)
	leal	(%rsi,%r13), %ecx
	cmpl	%r12d, %ecx
	jae	.LBB4_17
# %bb.13:                               # %loop_body.preheader
	addl	%esi, %eax
	addl	$20, %r13d
	movl	52(%rbx), %esi          # 4-byte Reload
	notl	%esi
	movl	$20, %edx
	subl	%r12d, %edx
	cmpl	%edx, %esi
	cmoval	%esi, %edx
	cmpl	$-256, %edx
	movl	$-256, %esi
	cmoval	%edx, %esi
	addl	%r12d, %esi
	subl	%esi, %r13d
	movq	56(%rbx), %r10          # 8-byte Reload
	.p2align	4, 0x90
.LBB4_14:                               # %loop_body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %r11
	cmpl	%eax, %ecx
	setb	%r8b
	setae	%al
	xorl	%esi, %esi
	cmpl	%r9d, %ecx
	setb	%sil
	xorl	%edx, %edx
	#APP
	testb	%al, %al
	movl	%edx, %edi
	cmovnel	%esi, %edi
	#NO_APP
	andl	$1, %edi
	#APP
	testb	%r8b, %r8b
	movl	%edi, %r14d
	cmovnel	%edx, %r14d
	#NO_APP
	movslq	%ecx, %rax
	movzbl	(%r10,%rax), %eax
	movslq	%r13d, %rdi
	movq	32(%rbx), %rsi          # 8-byte Reload
	cmpb	(%rsi,%rdi), %al
	jne	.LBB4_16
# %bb.15:                               # %loop_body
                                        #   in Loop: Header=BB4_14 Depth=1
	movl	%r15d, %edx
.LBB4_16:                               # %loop_body
                                        #   in Loop: Header=BB4_14 Depth=1
	testb	$1, %r14b
	cmovnel	%edx, %r15d
	addl	$1, %ecx
	addl	$1, %r13d
	cmpl	%r12d, %ecx
	movq	%r11, %rax
	jb	.LBB4_14
	jmp	.LBB4_17
.Lfunc_end4:
	.size	_aesni_cbc_hmac_sha1_cipher, .Lfunc_end4-_aesni_cbc_hmac_sha1_cipher
	.cfi_endproc
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
