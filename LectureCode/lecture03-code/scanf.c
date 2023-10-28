#include <stdio.h>

int main() {
    int a;
    int b;
    int *p = &a;

    printf("Type in a number > ");
    scanf("%d", p);
    printf("Type in a second number > ");
    scanf("%d", &b);
    printf("Their sum is: %d\n", a + b);

    return 0;
}
