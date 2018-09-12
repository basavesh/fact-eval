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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$328, %rsp              # imm = 0x148
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movw	24(%rbp), %ax
	movq	16(%rbp), %r9
	movl	$0, -108(%rbp)
	movb	$1, -109(%rbp)
	movl	$0, -116(%rbp)
	movl	$0, -120(%rbp)
	movl	%ecx, %r10d
	movl	%r10d, -124(%rbp)
	movl	$1, -128(%rbp)
	movzwl	%ax, %r10d
	cmpl	$770, %r10d             # imm = 0x302
	movq	%r9, -136(%rbp)         # 8-byte Spill
	movq	%r8, -144(%rbp)         # 8-byte Spill
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	jb	.LBB0_2
# %bb.1:
	cmpl	$37, -124(%rbp)
	jb	.LBB0_4
	jmp	.LBB0_5
.LBB0_2:
	cmpl	$21, -124(%rbp)
	jb	.LBB0_7
	jmp	.LBB0_8
.LBB0_3:
	xorl	%eax, %eax
	movl	%eax, %ecx
	addq	$96, %rcx
	movl	-116(%rbp), %eax
	movl	%eax, %edx
	movl	-124(%rbp), %eax
	movl	%eax, %esi
	movl	-120(%rbp), %eax
	movl	%eax, %edi
	movq	-144(%rbp), %r8         # 8-byte Reload
	addq	%rdx, %r8
	movq	-160(%rbp), %rdx        # 8-byte Reload
	addq	%rdi, %rdx
	xorl	%eax, %eax
	movq	%r8, %rdi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-184(%rbp), %rdx        # 8-byte Reload
	movq	-168(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-176(%rbp), %r8         # 8-byte Reload
	movl	%eax, %r9d
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	aesni_cbc_encrypt
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movzbl	-1(%rcx,%rdx), %eax
	movq	%rsp, %rsi
	movq	%rsi, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movl	%eax, -16(%rsi)
	movl	-124(%rbp), %eax
	addl	$-21, %eax
	movl	%eax, %r9d
	subl	$255, %r9d
	movl	$255, %r10d
	cmoval	%r10d, %eax
	movl	-16(%rsi), %r10d
	movl	%r10d, %r11d
	subl	%eax, %r11d
	cmoval	%eax, %r10d
	movl	%r10d, -16(%rsi)
	movl	-128(%rbp), %r10d
	movl	-196(%rbp), %ebx        # 4-byte Reload
	cmoval	%ebx, %r10d
	movl	%r10d, -128(%rbp)
	movl	-124(%rbp), %r10d
	movl	-16(%rsi), %r14d
	addl	$21, %r14d
	subl	%r14d, %r10d
	movq	%rsp, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movl	%r10d, (%rsi)
	movq	-136(%rbp), %r8         # 8-byte Reload
	subq	$2, %r8
	movl	(%rsi), %r10d
	movw	%r10w, %r15w
	movb	$1, -47(%rbp)
	movw	%r15w, %r12w
	shrw	$8, %r12w
	movb	%r12b, %r13b
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movb	%r13b, 544(%rcx,%r8)
	movb	%r15b, %r13b
	movb	%r13b, 545(%rcx,%r8)
	addq	$436, %rcx              # imm = 0x1B4
	movq	-168(%rbp), %r8         # 8-byte Reload
	addq	$244, %r8
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movl	%r11d, -220(%rbp)       # 4-byte Spill
	movl	%eax, -224(%rbp)        # 4-byte Spill
	movl	%r9d, -228(%rbp)        # 4-byte Spill
	callq	memcpy
	movq	-168(%rbp), %rcx        # 8-byte Reload
	addq	$436, %rcx              # imm = 0x1B4
	movq	-168(%rbp), %rdx        # 8-byte Reload
	addq	$544, %rdx              # imm = 0x220
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	-136(%rbp), %rdx        # 8-byte Reload
	callq	_sha1_update
	movl	-124(%rbp), %eax
	subl	$20, %eax
	movl	%eax, -124(%rbp)
	cmpl	$320, -124(%rbp)        # imm = 0x140
	jae	.LBB0_10
	jmp	.LBB0_11
.LBB0_4:
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_5:
	jmp	.LBB0_6
.LBB0_6:
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rcx
	movq	-176(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rdx)
	movl	-116(%rbp), %esi
	addl	$16, %esi
	movl	%esi, -116(%rbp)
	movl	-120(%rbp), %esi
	addl	$16, %esi
	movl	%esi, -120(%rbp)
	movl	-124(%rbp), %esi
	subl	$16, %esi
	movl	%esi, -124(%rbp)
	jmp	.LBB0_3
.LBB0_7:
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:
	jmp	.LBB0_3
.LBB0_10:
	movl	-124(%rbp), %eax
	subl	$320, %eax              # imm = 0x140
	andl	$-64, %eax
	addl	$64, %eax
	movq	-168(%rbp), %rcx        # 8-byte Reload
	subl	528(%rcx), %eax
	movl	-120(%rbp), %edx
	movl	%edx, %esi
	addq	$436, %rcx              # imm = 0x1B4
	movq	-160(%rbp), %rdi        # 8-byte Reload
	addq	%rsi, %rdi
	movl	%eax, %edx
                                        # kill: def %rdx killed %edx
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-240(%rbp), %rsi        # 8-byte Reload
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	_sha1_update
	movl	-244(%rbp), %eax        # 4-byte Reload
	addl	-120(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	movl	-244(%rbp), %r8d        # 4-byte Reload
	subl	%r8d, %eax
	movl	%eax, -124(%rbp)
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movl	(%rcx), %eax
	subl	%r8d, %eax
	movl	%eax, (%rcx)
	jmp	.LBB0_12
.LBB0_11:
	jmp	.LBB0_12
.LBB0_12:
	xorl	%eax, %eax
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movl	456(%rcx), %edx
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movl	(%rsi), %edi
	movl	%edi, %r8d
	movl	%edx, %r9d
	leal	(%r9,%r8,8), %edx
	movl	$0, -44(%rbp)
	movb	$1, -45(%rbp)
	movl	%edx, %edi
	shll	$24, %edi
	movl	%edx, %r10d
	shrl	$8, %r10d
	movl	%edx, %r11d
	shll	$8, %r11d
	andl	$16711680, %r11d        # imm = 0xFF0000
	andl	$65280, %r10d           # imm = 0xFF00
	shrl	$24, %edx
	orl	%r10d, %edx
	orl	%r11d, %edx
	orl	%edi, %edx
	movq	%rsp, %r8
	movq	%r8, %r9
	addq	$-32, %r9
	movq	%r9, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, -32(%r8)
	movl	$0, -16(%r8)
	movl	528(%rcx), %edi
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movl	%edi, (%r8)
	movl	-124(%rbp), %edi
	movl	%edi, -248(%rbp)        # 4-byte Spill
	movl	%edx, -252(%rbp)        # 4-byte Spill
	movq	%r9, -264(%rbp)         # 8-byte Spill
	movq	%r8, -272(%rbp)         # 8-byte Spill
	movl	%eax, -276(%rbp)        # 4-byte Spill
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	-248(%rbp), %ecx        # 4-byte Reload
	cmpl	%ecx, %eax
	movl	%eax, -280(%rbp)        # 4-byte Spill
	jae	.LBB0_16
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	movq	-272(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, %edx
	movl	-280(%rbp), %ecx        # 4-byte Reload
	addl	-120(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	movl	-280(%rbp), %ecx        # 4-byte Reload
	movq	-216(%rbp), %rdi        # 8-byte Reload
	cmpl	(%rdi), %ecx
	setb	%r8b
	movq	-160(%rbp), %r9         # 8-byte Reload
	movb	(%r9,%rsi), %r10b
	cmpl	(%rdi), %ecx
	sete	%r11b
	movl	$128, %ebx
	xorl	%r14d, %r14d
	#APP
	testb	%r11b, %r11b
	movl	%r14d, %r15d
	cmovnel	%ebx, %r15d
	#NO_APP
	movb	%r15b, %r11b
	movzbl	%r10b, %ebx
	movzbl	%r11b, %r14d
	#APP
	testb	%r8b, %r8b
	movl	%r14d, %r15d
	cmovnel	%ebx, %r15d
	#NO_APP
	movb	%r15b, %r8b
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movb	%r8b, 464(%rsi,%rdx)
	movl	(%rax), %ebx
	addl	$1, %ebx
	movl	%ebx, (%rax)
	cmpl	$64, (%rax)
	je	.LBB0_17
	jmp	.LBB0_18
.LBB0_15:                               #   in Loop: Header=BB0_13 Depth=1
	movl	-280(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jmp	.LBB0_13
.LBB0_16:
	movl	-124(%rbp), %eax
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movl	%eax, (%rcx)
	movq	-272(%rbp), %rdx        # 8-byte Reload
	movl	(%rdx), %eax
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	movl	%eax, -292(%rbp)        # 4-byte Spill
	jmp	.LBB0_20
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %edx
	movq	-216(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	addl	$7, %ecx
	movl	-280(%rbp), %esi        # 4-byte Reload
	cmpl	%esi, %ecx
	setb	%dil
	movb	$1, -46(%rbp)
	cmpl	%esi, %ecx
	movl	-252(%rbp), %ecx        # 4-byte Reload
	movq	-168(%rbp), %r8         # 8-byte Reload
	cmovael	524(%r8), %ecx
	movl	%ecx, 524(%r8)
	addq	$436, %r8               # imm = 0x1B4
	movq	-168(%rbp), %r9         # 8-byte Reload
	addq	$436, %r9               # imm = 0x1B4
	addq	$28, %r9
	movb	%dil, -293(%rbp)        # 1-byte Spill
	movq	%r8, %rdi
	movq	%r9, %rsi
	callq	sha1_block_data_order
	movq	-216(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	addl	$72, %ecx
	movl	-280(%rbp), %edx        # 4-byte Reload
	cmpl	%ecx, %edx
	setb	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %ecx
	xorl	%r11d, %r11d
	movb	-293(%rbp), %r10b       # 1-byte Reload
	#APP
	testb	%r10b, %r10b
	movl	%r11d, %ebx
	cmovnel	%ecx, %ebx
	#NO_APP
	movb	%bl, %r10b
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movl	436(%rsi), %ecx
	movb	$1, -48(%rbp)
	testb	$1, %r10b
	movq	-264(%rbp), %rdi        # 8-byte Reload
	cmovel	(%rdi), %ecx
	movl	%ecx, (%rdi)
	movl	440(%rsi), %ecx
	movb	$1, -49(%rbp)
	testb	$1, %r10b
	cmovel	4(%rdi), %ecx
	movl	%ecx, 4(%rdi)
	movl	444(%rsi), %ecx
	movb	$1, -50(%rbp)
	testb	$1, %r10b
	cmovel	8(%rdi), %ecx
	movl	%ecx, 8(%rdi)
	movl	448(%rsi), %ecx
	movb	$1, -51(%rbp)
	testb	$1, %r10b
	cmovel	12(%rdi), %ecx
	movl	%ecx, 12(%rdi)
	movl	452(%rsi), %ecx
	movb	$1, -52(%rbp)
	testb	$1, %r10b
	cmovel	16(%rdi), %ecx
	movl	%ecx, 16(%rdi)
	movq	-272(%rbp), %r8         # 8-byte Reload
	movl	$0, (%r8)
	jmp	.LBB0_19
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_19
.LBB0_19:                               #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_15
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	movl	-292(%rbp), %eax        # 4-byte Reload
	cmpl	$64, %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
	jae	.LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=1
	movl	-300(%rbp), %eax        # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movb	$0, 464(%rsi,%rdx)
	movq	-288(%rbp), %rdx        # 8-byte Reload
	movl	(%rdx), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rdx)
# %bb.22:                               #   in Loop: Header=BB0_20 Depth=1
	movl	-300(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
	jmp	.LBB0_20
.LBB0_23:
	movq	-272(%rbp), %rax        # 8-byte Reload
	cmpl	$56, (%rax)
	jbe	.LBB0_25
# %bb.24:
	movl	$1, %edx
	movq	-216(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	addl	$8, %ecx
	movq	-288(%rbp), %rsi        # 8-byte Reload
	movl	(%rsi), %edi
	cmpl	%edi, %ecx
	setb	%r8b
	movb	$1, -53(%rbp)
	cmpl	%edi, %ecx
	movl	-252(%rbp), %ecx        # 4-byte Reload
	movq	-168(%rbp), %r9         # 8-byte Reload
	cmovael	524(%r9), %ecx
	movl	%ecx, 524(%r9)
	addq	$436, %r9               # imm = 0x1B4
	movq	-168(%rbp), %r10        # 8-byte Reload
	addq	$436, %r10              # imm = 0x1B4
	addq	$28, %r10
	movq	%r9, %rdi
	movq	%r10, %rsi
	movb	%r8b, -301(%rbp)        # 1-byte Spill
	callq	sha1_block_data_order
	xorl	%esi, %esi
	movl	$64, %ecx
	movl	%ecx, %edx
	movq	-288(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movl	(%rdi), %r11d
	addl	$73, %r11d
	cmpl	%r11d, %ecx
	setb	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	xorl	%r11d, %r11d
	movb	-301(%rbp), %r8b        # 1-byte Reload
	#APP
	testb	%r8b, %r8b
	movl	%r11d, %ebx
	cmovnel	%ecx, %ebx
	#NO_APP
	movb	%bl, %r8b
	movq	-168(%rbp), %r9         # 8-byte Reload
	movl	436(%r9), %ecx
	movb	$1, -54(%rbp)
	testb	$1, %r8b
	movq	-264(%rbp), %r10        # 8-byte Reload
	cmovel	(%r10), %ecx
	movl	%ecx, (%r10)
	movl	440(%r9), %ecx
	movb	$1, -55(%rbp)
	testb	$1, %r8b
	cmovel	4(%r10), %ecx
	movl	%ecx, 4(%r10)
	movl	444(%r9), %ecx
	movb	$1, -56(%rbp)
	testb	$1, %r8b
	cmovel	8(%r10), %ecx
	movl	%ecx, 8(%r10)
	movl	448(%r9), %ecx
	movb	$1, -57(%rbp)
	testb	$1, %r8b
	cmovel	12(%r10), %ecx
	movl	%ecx, 12(%r10)
	movl	452(%r9), %ecx
	movb	$1, -58(%rbp)
	testb	$1, %r8b
	cmovel	16(%r10), %ecx
	movl	%ecx, 16(%r10)
	addq	$436, %r9               # imm = 0x1B4
	addq	$28, %r9
	movq	%r9, %rdi
	callq	memset
	movq	-288(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	addl	$64, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB0_26
.LBB0_25:
	jmp	.LBB0_26
.LBB0_26:
	xorl	%eax, %eax
	movq	-168(%rbp), %rcx        # 8-byte Reload
	addq	$436, %rcx              # imm = 0x1B4
	movq	-168(%rbp), %rdx        # 8-byte Reload
	addq	$464, %rdx              # imm = 0x1D0
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movl	-252(%rbp), %edi        # 4-byte Reload
	movl	%edi, 524(%rsi)
	movl	$1, %r8d
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movl	%r8d, %edx
	movl	%eax, -308(%rbp)        # 4-byte Spill
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	callq	sha1_block_data_order
	movq	-288(%rbp), %rcx        # 8-byte Reload
	movl	(%rcx), %eax
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movl	(%rsi), %edx
	addl	$73, %edx
	subl	%edx, %eax
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	436(%rdi), %edx
	movb	$1, -59(%rbp)
	movq	-264(%rbp), %r9         # 8-byte Reload
	movl	(%r9), %r8d
	cmovbl	%edx, %r8d
	movl	%r8d, (%r9)
	movl	440(%rdi), %edx
	movb	$1, -60(%rbp)
	movl	4(%r9), %r8d
	cmovbl	%edx, %r8d
	movl	%r8d, 4(%r9)
	movl	444(%rdi), %edx
	movb	$1, -61(%rbp)
	movl	8(%r9), %r8d
	cmovbl	%edx, %r8d
	movl	%r8d, 8(%r9)
	movl	448(%rdi), %edx
	movb	$1, -62(%rbp)
	movl	12(%r9), %r8d
	cmovbl	%edx, %r8d
	movl	%r8d, 12(%r9)
	movl	452(%rdi), %edx
	movb	$1, -63(%rbp)
	movl	16(%r9), %r8d
	cmovbl	%edx, %r8d
	movl	%r8d, 16(%r9)
	movl	(%r9), %edx
	movl	$0, -68(%rbp)
	movb	$1, -69(%rbp)
	movl	%edx, %r8d
	shll	$24, %r8d
	movl	%edx, %r10d
	shrl	$8, %r10d
	movl	%edx, %r11d
	shll	$8, %r11d
	andl	$16711680, %r11d        # imm = 0xFF0000
	andl	$65280, %r10d           # imm = 0xFF00
	shrl	$24, %edx
	orl	%r10d, %edx
	orl	%r11d, %edx
	orl	%r8d, %edx
	movl	%edx, (%r9)
	movl	4(%r9), %edx
	movl	$0, -76(%rbp)
	movb	$1, -77(%rbp)
	movl	%edx, %r8d
	shll	$24, %r8d
	movl	%edx, %r10d
	shrl	$8, %r10d
	movl	%edx, %r11d
	shll	$8, %r11d
	andl	$16711680, %r11d        # imm = 0xFF0000
	andl	$65280, %r10d           # imm = 0xFF00
	shrl	$24, %edx
	orl	%r10d, %edx
	orl	%r11d, %edx
	orl	%r8d, %edx
	movl	%edx, 4(%r9)
	movl	8(%r9), %edx
	movl	$0, -84(%rbp)
	movb	$1, -85(%rbp)
	movl	%edx, %r8d
	shll	$24, %r8d
	movl	%edx, %r10d
	shrl	$8, %r10d
	movl	%edx, %r11d
	shll	$8, %r11d
	andl	$16711680, %r11d        # imm = 0xFF0000
	andl	$65280, %r10d           # imm = 0xFF00
	shrl	$24, %edx
	orl	%r10d, %edx
	orl	%r11d, %edx
	orl	%r8d, %edx
	movl	%edx, 8(%r9)
	movl	12(%r9), %edx
	movl	$0, -92(%rbp)
	movb	$1, -93(%rbp)
	movl	%edx, %r8d
	shll	$24, %r8d
	movl	%edx, %r10d
	shrl	$8, %r10d
	movl	%edx, %r11d
	shll	$8, %r11d
	andl	$16711680, %r11d        # imm = 0xFF0000
	andl	$65280, %r10d           # imm = 0xFF00
	shrl	$24, %edx
	orl	%r10d, %edx
	orl	%r11d, %edx
	orl	%r8d, %edx
	movl	%edx, 12(%r9)
	movl	16(%r9), %edx
	movl	$0, -100(%rbp)
	movb	$1, -101(%rbp)
	movl	%edx, %r8d
	shll	$24, %r8d
	movl	%edx, %r10d
	shrl	$8, %r10d
	movl	%edx, %r11d
	shll	$8, %r11d
	andl	$16711680, %r11d        # imm = 0xFF0000
	andl	$65280, %r10d           # imm = 0xFF00
	shrl	$24, %edx
	orl	%r10d, %edx
	orl	%r11d, %edx
	orl	%r8d, %edx
	movl	%edx, 16(%r9)
	movl	-124(%rbp), %edx
	addl	$20, %edx
	movl	%edx, -124(%rbp)
	vmovups	340(%rdi), %ymm0
	vmovups	372(%rdi), %ymm1
	vmovups	404(%rdi), %ymm2
	vmovups	%ymm2, 500(%rdi)
	vmovups	%ymm1, 468(%rdi)
	vmovups	%ymm0, 436(%rdi)
	movl	$20, %edx
                                        # kill: def %rdx killed %edx
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%r9, %rsi
	movl	%eax, -324(%rbp)        # 4-byte Spill
	vzeroupper
	callq	_sha1_update
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	-320(%rbp), %rsi        # 8-byte Reload
	callq	SHA1_Final
	movl	-120(%rbp), %eax
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movl	(%rcx), %r8d
	addl	%r8d, %eax
	movl	%eax, %edx
	movq	-152(%rbp), %rsi        # 8-byte Reload
	addq	$-1, %rsi
	movl	-224(%rbp), %eax        # 4-byte Reload
	movl	%eax, %r8d
	movl	%r8d, %edi
	subq	%rdi, %rsi
	addq	$-20, %rsi
	movq	%rsp, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movl	$0, (%rdi)
	addl	$20, %eax
	movl	-308(%rbp), %r8d        # 4-byte Reload
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	movl	%eax, -340(%rbp)        # 4-byte Spill
	movq	%rsi, -352(%rbp)        # 8-byte Spill
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movl	%r8d, -364(%rbp)        # 4-byte Spill
.LBB0_27:                               # =>This Inner Loop Header: Depth=1
	movl	-364(%rbp), %eax        # 4-byte Reload
	movl	-340(%rbp), %ecx        # 4-byte Reload
	cmpl	%ecx, %eax
	movl	%eax, -368(%rbp)        # 4-byte Spill
	jae	.LBB0_30
# %bb.28:                               #   in Loop: Header=BB0_27 Depth=1
	xorl	%eax, %eax
	movl	-368(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, %edx
	movl	%edx, %esi
	movq	-352(%rbp), %rdi        # 8-byte Reload
	addq	%rsi, %rdi
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movzbl	(%rsi,%rdi), %edx
	movl	%ecx, %r8d
	movl	%r8d, %edi
	movq	-352(%rbp), %r9         # 8-byte Reload
	addq	%rdi, %r9
	movq	-336(%rbp), %rdi        # 8-byte Reload
	addq	$20, %rdi
	cmpq	%rdi, %r9
	setae	%r10b
	movq	-208(%rbp), %rdi        # 8-byte Reload
	cmpl	(%rdi), %edx
	setne	%r11b
	andb	$1, %r11b
	andb	%r10b, %r11b
	testb	$1, %r11b
	movl	%eax, %r8d
	cmovel	-128(%rbp), %r8d
	movl	%r8d, -128(%rbp)
	xorb	$-1, %r10b
	movl	%ecx, %r8d
	movl	%r8d, %r9d
	movq	-352(%rbp), %rbx        # 8-byte Reload
	addq	%r9, %rbx
	movq	-336(%rbp), %r9         # 8-byte Reload
	cmpq	%r9, %rbx
	setae	%r11b
	movq	-360(%rbp), %rbx        # 8-byte Reload
	movl	(%rbx), %r8d
	movl	%r8d, %r14d
	movq	-264(%rbp), %r15        # 8-byte Reload
	movzbl	(%r15,%r14), %r8d
	cmpl	%r8d, %edx
	setne	%r12b
	andb	$1, %r12b
	andb	%r11b, %r12b
	andb	%r10b, %r12b
	testb	$1, %r12b
	cmovel	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	(%rbx), %eax
	addl	$1, %eax
	andb	$1, %r11b
	andb	%r10b, %r11b
	testb	$1, %r11b
	cmovel	(%rbx), %eax
	movl	%eax, (%rbx)
# %bb.29:                               #   in Loop: Header=BB0_27 Depth=1
	movl	-368(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -364(%rbp)        # 4-byte Spill
	jmp	.LBB0_27
.LBB0_30:
	movl	-128(%rbp), %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_aesni_cbc_hmac_sha1_cipher, .Lfunc_end0-_aesni_cbc_hmac_sha1_cipher
	.cfi_endproc
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
