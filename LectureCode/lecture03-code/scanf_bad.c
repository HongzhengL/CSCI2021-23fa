#include <stdio.h>

int main() {
    int a;
    int b;
    int *p = &a;

    printf("Type in a number > ");
    scanf("%d", p);
    printf("Type in a second number > ");

    // Uses an integer when we should use a pointer
    // You will likely see a "Segmentation Fault" message as a result
    scanf("%d", b);
    printf("Their sum is: %d\n", a + b);

    return 0;
}
