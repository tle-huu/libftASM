global _ft_memset

section .text

_ft_memset:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 16

init:
	mov		qword[rbp - 8], rdi

main:
	mov		rcx, rdx
	mov		rax, rsi
	rep		stosb

done:
	mov		rax, qword[rbp - 8]
	leave
	ret
