extern _ft_strlen

global _ft_puts

section .text

_ft_puts:
	push	rbp
	sub		rbp, 16
	mov		rbp, rsp

main:
	mov		qword[rbp - 8], rdi
	mov		qword[rbp - 16], 10
	mov		rsi, rdi
	call _ft_strlen
	mov		r11, rax
	mov		rdx, rax
	mov		rax, 0x2000004
	mov		rdi, 1
	syscall
	mov		rax, 0x2000004
	lea		rsi, [rbp - 16]
	mov		rdx, 1
	add		r11, 1
	syscall

fail:
	cmp		rax, r11
	je done

failure:
	mov		rax, 4

done:
	pop rbp
	ret

