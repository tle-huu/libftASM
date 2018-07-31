global _ft_isascii

section .text

_ft_isascii:
	cmp		rdi, 127
	jbe		success

fail:
	mov		rax, 0
	ret

success:
	mov		rax, 1
	ret
