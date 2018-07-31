extern _ft_isdigit
extern _ft_isalpha

global  _ft_isalnum
section .text

_ft_isalnum:
	mov		rax, rdi
	call	_ft_isdigit
	cmp		rax, 0
	jne		done
	call	_ft_isalpha
	cmp		rax, 0
	jne		done

done:
	ret
