	.text
	.file	"Module"
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
	subq	$384, %rsp              # imm = 0x180
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movw	16(%rbp), %ax
	movl	$0, -132(%rbp)
	movb	$1, -133(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movl	$1, -164(%rbp)
	movzwl	%ax, %r9d
	cmpl	$770, %r9d              # imm = 0x302
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%r8, -184(%rbp)         # 8-byte Spill
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	jb	.LBB0_2
# %bb.1:
	movq	-192(%rbp), %rax        # 8-byte Reload
	cmpq	$37, %rax
	jb	.LBB0_4
	jmp	.LBB0_5
.LBB0_2:
	cmpq	$21, -160(%rbp)
	jb	.LBB0_7
	jmp	.LBB0_8
.LBB0_3:
	movq	-144(%rbp), %rax
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rcx
	movq	-184(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	movq	-200(%rbp), %rax        # 8-byte Reload
	addq	%rcx, %rax
	xorl	%r9d, %r9d
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	-176(%rbp), %r8         # 8-byte Reload
	callq	aesni_cbc_encrypt
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movzbl	-1(%rax,%rcx), %r9d
	movq	%rsp, %rdx
	movq	%rdx, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movl	%r9d, -16(%rdx)
	movl	-160(%rbp), %r9d
	addl	$-21, %r9d
	movq	%rsp, %rdi
	movq	%rdi, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movl	%r9d, -16(%rdi)
	movl	-16(%rdi), %r9d
	movl	$255, %r10d
	subl	%r9d, %r10d
	sarl	$24, %r10d
	orl	%r10d, %r9d
	movl	%r9d, -16(%rdi)
	movzbl	-16(%rdi), %r9d
	movl	%r9d, -16(%rdi)
	movl	-16(%rdi), %r9d
	movl	-16(%rdx), %r10d
	movl	$0, -124(%rbp)
	movb	$1, -125(%rbp)
	movl	$0, -116(%rbp)
	movb	$1, -117(%rbp)
	movl	%r9d, %r11d
	xorl	%r10d, %r11d
	movl	%r9d, %ebx
	subl	%r10d, %ebx
	xorl	%r10d, %ebx
	orl	%ebx, %r11d
	xorl	%r11d, %r9d
	movl	$0, -108(%rbp)
	movb	$1, -109(%rbp)
	sarl	$31, %r9d
	movl	%r9d, %r10d
	notl	%r10d
	movl	-164(%rbp), %r11d
	andl	%r10d, %r11d
	movl	%r11d, -164(%rbp)
	movl	-16(%rdx), %r11d
	movl	-16(%rdi), %ebx
	movl	$0, -36(%rbp)
	movb	$1, -37(%rbp)
	andl	%r11d, %r10d
	andl	%ebx, %r9d
	orl	%r9d, %r10d
	movl	%r10d, -16(%rdx)
	movq	-160(%rbp), %rdi
	movl	-16(%rdx), %r9d
	addl	$21, %r9d
	movl	%r9d, %edx
	subq	%rdx, %rdi
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movq	%rdi, (%rdx)
	movq	(%rdx), %rdi
	shrq	$8, %rdi
	movb	%dil, %r14b
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movb	%r14b, 555(%rdi)
	movq	(%rdx), %r15
	shrq	$0, %r15
	movb	%r15b, %r14b
	movb	%r14b, 556(%rdi)
	addq	$436, %rdi              # imm = 0x1B4
	movq	-208(%rbp), %r15        # 8-byte Reload
	addq	$244, %r15
	vmovups	(%r15), %ymm0
	vmovups	32(%r15), %ymm1
	vmovups	64(%r15), %ymm2
	vmovups	%ymm2, 64(%rdi)
	vmovups	%ymm1, 32(%rdi)
	vmovups	%ymm0, (%rdi)
	movq	-208(%rbp), %rdi        # 8-byte Reload
	addq	$436, %rdi              # imm = 0x1B4
	movq	-208(%rbp), %r15        # 8-byte Reload
	addq	$544, %r15              # imm = 0x220
	movl	$13, %r9d
	movl	%r9d, %r12d
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	%r15, %rsi
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movq	%r12, %rdx
	movq	%r8, -232(%rbp)         # 8-byte Spill
	vzeroupper
	callq	_sha1_update
	movq	-160(%rbp), %rax
	subq	$20, %rax
	movq	%rax, -160(%rbp)
	cmpq	$320, -160(%rbp)        # imm = 0x140
	jae	.LBB0_10
	jmp	.LBB0_11
.LBB0_4:
	xorl	%eax, %eax
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_5:
	jmp	.LBB0_6
.LBB0_6:
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rcx
	movq	-176(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rdx)
	movq	-144(%rbp), %rcx
	addq	$16, %rcx
	movq	%rcx, -144(%rbp)
	movq	-152(%rbp), %rcx
	addq	$16, %rcx
	movq	%rcx, -152(%rbp)
	movq	-160(%rbp), %rcx
	subq	$16, %rcx
	movq	%rcx, -160(%rbp)
	jmp	.LBB0_3
.LBB0_7:
	xorl	%eax, %eax
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:
	jmp	.LBB0_3
.LBB0_10:
	movl	$64, %eax
	movl	-160(%rbp), %ecx
	addl	$-320, %ecx             # imm = 0xFEC0
	andl	$-64, %ecx
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movl	%ecx, (%rdx)
	movl	(%rdx), %ecx
	movq	-208(%rbp), %rsi        # 8-byte Reload
	subl	528(%rsi), %eax
	addl	%eax, %ecx
	movl	%ecx, (%rdx)
	movq	-152(%rbp), %rdi
	addq	$436, %rsi              # imm = 0x1B4
	movq	-200(%rbp), %r8         # 8-byte Reload
	addq	%rdi, %r8
	movl	(%rdx), %eax
	movl	%eax, %edi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	%r8, %rsi
	movq	-240(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	callq	_sha1_update
	movq	-152(%rbp), %rdx
	movq	-248(%rbp), %rsi        # 8-byte Reload
	movl	(%rsi), %eax
	movl	%eax, %edi
	addq	%rdi, %rdx
	movq	%rdx, -152(%rbp)
	movq	-160(%rbp), %rdx
	movl	(%rsi), %eax
	movl	%eax, %edi
	subq	%rdi, %rdx
	movq	%rdx, -160(%rbp)
	movq	-224(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rdi
	movl	(%rsi), %eax
	movl	%eax, %r8d
	subq	%r8, %rdi
	movq	%rdi, (%rdx)
	jmp	.LBB0_12
.LBB0_11:
	jmp	.LBB0_12
.LBB0_12:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-208(%rbp), %rdx        # 8-byte Reload
	movl	456(%rdx), %eax
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movl	(%rsi), %edi
	movl	%edi, %r8d
	movl	%eax, %r9d
	leal	(%r9,%r8,8), %eax
	movq	%rsp, %r8
	movq	%r8, %r9
	addq	$-16, %r9
	movq	%r9, %rsp
	movl	%eax, -16(%r8)
	movl	-16(%r8), %eax
	movl	$0, -44(%rbp)
	movb	$1, -45(%rbp)
	movl	%eax, %edi
	shll	$24, %edi
	movl	%eax, %r10d
	shrl	$8, %r10d
	movl	%eax, %r11d
	shll	$8, %r11d
	andl	$16711680, %r11d        # imm = 0xFF0000
	andl	$65280, %r10d           # imm = 0xFF00
	shrl	$24, %eax
	orl	%r10d, %eax
	orl	%r11d, %eax
	orl	%edi, %eax
	movl	%eax, -16(%r8)
	movq	%rsp, %r8
	movq	%r8, %rbx
	addq	$-32, %rbx
	movq	%rbx, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, -32(%r8)
	movl	$0, -16(%r8)
	movl	528(%rdx), %eax
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movl	%eax, (%r8)
	movq	-160(%rbp), %r14
	movq	%r14, -256(%rbp)        # 8-byte Spill
	movq	%r9, -264(%rbp)         # 8-byte Spill
	movq	%rbx, -272(%rbp)        # 8-byte Spill
	movq	%r8, -280(%rbp)         # 8-byte Spill
	movq	%rcx, -288(%rbp)        # 8-byte Spill
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jae	.LBB0_16
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	movq	-152(%rbp), %rax
	movq	-296(%rbp), %rcx        # 8-byte Reload
	addq	%rcx, %rax
	movq	-200(%rbp), %rdx        # 8-byte Reload
	movzbl	(%rdx,%rax), %esi
	movq	%rsp, %rax
	movq	%rax, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movl	%esi, -16(%rax)
	movq	-224(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %esi
	movl	%ecx, %r8d
	subl	%esi, %r8d
	sarl	$24, %r8d
	movq	%rsp, %r9
	addq	$-16, %r9
	movq	%r9, %rsp
	movl	%r8d, (%r9)
	movl	(%rdi), %esi
	andl	(%r9), %esi
	movl	%esi, (%rdi)
	movl	(%rdi), %esi
	movl	(%r9), %r8d
	xorl	$-1, %r8d
	andl	$128, %r8d
	movq	(%rax), %r10
	subq	%rcx, %r10
	movl	%r10d, %r11d
	sarl	$24, %r11d
	xorl	$-1, %r11d
	andl	%r11d, %r8d
	orl	%r8d, %esi
	movl	%esi, (%rdi)
	movq	-280(%rbp), %r10        # 8-byte Reload
	movl	(%r10), %esi
	movl	%esi, %ebx
	movl	(%rdi), %esi
	movb	%sil, %r14b
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movb	%r14b, 464(%rdi,%rbx)
	movl	(%r10), %esi
	addl	$1, %esi
	movl	%esi, (%r10)
	cmpl	$64, (%r10)
	movq	%r9, -304(%rbp)         # 8-byte Spill
	je	.LBB0_17
	jmp	.LBB0_18
.LBB0_15:                               #   in Loop: Header=BB0_13 Depth=1
	movq	-296(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB0_13
.LBB0_16:
	movl	-160(%rbp), %eax
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movl	%eax, (%rcx)
	movq	-280(%rbp), %rdx        # 8-byte Reload
	movl	(%rdx), %eax
	movl	%eax, %esi
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	movq	%rsi, -320(%rbp)        # 8-byte Spill
	jmp	.LBB0_20
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=1
	xorl	%eax, %eax
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	(%rcx), %rdx
	addq	$7, %rdx
	movq	-296(%rbp), %rsi        # 8-byte Reload
	subq	%rsi, %rdx
	movl	%edx, %edi
	shrl	$31, %edi
	subl	%edi, %eax
	movq	-304(%rbp), %rdx        # 8-byte Reload
	movl	%eax, (%rdx)
	movq	-264(%rbp), %r8         # 8-byte Reload
	movl	(%r8), %eax
	andl	(%rdx), %eax
	movb	$1, -46(%rbp)
	movq	-208(%rbp), %r9         # 8-byte Reload
	orl	524(%r9), %eax
	movl	%eax, 524(%r9)
	addq	$436, %r9               # imm = 0x1B4
	movq	-208(%rbp), %r10        # 8-byte Reload
	addq	$436, %r10              # imm = 0x1B4
	addq	$28, %r10
	movl	$1, %edx
	movq	%r9, %rdi
	movq	%r10, %rsi
	callq	sha1_block_data_order
	xorl	%eax, %eax
	movq	-304(%rbp), %rcx        # 8-byte Reload
	movl	(%rcx), %edx
	movq	-296(%rbp), %rsi        # 8-byte Reload
	movq	-224(%rbp), %rdi        # 8-byte Reload
	subq	(%rdi), %rsi
	subq	$72, %rsi
	movl	%esi, %r11d
	shrl	$31, %r11d
	subl	%r11d, %eax
	andl	%eax, %edx
	movl	%edx, (%rcx)
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movl	436(%rsi), %eax
	andl	(%rcx), %eax
	movb	$1, -47(%rbp)
	movq	-272(%rbp), %r8         # 8-byte Reload
	orl	(%r8), %eax
	movl	%eax, (%r8)
	movl	440(%rsi), %eax
	andl	(%rcx), %eax
	movb	$1, -48(%rbp)
	orl	4(%r8), %eax
	movl	%eax, 4(%r8)
	movl	444(%rsi), %eax
	andl	(%rcx), %eax
	movb	$1, -49(%rbp)
	orl	8(%r8), %eax
	movl	%eax, 8(%r8)
	movl	448(%rsi), %eax
	andl	(%rcx), %eax
	movb	$1, -50(%rbp)
	orl	12(%r8), %eax
	movl	%eax, 12(%r8)
	movl	452(%rsi), %eax
	andl	(%rcx), %eax
	movb	$1, -51(%rbp)
	orl	16(%r8), %eax
	movl	%eax, 16(%r8)
	movq	-280(%rbp), %r9         # 8-byte Reload
	movl	$0, (%r9)
	jmp	.LBB0_19
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_19
.LBB0_19:                               #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_15
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	movq	-320(%rbp), %rax        # 8-byte Reload
	cmpq	$64, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jae	.LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	-328(%rbp), %rcx        # 8-byte Reload
	movb	$0, 464(%rax,%rcx)
	movq	-312(%rbp), %rdx        # 8-byte Reload
	movl	(%rdx), %esi
	addl	$1, %esi
	movl	%esi, (%rdx)
# %bb.22:                               #   in Loop: Header=BB0_20 Depth=1
	movq	-328(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB0_20
.LBB0_23:
	movq	-280(%rbp), %rax        # 8-byte Reload
	cmpl	$56, (%rax)
	jbe	.LBB0_25
# %bb.24:
	movq	-224(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	addl	$8, %ecx
	movq	-312(%rbp), %rdx        # 8-byte Reload
	movl	(%rdx), %esi
	subl	%esi, %ecx
	sarl	$31, %ecx
	movq	%rsp, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movl	%ecx, (%rdi)
	movq	-264(%rbp), %r8         # 8-byte Reload
	movl	(%r8), %ecx
	andl	(%rdi), %ecx
	movb	$1, -52(%rbp)
	movq	-208(%rbp), %r9         # 8-byte Reload
	orl	524(%r9), %ecx
	movl	%ecx, 524(%r9)
	addq	$436, %r9               # imm = 0x1B4
	movq	-208(%rbp), %r10        # 8-byte Reload
	addq	$436, %r10              # imm = 0x1B4
	addq	$28, %r10
	movl	$1, %edx
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%r10, %rsi
	callq	sha1_block_data_order
	xorl	%ecx, %ecx
	movq	-336(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %edx
	movq	-312(%rbp), %rsi        # 8-byte Reload
	movl	(%rsi), %r11d
	movl	%r11d, %edi
	movq	-224(%rbp), %r8         # 8-byte Reload
	subq	(%r8), %rdi
	subq	$72, %rdi
	movl	%edi, %r11d
	shrl	$31, %r11d
	subl	%r11d, %ecx
	andl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movl	436(%rdi), %ecx
	andl	(%rax), %ecx
	movb	$1, -53(%rbp)
	movq	-272(%rbp), %r9         # 8-byte Reload
	orl	(%r9), %ecx
	movl	%ecx, (%r9)
	movl	440(%rdi), %ecx
	andl	(%rax), %ecx
	movb	$1, -54(%rbp)
	orl	4(%r9), %ecx
	movl	%ecx, 4(%r9)
	movl	444(%rdi), %ecx
	andl	(%rax), %ecx
	movb	$1, -55(%rbp)
	orl	8(%r9), %ecx
	movl	%ecx, 8(%r9)
	movl	448(%rdi), %ecx
	andl	(%rax), %ecx
	movb	$1, -56(%rbp)
	orl	12(%r9), %ecx
	movl	%ecx, 12(%r9)
	movl	452(%rdi), %ecx
	andl	(%rax), %ecx
	movb	$1, -57(%rbp)
	orl	16(%r9), %ecx
	movl	%ecx, 16(%r9)
	addq	$436, %rdi              # imm = 0x1B4
	addq	$28, %rdi
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 32(%rdi)
	vmovups	%ymm0, (%rdi)
	movl	(%rsi), %ecx
	addl	$64, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB0_26
.LBB0_25:
	jmp	.LBB0_26
.LBB0_26:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-208(%rbp), %rdx        # 8-byte Reload
	addq	$436, %rdx              # imm = 0x1B4
	movq	-208(%rbp), %rsi        # 8-byte Reload
	addq	$464, %rsi              # imm = 0x1D0
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movl	(%rdi), %eax
	movq	-208(%rbp), %r8         # 8-byte Reload
	movl	%eax, 524(%r8)
	movl	$1, %eax
	movq	%rdx, %rdi
	movq	%rdx, -344(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	vzeroupper
	callq	sha1_block_data_order
	movq	-312(%rbp), %rcx        # 8-byte Reload
	movl	(%rcx), %eax
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movl	(%rsi), %edx
	subl	%edx, %eax
	addl	$-72, %eax
	sarl	$31, %eax
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movl	436(%rdi), %edx
	andl	%eax, %edx
	movb	$1, -58(%rbp)
	movq	-272(%rbp), %r8         # 8-byte Reload
	movl	(%r8), %r9d
	orl	%edx, %r9d
	movl	%r9d, (%r8)
	movl	440(%rdi), %edx
	andl	%eax, %edx
	movb	$1, -59(%rbp)
	movl	4(%r8), %r9d
	orl	%edx, %r9d
	movl	%r9d, 4(%r8)
	movl	444(%rdi), %edx
	andl	%eax, %edx
	movb	$1, -60(%rbp)
	movl	8(%r8), %r9d
	orl	%edx, %r9d
	movl	%r9d, 8(%r8)
	movl	448(%rdi), %edx
	andl	%eax, %edx
	movb	$1, -61(%rbp)
	movl	12(%r8), %r9d
	orl	%edx, %r9d
	movl	%r9d, 12(%r8)
	movl	452(%rdi), %edx
	andl	%eax, %edx
	movb	$1, -62(%rbp)
	movl	16(%r8), %eax
	orl	%edx, %eax
	movl	%eax, 16(%r8)
	movl	(%r8), %eax
	movl	$0, -68(%rbp)
	movb	$1, -69(%rbp)
	movl	%eax, %edx
	shll	$24, %edx
	movl	%eax, %r9d
	shrl	$8, %r9d
	movl	%eax, %r10d
	shll	$8, %r10d
	andl	$16711680, %r10d        # imm = 0xFF0000
	andl	$65280, %r9d            # imm = 0xFF00
	shrl	$24, %eax
	orl	%r9d, %eax
	orl	%r10d, %eax
	orl	%edx, %eax
	movl	%eax, (%r8)
	movl	4(%r8), %eax
	movl	$0, -76(%rbp)
	movb	$1, -77(%rbp)
	movl	%eax, %edx
	shll	$24, %edx
	movl	%eax, %r9d
	shrl	$8, %r9d
	movl	%eax, %r10d
	shll	$8, %r10d
	andl	$16711680, %r10d        # imm = 0xFF0000
	andl	$65280, %r9d            # imm = 0xFF00
	shrl	$24, %eax
	orl	%r9d, %eax
	orl	%r10d, %eax
	orl	%edx, %eax
	movl	%eax, 4(%r8)
	movl	8(%r8), %eax
	movl	$0, -84(%rbp)
	movb	$1, -85(%rbp)
	movl	%eax, %edx
	shll	$24, %edx
	movl	%eax, %r9d
	shrl	$8, %r9d
	movl	%eax, %r10d
	shll	$8, %r10d
	andl	$16711680, %r10d        # imm = 0xFF0000
	andl	$65280, %r9d            # imm = 0xFF00
	shrl	$24, %eax
	orl	%r9d, %eax
	orl	%r10d, %eax
	orl	%edx, %eax
	movl	%eax, 8(%r8)
	movl	12(%r8), %eax
	movl	$0, -92(%rbp)
	movb	$1, -93(%rbp)
	movl	%eax, %edx
	shll	$24, %edx
	movl	%eax, %r9d
	shrl	$8, %r9d
	movl	%eax, %r10d
	shll	$8, %r10d
	andl	$16711680, %r10d        # imm = 0xFF0000
	andl	$65280, %r9d            # imm = 0xFF00
	shrl	$24, %eax
	orl	%r9d, %eax
	orl	%r10d, %eax
	orl	%edx, %eax
	movl	%eax, 12(%r8)
	movl	16(%r8), %eax
	movl	$0, -100(%rbp)
	movb	$1, -101(%rbp)
	movl	%eax, %edx
	shll	$24, %edx
	movl	%eax, %r9d
	shrl	$8, %r9d
	movl	%eax, %r10d
	shll	$8, %r10d
	andl	$16711680, %r10d        # imm = 0xFF0000
	andl	$65280, %r9d            # imm = 0xFF00
	shrl	$24, %eax
	orl	%r9d, %eax
	orl	%r10d, %eax
	orl	%edx, %eax
	movl	%eax, 16(%r8)
	movq	-160(%rbp), %r11
	addq	$20, %r11
	movq	%r11, -160(%rbp)
	vmovups	340(%rdi), %ymm0
	vmovups	372(%rdi), %ymm1
	vmovups	404(%rdi), %ymm2
	vmovups	%ymm2, 500(%rdi)
	vmovups	%ymm1, 468(%rdi)
	vmovups	%ymm0, 436(%rdi)
	movl	$20, %eax
	movl	%eax, %edx
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%r8, %rsi
	vzeroupper
	callq	_sha1_update
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	-344(%rbp), %rsi        # 8-byte Reload
	callq	SHA1_Final
	movq	-152(%rbp), %rcx
	movq	-224(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rsi
	addq	%rsi, %rcx
	movq	-192(%rbp), %rsi        # 8-byte Reload
	addq	$-1, %rsi
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movl	(%rdi), %eax
	movl	%eax, %r8d
	movl	%r8d, %eax
	subq	%r8, %rsi
	addq	$-20, %rsi
	subq	%rsi, %rcx
	addl	$20, %eax
	movl	%eax, (%rdi)
	movq	%rsp, %r8
	movq	%r8, %r11
	addq	$-16, %r11
	movq	%r11, %rsp
	movl	$0, -16(%r8)
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movl	$0, (%r8)
	movl	(%rdi), %eax
	movl	%eax, %ebx
	movq	-352(%rbp), %r14        # 8-byte Reload
	movq	%rsi, -360(%rbp)        # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%r11, -376(%rbp)        # 8-byte Spill
	movq	%r8, -384(%rbp)         # 8-byte Spill
	movq	%rbx, -392(%rbp)        # 8-byte Spill
	movq	%r14, -400(%rbp)        # 8-byte Spill
.LBB0_27:                               # =>This Inner Loop Header: Depth=1
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jae	.LBB0_30
# %bb.28:                               #   in Loop: Header=BB0_27 Depth=1
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	-408(%rbp), %rcx        # 8-byte Reload
	addq	%rcx, %rax
	movq	-200(%rbp), %rdx        # 8-byte Reload
	movzbl	(%rdx,%rax), %esi
	movq	-368(%rbp), %rax        # 8-byte Reload
	movl	%eax, %edi
	movl	%ecx, %r8d
	subl	%edi, %r8d
	addl	$-20, %r8d
	sarl	$31, %r8d
	movq	%rsp, %r9
	addq	$-16, %r9
	movq	%r9, %rsp
	movl	%r8d, (%r9)
	movq	-376(%rbp), %r10        # 8-byte Reload
	movl	(%r10), %edi
	movl	%esi, %r8d
	movq	-216(%rbp), %r11        # 8-byte Reload
	xorl	(%r11), %r8d
	movl	(%r9), %ebx
	xorl	$-1, %ebx
	andl	%ebx, %r8d
	orl	%r8d, %edi
	movl	%edi, (%r10)
	movl	(%r9), %edi
	subq	$1, %rax
	subq	%rcx, %rax
	movl	%eax, %r8d
	sarl	$31, %r8d
	andl	%r8d, %edi
	movl	%edi, (%r9)
	movq	-384(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %edi
	movl	%edi, %r14d
	movl	(%r10), %edi
	movq	-272(%rbp), %r15        # 8-byte Reload
	movzbl	(%r15,%r14), %r8d
	xorl	%r8d, %esi
	andl	(%r9), %esi
	orl	%esi, %edi
	movl	%edi, (%r10)
	movl	(%rax), %esi
	movl	(%r9), %edi
	andl	$1, %edi
	addl	%edi, %esi
	movl	%esi, (%rax)
# %bb.29:                               #   in Loop: Header=BB0_27 Depth=1
	movq	-408(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jmp	.LBB0_27
.LBB0_30:
	xorl	%eax, %eax
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movl	(%rcx), %edx
	subl	$20, %edx
	movl	%edx, (%rcx)
	movl	%eax, %edx
	movq	-376(%rbp), %rsi        # 8-byte Reload
	subl	(%rsi), %edx
	shrl	$31, %edx
	subl	%edx, %eax
	movl	%eax, (%rsi)
	movl	-164(%rbp), %eax
	movl	(%rsi), %edx
	xorl	$-1, %edx
	andl	%edx, %eax
	movl	%eax, -164(%rbp)
	movl	-164(%rbp), %eax
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_aesni_cbc_hmac_sha1_cipher, .Lfunc_end0-_aesni_cbc_hmac_sha1_cipher
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
