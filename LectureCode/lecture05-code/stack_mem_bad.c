#include <stdio.h>

int *first_multiples(int n) {
    int multiples[5] = {n * 1, n * 2, n* 3, n* 4, n* 5};
    // BAD: Don't return pointers to the stack
    return multiples;
}

int main() {
    int x = 4;
    printf("Original number: %d\n", x);

    int *multiples = first_multiples(x);
    for (int i = 0; i < 5; i++) {
        printf("Multiple %d: %d\n", i, multiples[i]);
    }

    return 0;
}
