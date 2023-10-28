#include <stdbool.h>
#include <stdio.h>

int main() {
    printf("Size of int*: %zu\n", sizeof(int*));
    printf("Size of unsigned*: %zu\n", sizeof(unsigned*));

    printf("Size of long*: %zu\n", sizeof(long*));
    printf("Size of unsigned long*: %zu\n", sizeof(unsigned long*));

    printf("Size of long long*: %zu\n", sizeof(long long*));
    printf("Size of unsigned long long*: %zu\n", sizeof(unsigned long long*));

    printf("Size of float*: %zu\n", sizeof(float*));
    printf("Size of double*: %zu\n", sizeof(double*));

    printf("Size of short*: %zu\n", sizeof(short*));
    printf("Size of unsigned short*: %zu\n", sizeof(unsigned short*));

    printf("Size of char*: %zu\n", sizeof(char*));
    printf("Size of bool*: %zu\n", sizeof(bool*));

    return 0;
}
