#include <stdio.h>

int main() {
    int n = 0;
    int i = 0;

    while (n < 5) {
        if (i % 1000000000 == 0) {
            // i is a multiple of 1 billion
            printf("Multiple %d: %d\n", n, i);
            n++;
        }

        // Try to detect when an overflow is about to occur
        if (i > 0 && (i+1) < 0) {
            printf("Sign Change\n");
            printf("i: %d\n", i);
            printf("i + 1: %d\n", i + 1);
        }

        i++;
    }

    return 0;
}
