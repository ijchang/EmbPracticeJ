#include "stdint.h" 
#include "stdio.h"
/*add main.c*/

int main(void)
{
    uint8_t i,k;
    int8_t j;
    

    //j = -30;
    //i = (uint8_t)j;
    i = 129;
    j = -i;
    k = j;
    printf("uint8_t i = %hhx\n", i);
    printf("int8_t j = %hhx\n", j);
    printf("uint8_t k = %hhx\n", k);
    return 1;
}

