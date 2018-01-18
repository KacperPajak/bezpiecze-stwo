	.file	"server_nopass.c"
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	_ZStL13allocator_arg, @object
	.size	_ZStL13allocator_arg, 1
_ZStL13allocator_arg:
	.zero	1
	.type	_ZStL6ignore, @object
	.size	_ZStL6ignore, 1
_ZStL6ignore:
	.zero	1
	.align 4
	.type	_ZN5boost6detail16static_log2_implL6n_zeroE, @object
	.size	_ZN5boost6detail16static_log2_implL6n_zeroE, 4
_ZN5boost6detail16static_log2_implL6n_zeroE:
	.long	16
	.align 4
	.type	_ZN5boost6detail16static_log2_implL9initial_nE, @object
	.size	_ZN5boost6detail16static_log2_implL9initial_nE, 4
_ZN5boost6detail16static_log2_implL9initial_nE:
	.long	32
	.section	.text._ZNK5boost4hashIcEclEc,"axG",@progbits,_ZNK5boost4hashIcEclEc,comdat
	.align 2
	.weak	_ZNK5boost4hashIcEclEc
	.type	_ZNK5boost4hashIcEclEc, @function
_ZNK5boost4hashIcEclEc:
.LFB2173:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	movsbl	-12(%rbp), %eax
	movl	%eax, %edi
	call	_ZN5boost10hash_valueIcEENS_11hash_detail13basic_numbersIT_E4typeES3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2173:
	.size	_ZNK5boost4hashIcEclEc, .-_ZNK5boost4hashIcEclEc
	.section	.text._ZNK5boost4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS6_,"axG",@progbits,_ZNK5boost4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS6_,comdat
	.align 2
	.weak	_ZNK5boost4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS6_
	.type	_ZNK5boost4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS6_, @function
_ZNK5boost4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS6_:
.LFB2186:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5boost10hash_valueIcSaIcEEEmRKNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ET0_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2186:
	.size	_ZNK5boost4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS6_, .-_ZNK5boost4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS6_
	.section	.rodata
	.align 4
	.type	_ZN9__gnu_cxxL21__default_lock_policyE, @object
	.size	_ZN9__gnu_cxxL21__default_lock_policyE, 4
_ZN9__gnu_cxxL21__default_lock_policyE:
	.long	2
	.globl	keysize
	.data
	.align 4
	.type	keysize, @object
	.size	keysize, 4
keysize:
	.long	2048
	.section	.rodata
.LC0:
	.string	"admin"
.LC1:
	.string	"w"
.LC2:
	.string	"%ld"
	.text
	.globl	_Z16generatePasswordv
	.type	_Z16generatePasswordv, @function
_Z16generatePasswordv:
.LFB4249:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4249
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-97(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-97(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$.LC0, %esi
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.LEHE0:
	leaq	-80(%rbp), %rdx
	leaq	-98(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB1:
	call	_ZNK5boost4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS6_
.LEHE1:
	movq	%rax, -96(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-97(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movq	$1718513507, -48(%rbp)
	movw	$0, -40(%rbp)
	leaq	-48(%rbp), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
.LEHB2:
	call	fopen
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$.LC2, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L8
	jmp	.L11
.L10:
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L7
.L9:
	movq	%rax, %rbx
.L7:
	leaq	-97(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.LEHE2:
.L11:
	call	__stack_chk_fail
.L8:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4249:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA4249:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4249-.LLSDACSB4249
.LLSDACSB4249:
	.uleb128 .LEHB0-.LFB4249
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L9-.LFB4249
	.uleb128 0
	.uleb128 .LEHB1-.LFB4249
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L10-.LFB4249
	.uleb128 0
	.uleb128 .LEHB2-.LFB4249
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE4249:
	.text
	.size	_Z16generatePasswordv, .-_Z16generatePasswordv
	.globl	_Z13checkPasswordNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_Z13checkPasswordNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, @function
_Z13checkPasswordNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB4250:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4250:
	.size	_Z13checkPasswordNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_Z13checkPasswordNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.rodata
.LC3:
	.string	"r"
.LC4:
	.string	"Klucz publiczny nie istnieje."
.LC5:
	.string	"%s\n"
	.text
	.globl	_Z12getPublicKeyB5cxx11v
	.type	_Z12getPublicKeyB5cxx11v, @function
_Z12getPublicKeyB5cxx11v:
.LFB4251:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4251
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$20088, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -20088(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movabsq	$7596554928003314546, %rax
	movq	%rax, -20064(%rbp)
	movq	$99, -20056(%rbp)
	movl	$0, -20048(%rbp)
	leaq	-20064(%rbp), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
.LEHB3:
	call	fopen
	movq	%rax, -20072(%rbp)
	cmpq	$0, -20072(%rbp)
	jne	.L15
	movl	$.LC4, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
.LEHE3:
	leaq	-20073(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-20073(%rbp), %rdx
	movq	-20088(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB4:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.LEHE4:
	leaq	-20073(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	jmp	.L14
.L15:
	leaq	-20032(%rbp), %rdx
	movq	-20072(%rbp), %rax
	movl	$.LC5, %esi
	movq	%rax, %rdi
	movl	$0, %eax
.LEHB5:
	call	fscanf
	movq	-20072(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
.LEHE5:
	leaq	-20073(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-20073(%rbp), %rdx
	leaq	-20032(%rbp), %rcx
	movq	-20088(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB6:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.LEHE6:
	leaq	-20073(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	jmp	.L14
.L21:
	movq	%rax, %rbx
	leaq	-20073(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB7:
	call	_Unwind_Resume
.L22:
	movq	%rax, %rbx
	leaq	-20073(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.LEHE7:
.L14:
	movq	-20088(%rbp), %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L20
	call	__stack_chk_fail
.L20:
	addq	$20088, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4251:
	.section	.gcc_except_table
.LLSDA4251:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4251-.LLSDACSB4251
.LLSDACSB4251:
	.uleb128 .LEHB3-.LFB4251
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB4251
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L21-.LFB4251
	.uleb128 0
	.uleb128 .LEHB5-.LFB4251
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB4251
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L22-.LFB4251
	.uleb128 0
	.uleb128 .LEHB7-.LFB4251
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE4251:
	.text
	.size	_Z12getPublicKeyB5cxx11v, .-_Z12getPublicKeyB5cxx11v
	.section	.rodata
.LC6:
	.string	"Klucz prywatny nie istnieje."
	.text
	.globl	_Z13getPrivateKeyB5cxx11v
	.type	_Z13getPrivateKeyB5cxx11v, @function
_Z13getPrivateKeyB5cxx11v:
.LFB4252:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4252
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$20088, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -20088(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movabsq	$7022916609163490162, %rax
	movq	%rax, -20064(%rbp)
	movq	$25972, -20056(%rbp)
	movl	$0, -20048(%rbp)
	leaq	-20064(%rbp), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
.LEHB8:
	call	fopen
	movq	%rax, -20072(%rbp)
	cmpq	$0, -20072(%rbp)
	jne	.L24
	movl	$.LC6, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
.LEHE8:
	leaq	-20073(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-20073(%rbp), %rdx
	movq	-20088(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB9:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.LEHE9:
	leaq	-20073(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	jmp	.L23
.L24:
	leaq	-20032(%rbp), %rdx
	movq	-20072(%rbp), %rax
	movl	$.LC5, %esi
	movq	%rax, %rdi
	movl	$0, %eax
.LEHB10:
	call	fscanf
	movq	-20072(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
.LEHE10:
	leaq	-20073(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-20073(%rbp), %rdx
	leaq	-20032(%rbp), %rcx
	movq	-20088(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB11:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.LEHE11:
	leaq	-20073(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	jmp	.L23
.L30:
	movq	%rax, %rbx
	leaq	-20073(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB12:
	call	_Unwind_Resume
.L31:
	movq	%rax, %rbx
	leaq	-20073(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.LEHE12:
.L23:
	movq	-20088(%rbp), %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L29
	call	__stack_chk_fail
.L29:
	addq	$20088, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4252:
	.section	.gcc_except_table
.LLSDA4252:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4252-.LLSDACSB4252
.LLSDACSB4252:
	.uleb128 .LEHB8-.LFB4252
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB4252
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L30-.LFB4252
	.uleb128 0
	.uleb128 .LEHB10-.LFB4252
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB4252
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L31-.LFB4252
	.uleb128 0
	.uleb128 .LEHB12-.LFB4252
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE4252:
	.text
	.size	_Z13getPrivateKeyB5cxx11v, .-_Z13getPrivateKeyB5cxx11v
	.section	.rodata
.LC7:
	.string	""
	.text
	.globl	_Z10hasInverseNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_Z10hasInverseNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, @function
_Z10hasInverseNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB4253:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4253
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -248(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
	movq	%rax, -224(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
.LEHB13:
	call	__gmpz_init
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_init
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_init
.LEHE13:
	leaq	-225(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-225(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movl	$.LC7, %esi
	movq	%rax, %rdi
.LEHB14:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.LEHE14:
	leaq	-225(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
.LEHB15:
	call	_Z13getPrivateKeyB5cxx11v
.LEHE15:
	leaq	-128(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB16:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
.LEHE16:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movl	keysize(%rip), %eax
	movslq	%eax, %rdx
	leaq	-96(%rbp), %rax
	leaq	-160(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
.LEHB17:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
.LEHE17:
	movl	keysize(%rip), %eax
	movslq	%eax, %rdx
	leaq	-64(%rbp), %rax
	leaq	-160(%rbp), %rsi
	movq	$-1, %rcx
	movq	%rax, %rdi
.LEHB18:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
.LEHE18:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
	movq	%rax, -216(%rbp)
	movq	-224(%rbp), %rcx
	leaq	-192(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB19:
	call	__gmpz_set_str
	movq	-216(%rbp), %rcx
	leaq	-176(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__gmpz_set_str
	leaq	-176(%rbp), %rdx
	leaq	-192(%rbp), %rcx
	leaq	-208(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__gmpz_invert
.LEHE19:
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L33
	movl	$0, %ebx
	jmp	.L34
.L33:
	movl	$1, %ebx
.L34:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movl	%ebx, %eax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L41
	jmp	.L47
.L42:
	movq	%rax, %rbx
	leaq	-225(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB20:
	call	_Unwind_Resume
.L44:
	movq	%rax, %rbx
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L38
.L46:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L40
.L45:
	movq	%rax, %rbx
.L40:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L38
.L43:
	movq	%rax, %rbx
.L38:
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.LEHE20:
.L47:
	call	__stack_chk_fail
.L41:
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4253:
	.section	.gcc_except_table
.LLSDA4253:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4253-.LLSDACSB4253
.LLSDACSB4253:
	.uleb128 .LEHB13-.LFB4253
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB4253
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L42-.LFB4253
	.uleb128 0
	.uleb128 .LEHB15-.LFB4253
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L43-.LFB4253
	.uleb128 0
	.uleb128 .LEHB16-.LFB4253
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L44-.LFB4253
	.uleb128 0
	.uleb128 .LEHB17-.LFB4253
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L43-.LFB4253
	.uleb128 0
	.uleb128 .LEHB18-.LFB4253
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L45-.LFB4253
	.uleb128 0
	.uleb128 .LEHB19-.LFB4253
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L46-.LFB4253
	.uleb128 0
	.uleb128 .LEHB20-.LFB4253
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE4253:
	.text
	.size	_Z10hasInverseNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_Z10hasInverseNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.globl	_Z12generateKeysi
	.type	_Z12generateKeysi, @function
_Z12generateKeysi:
.LFB4254:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$80472, %rsp
	.cfi_offset 3, -24
	movl	%edi, -80468(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	-80468(%rbp), %eax
	movl	%eax, -80448(%rbp)
	movl	-80448(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -80444(%rbp)
	leaq	-80400(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_init
	leaq	-80384(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_init
	movl	-80444(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, -80432(%rbp)
	movl	-80444(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	%rax, %rdi
	call	_Znam
	movq	%rax, -80424(%rbp)
	movq	-80432(%rbp), %rax
	movb	$49, (%rax)
	movq	-80424(%rbp), %rax
	movb	$49, (%rax)
	leaq	-80460(%rbp), %rax
	movq	%rax, %rdi
	call	time
	movl	-80460(%rbp), %eax
	movl	%eax, %edi
	call	srand
	movl	$1, -80456(%rbp)
.L50:
	movl	-80456(%rbp), %eax
	cmpl	-80444(%rbp), %eax
	jge	.L49
	movl	-80456(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80432(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	call	rand
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	addsd	%xmm0, %xmm0
	movsd	.LC8(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	addl	$48, %eax
	movb	%al, (%rbx)
	addl	$1, -80456(%rbp)
	jmp	.L50
.L49:
	movl	$1, -80452(%rbp)
.L52:
	movl	-80452(%rbp), %eax
	cmpl	-80444(%rbp), %eax
	jge	.L51
	movl	-80452(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80424(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	call	rand
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	addsd	%xmm0, %xmm0
	movsd	.LC8(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	addl	$48, %eax
	movb	%al, (%rbx)
	addl	$1, -80452(%rbp)
	jmp	.L52
.L51:
	movl	-80444(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80432(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-80444(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80424(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-80432(%rbp), %rcx
	leaq	-80400(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__gmpz_set_str
	movq	-80424(%rbp), %rcx
	leaq	-80384(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__gmpz_set_str
	leaq	-80400(%rbp), %rdx
	leaq	-80400(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	__gmpz_nextprime
	leaq	-80384(%rbp), %rdx
	leaq	-80384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	__gmpz_nextprime
	leaq	-80368(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_init
	leaq	-80352(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_init
	leaq	-80384(%rbp), %rdx
	leaq	-80400(%rbp), %rcx
	leaq	-80368(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__gmpz_mul
	leaq	-80368(%rbp), %rdx
	leaq	-80032(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	__gmpz_get_str
	leaq	-80336(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_init
	leaq	-80320(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_init
	leaq	-80400(%rbp), %rcx
	leaq	-80336(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__gmpz_sub_ui
	leaq	-80384(%rbp), %rcx
	leaq	-80320(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__gmpz_sub_ui
	leaq	-80320(%rbp), %rdx
	leaq	-80336(%rbp), %rcx
	leaq	-80352(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__gmpz_mul
	leaq	-80304(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_init
	leaq	-80288(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_init
	leaq	-80272(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_init
	movq	$65537, -80440(%rbp)
.L55:
	movq	-80440(%rbp), %rdx
	leaq	-80352(%rbp), %rcx
	leaq	-80304(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__gmpz_gcd_ui
	leaq	-80304(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	__gmpz_cmp_ui
	testl	%eax, %eax
	je	.L59
	addq	$2, -80440(%rbp)
	jmp	.L55
.L59:
	nop
	movq	-80440(%rbp), %rdx
	leaq	-80288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	__gmpz_set_ui
	leaq	-80352(%rbp), %rdx
	leaq	-80288(%rbp), %rcx
	leaq	-80272(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__gmpz_invert
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L56
	leaq	-80400(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_clear
	leaq	-80384(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_clear
	leaq	-80352(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_clear
	leaq	-80336(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_clear
	leaq	-80320(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_clear
	leaq	-80304(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_clear
	leaq	-80288(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_clear
	leaq	-80368(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_clear
	leaq	-80272(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_clear
	movl	-80448(%rbp), %eax
	movl	%eax, %edi
	call	_Z12generateKeysi
.L56:
	leaq	-80288(%rbp), %rdx
	leaq	-40032(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	__gmpz_get_str
	leaq	-80368(%rbp), %rdx
	leaq	-20032(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	__gmpz_get_str
	leaq	-80272(%rbp), %rdx
	leaq	-60032(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	__gmpz_get_str
	movabsq	$7596554928003314546, %rax
	movq	%rax, -80256(%rbp)
	movq	$99, -80248(%rbp)
	leaq	-80240(%rbp), %rdx
	movl	$0, %eax
	movl	$10, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	movabsq	$7022916609163490162, %rax
	movq	%rax, -80144(%rbp)
	movq	$25972, -80136(%rbp)
	leaq	-80128(%rbp), %rdx
	movl	$0, %eax
	movl	$10, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	leaq	-80256(%rbp), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, -80416(%rbp)
	leaq	-80144(%rbp), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, -80408(%rbp)
	movq	-80416(%rbp), %rdx
	leaq	-20032(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs
	movq	-80416(%rbp), %rdx
	leaq	-40032(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs
	movq	-80408(%rbp), %rdx
	leaq	-20032(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs
	movq	-80408(%rbp), %rdx
	leaq	-60032(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs
	movq	-80416(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movq	-80408(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	leaq	-80400(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_clear
	leaq	-80384(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_clear
	leaq	-80352(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_clear
	leaq	-80336(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_clear
	leaq	-80320(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_clear
	leaq	-80304(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_clear
	leaq	-80288(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_clear
	leaq	-80368(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_clear
	leaq	-80272(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_clear
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L57
	call	__stack_chk_fail
.L57:
	addq	$80472, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4254:
	.size	_Z12generateKeysi, .-_Z12generateKeysi
	.section	.rodata
.LC9:
	.string	"number: "
	.text
	.globl	_Z6powmodNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_Z6powmodNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, @function
_Z6powmodNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB4255:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4255
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$20248, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -20248(%rbp)
	movq	%rsi, -20256(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-20208(%rbp), %rax
	movq	%rax, %rdi
.LEHB21:
	call	__gmpz_init
	leaq	-20192(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_init
	leaq	-20176(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_init
.LEHE21:
	movq	-20256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
	movq	%rax, -20232(%rbp)
	leaq	-20233(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-20233(%rbp), %rdx
	leaq	-20160(%rbp), %rax
	movl	$.LC7, %esi
	movq	%rax, %rdi
.LEHB22:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.LEHE22:
	leaq	-20233(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-20128(%rbp), %rax
	movq	%rax, %rdi
.LEHB23:
	call	_Z13getPrivateKeyB5cxx11v
.LEHE23:
	leaq	-20128(%rbp), %rdx
	leaq	-20160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB24:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
.LEHE24:
	leaq	-20128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movl	keysize(%rip), %eax
	movslq	%eax, %rdx
	leaq	-20096(%rbp), %rax
	leaq	-20160(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
.LEHB25:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
.LEHE25:
	movl	keysize(%rip), %eax
	movslq	%eax, %rdx
	leaq	-20064(%rbp), %rax
	leaq	-20160(%rbp), %rsi
	movq	$-1, %rcx
	movq	%rax, %rdi
.LEHB26:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm
.LEHE26:
	leaq	-20096(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
	movq	%rax, -20224(%rbp)
	leaq	-20064(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
	movq	%rax, -20216(%rbp)
	movq	-20232(%rbp), %rcx
	leaq	-20208(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB27:
	call	__gmpz_set_str
	movl	$.LC9, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movq	-20232(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movq	-20224(%rbp), %rcx
	leaq	-20192(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__gmpz_set_str
	movq	-20216(%rbp), %rcx
	leaq	-20176(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	__gmpz_set_str
	leaq	-20192(%rbp), %rcx
	leaq	-20176(%rbp), %rdx
	leaq	-20208(%rbp), %rsi
	leaq	-20208(%rbp), %rax
	movq	%rax, %rdi
	call	__gmpz_powm
	movq	$0, -20032(%rbp)
	leaq	-20024(%rbp), %rax
	movl	$19992, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	leaq	-20208(%rbp), %rdx
	leaq	-20032(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	__gmpz_get_str
.LEHE27:
	leaq	-20233(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-20233(%rbp), %rdx
	leaq	-20032(%rbp), %rcx
	movq	-20248(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB28:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.LEHE28:
	leaq	-20233(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-20064(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-20096(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-20160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	nop
	movq	-20248(%rbp), %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L68
	jmp	.L75
.L69:
	movq	%rax, %rbx
	leaq	-20233(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB29:
	call	_Unwind_Resume
.L71:
	movq	%rax, %rbx
	leaq	-20128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L64
.L74:
	movq	%rax, %rbx
	leaq	-20233(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	jmp	.L66
.L73:
	movq	%rax, %rbx
.L66:
	leaq	-20064(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L67
.L72:
	movq	%rax, %rbx
.L67:
	leaq	-20096(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L64
.L70:
	movq	%rax, %rbx
.L64:
	leaq	-20160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.LEHE29:
.L75:
	call	__stack_chk_fail
.L68:
	addq	$20248, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4255:
	.section	.gcc_except_table
.LLSDA4255:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4255-.LLSDACSB4255
.LLSDACSB4255:
	.uleb128 .LEHB21-.LFB4255
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB22-.LFB4255
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L69-.LFB4255
	.uleb128 0
	.uleb128 .LEHB23-.LFB4255
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L70-.LFB4255
	.uleb128 0
	.uleb128 .LEHB24-.LFB4255
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L71-.LFB4255
	.uleb128 0
	.uleb128 .LEHB25-.LFB4255
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L70-.LFB4255
	.uleb128 0
	.uleb128 .LEHB26-.LFB4255
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L72-.LFB4255
	.uleb128 0
	.uleb128 .LEHB27-.LFB4255
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L73-.LFB4255
	.uleb128 0
	.uleb128 .LEHB28-.LFB4255
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L74-.LFB4255
	.uleb128 0
	.uleb128 .LEHB29-.LFB4255
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
.LLSDACSE4255:
	.text
	.size	_Z6powmodNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_Z6powmodNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.globl	_Z5errorPKc
	.type	_Z5errorPKc, @function
_Z5errorPKc:
.LFB4256:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	perror
	movl	$1, %edi
	call	exit
	.cfi_endproc
.LFE4256:
	.size	_Z5errorPKc, .-_Z5errorPKc
	.section	.rodata
.LC10:
	.string	"Wybierz tryb pracy serwera:"
.LC11:
	.string	"setup"
	.align 8
.LC12:
	.string	"Wybierz rozmiar klucza: 1 - 2048, 2 - 4096, 3 - 8192, 4 - 16384:"
.LC13:
	.string	"1"
.LC14:
	.string	"2"
.LC15:
	.string	"3"
.LC16:
	.string	"4"
.LC17:
	.string	"Wygenerowano klucze: "
.LC18:
	.string	"bit"
.LC19:
	.string	"Wygenerowano has\305\202o: "
.LC20:
	.string	"service"
.LC21:
	.string	"Wprowad\305\272 has\305\202o:"
.LC22:
	.string	"Poprawne has\305\202o."
.LC23:
	.string	"Nie mo\305\274na otworzy\304\207 gniazda."
.LC24:
	.string	"B\305\202\304\205d po\305\202\304\205czenia."
	.align 8
.LC25:
	.string	"B\305\202\304\205d akceptacji po\305\202\304\205czenia."
.LC26:
	.string	"result:"
.LC27:
	.string	"Niezgodno\305\233\304\207 wiadomo\305\233ci."
.LC28:
	.string	"Niepoprawne has\305\202o."
.LC29:
	.string	"B\305\202\304\231dny tryb pracy."
	.text
	.globl	main
	.type	main, @function
main:
.LFB4257:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4257
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$16648, %rsp
	.cfi_offset 3, -24
	movl	%edi, -16644(%rbp)
	movq	%rsi, -16656(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-16628(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-16628(%rbp), %rdx
	leaq	-16576(%rbp), %rax
	movl	$.LC7, %esi
	movq	%rax, %rdi
.LEHB30:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.LEHE30:
	leaq	-16628(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movl	$.LC10, %esi
	movl	$_ZSt4cout, %edi
.LEHB31:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	leaq	-16576(%rbp), %rax
	movq	%rax, %rsi
	movl	$_ZSt3cin, %edi
	call	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	leaq	-16576(%rbp), %rax
	movl	$.LC11, %esi
	movq	%rax, %rdi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	testb	%al, %al
	je	.L78
	movl	$.LC12, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	-16576(%rbp), %rax
	movq	%rax, %rsi
	movl	$_ZSt3cin, %edi
	call	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	leaq	-16576(%rbp), %rax
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	testb	%al, %al
	je	.L79
	movl	$2048, keysize(%rip)
.L79:
	leaq	-16576(%rbp), %rax
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	testb	%al, %al
	je	.L80
	movl	$4096, keysize(%rip)
.L80:
	leaq	-16576(%rbp), %rax
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	testb	%al, %al
	je	.L81
	movl	$8192, keysize(%rip)
.L81:
	leaq	-16576(%rbp), %rax
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	testb	%al, %al
	je	.L82
	movl	$16384, keysize(%rip)
.L82:
	movl	keysize(%rip), %eax
	movl	%eax, %edi
	call	_Z12generateKeysi
	movl	keysize(%rip), %ebx
	movl	$.LC17, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	call	_Z16generatePasswordv
	movl	$.LC19, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC0, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$0, %ebx
	jmp	.L83
.L78:
	leaq	-16576(%rbp), %rax
	movl	$.LC20, %esi
	movq	%rax, %rdi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	testb	%al, %al
	je	.L84
	movl	$.LC21, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	leaq	-16576(%rbp), %rax
	movq	%rax, %rsi
	movl	$_ZSt3cin, %edi
	call	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	leaq	-16576(%rbp), %rdx
	leaq	-16512(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_
	leaq	-16512(%rbp), %rax
	movq	%rax, %rdi
	call	_Z13checkPasswordNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	movl	%eax, %ebx
	leaq	-16512(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	testb	%bl, %bl
	je	.L85
	movl	$.LC22, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$0, %edx
	movl	$1, %esi
	movl	$2, %edi
	call	socket
	movl	%eax, -16624(%rbp)
	cmpl	$0, -16624(%rbp)
	jns	.L86
	movl	$.LC23, %edi
	call	_Z5errorPKc
.L86:
	leaq	-16608(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	bzero
	movl	$20001, -16620(%rbp)
	movw	$2, -16608(%rbp)
	movl	$0, -16604(%rbp)
	movl	-16620(%rbp), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	htons
	movw	%ax, -16606(%rbp)
	movl	$16, %edx
	leaq	-16608(%rbp), %rcx
	movl	-16624(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	bind
	shrl	$31, %eax
	testb	%al, %al
	je	.L87
	movl	$.LC24, %edi
	call	_Z5errorPKc
.L87:
	movl	-16624(%rbp), %eax
	movl	$5, %esi
	movl	%eax, %edi
	call	listen
	movl	$16, %eax
	movl	%eax, -16628(%rbp)
	leaq	-16628(%rbp), %rdx
	leaq	-16592(%rbp), %rcx
	movl	-16624(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	accept
	movl	%eax, -16616(%rbp)
	cmpl	$0, -16616(%rbp)
	jns	.L88
	movl	$.LC25, %edi
	call	_Z5errorPKc
.L88:
	leaq	-16416(%rbp), %rax
	movl	$16384, %esi
	movq	%rax, %rdi
	call	bzero
	leaq	-16416(%rbp), %rcx
	movl	-16616(%rbp), %eax
	movl	$16383, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read
.LEHE31:
	movl	%eax, -16612(%rbp)
	leaq	-16629(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-16629(%rbp), %rdx
	leaq	-16416(%rbp), %rcx
	leaq	-16544(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB32:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.LEHE32:
	leaq	-16629(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-16544(%rbp), %rdx
	leaq	-16512(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB33:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_
.LEHE33:
	leaq	-16512(%rbp), %rdx
	leaq	-16480(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB34:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_
.LEHE34:
	leaq	-16480(%rbp), %rax
	movq	%rax, %rdi
.LEHB35:
	call	_Z10hasInverseNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE35:
	movl	%eax, %ebx
	leaq	-16480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	testb	%bl, %bl
	je	.L89
	leaq	-16544(%rbp), %rdx
	leaq	-16448(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB36:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_
.LEHE36:
	leaq	-16480(%rbp), %rax
	leaq	-16448(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB37:
	call	_Z6powmodNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE37:
	leaq	-16448(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movl	$.LC26, %esi
	movl	$_ZSt4cout, %edi
.LEHB38:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	leaq	-16480(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
.LEHE38:
	leaq	-16480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L90
.L89:
	leaq	-16629(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-16629(%rbp), %rdx
	leaq	-16448(%rbp), %rax
	movl	$.LC27, %esi
	movq	%rax, %rdi
.LEHB39:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.LEHE39:
	leaq	-16629(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-16448(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
	movq	%rax, %rdx
	leaq	-16416(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-16448(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
	movq	%rax, %rdx
	leaq	-16416(%rbp), %rsi
	movl	-16616(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %edi
.LEHB40:
	call	send
.LEHE40:
	leaq	-16448(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L90:
	movl	-16616(%rbp), %eax
	movl	%eax, %edi
.LEHB41:
	call	close
	movl	-16624(%rbp), %eax
	movl	%eax, %edi
	call	close
.LEHE41:
	leaq	-16512(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-16544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movl	$0, %ebx
	jmp	.L83
.L85:
	movl	$.LC28, %esi
	movl	$_ZSt4cout, %edi
.LEHB42:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, %ebx
	jmp	.L83
.L84:
	movl	$.LC29, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE42:
	movl	$0, %ebx
.L83:
	leaq	-16576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movl	%ebx, %eax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L104
	jmp	.L115
.L105:
	movq	%rax, %rbx
	leaq	-16628(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB43:
	call	_Unwind_Resume
.L107:
	movq	%rax, %rbx
	leaq	-16629(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	jmp	.L96
.L110:
	movq	%rax, %rbx
	leaq	-16480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L98
.L111:
	movq	%rax, %rbx
	leaq	-16448(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L98
.L112:
	movq	%rax, %rbx
	leaq	-16480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L98
.L113:
	movq	%rax, %rbx
	leaq	-16629(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	jmp	.L98
.L114:
	movq	%rax, %rbx
	leaq	-16448(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L98
.L109:
	movq	%rax, %rbx
.L98:
	leaq	-16512(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L103
.L108:
	movq	%rax, %rbx
.L103:
	leaq	-16544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L96
.L106:
	movq	%rax, %rbx
.L96:
	leaq	-16576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.LEHE43:
.L115:
	call	__stack_chk_fail
.L104:
	addq	$16648, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4257:
	.section	.gcc_except_table
.LLSDA4257:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4257-.LLSDACSB4257
.LLSDACSB4257:
	.uleb128 .LEHB30-.LFB4257
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L105-.LFB4257
	.uleb128 0
	.uleb128 .LEHB31-.LFB4257
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L106-.LFB4257
	.uleb128 0
	.uleb128 .LEHB32-.LFB4257
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L107-.LFB4257
	.uleb128 0
	.uleb128 .LEHB33-.LFB4257
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L108-.LFB4257
	.uleb128 0
	.uleb128 .LEHB34-.LFB4257
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L109-.LFB4257
	.uleb128 0
	.uleb128 .LEHB35-.LFB4257
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L110-.LFB4257
	.uleb128 0
	.uleb128 .LEHB36-.LFB4257
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L109-.LFB4257
	.uleb128 0
	.uleb128 .LEHB37-.LFB4257
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L111-.LFB4257
	.uleb128 0
	.uleb128 .LEHB38-.LFB4257
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L112-.LFB4257
	.uleb128 0
	.uleb128 .LEHB39-.LFB4257
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L113-.LFB4257
	.uleb128 0
	.uleb128 .LEHB40-.LFB4257
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L114-.LFB4257
	.uleb128 0
	.uleb128 .LEHB41-.LFB4257
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L109-.LFB4257
	.uleb128 0
	.uleb128 .LEHB42-.LFB4257
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L106-.LFB4257
	.uleb128 0
	.uleb128 .LEHB43-.LFB4257
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0
	.uleb128 0
.LLSDACSE4257:
	.text
	.size	main, .-main
	.section	.text._ZN5boost10hash_valueIcEENS_11hash_detail13basic_numbersIT_E4typeES3_,"axG",@progbits,_ZN5boost10hash_valueIcEENS_11hash_detail13basic_numbersIT_E4typeES3_,comdat
	.weak	_ZN5boost10hash_valueIcEENS_11hash_detail13basic_numbersIT_E4typeES3_
	.type	_ZN5boost10hash_valueIcEENS_11hash_detail13basic_numbersIT_E4typeES3_, @function
_ZN5boost10hash_valueIcEENS_11hash_detail13basic_numbersIT_E4typeES3_:
.LFB4316:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movsbq	-4(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4316:
	.size	_ZN5boost10hash_valueIcEENS_11hash_detail13basic_numbersIT_E4typeES3_, .-_ZN5boost10hash_valueIcEENS_11hash_detail13basic_numbersIT_E4typeES3_
	.section	.text._ZN5boost10hash_valueIcSaIcEEEmRKNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ET0_EE,"axG",@progbits,_ZN5boost10hash_valueIcSaIcEEEmRKNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ET0_EE,comdat
	.weak	_ZN5boost10hash_valueIcSaIcEEEmRKNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ET0_EE
	.type	_ZN5boost10hash_valueIcSaIcEEEmRKNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ET0_EE, @function
_ZN5boost10hash_valueIcSaIcEEEmRKNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ET0_EE:
.LFB4329:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZN5boost10hash_rangeIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEmT_SC_
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4329:
	.size	_ZN5boost10hash_valueIcSaIcEEEmRKNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ET0_EE, .-_ZN5boost10hash_valueIcSaIcEEEmRKNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ET0_EE
	.section	.text._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_,"axG",@progbits,_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_,comdat
	.weak	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	.type	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_, @function
_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_:
.LFB4352:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc
	testl	%eax, %eax
	sete	%al
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4352:
	.size	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_, .-_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	.section	.text._ZN5boost10hash_rangeIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEmT_SC_,"axG",@progbits,_ZN5boost10hash_rangeIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEmT_SC_,comdat
	.weak	_ZN5boost10hash_rangeIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEmT_SC_
	.type	_ZN5boost10hash_rangeIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEmT_SC_, @function
_ZN5boost10hash_rangeIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEmT_SC_:
.LFB4406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -32(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -16(%rbp)
.L124:
	leaq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_
	testb	%al, %al
	je	.L123
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
	movq	%rax, %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5boost12hash_combineIcEEvRmRKT_
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
	jmp	.L124
.L123:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L126
	call	__stack_chk_fail
.L126:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4406:
	.size	_ZN5boost10hash_rangeIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEmT_SC_, .-_ZN5boost10hash_rangeIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEmT_SC_
	.section	.text._ZN9__gnu_cxxneIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_,"axG",@progbits,_ZN9__gnu_cxxneIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_,comdat
	.weak	_ZN9__gnu_cxxneIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_
	.type	_ZN9__gnu_cxxneIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_, @function
_ZN9__gnu_cxxneIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_:
.LFB4463:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	setne	%al
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4463:
	.size	_ZN9__gnu_cxxneIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_, .-_ZN9__gnu_cxxneIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv, @function
_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv:
.LFB4464:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4464:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv, .-_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv:
.LFB4465:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4465:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
	.section	.text._ZN5boost12hash_combineIcEEvRmRKT_,"axG",@progbits,_ZN5boost12hash_combineIcEEvRmRKT_,comdat
	.weak	_ZN5boost12hash_combineIcEEvRmRKT_
	.type	_ZN5boost12hash_combineIcEEvRmRKT_, @function
_ZN5boost12hash_combineIcEEvRmRKT_:
.LFB4466:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	leaq	-9(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZNK5boost4hashIcEclEc
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5boost11hash_detail17hash_combine_implImEEvRT_S2_
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L135
	call	__stack_chk_fail
.L135:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4466:
	.size	_ZN5boost12hash_combineIcEEvRmRKT_, .-_ZN5boost12hash_combineIcEEvRmRKT_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv:
.LFB4495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4495:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv
	.section	.text._ZN5boost11hash_detail17hash_combine_implImEEvRT_S2_,"axG",@progbits,_ZN5boost11hash_detail17hash_combine_implImEEvRT_S2_,comdat
	.weak	_ZN5boost11hash_detail17hash_combine_implImEEvRT_S2_
	.type	_ZN5boost11hash_detail17hash_combine_implImEEvRT_S2_, @function
_ZN5boost11hash_detail17hash_combine_implImEEvRT_S2_:
.LFB4496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	salq	$6, %rax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	shrq	$2, %rax
	addq	%rax, %rcx
	movl	$2654435769, %eax
	addq	%rcx, %rax
	xorq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4496:
	.size	_ZN5boost11hash_detail17hash_combine_implImEEvRT_S2_, .-_ZN5boost11hash_detail17hash_combine_implImEEvRT_S2_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB4544:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L141
	cmpl	$65535, -8(%rbp)
	jne	.L141
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
.L141:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4544:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_keysize, @function
_GLOBAL__sub_I_keysize:
.LFB4545:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4545:
	.size	_GLOBAL__sub_I_keysize, .-_GLOBAL__sub_I_keysize
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_keysize
	.section	.rodata
	.align 8
.LC8:
	.long	0
	.long	1105199104
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.5) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
