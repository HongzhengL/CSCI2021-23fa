#include <stdio.h>

int main() {
    float x = (1 + 1e30) + -1e30;
    float y = 1 + (1e30 + -1e30);

    if (x == y) {
        printf("x == y\n");
    } else {
        printf("x != y\n");
    }

    printf("x = %f\n", x);
    printf("y = %f\n", y);
    return 0;
}
