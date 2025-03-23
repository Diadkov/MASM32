#include <stdio.h> // printf

extern "C" int iMulti(int a, int b, int* ip, int* idiv, int* irem);

int main()
{
    int a = 2;
    int b = 6;
    int prod = 0, rem = 0, div = 0;
    int res =  iMulti(a, b, &prod, &div, &rem);
    
    if (res)
    {
        printf("%d * %d = %d \ndiv: %d\nrem: %d \n", a, b, prod, div, rem);
    }


    return 0;
}