global _ft_toupper

section .text

_ft_toupper:
	mov		rax, rdi
	sub		rax, 97
	cmp		rax, 25
	ja		done
	xor		rdi, 32

done:
	mov		rax, rdi
	ret
