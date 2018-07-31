extern _read
extern _ft_puts

global _ft_cat

section .text

_ft_cat:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 4112

ft_read:
	mov		qword[rbp - 8], rdi
	lea		rsi, [rbp - 4112]
	mov		rdx, 4095
	call _read
	cmp		rax, 0
	jle		exit


ft_write:
	mov		byte[rbp + rax - 4112], 0
	lea		rdi, [rbp - 4112]
	call _ft_puts
	cmp		rax, 4
	je		exit
	jmp		ft_read

exit:
	leave
	ret


