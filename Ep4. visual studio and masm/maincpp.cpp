#include <stdio.h>
extern "C" int ft_sum(int a, int b);

int main()
{
	int sum = ft_sum(3, 4);
	printf("hello variable: %d", sum);
	return 0;
}