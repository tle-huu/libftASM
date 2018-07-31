global _ft_isalpha

section .text
_ft_isalpha:
	cmp		rdi, 65
	jb		not_alpha
	cmp		rdi, 90
	jbe		alpha

is_low:
	cmp		rdi, 97
	jb		not_alpha
	cmp		rdi, 122
	jbe		alpha

not_alpha:
	mov		rax, 0
	jmp		done

alpha:
	mov		rax, 1

done:
	ret
