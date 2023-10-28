#include <stdio.h>

// Declares but doesn't define swap function
// Compiler knows it exists, definition below main
void swap(int a, int b);

int main() {
    int x = 16;
    int y = 23;
    printf("Originally --  x: %d, y: %d\n", x, y);

    // Try swapping x and y
    swap(x, y);
    printf("After swap -- x: %d, y: %d\n", x, y);

    return 0;
}

// Define a function 'swap1' with two parameters: integers x and y
void swap(int a, int b) {
    int tmp = a; // Assign value a to tmp
    a = b; // Assign value of b to a
    b = tmp; // Assign value of tmp to b
}
