#include <stdio.h>

/*
 * Check if a number is even (divisible by 2)
 * You may use the following operations: '|', '&', '^', '~', '!'
 * Note the absence of math operators like '*', '/', '+', '-', and '%'
 * Return 1 if the input number is even and 0 otherwise
 */
int is_even(int n) {
    return 0;
}

int test_values[25] = {
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    15,
    16,
    23,
    42,
    108,
    112,
    128,
    513,
    1024,
    1000000,
    0xAFFFFFFF,
    0xEFFFFFFF,
    0xFFFFFFFE,
    0xFFFFFFFF
};

int expected_results[25] = {
    1,
    0,
    1,
    0,
    1,
    0,
    1,
    0,
    1,
    0,
    1,
    0,
    1,
    0,
    1,
    1,
    1,
    1,
    0,
    1,
    1,
    0,
    0,
    1,
    0
};

int main() {
    // The main function tests your 'is_even' function on a few different inputs
    // It will print out both the expected result and the result your code gives
    printf("n (Decimal) \t   n (Hex)\tExpected Result Actual Result\n");

    for (int i = 0; i < 25; i++) {
        printf("%11d \t %8x \t\t %d \t     %d\n", test_values[i], test_values[i],
                expected_results[i], is_even(test_values[i]));
    }

    return 0;
}
