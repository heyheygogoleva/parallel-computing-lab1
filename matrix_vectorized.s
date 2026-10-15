	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 1	sdk_version 11, 1
	.globl	__Z14matrixMultiplyRKNSt3__16vectorIdNS_9allocatorIdEEEES5_RS3_ ## -- Begin function _Z14matrixMultiplyRKNSt3__16vectorIdNS_9allocatorIdEEEES5_RS3_
	.p2align	4, 0x90
__Z14matrixMultiplyRKNSt3__16vectorIdNS_9allocatorIdEEEES5_RS3_: ## @_Z14matrixMultiplyRKNSt3__16vectorIdNS_9allocatorIdEEEES5_RS3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	(%rdx), %r12
	movq	8(%rdx), %rax
	subq	%r12, %rax
	testq	%rax, %rax
	jle	LBB0_2
## %bb.1:
	shrq	$3, %rax
	cmpq	$1, %rax
	adcq	$-1, %rax
	leaq	8(,%rax,8), %rsi
	movq	%r12, %rdi
	callq	___bzero
LBB0_2:
	movq	(%r15), %r10
	movq	(%r14), %rdx
	xorl	%r8d, %r8d
	movq	%r12, %rsi
	.p2align	4, 0x90
LBB0_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_4 Depth 2
                                        ##       Child Loop BB0_10 Depth 3
                                        ##       Child Loop BB0_12 Depth 3
	imulq	$1000, %r8, %r14        ## imm = 0x3E8
	leaq	(%r12,%r14,8), %r11
	leaq	(%r12,%r14,8), %r9
	addq	$8000, %r9              ## imm = 0x1F40
	movq	%rdx, %rcx
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB0_4:                                 ##   Parent Loop BB0_3 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB0_10 Depth 3
                                        ##       Child Loop BB0_12 Depth 3
	leaq	(%rax,%r14), %rbx
	vmovsd	(%r10,%rbx,8), %xmm0    ## xmm0 = mem[0],zero
	imulq	$8000, %rax, %rbx       ## imm = 0x1F40
	leaq	(%rdx,%rbx), %rdi
	addq	$8000, %rdi             ## imm = 0x1F40
	cmpq	%rdi, %r11
	jae	LBB0_9
## %bb.5:                               ##   in Loop: Header=BB0_4 Depth=2
	addq	%rdx, %rbx
	cmpq	%r9, %rbx
	jae	LBB0_9
## %bb.6:                               ##   in Loop: Header=BB0_4 Depth=2
	xorl	%ebx, %ebx
	jmp	LBB0_12
	.p2align	4, 0x90
LBB0_9:                                 ##   in Loop: Header=BB0_4 Depth=2
	vbroadcastsd	%xmm0, %ymm1
	movl	$28, %ebx
	.p2align	4, 0x90
LBB0_10:                                ##   Parent Loop BB0_3 Depth=1
                                        ##     Parent Loop BB0_4 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmulpd	-224(%rcx,%rbx,8), %ymm1, %ymm2
	vmulpd	-192(%rcx,%rbx,8), %ymm1, %ymm3
	vmulpd	-160(%rcx,%rbx,8), %ymm1, %ymm4
	vmulpd	-128(%rcx,%rbx,8), %ymm1, %ymm5
	vaddpd	-224(%rsi,%rbx,8), %ymm2, %ymm2
	vaddpd	-192(%rsi,%rbx,8), %ymm3, %ymm3
	vaddpd	-160(%rsi,%rbx,8), %ymm4, %ymm4
	vaddpd	-128(%rsi,%rbx,8), %ymm5, %ymm5
	vmovupd	%ymm2, -224(%rsi,%rbx,8)
	vmovupd	%ymm3, -192(%rsi,%rbx,8)
	vmovupd	%ymm4, -160(%rsi,%rbx,8)
	vmovupd	%ymm5, -128(%rsi,%rbx,8)
	vmulpd	-96(%rcx,%rbx,8), %ymm1, %ymm2
	vmulpd	-64(%rcx,%rbx,8), %ymm1, %ymm3
	vmulpd	-32(%rcx,%rbx,8), %ymm1, %ymm4
	vmulpd	(%rcx,%rbx,8), %ymm1, %ymm5
	vaddpd	-96(%rsi,%rbx,8), %ymm2, %ymm2
	vaddpd	-64(%rsi,%rbx,8), %ymm3, %ymm3
	vaddpd	-32(%rsi,%rbx,8), %ymm4, %ymm4
	vaddpd	(%rsi,%rbx,8), %ymm5, %ymm5
	vmovupd	%ymm2, -96(%rsi,%rbx,8)
	vmovupd	%ymm3, -64(%rsi,%rbx,8)
	vmovupd	%ymm4, -32(%rsi,%rbx,8)
	vmovupd	%ymm5, (%rsi,%rbx,8)
	addq	$32, %rbx
	cmpq	$1020, %rbx             ## imm = 0x3FC
	jne	LBB0_10
## %bb.11:                              ##   in Loop: Header=BB0_4 Depth=2
	movl	$992, %ebx              ## imm = 0x3E0
	.p2align	4, 0x90
LBB0_12:                                ##   Parent Loop BB0_3 Depth=1
                                        ##     Parent Loop BB0_4 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmulsd	(%rcx,%rbx,8), %xmm0, %xmm1
	vaddsd	(%rsi,%rbx,8), %xmm1, %xmm1
	vmovsd	%xmm1, (%rsi,%rbx,8)
	vmulsd	8(%rcx,%rbx,8), %xmm0, %xmm1
	vaddsd	8(%rsi,%rbx,8), %xmm1, %xmm1
	vmovsd	%xmm1, 8(%rsi,%rbx,8)
	vmulsd	16(%rcx,%rbx,8), %xmm0, %xmm1
	vaddsd	16(%rsi,%rbx,8), %xmm1, %xmm1
	vmovsd	%xmm1, 16(%rsi,%rbx,8)
	vmulsd	24(%rcx,%rbx,8), %xmm0, %xmm1
	vaddsd	24(%rsi,%rbx,8), %xmm1, %xmm1
	vmovsd	%xmm1, 24(%rsi,%rbx,8)
	addq	$4, %rbx
	cmpq	$1000, %rbx             ## imm = 0x3E8
	jne	LBB0_12
## %bb.13:                              ##   in Loop: Header=BB0_4 Depth=2
	incq	%rax
	addq	$8000, %rcx             ## imm = 0x1F40
	cmpq	$1000, %rax             ## imm = 0x3E8
	jne	LBB0_4
## %bb.7:                               ##   in Loop: Header=BB0_3 Depth=1
	incq	%r8
	addq	$8000, %rsi             ## imm = 0x1F40
	cmpq	$1000, %r8              ## imm = 0x3E8
	jne	LBB0_3
## %bb.8:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI1_0:
	.quad	4741671816366391296     ## double 1.0E+9
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## %bb.0:
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
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movabsq	$4607182418800017408, %rbx ## imm = 0x3FF0000000000000
	movl	$8000000, %edi          ## imm = 0x7A1200
	callq	__Znwm
	movq	%rax, %r14
	addq	$320, %rax              ## imm = 0x140
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	.p2align	4, 0x90
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	%rbx, (%rdx)
	movq	%rbx, 8(%r14,%rcx)
	movq	%rbx, 16(%r14,%rcx)
	movq	%rbx, 24(%r14,%rcx)
	movq	%rbx, 32(%r14,%rcx)
	movq	%rbx, 40(%r14,%rcx)
	movq	%rbx, 48(%r14,%rcx)
	movq	%rbx, 56(%r14,%rcx)
	movq	%rbx, 64(%r14,%rcx)
	movq	%rbx, 72(%r14,%rcx)
	movq	%rbx, 80(%r14,%rcx)
	movq	%rbx, 88(%r14,%rcx)
	movq	%rbx, 96(%r14,%rcx)
	movq	%rbx, 104(%r14,%rcx)
	movq	%rbx, 112(%r14,%rcx)
	movq	%rbx, 120(%r14,%rcx)
	movq	%rbx, 128(%r14,%rcx)
	movq	%rbx, 136(%r14,%rcx)
	movq	%rbx, 144(%r14,%rcx)
	movq	%rbx, 152(%r14,%rcx)
	movq	%rbx, 160(%r14,%rcx)
	movq	%rbx, 168(%r14,%rcx)
	movq	%rbx, 176(%r14,%rcx)
	movq	%rbx, 184(%r14,%rcx)
	movq	%rbx, 192(%r14,%rcx)
	movq	%rbx, 200(%r14,%rcx)
	movq	%rbx, 208(%r14,%rcx)
	movq	%rbx, 216(%r14,%rcx)
	movq	%rbx, 224(%r14,%rcx)
	movq	%rbx, 232(%r14,%rcx)
	movq	%rbx, 240(%r14,%rcx)
	movq	%rbx, 248(%r14,%rcx)
	movq	%rbx, 256(%r14,%rcx)
	movq	%rbx, 264(%r14,%rcx)
	movq	%rbx, 272(%r14,%rcx)
	movq	%rbx, 280(%r14,%rcx)
	movq	%rbx, 288(%r14,%rcx)
	movq	%rbx, 296(%r14,%rcx)
	movq	%rbx, 304(%r14,%rcx)
	movq	%rbx, 312(%r14,%rcx)
	leaq	(%rax,%rcx), %rdx
	addq	$320, %rcx              ## imm = 0x140
	cmpq	$8000000, %rcx          ## imm = 0x7A1200
	jne	LBB1_1
## %bb.2:
Ltmp0:
	movl	$8000000, %edi          ## imm = 0x7A1200
	callq	__Znwm
Ltmp1:
## %bb.3:
	movq	%rax, %r15
	movq	%rax, %rcx
	addq	$320, %rcx              ## imm = 0x140
	xorl	%edx, %edx
	movq	%rax, %rsi
	.p2align	4, 0x90
LBB1_4:                                 ## =>This Inner Loop Header: Depth=1
	movq	%rbx, (%rsi)
	movq	%rbx, 8(%r15,%rdx)
	movq	%rbx, 16(%r15,%rdx)
	movq	%rbx, 24(%r15,%rdx)
	movq	%rbx, 32(%r15,%rdx)
	movq	%rbx, 40(%r15,%rdx)
	movq	%rbx, 48(%r15,%rdx)
	movq	%rbx, 56(%r15,%rdx)
	movq	%rbx, 64(%r15,%rdx)
	movq	%rbx, 72(%r15,%rdx)
	movq	%rbx, 80(%r15,%rdx)
	movq	%rbx, 88(%r15,%rdx)
	movq	%rbx, 96(%r15,%rdx)
	movq	%rbx, 104(%r15,%rdx)
	movq	%rbx, 112(%r15,%rdx)
	movq	%rbx, 120(%r15,%rdx)
	movq	%rbx, 128(%r15,%rdx)
	movq	%rbx, 136(%r15,%rdx)
	movq	%rbx, 144(%r15,%rdx)
	movq	%rbx, 152(%r15,%rdx)
	movq	%rbx, 160(%r15,%rdx)
	movq	%rbx, 168(%r15,%rdx)
	movq	%rbx, 176(%r15,%rdx)
	movq	%rbx, 184(%r15,%rdx)
	movq	%rbx, 192(%r15,%rdx)
	movq	%rbx, 200(%r15,%rdx)
	movq	%rbx, 208(%r15,%rdx)
	movq	%rbx, 216(%r15,%rdx)
	movq	%rbx, 224(%r15,%rdx)
	movq	%rbx, 232(%r15,%rdx)
	movq	%rbx, 240(%r15,%rdx)
	movq	%rbx, 248(%r15,%rdx)
	movq	%rbx, 256(%r15,%rdx)
	movq	%rbx, 264(%r15,%rdx)
	movq	%rbx, 272(%r15,%rdx)
	movq	%rbx, 280(%r15,%rdx)
	movq	%rbx, 288(%r15,%rdx)
	movq	%rbx, 296(%r15,%rdx)
	movq	%rbx, 304(%r15,%rdx)
	movq	%rbx, 312(%r15,%rdx)
	leaq	(%rcx,%rdx), %rsi
	addq	$320, %rdx              ## imm = 0x140
	cmpq	$8000000, %rdx          ## imm = 0x7A1200
	jne	LBB1_4
## %bb.5:
Ltmp3:
	movl	$8000000, %edi          ## imm = 0x7A1200
	callq	__Znwm
Ltmp4:
## %bb.6:
	movq	%rax, %r12
	movq	%rax, %rcx
	addq	$320, %rcx              ## imm = 0x140
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	%rax, %rdi
	.p2align	4, 0x90
LBB1_7:                                 ## =>This Inner Loop Header: Depth=1
	movq	$0, (%rdi)
	vmovupd	%ymm0, 8(%r12,%rsi)
	vmovupd	%ymm0, 40(%r12,%rsi)
	vmovupd	%ymm0, 72(%r12,%rsi)
	vmovupd	%ymm0, 104(%r12,%rsi)
	vmovupd	%ymm0, 136(%r12,%rsi)
	vmovupd	%ymm0, 168(%r12,%rsi)
	vmovupd	%ymm0, 200(%r12,%rsi)
	vmovupd	%ymm0, 232(%r12,%rsi)
	vmovupd	%ymm0, 264(%r12,%rsi)
	vmovupd	%xmm1, 296(%r12,%rsi)
	movq	$0, 312(%r12,%rsi)
	leaq	(%rcx,%rsi), %rdi
	addq	$320, %rsi              ## imm = 0x140
	cmpq	$8000000, %rsi          ## imm = 0x7A1200
	jne	LBB1_7
## %bb.8:
	vzeroupper
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	movl	$8000000, %esi          ## imm = 0x7A1200
	movq	%r12, %rdi
	callq	___bzero
	xorl	%r8d, %r8d
	movq	%r12, %rcx
	.p2align	4, 0x90
LBB1_9:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_10 Depth 2
                                        ##       Child Loop BB1_11 Depth 3
	imulq	$1000, %r8, %rdx        ## imm = 0x3E8
	movq	%r15, %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
LBB1_10:                                ##   Parent Loop BB1_9 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB1_11 Depth 3
	leaq	(%rdi,%rdx), %rax
	vbroadcastsd	(%r14,%rax,8), %ymm0
	imulq	$1000, %rdi, %rax       ## imm = 0x3E8
	movl	$28, %ebx
	.p2align	4, 0x90
LBB1_11:                                ##   Parent Loop BB1_9 Depth=1
                                        ##     Parent Loop BB1_10 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmulpd	-224(%rsi,%rbx,8), %ymm0, %ymm1
	vmulpd	-192(%rsi,%rbx,8), %ymm0, %ymm2
	vmulpd	-160(%rsi,%rbx,8), %ymm0, %ymm3
	vmulpd	-128(%rsi,%rbx,8), %ymm0, %ymm4
	vaddpd	-224(%rcx,%rbx,8), %ymm1, %ymm1
	vaddpd	-192(%rcx,%rbx,8), %ymm2, %ymm2
	vaddpd	-160(%rcx,%rbx,8), %ymm3, %ymm3
	vaddpd	-128(%rcx,%rbx,8), %ymm4, %ymm4
	vmovupd	%ymm1, -224(%rcx,%rbx,8)
	vmovupd	%ymm2, -192(%rcx,%rbx,8)
	vmovupd	%ymm3, -160(%rcx,%rbx,8)
	vmovupd	%ymm4, -128(%rcx,%rbx,8)
	vmulpd	-96(%rsi,%rbx,8), %ymm0, %ymm1
	vmulpd	-64(%rsi,%rbx,8), %ymm0, %ymm2
	vmulpd	-32(%rsi,%rbx,8), %ymm0, %ymm3
	vmulpd	(%rsi,%rbx,8), %ymm0, %ymm4
	vaddpd	-96(%rcx,%rbx,8), %ymm1, %ymm1
	vaddpd	-64(%rcx,%rbx,8), %ymm2, %ymm2
	vaddpd	-32(%rcx,%rbx,8), %ymm3, %ymm3
	vaddpd	(%rcx,%rbx,8), %ymm4, %ymm4
	vmovupd	%ymm1, -96(%rcx,%rbx,8)
	vmovupd	%ymm2, -64(%rcx,%rbx,8)
	vmovupd	%ymm3, -32(%rcx,%rbx,8)
	vmovupd	%ymm4, (%rcx,%rbx,8)
	addq	$32, %rbx
	cmpq	$1020, %rbx             ## imm = 0x3FC
	jne	LBB1_11
## %bb.12:                              ##   in Loop: Header=BB1_10 Depth=2
	vmulsd	7936(%r15,%rax,8), %xmm0, %xmm1
	vaddsd	7936(%r12,%rdx,8), %xmm1, %xmm1
	vmovsd	%xmm1, 7936(%r12,%rdx,8)
	vmulsd	7944(%r15,%rax,8), %xmm0, %xmm1
	vaddsd	7944(%r12,%rdx,8), %xmm1, %xmm1
	vmovsd	%xmm1, 7944(%r12,%rdx,8)
	vmulsd	7952(%r15,%rax,8), %xmm0, %xmm1
	vaddsd	7952(%r12,%rdx,8), %xmm1, %xmm1
	vmovsd	%xmm1, 7952(%r12,%rdx,8)
	vmulsd	7960(%r15,%rax,8), %xmm0, %xmm1
	vaddsd	7960(%r12,%rdx,8), %xmm1, %xmm1
	vmovsd	%xmm1, 7960(%r12,%rdx,8)
	vmulsd	7968(%r15,%rax,8), %xmm0, %xmm1
	vaddsd	7968(%r12,%rdx,8), %xmm1, %xmm1
	vmovsd	%xmm1, 7968(%r12,%rdx,8)
	vmulsd	7976(%r15,%rax,8), %xmm0, %xmm1
	vaddsd	7976(%r12,%rdx,8), %xmm1, %xmm1
	vmovsd	%xmm1, 7976(%r12,%rdx,8)
	vmulsd	7984(%r15,%rax,8), %xmm0, %xmm1
	vaddsd	7984(%r12,%rdx,8), %xmm1, %xmm1
	vmovsd	%xmm1, 7984(%r12,%rdx,8)
	vmulsd	7992(%r15,%rax,8), %xmm0, %xmm0
	vaddsd	7992(%r12,%rdx,8), %xmm0, %xmm0
	vmovsd	%xmm0, 7992(%r12,%rdx,8)
	incq	%rdi
	addq	$8000, %rsi             ## imm = 0x1F40
	cmpq	$1000, %rdi             ## imm = 0x3E8
	jne	LBB1_10
## %bb.13:                              ##   in Loop: Header=BB1_9 Depth=1
	incq	%r8
	addq	$8000, %rcx             ## imm = 0x1F40
	cmpq	$1000, %r8              ## imm = 0x3E8
	jne	LBB1_9
## %bb.14:
	vzeroupper
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	movq	%rax, %r13
Ltmp6:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	movl	$13, %edx
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp7:
## %bb.15:
Ltmp8:
	movq	%rax, %rdi
	movl	$1000, %esi             ## imm = 0x3E8
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp9:
## %bb.16:
Ltmp10:
	leaq	L_.str.1(%rip), %rsi
	movl	$3, %edx
	movq	%rax, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp11:
## %bb.17:
Ltmp12:
	movq	%rax, %rdi
	movl	$1000, %esi             ## imm = 0x3E8
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp13:
## %bb.18:
	movb	$10, -41(%rbp)
Ltmp14:
	leaq	-41(%rbp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp15:
## %bb.19:
Ltmp16:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str.2(%rip), %rsi
	movl	$16, %edx
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp17:
## %bb.20:
	subq	-56(%rbp), %r13         ## 8-byte Folded Reload
	vcvtsi2sd	%r13, %xmm5, %xmm0
	vdivsd	LCPI1_0(%rip), %xmm0, %xmm0
Ltmp18:
	movq	%rax, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp19:
## %bb.21:
Ltmp20:
	leaq	L_.str.3(%rip), %rsi
	movl	$9, %edx
	movq	%rax, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp21:
## %bb.22:
Ltmp22:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str.4(%rip), %rsi
	movl	$17, %edx
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp23:
## %bb.23:
	vmovsd	(%r12), %xmm0           ## xmm0 = mem[0],zero
Ltmp24:
	movq	%rax, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp25:
## %bb.24:
	movb	$10, -42(%rbp)
Ltmp26:
	leaq	-42(%rbp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp27:
## %bb.25:
	movq	%r12, %rdi
	callq	__ZdlPv
	movq	%r15, %rdi
	callq	__ZdlPv
	movq	%r14, %rdi
	callq	__ZdlPv
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB1_30:
Ltmp5:
	movq	%rax, %rbx
	jmp	LBB1_27
LBB1_29:
Ltmp2:
	movq	%rax, %rbx
	jmp	LBB1_28
LBB1_26:
Ltmp28:
	movq	%rax, %rbx
	movq	%r12, %rdi
	callq	__ZdlPv
LBB1_27:
	movq	%r15, %rdi
	callq	__ZdlPv
LBB1_28:
	movq	%r14, %rdi
	callq	__ZdlPv
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table1:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	255                     ## @TType Encoding = omit
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0 ## >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0     ##   Call between Lfunc_begin0 and Ltmp0
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0     ## >> Call Site 2 <<
	.uleb128 Ltmp1-Ltmp0            ##   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0     ##     jumps to Ltmp2
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0     ## >> Call Site 3 <<
	.uleb128 Ltmp4-Ltmp3            ##   Call between Ltmp3 and Ltmp4
	.uleb128 Ltmp5-Lfunc_begin0     ##     jumps to Ltmp5
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp4-Lfunc_begin0     ## >> Call Site 4 <<
	.uleb128 Ltmp6-Ltmp4            ##   Call between Ltmp4 and Ltmp6
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp6-Lfunc_begin0     ## >> Call Site 5 <<
	.uleb128 Ltmp27-Ltmp6           ##   Call between Ltmp6 and Ltmp27
	.uleb128 Ltmp28-Lfunc_begin0    ##     jumps to Ltmp28
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp27-Lfunc_begin0    ## >> Call Site 6 <<
	.uleb128 Lfunc_end0-Ltmp27      ##   Call between Ltmp27 and Lfunc_end0
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end0:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	___clang_call_terminate ## -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.p2align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## %bb.0:
	pushq	%rax
	callq	___cxa_begin_catch
	callq	__ZSt9terminatev
                                        ## -- End function
	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ## -- Begin function _ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	4, 0x90
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ## @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
## %bb.0:
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
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
Ltmp29:
	leaq	-80(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp30:
## %bb.1:
	cmpb	$0, -80(%rbp)
	je	LBB3_10
## %bb.2:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %r12
	movq	40(%rbx,%rax), %rdi
	movl	8(%rbx,%rax), %r13d
	movl	144(%rbx,%rax), %eax
	cmpl	$-1, %eax
	jne	LBB3_7
## %bb.3:
Ltmp32:
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	leaq	-56(%rbp), %rdi
	movq	%r12, %rsi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp33:
## %bb.4:
Ltmp34:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	leaq	-56(%rbp), %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp35:
## %bb.5:
	movq	(%rax), %rcx
Ltmp36:
	movq	%rax, %rdi
	movl	$32, %esi
	callq	*56(%rcx)
	movb	%al, -41(%rbp)          ## 1-byte Spill
Ltmp37:
## %bb.6:
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	-41(%rbp), %eax         ## 1-byte Folded Reload
	movl	%eax, 144(%r12)
	movq	-64(%rbp), %rdi         ## 8-byte Reload
LBB3_7:
	addq	%r15, %r14
	andl	$176, %r13d
	cmpl	$32, %r13d
	movq	%r15, %rdx
	cmoveq	%r14, %rdx
Ltmp39:
	movsbl	%al, %r9d
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	%r12, %r8
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp40:
## %bb.8:
	testq	%rax, %rax
	jne	LBB3_10
## %bb.9:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	leaq	(%rbx,%rax), %rdi
	movl	32(%rbx,%rax), %esi
	orl	$5, %esi
Ltmp42:
	callq	__ZNSt3__18ios_base5clearEj
Ltmp43:
LBB3_10:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB3_11:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB3_12:
Ltmp44:
	jmp	LBB3_15
LBB3_13:
Ltmp38:
	movq	%rax, %r14
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	jmp	LBB3_16
LBB3_14:
Ltmp41:
LBB3_15:
	movq	%rax, %r14
LBB3_16:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	jmp	LBB3_18
LBB3_17:
Ltmp31:
	movq	%rax, %r14
LBB3_18:
	movq	%r14, %rdi
	callq	___cxa_begin_catch
	movq	(%rbx), %rax
	movq	-24(%rax), %rdi
	addq	%rbx, %rdi
Ltmp45:
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp46:
## %bb.19:
	callq	___cxa_end_catch
	jmp	LBB3_11
LBB3_20:
Ltmp47:
	movq	%rax, %rbx
Ltmp48:
	callq	___cxa_end_catch
Ltmp49:
## %bb.21:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
LBB3_22:
Ltmp50:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table3:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Ltmp29-Lfunc_begin1    ## >> Call Site 1 <<
	.uleb128 Ltmp30-Ltmp29          ##   Call between Ltmp29 and Ltmp30
	.uleb128 Ltmp31-Lfunc_begin1    ##     jumps to Ltmp31
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp32-Lfunc_begin1    ## >> Call Site 2 <<
	.uleb128 Ltmp33-Ltmp32          ##   Call between Ltmp32 and Ltmp33
	.uleb128 Ltmp41-Lfunc_begin1    ##     jumps to Ltmp41
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp34-Lfunc_begin1    ## >> Call Site 3 <<
	.uleb128 Ltmp37-Ltmp34          ##   Call between Ltmp34 and Ltmp37
	.uleb128 Ltmp38-Lfunc_begin1    ##     jumps to Ltmp38
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp39-Lfunc_begin1    ## >> Call Site 4 <<
	.uleb128 Ltmp40-Ltmp39          ##   Call between Ltmp39 and Ltmp40
	.uleb128 Ltmp41-Lfunc_begin1    ##     jumps to Ltmp41
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp42-Lfunc_begin1    ## >> Call Site 5 <<
	.uleb128 Ltmp43-Ltmp42          ##   Call between Ltmp42 and Ltmp43
	.uleb128 Ltmp44-Lfunc_begin1    ##     jumps to Ltmp44
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp43-Lfunc_begin1    ## >> Call Site 6 <<
	.uleb128 Ltmp45-Ltmp43          ##   Call between Ltmp43 and Ltmp45
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp45-Lfunc_begin1    ## >> Call Site 7 <<
	.uleb128 Ltmp46-Ltmp45          ##   Call between Ltmp45 and Ltmp46
	.uleb128 Ltmp47-Lfunc_begin1    ##     jumps to Ltmp47
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp46-Lfunc_begin1    ## >> Call Site 8 <<
	.uleb128 Ltmp48-Ltmp46          ##   Call between Ltmp46 and Ltmp48
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp48-Lfunc_begin1    ## >> Call Site 9 <<
	.uleb128 Ltmp49-Ltmp48          ##   Call between Ltmp48 and Ltmp49
	.uleb128 Ltmp50-Lfunc_begin1    ##     jumps to Ltmp50
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp49-Lfunc_begin1    ## >> Call Site 10 <<
	.uleb128 Lfunc_end1-Ltmp49      ##   Call between Ltmp49 and Lfunc_end1
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end1:
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
Lttbase0:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ## -- Begin function _ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	4, 0x90
__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ## @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
## %bb.0:
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
	subq	$56, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	testq	%rdi, %rdi
	je	LBB4_20
## %bb.1:
	movq	%r8, %r12
	movq	%rcx, %r15
	movq	%rdi, %r13
	movl	%r9d, -68(%rbp)         ## 4-byte Spill
	movq	%rcx, %rax
	subq	%rsi, %rax
	movq	24(%r8), %rcx
	xorl	%r14d, %r14d
	subq	%rax, %rcx
	cmovgq	%rcx, %r14
	movq	%rdx, -88(%rbp)         ## 8-byte Spill
	movq	%rdx, %rbx
	subq	%rsi, %rbx
	testq	%rbx, %rbx
	jle	LBB4_3
## %bb.2:
	movq	(%r13), %rax
	movq	%r13, %rdi
	movq	%rbx, %rdx
	callq	*96(%rax)
	cmpq	%rbx, %rax
	jne	LBB4_20
LBB4_3:
	testq	%r14, %r14
	jle	LBB4_16
## %bb.4:
	movq	%r12, -80(%rbp)         ## 8-byte Spill
	cmpq	$23, %r14
	jae	LBB4_8
## %bb.5:
	leal	(%r14,%r14), %eax
	movb	%al, -64(%rbp)
	leaq	-64(%rbp), %rbx
	leaq	-63(%rbp), %r12
	jmp	LBB4_9
LBB4_8:
	leaq	16(%r14), %rbx
	andq	$-16, %rbx
	movq	%rbx, %rdi
	callq	__Znwm
	movq	%rax, %r12
	movq	%rax, -48(%rbp)
	orq	$1, %rbx
	movq	%rbx, -64(%rbp)
	movq	%r14, -56(%rbp)
	leaq	-64(%rbp), %rbx
LBB4_9:
	movzbl	-68(%rbp), %esi         ## 1-byte Folded Reload
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	_memset
	movb	$0, (%r12,%r14)
	testb	$1, -64(%rbp)
	je	LBB4_11
## %bb.10:
	movq	-48(%rbp), %rbx
	jmp	LBB4_12
LBB4_11:
	incq	%rbx
LBB4_12:
	movq	-80(%rbp), %r12         ## 8-byte Reload
	movq	(%r13), %rax
Ltmp51:
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	*96(%rax)
Ltmp52:
## %bb.13:
	movq	%rax, %rbx
	testb	$1, -64(%rbp)
	je	LBB4_15
## %bb.14:
	movq	-48(%rbp), %rdi
	callq	__ZdlPv
LBB4_15:
	cmpq	%r14, %rbx
	jne	LBB4_20
LBB4_16:
	movq	-88(%rbp), %rsi         ## 8-byte Reload
	subq	%rsi, %r15
	testq	%r15, %r15
	jle	LBB4_18
## %bb.17:
	movq	(%r13), %rax
	movq	%r13, %rdi
	movq	%r15, %rdx
	callq	*96(%rax)
	cmpq	%r15, %rax
	jne	LBB4_20
LBB4_18:
	movq	$0, 24(%r12)
	jmp	LBB4_21
LBB4_20:
	xorl	%r13d, %r13d
LBB4_21:
	movq	%r13, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB4_22:
Ltmp53:
	movq	%rax, %rbx
	testb	$1, -64(%rbp)
	je	LBB4_24
## %bb.23:
	movq	-48(%rbp), %rdi
	callq	__ZdlPv
LBB4_24:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table4:
Lexception2:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	255                     ## @TType Encoding = omit
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2 ## >> Call Site 1 <<
	.uleb128 Ltmp51-Lfunc_begin2    ##   Call between Lfunc_begin2 and Ltmp51
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp51-Lfunc_begin2    ## >> Call Site 2 <<
	.uleb128 Ltmp52-Ltmp51          ##   Call between Ltmp51 and Ltmp52
	.uleb128 Ltmp53-Lfunc_begin2    ##     jumps to Ltmp53
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp52-Lfunc_begin2    ## >> Call Site 3 <<
	.uleb128 Lfunc_end2-Ltmp52      ##   Call between Ltmp52 and Lfunc_end2
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end2:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Matrix size: "

L_.str.1:                               ## @.str.1
	.asciz	" x "

L_.str.2:                               ## @.str.2
	.asciz	"Execution time: "

L_.str.3:                               ## @.str.3
	.asciz	" seconds\n"

L_.str.4:                               ## @.str.4
	.asciz	"Check: C[0][0] = "

.subsections_via_symbols
