	.text
	.file	"Module"
	.p2align	4, 0x90         # -- Begin function __memzero[8]/secret
	.type	"__memzero[8]/secret",@function
"__memzero[8]/secret":                  # @"__memzero[8]/secret"
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movl	%eax, %esi
	movq	16(%rsp), %rdx          # 8-byte Reload
	callq	memset
	movq	%rax, 8(%rsp)           # 8-byte Spill
	addq	$24, %rsp
	retq
.Lfunc_end0:
	.size	"__memzero[8]/secret", .Lfunc_end0-"__memzero[8]/secret"
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function SHA1_MAKE_STRING
	.type	SHA1_MAKE_STRING,@function
SHA1_MAKE_STRING:                       # @SHA1_MAKE_STRING
	.cfi_startproc
# %bb.0:                                # %entry
	xorl	%eax, %eax
	movb	$1, -2(%rsp)
	movq	%rdi, -16(%rsp)         # 8-byte Spill
	movq	%rsi, -24(%rsp)         # 8-byte Spill
	movl	%eax, -28(%rsp)         # 4-byte Spill
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rsp), %eax         # 4-byte Reload
	cmpl	$5, %eax
	movl	%eax, -32(%rsp)         # 4-byte Spill
	jae	.LBB1_4
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-32(%rsp), %eax         # 4-byte Reload
	shll	$2, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movl	-32(%rsp), %eax         # 4-byte Reload
	movl	%eax, %edx
	movl	%edx, %esi
	movq	-16(%rsp), %rdi         # 8-byte Reload
	movl	(%rdi,%rsi,4), %edx
	movb	$1, -1(%rsp)
	movl	%edx, %r8d
	shrl	$24, %r8d
	movb	%r8b, %r9b
	movq	-24(%rsp), %rsi         # 8-byte Reload
	movb	%r9b, (%rsi,%rcx)
	movl	%edx, %r8d
	shrl	$16, %r8d
	movb	%r8b, %r9b
	movb	%r9b, 1(%rsi,%rcx)
	movl	%edx, %r8d
	shrl	$8, %r8d
	movb	%r8b, %r9b
	movb	%r9b, 2(%rsi,%rcx)
	movb	%dl, %r9b
	movb	%r9b, 3(%rsi,%rcx)
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-32(%rsp), %eax         # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -28(%rsp)         # 4-byte Spill
	jmp	.LBB1_1
.LBB1_4:
	retq
.Lfunc_end1:
	.size	SHA1_MAKE_STRING, .Lfunc_end1-SHA1_MAKE_STRING
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function SHA1_Final_public
	.type	SHA1_Final_public,@function
SHA1_Final_public:                      # @SHA1_Final_public
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movb	$1, 51(%rsp)
	movl	92(%rsi), %eax
	movl	%eax, 44(%rsp)
	movl	44(%rsp), %eax
	movl	%eax, %ecx
	movb	$-128, 28(%rsi,%rcx)
	movl	44(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 44(%rsp)
	movl	44(%rsp), %eax
	movl	%eax, %ecx
	cmpq	$56, %rcx
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	jbe	.LBB2_2
# %bb.1:
	movl	$64, %eax
	movl	%eax, %ecx
	movl	44(%rsp), %eax
	movl	%eax, %edx
	movl	44(%rsp), %eax
	movl	%eax, %esi
	subq	%rsi, %rcx
	movq	24(%rsp), %rsi          # 8-byte Reload
	addq	$28, %rsi
	addq	%rdx, %rsi
	xorl	%eax, %eax
	movq	%rsi, %rdi
	movl	%eax, %esi
	movq	%rcx, %rdx
	callq	memset
	movq	24(%rsp), %rcx          # 8-byte Reload
	addq	$28, %rcx
	movl	$1, %edx
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%rcx, %rsi
	movq	%rax, 16(%rsp)          # 8-byte Spill
	callq	sha1_block_data_order
	movl	$0, 44(%rsp)
	jmp	.LBB2_3
.LBB2_2:
	jmp	.LBB2_3
.LBB2_3:
	movl	$56, %eax
	movl	%eax, %ecx
	movl	44(%rsp), %eax
	movl	%eax, %edx
	movl	44(%rsp), %eax
	movl	%eax, %esi
	subq	%rsi, %rcx
	movq	24(%rsp), %rsi          # 8-byte Reload
	addq	$28, %rsi
	addq	%rdx, %rsi
	xorl	%eax, %eax
	movq	%rsi, %rdi
	movl	%eax, %esi
	movq	%rcx, %rdx
	callq	memset
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	24(%rcx), %esi
	movb	$1, 55(%rsp)
	movl	%esi, %r8d
	shrl	$24, %r8d
	movb	%r8b, %r9b
	movb	%r9b, 84(%rcx)
	movl	%esi, %r8d
	shrl	$16, %r8d
	movb	%r8b, %r9b
	movb	%r9b, 85(%rcx)
	movl	%esi, %r8d
	shrl	$8, %r8d
	movb	%r8b, %r9b
	movb	%r9b, 86(%rcx)
	movb	%sil, %r9b
	movb	%r9b, 87(%rcx)
	movl	20(%rcx), %esi
	movb	$1, 54(%rsp)
	movl	%esi, %r8d
	shrl	$24, %r8d
	movb	%r8b, %r9b
	movb	%r9b, 88(%rcx)
	movl	%esi, %r8d
	shrl	$16, %r8d
	movb	%r8b, %r9b
	movb	%r9b, 89(%rcx)
	movl	%esi, %r8d
	shrl	$8, %r8d
	movb	%r8b, %r9b
	movb	%r9b, 90(%rcx)
	movb	%sil, %r9b
	movb	%r9b, 91(%rcx)
	addq	$28, %rcx
	movl	$1, %edx
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%rcx, %rsi
	movq	%rax, 8(%rsp)           # 8-byte Spill
	callq	sha1_block_data_order
	xorl	%edx, %edx
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	$0, 92(%rax)
	addq	$28, %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 32(%rax)
	vmovups	%ymm0, (%rax)
	movb	$1, 52(%rsp)
	movl	%edx, 4(%rsp)           # 4-byte Spill
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	movl	4(%rsp), %eax           # 4-byte Reload
	cmpl	$5, %eax
	movl	%eax, (%rsp)            # 4-byte Spill
	jae	.LBB2_6
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	movl	(%rsp), %eax            # 4-byte Reload
	shll	$2, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movl	(%rsp), %eax            # 4-byte Reload
	movl	%eax, %edx
	movl	%edx, %esi
	movq	24(%rsp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %edx
	movb	$1, 53(%rsp)
	movl	%edx, %r8d
	shrl	$24, %r8d
	movb	%r8b, %r9b
	movq	32(%rsp), %rsi          # 8-byte Reload
	movb	%r9b, (%rsi,%rcx)
	movl	%edx, %r8d
	shrl	$16, %r8d
	movb	%r8b, %r9b
	movb	%r9b, 1(%rsi,%rcx)
	movl	%edx, %r8d
	shrl	$8, %r8d
	movb	%r8b, %r9b
	movb	%r9b, 2(%rsi,%rcx)
	movb	%dl, %r9b
	movb	%r9b, 3(%rsi,%rcx)
	addl	$1, %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	jmp	.LBB2_4
.LBB2_6:                                # %SHA1_MAKE_STRING.exit
	addq	$56, %rsp
	vzeroupper
	retq
.Lfunc_end2:
	.size	SHA1_Final_public, .Lfunc_end2-SHA1_Final_public
	.cfi_endproc
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
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	movl	%eax, %ecx
	movb	$1, -13(%rbp)
	movl	%edx, %eax
	movl	%eax, %r8d
	cmpq	$56, %r8
	setb	%r9b
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%edx, -36(%rbp)         # 4-byte Spill
	movb	%r9b, -37(%rbp)         # 1-byte Spill
	movq	%rcx, -48(%rbp)         # 8-byte Spill
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpq	$64, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jae	.LBB3_4
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	%rdx, %rsi
	sete	%dil
	movb	%dil, %r8b
	andb	$1, %r8b
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movzbl	28(%rdx,%rsi), %ecx
	movl	$128, %r9d
	#APP
	testb	%r8b, %r8b
	cmovnel	%r9d, %ecx
	#NO_APP
	movb	%cl, %r8b
	movb	%r8b, 28(%rdx,%rsi)
	xorb	$-1, %dil
	movl	%eax, %ecx
	movl	%ecx, %r10d
	cmpq	%r10, %rsi
	seta	%r8b
	movb	%r8b, %r11b
	andb	$1, %r11b
	andb	%dil, %r11b
	movzbl	28(%rdx,%rsi), %ecx
	xorl	%r9d, %r9d
	#APP
	testb	%r11b, %r11b
	cmovnel	%r9d, %ecx
	#NO_APP
	movb	%cl, %r11b
	movb	%r11b, 28(%rdx,%rsi)
	cmpq	$60, %rsi
	movb	%dil, -57(%rbp)         # 1-byte Spill
	movb	%r8b, -58(%rbp)         # 1-byte Spill
	jae	.LBB3_5
	jmp	.LBB3_6
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB3_1
.LBB3_4:
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$28, %rax
	movl	$1, %edx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	sha1_block_data_order
	vxorps	%xmm0, %xmm0, %xmm0
	movq	-24(%rbp), %rax         # 8-byte Reload
	vmovups	%ymm0, 52(%rax)
	vmovups	%ymm0, 28(%rax)
	movl	24(%rax), %edx
	movb	$1, -10(%rbp)
	movl	%edx, %ecx
	shrl	$24, %ecx
	movb	%cl, %r8b
	movb	%r8b, 84(%rax)
	movl	%edx, %ecx
	shrl	$16, %ecx
	movb	%cl, %r8b
	movb	%r8b, 85(%rax)
	movb	%dh, %bl  # NOREX
	movb	%bl, 86(%rax)  # NOREX
	movb	%dl, %r8b
	movb	%r8b, 87(%rax)
	movl	20(%rax), %ecx
	movb	$1, -9(%rbp)
	movl	%ecx, %edx
	shrl	$24, %edx
	movb	%dl, %r8b
	movb	%r8b, 88(%rax)
	movl	%ecx, %edx
	shrl	$16, %edx
	movb	%dl, %r8b
	movb	%r8b, 89(%rax)
	movb	%ch, %bl  # NOREX
	movb	%bl, 90(%rax)  # NOREX
	movb	%cl, %r8b
	movb	%r8b, 91(%rax)
	movq	%rsp, %rsi
	addq	$-32, %rsi
	movq	%rsi, %rsp
	movq	(%rax), %rdi
	movq	%rdi, (%rsi)
	movq	8(%rax), %rdi
	movq	%rdi, 8(%rsi)
	movl	16(%rax), %ecx
	movl	%ecx, 16(%rsi)
	addq	$28, %rax
	movl	$1, %edx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	vzeroupper
	callq	sha1_block_data_order
	xorl	%ecx, %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	jmp	.LBB3_11
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
	movl	$63, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx         # 8-byte Reload
	subq	%rdx, %rcx
	shlq	$3, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movl	20(%rsi), %eax
	movl	%ecx, %edi
	movl	%edi, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	movb	%al, %cl
	movb	-37(%rbp), %r8b         # 1-byte Reload
	andb	$1, %r8b
	movb	-58(%rbp), %r9b         # 1-byte Reload
	andb	%r9b, %r8b
	movb	-57(%rbp), %r10b        # 1-byte Reload
	andb	%r10b, %r8b
	movb	28(%rsi,%rdx), %r11b
	movzbl	%cl, %eax
	movzbl	%r11b, %edi
	#APP
	testb	%r8b, %r8b
	cmovnel	%eax, %edi
	#NO_APP
	movb	%dil, %cl
	movb	%cl, 28(%rsi,%rdx)
	jmp	.LBB3_7
.LBB3_6:                                #   in Loop: Header=BB3_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpq	$56, %rax
	jae	.LBB3_8
	jmp	.LBB3_9
.LBB3_7:                                #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_3
.LBB3_8:                                #   in Loop: Header=BB3_1 Depth=1
	movl	$59, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx         # 8-byte Reload
	subq	%rdx, %rcx
	shlq	$3, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movl	24(%rsi), %eax
	movl	%ecx, %edi
	movl	%edi, %ecx
                                        # kill: def %cl killed %ecx
	shrl	%cl, %eax
	movb	%al, %cl
	movb	-37(%rbp), %r8b         # 1-byte Reload
	andb	$1, %r8b
	movb	-58(%rbp), %r9b         # 1-byte Reload
	andb	%r9b, %r8b
	movb	-57(%rbp), %r10b        # 1-byte Reload
	andb	%r10b, %r8b
	movb	28(%rsi,%rdx), %r11b
	movzbl	%cl, %eax
	movzbl	%r11b, %edi
	#APP
	testb	%r8b, %r8b
	cmovnel	%eax, %edi
	#NO_APP
	movb	%dil, %cl
	movb	%cl, 28(%rsi,%rdx)
	jmp	.LBB3_10
.LBB3_9:                                #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_10
.LBB3_10:                               #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_7
.LBB3_11:                               # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	cmpl	$5, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jae	.LBB3_14
# %bb.12:                               #   in Loop: Header=BB3_11 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	movl	%eax, %ecx
	movl	%ecx, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	(%rdi,%rsi,4), %ecx
	movb	-37(%rbp), %r8b         # 1-byte Reload
	andb	$1, %r8b
	testb	$1, %r8b
	movq	-24(%rbp), %rsi         # 8-byte Reload
	cmovel	(%rsi,%rdx,4), %ecx
	movl	%ecx, (%rsi,%rdx,4)
# %bb.13:                               #   in Loop: Header=BB3_11 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB3_11
.LBB3_14:
	xorl	%eax, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movl	$0, 92(%rcx)
	addq	$28, %rcx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 32(%rcx)
	vmovups	%ymm0, (%rcx)
	movb	$1, -12(%rbp)
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB3_15:                               # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	cmpl	$5, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jae	.LBB3_17
# %bb.16:                               #   in Loop: Header=BB3_15 Depth=1
	movl	-88(%rbp), %eax         # 4-byte Reload
	shll	$2, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, %edx
	movl	%edx, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	(%rdi,%rsi,4), %edx
	movb	$1, -11(%rbp)
	movl	%edx, %r8d
	shrl	$24, %r8d
	movb	%r8b, %r9b
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movb	%r9b, (%rsi,%rcx)
	movl	%edx, %r8d
	shrl	$16, %r8d
	movb	%r8b, %r9b
	movb	%r9b, 1(%rsi,%rcx)
	movl	%edx, %r8d
	shrl	$8, %r8d
	movb	%r8b, %r9b
	movb	%r9b, 2(%rsi,%rcx)
	movb	%dl, %r9b
	movb	%r9b, 3(%rsi,%rcx)
	addl	$1, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB3_15
.LBB3_17:                               # %SHA1_MAKE_STRING.exit
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	vzeroupper
	retq
.Lfunc_end3:
	.size	SHA1_Final_secret, .Lfunc_end3-SHA1_Final_secret
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fact.cmov.asm.i8
	.type	fact.cmov.asm.i8,@function
fact.cmov.asm.i8:                       # @fact.cmov.asm.i8
	.cfi_startproc
# %bb.0:                                # %entry
	movb	%dl, %al
	movb	%sil, %cl
	movb	%dil, %r8b
	movzbl	%cl, %edx
	movzbl	%al, %esi
	#APP
	testb	%r8b, %r8b
	cmovnel	%edx, %esi
	#NO_APP
	movb	%sil, %al
	retq
.Lfunc_end4:
	.size	fact.cmov.asm.i8, .Lfunc_end4-fact.cmov.asm.i8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fact.memcpy.i32
	.type	fact.memcpy.i32,@function
fact.memcpy.i32:                        # @fact.memcpy.i32
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	shlq	$2, %rdx
	callq	memcpy
	movq	%rax, (%rsp)            # 8-byte Spill
	popq	%rax
	retq
.Lfunc_end5:
	.size	fact.memcpy.i32, .Lfunc_end5-fact.memcpy.i32
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fact.cmov.sel.i32
	.type	fact.cmov.sel.i32,@function
fact.cmov.sel.i32:                      # @fact.cmov.sel.i32
	.cfi_startproc
# %bb.0:                                # %entry
	movb	%dil, %al
	testb	$1, %al
	cmovnel	%esi, %edx
	movl	%edx, %eax
	retq
.Lfunc_end6:
	.size	fact.cmov.sel.i32, .Lfunc_end6-fact.cmov.sel.i32
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function SHA1_Update_Final_secret
	.type	SHA1_Update_Final_secret,@function
SHA1_Update_Final_secret:               # @SHA1_Update_Final_secret
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	xorl	%eax, %eax
	movl	%eax, %r9d
	movl	$1, %eax
	movl	%eax, %r10d
	movb	$1, -25(%rbp)
	movl	%ecx, %eax
	movl	%eax, %r11d
	shlq	$3, %r11
	movl	24(%rdi), %eax
	movl	%eax, %ebx
	shlq	$32, %rbx
	movl	20(%rdi), %eax
	movl	%eax, %r14d
	orq	%r14, %rbx
	addq	%r11, %rbx
	movq	%rbx, %r11
	shrq	$32, %r11
	movl	%r11d, %eax
	movl	%eax, 24(%rdi)
	movl	%ebx, %eax
	movl	%eax, 20(%rdi)
	movq	%rdx, %r11
	addq	$1, %r11
	addq	$8, %r11
	movq	%r11, %r14
	shrq	$6, %r14
	andq	$63, %r11
	cmpq	$0, %r11
	movq	%r9, %r11
	cmovaq	%r10, %r11
	addq	%r11, %r14
	shlq	$6, %r14
	movl	%ecx, %eax
	andl	$63, %eax
	movl	%eax, %eax
	movl	%eax, %r10d
	cmpq	$56, %r10
	setb	%r15b
	movb	$0, -26(%rbp)
	movl	%ecx, -32(%rbp)         # 4-byte Spill
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movb	%r15b, -65(%rbp)        # 1-byte Spill
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	movq	%r14, -88(%rbp)         # 8-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
.LBB7_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_14 Depth 2
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jae	.LBB7_4
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	andq	$63, %rax
	movl	-32(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, %edx
	movl	%edx, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	cmpq	%rsi, %rdi
	setb	%r8b
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rsi, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movb	%r8b, -113(%rbp)        # 1-byte Spill
	jb	.LBB7_5
	jmp	.LBB7_6
.LBB7_3:                                #   in Loop: Header=BB7_1 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB7_1
.LBB7_4:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$0, 92(%rax)
	addq	$28, %rax
	movl	$64, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	"__memzero[8]/secret"
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	SHA1_MAKE_STRING
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_5:                                #   in Loop: Header=BB7_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movb	(%rax,%rcx), %dl
	movb	-113(%rbp), %sil        # 1-byte Reload
	andb	$1, %sil
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-112(%rbp), %r8         # 8-byte Reload
	movb	28(%rdi,%r8), %r9b
	movzbl	%sil, %edi
	movzbl	%dl, %esi
	movzbl	%r9b, %edx
	callq	fact.cmov.asm.i8
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-112(%rbp), %r8         # 8-byte Reload
	movb	%al, 28(%rcx,%r8)
	jmp	.LBB7_7
.LBB7_6:                                #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_7
.LBB7_7:                                #   in Loop: Header=BB7_1 Depth=1
	movb	-113(%rbp), %al         # 1-byte Reload
	xorb	$-1, %al
	movl	-32(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, %edx
	movl	%edx, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	cmpq	%rsi, %rdi
	sete	%r8b
	movb	%r8b, %r9b
	andb	$1, %r9b
	andb	%al, %r9b
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movb	28(%rsi,%r10), %r11b
	movzbl	%r9b, %edi
	movzbl	%r11b, %edx
	movl	$128, %esi
	movb	%al, -114(%rbp)         # 1-byte Spill
	movb	%r8b, -115(%rbp)        # 1-byte Spill
	callq	fact.cmov.asm.i8
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movb	%al, 28(%r10,%rbx)
	movb	-115(%rbp), %al         # 1-byte Reload
	xorb	$-1, %al
	movl	-32(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, %edx
	movl	%edx, %r14d
	addq	$64, %r14
	movq	-104(%rbp), %r15        # 8-byte Reload
	cmpq	%r14, %r15
	seta	%r8b
	movb	-65(%rbp), %r9b         # 1-byte Reload
	movzbl	%r9b, %edi
	movzbl	%r8b, %edx
	movl	$1, %esi
	movb	%al, -116(%rbp)         # 1-byte Spill
	callq	fact.select.asm.i1
	movq	-112(%rbp), %r10        # 8-byte Reload
	cmpq	$56, %r10
	movb	%al, -117(%rbp)         # 1-byte Spill
	jb	.LBB7_9
# %bb.8:                                #   in Loop: Header=BB7_1 Depth=1
	movl	$63, %eax
	movl	%eax, %ecx
	movq	-112(%rbp), %rdx        # 8-byte Reload
	subq	%rdx, %rcx
	shlq	$3, %rcx
                                        # kill: def %cl killed %rcx
	movq	-80(%rbp), %rsi         # 8-byte Reload
	shrq	%cl, %rsi
	movb	%sil, %cl
	movb	-117(%rbp), %dil        # 1-byte Reload
	andb	$1, %dil
	movb	-116(%rbp), %r8b        # 1-byte Reload
	andb	%r8b, %dil
	movb	-114(%rbp), %r9b        # 1-byte Reload
	andb	%r9b, %dil
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movb	28(%rsi,%rdx), %r10b
	movzbl	%dil, %edi
	movzbl	%cl, %esi
	movzbl	%r10b, %edx
	callq	fact.cmov.asm.i8
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movb	%al, 28(%r11,%rbx)
	jmp	.LBB7_10
.LBB7_9:                                #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_10
.LBB7_10:                               #   in Loop: Header=BB7_1 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	cmpq	$63, %rax
	jne	.LBB7_12
# %bb.11:                               #   in Loop: Header=BB7_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rsp, %rcx
	addq	$-32, %rcx
	movq	%rcx, %rsp
	movl	$5, %edx
                                        # kill: def %rdx killed %edx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	fact.memcpy.i32
	movq	-56(%rbp), %rax         # 8-byte Reload
	addq	$28, %rax
	movl	$1, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	sha1_block_data_order
	xorl	%edx, %edx
	movb	-26(%rbp), %r8b
	movb	%r8b, -129(%rbp)        # 1-byte Spill
	movl	%edx, -136(%rbp)        # 4-byte Spill
	jmp	.LBB7_14
.LBB7_12:                               #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_13
.LBB7_13:                               #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_3
.LBB7_14:                               #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-136(%rbp), %eax        # 4-byte Reload
	cmpl	$5, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jae	.LBB7_17
# %bb.15:                               #   in Loop: Header=BB7_14 Depth=2
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	movl	%eax, %ecx
	movl	%ecx, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	(%rdi,%rsi,4), %esi
	movb	-129(%rbp), %r8b        # 1-byte Reload
	andb	$1, %r8b
	movq	-56(%rbp), %r9          # 8-byte Reload
	movl	(%r9,%rdx,4), %ecx
	movzbl	%r8b, %edi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	callq	fact.cmov.sel.i32
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	-152(%rbp), %r10        # 8-byte Reload
	movl	%eax, (%r9,%r10,4)
# %bb.16:                               #   in Loop: Header=BB7_14 Depth=2
	movl	-140(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB7_14
.LBB7_17:                               #   in Loop: Header=BB7_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	movb	-65(%rbp), %sil         # 1-byte Reload
	movzbl	%sil, %edi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$64, %ecx
	movl	%ecx, %r8d
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	callq	fact.select.sel.i64
	movq	-160(%rbp), %rdx        # 8-byte Reload
	addq	%rax, %rdx
	movq	-104(%rbp), %rax        # 8-byte Reload
	cmpq	%rdx, %rax
	seta	%r9b
	andb	$1, %r9b
	movb	-26(%rbp), %r10b
	movzbl	%r9b, %edi
	movzbl	%r10b, %edx
	movl	$1, %esi
	callq	fact.cmov.asm.i1
	andb	$1, %al
	movb	%al, -26(%rbp)
	jmp	.LBB7_13
.Lfunc_end7:
	.size	SHA1_Update_Final_secret, .Lfunc_end7-SHA1_Update_Final_secret
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fact.select.asm.i1
	.type	fact.select.asm.i1,@function
fact.select.asm.i1:                     # @fact.select.asm.i1
	.cfi_startproc
# %bb.0:                                # %entry
	movb	%dl, %al
	movb	%sil, %cl
	movb	%dil, %r8b
	andb	$1, %cl
	movzbl	%cl, %edx
	andb	$1, %al
	movzbl	%al, %esi
	#APP
	testb	%r8b, %r8b
	movl	%esi, %edi
	cmovnel	%edx, %edi
	#NO_APP
	movb	%dil, %al
	retq
.Lfunc_end8:
	.size	fact.select.asm.i1, .Lfunc_end8-fact.select.asm.i1
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fact.select.sel.i64
	.type	fact.select.sel.i64,@function
fact.select.sel.i64:                    # @fact.select.sel.i64
	.cfi_startproc
# %bb.0:                                # %entry
	movb	%dil, %al
	testb	$1, %al
	cmovneq	%rsi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end9:
	.size	fact.select.sel.i64, .Lfunc_end9-fact.select.sel.i64
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fact.cmov.asm.i1
	.type	fact.cmov.asm.i1,@function
fact.cmov.asm.i1:                       # @fact.cmov.asm.i1
	.cfi_startproc
# %bb.0:                                # %entry
	movb	%dl, %al
	movb	%sil, %cl
	movb	%dil, %r8b
	andb	$1, %cl
	movzbl	%cl, %edx
	andb	$1, %al
	movzbl	%al, %esi
	#APP
	testb	%r8b, %r8b
	cmovnel	%edx, %esi
	#NO_APP
	movb	%sil, %al
	retq
.Lfunc_end10:
	.size	fact.cmov.asm.i1, .Lfunc_end10-fact.cmov.asm.i1
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function SHA1_Update_public
	.type	SHA1_Update_public,@function
SHA1_Update_public:                     # @SHA1_Update_public
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movb	$1, 87(%rsp)
	movq	%rdx, %rax
	shlq	$3, %rax
	movl	24(%rdi), %ecx
	movl	%ecx, %r8d
	shlq	$32, %r8
	movl	20(%rdi), %ecx
	movl	%ecx, %r9d
	orq	%r9, %r8
	addq	%rax, %r8
	movq	%r8, %rax
	shrq	$32, %rax
	movl	%eax, %ecx
	movl	%ecx, 24(%rdi)
	movl	%r8d, %ecx
	movl	%ecx, 20(%rdi)
	movq	$0, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movl	92(%rdi), %ecx
	cmpl	$0, %ecx
	seta	%r10b
	cmpq	$0, 64(%rsp)
	seta	%r11b
	andb	%r11b, %r10b
	testb	$1, %r10b
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	jne	.LBB11_1
	jmp	.LBB11_2
.LBB11_1:
	movl	$64, %eax
	movl	%eax, %ecx
	movl	36(%rsp), %edx          # 4-byte Reload
	subl	%edx, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	subl	%edx, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	movq	40(%rsp), %r8           # 8-byte Reload
	cmpq	%rsi, %r8
	cmovbq	%r8, %rdi
	movl	%edx, %eax
	movl	%eax, %esi
	movq	48(%rsp), %r9           # 8-byte Reload
	addq	$28, %r9
	addq	%rsi, %r9
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	%r9, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	callq	memcpy
	movl	36(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, %r10d
	movl	%r10d, %edx
	movq	24(%rsp), %rsi          # 8-byte Reload
	addq	%rdx, %rsi
	cmpq	$64, %rsi
	movq	%rax, 16(%rsp)          # 8-byte Spill
	je	.LBB11_4
	jmp	.LBB11_5
.LBB11_2:
	jmp	.LBB11_3
.LBB11_3:
	movq	64(%rsp), %rax
	shrq	$6, %rax
	cmpq	$0, %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	ja	.LBB11_7
	jmp	.LBB11_8
.LBB11_4:
	movq	48(%rsp), %rax          # 8-byte Reload
	addq	$28, %rax
	movl	$1, %edx
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	sha1_block_data_order
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	$0, 92(%rax)
	jmp	.LBB11_6
.LBB11_5:
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	92(%rax), %ecx
	movq	24(%rsp), %rdx          # 8-byte Reload
	movl	%edx, %esi
	addl	%esi, %ecx
	movl	%ecx, 92(%rax)
.LBB11_6:
	movq	24(%rsp), %rax          # 8-byte Reload
	addq	72(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	64(%rsp), %rax
	movq	24(%rsp), %rcx          # 8-byte Reload
	subq	%rcx, %rax
	movq	%rax, 64(%rsp)
	jmp	.LBB11_3
.LBB11_7:
	movq	56(%rsp), %rax          # 8-byte Reload
	addq	72(%rsp), %rax
	movq	8(%rsp), %rcx           # 8-byte Reload
	movl	%ecx, %edx
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	sha1_block_data_order
	movq	72(%rsp), %rax
	movq	8(%rsp), %rcx           # 8-byte Reload
	shlq	$6, %rcx
	addq	%rcx, %rax
	movq	%rax, 72(%rsp)
	movq	64(%rsp), %rax
	movq	8(%rsp), %rcx           # 8-byte Reload
	shlq	$6, %rcx
	subq	%rcx, %rax
	movq	%rax, 64(%rsp)
	jmp	.LBB11_9
.LBB11_8:
	jmp	.LBB11_9
.LBB11_9:
	cmpq	$0, 64(%rsp)
	jbe	.LBB11_11
# %bb.10:
	movq	64(%rsp), %rdx
	movq	72(%rsp), %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	addq	$28, %rcx
	movq	56(%rsp), %rsi          # 8-byte Reload
	addq	%rax, %rsi
	movq	%rcx, %rdi
	callq	memcpy
	movq	48(%rsp), %rcx          # 8-byte Reload
	movl	92(%rcx), %r8d
	movq	64(%rsp), %rdx
	movl	%edx, %r9d
	addl	%r9d, %r8d
	movl	%r8d, 92(%rcx)
	movq	%rax, (%rsp)            # 8-byte Spill
	jmp	.LBB11_12
.LBB11_11:
	jmp	.LBB11_12
.LBB11_12:
	addq	$88, %rsp
	retq
.Lfunc_end11:
	.size	SHA1_Update_public, .Lfunc_end11-SHA1_Update_public
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
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	xorl	%eax, %eax
	movl	%eax, %r9d
	movb	$1, -17(%rbp)
	movl	%r8d, %eax
	movl	%eax, %r10d
	shlq	$3, %r10
	movl	24(%rdi), %eax
	movl	%eax, %r11d
	shlq	$32, %r11
	movl	20(%rdi), %eax
	movl	%eax, %ebx
	orq	%rbx, %r11
	addq	%r10, %r11
	movq	%r11, %r10
	shrq	$32, %r10
	movl	%r10d, %eax
	movl	%eax, 24(%rdi)
	movl	%r11d, %eax
	movl	%eax, 20(%rdi)
	movl	92(%rdi), %eax
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	%r8d, -60(%rbp)         # 4-byte Spill
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movq	%r9, -72(%rbp)          # 8-byte Spill
.LBB12_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_8 Depth 2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jae	.LBB12_4
# %bb.2:                                #   in Loop: Header=BB12_1 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	movq	-80(%rbp), %rsi         # 8-byte Reload
	addq	%rsi, %rdx
	andq	$63, %rdx
	movl	-60(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, %edi
	movl	%edi, %r8d
	cmpq	%r8, %rsi
	setb	%r9b
	movq	-40(%rbp), %r8          # 8-byte Reload
	movb	(%r8,%rsi), %r10b
	andb	$1, %r9b
	movq	-56(%rbp), %r11         # 8-byte Reload
	movb	28(%r11,%rdx), %bl
	movzbl	%r10b, %edi
	movzbl	%bl, %r14d
	#APP
	testb	%r9b, %r9b
	cmovnel	%edi, %r14d
	#NO_APP
	movb	%r14b, %r9b
	movb	%r9b, 28(%r11,%rdx)
	cmpq	$63, %rdx
	je	.LBB12_5
	jmp	.LBB12_6
.LBB12_3:                               #   in Loop: Header=BB12_1 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB12_1
.LBB12_4:
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	-60(%rbp), %ecx         # 4-byte Reload
	addl	%ecx, %eax
	andl	$63, %eax
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, (%rdx)
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, %esi
	movl	%esi, %edi
	movq	-32(%rbp), %r8          # 8-byte Reload
	addq	%r8, %rdi
	movl	%edi, %esi
	andl	$63, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%esi, 92(%rdi)
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB12_5:                               #   in Loop: Header=BB12_1 Depth=1
	movq	%rsp, %rax
	addq	$-32, %rax
	movq	%rax, %rsp
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movl	16(%rcx), %esi
	movl	%esi, 16(%rax)
	addq	$28, %rcx
	movl	$1, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	sha1_block_data_order
	xorl	%edx, %edx
	movl	-60(%rbp), %r8d         # 4-byte Reload
	movl	%r8d, %r9d
	movl	%r9d, %eax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	setae	%r10b
	movb	%r10b, -89(%rbp)        # 1-byte Spill
	movl	%edx, -96(%rbp)         # 4-byte Spill
	jmp	.LBB12_8
.LBB12_6:                               #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_7
.LBB12_7:                               #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_3
.LBB12_8:                               #   Parent Loop BB12_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-96(%rbp), %eax         # 4-byte Reload
	cmpl	$5, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jae	.LBB12_11
# %bb.9:                                #   in Loop: Header=BB12_8 Depth=2
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	movl	%eax, %ecx
	movl	%ecx, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	(%rdi,%rsi,4), %ecx
	movb	-89(%rbp), %r8b         # 1-byte Reload
	andb	$1, %r8b
	testb	$1, %r8b
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmovel	(%rsi,%rdx,4), %ecx
	movl	%ecx, (%rsi,%rdx,4)
# %bb.10:                               #   in Loop: Header=BB12_8 Depth=2
	movl	-100(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB12_8
.LBB12_11:                              #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_7
.Lfunc_end12:
	.size	SHA1_Update_secret, .Lfunc_end12-SHA1_Update_secret
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
	pushq	%r12
	pushq	%rbx
	subq	$176, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movw	24(%rbp), %ax
	movq	16(%rbp), %rbx
	movl	$0, -40(%rbp)
	movb	$1, -41(%rbp)
	movl	$1, -48(%rbp)
	andq	$15, %r9
	cmpq	$0, %r9
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movw	%ax, -98(%rbp)          # 2-byte Spill
	je	.LBB13_2
# %bb.1:
	xorl	%eax, %eax
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_2:
	jmp	.LBB13_3
.LBB13_3:
	movq	%rsp, %rax
	movq	%rax, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	movq	%rsp, %rax
	movq	%rax, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movl	$0, -16(%rax)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	%eax, %esi
	movq	%rsp, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movl	%esi, (%rdi)
	movw	-98(%rbp), %r8w         # 2-byte Reload
	movzwl	%r8w, %esi
	cmpl	$770, %esi              # imm = 0x302
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	jb	.LBB13_5
# %bb.4:
	movq	-128(%rbp), %rax        # 8-byte Reload
	cmpl	$37, (%rax)
	jb	.LBB13_7
	jmp	.LBB13_8
.LBB13_5:
	movq	-128(%rbp), %rax        # 8-byte Reload
	cmpl	$21, (%rax)
	jb	.LBB13_10
	jmp	.LBB13_11
.LBB13_6:
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, %edx
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movl	(%rsi), %ecx
	movl	%ecx, %edi
	movq	-120(%rbp), %r8         # 8-byte Reload
	movl	(%r8), %ecx
	movl	%ecx, %r9d
	movq	-72(%rbp), %r10         # 8-byte Reload
	addq	%rdx, %r10
	movq	-88(%rbp), %rdx         # 8-byte Reload
	addq	%r9, %rdx
	xorl	%ecx, %ecx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, %rsi
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movq	%rbx, %rcx
	movq	-64(%rbp), %r8          # 8-byte Reload
	movl	-140(%rbp), %r9d        # 4-byte Reload
	callq	aesni_cbc_encrypt
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movzbl	-1(%rax,%rcx), %r9d
	movq	%rsp, %rdx
	movq	%rdx, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movl	%r9d, -16(%rdx)
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movl	(%rsi), %r9d
	addl	$-21, %r9d
	movl	%r9d, %r11d
	subl	$255, %r11d
	movl	$255, %r14d
	cmoval	%r14d, %r9d
	movl	-16(%rdx), %r14d
	subl	%r9d, %r14d
	movl	-48(%rbp), %r15d
	movl	-140(%rbp), %r12d       # 4-byte Reload
	cmoval	%r12d, %r15d
	movl	%r15d, -48(%rbp)
	movl	-16(%rdx), %r15d
	cmoval	%r9d, %r15d
	movl	%r15d, -16(%rdx)
	movl	(%rsi), %r9d
	movl	-16(%rdx), %r15d
	addl	$21, %r15d
	movl	%r9d, %eax
	subl	%r15d, %eax
	movb	$1, -33(%rbp)
	movb	%ah, %cl  # NOREX
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movb	%cl, 542(%rdx,%rdi)  # NOREX
	movb	%al, %cl
	movb	%cl, 543(%rdx,%rdi)
	movq	%rsp, %r8
	movq	%r8, %r10
	addq	$-16, %r10
	movq	%r10, %rsp
	movl	$0, -16(%r8)
	movq	%rsp, %r8
	addq	$-32, %r8
	movq	%r8, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, (%r8)
	movl	$0, 16(%r8)
	addq	$436, %rdx              # imm = 0x1B4
	movq	-96(%rbp), %rbx         # 8-byte Reload
	addq	$244, %rbx
	vmovups	(%rbx), %ymm1
	vmovups	32(%rbx), %ymm2
	vmovups	64(%rbx), %ymm3
	vmovups	%ymm3, 64(%rdx)
	vmovups	%ymm2, 32(%rdx)
	vmovups	%ymm1, (%rdx)
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	$436, %rdx              # imm = 0x1B4
	movq	-96(%rbp), %rbx         # 8-byte Reload
	addq	$544, %rbx              # imm = 0x220
	movq	%rdx, %rdi
	movq	%rbx, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movl	%eax, -144(%rbp)        # 4-byte Spill
	movq	%r10, -152(%rbp)        # 8-byte Spill
	movl	%r14d, -156(%rbp)       # 4-byte Spill
	movq	%r8, -168(%rbp)         # 8-byte Spill
	movl	%r11d, -172(%rbp)       # 4-byte Spill
	vzeroupper
	callq	SHA1_Update_public
	xorl	%eax, %eax
	movl	$64, %r9d
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movl	(%rdx), %r11d
	movl	(%rdx), %r14d
	subl	$340, %r14d             # imm = 0x154
	andl	$-64, %r14d
	movq	-96(%rbp), %rsi         # 8-byte Reload
	subl	528(%rsi), %r9d
	addl	%r9d, %r14d
	cmpl	$340, %r11d             # imm = 0x154
	cmovael	%r14d, %eax
	cmpl	$0, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	ja	.LBB13_13
	jmp	.LBB13_14
.LBB13_7:
	xorl	%eax, %eax
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_8:
	jmp	.LBB13_9
.LBB13_9:
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rcx
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rdx)
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movl	(%rcx), %esi
	addl	$16, %esi
	movl	%esi, (%rcx)
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	(%rdi), %esi
	addl	$16, %esi
	movl	%esi, (%rdi)
	movq	-128(%rbp), %r8         # 8-byte Reload
	movl	(%r8), %esi
	subl	$16, %esi
	movl	%esi, (%r8)
	jmp	.LBB13_6
.LBB13_10:
	xorl	%eax, %eax
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_11:
	jmp	.LBB13_12
.LBB13_12:
	jmp	.LBB13_6
.LBB13_13:
	movq	-120(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, %edx
	movl	-176(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, %esi
	movl	%esi, %edi
	movq	-96(%rbp), %rbx         # 8-byte Reload
	addq	$436, %rbx              # imm = 0x1B4
	movq	-88(%rbp), %r8          # 8-byte Reload
	addq	%rdx, %r8
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r8, %rsi
	movq	-184(%rbp), %rdx        # 8-byte Reload
	callq	SHA1_Update_public
	jmp	.LBB13_15
.LBB13_14:
	jmp	.LBB13_15
.LBB13_15:
	movl	-176(%rbp), %eax        # 4-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	addl	(%rcx), %eax
	movl	%eax, %eax
	movl	%eax, %edx
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movl	(%rsi), %eax
	movl	-176(%rbp), %edi        # 4-byte Reload
	subl	%edi, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-96(%rbp), %rbx         # 8-byte Reload
	addq	$436, %rbx              # imm = 0x1B4
	movq	-88(%rbp), %r8          # 8-byte Reload
	addq	%rdx, %r8
	movl	-144(%rbp), %eax        # 4-byte Reload
	subl	%edi, %eax
	movq	%rbx, %rdi
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	%r8, %rdx
	movl	%eax, %r8d
	callq	SHA1_Update_secret
	movq	-96(%rbp), %rcx         # 8-byte Reload
	addq	$436, %rcx              # imm = 0x1B4
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movl	(%rdx), %edx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	callq	SHA1_Final_secret
	movq	-96(%rbp), %rcx         # 8-byte Reload
	addq	$436, %rcx              # imm = 0x1B4
	movq	-96(%rbp), %rsi         # 8-byte Reload
	addq	$340, %rsi              # imm = 0x154
	vmovups	(%rsi), %ymm0
	vmovups	32(%rsi), %ymm1
	vmovups	64(%rsi), %ymm2
	vmovups	%ymm2, 64(%rcx)
	vmovups	%ymm1, 32(%rcx)
	vmovups	%ymm0, (%rcx)
	movq	-96(%rbp), %rcx         # 8-byte Reload
	addq	$436, %rcx              # imm = 0x1B4
	movl	$20, %eax
	movl	%eax, %edx
	movq	%rcx, %rdi
	movq	-168(%rbp), %rsi        # 8-byte Reload
	vzeroupper
	callq	SHA1_Update_public
	movq	-96(%rbp), %rcx         # 8-byte Reload
	addq	$436, %rcx              # imm = 0x1B4
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	callq	SHA1_Final_public
	xorl	%eax, %eax
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movl	(%rcx), %r8d
	movl	(%rcx), %r9d
	subl	$276, %r9d              # imm = 0x114
	cmpl	$276, %r8d              # imm = 0x114
	cmovbl	%eax, %r9d
	movl	-144(%rbp), %ecx        # 4-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
	addl	(%rdx), %ecx
	addl	$20, %ecx
	movq	-128(%rbp), %rsi        # 8-byte Reload
	cmpl	(%rsi), %ecx
	seta	%r10b
	andb	$1, %r10b
	testb	$1, %r10b
	cmovel	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	addl	(%rdx), %r9d
	movl	(%rsi), %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	movl	%r9d, -192(%rbp)        # 4-byte Spill
.LBB13_16:                              # =>This Inner Loop Header: Depth=1
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	-188(%rbp), %ecx        # 4-byte Reload
	cmpl	%ecx, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jae	.LBB13_19
# %bb.17:                               #   in Loop: Header=BB13_16 Depth=1
	xorl	%eax, %eax
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movl	$0, (%rcx)
	movl	-144(%rbp), %edx        # 4-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	addl	(%rsi), %edx
	movl	-196(%rbp), %edi        # 4-byte Reload
	cmpl	%edx, %edi
	setae	%r8b
	movl	-144(%rbp), %edx        # 4-byte Reload
	addl	(%rsi), %edx
	addl	$20, %edx
	cmpl	%edx, %edi
	setb	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %edx
	xorl	%r10d, %r10d
	#APP
	testb	%r8b, %r8b
	movl	%r10d, %r11d
	cmovnel	%edx, %r11d
	#NO_APP
	movb	%r11b, %r8b
	movl	-144(%rbp), %edx        # 4-byte Reload
	addl	(%rsi), %edx
	subl	%edx, %edi
	movb	%r8b, %r9b
	andb	$1, %r9b
	testb	$1, %r9b
	cmovel	(%rcx), %edi
	movl	%edi, (%rcx)
	movl	-196(%rbp), %edx        # 4-byte Reload
	movl	%edx, %edi
	movl	%edi, %ebx
	movl	(%rcx), %edi
	movl	%edi, %ecx
	movq	-88(%rbp), %r14         # 8-byte Reload
	movb	(%r14,%rbx), %r9b
	movq	-168(%rbp), %rbx        # 8-byte Reload
	cmpb	(%rbx,%rcx), %r9b
	setne	%r9b
	andb	$1, %r9b
	andb	%r8b, %r9b
	testb	$1, %r9b
	cmovel	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
# %bb.18:                               #   in Loop: Header=BB13_16 Depth=1
	movl	-196(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB13_16
.LBB13_19:
	movl	-48(%rbp), %eax
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	_aesni_cbc_hmac_sha1_cipher, .Lfunc_end13-_aesni_cbc_hmac_sha1_cipher
	.cfi_endproc
                                        # -- End function
	.section	.text.__llvm_retpoline_r11,"axG",@progbits,__llvm_retpoline_r11,comdat
	.hidden	__llvm_retpoline_r11    # -- Begin function __llvm_retpoline_r11
	.weak	__llvm_retpoline_r11
	.p2align	4, 0x90
	.type	__llvm_retpoline_r11,@function
__llvm_retpoline_r11:                   # @__llvm_retpoline_r11
# %bb.0:                                # %entry
	callq	.LBB14_2
.LBB14_1:                               # Block address taken
                                        # %entry
                                        # =>This Inner Loop Header: Depth=1
	pause
	lfence
	jmp	.LBB14_1
	.p2align	4, 0x90
.LBB14_2:                               # Block address taken
                                        # %entry
	movq	%r11, (%rsp)
	retq
.Lfunc_end14:
	.size	__llvm_retpoline_r11, .Lfunc_end14-__llvm_retpoline_r11
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
