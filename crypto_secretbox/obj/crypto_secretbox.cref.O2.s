	.text
	.file	"Module"
	.p2align	4, 0x90         # -- Begin function _memzero
	.type	_memzero,@function
_memzero:                               # @_memzero
# %bb.0:                                # %entry
	movl	%esi, %eax
	xorl	%esi, %esi
	movq	%rax, %rdx
	jmp	memset                  # TAILCALL
.Lfunc_end0:
	.size	_memzero, .Lfunc_end0-_memzero
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _memzero64
	.type	_memzero64,@function
_memzero64:                             # @_memzero64
# %bb.0:                                # %entry
	movl	%esi, %eax
	xorl	%esi, %esi
	movq	%rax, %rdx
	jmp	memset                  # TAILCALL
.Lfunc_end1:
	.size	_memzero64, .Lfunc_end1-_memzero64
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _poly1305_blocks
	.type	_poly1305_blocks,@function
_poly1305_blocks:                       # @_poly1305_blocks
# %bb.0:                                # %entry
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	cmpb	$0, 88(%rdi)
	sete	%cl
	movq	24(%rdi), %rax
	movq	32(%rdi), %rbp
	movq	40(%rdi), %r14
	shrl	$4, %edx
	movq	%rdi, -72(%rsp)         # 8-byte Spill
	je	.LBB2_3
# %bb.1:                                # %loop_body.lr.ph
	xorl	%ebx, %ebx
	movb	%cl, %bl
	shlq	$40, %rbx
	movq	%rbx, -24(%rsp)         # 8-byte Spill
	movq	8(%rdi), %rbx
	movq	16(%rdi), %rcx
	movq	%rcx, -40(%rsp)         # 8-byte Spill
	leaq	(,%rcx,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	movq	%rcx, -48(%rsp)         # 8-byte Spill
	movq	%rbx, -32(%rsp)         # 8-byte Spill
	leaq	(,%rbx,4), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	movq	%rcx, -56(%rsp)         # 8-byte Spill
	movq	(%rdi), %rcx
	movq	%rcx, -64(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	movl	$8, %r8d
	movl	%edx, -80(%rsp)         # 4-byte Spill
	movq	%rsi, -16(%rsp)         # 8-byte Spill
	movq	-64(%rsp), %r11         # 8-byte Reload
	.p2align	4, 0x90
.LBB2_2:                                # %loop_body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, -76(%rsp)         # 4-byte Spill
	leal	-8(%r8), %ecx
	movslq	%ecx, %rcx
	movq	(%rsi,%rcx), %rbx
	movslq	%r8d, %r8
	movq	(%rsi,%r8), %rcx
	movq	%rbx, %r9
	movabsq	$17592186044415, %rdx   # imm = 0xFFFFFFFFFFF
	movq	%rdx, %rsi
	andq	%rsi, %r9
	addq	%rax, %r9
	shrq	$44, %rbx
	movq	%rcx, %rdx
	shlq	$20, %rdx
	leaq	-1048575(%rsi), %rax
	andq	%rdx, %rax
	orq	%rbx, %rax
	addq	%rbp, %rax
	shrq	$24, %rcx
	orq	-24(%rsp), %rcx         # 8-byte Folded Reload
	addq	%r14, %rcx
	movq	%r9, %rdx
	mulxq	%r11, %rbp, %rbx
	movq	%rax, %rdx
	movq	-48(%rsp), %rsi         # 8-byte Reload
	mulxq	%rsi, %r10, %r14
	movq	%rcx, %rdx
	mulxq	-56(%rsp), %rdi, %r15   # 8-byte Folded Reload
	addq	%rbp, %rdi
	adcq	%rbx, %r15
	addq	%r10, %rdi
	adcq	%r14, %r15
	movq	%r9, %rdx
	movq	-32(%rsp), %rbp         # 8-byte Reload
	mulxq	%rbp, %rbx, %r10
	movq	%rax, %rdx
	mulxq	%r11, %r13, %rdx
	movq	%rdx, -8(%rsp)          # 8-byte Spill
	movq	%rcx, %rdx
	mulxq	%rsi, %r14, %r12
	shldq	$20, %rdi, %r15
	movabsq	$17592186044415, %rdx   # imm = 0xFFFFFFFFFFF
	andq	%rdx, %rdi
	addq	%rbx, %r14
	adcq	%r10, %r12
	movq	%r9, %rdx
	movq	-16(%rsp), %rsi         # 8-byte Reload
	mulxq	-40(%rsp), %rbx, %r9    # 8-byte Folded Reload
	addq	%r13, %r14
	movq	%rax, %rdx
	mulxq	%rbp, %rbp, %rax
	adcq	-8(%rsp), %r12          # 8-byte Folded Reload
	movq	%rcx, %rdx
	mulxq	%r11, %rcx, %rdx
	addq	%r15, %r14
	adcq	$0, %r12
	shldq	$20, %r14, %r12
	movabsq	$17592186044415, %r10   # imm = 0xFFFFFFFFFFF
	andq	%r10, %r14
	addq	%rbx, %rcx
	adcq	%r9, %rdx
	addq	%rbp, %rcx
	adcq	%rax, %rdx
	addq	%r12, %rcx
	adcq	$0, %rdx
	shldq	$22, %rcx, %rdx
	leaq	(%rdx,%rdx,4), %rax
	movl	-80(%rsp), %edx         # 4-byte Reload
	addq	%rdi, %rax
	movq	%rax, %rbp
	shrq	$44, %rbp
	addq	%r14, %rbp
	movb	$42, %dil
	bzhiq	%rdi, %rcx, %r14
	movl	-76(%rsp), %ecx         # 4-byte Reload
	andq	%r10, %rax
	addl	$1, %ecx
	addl	$16, %r8d
	cmpl	%edx, %ecx
	jb	.LBB2_2
.LBB2_3:                                # %loop_end
	movq	-72(%rsp), %rcx         # 8-byte Reload
	movq	%rax, 24(%rcx)
	movq	%rbp, 32(%rcx)
	movq	%r14, 40(%rcx)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_poly1305_blocks, .Lfunc_end2-_poly1305_blocks
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_onetimeauth_poly1305
	.type	_crypto_onetimeauth_poly1305,@function
_crypto_onetimeauth_poly1305:           # @_crypto_onetimeauth_poly1305
# %bb.0:                                # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	subq	$160, %rsp
	movq	%rcx, %r13
                                        # kill: def %edx killed %edx def %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movabsq	$17592186044415, %r14   # imm = 0xFFFFFFFFFFF
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 92(%rsp)
	vmovaps	%ymm0, 64(%rsp)
	vmovaps	%ymm0, 32(%rsp)
	leaq	32(%rsp), %rdi
	movl	$3, %esi
	vzeroupper
	callq	_memzero64
	leaq	56(%rsp), %rdi
	movl	$3, %esi
	callq	_memzero64
	leaq	80(%rsp), %rdi
	movl	$2, %esi
	callq	_memzero64
	movq	$0, 96(%rsp)
	leaq	104(%rsp), %r15
	movl	$16, %esi
	movq	%r15, %rdi
	callq	_memzero
	movb	$0, 120(%rsp)
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	movabsq	$17575274610687, %rdx   # imm = 0xFFC0FFFFFFF
	andq	%rax, %rdx
	movq	%rdx, 32(%rsp)
	shrdq	$44, %rcx, %rax
	leaq	-4128768(%r14), %rdx
	andq	%rax, %rdx
	movq	%rdx, 40(%rsp)
	shrq	$24, %rcx
	movabsq	$68719475727, %rax      # imm = 0xFFFFFFC0F
	andq	%rcx, %rax
	movq	%rax, 48(%rsp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 56(%rsp)
	movq	$0, 72(%rsp)
	movq	16(%r13), %rax
	movq	%rax, 80(%rsp)
	movq	24(%r13), %rax
	movq	%rax, 88(%rsp)
	movq	$0, 96(%rsp)
	movb	$0, 120(%rsp)
	xorl	%eax, %eax
	testb	%al, %al
	movq	%r12, 128(%rsp)         # 8-byte Spill
	je	.LBB3_1
# %bb.2:                                # %thenbranch.i12
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, %r13d
	cmpl	$16, %ecx
	movl	$16, %r12d
	cmovbq	%r13, %r12
	testq	%r12, %r12
	je	.LBB3_5
# %bb.3:                                # %loop_body.preheader.i
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB3_4:                                # %loop_body.i
                                        # =>This Inner Loop Header: Depth=1
	addq	%r15, %rax
	movzbl	(%rbx,%rcx), %edx
	movb	%dl, (%rcx,%rax)
	addq	$1, %rcx
	movq	96(%rsp), %rax
	cmpq	%r12, %rcx
	jb	.LBB3_4
.LBB3_5:                                # %loop_end.i16
	addq	%r12, %rax
	movq	%rax, 96(%rsp)
	cmpq	$16, %rax
	jb	.LBB3_14
# %bb.6:                                # %branchmerge33.i
	leaq	104(%rsp), %rsi
	leaq	32(%rsp), %rdi
	movl	$16, %edx
	callq	_poly1305_blocks
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	$0, 96(%rsp)
	jmp	.LBB3_7
.LBB3_1:                                # %entry.branchmerge38_crit_edge.i
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r13d
	xorl	%r12d, %r12d
	movq	%rax, %rcx
.LBB3_7:                                # %branchmerge38.i
	movq	%r13, %rax
	subq	%r12, %rax
	cmpq	$16, %rax
	jb	.LBB3_9
# %bb.8:                                # %thenbranch43.i
	subl	%r12d, %ecx
	andl	$-16, %ecx
	movq	%rcx, %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	leaq	(%rbx,%r12), %rsi
	leaq	32(%rsp), %rdi
                                        # kill: def %edx killed %edx killed %rdx
	callq	_poly1305_blocks
	movq	24(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r12), %r12
.LBB3_9:                                # %branchmerge56.i
	subq	%r12, %r13
	jbe	.LBB3_14
# %bb.10:                               # %thenbranch62.i
	movq	96(%rsp), %rax
	je	.LBB3_13
# %bb.11:                               # %loop_body68.preheader.i
	addq	%r12, %rbx
	leaq	104(%rsp), %rsi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB3_12:                               # %loop_body68.i
                                        # =>This Inner Loop Header: Depth=1
	addq	%rsi, %rax
	movzbl	(%rbx,%rdx), %ecx
	movb	%cl, (%rdx,%rax)
	addq	$1, %rdx
	movq	96(%rsp), %rax
	cmpq	%r13, %rdx
	jb	.LBB3_12
.LBB3_13:                               # %loop_end69.i
	addq	%r13, %rax
	movq	%rax, 96(%rsp)
.LBB3_14:                               # %_poly1305_update.exit
	movq	96(%rsp), %rax
	testq	%rax, %rax
	je	.LBB3_18
# %bb.15:                               # %thenbranch.i
	movb	$1, 104(%rsp,%rax)
	leaq	1(%rax), %rcx
	cmpq	$15, %rcx
	ja	.LBB3_17
# %bb.16:                               # %loop_body.lr.ph.i
	leaq	(%rsp,%rcx), %rdi
	addq	$104, %rdi
	movl	$15, %edx
	subq	%rax, %rdx
	xorl	%esi, %esi
	callq	memset
.LBB3_17:                               # %loop_end.i
	movb	$1, 120(%rsp)
	leaq	32(%rsp), %rdi
	movl	$16, %edx
	movq	%r15, %rsi
	callq	_poly1305_blocks
.LBB3_18:                               # %_poly1305_finish.exit
	leaq	56(%rsp), %r12
	movq	64(%rsp), %rcx
	movq	80(%rsp), %r8
	movq	%rcx, %rdx
	shrq	$44, %rdx
	addq	72(%rsp), %rdx
	andq	%r14, %rcx
	movb	$42, %sil
	bzhiq	%rsi, %rdx, %rsi
	shrq	$42, %rdx
	leaq	(%rdx,%rdx,4), %rax
	addq	56(%rsp), %rax
	movq	%rax, %rbx
	shrq	$44, %rbx
	addq	%rcx, %rbx
	andq	%r14, %rax
	movq	%rbx, %r10
	shrq	$44, %r10
	addq	%rsi, %r10
	andq	%r14, %rbx
	movq	%r10, %rdx
	shrq	$42, %rdx
	negl	%edx
	andl	$5, %edx
	addq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$44, %rcx
	addq	%rbx, %rcx
	andq	%r14, %rdx
	leaq	5(%rdx), %r9
	movq	%r9, %rax
	shrq	$44, %rax
	addq	%rcx, %rax
	movq	%rax, %rbx
	shrq	$44, %rbx
	movabsq	$-4398046511104, %rsi   # imm = 0xFFFFFC0000000000
	orq	%r10, %rsi
	addq	%rbx, %rsi
	movq	%rsi, %rbx
	shrq	$63, %rbx
	addq	$-1, %rbx
	movq	%rbx, %rdi
	andq	%r14, %rdi
	andq	%rdi, %r9
	andq	%rax, %rdi
	andq	%rsi, %rbx
	sarq	$63, %rsi
	andq	%rsi, %rdx
	orq	%r9, %rdx
	andq	%rsi, %rcx
	orq	%rdi, %rcx
	andq	%r10, %rsi
	orq	%rbx, %rsi
	leaq	80(%rsp), %r13
	movq	88(%rsp), %rdi
	movq	%r8, %rax
	andq	%r14, %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$44, %rdx
	andq	%r14, %rax
	shrq	$44, %r8
	movq	%rdi, %rbx
	shlq	$20, %rbx
	addq	$-1048575, %r14         # imm = 0xFFF00001
	andq	%rbx, %r14
	orq	%r8, %r14
	addq	%rcx, %r14
	addq	%rdx, %r14
	movq	%r14, %rcx
	shrq	$44, %rcx
	shrq	$24, %rdi
	addq	%rsi, %rdi
	addq	%rcx, %rdi
	movq	%r14, %rcx
	shlq	$44, %rcx
	orq	%rax, %rcx
	movl	$6164, %eax             # imm = 0x1814
	bextrq	%rax, %r14, %rax
	shlq	$24, %rdi
	orq	%rax, %rdi
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	%rcx, (%rax)
	movq	%rdi, 8(%rax)
	leaq	32(%rsp), %rdi
	movl	$3, %esi
	callq	_memzero64
	movl	$3, %esi
	movq	%r12, %rdi
	callq	_memzero64
	movl	$2, %esi
	movq	%r13, %rdi
	callq	_memzero64
	movq	$0, 96(%rsp)
	movl	$16, %esi
	movq	%r15, %rdi
	callq	_memzero
	movb	$0, 120(%rsp)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_crypto_onetimeauth_poly1305, .Lfunc_end3-_crypto_onetimeauth_poly1305
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function fact.declassify.i1
	.type	fact.declassify.i1,@function
fact.declassify.i1:                     # @fact.declassify.i1
# %bb.0:                                # %entry
	movl	%edi, %eax
	retq
.Lfunc_end4:
	.size	fact.declassify.i1, .Lfunc_end4-fact.declassify.i1
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_core_salsa20
	.type	_crypto_core_salsa20,@function
_crypto_core_salsa20:                   # @_crypto_core_salsa20
# %bb.0:                                # %entry
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, -40(%rsp)         # 8-byte Spill
	movl	(%rdx), %r15d
	movl	4(%rdx), %eax
	movl	%eax, -116(%rsp)        # 4-byte Spill
	movl	8(%rdx), %eax
	movl	%eax, -112(%rsp)        # 4-byte Spill
	movl	12(%rdx), %eax
	movl	%eax, -108(%rsp)        # 4-byte Spill
	movl	16(%rdx), %eax
	movl	%eax, -104(%rsp)        # 4-byte Spill
	movl	20(%rdx), %r8d
	movl	24(%rdx), %r9d
	movl	28(%rdx), %eax
	movl	(%rsi), %edi
	movl	4(%rsi), %ebp
	movl	8(%rsi), %edx
	movl	12(%rsi), %ecx
	movl	$1797285236, %esi       # imm = 0x6B206574
	movq	%rsi, -128(%rsp)        # 8-byte Spill
	movl	$2036477234, %r14d      # imm = 0x79622D32
	movl	$857760878, %r13d       # imm = 0x3320646E
	movl	$1634760805, %ebx       # imm = 0x61707865
	movl	$0, -100(%rsp)          # 4-byte Folded Spill
	movl	%ecx, -56(%rsp)         # 4-byte Spill
	movl	%ecx, %r12d
	movl	%edx, -60(%rsp)         # 4-byte Spill
	movl	%edx, %esi
	movl	%ebp, -64(%rsp)         # 4-byte Spill
	movl	%ebp, %edx
	movq	%rdx, -80(%rsp)         # 8-byte Spill
	movl	%edi, -68(%rsp)         # 4-byte Spill
	movl	%edi, %r11d
	movl	%eax, -44(%rsp)         # 4-byte Spill
	movl	%eax, %r10d
	movl	%r9d, -48(%rsp)         # 4-byte Spill
	movl	%r9d, %ebp
	movl	%r8d, -52(%rsp)         # 4-byte Spill
	movl	%r8d, %edi
	movl	%r15d, -72(%rsp)        # 4-byte Spill
                                        # kill: def %r15d killed %r15d def %r15
	movl	-116(%rsp), %eax        # 4-byte Reload
                                        # kill: def %eax killed %eax def %rax
	movq	%rax, -96(%rsp)         # 8-byte Spill
	movl	-112(%rsp), %eax        # 4-byte Reload
	movl	%eax, %edx
	movq	%rdx, -88(%rsp)         # 8-byte Spill
	movl	-108(%rsp), %eax        # 4-byte Reload
	movl	%eax, %r9d
	movl	-104(%rsp), %eax        # 4-byte Reload
	movl	%eax, %r8d
	.p2align	4, 0x90
.LBB5_1:                                # %loop_body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rbx,%rdi), %edx
	rorxl	$25, %edx, %eax
	xorl	%r9d, %eax
	leal	(%rax,%rbx), %edx
	movq	%rax, %rcx
	movq	%rcx, -24(%rsp)         # 8-byte Spill
	rorxl	$23, %edx, %eax
	xorl	%esi, %eax
	movq	%rax, -8(%rsp)          # 8-byte Spill
	leal	(%rax,%rcx), %edx
	rorxl	$19, %edx, %edx
	xorl	%edi, %edx
	movq	%rdx, (%rsp)            # 8-byte Spill
	leal	(%rdx,%rax), %edx
	rorxl	$14, %edx, %r9d
	xorl	%ebx, %r9d
	leal	(%r15,%r13), %edx
	rorxl	$25, %edx, %edx
	xorl	%r12d, %edx
	leal	(%rdx,%r13), %ecx
	rorxl	$23, %ecx, %eax
	xorl	%ebp, %eax
	movq	%rax, -16(%rsp)         # 8-byte Spill
	leal	(%rax,%rdx), %ecx
	movq	%rdx, %r12
	rorxl	$19, %ecx, %ebp
	xorl	%r15d, %ebp
	leal	(%rax,%rbp), %ecx
	rorxl	$14, %ecx, %ecx
	xorl	%r13d, %ecx
	leal	(%r14,%r11), %edx
	rorxl	$25, %edx, %edx
	xorl	%r10d, %edx
	movq	%rdx, -32(%rsp)         # 8-byte Spill
	leal	(%rdx,%r14), %eax
	rorxl	$23, %eax, %ebx
	xorl	-96(%rsp), %ebx         # 4-byte Folded Reload
	leal	(%rbx,%rdx), %eax
	rorxl	$19, %eax, %r13d
	xorl	%r11d, %r13d
	leal	(%rbx,%r13), %eax
	rorxl	$14, %eax, %eax
	xorl	%r14d, %eax
	movq	-128(%rsp), %rdi        # 8-byte Reload
	leal	(%rdi,%r8), %edx
	rorxl	$25, %edx, %r11d
	xorl	-88(%rsp), %r11d        # 4-byte Folded Reload
	leal	(%r11,%rdi), %edx
	rorxl	$23, %edx, %esi
	xorl	-80(%rsp), %esi         # 4-byte Folded Reload
	leal	(%rsi,%r11), %edx
	rorxl	$19, %edx, %r14d
	xorl	%r8d, %r14d
	leal	(%r14,%rsi), %edx
	rorxl	$14, %edx, %r10d
	xorl	%edi, %r10d
	leal	(%r11,%r9), %edi
	rorxl	$25, %edi, %r15d
	xorl	%ebp, %r15d
	leal	(%r15,%r9), %edi
	rorxl	$23, %edi, %ebp
	xorl	%ebx, %ebp
	leal	(%r15,%rbp), %edi
	rorxl	$19, %edi, %edx
	xorl	%r11d, %edx
	movq	%rdx, -88(%rsp)         # 8-byte Spill
	movq	%rbp, -96(%rsp)         # 8-byte Spill
	leal	(%rdx,%rbp), %edi
	rorxl	$14, %edi, %ebx
	xorl	%r9d, %ebx
	movq	-24(%rsp), %rbp         # 8-byte Reload
	leal	(%rcx,%rbp), %edi
	rorxl	$25, %edi, %r11d
	xorl	%r13d, %r11d
	leal	(%r11,%rcx), %edi
	rorxl	$23, %edi, %edx
	xorl	%esi, %edx
	leal	(%rdx,%r11), %esi
	rorxl	$19, %esi, %r9d
	xorl	%ebp, %r9d
	movq	%rdx, -80(%rsp)         # 8-byte Spill
	leal	(%r9,%rdx), %esi
	rorxl	$14, %esi, %r13d
	xorl	%ecx, %r13d
	movq	%r12, %rdx
	leal	(%rax,%rdx), %ecx
	rorxl	$25, %ecx, %r8d
	xorl	%r14d, %r8d
	leal	(%r8,%rax), %ecx
	rorxl	$23, %ecx, %esi
	xorl	-8(%rsp), %esi          # 4-byte Folded Reload
	leal	(%rsi,%r8), %ecx
	rorxl	$19, %ecx, %r12d
	xorl	%edx, %r12d
	leal	(%r12,%rsi), %edi
	rorxl	$14, %edi, %r14d
	xorl	%eax, %r14d
	movq	-32(%rsp), %rcx         # 8-byte Reload
	movq	%r10, -128(%rsp)        # 8-byte Spill
	leal	(%r10,%rcx), %eax
	rorxl	$25, %eax, %edi
	xorl	(%rsp), %edi            # 4-byte Folded Reload
	leal	(%rdi,%r10), %eax
	rorxl	$23, %eax, %ebp
	xorl	-16(%rsp), %ebp         # 4-byte Folded Reload
	leal	(%rdi,%rbp), %eax
	rorxl	$19, %eax, %r10d
	xorl	%ecx, %r10d
	leal	(%r10,%rbp), %edx
	rorxl	$14, %edx, %eax
	xorl	-128(%rsp), %eax        # 4-byte Folded Reload
	movq	%rax, -128(%rsp)        # 8-byte Spill
	movl	-100(%rsp), %edx        # 4-byte Reload
	addl	$1, %edx
	movl	%edx, -100(%rsp)        # 4-byte Spill
	cmpl	$10, %edx
	jb	.LBB5_1
# %bb.2:                                # %loop_end
	addl	$1634760805, %ebx       # imm = 0x61707865
	movq	-40(%rsp), %rdx         # 8-byte Reload
	movl	%ebx, (%rdx)
	addl	-72(%rsp), %r15d        # 4-byte Folded Reload
	movl	%r15d, 4(%rdx)
	movq	-96(%rsp), %rax         # 8-byte Reload
	addl	-116(%rsp), %eax        # 4-byte Folded Reload
	movl	%eax, 8(%rdx)
	movq	-88(%rsp), %rbx         # 8-byte Reload
	addl	-112(%rsp), %ebx        # 4-byte Folded Reload
	movl	%ebx, 12(%rdx)
	addl	-108(%rsp), %r9d        # 4-byte Folded Reload
	movl	%r9d, 16(%rdx)
	addl	$857760878, %r13d       # imm = 0x3320646E
	movl	%r13d, 20(%rdx)
	addl	-68(%rsp), %r11d        # 4-byte Folded Reload
	movl	%r11d, 24(%rdx)
	movq	-80(%rsp), %rbx         # 8-byte Reload
	addl	-64(%rsp), %ebx         # 4-byte Folded Reload
	movl	%ebx, 28(%rdx)
	addl	-60(%rsp), %esi         # 4-byte Folded Reload
	movl	%esi, 32(%rdx)
	addl	-56(%rsp), %r12d        # 4-byte Folded Reload
	movl	%r12d, 36(%rdx)
	addl	$2036477234, %r14d      # imm = 0x79622D32
	movl	%r14d, 40(%rdx)
	addl	-104(%rsp), %r8d        # 4-byte Folded Reload
	movl	%r8d, 44(%rdx)
	addl	-52(%rsp), %edi         # 4-byte Folded Reload
	movl	%edi, 48(%rdx)
	addl	-48(%rsp), %ebp         # 4-byte Folded Reload
	movl	%ebp, 52(%rdx)
	addl	-44(%rsp), %r10d        # 4-byte Folded Reload
	movl	%r10d, 56(%rdx)
	movq	-128(%rsp), %rax        # 8-byte Reload
	addl	$1797285236, %eax       # imm = 0x6B206574
	movl	%eax, 60(%rdx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	_crypto_core_salsa20, .Lfunc_end5-_crypto_core_salsa20
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_stream_salsa20
	.type	_crypto_stream_salsa20,@function
_crypto_stream_salsa20:                 # @_crypto_stream_salsa20
# %bb.0:                                # %entry
                                        # kill: def %esi killed %esi def %rsi
	testl	%esi, %esi
	je	.LBB6_8
# %bb.1:                                # %branchmerge
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	%rsp, %rax
	leaq	-32(%rax), %r8
	movq	%r8, %rsp
	vmovups	(%rcx), %ymm0
	vmovups	%ymm0, -32(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %r9
	movq	%r9, %rsp
	movq	$0, -8(%rax)
	movq	(%rdx), %rcx
	movq	%rcx, -16(%rax)
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movl	%esi, %eax
	shrl	$6, %eax
	movq	%rdi, %r10
	je	.LBB6_4
# %bb.2:                                # %loop_body14.lr.ph
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	xorl	%r13d, %r13d
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	xorl	%ecx, %ecx
	movq	%r8, -88(%rbp)          # 8-byte Spill
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movq	%r10, -64(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB6_3:                                # %loop_body14
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movslq	%edx, %rdx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%rdx), %rdi
	movq	%r9, %rsi
	movq	%r8, %rdx
	vzeroupper
	callq	_crypto_core_salsa20
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movl	-52(%rbp), %edi         # 4-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movzbl	%cl, %eax
	addl	$1, %eax
	movb	%al, 8(%r9)
	shrl	$8, %eax
	movzbl	%r12b, %r12d
	addl	%eax, %r12d
	movb	%r12b, 9(%r9)
	movl	%r12d, %eax
	shrl	$8, %eax
	movzbl	%r14b, %r14d
	addl	%eax, %r14d
	movb	%r14b, 10(%r9)
	movl	%r14d, %eax
	shrl	$8, %eax
	movzbl	%bl, %ebx
	addl	%eax, %ebx
	movb	%bl, 11(%r9)
	movl	%ebx, %eax
	shrl	$8, %eax
	movzbl	%r15b, %r15d
	addl	%eax, %r15d
	movb	%r15b, 12(%r9)
	movl	%r15d, %eax
	shrl	$8, %eax
	movzbl	%r13b, %r13d
	addl	%eax, %r13d
	movb	%r13b, 13(%r9)
	movl	%r13d, %eax
	shrl	$8, %eax
	movzbl	%dil, %edi
	addl	%eax, %edi
	movb	%dil, 14(%r9)
	movl	%edi, %eax
	shrl	$8, %eax
	addb	%al, %sil
	movl	-44(%rbp), %eax         # 4-byte Reload
	movb	%sil, 15(%r9)
	addl	$1, %ecx
	addl	$64, %edx
	cmpl	%eax, %ecx
	jb	.LBB6_3
.LBB6_4:                                # %loop_end15
	movq	%r10, %r12
	movq	%rsp, %r13
	addq	$-64, %r13
	movq	%r13, %rsp
	movq	-72(%rbp), %r15         # 8-byte Reload
	movl	%r15d, %ebx
	andl	$-64, %ebx
	cmpl	%r15d, %ebx
	movq	%r8, %r14
	jae	.LBB6_7
# %bb.5:                                # %thenbranch47
	movq	%r13, %rdi
	movq	%r9, %rsi
	movq	%r14, %rdx
	vzeroupper
	callq	_crypto_core_salsa20
	testb	$63, %r15b
	je	.LBB6_7
# %bb.6:                                # %loop_body61.lr.ph
	movslq	%ebx, %rax
	movq	%r12, %rdi
	addq	%rax, %rdi
	andl	$63, %r15d
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	memcpy
.LBB6_7:                                # %branchmerge74
	movl	$64, %esi
	movq	%r13, %rdi
	vzeroupper
	callq	_memzero
	movl	$32, %esi
	movq	%r14, %rdi
	callq	_memzero
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
.LBB6_8:                                # %thenbranch
	retq
.Lfunc_end6:
	.size	_crypto_stream_salsa20, .Lfunc_end6-_crypto_stream_salsa20
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_stream_salsa20_xor_ic
	.type	_crypto_stream_salsa20_xor_ic,@function
_crypto_stream_salsa20_xor_ic:          # @_crypto_stream_salsa20_xor_ic
# %bb.0:                                # %entry
	testl	%edx, %edx
	je	.LBB7_11
# %bb.1:                                # %branchmerge
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movq	%rsp, %rax
	leaq	-32(%rax), %rbx
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	%rbx, %rsp
	vmovups	(%r9), %ymm0
	vmovups	%ymm0, -32(%rax)
	movq	%rsp, %rax
	leaq	-16(%rax), %r9
	movq	%r9, %rsp
	movq	(%rcx), %rcx
	movq	%rcx, -16(%rax)
	movb	%r8b, -8(%rax)
	movq	%r8, %r10
	shrq	$8, %r10
	movb	%r10b, -7(%rax)
	movq	%r8, %rbx
	shrq	$16, %rbx
	movb	%bl, -6(%rax)
	movq	%r8, %r11
	shrq	$24, %r11
	movb	%r11b, -5(%rax)
	movq	%r8, %r15
	shrq	$32, %r15
	movb	%r15b, -4(%rax)
	movq	%r8, %rcx
	shrq	$40, %rcx
	movb	%cl, -3(%rax)
	movq	%r8, %r12
	shrq	$48, %r12
	movb	%r12b, -2(%rax)
	movq	%r8, %r13
	shrq	$56, %r13
	movb	%r13b, -1(%rax)
	movl	%edx, -52(%rbp)         # 4-byte Spill
	shrl	$6, %edx
	movq	%rsp, %r14
	addq	$-64, %r14
	movq	%r14, %rsp
	movl	%edx, -56(%rbp)         # 4-byte Spill
	testl	%edx, %edx
	je	.LBB7_6
# %bb.2:                                # %loop_body32.lr.ph
	xorl	%eax, %eax
	xorl	%edx, %edx
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r9, -72(%rbp)          # 8-byte Spill
	.p2align	4, 0x90
.LBB7_3:                                # %loop_body32
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movq	%r13, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	%r15, -120(%rbp)        # 8-byte Spill
	movq	%r11, -128(%rbp)        # 8-byte Spill
	movq	%r10, -136(%rbp)        # 8-byte Spill
	movq	%r8, -144(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movslq	%eax, %r13
	leaq	(%rsi,%r13), %r15
	addq	%rdi, %r13
	movq	%r14, %rdi
	movq	%r9, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	vzeroupper
	callq	_crypto_core_salsa20
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB7_4:                                # %loop_body45
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r14,%rax), %ecx
	xorb	(%r15,%rax), %cl
	movb	%cl, (%r13,%rax)
	addq	$1, %rax
	cmpl	$64, %eax
	jb	.LBB7_4
# %bb.5:                                # %loop_end46
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-144(%rbp), %r8         # 8-byte Reload
	movzbl	%r8b, %r8d
	addl	$1, %r8d
	movq	-72(%rbp), %r9          # 8-byte Reload
	movb	%r8b, 8(%r9)
	movl	%r8d, %eax
	shrl	$8, %eax
	movq	-136(%rbp), %r10        # 8-byte Reload
	movzbl	%r10b, %r10d
	addl	%eax, %r10d
	movb	%r10b, 9(%r9)
	movl	%r10d, %eax
	shrl	$8, %eax
	movzbl	%bl, %ebx
	addl	%eax, %ebx
	movb	%bl, 10(%r9)
	movl	%ebx, %eax
	shrl	$8, %eax
	movq	-128(%rbp), %r11        # 8-byte Reload
	movzbl	%r11b, %r11d
	addl	%eax, %r11d
	movb	%r11b, 11(%r9)
	movl	%r11d, %eax
	shrl	$8, %eax
	movq	-120(%rbp), %r15        # 8-byte Reload
	movzbl	%r15b, %r15d
	addl	%eax, %r15d
	movb	%r15b, 12(%r9)
	movl	%r15d, %eax
	shrl	$8, %eax
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	movb	%cl, 13(%r9)
	movl	%ecx, %eax
	shrl	$8, %eax
	movzbl	%r12b, %r12d
	addl	%eax, %r12d
	movb	%r12b, 14(%r9)
	movl	%r12d, %eax
	shrl	$8, %eax
	movq	-104(%rbp), %r13        # 8-byte Reload
	addb	%al, %r13b
	movb	%r13b, 15(%r9)
	movl	-60(%rbp), %edx         # 4-byte Reload
	addl	$1, %edx
	movq	-96(%rbp), %rax         # 8-byte Reload
	addl	$64, %eax
	cmpl	-56(%rbp), %edx         # 4-byte Folded Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	jb	.LBB7_3
.LBB7_6:                                # %loop_end33
	movl	-52(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, %r15d
	andl	$-64, %r15d
	cmpl	%ebx, %r15d
	jae	.LBB7_10
# %bb.7:                                # %thenbranch83
	movq	%rdi, %r13
	movq	%rsi, %r12
	movq	%r14, %rdi
	movq	%r9, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	vzeroupper
	callq	_crypto_core_salsa20
	andl	$63, %ebx
	je	.LBB7_10
# %bb.8:                                # %loop_body101.preheader
	movslq	%r15d, %rax
	movq	%r13, %rsi
	addq	%rax, %rsi
	movq	%r12, %rdx
	addq	%rax, %rdx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB7_9:                                # %loop_body101
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r14,%rax), %ecx
	xorb	(%rdx,%rax), %cl
	movb	%cl, (%rsi,%rax)
	addq	$1, %rax
	cmpl	%ebx, %eax
	jb	.LBB7_9
.LBB7_10:                               # %branchmerge120
	movl	$64, %esi
	movq	%r14, %rdi
	vzeroupper
	callq	_memzero
	movl	$32, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	_memzero
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
.LBB7_11:                               # %thenbranch
	retq
.Lfunc_end7:
	.size	_crypto_stream_salsa20_xor_ic, .Lfunc_end7-_crypto_stream_salsa20_xor_ic
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_core_hsalsa20
	.type	_crypto_core_hsalsa20,@function
_crypto_core_hsalsa20:                  # @_crypto_core_hsalsa20
# %bb.0:                                # %entry
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdi, -64(%rsp)         # 8-byte Spill
	movl	(%rdx), %eax
	movq	%rax, -88(%rsp)         # 8-byte Spill
	movl	4(%rdx), %eax
	movq	%rax, -80(%rsp)         # 8-byte Spill
	movl	8(%rdx), %eax
	movq	%rax, -72(%rsp)         # 8-byte Spill
	movl	12(%rdx), %ebp
	movl	16(%rdx), %r9d
	movl	20(%rdx), %r11d
	movl	24(%rdx), %r8d
	movl	28(%rdx), %r12d
	movl	(%rsi), %r14d
	movl	4(%rsi), %ebx
	movl	8(%rsi), %edi
	movl	12(%rsi), %r13d
	movl	$1797285236, %r15d      # imm = 0x6B206574
	movl	$2036477234, %r10d      # imm = 0x79622D32
	movl	$857760878, %edx        # imm = 0x3320646E
	movl	$1634760805, %eax       # imm = 0x61707865
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB8_1:                                # %loop_body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, -92(%rsp)         # 4-byte Spill
	leal	(%rax,%r11), %ecx
	rorxl	$25, %ecx, %esi
	xorl	%ebp, %esi
	leal	(%rsi,%rax), %ecx
	movq	%rsi, -40(%rsp)         # 8-byte Spill
	rorxl	$23, %ecx, %ebp
	xorl	%edi, %ebp
	movq	%rbp, -16(%rsp)         # 8-byte Spill
	leal	(%rsi,%rbp), %ecx
	rorxl	$19, %ecx, %ecx
	xorl	%r11d, %ecx
	movq	%rcx, -8(%rsp)          # 8-byte Spill
	leal	(%rcx,%rbp), %ecx
	movq	%r14, %rsi
	rorxl	$14, %ecx, %r14d
	xorl	%eax, %r14d
	movq	-88(%rsp), %rbp         # 8-byte Reload
	leal	(%rdx,%rbp), %eax
	rorxl	$25, %eax, %edi
	xorl	%r13d, %edi
	movq	%rdi, -32(%rsp)         # 8-byte Spill
	leal	(%rdi,%rdx), %eax
	rorxl	$23, %eax, %ecx
	xorl	%r8d, %ecx
	movq	%rcx, -24(%rsp)         # 8-byte Spill
	leal	(%rcx,%rdi), %eax
	rorxl	$19, %eax, %r13d
	xorl	%ebp, %r13d
	leal	(%rcx,%r13), %eax
	rorxl	$14, %eax, %r8d
	xorl	%edx, %r8d
	leal	(%r10,%rsi), %eax
	rorxl	$25, %eax, %ecx
	xorl	%r12d, %ecx
	movq	%rcx, -48(%rsp)         # 8-byte Spill
	leal	(%rcx,%r10), %eax
	rorxl	$23, %eax, %ebp
	xorl	-80(%rsp), %ebp         # 4-byte Folded Reload
	leal	(%rcx,%rbp), %eax
	rorxl	$19, %eax, %edx
	xorl	%esi, %edx
	leal	(%rdx,%rbp), %eax
	rorxl	$14, %eax, %r11d
	xorl	%r10d, %r11d
	leal	(%r15,%r9), %eax
	rorxl	$25, %eax, %eax
	xorl	-72(%rsp), %eax         # 4-byte Folded Reload
	leal	(%rax,%r15), %ecx
	rorxl	$23, %ecx, %ecx
	xorl	%ebx, %ecx
	leal	(%rcx,%rax), %ebx
	rorxl	$19, %ebx, %r10d
	xorl	%r9d, %r10d
	leal	(%r10,%rcx), %edi
	rorxl	$14, %edi, %r12d
	xorl	%r15d, %r12d
	leal	(%rax,%r14), %esi
	rorxl	$25, %esi, %ebx
	xorl	%r13d, %ebx
	leal	(%rbx,%r14), %esi
	rorxl	$23, %esi, %edi
	xorl	%ebp, %edi
	movq	%rbx, -88(%rsp)         # 8-byte Spill
	leal	(%rdi,%rbx), %esi
	rorxl	$19, %esi, %esi
	xorl	%eax, %esi
	movq	%rsi, -72(%rsp)         # 8-byte Spill
	movq	%rdi, -80(%rsp)         # 8-byte Spill
	leal	(%rsi,%rdi), %eax
	rorxl	$14, %eax, %eax
	xorl	%r14d, %eax
	movq	-40(%rsp), %rdi         # 8-byte Reload
	leal	(%r8,%rdi), %esi
	rorxl	$25, %esi, %r14d
	xorl	%edx, %r14d
	leal	(%r14,%r8), %edx
	rorxl	$23, %edx, %ebx
	xorl	%ecx, %ebx
	leal	(%rbx,%r14), %ecx
	rorxl	$19, %ecx, %ebp
	xorl	%edi, %ebp
	leal	(%rbx,%rbp), %ecx
	rorxl	$14, %ecx, %edx
	xorl	%r8d, %edx
	movq	-32(%rsp), %rsi         # 8-byte Reload
	leal	(%r11,%rsi), %ecx
	rorxl	$25, %ecx, %r9d
	xorl	%r10d, %r9d
	leal	(%r9,%r11), %ecx
	rorxl	$23, %ecx, %edi
	xorl	-16(%rsp), %edi         # 4-byte Folded Reload
	leal	(%rdi,%r9), %ecx
	rorxl	$19, %ecx, %r13d
	xorl	%esi, %r13d
	leal	(%rdi,%r13), %ecx
	rorxl	$14, %ecx, %r10d
	xorl	%r11d, %r10d
	movq	-48(%rsp), %rsi         # 8-byte Reload
	movq	%r12, -56(%rsp)         # 8-byte Spill
	leal	(%r12,%rsi), %ecx
	rorxl	$25, %ecx, %r11d
	xorl	-8(%rsp), %r11d         # 4-byte Folded Reload
	leal	(%r11,%r12), %ecx
	rorxl	$23, %ecx, %r8d
	xorl	-24(%rsp), %r8d         # 4-byte Folded Reload
	leal	(%r8,%r11), %ecx
	rorxl	$19, %ecx, %r12d
	xorl	%esi, %r12d
	leal	(%r12,%r8), %ecx
	rorxl	$14, %ecx, %r15d
	movl	-92(%rsp), %ecx         # 4-byte Reload
	xorl	-56(%rsp), %r15d        # 4-byte Folded Reload
	addl	$1, %ecx
	cmpl	$10, %ecx
	jb	.LBB8_1
# %bb.2:                                # %loop_end
	movq	-64(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	movl	%edx, 4(%rcx)
	movl	%r10d, 8(%rcx)
	movl	%r15d, 12(%rcx)
	movl	%r14d, 16(%rcx)
	movl	%ebx, 20(%rcx)
	movl	%edi, 24(%rcx)
	movl	%r13d, 28(%rcx)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	_crypto_core_hsalsa20, .Lfunc_end8-_crypto_core_hsalsa20
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _crypto_secretbox_xsalsa20poly1305_open
	.type	_crypto_secretbox_xsalsa20poly1305_open,@function
_crypto_secretbox_xsalsa20poly1305_open: # @_crypto_secretbox_xsalsa20poly1305_open
# %bb.0:                                # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movl	%edx, %ebx
	movq	%rsi, %r15
	xorl	%r14d, %r14d
	cmpl	$31, %ebx
	jbe	.LBB9_6
# %bb.1:                                # %branchmerge
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rsp, %r12
	addq	$-32, %r12
	movq	%r12, %rsp
	leaq	-104(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movq	%r8, %rdx
	movq	%rcx, %r13
	callq	_crypto_core_hsalsa20
	movq	%r13, -56(%rbp)         # 8-byte Spill
	leaq	16(%r13), %rdx
	movl	$32, %esi
	movq	%r12, %rdi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	leaq	-104(%rbp), %r13
	movq	%r13, %rcx
	callq	_crypto_stream_salsa20
	movl	$32, %esi
	movq	%r13, %rdi
	callq	_memzero
	movq	%rbx, %r13
	leal	-32(%rbx), %edx
	leaq	32(%r15), %rsi
	leaq	-104(%rbp), %rdi
	movq	%r12, %rcx
	callq	_crypto_onetimeauth_poly1305
	movb	$1, %al
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB9_2:                                # %loop_body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	16(%r15,%rcx), %ebx
	cmpb	-104(%rbp,%rcx), %bl
	setne	%bl
	andb	%al, %bl
	andb	$1, %dl
	movzbl	%dl, %esi
	#APP
	testb	%bl, %bl
	movl	%esi, %edx
	cmovnel	%r14d, %edx
	#NO_APP
	andl	$1, %edx
	andb	$1, %al
	movzbl	%al, %esi
	#APP
	testb	%bl, %bl
	movl	%esi, %eax
	cmovnel	%r14d, %eax
	#NO_APP
	andl	$1, %eax
	addq	$1, %rcx
	cmpl	$16, %ecx
	jb	.LBB9_2
# %bb.3:                                # %_crypto_onetimeauth_poly1305_verify.exit
	movl	$1, %ecx
	#APP
	testb	%al, %al
	movl	%edx, %edi
	cmovnel	%ecx, %edi
	#NO_APP
	andl	$1, %edi
	callq	fact.declassify.i1
	testb	$1, %al
	je	.LBB9_4
# %bb.5:                                # %branchmerge21
	leaq	-104(%rbp), %r14
	movq	%r14, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	_crypto_core_hsalsa20
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%r13d, %edx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%r14, %r9
	callq	_crypto_stream_salsa20_xor_ic
	movl	$32, %esi
	movq	%r14, %rdi
	callq	_memzero
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, (%rbx)
	movb	$1, %r14b
	jmp	.LBB9_6
.LBB9_4:
	xorl	%r14d, %r14d
.LBB9_6:                                # %thenbranch
	movl	%r14d, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
.Lfunc_end9:
	.size	_crypto_secretbox_xsalsa20poly1305_open, .Lfunc_end9-_crypto_secretbox_xsalsa20poly1305_open
                                        # -- End function
	.globl	_crypto_secretbox       # -- Begin function _crypto_secretbox
	.p2align	4, 0x90
	.type	_crypto_secretbox,@function
_crypto_secretbox:                      # @_crypto_secretbox
# %bb.0:                                # %entry
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%r8, %rbp
	movl	%ecx, %r15d
	movq	%rdx, %r12
	movl	%esi, %r14d
	movq	%rdi, %rbx
	cmpl	$32, %r15d
	jae	.LBB10_2
# %bb.1:
	xorl	%eax, %eax
	jmp	.LBB10_3
.LBB10_2:                               # %branchmerge.i
	leaq	8(%rsp), %r13
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%r9, %rdx
	callq	_crypto_core_hsalsa20
	addq	$16, %rbp
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	%r15d, %edx
	movq	%rbp, %rcx
	movq	%r13, %r9
	callq	_crypto_stream_salsa20_xor_ic
	movl	$32, %esi
	movq	%r13, %rdi
	callq	_memzero
	leaq	16(%rbx), %rdi
	addl	$-32, %r14d
	leaq	32(%rbx), %rsi
	movl	%r14d, %edx
	movq	%rbx, %rcx
	callq	_crypto_onetimeauth_poly1305
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rbx)
	movb	$1, %al
.LBB10_3:                               # %_crypto_secretbox_xsalsa20poly1305.exit
                                        # kill: def %al killed %al killed %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	_crypto_secretbox, .Lfunc_end10-_crypto_secretbox
                                        # -- End function
	.globl	_crypto_secretbox_open  # -- Begin function _crypto_secretbox_open
	.p2align	4, 0x90
	.type	_crypto_secretbox_open,@function
_crypto_secretbox_open:                 # @_crypto_secretbox_open
# %bb.0:                                # %entry
	movq	%rdx, %rsi
	movl	%ecx, %edx
	movq	%r8, %rcx
	movq	%r9, %r8
	jmp	_crypto_secretbox_xsalsa20poly1305_open # TAILCALL
.Lfunc_end11:
	.size	_crypto_secretbox_open, .Lfunc_end11-_crypto_secretbox_open
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
