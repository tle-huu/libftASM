section .text

global _ft_isdigit

_ft_isdigit:
	cmp		rdi, 48
	jb		not_digit
	cmp		rdi, 57
	ja		not_digit
	mov		rax, 1
	jmp done

not_digit:
	mov		rax, 0
	jmp		done

done:
	ret

