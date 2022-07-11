	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_show_bytes             ## -- Begin function show_bytes
	.p2align	4, 0x90
_show_bytes:                            ## @show_bytes
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jae	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	addq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rcx,%rdx), %edx
	leaq	L_.str(%rip), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	_printf
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	LBB0_1
LBB0_4:
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_show_int               ## -- Begin function show_int
	.p2align	4, 0x90
_show_int:                              ## @show_int
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	leaq	-4(%rbp), %rax
	movq	%rax, %rdi
	movl	$4, %esi
	callq	_show_bytes
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_show_float             ## -- Begin function show_float
	.p2align	4, 0x90
_show_float:                            ## @show_float
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movss	%xmm0, -4(%rbp)
	leaq	-4(%rbp), %rax
	movq	%rax, %rdi
	movl	$4, %esi
	callq	_show_bytes
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_show_pointer           ## -- Begin function show_pointer
	.p2align	4, 0x90
_show_pointer:                          ## @show_pointer
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	movl	$8, %esi
	callq	_show_bytes
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_test_show_bytes        ## -- Begin function test_show_bytes
	.p2align	4, 0x90
_test_show_bytes:                       ## @test_show_bytes
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	cvtsi2sdl	-8(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	leaq	-8(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movl	-8(%rbp), %esi
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.3(%rip), %rdi
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movl	-8(%rbp), %edi
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	callq	_show_int
	leaq	L_.str.4(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movsd	-16(%rbp), %xmm0        ## xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	callq	_show_float
	leaq	L_.str.5(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	callq	_show_pointer
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_simple_show_a          ## -- Begin function simple_show_a
	.p2align	4, 0x90
_simple_show_a:                         ## @simple_show_a
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$-2023406815, -4(%rbp)  ## imm = 0x87654321
	leaq	-4(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	callq	_show_bytes
	movq	-16(%rbp), %rdi
	movl	$2, %esi
	callq	_show_bytes
	movq	-16(%rbp), %rdi
	movl	$3, %esi
	callq	_show_bytes
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_simple_show_b          ## -- Begin function simple_show_b
	.p2align	4, 0x90
_simple_show_b:                         ## @simple_show_b
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$305419896, -4(%rbp)    ## imm = 0x12345678
	leaq	-4(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	callq	_show_bytes
	movq	-16(%rbp), %rdi
	movl	$2, %esi
	callq	_show_bytes
	movq	-16(%rbp), %rdi
	movl	$3, %esi
	callq	_show_bytes
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_float_eg               ## -- Begin function float_eg
	.p2align	4, 0x90
_float_eg:                              ## @float_eg
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$3490593, -4(%rbp)      ## imm = 0x354321
	cvtsi2ssl	-4(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	movl	-4(%rbp), %esi
	leaq	L_.str.6(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-4(%rbp), %edi
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	callq	_show_int
	movss	-8(%rbp), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	callq	_show_float
	movl	$3510593, -4(%rbp)      ## imm = 0x359141
	cvtsi2ssl	-4(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	movl	-4(%rbp), %esi
	leaq	L_.str.6(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-4(%rbp), %edi
	movl	%eax, -16(%rbp)         ## 4-byte Spill
	callq	_show_int
	movss	-8(%rbp), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	callq	_show_float
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_string_ueg             ## -- Begin function string_ueg
	.p2align	4, 0x90
_string_ueg:                            ## @string_ueg
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	L_.str.7(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	_strlen
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	_show_bytes
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_string_leg             ## -- Begin function string_leg
	.p2align	4, 0x90
_string_leg:                            ## @string_leg
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	L_.str.8(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	_strlen
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	_show_bytes
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_show_twocomp           ## -- Begin function show_twocomp
	.p2align	4, 0x90
_show_twocomp:                          ## @show_twocomp
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movw	$12345, -2(%rbp)        ## imm = 0x3039
	movswl	-2(%rbp), %ecx
	subl	%ecx, %eax
                                        ## kill: def $ax killed $ax killed $eax
	movw	%ax, -4(%rbp)
	leaq	-2(%rbp), %rdx
	movq	%rdx, %rdi
	movl	$2, %esi
	callq	_show_bytes
	leaq	-4(%rbp), %rdx
	movq	%rdx, %rdi
	movl	$2, %esi
	callq	_show_bytes
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$12312, -20(%rbp)       ## imm = 0x3018
	cmpl	$1, -8(%rbp)
	jle	LBB11_2
## %bb.1:
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	_strtol
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -20(%rbp)
	leaq	L_.str.9(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-20(%rbp), %edi
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	callq	_test_show_bytes
	jmp	LBB11_3
LBB11_2:
	leaq	L_.str.10(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	callq	_show_twocomp
	leaq	L_.str.11(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	callq	_simple_show_a
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	callq	_simple_show_b
	leaq	L_.str.13(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	callq	_float_eg
	leaq	L_.str.14(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	callq	_string_ueg
	leaq	L_.str.15(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -48(%rbp)         ## 4-byte Spill
	callq	_string_leg
LBB11_3:
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%p\t0x%.2x\n"

L_.str.1:                               ## @.str.1
	.asciz	"\n"

L_.str.2:                               ## @.str.2
	.asciz	"Stack variable ival = %d\n"

L_.str.3:                               ## @.str.3
	.asciz	"(int)ival:\n"

L_.str.4:                               ## @.str.4
	.asciz	"(float)ival:\n"

L_.str.5:                               ## @.str.5
	.asciz	"&ival:\n"

L_.str.6:                               ## @.str.6
	.asciz	"For x = %d\n"

L_.str.7:                               ## @.str.7
	.asciz	"ABCDEF"

L_.str.8:                               ## @.str.8
	.asciz	"abcdef"

L_.str.9:                               ## @.str.9
	.asciz	"calling test_show_bytes\n"

L_.str.10:                              ## @.str.10
	.asciz	"calling show_twocomp\n"

L_.str.11:                              ## @.str.11
	.asciz	"Calling simple_show_a\n"

L_.str.12:                              ## @.str.12
	.asciz	"Calling simple_show_b\n"

L_.str.13:                              ## @.str.13
	.asciz	"Calling float_eg\n"

L_.str.14:                              ## @.str.14
	.asciz	"Calling string_ueg\n"

L_.str.15:                              ## @.str.15
	.asciz	"Calling string_leg\n"

.subsections_via_symbols
