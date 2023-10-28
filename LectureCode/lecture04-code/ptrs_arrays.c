#include <stdio.h>

// Print address and first element using an array parameter
void print0_arr(int a[]) {
    printf("%ld: %d\n", (long)a, a[0]);
}

// Print address and first element using a pointer parameter
void print0_ptr(int *p) {
    printf("%ld: %d\n", (long)p, *p);
}

int main() {
    int *p = NULL; // Initial pointer to nowhere
    printf("%ld: %ld\n", (long)(&p), (long)p); // Print address and value of p

    int x = 21;
    p = &x;
    print0_arr(p); // Pass a pointer to a function expecting an array

    int a[] = {5, 10, 15};
    print0_ptr(a); // Pass an array to a function expecting a pointer
    //a = p;
    p = a; // Set p to starting address of a
    print0_ptr(p);

    return 0;
}
