extern _malloc
extern _ft_strlen
extern _ft_memcpy

global _ft_strdup

section .text

_ft_strdup:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 32

null:
	cmp		rdi, 0
	je		done

main:
	mov		qword[rbp - 8], rdi
	call	_ft_strlen
	add		rax, 1
	mov		rdi, rax
	mov		qword[rbp - 16], rax
	call _malloc
	mov		qword[rbp - 24], rax
	mov		rdi, qword[rbp - 24]
	mov		rsi, qword[rbp - 8]
	mov		rdx, qword[rbp - 16]
	call _ft_memcpy

done:
	leave
	ret
