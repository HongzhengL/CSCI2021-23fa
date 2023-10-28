#include <stdio.h>

// Declares but doesn't define swap function
// Compiler knows it exists, definition below main
void swap(int *a, int *b);

int main() {
    int x = 16;
    int y = 23;
    printf("Originally --  x: %d, y: %d\n", x, y);

    // Try swapping x and y
    // Note: we pass the addresses of x and y, not the values themselves
    swap(&x, &y);
    printf("After swap -- x: %d, y: %d\n", x, y);

    return 0;
}

// Define a function 'swap' with two parameters: integer _pointers_ x and y
void swap(int *a, int *b) {
    int tmp = *a; // Go to address a, copy value into tmp
    *a = *b; // Copy value at address in a to address in b
    *b = tmp; // Store value of tmp at address in b
}
