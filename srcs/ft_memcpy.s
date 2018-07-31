global _ft_memcpy

section .text

_ft_memcpy:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 16

init:
	mov		qword[rbp - 8], rdi

main:
	mov		rcx, rdx
	mov		rax, rdi
	cld
	rep movsb

done:
	mov		rax, qword[rbp - 8]
	leave
	ret
