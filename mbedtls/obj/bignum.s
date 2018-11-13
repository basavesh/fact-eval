	.text
	.file	"Module"
	.p2align	4, 0x90         # -- Begin function _mpi_copy
	.type	_mpi_copy,@function
_mpi_copy:                              # @_mpi_copy
	.cfi_startproc
# %bb.0:                                # %entry
	movb	%r8b, %al
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movb	$1, -1(%rsp)
	cmpq	%rcx, %rsi
	cmovbq	%rsi, %rcx
	movq	%rsi, -16(%rsp)         # 8-byte Spill
	movb	%al, -17(%rsp)          # 1-byte Spill
	movq	%rcx, -32(%rsp)         # 8-byte Spill
	movq	%rdx, -40(%rsp)         # 8-byte Spill
	movq	%rdi, -48(%rsp)         # 8-byte Spill
	movq	%r9, -56(%rsp)          # 8-byte Spill
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-56(%rsp), %rax         # 8-byte Reload
	movq	-32(%rsp), %rcx         # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -64(%rsp)         # 8-byte Spill
	jae	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rsp), %rax         # 8-byte Reload
	movq	-64(%rsp), %rcx         # 8-byte Reload
	movq	(%rax,%rcx,8), %rdx
	movb	-17(%rsp), %sil         # 1-byte Reload
	andb	$1, %sil
	movq	-48(%rsp), %rdi         # 8-byte Reload
	movq	(%rdi,%rcx,8), %r8
	#APP
	testb	%sil, %sil
	cmovneq	%rdx, %r8
	#NO_APP
	movq	%r8, (%rdi,%rcx,8)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rsp), %rax         # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -56(%rsp)         # 8-byte Spill
	jmp	.LBB0_1
.LBB0_4:
	movq	-32(%rsp), %rax         # 8-byte Reload
	movq	%rax, -72(%rsp)         # 8-byte Spill
	jmp	.LBB0_5
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movq	-72(%rsp), %rax         # 8-byte Reload
	movq	-16(%rsp), %rcx         # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -80(%rsp)         # 8-byte Spill
	jae	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movb	-17(%rsp), %al          # 1-byte Reload
	andb	$1, %al
	movq	-48(%rsp), %rcx         # 8-byte Reload
	movq	-80(%rsp), %rdx         # 8-byte Reload
	movq	(%rcx,%rdx,8), %rsi
	xorl	%edi, %edi
	movl	%edi, %r8d
	#APP
	testb	%al, %al
	cmovneq	%r8, %rsi
	#NO_APP
	movq	%rsi, (%rcx,%rdx,8)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-80(%rsp), %rax         # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -72(%rsp)         # 8-byte Spill
	jmp	.LBB0_5
.LBB0_8:
	movb	-17(%rsp), %al          # 1-byte Reload
	andb	$1, %al
	movb	-1(%rsp), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	xorl	%esi, %esi
	#APP
	testb	%al, %al
	cmovnel	%esi, %edx
	#NO_APP
	movb	%dl, %al
	andb	$1, %al
	movb	%al, -1(%rsp)
	retq
.Lfunc_end0:
	.size	_mpi_copy, .Lfunc_end0-_mpi_copy
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _mpi_sub_hlp
	.type	_mpi_sub_hlp,@function
_mpi_sub_hlp:                           # @_mpi_sub_hlp
	.cfi_startproc
# %bb.0:                                # %entry
	movb	%r9b, %al
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movb	$1, -1(%rsp)
	movq	$0, -16(%rsp)
	movq	$0, -24(%rsp)
	movq	%rsi, -32(%rsp)         # 8-byte Spill
	movb	%al, -33(%rsp)          # 1-byte Spill
	movq	%r8, -48(%rsp)          # 8-byte Spill
	movq	%rcx, -56(%rsp)         # 8-byte Spill
	movq	%rdi, -64(%rsp)         # 8-byte Spill
	movq	%rdx, -72(%rsp)         # 8-byte Spill
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movq	-72(%rsp), %rax         # 8-byte Reload
	movq	-64(%rsp), %rcx         # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -80(%rsp)         # 8-byte Spill
	jae	.LBB1_4
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-56(%rsp), %rax         # 8-byte Reload
	movq	-80(%rsp), %rcx         # 8-byte Reload
	movq	(%rax,%rcx,8), %rdx
	cmpq	-16(%rsp), %rdx
	setb	%sil
	movl	$1, %edi
	movl	%edi, %edx
	xorl	%edi, %edi
	movl	%edi, %r8d
	#APP
	testb	%sil, %sil
	movq	%r8, %r9
	cmovneq	%rdx, %r9
	#NO_APP
	movb	-33(%rsp), %sil         # 1-byte Reload
	andb	$1, %sil
	movq	-24(%rsp), %rdx
	#APP
	testb	%sil, %sil
	cmovneq	%r9, %rdx
	#NO_APP
	movq	%rdx, -24(%rsp)
	movq	(%rax,%rcx,8), %rdx
	subq	-16(%rsp), %rdx
	movb	-33(%rsp), %sil         # 1-byte Reload
	andb	$1, %sil
	movq	(%rax,%rcx,8), %r8
	#APP
	testb	%sil, %sil
	cmovneq	%rdx, %r8
	#NO_APP
	movq	%r8, (%rax,%rcx,8)
	movq	(%rax,%rcx,8), %rdx
	movq	-32(%rsp), %r8          # 8-byte Reload
	cmpq	(%r8,%rcx,8), %rdx
	setb	%sil
	movl	$1, %edi
	movl	%edi, %edx
	xorl	%edi, %edi
	movl	%edi, %r9d
	#APP
	testb	%sil, %sil
	movq	%r9, %r10
	cmovneq	%rdx, %r10
	#NO_APP
	addq	-24(%rsp), %r10
	movb	-33(%rsp), %sil         # 1-byte Reload
	andb	$1, %sil
	movq	-16(%rsp), %rdx
	#APP
	testb	%sil, %sil
	cmovneq	%r10, %rdx
	#NO_APP
	movq	%rdx, -16(%rsp)
	movq	(%rax,%rcx,8), %rdx
	subq	(%r8,%rcx,8), %rdx
	movb	-33(%rsp), %sil         # 1-byte Reload
	andb	$1, %sil
	movq	(%rax,%rcx,8), %r9
	#APP
	testb	%sil, %sil
	cmovneq	%rdx, %r9
	#NO_APP
	movq	%r9, (%rax,%rcx,8)
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-80(%rsp), %rax         # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -72(%rsp)         # 8-byte Spill
	jmp	.LBB1_1
.LBB1_4:
	movq	-64(%rsp), %rax         # 8-byte Reload
	movq	%rax, -88(%rsp)         # 8-byte Spill
	jmp	.LBB1_5
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	movq	-88(%rsp), %rax         # 8-byte Reload
	movq	-48(%rsp), %rcx         # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -96(%rsp)         # 8-byte Spill
	jae	.LBB1_8
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	movq	-56(%rsp), %rax         # 8-byte Reload
	movq	-96(%rsp), %rcx         # 8-byte Reload
	movq	(%rax,%rcx,8), %rdx
	cmpq	-16(%rsp), %rdx
	setb	%sil
	movl	$1, %edi
	movl	%edi, %edx
	xorl	%edi, %edi
	movl	%edi, %r8d
	#APP
	testb	%sil, %sil
	movq	%r8, %r9
	cmovneq	%rdx, %r9
	#NO_APP
	movb	-33(%rsp), %sil         # 1-byte Reload
	andb	$1, %sil
	movq	-24(%rsp), %rdx
	#APP
	testb	%sil, %sil
	cmovneq	%r9, %rdx
	#NO_APP
	movq	%rdx, -24(%rsp)
	movq	(%rax,%rcx,8), %rdx
	subq	-16(%rsp), %rdx
	movb	-33(%rsp), %sil         # 1-byte Reload
	andb	$1, %sil
	movq	(%rax,%rcx,8), %r8
	#APP
	testb	%sil, %sil
	cmovneq	%rdx, %r8
	#NO_APP
	movq	%r8, (%rax,%rcx,8)
	movq	-24(%rsp), %rdx
	movb	-33(%rsp), %sil         # 1-byte Reload
	andb	$1, %sil
	movq	-16(%rsp), %r8
	#APP
	testb	%sil, %sil
	cmovneq	%rdx, %r8
	#NO_APP
	movq	%r8, -16(%rsp)
# %bb.7:                                #   in Loop: Header=BB1_5 Depth=1
	movq	-96(%rsp), %rax         # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -88(%rsp)         # 8-byte Spill
	jmp	.LBB1_5
.LBB1_8:
	movb	-33(%rsp), %al          # 1-byte Reload
	andb	$1, %al
	movb	-1(%rsp), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	xorl	%esi, %esi
	#APP
	testb	%al, %al
	cmovnel	%esi, %edx
	#NO_APP
	movb	%dl, %al
	andb	$1, %al
	movb	%al, -1(%rsp)
	retq
.Lfunc_end1:
	.size	_mpi_sub_hlp, .Lfunc_end1-_mpi_sub_hlp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _mbedtls_mpi_cmp_abs
	.type	_mbedtls_mpi_cmp_abs,@function
_mbedtls_mpi_cmp_abs:                   # @_mbedtls_mpi_cmp_abs
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	xorl	%eax, %eax
	movl	%eax, %r8d
	movl	$0, -4(%rsp)
	movb	$1, -5(%rsp)
	movq	$0, -16(%rsp)
	movq	$0, -24(%rsp)
	movq	%rdx, -32(%rsp)         # 8-byte Spill
	movq	%rsi, -40(%rsp)         # 8-byte Spill
	movq	%rdi, -48(%rsp)         # 8-byte Spill
	movq	%rcx, -56(%rsp)         # 8-byte Spill
	movq	%r8, -64(%rsp)          # 8-byte Spill
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movq	-64(%rsp), %rax         # 8-byte Reload
	movq	-40(%rsp), %rcx         # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -72(%rsp)         # 8-byte Spill
	jae	.LBB2_4
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rsp), %rax         # 8-byte Reload
	movq	-72(%rsp), %rcx         # 8-byte Reload
	subq	%rcx, %rax
	movq	%rax, %rdx
	subq	$1, %rdx
	cmpq	$0, -16(%rsp)
	sete	%sil
	movq	-48(%rsp), %rdi         # 8-byte Reload
	cmpq	$0, (%rdi,%rdx,8)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %r9d
	xorl	%r10d, %r10d
	#APP
	testb	%sil, %sil
	movl	%r10d, %r11d
	cmovnel	%r9d, %r11d
	#NO_APP
	movb	%r11b, %sil
	andb	$1, %sil
	movq	-16(%rsp), %rdx
	#APP
	testb	%sil, %sil
	cmovneq	%rax, %rdx
	#NO_APP
	movq	%rdx, -16(%rsp)
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-72(%rsp), %rax         # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -64(%rsp)         # 8-byte Spill
	jmp	.LBB2_1
.LBB2_4:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rsp)         # 8-byte Spill
	jmp	.LBB2_5
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	movq	-80(%rsp), %rax         # 8-byte Reload
	movq	-56(%rsp), %rcx         # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -88(%rsp)         # 8-byte Spill
	jae	.LBB2_8
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=1
	movq	-56(%rsp), %rax         # 8-byte Reload
	movq	-88(%rsp), %rcx         # 8-byte Reload
	subq	%rcx, %rax
	movq	%rax, %rdx
	subq	$1, %rdx
	cmpq	$0, -24(%rsp)
	sete	%sil
	movq	-32(%rsp), %rdi         # 8-byte Reload
	cmpq	$0, (%rdi,%rdx,8)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %r9d
	xorl	%r10d, %r10d
	#APP
	testb	%sil, %sil
	movl	%r10d, %r11d
	cmovnel	%r9d, %r11d
	#NO_APP
	movb	%r11b, %sil
	andb	$1, %sil
	movq	-24(%rsp), %rdx
	#APP
	testb	%sil, %sil
	cmovneq	%rax, %rdx
	#NO_APP
	movq	%rdx, -24(%rsp)
# %bb.7:                                #   in Loop: Header=BB2_5 Depth=1
	movq	-88(%rsp), %rax         # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -80(%rsp)         # 8-byte Spill
	jmp	.LBB2_5
.LBB2_8:
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	$0, -16(%rsp)
	sete	%dl
	cmpq	$0, -24(%rsp)
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	xorl	%edi, %edi
	#APP
	testb	%dl, %dl
	movl	%edi, %r8d
	cmovnel	%eax, %r8d
	#NO_APP
	movb	%r8b, %dl
	movb	%dl, %sil
	andb	$1, %sil
	movl	-4(%rsp), %eax
	xorl	%edi, %edi
	#APP
	testb	%sil, %sil
	cmovnel	%edi, %eax
	#NO_APP
	movl	%eax, -4(%rsp)
	andb	$1, %dl
	movb	-5(%rsp), %sil
	andb	$1, %sil
	movzbl	%sil, %eax
	xorl	%edi, %edi
	#APP
	testb	%dl, %dl
	cmovnel	%edi, %eax
	#NO_APP
	movb	%al, %dl
	andb	$1, %dl
	movb	%dl, -5(%rsp)
	movb	-5(%rsp), %dl
	movq	-16(%rsp), %r9
	cmpq	-24(%rsp), %r9
	seta	%sil
	movb	%sil, %r10b
	andb	$1, %r10b
	andb	%dl, %r10b
	movl	-4(%rsp), %eax
	movl	$1, %edi
	#APP
	testb	%r10b, %r10b
	cmovnel	%edi, %eax
	#NO_APP
	movl	%eax, -4(%rsp)
	andb	$1, %sil
	andb	%dl, %sil
	movb	-5(%rsp), %r10b
	andb	$1, %r10b
	movzbl	%r10b, %eax
	xorl	%edi, %edi
	#APP
	testb	%sil, %sil
	cmovnel	%edi, %eax
	#NO_APP
	movb	%al, %sil
	andb	$1, %sil
	movb	%sil, -5(%rsp)
	movb	-5(%rsp), %sil
	movq	-24(%rsp), %r9
	cmpq	-16(%rsp), %r9
	seta	%r10b
	movb	%r10b, %r11b
	andb	$1, %r11b
	andb	%sil, %r11b
	andb	%dl, %r11b
	movl	-4(%rsp), %eax
	movl	$-1, %edi
	#APP
	testb	%r11b, %r11b
	cmovnel	%edi, %eax
	#NO_APP
	movl	%eax, -4(%rsp)
	andb	$1, %r10b
	andb	%sil, %r10b
	andb	%dl, %r10b
	movb	-5(%rsp), %r11b
	andb	$1, %r11b
	movzbl	%r11b, %eax
	xorl	%edi, %edi
	#APP
	testb	%r10b, %r10b
	cmovnel	%edi, %eax
	#NO_APP
	movb	%al, %r10b
	andb	$1, %r10b
	movb	%r10b, -5(%rsp)
	movb	-5(%rsp), %r10b
	movq	-40(%rsp), %r9          # 8-byte Reload
	movq	-56(%rsp), %rbx         # 8-byte Reload
	cmpq	%rbx, %r9
	cmovbq	%r9, %rbx
	movq	%rbx, -96(%rsp)         # 8-byte Spill
	movb	%dl, -97(%rsp)          # 1-byte Spill
	movb	%sil, -98(%rsp)         # 1-byte Spill
	movb	%r10b, -99(%rsp)        # 1-byte Spill
	movq	%rcx, -112(%rsp)        # 8-byte Spill
.LBB2_9:                                # =>This Inner Loop Header: Depth=1
	movq	-112(%rsp), %rax        # 8-byte Reload
	movq	-96(%rsp), %rcx         # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -120(%rsp)        # 8-byte Spill
	jae	.LBB2_12
# %bb.10:                               #   in Loop: Header=BB2_9 Depth=1
	movb	-5(%rsp), %al
	movq	-96(%rsp), %rcx         # 8-byte Reload
	movq	-120(%rsp), %rdx        # 8-byte Reload
	subq	%rdx, %rcx
	cmpq	-16(%rsp), %rcx
	setbe	%sil
	movq	%rcx, %rdi
	subq	$1, %rdi
	movq	%rcx, %r8
	subq	$1, %r8
	movq	-48(%rsp), %r9          # 8-byte Reload
	movq	(%r9,%rdi,8), %rdi
	movq	-32(%rsp), %r10         # 8-byte Reload
	cmpq	(%r10,%r8,8), %rdi
	seta	%r11b
	movb	%r11b, %bl
	andb	$1, %bl
	andb	%sil, %bl
	andb	%al, %bl
	movb	-99(%rsp), %bpl         # 1-byte Reload
	andb	%bpl, %bl
	movb	-98(%rsp), %r14b        # 1-byte Reload
	andb	%r14b, %bl
	movb	-97(%rsp), %r15b        # 1-byte Reload
	andb	%r15b, %bl
	movl	-4(%rsp), %r12d
	movl	$1, %r13d
	#APP
	testb	%bl, %bl
	cmovnel	%r13d, %r12d
	#NO_APP
	movl	%r12d, -4(%rsp)
	andb	$1, %r11b
	andb	%sil, %r11b
	andb	%al, %r11b
	andb	%bpl, %r11b
	andb	%r14b, %r11b
	andb	%r15b, %r11b
	movb	-5(%rsp), %bl
	andb	$1, %bl
	movzbl	%bl, %r12d
	xorl	%r13d, %r13d
	#APP
	testb	%r11b, %r11b
	cmovnel	%r13d, %r12d
	#NO_APP
	movb	%r12b, %r11b
	andb	$1, %r11b
	movb	%r11b, -5(%rsp)
	movb	-5(%rsp), %r11b
	movq	%rcx, %rdi
	subq	$1, %rdi
	subq	$1, %rcx
	movq	(%r9,%rdi,8), %rdi
	cmpq	(%r10,%rcx,8), %rdi
	setb	%bl
	movb	%bl, %cl
	andb	$1, %cl
	andb	%r11b, %cl
	andb	%sil, %cl
	andb	%al, %cl
	andb	%bpl, %cl
	andb	%r14b, %cl
	andb	%r15b, %cl
	movl	-4(%rsp), %r12d
	movl	$-1, %r13d
	#APP
	testb	%cl, %cl
	cmovnel	%r13d, %r12d
	#NO_APP
	movl	%r12d, -4(%rsp)
	andb	$1, %bl
	andb	%r11b, %bl
	andb	%sil, %bl
	andb	%al, %bl
	andb	%bpl, %bl
	andb	%r14b, %bl
	andb	%r15b, %bl
	movb	-5(%rsp), %al
	andb	$1, %al
	movzbl	%al, %r12d
	xorl	%r13d, %r13d
	#APP
	testb	%bl, %bl
	cmovnel	%r13d, %r12d
	#NO_APP
	movb	%r12b, %al
	andb	$1, %al
	movb	%al, -5(%rsp)
# %bb.11:                               #   in Loop: Header=BB2_9 Depth=1
	movq	-120(%rsp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -112(%rsp)        # 8-byte Spill
	jmp	.LBB2_9
.LBB2_12:
	movb	-5(%rsp), %al
	movb	%al, %cl
	andb	$1, %cl
	movb	-99(%rsp), %dl          # 1-byte Reload
	andb	%dl, %cl
	movb	-98(%rsp), %sil         # 1-byte Reload
	andb	%sil, %cl
	movb	-97(%rsp), %dil         # 1-byte Reload
	andb	%dil, %cl
	movl	-4(%rsp), %r8d
	xorl	%r9d, %r9d
	#APP
	testb	%cl, %cl
	cmovnel	%r9d, %r8d
	#NO_APP
	movl	%r8d, -4(%rsp)
	andb	$1, %al
	andb	%dl, %al
	andb	%sil, %al
	andb	%dil, %al
	movb	-5(%rsp), %cl
	andb	$1, %cl
	movzbl	%cl, %r8d
	xorl	%r9d, %r9d
	#APP
	testb	%al, %al
	cmovnel	%r9d, %r8d
	#NO_APP
	movb	%r8b, %al
	andb	$1, %al
	movb	%al, -5(%rsp)
	movl	-4(%rsp), %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_mbedtls_mpi_cmp_abs, .Lfunc_end2-_mbedtls_mpi_cmp_abs
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _mpi_mul_hlp
	.type	_mpi_mul_hlp,@function
_mpi_mul_hlp:                           # @_mpi_mul_hlp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	movl	%eax, %r10d
	movb	$1, -9(%rbp)
	movq	$0, -24(%rbp)
	movq	%r8, -32(%rbp)          # 8-byte Spill
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%r10, -80(%rbp)         # 8-byte Spill
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jae	.LBB3_4
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	(%rax,%rcx,8), %rax
	movq	-72(%rbp), %rdx         # 8-byte Reload
	mulq	%rdx
	movq	%rsp, %rsi
	movq	%rsi, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movq	%rax, -16(%rsi)
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	%rdx, (%rax)
	movq	(%rdi), %rdx
	addq	-24(%rbp), %rdx
	movq	%rdx, (%rdi)
	movq	(%rax), %rdx
	movq	(%rdi), %rsi
	cmpq	-24(%rbp), %rsi
	setb	%r8b
	movl	$1, %r9d
	movl	%r9d, %esi
	xorl	%r9d, %r9d
	movl	%r9d, %r10d
	#APP
	testb	%r8b, %r8b
	movq	%r10, %r11
	cmovneq	%rsi, %r11
	#NO_APP
	addq	%r11, %rdx
	movq	%rdx, (%rax)
	movq	(%rdi), %rdx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	addq	(%rsi,%rcx,8), %rdx
	movq	%rdx, (%rdi)
	movq	(%rax), %rdx
	movq	(%rdi), %r10
	cmpq	(%rsi,%rcx,8), %r10
	setb	%r8b
	movl	$1, %r9d
	movl	%r9d, %r10d
	xorl	%r9d, %r9d
	movl	%r9d, %r11d
	#APP
	testb	%r8b, %r8b
	movq	%r11, %rbx
	cmovneq	%r10, %rbx
	#NO_APP
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	(%rdi), %rax
	movq	%rax, (%rsi,%rcx,8)
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB3_1
.LBB3_4:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB3_5
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jae	.LBB3_8
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	(%rax,%rcx,8), %rdx
	addq	-24(%rbp), %rdx
	movq	%rdx, (%rax,%rcx,8)
	movq	(%rax,%rcx,8), %rdx
	cmpq	-24(%rbp), %rdx
	setb	%sil
	movl	$1, %edi
	movl	%edi, %edx
	xorl	%edi, %edi
	movl	%edi, %r8d
	#APP
	testb	%sil, %sil
	movq	%r8, %r9
	cmovneq	%rdx, %r9
	#NO_APP
	movq	%r9, -24(%rbp)
# %bb.7:                                #   in Loop: Header=BB3_5 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB3_5
.LBB3_8:
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_mpi_mul_hlp, .Lfunc_end3-_mpi_mul_hlp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _mpi_montmul
	.type	_mpi_montmul,@function
_mpi_montmul:                           # @_mpi_montmul
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$176, %rsp
	.cfi_def_cfa_offset 208
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	224(%rsp), %rax
	movq	216(%rsp), %r10
	movq	208(%rsp), %r11
	xorl	%ebx, %ebx
	movl	%ebx, %r14d
	movb	$1, 175(%rsp)
	cmpq	%r9, %rcx
	movq	%r9, %r15
	cmovbq	%rcx, %r15
	movq	%r11, 160(%rsp)         # 8-byte Spill
	movq	%r9, 152(%rsp)          # 8-byte Spill
	movq	%r8, 144(%rsp)          # 8-byte Spill
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	movq	%rsi, 120(%rsp)         # 8-byte Spill
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	%r10, 104(%rsp)         # 8-byte Spill
	movq	%rdi, 96(%rsp)          # 8-byte Spill
	movq	%r15, 88(%rsp)          # 8-byte Spill
	movq	%r14, 80(%rsp)          # 8-byte Spill
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	112(%rsp), %rcx         # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	jae	.LBB4_4
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	$0, (%rax,%rcx,8)
# %bb.3:                                #   in Loop: Header=BB4_1 Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	jmp	.LBB4_1
.LBB4_4:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	jmp	.LBB4_5
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	152(%rsp), %rcx         # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	jae	.LBB4_8
# %bb.6:                                #   in Loop: Header=BB4_5 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	(%rax,%rcx,8), %rdx
	movq	104(%rsp), %rsi         # 8-byte Reload
	movq	(%rsi,%rcx,8), %rdi
	movq	%rdx, %r8
	movq	128(%rsp), %r9          # 8-byte Reload
	imulq	(%r9), %r8
	addq	%r8, %rdi
	movq	160(%rsp), %r8          # 8-byte Reload
	imulq	%r8, %rdi
	movq	112(%rsp), %r10         # 8-byte Reload
	subq	%rcx, %r10
	shlq	$3, %rcx
	addq	%rcx, %rsi
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%r9, %rsi
	movq	136(%rsp), %r11         # 8-byte Reload
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%r11, %rdx
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	%r10, %r8
	movq	32(%rsp), %r9           # 8-byte Reload
	callq	_mpi_mul_hlp
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	56(%rsp), %rcx          # 8-byte Reload
	subq	%rcx, %rax
	shlq	$3, %rcx
	movq	104(%rsp), %rdx         # 8-byte Reload
	addq	%rcx, %rdx
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movq	152(%rsp), %rcx         # 8-byte Reload
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rcx, %rdx
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	%rax, %r8
	movq	48(%rsp), %r9           # 8-byte Reload
	callq	_mpi_mul_hlp
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	32(%rsp), %rdx          # 8-byte Reload
	movq	%rdx, (%rax,%rcx,8)
	addq	$1, %rcx
	movq	152(%rsp), %rsi         # 8-byte Reload
	addq	%rsi, %rcx
	movq	$0, 8(%rax,%rcx,8)
# %bb.7:                                #   in Loop: Header=BB4_5 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	jmp	.LBB4_5
.LBB4_8:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	152(%rsp), %rdx         # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rcx, 8(%rsp)           # 8-byte Spill
.LBB4_9:                                # =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	jae	.LBB4_12
# %bb.10:                               #   in Loop: Header=BB4_9 Depth=1
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	(%rsp), %rcx            # 8-byte Reload
	addq	%rcx, %rax
	movq	104(%rsp), %rdx         # 8-byte Reload
	movq	(%rdx,%rax,8), %rax
	movq	96(%rsp), %rsi          # 8-byte Reload
	movq	%rax, (%rsi,%rcx,8)
# %bb.11:                               #   in Loop: Header=BB4_9 Depth=1
	movq	(%rsp), %rax            # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	jmp	.LBB4_9
.LBB4_12:
	movq	96(%rsp), %rdi          # 8-byte Reload
	movq	120(%rsp), %rsi         # 8-byte Reload
	movq	144(%rsp), %rdx         # 8-byte Reload
	movq	152(%rsp), %rcx         # 8-byte Reload
	callq	_mbedtls_mpi_cmp_abs
	cmpl	$0, %eax
	setge	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %r9d
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rsi         # 8-byte Reload
	movq	152(%rsp), %rdx         # 8-byte Reload
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	120(%rsp), %r8          # 8-byte Reload
	callq	_mpi_sub_hlp
	addq	$176, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	_mpi_montmul, .Lfunc_end4-_mpi_montmul
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _mpi_montred
	.type	_mpi_montred,@function
_mpi_montred:                           # @_mpi_montred
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$80, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	112(%rsp), %rax
	leaq	64(%rsp), %r10
	movl	$1, %r11d
	movl	%r11d, %ebx
	movb	$1, 79(%rsp)
	movq	$1, 64(%rsp)
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	%r10, %rdx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rbx, %rcx
	movq	56(%rsp), %r10          # 8-byte Reload
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movq	%r10, %r8
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	%r9, 32(%rsp)           # 8-byte Spill
	movq	%rbx, %r9
	movq	40(%rsp), %r14          # 8-byte Reload
	movq	%r14, (%rsp)
	movq	32(%rsp), %r15          # 8-byte Reload
	movq	%r15, 8(%rsp)
	movq	%rax, 16(%rsp)
	callq	_mpi_montmul
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	_mpi_montred, .Lfunc_end5-_mpi_montred
	.cfi_endproc
                                        # -- End function
	.globl	_f_mpi_exp_mod          # -- Begin function _f_mpi_exp_mod
	.p2align	4, 0x90
	.type	_f_mpi_exp_mod,@function
_f_mpi_exp_mod:                         # @_f_mpi_exp_mod
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
	subq	$264, %rsp              # imm = 0x108
	.cfi_def_cfa_offset 320
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	408(%rsp), %rax
	movq	400(%rsp), %r10
	movq	392(%rsp), %r11
	movq	384(%rsp), %rbx
	movq	376(%rsp), %r14
	movq	368(%rsp), %r15
	movq	360(%rsp), %r12
	movq	352(%rsp), %r13
	movq	344(%rsp), %rbp
	movq	%rax, 240(%rsp)         # 8-byte Spill
	movq	336(%rsp), %rax
	movq	%rax, 232(%rsp)         # 8-byte Spill
	movq	328(%rsp), %rax
	movq	%rax, 224(%rsp)         # 8-byte Spill
	movq	320(%rsp), %rax
	movq	%rsi, 216(%rsp)         # 8-byte Spill
	movl	$1, %esi
	movl	$0, 260(%rsp)
	movb	$1, 259(%rsp)
	shrq	$4, %rbx
                                        # kill: def %ebx killed %ebx killed %rbx
	movl	$1, 252(%rsp)
	movq	%rdi, 208(%rsp)         # 8-byte Spill
	movq	%rax, 200(%rsp)         # 8-byte Spill
	movq	216(%rsp), %rax         # 8-byte Reload
	movl	%esi, 196(%rsp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, 184(%rsp)         # 8-byte Spill
	movq	%rbp, %rdx
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	movq	%r13, %rcx
	movl	196(%rsp), %eax         # 4-byte Reload
	movl	%r8d, 172(%rsp)         # 4-byte Spill
	movl	%eax, %r8d
	movq	%rbp, 160(%rsp)         # 8-byte Spill
	movq	%r9, 152(%rsp)          # 8-byte Spill
	movq	%r14, 144(%rsp)         # 8-byte Spill
	movq	%r15, 136(%rsp)         # 8-byte Spill
	movq	%r12, 128(%rsp)         # 8-byte Spill
	movq	%r13, 120(%rsp)         # 8-byte Spill
	movq	%r10, 112(%rsp)         # 8-byte Spill
	movq	%r11, 104(%rsp)         # 8-byte Spill
	movl	%ebx, 100(%rsp)         # 4-byte Spill
	callq	_mpi_copy
	movq	208(%rsp), %rdi         # 8-byte Reload
	movq	216(%rsp), %rsi         # 8-byte Reload
	movq	224(%rsp), %rdx         # 8-byte Reload
	movq	232(%rsp), %rcx         # 8-byte Reload
	movq	240(%rsp), %r8          # 8-byte Reload
	movq	128(%rsp), %r9          # 8-byte Reload
	movq	136(%rsp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	_mpi_montred
	movl	$1, %r8d
	movl	100(%rsp), %eax         # 4-byte Reload
	movl	%eax, %ebx
	movl	%ebx, %esi
	movq	144(%rsp), %rdi         # 8-byte Reload
	movq	208(%rsp), %rdx         # 8-byte Reload
	movq	216(%rsp), %rcx         # 8-byte Reload
	callq	_mpi_copy
	movl	$1, %r8d
	movl	100(%rsp), %eax         # 4-byte Reload
	movl	%eax, %ebx
	movl	%ebx, %ecx
	movl	%eax, %ebx
	movl	%ebx, %esi
	shlq	$3, %rcx
	movq	144(%rsp), %rdx         # 8-byte Reload
	addq	%rcx, %rdx
	movq	%rdx, %rdi
	movq	184(%rsp), %rdx         # 8-byte Reload
	movq	176(%rsp), %rcx         # 8-byte Reload
	callq	_mpi_copy
	movl	100(%rsp), %eax         # 4-byte Reload
	movl	%eax, %r8d
	movl	%r8d, %ecx
	movl	%eax, %r8d
	movl	%r8d, %esi
	shlq	$3, %rcx
	movq	144(%rsp), %rdx         # 8-byte Reload
	addq	%rcx, %rdx
	movq	%rdx, %rdi
	movq	160(%rsp), %rdx         # 8-byte Reload
	movq	120(%rsp), %rcx         # 8-byte Reload
	movq	224(%rsp), %r8          # 8-byte Reload
	movq	232(%rsp), %r9          # 8-byte Reload
	movq	240(%rsp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	128(%rsp), %r11         # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	136(%rsp), %r14         # 8-byte Reload
	movq	%r14, 16(%rsp)
	callq	_mpi_montmul
	movl	$2, %eax
	movl	%eax, 96(%rsp)          # 4-byte Spill
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	movl	96(%rsp), %eax          # 4-byte Reload
	cmpl	$16, %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
	jae	.LBB6_4
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	movl	$1, %r8d
	movl	92(%rsp), %eax          # 4-byte Reload
	movl	100(%rsp), %ecx         # 4-byte Reload
	imull	%ecx, %eax
	movl	%eax, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	movl	%eax, %esi
	movl	92(%rsp), %eax          # 4-byte Reload
	subl	$1, %eax
	imull	%ecx, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	movl	%ecx, %eax
	movl	%eax, %ecx
	shlq	$3, %rdx
	movq	144(%rsp), %r9          # 8-byte Reload
	addq	%rdx, %r9
	shlq	$3, %rdi
	movq	144(%rsp), %rdx         # 8-byte Reload
	addq	%rdi, %rdx
	movq	%r9, %rdi
	callq	_mpi_copy
	movl	92(%rsp), %eax          # 4-byte Reload
	movl	100(%rsp), %r8d         # 4-byte Reload
	imull	%r8d, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movl	%r8d, %eax
	movl	%eax, %esi
	movl	%r8d, %eax
	movl	%eax, %edx
	movl	%r8d, %eax
	movl	%eax, %edi
	shlq	$3, %rcx
	movq	144(%rsp), %r9          # 8-byte Reload
	addq	%rcx, %r9
	shlq	$3, %rdx
	movq	144(%rsp), %rcx         # 8-byte Reload
	addq	%rdx, %rcx
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	movq	%r9, %rdi
	movq	%rcx, %rdx
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	224(%rsp), %r8          # 8-byte Reload
	movq	232(%rsp), %r9          # 8-byte Reload
	movq	240(%rsp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	128(%rsp), %r11         # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	136(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, 16(%rsp)
	callq	_mpi_montmul
# %bb.3:                                #   in Loop: Header=BB6_1 Depth=1
	movl	92(%rsp), %eax          # 4-byte Reload
	addl	$1, %eax
	movl	%eax, 96(%rsp)          # 4-byte Spill
	jmp	.LBB6_1
.LBB6_4:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	jmp	.LBB6_5
.LBB6_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_9 Depth 2
                                        #       Child Loop BB6_13 Depth 3
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	200(%rsp), %rcx         # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	jae	.LBB6_8
# %bb.6:                                #   in Loop: Header=BB6_5 Depth=1
	movl	$1, %eax
	movq	200(%rsp), %rcx         # 8-byte Reload
	movq	64(%rsp), %rdx          # 8-byte Reload
	subq	%rdx, %rcx
	movl	%ecx, %esi
	movl	%esi, 60(%rsp)          # 4-byte Spill
	movl	%eax, 56(%rsp)          # 4-byte Spill
	jmp	.LBB6_9
.LBB6_7:                                #   in Loop: Header=BB6_5 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	jmp	.LBB6_5
.LBB6_8:
	movq	208(%rsp), %rdi         # 8-byte Reload
	movq	216(%rsp), %rsi         # 8-byte Reload
	movq	224(%rsp), %rdx         # 8-byte Reload
	movq	232(%rsp), %rcx         # 8-byte Reload
	movq	240(%rsp), %r8          # 8-byte Reload
	movq	128(%rsp), %r9          # 8-byte Reload
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	_mpi_montred
	movl	172(%rsp), %r10d        # 4-byte Reload
	cmpl	$0, %r10d
	setl	%r11b
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rcx
	andq	$1, %rcx
	cmpq	$0, %rcx
	setne	%bl
	andb	$1, %bl
	movzbl	%bl, %ebp
	xorl	%r14d, %r14d
	#APP
	testb	%r11b, %r11b
	movl	%r14d, %r15d
	cmovnel	%ebp, %r15d
	#NO_APP
	movb	%r15b, %r11b
	movb	%r11b, %bl
	andb	$1, %bl
	movl	252(%rsp), %ebp
	movl	$-1, %r14d
	#APP
	testb	%bl, %bl
	cmovnel	%r14d, %ebp
	#NO_APP
	movl	%ebp, 252(%rsp)
	movb	%r11b, %bl
	andb	$1, %bl
	movzbl	%bl, %r8d
	movq	128(%rsp), %rdi         # 8-byte Reload
	movq	136(%rsp), %rsi         # 8-byte Reload
	movq	224(%rsp), %rdx         # 8-byte Reload
	movq	232(%rsp), %rcx         # 8-byte Reload
	movb	%r11b, 55(%rsp)         # 1-byte Spill
	callq	_mpi_copy
	movb	55(%rsp), %r11b         # 1-byte Reload
	andb	$1, %r11b
	movzbl	%r11b, %r9d
	movq	216(%rsp), %rdi         # 8-byte Reload
	movq	208(%rsp), %rsi         # 8-byte Reload
	movq	216(%rsp), %rdx         # 8-byte Reload
	movq	128(%rsp), %rcx         # 8-byte Reload
	movq	136(%rsp), %r8          # 8-byte Reload
	callq	_mpi_sub_hlp
	movb	55(%rsp), %r11b         # 1-byte Reload
	andb	$1, %r11b
	movzbl	%r11b, %r8d
	movq	208(%rsp), %rdi         # 8-byte Reload
	movq	216(%rsp), %rsi         # 8-byte Reload
	movq	128(%rsp), %rdx         # 8-byte Reload
	movq	216(%rsp), %rcx         # 8-byte Reload
	callq	_mpi_copy
	movl	252(%rsp), %eax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_9:                                #   Parent Loop BB6_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_13 Depth 3
	movl	56(%rsp), %eax          # 4-byte Reload
	cmpl	$17, %eax
	movl	%eax, 48(%rsp)          # 4-byte Spill
	jae	.LBB6_12
# %bb.10:                               #   in Loop: Header=BB6_9 Depth=2
	movq	208(%rsp), %rdi         # 8-byte Reload
	movq	216(%rsp), %rsi         # 8-byte Reload
	movq	208(%rsp), %rdx         # 8-byte Reload
	movq	216(%rsp), %rcx         # 8-byte Reload
	movq	224(%rsp), %r8          # 8-byte Reload
	movq	232(%rsp), %r9          # 8-byte Reload
	movq	240(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	128(%rsp), %r10         # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	136(%rsp), %r11         # 8-byte Reload
	movq	%r11, 16(%rsp)
	callq	_mpi_montmul
	movq	208(%rsp), %rdi         # 8-byte Reload
	movq	216(%rsp), %rsi         # 8-byte Reload
	movq	208(%rsp), %rdx         # 8-byte Reload
	movq	216(%rsp), %rcx         # 8-byte Reload
	movq	224(%rsp), %r8          # 8-byte Reload
	movq	232(%rsp), %r9          # 8-byte Reload
	movq	240(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	128(%rsp), %r10         # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	136(%rsp), %r11         # 8-byte Reload
	movq	%r11, 16(%rsp)
	callq	_mpi_montmul
	movq	208(%rsp), %rdi         # 8-byte Reload
	movq	216(%rsp), %rsi         # 8-byte Reload
	movq	208(%rsp), %rdx         # 8-byte Reload
	movq	216(%rsp), %rcx         # 8-byte Reload
	movq	224(%rsp), %r8          # 8-byte Reload
	movq	232(%rsp), %r9          # 8-byte Reload
	movq	240(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	128(%rsp), %r10         # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	136(%rsp), %r11         # 8-byte Reload
	movq	%r11, 16(%rsp)
	callq	_mpi_montmul
	movq	208(%rsp), %rdi         # 8-byte Reload
	movq	216(%rsp), %rsi         # 8-byte Reload
	movq	208(%rsp), %rdx         # 8-byte Reload
	movq	216(%rsp), %rcx         # 8-byte Reload
	movq	224(%rsp), %r8          # 8-byte Reload
	movq	232(%rsp), %r9          # 8-byte Reload
	movq	240(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	128(%rsp), %r10         # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	136(%rsp), %r11         # 8-byte Reload
	movq	%r11, 16(%rsp)
	callq	_mpi_montmul
	xorl	%ebx, %ebx
	movl	$64, %ebp
	movl	60(%rsp), %r14d         # 4-byte Reload
	subl	$1, %r14d
	movl	%r14d, %r14d
	movl	%r14d, %eax
	movq	152(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movl	48(%rsp), %r14d         # 4-byte Reload
	shll	$2, %r14d
	subl	%r14d, %ebp
	movl	%ebp, %ebp
	movl	%ebp, %ecx
                                        # kill: def %cl killed %rcx
	shrq	%cl, %rax
	andq	$15, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	%ebx, 36(%rsp)          # 4-byte Spill
	jmp	.LBB6_13
.LBB6_11:                               #   in Loop: Header=BB6_9 Depth=2
	movl	48(%rsp), %eax          # 4-byte Reload
	addl	$1, %eax
	movl	%eax, 56(%rsp)          # 4-byte Spill
	jmp	.LBB6_9
.LBB6_12:                               #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_7
.LBB6_13:                               #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	36(%rsp), %eax          # 4-byte Reload
	cmpl	$16, %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	jae	.LBB6_16
# %bb.14:                               #   in Loop: Header=BB6_13 Depth=3
	movl	32(%rsp), %eax          # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	movq	40(%rsp), %rsi          # 8-byte Reload
	cmpq	%rdx, %rsi
	sete	%dil
	movl	100(%rsp), %ecx         # 4-byte Reload
	imull	%ecx, %eax
	movl	%eax, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	movl	%eax, %ecx
	shlq	$3, %rdx
	movq	144(%rsp), %r8          # 8-byte Reload
	addq	%rdx, %r8
	andb	$1, %dil
	movzbl	%dil, %eax
	movq	104(%rsp), %rdi         # 8-byte Reload
	movq	112(%rsp), %rsi         # 8-byte Reload
	movq	%r8, %rdx
	movl	%eax, %r8d
	callq	_mpi_copy
# %bb.15:                               #   in Loop: Header=BB6_13 Depth=3
	movl	32(%rsp), %eax          # 4-byte Reload
	addl	$1, %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	jmp	.LBB6_13
.LBB6_16:                               #   in Loop: Header=BB6_9 Depth=2
	movq	208(%rsp), %rdi         # 8-byte Reload
	movq	216(%rsp), %rsi         # 8-byte Reload
	movq	104(%rsp), %rdx         # 8-byte Reload
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	224(%rsp), %r8          # 8-byte Reload
	movq	232(%rsp), %r9          # 8-byte Reload
	movq	240(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	128(%rsp), %r10         # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	136(%rsp), %r11         # 8-byte Reload
	movq	%r11, 16(%rsp)
	callq	_mpi_montmul
	jmp	.LBB6_11
.Lfunc_end6:
	.size	_f_mpi_exp_mod, .Lfunc_end6-_f_mpi_exp_mod
	.cfi_endproc
                                        # -- End function

	.section	".note.GNU-stack","",@progbits
