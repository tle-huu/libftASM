global _ft_bzero

section .text
_ft_bzero:
	push	rbp
	sub		rbp, 16
	mov		rbp, rsp

init:
	mov		qword[rbp - 8], rdi
	mov		qword[rbp - 16], rsi


testloop:
	cmp		qword[rbp - 16], 0
	je		done

fill:
	mov		rax, qword[rbp - 8]
	mov		rcx, qword[rbp - 16]
	sub		rcx, 1
	mov		byte[rax + rcx], 0
	mov		qword[rbp - 16], rcx
	jmp		testloop

done:
	pop		rbp
	ret
