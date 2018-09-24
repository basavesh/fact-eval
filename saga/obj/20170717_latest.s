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
	subq	$296, %rsp              # imm = 0x128
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movw	24(%rbp), %ax
	movq	16(%rbp), %r9
	movl	$0, -92(%rbp)
	movb	$1, -93(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -104(%rbp)
	movl	%ecx, %r10d
	movl	%r10d, -108(%rbp)
	movl	$1, -112(%rbp)
	movzwl	%ax, %r10d
	cmpl	$770, %r10d             # imm = 0x302
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	%r8, -128(%rbp)         # 8-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rdi, -160(%rbp)        # 8-byte Spill
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
	movl	-100(%rbp), %eax
	movl	%eax, %ecx
	movl	-108(%rbp), %eax
	movl	%eax, %edx
	movl	-104(%rbp), %eax
	movl	%eax, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	addq	%rcx, %rdi
	movq	-144(%rbp), %rcx        # 8-byte Reload
	addq	%rsi, %rcx
	xorl	%eax, %eax
	movq	%rcx, %rsi
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %r8         # 8-byte Reload
	movl	%eax, %r9d
	movl	%eax, -164(%rbp)        # 4-byte Spill
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
	movl	-164(%rbp), %ebx        # 4-byte Reload
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
	movq	-120(%rbp), %r8         # 8-byte Reload
	subq	$2, %r8
	movl	(%rsi), %r10d
	movw	%r10w, %r15w
	movb	$1, -46(%rbp)
	movw	%r15w, %r12w
	shrw	$8, %r12w
	movb	%r12b, %r13b
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movb	%r13b, 544(%rcx,%r8)
	movb	%r15b, %r13b
	movb	%r13b, 545(%rcx,%r8)
	addq	$436, %rcx              # imm = 0x1B4
	movq	-152(%rbp), %r8         # 8-byte Reload
	addq	$244, %r8
	vmovups	(%r8), %ymm0
	vmovups	32(%r8), %ymm1
	vmovups	64(%r8), %ymm2
	vmovups	%ymm2, 64(%rcx)
	vmovups	%ymm1, 32(%rcx)
	vmovups	%ymm0, (%rcx)
	movq	-152(%rbp), %rcx        # 8-byte Reload
	addq	$436, %rcx              # imm = 0x1B4
	movq	-152(%rbp), %r8         # 8-byte Reload
	addq	$544, %r8               # imm = 0x220
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movl	%eax, -188(%rbp)        # 4-byte Spill
	movl	%r11d, -192(%rbp)       # 4-byte Spill
	movl	%r9d, -196(%rbp)        # 4-byte Spill
	vzeroupper
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
	movq	-160(%rbp), %rdx        # 8-byte Reload
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
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	_sha1_update
	movl	-212(%rbp), %eax        # 4-byte Reload
	addl	-104(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	movl	-212(%rbp), %r8d        # 4-byte Reload
	subl	%r8d, %eax
	movl	%eax, -108(%rbp)
	movq	-184(%rbp), %rcx        # 8-byte Reload
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
	movq	-184(%rbp), %rsi        # 8-byte Reload
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
	movl	-108(%rbp), %edi
	movl	%edi, -216(%rbp)        # 4-byte Spill
	movl	%edx, -220(%rbp)        # 4-byte Spill
	movq	%r9, -232(%rbp)         # 8-byte Spill
	movq	%r8, -240(%rbp)         # 8-byte Spill
	movl	%eax, -244(%rbp)        # 4-byte Spill
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movl	-244(%rbp), %eax        # 4-byte Reload
	movl	-216(%rbp), %ecx        # 4-byte Reload
	cmpl	%ecx, %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jae	.LBB0_16
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	movq	-240(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, %edx
	movl	-248(%rbp), %ecx        # 4-byte Reload
	addl	-104(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	movl	-248(%rbp), %ecx        # 4-byte Reload
	movq	-184(%rbp), %rdi        # 8-byte Reload
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
	movl	-248(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB0_13
.LBB0_16:
	movl	-108(%rbp), %eax
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movl	%eax, (%rcx)
	movq	-240(%rbp), %rdx        # 8-byte Reload
	movl	(%rdx), %eax
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB0_20
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	addl	$7, %ecx
	movl	-248(%rbp), %edx        # 4-byte Reload
	cmpl	%edx, %ecx
	setb	%sil
	movb	%sil, %dil
	andb	$1, %dil
	testb	$1, %dil
	movl	-220(%rbp), %ecx        # 4-byte Reload
	movq	-152(%rbp), %r8         # 8-byte Reload
	cmovel	524(%r8), %ecx
	movl	%ecx, 524(%r8)
	addq	$436, %r8               # imm = 0x1B4
	movq	-152(%rbp), %r9         # 8-byte Reload
	addq	$436, %r9               # imm = 0x1B4
	addq	$28, %r9
	movl	$1, %edx
	movq	%r8, %rdi
	movb	%sil, -261(%rbp)        # 1-byte Spill
	movq	%r9, %rsi
	callq	sha1_block_data_order
	movq	-184(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	addl	$72, %ecx
	movl	-248(%rbp), %edx        # 4-byte Reload
	cmpl	%ecx, %edx
	setb	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %ecx
	xorl	%r11d, %r11d
	movb	-261(%rbp), %r10b       # 1-byte Reload
	#APP
	testb	%r10b, %r10b
	movl	%r11d, %ebx
	cmovnel	%ecx, %ebx
	#NO_APP
	movb	%bl, %r10b
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movl	436(%rsi), %ecx
	movb	%r10b, %r14b
	andb	$1, %r14b
	testb	$1, %r14b
	movq	-232(%rbp), %rdi        # 8-byte Reload
	cmovel	(%rdi), %ecx
	movl	%ecx, (%rdi)
	movl	440(%rsi), %ecx
	movb	%r10b, %r14b
	andb	$1, %r14b
	testb	$1, %r14b
	cmovel	4(%rdi), %ecx
	movl	%ecx, 4(%rdi)
	movl	444(%rsi), %ecx
	movb	%r10b, %r14b
	andb	$1, %r14b
	testb	$1, %r14b
	cmovel	8(%rdi), %ecx
	movl	%ecx, 8(%rdi)
	movl	448(%rsi), %ecx
	movb	%r10b, %r14b
	andb	$1, %r14b
	testb	$1, %r14b
	cmovel	12(%rdi), %ecx
	movl	%ecx, 12(%rdi)
	movl	452(%rsi), %ecx
	andb	$1, %r10b
	testb	$1, %r10b
	cmovel	16(%rdi), %ecx
	movl	%ecx, 16(%rdi)
	movq	-240(%rbp), %r8         # 8-byte Reload
	movl	$0, (%r8)
	jmp	.LBB0_19
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_19
.LBB0_19:                               #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_15
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	movl	-260(%rbp), %eax        # 4-byte Reload
	cmpl	$64, %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jae	.LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=1
	movl	-268(%rbp), %eax        # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movb	$0, 464(%rsi,%rdx)
	movq	-256(%rbp), %rdx        # 8-byte Reload
	movl	(%rdx), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rdx)
# %bb.22:                               #   in Loop: Header=BB0_20 Depth=1
	movl	-268(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB0_20
.LBB0_23:
	movq	-240(%rbp), %rax        # 8-byte Reload
	cmpl	$56, (%rax)
	jbe	.LBB0_25
# %bb.24:
	movq	-184(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	addl	$8, %ecx
	movq	-256(%rbp), %rdx        # 8-byte Reload
	cmpl	(%rdx), %ecx
	setb	%sil
	movb	%sil, %dil
	andb	$1, %dil
	testb	$1, %dil
	movl	-220(%rbp), %ecx        # 4-byte Reload
	movq	-152(%rbp), %r8         # 8-byte Reload
	cmovel	524(%r8), %ecx
	movl	%ecx, 524(%r8)
	addq	$436, %r8               # imm = 0x1B4
	movq	-152(%rbp), %r9         # 8-byte Reload
	addq	$436, %r9               # imm = 0x1B4
	addq	$28, %r9
	movl	$1, %edx
	movq	%r8, %rdi
	movb	%sil, -269(%rbp)        # 1-byte Spill
	movq	%r9, %rsi
	callq	sha1_block_data_order
	movq	-256(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movl	(%rsi), %edx
	addl	$73, %edx
	cmpl	%edx, %ecx
	setb	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %ecx
	xorl	%edx, %edx
	movb	-269(%rbp), %r10b       # 1-byte Reload
	#APP
	testb	%r10b, %r10b
	movl	%edx, %r11d
	cmovnel	%ecx, %r11d
	#NO_APP
	movb	%r11b, %r10b
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	436(%rdi), %ecx
	movb	%r10b, %bl
	andb	$1, %bl
	testb	$1, %bl
	movq	-232(%rbp), %r8         # 8-byte Reload
	cmovel	(%r8), %ecx
	movl	%ecx, (%r8)
	movl	440(%rdi), %ecx
	movb	%r10b, %bl
	andb	$1, %bl
	testb	$1, %bl
	cmovel	4(%r8), %ecx
	movl	%ecx, 4(%r8)
	movl	444(%rdi), %ecx
	movb	%r10b, %bl
	andb	$1, %bl
	testb	$1, %bl
	cmovel	8(%r8), %ecx
	movl	%ecx, 8(%r8)
	movl	448(%rdi), %ecx
	movb	%r10b, %bl
	andb	$1, %bl
	testb	$1, %bl
	cmovel	12(%r8), %ecx
	movl	%ecx, 12(%r8)
	movl	452(%rdi), %ecx
	andb	$1, %r10b
	testb	$1, %r10b
	cmovel	16(%r8), %ecx
	movl	%ecx, 16(%r8)
	addq	$436, %rdi              # imm = 0x1B4
	addq	$28, %rdi
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 32(%rdi)
	vmovups	%ymm0, (%rdi)
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
	movl	-220(%rbp), %edi        # 4-byte Reload
	movl	%edi, 524(%rsi)
	movl	$1, %r8d
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movl	%r8d, %edx
	movl	%eax, -276(%rbp)        # 4-byte Spill
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	vzeroupper
	callq	sha1_block_data_order
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movl	(%rcx), %eax
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movl	(%rsi), %edx
	addl	$73, %edx
	movq	-232(%rbp), %rdi        # 8-byte Reload
	addq	$4, %rdi
	movq	-152(%rbp), %r9         # 8-byte Reload
	addq	$440, %r9               # imm = 0x1B8
	movq	-232(%rbp), %r10        # 8-byte Reload
	addq	$8, %r10
	movq	-152(%rbp), %r11        # 8-byte Reload
	addq	$444, %r11              # imm = 0x1BC
	movq	-232(%rbp), %rbx        # 8-byte Reload
	addq	$12, %rbx
	movq	-152(%rbp), %r14        # 8-byte Reload
	addq	$448, %r14              # imm = 0x1C0
	movq	-232(%rbp), %r15        # 8-byte Reload
	addq	$16, %r15
	movq	-152(%rbp), %r12        # 8-byte Reload
	addq	$452, %r12              # imm = 0x1C4
	subl	%edx, %eax
	movq	-232(%rbp), %r13        # 8-byte Reload
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmovbq	%rcx, %r13
	movl	(%r13), %edx
	movq	-232(%rbp), %r13        # 8-byte Reload
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
	vmovups	340(%r9), %ymm0
	vmovups	372(%r9), %ymm1
	vmovups	404(%r9), %ymm2
	vmovups	%ymm2, 500(%r9)
	vmovups	%ymm1, 468(%r9)
	vmovups	%ymm0, 436(%r9)
	movl	$20, %edx
                                        # kill: def %rdx killed %edx
	movq	%rcx, %rdi
	movq	%r13, %rsi
	movl	%eax, -292(%rbp)        # 4-byte Spill
	vzeroupper
	callq	_sha1_update
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	-288(%rbp), %rsi        # 8-byte Reload
	callq	SHA1_Final
	movl	-104(%rbp), %eax
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movl	(%rcx), %r8d
	addl	%r8d, %eax
	movl	%eax, %edx
	movq	-136(%rbp), %rsi        # 8-byte Reload
	addq	$-1, %rsi
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	%eax, %r8d
	movl	%r8d, %edi
	subq	%rdi, %rsi
	addq	$-20, %rsi
	movq	%rsp, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movl	$0, (%rdi)
	addl	$20, %eax
	movl	-276(%rbp), %r8d        # 4-byte Reload
	movq	%rdx, -304(%rbp)        # 8-byte Spill
	movl	%eax, -308(%rbp)        # 4-byte Spill
	movq	%rsi, -320(%rbp)        # 8-byte Spill
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movl	%r8d, -332(%rbp)        # 4-byte Spill
.LBB0_27:                               # =>This Inner Loop Header: Depth=1
	movl	-332(%rbp), %eax        # 4-byte Reload
	movl	-308(%rbp), %ecx        # 4-byte Reload
	cmpl	%ecx, %eax
	movl	%eax, -336(%rbp)        # 4-byte Spill
	jae	.LBB0_30
# %bb.28:                               #   in Loop: Header=BB0_27 Depth=1
	xorl	%eax, %eax
	movl	-336(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, %edx
	movl	%edx, %esi
	movq	-320(%rbp), %rdi        # 8-byte Reload
	addq	%rsi, %rdi
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movzbl	(%rsi,%rdi), %edx
	movl	%ecx, %r8d
	movl	%r8d, %edi
	movq	-320(%rbp), %r9         # 8-byte Reload
	addq	%rdi, %r9
	movq	-304(%rbp), %rdi        # 8-byte Reload
	addq	$20, %rdi
	cmpq	%rdi, %r9
	setae	%r10b
	movq	-176(%rbp), %rdi        # 8-byte Reload
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
	movq	-320(%rbp), %rbx        # 8-byte Reload
	addq	%r9, %rbx
	movq	-304(%rbp), %r9         # 8-byte Reload
	cmpq	%r9, %rbx
	setae	%r11b
	movq	-328(%rbp), %rbx        # 8-byte Reload
	movl	(%rbx), %r8d
	movl	%r8d, %r14d
	movq	-232(%rbp), %r15        # 8-byte Reload
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
	movl	-336(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
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
