global _ft_strcat

extern _ft_strlen

section .text

_ft_strcat:

get_len:
	mov		r11, rdi
	call _ft_strlen
	add		rdi, rax

testloop:
	cmp		byte[rsi], 0
	je		done

copy:
	mov		al, byte[rsi]
	mov		byte[rdi], al
	add		rdi, 1
	add		rsi, 1
	jmp		testloop

done:
	add		byte[rdi], 0
	mov		rax, r11
	ret
