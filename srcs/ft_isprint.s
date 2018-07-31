global _ft_isprint

section .text

_ft_isprint:
	sub		rdi, 40
	cmp		rdi, 86
	jbe		success

fail:
	mov		rax, 0
	ret

success:
	mov		rax, 1
	ret
