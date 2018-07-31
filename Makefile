
NAME = libfts.a

CC = nasm
CFLAGS += -f macho64

SRCS += srcs/ft_bzero.s
SRCS += srcs/ft_isalnum.s
SRCS += srcs/ft_isalpha.s
SRCS += srcs/ft_isascii.s
SRCS += srcs/ft_isdigit.s
SRCS += srcs/ft_isprint.s
SRCS += srcs/ft_strlen.s
SRCS += srcs/ft_memset.s
SRCS += srcs/ft_memcpy.s
SRCS += srcs/ft_strdup.s
SRCS += srcs/ft_strcat.s
SRCS += srcs/ft_puts.s
SRCS += srcs/ft_tolower.s
SRCS += srcs/ft_toupper.s
SRCS += srcs/ft_cat.s

OBJ = $(SRCS:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
	@printf "\r\033[32m>>>   Building $(NAME)...   <<<\033[0m\n"
	@ar -rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@printf "\r\033[33m>>>   $(NAME) build !   <<<\033[0m"

%.o : %.s
	$(CC) $(CFLAGS) $<

clean:
	@/bin/rm -f $(OBJ)
	@printf "\033[1;33m[LIBFT] \033[1;31mCleaned .o!\033[0m\n"

fclean: clean
	@rm -f $(NAME)
	@printf "\033[1;33m[LIBFT] \033[1;31mCleaned all!\033[0m\n"

re: fclean all

.PHONY: all clean fclean re
