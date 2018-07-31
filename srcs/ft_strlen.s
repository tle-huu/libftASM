global _ft_strlen

section .text

_ft_strlen:

init:
	mov		rcx, -1
	mov		rax, 0

len:
	repne scasb
	not		rcx
	dec		rcx
	mov		rax, rcx

done:
	ret
