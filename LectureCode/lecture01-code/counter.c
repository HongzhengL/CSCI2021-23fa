// Include libraries, defined in header (".h") files
#include <stdio.h>

// C programs always start execution at 'main'
int main() {
    int n = 0;
    int i = 0;

    while (n < 10) {
        if (i % 1000000000 == 0) {
            // i is a multiple of one billion
            printf("i: %d\n", i); // printf uses format strings, "%d" means display i as a number
            n++;
        }
        i++;
    }

    return 0;
}
