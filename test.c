#include <strings.h>
#include <string.h>
#include <unistd.h>
#include <stdio.h>
#include <time.h>
#include <ctype.h>
#include <stdlib.h>
#include <fcntl.h>

void ft_bzero(void *lol, size_t n)
{
	while (n)
	{
		((char *)lol)[n - 1] = 0;
		n--;
	}
}

int64_t		maxofthree(int64_t a, int64_t b, int64_t c);
int64_t		nick();
int64_t		ft_is_alpha(int c);
int64_t		ft_isalpha(int c);
int64_t		ft_isdigit(int c);
int64_t		ft_isalnum(int c);
int64_t		ft_isascii(int c);
int64_t		ft_isprint(int c);
int		ft_toupper(int c);
int		ft_tolower(int c);
int		ft_strlen(char *s);
char	*ft_strcat(char *s1, char *s2);
int		ft_puts(char *s);
void *ft_memset(void *b, int c, size_t len);
void *ft_memcpy(void *b, void *c, size_t len);
char *ft_strdup(char *s1);
int		ft_cat(int fd);


int main()
{
	int fd = open("proute", O_RDONLY);
	ft_cat(fd);
	close(fd);
	printf("\n||\n");
	ft_cat(565465);
	printf("\n||\n");
	fd = open("lol.s", O_RDONLY);
	ft_cat(fd);
}
/*
int main()
{
	clock_t start_t, end_t;
	double total_t;

	start_t = clock();
	for (int i = 0; i < 200; i++)
	{
		printf("[%d]: ", i);
		if (ft_toupper(i) == toupper(i))
			printf("\033[32;1m OK \033[0m\n");
		else
			printf("\033[35;1m KO \033[0m\n");
		printf("new [%d]\n", i);
	}
	
	printf("to upper a : %c\n", ft_toupper('a'));

	end_t = clock();

	total_t = (double)(end_t - start_t) / CLOCKS_PER_SEC;
	printf("Total time taken by CPU: %f\n", total_t  );
	return 0;
}
*/
