	.file	"StructList.c"
	.text
	.globl	_StudentStart
	.bss
	.align 4
_StudentStart:
	.space 4
	.comm	_Seeker, 4, 2
	.text
	.globl	_NewSTUDENT
	.def	_NewSTUDENT;	.scl	2;	.type	32;	.endef
_NewSTUDENT:
LFB27:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$12, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	movl	$4, (%esp)
	call	_malloc
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	call	_rand
	movl	%eax, %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	-12(%ebp), %edx
	movl	%eax, (%edx)
	movl	-12(%ebp), %eax
	movl	$0, 8(%eax)
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE27:
	.globl	_Push
	.def	_Push;	.scl	2;	.type	32;	.endef
_Push:
LFB28:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	_StudentStart, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE28:
	.globl	_Pop
	.def	_Pop;	.scl	2;	.type	32;	.endef
_Pop:
LFB29:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	_StudentStart, %eax
	testl	%eax, %eax
	jne	L6
	movl	12(%ebp), %eax
	jmp	L7
L6:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L8
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %eax
	movl	$10, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_strncmp
	testl	%eax, %eax
	jle	L9
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 8(%eax)
	jmp	L10
L9:
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Pop
	jmp	L10
L8:
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 8(%eax)
L10:
	movl	_StudentStart, %eax
L7:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE29:
	.globl	_FreeRAM
	.def	_FreeRAM;	.scl	2;	.type	32;	.endef
_FreeRAM:
LFB30:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L12
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_FreeRAM
L12:
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	___mingw_free
	nop
	movl	$0, 8(%ebp)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE30:
	.section .rdata,"dr"
LC0:
	.ascii "\12Deleted %-10s \12\0"
	.text
	.globl	_DeleteContent
	.def	_DeleteContent;	.scl	2;	.type	32;	.endef
_DeleteContent:
LFB31:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L18
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L15
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L16
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	jmp	L17
L16:
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
L17:
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	___mingw_free
	nop
	movl	$0, -12(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	jmp	L18
L15:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DeleteContent
L18:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE31:
	.section .rdata,"dr"
LC1:
	.ascii "%-10s %-10d\12\0"
LC2:
	.ascii "Empty\12\0"
	.text
	.globl	_DisplayContents
	.def	_DisplayContents;	.scl	2;	.type	32;	.endef
_DisplayContents:
LFB32:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	je	L20
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L22
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_DisplayContents
	jmp	L22
L20:
	movl	$LC2, (%esp)
	call	_puts
L22:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE32:
	.globl	_ClassStart
	.bss
	.align 4
_ClassStart:
	.space 4
	.comm	_ClassSeeker, 4, 2
	.section .rdata,"dr"
LC3:
	.ascii "Subject : %s\12\0"
	.text
	.globl	_DisplayAllClasses
	.def	_DisplayAllClasses;	.scl	2;	.type	32;	.endef
_DisplayAllClasses:
LFB33:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_printf
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L25
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	_DisplayContents
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_DisplayAllClasses
L25:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE33:
	.globl	_NewCLASS
	.def	_NewCLASS;	.scl	2;	.type	32;	.endef
_NewCLASS:
LFB34:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$16, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	movl	$4, (%esp)
	call	_malloc
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	-12(%ebp), %eax
	movl	$0, 8(%eax)
	movl	-12(%ebp), %eax
	movl	$0, 12(%eax)
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE34:
	.section .rdata,"dr"
LC4:
	.ascii "%s\0"
	.text
	.globl	_AddStudent
	.def	_AddStudent;	.scl	2;	.type	32;	.endef
_AddStudent:
LFB35:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	movl	_ClassStart, %eax
	movl	%eax, _ClassSeeker
	jmp	L29
L30:
	movl	_ClassSeeker, %eax
	movl	8(%eax), %eax
	movl	%eax, _ClassSeeker
L29:
	movl	_ClassSeeker, %eax
	movl	4(%eax), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L30
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_NewSTUDENT
	movl	_ClassSeeker, %ebx
	movl	%eax, (%esp)
	call	_Push
	movl	%eax, 12(%ebx)
	movl	_ClassSeeker, %eax
	movl	12(%eax), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC4, (%esp)
	call	_printf
	nop
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE35:
	.globl	_PushClass
	.def	_PushClass;	.scl	2;	.type	32;	.endef
_PushClass:
LFB36:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	_ClassStart, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE36:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC5:
	.ascii "Andreas\0"
LC6:
	.ascii "Oliver\0"
LC7:
	.ascii "Lasse\0"
LC8:
	.ascii "Ditte\0"
LC9:
	.ascii "Jonas\0"
LC10:
	.ascii "Kasper\0"
LC11:
	.ascii "Bodil\0"
LC12:
	.ascii "Rikke\0"
LC13:
	.ascii "Jesper\0"
LC14:
	.ascii "Thomas\0"
LC15:
	.ascii "\12List of Students\0"
	.align 4
LC16:
	.ascii "\12List of Students after Delete\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB37:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$16, %esp
	call	___main
	movl	$0, (%esp)
	call	_time
	movl	%eax, (%esp)
	call	_srand
	movl	$LC5, (%esp)
	call	_NewSTUDENT
	movl	_StudentStart, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_Pop
	movl	%eax, _StudentStart
	movl	$LC6, (%esp)
	call	_NewSTUDENT
	movl	_StudentStart, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_Pop
	movl	%eax, _StudentStart
	movl	$LC7, (%esp)
	call	_NewSTUDENT
	movl	_StudentStart, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_Pop
	movl	%eax, _StudentStart
	movl	$LC8, (%esp)
	call	_NewSTUDENT
	movl	_StudentStart, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_Pop
	movl	%eax, _StudentStart
	movl	$LC9, (%esp)
	call	_NewSTUDENT
	movl	_StudentStart, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_Pop
	movl	%eax, _StudentStart
	movl	$LC10, (%esp)
	call	_NewSTUDENT
	movl	_StudentStart, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_Pop
	movl	%eax, _StudentStart
	movl	$LC11, (%esp)
	call	_NewSTUDENT
	movl	_StudentStart, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_Pop
	movl	%eax, _StudentStart
	movl	$LC12, (%esp)
	call	_NewSTUDENT
	movl	_StudentStart, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_Pop
	movl	%eax, _StudentStart
	movl	$LC13, (%esp)
	call	_NewSTUDENT
	movl	_StudentStart, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_Pop
	movl	%eax, _StudentStart
	movl	$LC14, (%esp)
	call	_NewSTUDENT
	movl	_StudentStart, %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_Pop
	movl	%eax, _StudentStart
	movl	$LC15, (%esp)
	call	_puts
	movl	_StudentStart, %eax
	movl	%eax, (%esp)
	call	_DisplayContents
	movl	_StudentStart, %eax
	movl	$LC6, 4(%esp)
	movl	%eax, (%esp)
	call	_DeleteContent
	movl	$LC16, (%esp)
	call	_puts
	movl	_StudentStart, %eax
	movl	%eax, (%esp)
	call	_DisplayContents
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE37:
	.ident	"GCC: (MinGW.org GCC Build-2) 9.2.0"
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_rand;	.scl	2;	.type	32;	.endef
	.def	_strncmp;	.scl	2;	.type	32;	.endef
	.def	___mingw_free;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_time;	.scl	2;	.type	32;	.endef
	.def	_srand;	.scl	2;	.type	32;	.endef
