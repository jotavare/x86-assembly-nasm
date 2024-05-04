#include <stdio.h>

extern int sum(int, int); // accessible outside the file

int sum(int a, int b)
{
    printf("HERE!\n");
    return (a, b);
}