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
	pushq	%rbx
	subq	$408, %rsp              # imm = 0x198
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movw	16(%rbp), %ax
	movl	$0, -124(%rbp)
	movb	$1, -125(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -144(%rbp)
	movq	%rcx, -152(%rbp)
	movl	$1, -156(%rbp)
	movzwl	%ax, %r9d
	cmpl	$770, %r9d              # imm = 0x302
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%r8, -176(%rbp)         # 8-byte Spill
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	jb	.LBB0_2
# %bb.1:
	movq	-184(%rbp), %rax        # 8-byte Reload
	cmpq	$37, %rax
	jb	.LBB0_4
	jmp	.LBB0_5
.LBB0_2:
	cmpq	$21, -152(%rbp)
	jb	.LBB0_7
	jmp	.LBB0_8
.LBB0_3:
	movl	$13, %eax
	movl	%eax, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	addq	$96, %rcx
	movq	-136(%rbp), %rsi
	movq	-152(%rbp), %rdi
	movq	-144(%rbp), %r8
	movq	-176(%rbp), %r9         # 8-byte Reload
	addq	%rsi, %r9
	movq	-192(%rbp), %rsi        # 8-byte Reload
	addq	%r8, %rsi
	xorl	%eax, %eax
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	-208(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	-200(%rbp), %r9         # 8-byte Reload
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	movq	%r9, %rcx
	movq	-168(%rbp), %r8         # 8-byte Reload
	movl	%eax, %r9d
	callq	aesni_cbc_encrypt
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	-184(%rbp), %rdx        # 8-byte Reload
	movzbl	-1(%rcx,%rdx), %eax
	movq	%rsp, %rsi
	movq	%rsi, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movl	%eax, -16(%rsi)
	movl	-152(%rbp), %eax
	addl	$-21, %eax
	movq	%rsp, %r8
	movq	%r8, %r10
	addq	$-16, %r10
	movq	%r10, %rsp
	movl	%eax, -16(%r8)
	movl	-16(%r8), %eax
	movl	$255, %r9d
	subl	%eax, %r9d
	sarl	$24, %r9d
	orl	%r9d, %eax
	movl	%eax, -16(%r8)
	movzbl	-16(%r8), %eax
	movl	%eax, -16(%r8)
	movl	-16(%r8), %eax
	movl	-16(%rsi), %r9d
	movl	$0, -116(%rbp)
	movb	$1, -117(%rbp)
	movl	$0, -108(%rbp)
	movb	$1, -109(%rbp)
	movl	%eax, %r11d
	xorl	%r9d, %r11d
	movl	%eax, %ebx
	subl	%r9d, %ebx
	xorl	%r9d, %ebx
	orl	%ebx, %r11d
	xorl	%r11d, %eax
	movl	$0, -100(%rbp)
	movb	$1, -101(%rbp)
	sarl	$31, %eax
	movl	%eax, %r9d
	notl	%r9d
	movl	-156(%rbp), %r11d
	andl	%r9d, %r11d
	movl	%r11d, -156(%rbp)
	movl	-16(%rsi), %r11d
	movl	-16(%r8), %ebx
	movl	$0, -28(%rbp)
	movb	$1, -29(%rbp)
	andl	%r11d, %r9d
	andl	%ebx, %eax
	orl	%eax, %r9d
	movl	%r9d, -16(%rsi)
	movq	-152(%rbp), %r8
	movl	-16(%rsi), %eax
	addl	$21, %eax
	movl	%eax, %esi
	subq	%rsi, %r8
	movq	%rsp, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movq	%r8, (%rsi)
	movq	(%rsi), %r8
	shrq	$8, %r8
	movb	%r8b, %r14b
	movq	-200(%rbp), %r8         # 8-byte Reload
	movb	%r14b, 555(%r8)
	movq	(%rsi), %r15
	shrq	$0, %r15
	movb	%r15b, %r14b
	movb	%r14b, 556(%r8)
	addq	$436, %r8               # imm = 0x1B4
	movq	-200(%rbp), %r15        # 8-byte Reload
	addq	$244, %r15
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	movq	%r15, %rsi
	movq	-224(%rbp), %rdx        # 8-byte Reload
	movq	%r10, -248(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-200(%rbp), %rcx        # 8-byte Reload
	addq	$436, %rcx              # imm = 0x1B4
	movq	-200(%rbp), %rdx        # 8-byte Reload
	addq	$544, %rdx              # imm = 0x220
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	-216(%rbp), %rdx        # 8-byte Reload
	callq	_sha1_update
	movq	-152(%rbp), %rcx
	subq	$20, %rcx
	movq	%rcx, -152(%rbp)
	cmpq	$320, -152(%rbp)        # imm = 0x140
	jae	.LBB0_10
	jmp	.LBB0_11
.LBB0_4:
	xorl	%eax, %eax
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_5:
	jmp	.LBB0_6
.LBB0_6:
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rcx
	movq	-168(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rdx)
	movq	-136(%rbp), %rcx
	addq	$16, %rcx
	movq	%rcx, -136(%rbp)
	movq	-144(%rbp), %rcx
	addq	$16, %rcx
	movq	%rcx, -144(%rbp)
	movq	-152(%rbp), %rcx
	subq	$16, %rcx
	movq	%rcx, -152(%rbp)
	jmp	.LBB0_3
.LBB0_7:
	xorl	%eax, %eax
	leaq	-24(%rbp), %rsp
	popq	%rbx
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
	movl	-152(%rbp), %ecx
	addl	$-320, %ecx             # imm = 0xFEC0
	andl	$-64, %ecx
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movl	%ecx, (%rdx)
	movl	(%rdx), %ecx
	movq	-200(%rbp), %rsi        # 8-byte Reload
	subl	528(%rsi), %eax
	addl	%eax, %ecx
	movl	%ecx, (%rdx)
	movq	-144(%rbp), %rdi
	addq	$436, %rsi              # imm = 0x1B4
	movq	-192(%rbp), %r8         # 8-byte Reload
	addq	%rdi, %r8
	movl	(%rdx), %eax
	movl	%eax, %edi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	%r8, %rsi
	movq	-256(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	callq	_sha1_update
	movq	-144(%rbp), %rdx
	movq	-264(%rbp), %rsi        # 8-byte Reload
	movl	(%rsi), %eax
	movl	%eax, %edi
	addq	%rdi, %rdx
	movq	%rdx, -144(%rbp)
	movq	-152(%rbp), %rdx
	movl	(%rsi), %eax
	movl	%eax, %edi
	subq	%rdi, %rdx
	movq	%rdx, -152(%rbp)
	movq	-240(%rbp), %rdx        # 8-byte Reload
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
	movq	-200(%rbp), %rdx        # 8-byte Reload
	movl	456(%rdx), %eax
	movq	-240(%rbp), %rsi        # 8-byte Reload
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
	movl	$0, -36(%rbp)
	movb	$1, -37(%rbp)
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
	xorps	%xmm0, %xmm0
	movups	%xmm0, -32(%r8)
	movl	$0, -16(%r8)
	movl	528(%rdx), %eax
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movl	%eax, (%r8)
	movq	-152(%rbp), %r14
	movq	%r14, -272(%rbp)        # 8-byte Spill
	movq	%r9, -280(%rbp)         # 8-byte Spill
	movq	%rbx, -288(%rbp)        # 8-byte Spill
	movq	%r8, -296(%rbp)         # 8-byte Spill
	movq	%rcx, -304(%rbp)        # 8-byte Spill
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jae	.LBB0_16
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	movq	-144(%rbp), %rax
	movq	-312(%rbp), %rcx        # 8-byte Reload
	addq	%rcx, %rax
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movzbl	(%rdx,%rax), %esi
	movq	%rsp, %rax
	movq	%rax, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movl	%esi, -16(%rax)
	movq	-240(%rbp), %rax        # 8-byte Reload
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
	movq	-296(%rbp), %r10        # 8-byte Reload
	movl	(%r10), %esi
	movl	%esi, %ebx
	movl	(%rdi), %esi
	movb	%sil, %r14b
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movb	%r14b, 464(%rdi,%rbx)
	movl	(%r10), %esi
	addl	$1, %esi
	movl	%esi, (%r10)
	cmpl	$64, (%r10)
	movq	%r9, -320(%rbp)         # 8-byte Spill
	je	.LBB0_17
	jmp	.LBB0_18
.LBB0_15:                               #   in Loop: Header=BB0_13 Depth=1
	movq	-312(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB0_13
.LBB0_16:
	movl	-152(%rbp), %eax
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movl	%eax, (%rcx)
	movq	-296(%rbp), %rdx        # 8-byte Reload
	movl	(%rdx), %eax
	movl	%eax, %esi
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	movq	%rsi, -336(%rbp)        # 8-byte Spill
	jmp	.LBB0_20
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %edx
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	(%rcx), %rsi
	addq	$7, %rsi
	movq	-312(%rbp), %rdi        # 8-byte Reload
	subq	%rdi, %rsi
	movl	%esi, %r8d
	shrl	$31, %r8d
	subl	%r8d, %eax
	movq	-320(%rbp), %rsi        # 8-byte Reload
	movl	%eax, (%rsi)
	movq	-280(%rbp), %r9         # 8-byte Reload
	movl	(%r9), %eax
	andl	(%rsi), %eax
	movb	$1, -38(%rbp)
	movq	-200(%rbp), %r10        # 8-byte Reload
	orl	524(%r10), %eax
	movl	%eax, 524(%r10)
	addq	$436, %r10              # imm = 0x1B4
	movq	-200(%rbp), %r11        # 8-byte Reload
	addq	$436, %r11              # imm = 0x1B4
	addq	$28, %r11
	movq	%r10, %rdi
	movq	%r11, %rsi
	callq	sha1_block_data_order
	xorl	%eax, %eax
	movq	-320(%rbp), %rcx        # 8-byte Reload
	movl	(%rcx), %edx
	movq	-312(%rbp), %rsi        # 8-byte Reload
	movq	-240(%rbp), %rdi        # 8-byte Reload
	subq	(%rdi), %rsi
	subq	$72, %rsi
	movl	%esi, %r8d
	shrl	$31, %r8d
	subl	%r8d, %eax
	andl	%eax, %edx
	movl	%edx, (%rcx)
	movq	-200(%rbp), %rsi        # 8-byte Reload
	movl	436(%rsi), %eax
	andl	(%rcx), %eax
	movb	$1, -39(%rbp)
	movq	-288(%rbp), %r9         # 8-byte Reload
	orl	(%r9), %eax
	movl	%eax, (%r9)
	movl	440(%rsi), %eax
	andl	(%rcx), %eax
	movb	$1, -40(%rbp)
	orl	4(%r9), %eax
	movl	%eax, 4(%r9)
	movl	444(%rsi), %eax
	andl	(%rcx), %eax
	movb	$1, -41(%rbp)
	orl	8(%r9), %eax
	movl	%eax, 8(%r9)
	movl	448(%rsi), %eax
	andl	(%rcx), %eax
	movb	$1, -42(%rbp)
	orl	12(%r9), %eax
	movl	%eax, 12(%r9)
	movl	452(%rsi), %eax
	andl	(%rcx), %eax
	movb	$1, -43(%rbp)
	orl	16(%r9), %eax
	movl	%eax, 16(%r9)
	movq	-296(%rbp), %r10        # 8-byte Reload
	movl	$0, (%r10)
	jmp	.LBB0_19
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_19
.LBB0_19:                               #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_15
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	movq	-336(%rbp), %rax        # 8-byte Reload
	cmpq	$64, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jae	.LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=1
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	-344(%rbp), %rcx        # 8-byte Reload
	movb	$0, 464(%rax,%rcx)
	movq	-328(%rbp), %rdx        # 8-byte Reload
	movl	(%rdx), %esi
	addl	$1, %esi
	movl	%esi, (%rdx)
# %bb.22:                               #   in Loop: Header=BB0_20 Depth=1
	movq	-344(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB0_20
.LBB0_23:
	movq	-296(%rbp), %rax        # 8-byte Reload
	cmpl	$56, (%rax)
	jbe	.LBB0_25
# %bb.24:
	movl	$1, %edx
	movq	-240(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	addl	$8, %ecx
	movq	-328(%rbp), %rsi        # 8-byte Reload
	movl	(%rsi), %edi
	subl	%edi, %ecx
	sarl	$31, %ecx
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movl	%ecx, (%r8)
	movq	-280(%rbp), %r9         # 8-byte Reload
	movl	(%r9), %ecx
	andl	(%r8), %ecx
	movb	$1, -44(%rbp)
	movq	-200(%rbp), %r10        # 8-byte Reload
	orl	524(%r10), %ecx
	movl	%ecx, 524(%r10)
	addq	$436, %r10              # imm = 0x1B4
	movq	-200(%rbp), %r11        # 8-byte Reload
	addq	$436, %r11              # imm = 0x1B4
	addq	$28, %r11
	movq	%r10, %rdi
	movq	%r11, %rsi
	movq	%r8, -352(%rbp)         # 8-byte Spill
	callq	sha1_block_data_order
	xorl	%ecx, %ecx
	movl	$64, %edx
                                        # kill: def %rdx killed %edx
	movq	-352(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ebx
	movq	-328(%rbp), %rsi        # 8-byte Reload
	movl	(%rsi), %r14d
	movl	%r14d, %edi
	movq	-240(%rbp), %r8         # 8-byte Reload
	subq	(%r8), %rdi
	subq	$72, %rdi
	movl	%edi, %r14d
	shrl	$31, %r14d
	movl	%ecx, %r15d
	subl	%r14d, %r15d
	andl	%r15d, %ebx
	movl	%ebx, (%rax)
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movl	436(%rdi), %ebx
	andl	(%rax), %ebx
	movb	$1, -45(%rbp)
	movq	-288(%rbp), %r9         # 8-byte Reload
	orl	(%r9), %ebx
	movl	%ebx, (%r9)
	movl	440(%rdi), %ebx
	andl	(%rax), %ebx
	movb	$1, -46(%rbp)
	orl	4(%r9), %ebx
	movl	%ebx, 4(%r9)
	movl	444(%rdi), %ebx
	andl	(%rax), %ebx
	movb	$1, -47(%rbp)
	orl	8(%r9), %ebx
	movl	%ebx, 8(%r9)
	movl	448(%rdi), %ebx
	andl	(%rax), %ebx
	movb	$1, -48(%rbp)
	orl	12(%r9), %ebx
	movl	%ebx, 12(%r9)
	movl	452(%rdi), %ebx
	andl	(%rax), %ebx
	movb	$1, -49(%rbp)
	orl	16(%r9), %ebx
	movl	%ebx, 16(%r9)
	addq	$436, %rdi              # imm = 0x1B4
	addq	$28, %rdi
	movl	%ecx, %esi
	callq	memset
	movq	-328(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	addl	$64, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB0_26
.LBB0_25:
	jmp	.LBB0_26
.LBB0_26:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-200(%rbp), %rdx        # 8-byte Reload
	addq	$436, %rdx              # imm = 0x1B4
	movq	-200(%rbp), %rsi        # 8-byte Reload
	addq	$464, %rsi              # imm = 0x1D0
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movl	(%rdi), %eax
	movq	-200(%rbp), %r8         # 8-byte Reload
	movl	%eax, 524(%r8)
	movl	$1, %eax
	movq	%rdx, %rdi
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	callq	sha1_block_data_order
	movq	-328(%rbp), %rcx        # 8-byte Reload
	movl	(%rcx), %eax
	movq	-240(%rbp), %rsi        # 8-byte Reload
	movl	(%rsi), %edx
	subl	%edx, %eax
	addl	$-72, %eax
	sarl	$31, %eax
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movl	436(%rdi), %edx
	andl	%eax, %edx
	movb	$1, -50(%rbp)
	movq	-288(%rbp), %r8         # 8-byte Reload
	movl	(%r8), %r9d
	orl	%edx, %r9d
	movl	%r9d, (%r8)
	movl	440(%rdi), %edx
	andl	%eax, %edx
	movb	$1, -51(%rbp)
	movl	4(%r8), %r9d
	orl	%edx, %r9d
	movl	%r9d, 4(%r8)
	movl	444(%rdi), %edx
	andl	%eax, %edx
	movb	$1, -52(%rbp)
	movl	8(%r8), %r9d
	orl	%edx, %r9d
	movl	%r9d, 8(%r8)
	movl	448(%rdi), %edx
	andl	%eax, %edx
	movb	$1, -53(%rbp)
	movl	12(%r8), %r9d
	orl	%edx, %r9d
	movl	%r9d, 12(%r8)
	movl	452(%rdi), %edx
	andl	%eax, %edx
	movb	$1, -54(%rbp)
	movl	16(%r8), %eax
	orl	%edx, %eax
	movl	%eax, 16(%r8)
	movl	(%r8), %eax
	movl	$0, -60(%rbp)
	movb	$1, -61(%rbp)
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
	movl	%eax, 4(%r8)
	movl	8(%r8), %eax
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
	movl	%eax, 8(%r8)
	movl	12(%r8), %eax
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
	movl	%eax, 12(%r8)
	movl	16(%r8), %eax
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
	movl	%eax, 16(%r8)
	movq	-152(%rbp), %r11
	addq	$20, %r11
	movq	%r11, -152(%rbp)
	movups	420(%rdi), %xmm0
	movups	%xmm0, 516(%rdi)
	movups	404(%rdi), %xmm0
	movups	%xmm0, 500(%rdi)
	movups	340(%rdi), %xmm0
	movups	356(%rdi), %xmm1
	movups	372(%rdi), %xmm2
	movups	388(%rdi), %xmm3
	movups	%xmm3, 484(%rdi)
	movups	%xmm2, 468(%rdi)
	movups	%xmm1, 452(%rdi)
	movups	%xmm0, 436(%rdi)
	movl	$20, %eax
	movl	%eax, %edx
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%r8, %rsi
	callq	_sha1_update
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	-360(%rbp), %rsi        # 8-byte Reload
	callq	SHA1_Final
	movq	-144(%rbp), %rcx
	movq	-240(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rsi
	addq	%rsi, %rcx
	movq	-184(%rbp), %rsi        # 8-byte Reload
	addq	$-1, %rsi
	movq	-248(%rbp), %rdi        # 8-byte Reload
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
	movq	-368(%rbp), %r14        # 8-byte Reload
	movq	%rsi, -376(%rbp)        # 8-byte Spill
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	movq	%r11, -392(%rbp)        # 8-byte Spill
	movq	%r8, -400(%rbp)         # 8-byte Spill
	movq	%rbx, -408(%rbp)        # 8-byte Spill
	movq	%r14, -416(%rbp)        # 8-byte Spill
.LBB0_27:                               # =>This Inner Loop Header: Depth=1
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	-408(%rbp), %rcx        # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jae	.LBB0_30
# %bb.28:                               #   in Loop: Header=BB0_27 Depth=1
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	-424(%rbp), %rcx        # 8-byte Reload
	addq	%rcx, %rax
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movzbl	(%rdx,%rax), %esi
	movq	-384(%rbp), %rax        # 8-byte Reload
	movl	%eax, %edi
	movl	%ecx, %r8d
	subl	%edi, %r8d
	addl	$-20, %r8d
	sarl	$31, %r8d
	movq	%rsp, %r9
	addq	$-16, %r9
	movq	%r9, %rsp
	movl	%r8d, (%r9)
	movq	-392(%rbp), %r10        # 8-byte Reload
	movl	(%r10), %edi
	movl	%esi, %r8d
	movq	-232(%rbp), %r11        # 8-byte Reload
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
	movq	-400(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %edi
	movl	%edi, %r14d
	movl	(%r10), %edi
	movq	-288(%rbp), %r15        # 8-byte Reload
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
	movq	-424(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jmp	.LBB0_27
.LBB0_30:
	xorl	%eax, %eax
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movl	(%rcx), %edx
	subl	$20, %edx
	movl	%edx, (%rcx)
	movl	%eax, %edx
	movq	-392(%rbp), %rsi        # 8-byte Reload
	subl	(%rsi), %edx
	shrl	$31, %edx
	subl	%edx, %eax
	movl	%eax, (%rsi)
	movl	-156(%rbp), %eax
	movl	(%rsi), %edx
	xorl	$-1, %edx
	andl	%edx, %eax
	movl	%eax, -156(%rbp)
	movl	-156(%rbp), %eax
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_aesni_cbc_hmac_sha1_cipher, .Lfunc_end0-_aesni_cbc_hmac_sha1_cipher
	.cfi_endproc
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
