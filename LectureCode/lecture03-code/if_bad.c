#include <stdio.h>

int main() {
    int x = 0;

    // This is an assignment, not a comparison. Don't do this!
    // gcc will catch this problem with the -Wall option
    if (x = 5) {
        printf("x is 5\n");
    } else {
        printf("x is not 5\n");
    }

    return 0;
}
