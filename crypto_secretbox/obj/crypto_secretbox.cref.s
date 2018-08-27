	.text
	.file	"Module"
	.p2align	4, 0x90         # -- Begin function _crypto_core_hsalsa20
	.type	_crypto_core_hsalsa20,@function
_crypto_core_hsalsa20:                  # @_crypto_core_hsalsa20
	.cfi_startproc
# %bb.0:                                # %entry
	xorl	%eax, %eax
	movb	$1, -1(%rsp)
	movl	$1634760805, -8(%rsp)   # imm = 0x61707865
	movl	$857760878, -12(%rsp)   # imm = 0x3320646E
	movl	$2036477234, -16(%rsp)  # imm = 0x79622D32
	movl	$1797285236, -20(%rsp)  # imm = 0x6B206574
	movl	(%rdx), %ecx
	movl	%ecx, -24(%rsp)
	movl	4(%rdx), %ecx
	movl	%ecx, -28(%rsp)
	movl	8(%rdx), %ecx
	movl	%ecx, -32(%rsp)
	movl	12(%rdx), %ecx
	movl	%ecx, -36(%rsp)
	movl	16(%rdx), %ecx
	movl	%ecx, -40(%rsp)
	movl	20(%rdx), %ecx
	movl	%ecx, -44(%rsp)
	movl	24(%rdx), %ecx
	movl	%ecx, -48(%rsp)
	movl	28(%rdx), %ecx
	movl	%ecx, -52(%rsp)
	movl	(%rsi), %ecx
	movl	%ecx, -56(%rsp)
	movl	4(%rsi), %ecx
	movl	%ecx, -60(%rsp)
	movl	8(%rsi), %ecx
	movl	%ecx, -64(%rsp)
	movl	12(%rsi), %ecx
	movl	%ecx, -68(%rsp)
	movq	%rdi, -80(%rsp)         # 8-byte Spill
	movl	%eax, -84(%rsp)         # 4-byte Spill
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-84(%rsp), %eax         # 4-byte Reload
	cmpl	$10, %eax
	movl	%eax, -88(%rsp)         # 4-byte Spill
	jae	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rsp), %eax
	movl	-8(%rsp), %ecx
	addl	-44(%rsp), %ecx
	movl	%ecx, %edx
	shll	$7, %edx
	shrl	$25, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -36(%rsp)
	movl	-64(%rsp), %eax
	movl	-36(%rsp), %ecx
	addl	-8(%rsp), %ecx
	movl	%ecx, %edx
	shll	$9, %edx
	shrl	$23, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -64(%rsp)
	movl	-44(%rsp), %eax
	movl	-64(%rsp), %ecx
	addl	-36(%rsp), %ecx
	movl	%ecx, %edx
	shll	$13, %edx
	shrl	$19, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -44(%rsp)
	movl	-8(%rsp), %eax
	movl	-44(%rsp), %ecx
	addl	-64(%rsp), %ecx
	movl	%ecx, %edx
	shll	$18, %edx
	shrl	$14, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -8(%rsp)
	movl	-68(%rsp), %eax
	movl	-12(%rsp), %ecx
	addl	-24(%rsp), %ecx
	movl	%ecx, %edx
	shll	$7, %edx
	shrl	$25, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -68(%rsp)
	movl	-48(%rsp), %eax
	movl	-68(%rsp), %ecx
	addl	-12(%rsp), %ecx
	movl	%ecx, %edx
	shll	$9, %edx
	shrl	$23, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -48(%rsp)
	movl	-24(%rsp), %eax
	movl	-48(%rsp), %ecx
	addl	-68(%rsp), %ecx
	movl	%ecx, %edx
	shll	$13, %edx
	shrl	$19, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -24(%rsp)
	movl	-12(%rsp), %eax
	movl	-24(%rsp), %ecx
	addl	-48(%rsp), %ecx
	movl	%ecx, %edx
	shll	$18, %edx
	shrl	$14, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -12(%rsp)
	movl	-52(%rsp), %eax
	movl	-16(%rsp), %ecx
	addl	-56(%rsp), %ecx
	movl	%ecx, %edx
	shll	$7, %edx
	shrl	$25, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -52(%rsp)
	movl	-28(%rsp), %eax
	movl	-52(%rsp), %ecx
	addl	-16(%rsp), %ecx
	movl	%ecx, %edx
	shll	$9, %edx
	shrl	$23, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -28(%rsp)
	movl	-56(%rsp), %eax
	movl	-28(%rsp), %ecx
	addl	-52(%rsp), %ecx
	movl	%ecx, %edx
	shll	$13, %edx
	shrl	$19, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -56(%rsp)
	movl	-16(%rsp), %eax
	movl	-56(%rsp), %ecx
	addl	-28(%rsp), %ecx
	movl	%ecx, %edx
	shll	$18, %edx
	shrl	$14, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -16(%rsp)
	movl	-32(%rsp), %eax
	movl	-20(%rsp), %ecx
	addl	-40(%rsp), %ecx
	movl	%ecx, %edx
	shll	$7, %edx
	shrl	$25, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -32(%rsp)
	movl	-60(%rsp), %eax
	movl	-32(%rsp), %ecx
	addl	-20(%rsp), %ecx
	movl	%ecx, %edx
	shll	$9, %edx
	shrl	$23, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -60(%rsp)
	movl	-40(%rsp), %eax
	movl	-60(%rsp), %ecx
	addl	-32(%rsp), %ecx
	movl	%ecx, %edx
	shll	$13, %edx
	shrl	$19, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -40(%rsp)
	movl	-20(%rsp), %eax
	movl	-40(%rsp), %ecx
	addl	-60(%rsp), %ecx
	movl	%ecx, %edx
	shll	$18, %edx
	shrl	$14, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -20(%rsp)
	movl	-24(%rsp), %eax
	movl	-8(%rsp), %ecx
	addl	-32(%rsp), %ecx
	movl	%ecx, %edx
	shll	$7, %edx
	shrl	$25, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -24(%rsp)
	movl	-28(%rsp), %eax
	movl	-24(%rsp), %ecx
	addl	-8(%rsp), %ecx
	movl	%ecx, %edx
	shll	$9, %edx
	shrl	$23, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -28(%rsp)
	movl	-32(%rsp), %eax
	movl	-28(%rsp), %ecx
	addl	-24(%rsp), %ecx
	movl	%ecx, %edx
	shll	$13, %edx
	shrl	$19, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -32(%rsp)
	movl	-8(%rsp), %eax
	movl	-32(%rsp), %ecx
	addl	-28(%rsp), %ecx
	movl	%ecx, %edx
	shll	$18, %edx
	shrl	$14, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -8(%rsp)
	movl	-56(%rsp), %eax
	movl	-12(%rsp), %ecx
	addl	-36(%rsp), %ecx
	movl	%ecx, %edx
	shll	$7, %edx
	shrl	$25, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -56(%rsp)
	movl	-60(%rsp), %eax
	movl	-56(%rsp), %ecx
	addl	-12(%rsp), %ecx
	movl	%ecx, %edx
	shll	$9, %edx
	shrl	$23, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -60(%rsp)
	movl	-36(%rsp), %eax
	movl	-60(%rsp), %ecx
	addl	-56(%rsp), %ecx
	movl	%ecx, %edx
	shll	$13, %edx
	shrl	$19, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -36(%rsp)
	movl	-12(%rsp), %eax
	movl	-36(%rsp), %ecx
	addl	-60(%rsp), %ecx
	movl	%ecx, %edx
	shll	$18, %edx
	shrl	$14, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -12(%rsp)
	movl	-40(%rsp), %eax
	movl	-16(%rsp), %ecx
	addl	-68(%rsp), %ecx
	movl	%ecx, %edx
	shll	$7, %edx
	shrl	$25, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -40(%rsp)
	movl	-64(%rsp), %eax
	movl	-40(%rsp), %ecx
	addl	-16(%rsp), %ecx
	movl	%ecx, %edx
	shll	$9, %edx
	shrl	$23, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -64(%rsp)
	movl	-68(%rsp), %eax
	movl	-64(%rsp), %ecx
	addl	-40(%rsp), %ecx
	movl	%ecx, %edx
	shll	$13, %edx
	shrl	$19, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -68(%rsp)
	movl	-16(%rsp), %eax
	movl	-68(%rsp), %ecx
	addl	-64(%rsp), %ecx
	movl	%ecx, %edx
	shll	$18, %edx
	shrl	$14, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -16(%rsp)
	movl	-44(%rsp), %eax
	movl	-20(%rsp), %ecx
	addl	-52(%rsp), %ecx
	movl	%ecx, %edx
	shll	$7, %edx
	shrl	$25, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -44(%rsp)
	movl	-48(%rsp), %eax
	movl	-44(%rsp), %ecx
	addl	-20(%rsp), %ecx
	movl	%ecx, %edx
	shll	$9, %edx
	shrl	$23, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -48(%rsp)
	movl	-52(%rsp), %eax
	movl	-48(%rsp), %ecx
	addl	-44(%rsp), %ecx
	movl	%ecx, %edx
	shll	$13, %edx
	shrl	$19, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -52(%rsp)
	movl	-20(%rsp), %eax
	movl	-52(%rsp), %ecx
	addl	-48(%rsp), %ecx
	movl	%ecx, %edx
	shll	$18, %edx
	shrl	$14, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -20(%rsp)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-88(%rsp), %eax         # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -84(%rsp)         # 4-byte Spill
	jmp	.LBB0_1
.LBB0_4:
	movl	-8(%rsp), %eax
	movq	-80(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	movl	-12(%rsp), %eax
	movl	%eax, 4(%rcx)
	movl	-16(%rsp), %eax
	movl	%eax, 8(%rcx)
	movl	-20(%rsp), %eax
	movl	%eax, 12(%rcx)
	movl	-56(%rsp), %eax
	movl	%eax, 16(%rcx)
	movl	-60(%rsp), %eax
	movl	%eax, 20(%rcx)
	movl	-64(%rsp), %eax
	movl	%eax, 24(%rcx)
	movl	-68(%rsp), %eax
	movl	%eax, 28(%rcx)
	retq
.Lfunc_end0:
	.size	_crypto_core_hsalsa20, .Lfunc_end0-_crypto_core_hsalsa20
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_core_salsa20
	.type	_crypto_core_salsa20,@function
_crypto_core_salsa20:                   # @_crypto_core_salsa20
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	xorl	%eax, %eax
	movb	$1, 23(%rsp)
	movl	$1634760805, 16(%rsp)   # imm = 0x61707865
	movl	$857760878, 12(%rsp)    # imm = 0x3320646E
	movl	$2036477234, 8(%rsp)    # imm = 0x79622D32
	movl	$1797285236, 4(%rsp)    # imm = 0x6B206574
	movl	16(%rsp), %ecx
	movl	12(%rsp), %r8d
	movl	8(%rsp), %r9d
	movl	4(%rsp), %r10d
	movl	(%rdx), %r11d
	movl	%r11d, (%rsp)
	movl	4(%rdx), %r11d
	movl	%r11d, -4(%rsp)
	movl	8(%rdx), %r11d
	movl	%r11d, -8(%rsp)
	movl	12(%rdx), %r11d
	movl	%r11d, -12(%rsp)
	movl	16(%rdx), %r11d
	movl	%r11d, -16(%rsp)
	movl	20(%rdx), %r11d
	movl	%r11d, -20(%rsp)
	movl	24(%rdx), %r11d
	movl	%r11d, -24(%rsp)
	movl	28(%rdx), %r11d
	movl	%r11d, -28(%rsp)
	movl	(%rsp), %r11d
	movl	-4(%rsp), %ebx
	movl	-8(%rsp), %ebp
	movl	-12(%rsp), %r14d
	movl	-16(%rsp), %r15d
	movl	-20(%rsp), %r12d
	movl	-24(%rsp), %r13d
	movl	-28(%rsp), %edx
	movl	%eax, -48(%rsp)         # 4-byte Spill
	movl	(%rsi), %eax
	movl	%eax, -32(%rsp)
	movl	4(%rsi), %eax
	movl	%eax, -36(%rsp)
	movl	8(%rsi), %eax
	movl	%eax, -40(%rsp)
	movl	12(%rsi), %eax
	movl	%eax, -44(%rsp)
	movl	-32(%rsp), %eax
	movl	-36(%rsp), %esi
	movl	%eax, -52(%rsp)         # 4-byte Spill
	movl	-40(%rsp), %eax
	movl	%eax, -56(%rsp)         # 4-byte Spill
	movl	-44(%rsp), %eax
	movl	%eax, -60(%rsp)         # 4-byte Spill
	movl	-48(%rsp), %eax         # 4-byte Reload
	movl	%r13d, -64(%rsp)        # 4-byte Spill
	movq	%rdi, -72(%rsp)         # 8-byte Spill
	movl	%r10d, -76(%rsp)        # 4-byte Spill
	movl	%edx, -80(%rsp)         # 4-byte Spill
	movl	%ecx, -84(%rsp)         # 4-byte Spill
	movl	%r8d, -88(%rsp)         # 4-byte Spill
	movl	%r9d, -92(%rsp)         # 4-byte Spill
	movl	%r11d, -96(%rsp)        # 4-byte Spill
	movl	%ebx, -100(%rsp)        # 4-byte Spill
	movl	%ebp, -104(%rsp)        # 4-byte Spill
	movl	%r14d, -108(%rsp)       # 4-byte Spill
	movl	%r15d, -112(%rsp)       # 4-byte Spill
	movl	%r12d, -116(%rsp)       # 4-byte Spill
	movl	%eax, -120(%rsp)        # 4-byte Spill
	movl	%esi, -124(%rsp)        # 4-byte Spill
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movl	-120(%rsp), %eax        # 4-byte Reload
	cmpl	$10, %eax
	movl	%eax, -128(%rsp)        # 4-byte Spill
	jae	.LBB1_4
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-12(%rsp), %eax
	movl	16(%rsp), %ecx
	addl	-20(%rsp), %ecx
	movl	%ecx, %edx
	shll	$7, %edx
	shrl	$25, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -12(%rsp)
	movl	-40(%rsp), %eax
	movl	-12(%rsp), %ecx
	addl	16(%rsp), %ecx
	movl	%ecx, %edx
	shll	$9, %edx
	shrl	$23, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -40(%rsp)
	movl	-20(%rsp), %eax
	movl	-40(%rsp), %ecx
	addl	-12(%rsp), %ecx
	movl	%ecx, %edx
	shll	$13, %edx
	shrl	$19, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -20(%rsp)
	movl	16(%rsp), %eax
	movl	-20(%rsp), %ecx
	addl	-40(%rsp), %ecx
	movl	%ecx, %edx
	shll	$18, %edx
	shrl	$14, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, 16(%rsp)
	movl	-44(%rsp), %eax
	movl	12(%rsp), %ecx
	addl	(%rsp), %ecx
	movl	%ecx, %edx
	shll	$7, %edx
	shrl	$25, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -44(%rsp)
	movl	-24(%rsp), %eax
	movl	-44(%rsp), %ecx
	addl	12(%rsp), %ecx
	movl	%ecx, %edx
	shll	$9, %edx
	shrl	$23, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -24(%rsp)
	movl	(%rsp), %eax
	movl	-24(%rsp), %ecx
	addl	-44(%rsp), %ecx
	movl	%ecx, %edx
	shll	$13, %edx
	shrl	$19, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, (%rsp)
	movl	12(%rsp), %eax
	movl	(%rsp), %ecx
	addl	-24(%rsp), %ecx
	movl	%ecx, %edx
	shll	$18, %edx
	shrl	$14, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, 12(%rsp)
	movl	-28(%rsp), %eax
	movl	8(%rsp), %ecx
	addl	-32(%rsp), %ecx
	movl	%ecx, %edx
	shll	$7, %edx
	shrl	$25, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -28(%rsp)
	movl	-4(%rsp), %eax
	movl	-28(%rsp), %ecx
	addl	8(%rsp), %ecx
	movl	%ecx, %edx
	shll	$9, %edx
	shrl	$23, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -4(%rsp)
	movl	-32(%rsp), %eax
	movl	-4(%rsp), %ecx
	addl	-28(%rsp), %ecx
	movl	%ecx, %edx
	shll	$13, %edx
	shrl	$19, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -32(%rsp)
	movl	8(%rsp), %eax
	movl	-32(%rsp), %ecx
	addl	-4(%rsp), %ecx
	movl	%ecx, %edx
	shll	$18, %edx
	shrl	$14, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, 8(%rsp)
	movl	-8(%rsp), %eax
	movl	4(%rsp), %ecx
	addl	-16(%rsp), %ecx
	movl	%ecx, %edx
	shll	$7, %edx
	shrl	$25, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -8(%rsp)
	movl	-36(%rsp), %eax
	movl	-8(%rsp), %ecx
	addl	4(%rsp), %ecx
	movl	%ecx, %edx
	shll	$9, %edx
	shrl	$23, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -36(%rsp)
	movl	-16(%rsp), %eax
	movl	-36(%rsp), %ecx
	addl	-8(%rsp), %ecx
	movl	%ecx, %edx
	shll	$13, %edx
	shrl	$19, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -16(%rsp)
	movl	4(%rsp), %eax
	movl	-16(%rsp), %ecx
	addl	-36(%rsp), %ecx
	movl	%ecx, %edx
	shll	$18, %edx
	shrl	$14, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, 4(%rsp)
	movl	(%rsp), %eax
	movl	16(%rsp), %ecx
	addl	-8(%rsp), %ecx
	movl	%ecx, %edx
	shll	$7, %edx
	shrl	$25, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, (%rsp)
	movl	-4(%rsp), %eax
	movl	(%rsp), %ecx
	addl	16(%rsp), %ecx
	movl	%ecx, %edx
	shll	$9, %edx
	shrl	$23, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -4(%rsp)
	movl	-8(%rsp), %eax
	movl	-4(%rsp), %ecx
	addl	(%rsp), %ecx
	movl	%ecx, %edx
	shll	$13, %edx
	shrl	$19, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -8(%rsp)
	movl	16(%rsp), %eax
	movl	-8(%rsp), %ecx
	addl	-4(%rsp), %ecx
	movl	%ecx, %edx
	shll	$18, %edx
	shrl	$14, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, 16(%rsp)
	movl	-32(%rsp), %eax
	movl	12(%rsp), %ecx
	addl	-12(%rsp), %ecx
	movl	%ecx, %edx
	shll	$7, %edx
	shrl	$25, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -32(%rsp)
	movl	-36(%rsp), %eax
	movl	-32(%rsp), %ecx
	addl	12(%rsp), %ecx
	movl	%ecx, %edx
	shll	$9, %edx
	shrl	$23, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -36(%rsp)
	movl	-12(%rsp), %eax
	movl	-36(%rsp), %ecx
	addl	-32(%rsp), %ecx
	movl	%ecx, %edx
	shll	$13, %edx
	shrl	$19, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -12(%rsp)
	movl	12(%rsp), %eax
	movl	-12(%rsp), %ecx
	addl	-36(%rsp), %ecx
	movl	%ecx, %edx
	shll	$18, %edx
	shrl	$14, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, 12(%rsp)
	movl	-16(%rsp), %eax
	movl	8(%rsp), %ecx
	addl	-44(%rsp), %ecx
	movl	%ecx, %edx
	shll	$7, %edx
	shrl	$25, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -16(%rsp)
	movl	-40(%rsp), %eax
	movl	-16(%rsp), %ecx
	addl	8(%rsp), %ecx
	movl	%ecx, %edx
	shll	$9, %edx
	shrl	$23, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -40(%rsp)
	movl	-44(%rsp), %eax
	movl	-40(%rsp), %ecx
	addl	-16(%rsp), %ecx
	movl	%ecx, %edx
	shll	$13, %edx
	shrl	$19, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -44(%rsp)
	movl	8(%rsp), %eax
	movl	-44(%rsp), %ecx
	addl	-40(%rsp), %ecx
	movl	%ecx, %edx
	shll	$18, %edx
	shrl	$14, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, 8(%rsp)
	movl	-20(%rsp), %eax
	movl	4(%rsp), %ecx
	addl	-28(%rsp), %ecx
	movl	%ecx, %edx
	shll	$7, %edx
	shrl	$25, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -20(%rsp)
	movl	-24(%rsp), %eax
	movl	-20(%rsp), %ecx
	addl	4(%rsp), %ecx
	movl	%ecx, %edx
	shll	$9, %edx
	shrl	$23, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -24(%rsp)
	movl	-28(%rsp), %eax
	movl	-24(%rsp), %ecx
	addl	-20(%rsp), %ecx
	movl	%ecx, %edx
	shll	$13, %edx
	shrl	$19, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, -28(%rsp)
	movl	4(%rsp), %eax
	movl	-28(%rsp), %ecx
	addl	-24(%rsp), %ecx
	movl	%ecx, %edx
	shll	$18, %edx
	shrl	$14, %ecx
	orl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, 4(%rsp)
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-128(%rsp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -120(%rsp)        # 4-byte Spill
	jmp	.LBB1_1
.LBB1_4:
	movl	-84(%rsp), %eax         # 4-byte Reload
	addl	16(%rsp), %eax
	movq	-72(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	movl	-96(%rsp), %eax         # 4-byte Reload
	addl	(%rsp), %eax
	movl	%eax, 4(%rcx)
	movl	-100(%rsp), %eax        # 4-byte Reload
	addl	-4(%rsp), %eax
	movl	%eax, 8(%rcx)
	movl	-104(%rsp), %eax        # 4-byte Reload
	addl	-8(%rsp), %eax
	movl	%eax, 12(%rcx)
	movl	-108(%rsp), %eax        # 4-byte Reload
	addl	-12(%rsp), %eax
	movl	%eax, 16(%rcx)
	movl	-88(%rsp), %eax         # 4-byte Reload
	addl	12(%rsp), %eax
	movl	%eax, 20(%rcx)
	movl	-52(%rsp), %eax         # 4-byte Reload
	addl	-32(%rsp), %eax
	movl	%eax, 24(%rcx)
	movl	-124(%rsp), %eax        # 4-byte Reload
	addl	-36(%rsp), %eax
	movl	%eax, 28(%rcx)
	movl	-56(%rsp), %eax         # 4-byte Reload
	addl	-40(%rsp), %eax
	movl	%eax, 32(%rcx)
	movl	-60(%rsp), %eax         # 4-byte Reload
	addl	-44(%rsp), %eax
	movl	%eax, 36(%rcx)
	movl	-92(%rsp), %eax         # 4-byte Reload
	addl	8(%rsp), %eax
	movl	%eax, 40(%rcx)
	movl	-112(%rsp), %eax        # 4-byte Reload
	addl	-16(%rsp), %eax
	movl	%eax, 44(%rcx)
	movl	-116(%rsp), %eax        # 4-byte Reload
	addl	-20(%rsp), %eax
	movl	%eax, 48(%rcx)
	movl	-64(%rsp), %eax         # 4-byte Reload
	addl	-24(%rsp), %eax
	movl	%eax, 52(%rcx)
	movl	-80(%rsp), %eax         # 4-byte Reload
	addl	-28(%rsp), %eax
	movl	%eax, 56(%rcx)
	movl	-76(%rsp), %eax         # 4-byte Reload
	addl	4(%rsp), %eax
	movl	%eax, 60(%rcx)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_crypto_core_salsa20, .Lfunc_end1-_crypto_core_salsa20
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _poly1305_blocks
	.type	_poly1305_blocks,@function
_poly1305_blocks:                       # @_poly1305_blocks
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
	subq	$216, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$1099511627776, %r8     # imm = 0x10000000000
	movb	$1, -41(%rbp)
	cmpb	$0, 88(%rdi)
	cmovneq	%rcx, %r8
	movq	(%rdi), %r9
	movq	8(%rdi), %r10
	movq	16(%rdi), %r11
	movq	24(%rdi), %rbx
	movq	%rbx, -56(%rbp)
	movq	32(%rdi), %rbx
	movq	%rbx, -64(%rbp)
	movq	40(%rdi), %rbx
	movq	%rbx, -72(%rbp)
	imulq	$20, %r10, %rbx
	imulq	$20, %r11, %r14
	shrq	$4, %rdx
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r14, -96(%rbp)         # 8-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%r8, -112(%rbp)         # 8-byte Spill
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	%r10, -128(%rbp)        # 8-byte Spill
	movq	%r11, -136(%rbp)        # 8-byte Spill
	movq	%rbx, -144(%rbp)        # 8-byte Spill
	movq	%rcx, -152(%rbp)        # 8-byte Spill
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jae	.LBB2_4
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movabsq	$17592186044415, %rax   # imm = 0xFFFFFFFFFFF
	movabsq	$4398046511103, %rcx    # imm = 0x3FFFFFFFFFF
	movq	-160(%rbp), %rdx        # 8-byte Reload
	shlq	$4, %rdx
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi,%rdx), %rdi
	movq	8(%rsi,%rdx), %rdx
	movq	-56(%rbp), %r8
	movabsq	$17592186044415, %r9    # imm = 0xFFFFFFFFFFF
	movq	%rdi, %r10
	andq	%r9, %r10
	addq	%r10, %r8
	movq	%r8, -56(%rbp)
	movq	-64(%rbp), %r8
	movq	%rdx, %r10
	shldq	$20, %rdi, %r10
	andq	%r9, %r10
	addq	%r10, %r8
	movq	%r8, -64(%rbp)
	movq	-72(%rbp), %rdi
	shrq	$24, %rdx
	movq	-112(%rbp), %r8         # 8-byte Reload
	orq	%r8, %rdx
	addq	%rdx, %rdi
	movq	%rdi, -72(%rbp)
	movq	-56(%rbp), %rdx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rdx, %rax
	movq	-120(%rbp), %rdx        # 8-byte Reload
	mulq	%rdx
	movq	-64(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rdi, %rax
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	mulq	%rdi
	movq	-176(%rbp), %r10        # 8-byte Reload
	addq	%rax, %r10
	movq	-184(%rbp), %rax        # 8-byte Reload
	adcq	%rdx, %rax
	movq	-72(%rbp), %rdx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rdx, %rax
	movq	-144(%rbp), %rdx        # 8-byte Reload
	mulq	%rdx
	addq	%rax, %r10
	movq	-192(%rbp), %rax        # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rsp, %rdx
	movq	%rdx, %r11
	addq	$-16, %r11
	movq	%r11, %rsp
	movq	%rax, -8(%rdx)
	movq	%r10, -16(%rdx)
	movq	-56(%rbp), %rax
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	mulq	%r10
	movq	-64(%rbp), %r11
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%r11, %rax
	movq	-120(%rbp), %r11        # 8-byte Reload
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	mulq	%r11
	movq	-208(%rbp), %rbx        # 8-byte Reload
	addq	%rax, %rbx
	movq	-216(%rbp), %rax        # 8-byte Reload
	adcq	%rdx, %rax
	movq	-72(%rbp), %rdx
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	%rdx, %rax
	mulq	%rdi
	addq	%rax, %rbx
	movq	-224(%rbp), %rax        # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rsp, %rdx
	movq	%rdx, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movq	%rax, -8(%rdx)
	movq	%rbx, -16(%rdx)
	movq	-56(%rbp), %rax
	movq	-136(%rbp), %rbx        # 8-byte Reload
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	mulq	%rbx
	movq	-64(%rbp), %r14
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	%r14, %rax
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	mulq	%r10
	movq	-240(%rbp), %r14        # 8-byte Reload
	addq	%rax, %r14
	movq	-248(%rbp), %rax        # 8-byte Reload
	adcq	%rdx, %rax
	movq	-72(%rbp), %rdx
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movq	%rdx, %rax
	mulq	%r11
	addq	%rax, %r14
	movq	-256(%rbp), %rax        # 8-byte Reload
	adcq	%rdx, %rax
	movq	%rsp, %rdx
	movq	%rdx, %r15
	addq	$-16, %r15
	movq	%r15, %rsp
	movq	%rax, -8(%rdx)
	movq	%r14, -16(%rdx)
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	-16(%rax), %r14
	movq	-8(%rax), %r15
	shldq	$20, %r14, %r15
	movq	%rsp, %r14
	movq	%r14, %r12
	addq	$-16, %r12
	movq	%r12, %rsp
	movq	%r15, -16(%r14)
	movq	-16(%rax), %r15
	andq	%r9, %r15
	movq	%r15, -56(%rbp)
	movq	-232(%rbp), %r15        # 8-byte Reload
	movq	-16(%r15), %r13
	movq	-8(%r15), %rax
	movq	-16(%r14), %rsi
	addq	%rsi, %r13
	adcq	$0, %rax
	movq	%r13, -16(%r15)
	movq	%rax, -8(%r15)
	movq	-16(%r15), %rax
	movq	-8(%r15), %rsi
	shldq	$20, %rax, %rsi
	movq	%rsi, -16(%r14)
	movq	-16(%r15), %rax
	andq	%r9, %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rdx), %rax
	movq	-8(%rdx), %rsi
	movq	-16(%r14), %r9
	addq	%r9, %rax
	adcq	$0, %rsi
	movq	%rax, -16(%rdx)
	movq	%rsi, -8(%rdx)
	movq	-16(%rdx), %rax
	movq	-8(%rdx), %rsi
	shldq	$22, %rax, %rsi
	movq	%rsi, -16(%r14)
	movq	-16(%rdx), %rax
	andq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	imulq	$5, (%r12), %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	shrq	$44, %rax
	movq	%rax, (%r12)
	movq	-168(%rbp), %rax        # 8-byte Reload
	andq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	addq	(%r12), %rax
	movq	%rax, -64(%rbp)
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB2_1
.LBB2_4:
	movq	-56(%rbp), %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rax, 24(%rcx)
	movq	-64(%rbp), %rax
	movq	%rax, 32(%rcx)
	movq	-72(%rbp), %rax
	movq	%rax, 40(%rcx)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_poly1305_blocks, .Lfunc_end2-_poly1305_blocks
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _poly1305_finish
	.type	_poly1305_finish,@function
_poly1305_finish:                       # @_poly1305_finish
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
	subq	$72, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movb	$1, -41(%rbp)
	cmpq	$0, 64(%rdi)
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	je	.LBB3_2
# %bb.1:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	64(%rax), %rcx
	movb	$1, 72(%rax,%rcx)
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB3_4
.LBB3_2:
	jmp	.LBB3_3
.LBB3_3:
	xorl	%eax, %eax
	movl	$16, %ecx
	movl	%ecx, %edx
	movl	$24, %ecx
	movl	%ecx, %esi
	movabsq	$4398046511103, %rdi    # imm = 0x3FFFFFFFFFF
	movabsq	$17592186044415, %r8    # imm = 0xFFFFFFFFFFF
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	24(%r9), %r10
	movq	%rsp, %r11
	movq	%r11, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%r10, -16(%r11)
	movq	32(%r9), %r10
	movq	%rsp, %r14
	movq	%r14, %r15
	addq	$-16, %r15
	movq	%r15, %rsp
	movq	%r10, -16(%r14)
	movq	40(%r9), %r10
	movq	%rsp, %r12
	movq	%r12, %r13
	addq	$-16, %r13
	movq	%r13, %rsp
	movq	%r10, -16(%r12)
	movq	-16(%r14), %r10
	shrq	$44, %r10
	movq	%rsp, %r9
	movq	%r9, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%r10, -16(%r9)
	movl	-12(%r14), %r10d
	andl	$4095, %r10d            # imm = 0xFFF
	movl	%r10d, -12(%r14)
	movq	-16(%r12), %r10
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	-16(%r9), %rcx
	addq	%rcx, %r10
	movq	%r10, -16(%r12)
	movq	-16(%r12), %rcx
	shrq	$42, %rcx
	movq	%rcx, -16(%r9)
	movl	-12(%r12), %r10d
	andl	$1023, %r10d            # imm = 0x3FF
	movl	%r10d, -12(%r12)
	movq	-16(%r11), %rcx
	movq	-16(%r9), %r10
	leaq	(%r10,%r10,4), %r10
	addq	%r10, %rcx
	movq	%rcx, -16(%r11)
	movq	-16(%r11), %rcx
	shrq	$44, %rcx
	movq	%rcx, -16(%r9)
	movl	-12(%r11), %r10d
	andl	$4095, %r10d            # imm = 0xFFF
	movl	%r10d, -12(%r11)
	movq	-16(%r14), %rcx
	movq	-16(%r9), %r10
	addq	%r10, %rcx
	movq	%rcx, -16(%r14)
	movq	-16(%r14), %rcx
	shrq	$44, %rcx
	movq	%rcx, -16(%r9)
	movl	-12(%r14), %r10d
	andl	$4095, %r10d            # imm = 0xFFF
	movl	%r10d, -12(%r14)
	movq	-16(%r12), %rcx
	movq	-16(%r9), %r10
	addq	%r10, %rcx
	movq	%rcx, -16(%r12)
	movq	-16(%r12), %rcx
	shrq	$42, %rcx
	movq	%rcx, -16(%r9)
	movl	-12(%r12), %r10d
	andl	$1023, %r10d            # imm = 0x3FF
	movl	%r10d, -12(%r12)
	movq	-16(%r11), %rcx
	movq	-16(%r9), %r10
	leaq	(%r10,%r10,4), %r10
	addq	%r10, %rcx
	movq	%rcx, -16(%r11)
	movq	-16(%r11), %rcx
	shrq	$44, %rcx
	movq	%rcx, -16(%r9)
	movl	-12(%r11), %r10d
	andl	$4095, %r10d            # imm = 0xFFF
	movl	%r10d, -12(%r11)
	movq	-16(%r14), %rcx
	movq	-16(%r9), %r10
	addq	%r10, %rcx
	movq	%rcx, -16(%r14)
	movq	-16(%r11), %rcx
	addq	$5, %rcx
	movq	%rsp, %r10
	movq	%r10, %r11
	addq	$-16, %r11
	movq	%r11, %rsp
	movq	%rcx, -16(%r10)
	movq	-16(%r10), %rcx
	shrq	$44, %rcx
	movq	%rcx, -16(%r9)
	movl	-12(%r10), %ecx
	andl	$4095, %ecx             # imm = 0xFFF
	movl	%ecx, -12(%r10)
	movq	-16(%r14), %r10
	movq	-16(%r9), %r14
	addq	%r14, %r10
	movq	%rsp, %r14
	movq	%r14, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%r10, -16(%r14)
	movq	-16(%r14), %r10
	shrq	$44, %r10
	movq	%r10, -16(%r9)
	movl	-12(%r14), %r10d
	andl	$4095, %r10d            # imm = 0xFFF
	movl	%r10d, -12(%r14)
	movq	-16(%r12), %r14
	movq	-16(%r9), %r9
	addq	%r9, %r14
	movabsq	$-4398046511104, %r9    # imm = 0xFFFFFC0000000000
	addq	%r9, %r14
	movq	%rsp, %r9
	addq	$-16, %r9
	movq	%r9, %rsp
	movq	%r14, (%r9)
	movq	(%r9), %r14
	shrq	$63, %r14
	subq	$1, %r14
	movq	-80(%rbp), %r12         # 8-byte Reload
	movq	%r14, (%r12)
	movq	(%r11), %r14
	andq	(%r12), %r14
	movq	%r14, (%r11)
	movq	(%rcx), %r14
	andq	(%r12), %r14
	movq	%r14, (%rcx)
	movq	(%r9), %r14
	andq	(%r12), %r14
	movq	%r14, (%r9)
	movq	(%r12), %r14
	xorq	$-1, %r14
	movq	%r14, (%r12)
	movq	(%rbx), %r14
	andq	(%r12), %r14
	orq	(%r11), %r14
	movq	%r14, (%rbx)
	movq	(%r15), %r11
	andq	(%r12), %r11
	orq	(%rcx), %r11
	movq	%r11, (%r15)
	movq	(%r13), %rcx
	andq	(%r12), %rcx
	orq	(%r9), %rcx
	movq	%rcx, (%r13)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	48(%rcx), %r9
	movq	56(%rcx), %r11
	movq	(%rbx), %r14
	movq	%r9, %rcx
	andq	%r8, %rcx
	addq	%rcx, %r14
	movq	%r14, (%rbx)
	movq	(%rbx), %rcx
	shrq	$44, %rcx
	movq	%rcx, (%r12)
	movq	%r8, %rcx
	andq	(%rbx), %rcx
	movq	%rcx, (%rbx)
	movq	(%r15), %rcx
	shrq	$44, %r9
	movq	%r11, %r14
	shlq	$20, %r14
	orq	%r14, %r9
	andq	%r8, %r9
	addq	(%r12), %r9
	addq	%r9, %rcx
	movq	%rcx, (%r15)
	movq	(%r15), %rcx
	shrq	$44, %rcx
	movq	%rcx, (%r12)
	andq	(%r15), %r8
	movq	%r8, (%r15)
	movq	(%r13), %rcx
	shrq	$24, %r11
	andq	%rdi, %r11
	addq	(%r12), %r11
	addq	%r11, %rcx
	movq	%rcx, (%r13)
	andq	(%r13), %rdi
	movq	%rdi, (%r13)
	movq	(%rbx), %rcx
	movq	(%r15), %rdi
	shlq	$44, %rdi
	orq	%rdi, %rcx
	movq	%rcx, (%rbx)
	movq	(%r15), %rcx
	shrq	$20, %rcx
	movq	(%r13), %rdi
	shlq	$24, %rdi
	orq	%rdi, %rcx
	movq	%rcx, (%r15)
	movq	(%rbx), %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, (%rdi)
	movq	(%r15), %rcx
	movq	%rcx, 8(%rdi)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movl	%eax, %esi
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	memset
	movq	-56(%rbp), %rcx         # 8-byte Reload
	addq	$24, %rcx
	movq	%rcx, %rdi
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	-88(%rbp), %rdx         # 8-byte Reload
	callq	memset
	movq	-56(%rbp), %rcx         # 8-byte Reload
	addq	$48, %rcx
	movq	%rcx, %rdi
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	-96(%rbp), %rdx         # 8-byte Reload
	callq	memset
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	$0, 64(%rcx)
	addq	$72, %rcx
	movq	%rcx, %rdi
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	-96(%rbp), %rdx         # 8-byte Reload
	callq	memset
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movb	$0, 88(%rcx)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_4:                                # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	cmpq	$16, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jae	.LBB3_7
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movb	$0, 72(%rax,%rcx)
# %bb.6:                                #   in Loop: Header=BB3_4 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB3_4
.LBB3_7:
	movl	$16, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movb	$1, 88(%rcx)
	addq	$72, %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, %rsi
	callq	_poly1305_blocks
	jmp	.LBB3_3
.Lfunc_end3:
	.size	_poly1305_finish, .Lfunc_end3-_poly1305_finish
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _poly1305_update
	.type	_poly1305_update,@function
_poly1305_update:                       # @_poly1305_update
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movb	$1, -1(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, 64(%rdi)
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	je	.LBB4_2
# %bb.1:
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	64(%rax), %rcx
	movl	$16, %edx
	movl	%edx, %esi
	subq	%rcx, %rsi
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rsi, (%rcx)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rsi, (%rcx)
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	ja	.LBB4_4
	jmp	.LBB4_5
.LBB4_2:
	jmp	.LBB4_3
.LBB4_3:
	movq	-40(%rbp), %rax         # 8-byte Reload
	subq	-16(%rbp), %rax
	cmpq	$16, %rax
	jae	.LBB4_14
	jmp	.LBB4_15
.LBB4_4:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, (%rax)
	jmp	.LBB4_6
.LBB4_5:
	jmp	.LBB4_6
.LBB4_6:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
.LBB4_7:                                # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jae	.LBB4_10
# %bb.8:                                #   in Loop: Header=BB4_7 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	addq	64(%rcx), %rax
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movb	(%rdx,%rsi), %dil
	movb	%dil, 72(%rcx,%rax)
# %bb.9:                                #   in Loop: Header=BB4_7 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB4_7
.LBB4_10:
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	addq	(%rcx), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	64(%rax), %rdx
	addq	(%rcx), %rdx
	movq	%rdx, 64(%rax)
	cmpq	$16, 64(%rax)
	jae	.LBB4_12
# %bb.11:
	movq	%rbp, %rsp
	popq	%rbp
	retq
.LBB4_12:
	jmp	.LBB4_13
.LBB4_13:
	movl	$16, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	addq	$72, %rcx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, %rsi
	callq	_poly1305_blocks
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movq	$0, 64(%rcx)
	jmp	.LBB4_3
.LBB4_14:
	movq	-40(%rbp), %rax         # 8-byte Reload
	subq	-16(%rbp), %rax
	movl	%eax, %ecx
	andl	$-16, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-24(%rbp), %rdx         # 8-byte Reload
	addq	-16(%rbp), %rdx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	_poly1305_blocks
	movq	-80(%rbp), %rax         # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB4_16
.LBB4_15:
	jmp	.LBB4_16
.LBB4_16:
	movq	-40(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, -16(%rbp)
	jae	.LBB4_18
# %bb.17:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	subq	-16(%rbp), %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB4_20
.LBB4_18:
	jmp	.LBB4_19
.LBB4_19:
	movq	%rbp, %rsp
	popq	%rbp
	retq
.LBB4_20:                               # =>This Inner Loop Header: Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jae	.LBB4_23
# %bb.21:                               #   in Loop: Header=BB4_20 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	addq	64(%rcx), %rax
	movq	-104(%rbp), %rdx        # 8-byte Reload
	addq	-16(%rbp), %rdx
	movq	-104(%rbp), %rsi        # 8-byte Reload
	addq	%rsi, %rax
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movb	(%rdi,%rdx), %r8b
	movb	%r8b, 72(%rcx,%rax)
# %bb.22:                               #   in Loop: Header=BB4_20 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB4_20
.LBB4_23:
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	addq	64(%rcx), %rax
	movq	%rax, 64(%rcx)
	jmp	.LBB4_19
.Lfunc_end4:
	.size	_poly1305_update, .Lfunc_end4-_poly1305_update
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _poly1305_init
	.type	_poly1305_init,@function
_poly1305_init:                         # @_poly1305_init
	.cfi_startproc
# %bb.0:                                # %entry
	movabsq	$68719475727, %rax      # imm = 0xFFFFFFC0F
	movabsq	$17592181915647, %rcx   # imm = 0xFFFFFC0FFFF
	movabsq	$17575274610687, %rdx   # imm = 0xFFC0FFFFFFF
	movb	$1, -1(%rsp)
	movq	(%rsi), %r8
	movq	8(%rsi), %r9
	movq	%r8, %r10
	andq	%rdx, %r10
	movq	%r10, (%rdi)
	shrq	$44, %r8
	movq	%r9, %rdx
	shlq	$20, %rdx
	orq	%rdx, %r8
	andq	%rcx, %r8
	movq	%r8, 8(%rdi)
	shrq	$24, %r9
	andq	%rax, %r9
	movq	%r9, 16(%rdi)
	movq	$0, 24(%rdi)
	movq	$0, 32(%rdi)
	movq	$0, 40(%rdi)
	movq	16(%rsi), %rax
	movq	%rax, 48(%rdi)
	movq	24(%rsi), %rax
	movq	%rax, 56(%rdi)
	movq	$0, 64(%rdi)
	movb	$0, 88(%rdi)
	retq
.Lfunc_end5:
	.size	_poly1305_init, .Lfunc_end5-_poly1305_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_onetimeauth_poly1305
	.type	_crypto_onetimeauth_poly1305,@function
_crypto_onetimeauth_poly1305:           # @_crypto_onetimeauth_poly1305
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$280, %rsp              # imm = 0x118
	.cfi_def_cfa_offset 320
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	leaq	176(%rsp), %rax
	leaq	96(%rsp), %r8
	xorl	%r9d, %r9d
	movl	$16, %r10d
	movl	%r10d, %r11d
	leaq	112(%rsp), %rbx
	movl	$24, %r10d
	movl	%r10d, %r14d
	leaq	128(%rsp), %r15
	leaq	152(%rsp), %r12
	movl	$0, 276(%rsp)
	movb	$1, 275(%rsp)
	movq	%rdi, 88(%rsp)          # 8-byte Spill
	movq	%r12, %rdi
	movq	%rsi, 80(%rsp)          # 8-byte Spill
	movl	%r9d, %esi
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	%r14, %rdx
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	movq	%r14, 56(%rsp)          # 8-byte Spill
	movq	%r15, 48(%rsp)          # 8-byte Spill
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%r8, 24(%rsp)           # 8-byte Spill
	movl	%r9d, 20(%rsp)          # 4-byte Spill
	movq	%r11, 8(%rsp)           # 8-byte Spill
	callq	memset
	movq	152(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 184(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 192(%rsp)
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rdi
	movl	20(%rsp), %esi          # 4-byte Reload
	movq	56(%rsp), %rdx          # 8-byte Reload
	callq	memset
	movq	128(%rsp), %rax
	movq	%rax, 200(%rsp)
	movq	136(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 216(%rsp)
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rdi
	movl	20(%rsp), %esi          # 4-byte Reload
	movq	8(%rsp), %rdx           # 8-byte Reload
	callq	memset
	movq	112(%rsp), %rax
	movq	%rax, 224(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 232(%rsp)
	movq	$0, 240(%rsp)
	movq	24(%rsp), %rdi          # 8-byte Reload
	movl	20(%rsp), %esi          # 4-byte Reload
	movq	8(%rsp), %rdx           # 8-byte Reload
	callq	memset
	movq	96(%rsp), %rax
	movq	%rax, 248(%rsp)
	movq	104(%rsp), %rax
	movq	%rax, 256(%rsp)
	movb	$0, 264(%rsp)
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	_poly1305_init
	leaq	176(%rsp), %rdi
	movq	80(%rsp), %rsi          # 8-byte Reload
	movq	72(%rsp), %rdx          # 8-byte Reload
	callq	_poly1305_update
	leaq	176(%rsp), %rdi
	movq	88(%rsp), %rsi          # 8-byte Reload
	callq	_poly1305_finish
	xorl	%eax, %eax
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end6:
	.size	_crypto_onetimeauth_poly1305, .Lfunc_end6-_crypto_onetimeauth_poly1305
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_verify_16
	.type	_crypto_verify_16,@function
_crypto_verify_16:                      # @_crypto_verify_16
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	xorl	%eax, %eax
	movb	$0, -1(%rsp)
	movb	$1, -2(%rsp)
	movq	%rdi, -16(%rsp)         # 8-byte Spill
	movq	%rsi, -24(%rsp)         # 8-byte Spill
	movl	%eax, -28(%rsp)         # 4-byte Spill
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rsp), %eax         # 4-byte Reload
	cmpl	$16, %eax
	movl	%eax, -32(%rsp)         # 4-byte Spill
	jae	.LBB7_4
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	movb	-2(%rsp), %al
	movl	-32(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %edx
	movl	%edx, %esi
	movl	%ecx, %edx
	movl	%edx, %edi
	movq	-16(%rsp), %r8          # 8-byte Reload
	movb	(%r8,%rdi), %r9b
	movq	-24(%rsp), %rdi         # 8-byte Reload
	cmpb	(%rdi,%rsi), %r9b
	setne	%r9b
	movb	%r9b, %r10b
	andb	$1, %r10b
	andb	%al, %r10b
	movb	-1(%rsp), %r11b
	andb	$1, %r11b
	movzbl	%r11b, %edx
	xorl	%ebx, %ebx
	#APP
	testb	%r10b, %r10b
	cmovnel	%ebx, %edx
	#NO_APP
	movb	%dl, %r10b
	andb	$1, %r10b
	movb	%r10b, -1(%rsp)
	andb	$1, %r9b
	andb	%al, %r9b
	movb	-2(%rsp), %al
	andb	$1, %al
	movzbl	%al, %edx
	xorl	%ebx, %ebx
	#APP
	testb	%r9b, %r9b
	cmovnel	%ebx, %edx
	#NO_APP
	movb	%dl, %al
	andb	$1, %al
	movb	%al, -2(%rsp)
# %bb.3:                                #   in Loop: Header=BB7_1 Depth=1
	movl	-32(%rsp), %eax         # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -28(%rsp)         # 4-byte Spill
	jmp	.LBB7_1
.LBB7_4:
	movzbl	-1(%rsp), %eax
	movb	-2(%rsp), %cl
	movl	$1, %edx
	#APP
	testb	%cl, %cl
	cmovnel	%edx, %eax
	#NO_APP
	andl	$1, %eax
	movb	%al, %sil
	movb	%sil, -1(%rsp)
	movzbl	-2(%rsp), %eax
	xorl	%edx, %edx
	#APP
	testb	%cl, %cl
	cmovnel	%edx, %eax
	#NO_APP
	andl	$1, %eax
	movb	%al, %cl
	movb	%cl, -2(%rsp)
	movb	-1(%rsp), %al
	popq	%rbx
	retq
.Lfunc_end7:
	.size	_crypto_verify_16, .Lfunc_end7-_crypto_verify_16
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_onetimeauth_poly1305_verify
	.type	_crypto_onetimeauth_poly1305_verify,@function
_crypto_onetimeauth_poly1305_verify:    # @_crypto_onetimeauth_poly1305_verify
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movb	$0, 55(%rsp)
	movb	$1, 54(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rax
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, 16(%rsp)          # 8-byte Spill
	callq	_crypto_onetimeauth_poly1305
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
	movl	%eax, 12(%rsp)          # 4-byte Spill
	callq	_crypto_verify_16
	movb	%al, %r8b
	movb	%r8b, 11(%rsp)          # 1-byte Spill
	addq	$56, %rsp
	retq
.Lfunc_end8:
	.size	_crypto_onetimeauth_poly1305_verify, .Lfunc_end8-_crypto_onetimeauth_poly1305_verify
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_stream_salsa20_xor_ic
	.type	_crypto_stream_salsa20_xor_ic,@function
_crypto_stream_salsa20_xor_ic:          # @_crypto_stream_salsa20_xor_ic
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	movq	16(%rbp), %rax
	movl	$0, -4(%rbp)
	movb	$1, -5(%rbp)
	cmpq	$0, %rcx
	movq	%rax, -16(%rbp)         # 8-byte Spill
	movq	%r9, -24(%rbp)          # 8-byte Spill
	movq	%r8, -32(%rbp)          # 8-byte Spill
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	jne	.LBB9_2
# %bb.1:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.LBB9_2:
	jmp	.LBB9_3
.LBB9_3:
	xorl	%eax, %eax
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	%rsp, %rsi
	movq	%rsi, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movq	-24(%rbp), %r8          # 8-byte Reload
	movq	%r8, -16(%rsi)
	movq	%rsp, %rsi
	movq	%rsi, %r9
	addq	$-32, %r9
	movq	%r9, %rsp
	movq	-16(%rbp), %r10         # 8-byte Reload
	vmovups	(%r10), %ymm0
	vmovups	%ymm0, -32(%rsi)
	movq	%rsp, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movl	%eax, %esi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	vzeroupper
	callq	memset
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB9_4:                                # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	cmpl	$8, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jae	.LBB9_7
# %bb.5:                                #   in Loop: Header=BB9_4 Depth=1
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	movl	%eax, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movb	(%rdi,%rdx), %r8b
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movb	%r8b, (%rdx,%rsi)
# %bb.6:                                #   in Loop: Header=BB9_4 Depth=1
	movl	-96(%rbp), %eax         # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB9_4
.LBB9_7:
	movl	$8, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB9_8
.LBB9_8:                                # =>This Inner Loop Header: Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	cmpl	$16, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jae	.LBB9_11
# %bb.9:                                #   in Loop: Header=BB9_8 Depth=1
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rdi
	movb	%dil, %r8b
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movb	%r8b, (%rdi,%rdx)
	movq	(%rsi), %rdx
	shrq	$8, %rdx
	movq	%rdx, (%rsi)
# %bb.10:                               #   in Loop: Header=BB9_8 Depth=1
	movl	-104(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB9_8
.LBB9_11:
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%esi, %esi
	movl	$64, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	shrq	$6, %rdi
	movq	%rsp, %r8
	addq	$-64, %r8
	movq	%r8, %rsp
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	%r8, -128(%rbp)         # 8-byte Spill
	callq	memset
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -136(%rbp)        # 8-byte Spill
.LBB9_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_16 Depth 2
                                        #     Child Loop BB9_20 Depth 2
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jae	.LBB9_15
# %bb.13:                               #   in Loop: Header=BB9_12 Depth=1
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-88(%rbp), %rdx         # 8-byte Reload
	callq	_crypto_core_salsa20
	xorl	%eax, %eax
	movq	-144(%rbp), %rdx        # 8-byte Reload
	shlq	$6, %rdx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	addq	%rdx, %rsi
	movq	-144(%rbp), %rdx        # 8-byte Reload
	shlq	$6, %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	addq	%rdx, %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB9_16
.LBB9_14:                               #   in Loop: Header=BB9_12 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB9_12
.LBB9_15:
	movq	-112(%rbp), %rax        # 8-byte Reload
	shlq	$6, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rcx, %rax
	jb	.LBB9_24
	jmp	.LBB9_25
.LBB9_16:                               #   Parent Loop BB9_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-164(%rbp), %eax        # 4-byte Reload
	cmpl	$64, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jae	.LBB9_19
# %bb.17:                               #   in Loop: Header=BB9_16 Depth=2
	movl	-168(%rbp), %eax        # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	movl	%eax, %ecx
	movl	%ecx, %esi
	movl	%eax, %ecx
	movl	%ecx, %edi
	movq	-152(%rbp), %r8         # 8-byte Reload
	movb	(%r8,%rsi), %r9b
	movq	-128(%rbp), %rsi        # 8-byte Reload
	xorb	(%rsi,%rdx), %r9b
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movb	%r9b, (%rdx,%rdi)
# %bb.18:                               #   in Loop: Header=BB9_16 Depth=2
	movl	-168(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB9_16
.LBB9_19:                               #   in Loop: Header=BB9_12 Depth=1
	movl	$8, %eax
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movl	$1, (%rcx)
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB9_20:                               #   Parent Loop BB9_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-180(%rbp), %eax        # 4-byte Reload
	cmpl	$16, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jae	.LBB9_23
# %bb.21:                               #   in Loop: Header=BB9_20 Depth=2
	movl	-184(%rbp), %eax        # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movl	(%rsi), %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movzbl	(%rdi,%rdx), %r8d
	addl	%r8d, %ecx
	movl	%ecx, (%rsi)
	movl	%eax, %ecx
	movl	%ecx, %edx
	movl	(%rsi), %ecx
	movb	%cl, %r9b
	movb	%r9b, (%rdi,%rdx)
	movl	(%rsi), %ecx
	shrl	$8, %ecx
	movl	%ecx, (%rsi)
# %bb.22:                               #   in Loop: Header=BB9_20 Depth=2
	movl	-184(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB9_20
.LBB9_23:                               #   in Loop: Header=BB9_12 Depth=1
	jmp	.LBB9_14
.LBB9_24:
	movq	-112(%rbp), %rax        # 8-byte Reload
	shlq	$6, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	callq	_crypto_core_salsa20
	xorl	%r8d, %r8d
	movl	%r8d, %eax
	movq	-112(%rbp), %rcx        # 8-byte Reload
	shlq	$6, %rcx
	movq	-56(%rbp), %rdx         # 8-byte Reload
	addq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	shlq	$6, %rcx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	addq	%rcx, %rsi
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB9_27
.LBB9_25:
	jmp	.LBB9_26
.LBB9_26:
	xorl	%eax, %eax
	movl	$32, %ecx
	movl	%ecx, %edx
	movl	$64, %ecx
	movl	%ecx, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	-224(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	memset
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-236(%rbp), %esi        # 4-byte Reload
	movq	-232(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movl	-236(%rbp), %eax        # 4-byte Reload
	movq	%rbp, %rsp
	popq	%rbp
	retq
.LBB9_27:                               # =>This Inner Loop Header: Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jae	.LBB9_30
# %bb.28:                               #   in Loop: Header=BB9_27 Depth=1
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movb	(%rax,%rcx), %dl
	movq	-128(%rbp), %rsi        # 8-byte Reload
	xorb	(%rsi,%rcx), %dl
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movb	%dl, (%rdi,%rcx)
# %bb.29:                               #   in Loop: Header=BB9_27 Depth=1
	movq	-248(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB9_27
.LBB9_30:
	jmp	.LBB9_26
.Lfunc_end9:
	.size	_crypto_stream_salsa20_xor_ic, .Lfunc_end9-_crypto_stream_salsa20_xor_ic
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_stream_xsalsa20_xor_ic
	.type	_crypto_stream_xsalsa20_xor_ic,@function
_crypto_stream_xsalsa20_xor_ic:         # @_crypto_stream_xsalsa20_xor_ic
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$136, %rsp
	.cfi_def_cfa_offset 160
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	160(%rsp), %rax
	leaq	99(%rsp), %r10
	xorl	%r11d, %r11d
	movl	$32, %ebx
	movl	%ebx, %r14d
	movl	$0, 132(%rsp)
	movb	$1, 131(%rsp)
	movq	%rdi, 88(%rsp)          # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, 80(%rsp)          # 8-byte Spill
	movl	%r11d, %esi
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	%r14, %rdx
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	%r9, 56(%rsp)           # 8-byte Spill
	movq	%r8, 48(%rsp)           # 8-byte Spill
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%r10, 32(%rsp)          # 8-byte Spill
	callq	memset
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	64(%rsp), %rdx          # 8-byte Reload
	callq	_crypto_core_hsalsa20
	leaq	99(%rsp), %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	addq	$16, %rcx
	movq	88(%rsp), %rdi          # 8-byte Reload
	movq	80(%rsp), %rsi          # 8-byte Reload
	movq	72(%rsp), %rdx          # 8-byte Reload
	movq	40(%rsp), %r8           # 8-byte Reload
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%r8, %rcx
	movq	24(%rsp), %r8           # 8-byte Reload
	movq	56(%rsp), %r9           # 8-byte Reload
	movq	%rax, (%rsp)
	callq	_crypto_stream_salsa20_xor_ic
	leaq	99(%rsp), %rdi
	xorl	%esi, %esi
	movl	$32, %r11d
	movl	%r11d, %edx
	movl	%eax, 20(%rsp)          # 4-byte Spill
	callq	memset
	movl	20(%rsp), %eax          # 4-byte Reload
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end10:
	.size	_crypto_stream_xsalsa20_xor_ic, .Lfunc_end10-_crypto_stream_xsalsa20_xor_ic
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_stream_xsalsa20_xor
	.type	_crypto_stream_xsalsa20_xor,@function
_crypto_stream_xsalsa20_xor:            # @_crypto_stream_xsalsa20_xor
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	movl	%eax, %r10d
	movl	$0, 20(%rsp)
	movb	$1, 19(%rsp)
	movq	%r9, 8(%rsp)            # 8-byte Spill
	movq	%r10, %r9
	movq	8(%rsp), %r10           # 8-byte Reload
	movq	%r10, (%rsp)
	callq	_crypto_stream_xsalsa20_xor_ic
	addq	$24, %rsp
	retq
.Lfunc_end11:
	.size	_crypto_stream_xsalsa20_xor, .Lfunc_end11-_crypto_stream_xsalsa20_xor
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_secretbox_xsalsa20poly1305
	.type	_crypto_secretbox_xsalsa20poly1305,@function
_crypto_secretbox_xsalsa20poly1305:     # @_crypto_secretbox_xsalsa20poly1305
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movb	$0, 87(%rsp)
	movb	$1, 86(%rsp)
	cmpq	$32, %rcx
	movq	%r8, 72(%rsp)           # 8-byte Spill
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movq	%r9, 32(%rsp)           # 8-byte Spill
	jae	.LBB12_2
# %bb.1:
	xorl	%eax, %eax
	movb	%al, %cl
	movb	%cl, %al
	addq	$88, %rsp
	retq
.LBB12_2:
	jmp	.LBB12_3
.LBB12_3:
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	56(%rsp), %rdx          # 8-byte Reload
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	72(%rsp), %r8           # 8-byte Reload
	movq	32(%rsp), %r9           # 8-byte Reload
	callq	_crypto_stream_xsalsa20_xor
	movq	40(%rsp), %rcx          # 8-byte Reload
	addq	$16, %rcx
	movq	48(%rsp), %rdx          # 8-byte Reload
	subq	$32, %rdx
	movq	40(%rsp), %rsi          # 8-byte Reload
	addq	$32, %rsi
	movq	%rcx, %rdi
	movq	40(%rsp), %rcx          # 8-byte Reload
	movl	%eax, 28(%rsp)          # 4-byte Spill
	callq	_crypto_onetimeauth_poly1305
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movq	%rcx, 16(%rsp)          # 8-byte Spill
.LBB12_4:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	cmpq	$16, %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	jae	.LBB12_7
# %bb.5:                                #   in Loop: Header=BB12_4 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
	movb	$0, (%rax,%rcx)
# %bb.6:                                #   in Loop: Header=BB12_4 Depth=1
	movq	8(%rsp), %rax           # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	jmp	.LBB12_4
.LBB12_7:
	movb	$1, %al
	addq	$88, %rsp
	retq
.Lfunc_end12:
	.size	_crypto_secretbox_xsalsa20poly1305, .Lfunc_end12-_crypto_secretbox_xsalsa20poly1305
	.cfi_endproc
                                        # -- End function
	.globl	_crypto_secretbox       # -- Begin function _crypto_secretbox
	.p2align	4, 0x90
	.type	_crypto_secretbox,@function
_crypto_secretbox:                      # @_crypto_secretbox
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movb	$0, 7(%rsp)
	movb	$1, 6(%rsp)
	callq	_crypto_secretbox_xsalsa20poly1305
	movb	%al, %r10b
	movb	%r10b, 5(%rsp)          # 1-byte Spill
	popq	%rcx
	retq
.Lfunc_end13:
	.size	_crypto_secretbox, .Lfunc_end13-_crypto_secretbox
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_stream_salsa20
	.type	_crypto_stream_salsa20,@function
_crypto_stream_salsa20:                 # @_crypto_stream_salsa20
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movl	$0, -4(%rbp)
	movb	$1, -5(%rbp)
	cmpq	$0, %rsi
	movq	%rdx, -16(%rbp)         # 8-byte Spill
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jne	.LBB14_2
# %bb.1:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.LBB14_2:
	jmp	.LBB14_3
.LBB14_3:
	xorl	%eax, %eax
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	%rsp, %rsi
	movq	%rsi, %rdi
	addq	$-32, %rdi
	movq	%rdi, %rsp
	movq	-40(%rbp), %r8          # 8-byte Reload
	vmovups	(%r8), %ymm0
	vmovups	%ymm0, -32(%rsi)
	movq	%rsp, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movl	%eax, %esi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	vzeroupper
	callq	memset
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB14_4:                               # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	cmpl	$8, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jae	.LBB14_7
# %bb.5:                                #   in Loop: Header=BB14_4 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	movl	%eax, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movb	(%rdi,%rdx), %r8b
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movb	%r8b, (%rdx,%rsi)
# %bb.6:                                #   in Loop: Header=BB14_4 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB14_4
.LBB14_7:
	xorl	%eax, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	shrq	$6, %rcx
	movl	%ecx, %edx
	movl	%edx, -72(%rbp)         # 4-byte Spill
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB14_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_12 Depth 2
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	-72(%rbp), %ecx         # 4-byte Reload
	cmpl	%ecx, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jae	.LBB14_11
# %bb.9:                                #   in Loop: Header=BB14_8 Depth=1
	movl	$8, %eax
	movl	-80(%rbp), %ecx         # 4-byte Reload
	shll	$6, %ecx
	movl	%ecx, %edx
	movq	-32(%rbp), %rsi         # 8-byte Reload
	addq	%rdx, %rsi
	movq	%rsi, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	_crypto_core_salsa20
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movl	$1, (%rdx)
	movl	-84(%rbp), %eax         # 4-byte Reload
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB14_12
.LBB14_10:                              #   in Loop: Header=BB14_8 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB14_8
.LBB14_11:
	xorl	%esi, %esi
	movl	$64, %eax
	movl	%eax, %edx
	movq	%rsp, %rcx
	addq	$-64, %rcx
	movq	%rcx, %rsp
	movq	%rcx, %rdi
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	memset
	movl	-72(%rbp), %eax         # 4-byte Reload
	shll	$6, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	cmpq	%rdx, %rcx
	jb	.LBB14_16
	jmp	.LBB14_17
.LBB14_12:                              #   Parent Loop BB14_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-100(%rbp), %eax        # 4-byte Reload
	cmpl	$16, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jae	.LBB14_15
# %bb.13:                               #   in Loop: Header=BB14_12 Depth=2
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movl	(%rsi), %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movzbl	(%rdi,%rdx), %r8d
	addl	%r8d, %ecx
	movl	%ecx, (%rsi)
	movl	%eax, %ecx
	movl	%ecx, %edx
	movl	(%rsi), %ecx
	movb	%cl, %r9b
	movb	%r9b, (%rdi,%rdx)
	movl	(%rsi), %ecx
	shrl	$8, %ecx
	movl	%ecx, (%rsi)
# %bb.14:                               #   in Loop: Header=BB14_12 Depth=2
	movl	-116(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB14_12
.LBB14_15:                              #   in Loop: Header=BB14_8 Depth=1
	jmp	.LBB14_10
.LBB14_16:
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	_crypto_core_salsa20
	xorl	%eax, %eax
	movl	-72(%rbp), %ecx         # 4-byte Reload
	shll	$6, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	subq	%rdx, %rsi
	movl	%esi, %ecx
	movl	-72(%rbp), %r8d         # 4-byte Reload
	shll	$6, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-32(%rbp), %rsi         # 8-byte Reload
	addq	%rdx, %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB14_19
.LBB14_17:
	jmp	.LBB14_18
.LBB14_18:
	xorl	%eax, %eax
	movl	$32, %ecx
	movl	%ecx, %edx
	movl	$64, %ecx
	movl	%ecx, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	-144(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	memset
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movl	-156(%rbp), %eax        # 4-byte Reload
	movq	%rbp, %rsp
	popq	%rbp
	retq
.LBB14_19:                              # =>This Inner Loop Header: Depth=1
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	-132(%rbp), %ecx        # 4-byte Reload
	cmpl	%ecx, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jae	.LBB14_22
# %bb.20:                               #   in Loop: Header=BB14_19 Depth=1
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	movl	%eax, %ecx
	movl	%ecx, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movb	(%rdi,%rdx), %r8b
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movb	%r8b, (%rdx,%rsi)
# %bb.21:                               #   in Loop: Header=BB14_19 Depth=1
	movl	-160(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB14_19
.LBB14_22:
	jmp	.LBB14_18
.Lfunc_end14:
	.size	_crypto_stream_salsa20, .Lfunc_end14-_crypto_stream_salsa20
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_stream_xsalsa20
	.type	_crypto_stream_xsalsa20,@function
_crypto_stream_xsalsa20:                # @_crypto_stream_xsalsa20
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	leaq	51(%rsp), %rax
	xorl	%r8d, %r8d
	movl	$32, %r9d
	movl	%r9d, %r10d
	movl	$0, 84(%rsp)
	movb	$1, 83(%rsp)
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movl	%r8d, %esi
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%r10, %rdx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%rax, 8(%rsp)           # 8-byte Spill
	callq	memset
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	16(%rsp), %rdx          # 8-byte Reload
	callq	_crypto_core_hsalsa20
	leaq	51(%rsp), %rcx
	movq	24(%rsp), %rax          # 8-byte Reload
	addq	$16, %rax
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%rax, %rdx
	callq	_crypto_stream_salsa20
	leaq	51(%rsp), %rdi
	xorl	%esi, %esi
	movl	$32, %r8d
	movl	%r8d, %edx
	movl	%eax, 4(%rsp)           # 4-byte Spill
	callq	memset
	movl	4(%rsp), %eax           # 4-byte Reload
	addq	$88, %rsp
	retq
.Lfunc_end15:
	.size	_crypto_stream_xsalsa20, .Lfunc_end15-_crypto_stream_xsalsa20
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_secretbox_xsalsa20poly1305_open
	.type	_crypto_secretbox_xsalsa20poly1305_open,@function
_crypto_secretbox_xsalsa20poly1305_open: # @_crypto_secretbox_xsalsa20poly1305_open
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movb	$0, -1(%rbp)
	movb	$1, -2(%rbp)
	cmpq	$32, %rcx
	movq	%r8, -16(%rbp)          # 8-byte Spill
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, -56(%rbp)          # 8-byte Spill
	jae	.LBB16_2
# %bb.1:
	xorl	%eax, %eax
	movb	%al, %cl
	movb	%cl, %al
	movq	%rbp, %rsp
	popq	%rbp
	retq
.LBB16_2:
	jmp	.LBB16_3
.LBB16_3:
	movl	$32, %eax
	movl	%eax, %ecx
	xorl	%esi, %esi
	movq	%rsp, %rdx
	addq	$-32, %rdx
	movq	%rdx, %rsp
	movq	%rdx, %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	memset
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	_crypto_stream_xsalsa20
	movq	-32(%rbp), %rcx         # 8-byte Reload
	addq	$16, %rcx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	subq	$32, %rdx
	movq	-32(%rbp), %rsi         # 8-byte Reload
	addq	$32, %rsi
	movq	%rcx, %rdi
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	_crypto_onetimeauth_poly1305_verify
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB16_4
	jmp	.LBB16_5
.LBB16_4:
	xorl	%eax, %eax
	movb	%al, %cl
	movb	%cl, %al
	movq	%rbp, %rsp
	popq	%rbp
	retq
.LBB16_5:
	jmp	.LBB16_6
.LBB16_6:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-16(%rbp), %r8          # 8-byte Reload
	movq	-56(%rbp), %r9          # 8-byte Reload
	callq	_crypto_stream_xsalsa20_xor
	xorl	%r10d, %r10d
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movl	%r10d, -84(%rbp)        # 4-byte Spill
.LBB16_7:                               # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	cmpl	$32, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jae	.LBB16_10
# %bb.8:                                #   in Loop: Header=BB16_7 Depth=1
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movb	$0, (%rsi,%rdx)
# %bb.9:                                #   in Loop: Header=BB16_7 Depth=1
	movl	-88(%rbp), %eax         # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB16_7
.LBB16_10:
	movb	$1, %al
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	_crypto_secretbox_xsalsa20poly1305_open, .Lfunc_end16-_crypto_secretbox_xsalsa20poly1305_open
	.cfi_endproc
                                        # -- End function
	.globl	_crypto_secretbox_open  # -- Begin function _crypto_secretbox_open
	.p2align	4, 0x90
	.type	_crypto_secretbox_open,@function
_crypto_secretbox_open:                 # @_crypto_secretbox_open
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movb	$0, 7(%rsp)
	movb	$1, 6(%rsp)
	callq	_crypto_secretbox_xsalsa20poly1305_open
	movb	%al, %r10b
	movb	%r10b, 5(%rsp)          # 1-byte Spill
	popq	%rcx
	retq
.Lfunc_end17:
	.size	_crypto_secretbox_open, .Lfunc_end17-_crypto_secretbox_open
	.cfi_endproc
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
