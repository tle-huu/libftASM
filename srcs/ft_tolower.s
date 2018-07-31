global _ft_tolower

section .text

_ft_tolower:
	mov		rax, rdi
	sub		rax, 65
	cmp		rax, 25
	ja		done
	or		rdi, 32

done:
	mov		rax, rdi
	ret
