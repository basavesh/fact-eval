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
	subq	$312, %rsp              # imm = 0x138
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movw	16(%rbp), %ax
	movl	$0, -92(%rbp)
	movb	$1, -93(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -104(%rbp)
	movl	%ecx, %r9d
	movl	%r9d, -108(%rbp)
	movl	$1, -112(%rbp)
	movzwl	%ax, %r9d
	cmpl	$770, %r9d              # imm = 0x302
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r8, -128(%rbp)         # 8-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	jb	.LBB0_2
# %bb.1:
	cmpl	$37, -108(%rbp)
	jb	.LBB0_4
	jmp	.LBB0_5
.LBB0_2:
	cmpl	$21, -108(%rbp)
	jb	.LBB0_7
	jmp	.LBB0_8
.LBB0_3:
	movl	$13, %eax
	movl	%eax, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	addq	$96, %rcx
	movl	-100(%rbp), %eax
	movl	%eax, %esi
	movl	-108(%rbp), %eax
	movl	%eax, %edi
	movl	-104(%rbp), %eax
	movl	%eax, %r8d
	movq	-128(%rbp), %r9         # 8-byte Reload
	addq	%rsi, %r9
	movq	-144(%rbp), %rsi        # 8-byte Reload
	addq	%r8, %rsi
	xorl	%eax, %eax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	-160(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	-152(%rbp), %r9         # 8-byte Reload
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	movq	%r9, %rcx
	movq	-120(%rbp), %r8         # 8-byte Reload
	movl	%eax, %r9d
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	aesni_cbc_encrypt
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movzbl	-1(%rcx,%rdx), %eax
	movq	%rsp, %rsi
	movq	%rsi, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movl	%eax, -16(%rsi)
	movl	-108(%rbp), %eax
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
	movl	-112(%rbp), %r10d
	movl	-180(%rbp), %ebx        # 4-byte Reload
	cmoval	%ebx, %r10d
	movl	%r10d, -112(%rbp)
	movl	-108(%rbp), %r10d
	movl	-16(%rsi), %r14d
	addl	$21, %r14d
	subl	%r14d, %r10d
	movq	%rsp, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movl	%r10d, (%rsi)
	movl	(%rsi), %r10d
	movw	%r10w, %r15w
	movb	$1, -46(%rbp)
	movw	%r15w, %r12w
	shrw	$8, %r12w
	movb	%r12b, %r13b
	movq	-152(%rbp), %r8         # 8-byte Reload
	movb	%r13b, 555(%r8)
	movb	%r15b, %r13b
	movb	%r13b, 556(%r8)
	addq	$436, %r8               # imm = 0x1B4
	movq	-152(%rbp), %rcx        # 8-byte Reload
	addq	$244, %rcx
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-176(%rbp), %rdx        # 8-byte Reload
	movl	%r11d, -204(%rbp)       # 4-byte Spill
	movl	%eax, -208(%rbp)        # 4-byte Spill
	movl	%r9d, -212(%rbp)        # 4-byte Spill
	callq	memcpy
	movq	-152(%rbp), %rcx        # 8-byte Reload
	addq	$436, %rcx              # imm = 0x1B4
	movq	-152(%rbp), %rdx        # 8-byte Reload
	addq	$544, %rdx              # imm = 0x220
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	-168(%rbp), %rdx        # 8-byte Reload
	callq	_sha1_update
	movl	-108(%rbp), %eax
	subl	$20, %eax
	movl	%eax, -108(%rbp)
	cmpl	$320, -108(%rbp)        # imm = 0x140
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
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rcx
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rdx)
	movl	-100(%rbp), %esi
	addl	$16, %esi
	movl	%esi, -100(%rbp)
	movl	-104(%rbp), %esi
	addl	$16, %esi
	movl	%esi, -104(%rbp)
	movl	-108(%rbp), %esi
	subl	$16, %esi
	movl	%esi, -108(%rbp)
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
	movl	-108(%rbp), %eax
	subl	$320, %eax              # imm = 0x140
	andl	$-64, %eax
	addl	$64, %eax
	movq	-152(%rbp), %rcx        # 8-byte Reload
	subl	528(%rcx), %eax
	movl	-104(%rbp), %edx
	movl	%edx, %esi
	addq	$436, %rcx              # imm = 0x1B4
	movq	-144(%rbp), %rdi        # 8-byte Reload
	addq	%rsi, %rdi
	movl	%eax, %edx
                                        # kill: def %rdx killed %edx
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	_sha1_update
	movl	-228(%rbp), %eax        # 4-byte Reload
	addl	-104(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	movl	-228(%rbp), %r8d        # 4-byte Reload
	subl	%r8d, %eax
	movl	%eax, -108(%rbp)
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movl	(%rcx), %eax
	subl	%r8d, %eax
	movl	%eax, (%rcx)
	jmp	.LBB0_12
.LBB0_11:
	jmp	.LBB0_12
.LBB0_12:
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movl	456(%rcx), %edx
	movq	-200(%rbp), %rsi        # 8-byte Reload
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
	xorps	%xmm0, %xmm0
	movups	%xmm0, -32(%r8)
	movl	$0, -16(%r8)
	movl	528(%rcx), %edi
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movl	%edi, (%r8)
	movl	-108(%rbp), %edi
	movl	%edi, -232(%rbp)        # 4-byte Spill
	movl	%edx, -236(%rbp)        # 4-byte Spill
	movq	%r9, -248(%rbp)         # 8-byte Spill
	movq	%r8, -256(%rbp)         # 8-byte Spill
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	-232(%rbp), %ecx        # 4-byte Reload
	cmpl	%ecx, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jae	.LBB0_16
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	movq	-256(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, %edx
	movl	-264(%rbp), %ecx        # 4-byte Reload
	addl	-104(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	movl	-264(%rbp), %ecx        # 4-byte Reload
	movq	-200(%rbp), %rdi        # 8-byte Reload
	cmpl	(%rdi), %ecx
	setb	%r8b
	movq	-144(%rbp), %r9         # 8-byte Reload
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
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movb	%r8b, 464(%rsi,%rdx)
	movl	(%rax), %ebx
	addl	$1, %ebx
	movl	%ebx, (%rax)
	cmpl	$64, (%rax)
	je	.LBB0_17
	jmp	.LBB0_18
.LBB0_15:                               #   in Loop: Header=BB0_13 Depth=1
	movl	-264(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB0_13
.LBB0_16:
	movl	-108(%rbp), %eax
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movl	%eax, (%rcx)
	movq	-256(%rbp), %rdx        # 8-byte Reload
	movl	(%rdx), %eax
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jmp	.LBB0_20
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %edx
	movq	-200(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	addl	$7, %ecx
	movl	-264(%rbp), %esi        # 4-byte Reload
	cmpl	%esi, %ecx
	setb	%dil
	movb	%dil, %r8b
	andb	$1, %r8b
	testb	$1, %r8b
	movl	-236(%rbp), %ecx        # 4-byte Reload
	movq	-152(%rbp), %r9         # 8-byte Reload
	cmovel	524(%r9), %ecx
	movl	%ecx, 524(%r9)
	addq	$436, %r9               # imm = 0x1B4
	movq	-152(%rbp), %r10        # 8-byte Reload
	addq	$436, %r10              # imm = 0x1B4
	addq	$28, %r10
	movb	%dil, -277(%rbp)        # 1-byte Spill
	movq	%r9, %rdi
	movq	%r10, %rsi
	callq	sha1_block_data_order
	movq	-200(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	addl	$72, %ecx
	movl	-264(%rbp), %edx        # 4-byte Reload
	cmpl	%ecx, %edx
	setb	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	xorl	%r11d, %r11d
	movb	-277(%rbp), %r8b        # 1-byte Reload
	#APP
	testb	%r8b, %r8b
	movl	%r11d, %ebx
	cmovnel	%ecx, %ebx
	#NO_APP
	movb	%bl, %r8b
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movl	436(%rsi), %ecx
	movb	%r8b, %r14b
	andb	$1, %r14b
	testb	$1, %r14b
	movq	-248(%rbp), %rdi        # 8-byte Reload
	cmovel	(%rdi), %ecx
	movl	%ecx, (%rdi)
	movl	440(%rsi), %ecx
	movb	%r8b, %r14b
	andb	$1, %r14b
	testb	$1, %r14b
	cmovel	4(%rdi), %ecx
	movl	%ecx, 4(%rdi)
	movl	444(%rsi), %ecx
	movb	%r8b, %r14b
	andb	$1, %r14b
	testb	$1, %r14b
	cmovel	8(%rdi), %ecx
	movl	%ecx, 8(%rdi)
	movl	448(%rsi), %ecx
	movb	%r8b, %r14b
	andb	$1, %r14b
	testb	$1, %r14b
	cmovel	12(%rdi), %ecx
	movl	%ecx, 12(%rdi)
	movl	452(%rsi), %ecx
	andb	$1, %r8b
	testb	$1, %r8b
	cmovel	16(%rdi), %ecx
	movl	%ecx, 16(%rdi)
	movq	-256(%rbp), %r9         # 8-byte Reload
	movl	$0, (%r9)
	jmp	.LBB0_19
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_19
.LBB0_19:                               #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_15
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	movl	-276(%rbp), %eax        # 4-byte Reload
	cmpl	$64, %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
	jae	.LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=1
	movl	-284(%rbp), %eax        # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movb	$0, 464(%rsi,%rdx)
	movq	-272(%rbp), %rdx        # 8-byte Reload
	movl	(%rdx), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rdx)
# %bb.22:                               #   in Loop: Header=BB0_20 Depth=1
	movl	-284(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jmp	.LBB0_20
.LBB0_23:
	movq	-256(%rbp), %rax        # 8-byte Reload
	cmpl	$56, (%rax)
	jbe	.LBB0_25
# %bb.24:
	movl	$1, %edx
	movq	-200(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	addl	$8, %ecx
	movq	-272(%rbp), %rsi        # 8-byte Reload
	cmpl	(%rsi), %ecx
	setb	%dil
	movb	%dil, %r8b
	andb	$1, %r8b
	testb	$1, %r8b
	movl	-236(%rbp), %ecx        # 4-byte Reload
	movq	-152(%rbp), %r9         # 8-byte Reload
	cmovel	524(%r9), %ecx
	movl	%ecx, 524(%r9)
	addq	$436, %r9               # imm = 0x1B4
	movq	-152(%rbp), %r10        # 8-byte Reload
	addq	$436, %r10              # imm = 0x1B4
	addq	$28, %r10
	movb	%dil, -285(%rbp)        # 1-byte Spill
	movq	%r9, %rdi
	movq	%r10, %rsi
	callq	sha1_block_data_order
	xorl	%esi, %esi
	movl	$64, %ecx
	movl	%ecx, %edx
	movq	-272(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movl	(%rdi), %r11d
	addl	$73, %r11d
	cmpl	%r11d, %ecx
	setb	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	xorl	%r11d, %r11d
	movb	-285(%rbp), %r8b        # 1-byte Reload
	#APP
	testb	%r8b, %r8b
	movl	%r11d, %ebx
	cmovnel	%ecx, %ebx
	#NO_APP
	movb	%bl, %r8b
	movq	-152(%rbp), %r9         # 8-byte Reload
	movl	436(%r9), %ecx
	movb	%r8b, %r14b
	andb	$1, %r14b
	testb	$1, %r14b
	movq	-248(%rbp), %r10        # 8-byte Reload
	cmovel	(%r10), %ecx
	movl	%ecx, (%r10)
	movl	440(%r9), %ecx
	movb	%r8b, %r14b
	andb	$1, %r14b
	testb	$1, %r14b
	cmovel	4(%r10), %ecx
	movl	%ecx, 4(%r10)
	movl	444(%r9), %ecx
	movb	%r8b, %r14b
	andb	$1, %r14b
	testb	$1, %r14b
	cmovel	8(%r10), %ecx
	movl	%ecx, 8(%r10)
	movl	448(%r9), %ecx
	movb	%r8b, %r14b
	andb	$1, %r14b
	testb	$1, %r14b
	cmovel	12(%r10), %ecx
	movl	%ecx, 12(%r10)
	movl	452(%r9), %ecx
	andb	$1, %r8b
	testb	$1, %r8b
	cmovel	16(%r10), %ecx
	movl	%ecx, 16(%r10)
	addq	$436, %r9               # imm = 0x1B4
	addq	$28, %r9
	movq	%r9, %rdi
	callq	memset
	movq	-272(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	addl	$64, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB0_26
.LBB0_25:
	jmp	.LBB0_26
.LBB0_26:
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx        # 8-byte Reload
	addq	$436, %rcx              # imm = 0x1B4
	movq	-152(%rbp), %rdx        # 8-byte Reload
	addq	$464, %rdx              # imm = 0x1D0
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movl	-236(%rbp), %edi        # 4-byte Reload
	movl	%edi, 524(%rsi)
	movl	$1, %r8d
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movl	%r8d, %edx
	movl	%eax, -292(%rbp)        # 4-byte Spill
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	callq	sha1_block_data_order
	movq	-272(%rbp), %rcx        # 8-byte Reload
	movl	(%rcx), %eax
	movq	-200(%rbp), %rsi        # 8-byte Reload
	movl	(%rsi), %edx
	addl	$73, %edx
	movq	-248(%rbp), %rdi        # 8-byte Reload
	addq	$4, %rdi
	movq	-152(%rbp), %r9         # 8-byte Reload
	addq	$440, %r9               # imm = 0x1B8
	movq	-248(%rbp), %r10        # 8-byte Reload
	addq	$8, %r10
	movq	-152(%rbp), %r11        # 8-byte Reload
	addq	$444, %r11              # imm = 0x1BC
	movq	-248(%rbp), %rbx        # 8-byte Reload
	addq	$12, %rbx
	movq	-152(%rbp), %r14        # 8-byte Reload
	addq	$448, %r14              # imm = 0x1C0
	movq	-248(%rbp), %r15        # 8-byte Reload
	addq	$16, %r15
	movq	-152(%rbp), %r12        # 8-byte Reload
	addq	$452, %r12              # imm = 0x1C4
	subl	%edx, %eax
	movq	-248(%rbp), %r13        # 8-byte Reload
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmovbq	%rcx, %r13
	movl	(%r13), %edx
	movq	-248(%rbp), %r13        # 8-byte Reload
	movl	%edx, (%r13)
	cmovbq	%r9, %rdi
	movl	(%rdi), %edx
	movl	%edx, 4(%r13)
	cmovbq	%r11, %r10
	movl	(%r10), %edx
	movl	%edx, 8(%r13)
	cmovbq	%r14, %rbx
	movl	(%rbx), %edx
	movl	%edx, 12(%r13)
	cmovbq	%r12, %r15
	movl	(%r15), %edx
	movl	%edx, 16(%r13)
	movl	(%r13), %edx
	movl	$0, -52(%rbp)
	movb	$1, -53(%rbp)
	movl	%edx, %r8d
	shll	$24, %r8d
	movl	%edx, %esi
	shrl	$8, %esi
	movl	%edx, %edi
	shll	$8, %edi
	andl	$16711680, %edi         # imm = 0xFF0000
	andl	$65280, %esi            # imm = 0xFF00
	shrl	$24, %edx
	orl	%esi, %edx
	orl	%edi, %edx
	orl	%r8d, %edx
	movl	%edx, (%r13)
	movl	4(%r13), %edx
	movl	$0, -60(%rbp)
	movb	$1, -61(%rbp)
	movl	%edx, %esi
	shll	$24, %esi
	movl	%edx, %edi
	shrl	$8, %edi
	movl	%edx, %r8d
	shll	$8, %r8d
	andl	$16711680, %r8d         # imm = 0xFF0000
	andl	$65280, %edi            # imm = 0xFF00
	shrl	$24, %edx
	orl	%edi, %edx
	orl	%r8d, %edx
	orl	%esi, %edx
	movl	%edx, 4(%r13)
	movl	8(%r13), %edx
	movl	$0, -68(%rbp)
	movb	$1, -69(%rbp)
	movl	%edx, %esi
	shll	$24, %esi
	movl	%edx, %edi
	shrl	$8, %edi
	movl	%edx, %r8d
	shll	$8, %r8d
	andl	$16711680, %r8d         # imm = 0xFF0000
	andl	$65280, %edi            # imm = 0xFF00
	shrl	$24, %edx
	orl	%edi, %edx
	orl	%r8d, %edx
	orl	%esi, %edx
	movl	%edx, 8(%r13)
	movl	12(%r13), %edx
	movl	$0, -76(%rbp)
	movb	$1, -77(%rbp)
	movl	%edx, %esi
	shll	$24, %esi
	movl	%edx, %edi
	shrl	$8, %edi
	movl	%edx, %r8d
	shll	$8, %r8d
	andl	$16711680, %r8d         # imm = 0xFF0000
	andl	$65280, %edi            # imm = 0xFF00
	shrl	$24, %edx
	orl	%edi, %edx
	orl	%r8d, %edx
	orl	%esi, %edx
	movl	%edx, 12(%r13)
	movl	16(%r13), %edx
	movl	$0, -84(%rbp)
	movb	$1, -85(%rbp)
	movl	%edx, %esi
	shll	$24, %esi
	movl	%edx, %edi
	shrl	$8, %edi
	movl	%edx, %r8d
	shll	$8, %r8d
	andl	$16711680, %r8d         # imm = 0xFF0000
	andl	$65280, %edi            # imm = 0xFF00
	shrl	$24, %edx
	orl	%edi, %edx
	orl	%r8d, %edx
	orl	%esi, %edx
	movl	%edx, 16(%r13)
	movl	-108(%rbp), %edx
	addl	$20, %edx
	movl	%edx, -108(%rbp)
	movq	-152(%rbp), %r9         # 8-byte Reload
	movups	420(%r9), %xmm0
	movups	%xmm0, 516(%r9)
	movups	404(%r9), %xmm0
	movups	%xmm0, 500(%r9)
	movups	340(%r9), %xmm0
	movups	356(%r9), %xmm1
	movups	372(%r9), %xmm2
	movups	388(%r9), %xmm3
	movups	%xmm3, 484(%r9)
	movups	%xmm2, 468(%r9)
	movups	%xmm1, 452(%r9)
	movups	%xmm0, 436(%r9)
	movl	$20, %edx
                                        # kill: def %rdx killed %edx
	movq	%rcx, %rdi
	movq	%r13, %rsi
	movl	%eax, -308(%rbp)        # 4-byte Spill
	callq	_sha1_update
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	-304(%rbp), %rsi        # 8-byte Reload
	callq	SHA1_Final
	movl	-104(%rbp), %eax
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movl	(%rcx), %r8d
	addl	%r8d, %eax
	movl	%eax, %edx
	movq	-136(%rbp), %rsi        # 8-byte Reload
	addq	$-1, %rsi
	movl	-208(%rbp), %eax        # 4-byte Reload
	movl	%eax, %r8d
	movl	%r8d, %edi
	subq	%rdi, %rsi
	addq	$-20, %rsi
	movq	%rsp, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movl	$0, (%rdi)
	addl	$20, %eax
	movl	-292(%rbp), %r8d        # 4-byte Reload
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	movl	%eax, -324(%rbp)        # 4-byte Spill
	movq	%rsi, -336(%rbp)        # 8-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movl	%r8d, -348(%rbp)        # 4-byte Spill
.LBB0_27:                               # =>This Inner Loop Header: Depth=1
	movl	-348(%rbp), %eax        # 4-byte Reload
	movl	-324(%rbp), %ecx        # 4-byte Reload
	cmpl	%ecx, %eax
	movl	%eax, -352(%rbp)        # 4-byte Spill
	jae	.LBB0_30
# %bb.28:                               #   in Loop: Header=BB0_27 Depth=1
	xorl	%eax, %eax
	movl	-352(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, %edx
	movl	%edx, %esi
	movq	-336(%rbp), %rdi        # 8-byte Reload
	addq	%rsi, %rdi
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movzbl	(%rsi,%rdi), %edx
	movl	%ecx, %r8d
	movl	%r8d, %edi
	movq	-336(%rbp), %r9         # 8-byte Reload
	addq	%rdi, %r9
	movq	-320(%rbp), %rdi        # 8-byte Reload
	addq	$20, %rdi
	cmpq	%rdi, %r9
	setae	%r10b
	movq	-192(%rbp), %rdi        # 8-byte Reload
	cmpl	(%rdi), %edx
	setne	%r11b
	andb	$1, %r11b
	andb	%r10b, %r11b
	testb	$1, %r11b
	movl	%eax, %r8d
	cmovel	-112(%rbp), %r8d
	movl	%r8d, -112(%rbp)
	xorb	$-1, %r10b
	movl	%ecx, %r8d
	movl	%r8d, %r9d
	movq	-336(%rbp), %rbx        # 8-byte Reload
	addq	%r9, %rbx
	movq	-320(%rbp), %r9         # 8-byte Reload
	cmpq	%r9, %rbx
	setae	%r11b
	movq	-344(%rbp), %rbx        # 8-byte Reload
	movl	(%rbx), %r8d
	movl	%r8d, %r14d
	movq	-248(%rbp), %r15        # 8-byte Reload
	movzbl	(%r15,%r14), %r8d
	cmpl	%r8d, %edx
	setne	%r12b
	andb	$1, %r12b
	andb	%r11b, %r12b
	andb	%r10b, %r12b
	testb	$1, %r12b
	cmovel	-112(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	(%rbx), %eax
	addl	$1, %eax
	andb	$1, %r11b
	andb	%r10b, %r11b
	testb	$1, %r11b
	cmovel	(%rbx), %eax
	movl	%eax, (%rbx)
# %bb.29:                               #   in Loop: Header=BB0_27 Depth=1
	movl	-352(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
	jmp	.LBB0_27
.LBB0_30:
	movl	-112(%rbp), %eax
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
