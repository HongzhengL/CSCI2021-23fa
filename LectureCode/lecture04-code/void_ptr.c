#include <stdint.h>
#include <stdio.h>

void print_bytes(void *data, size_t len) {
    uint8_t *b = (uint8_t *)data;
    for (size_t i = 0; i < len; i++) {
        printf("%d\n", *b);
        b++;
    }
    return;
}

int main() {
    int x = 13; // Int type
    double d = 2.1828; // Double type
    void *p; // Pointer to anything

    p = &x;
    // The int * cast means we dereference and interpret the bits as an int
    printf("x = %d\n", *((int *)p));

    p = &d;
    // The double * cast means we dereference and interpret the bits as a double
    printf("d = %f\n", *((double *)p));
    // Now we cast and interpret those same bits as an int
    printf("d = %d\n", *((int *)p));

    printf("start x\n");
    print_bytes(&x, sizeof(x));
    printf("end x\n");

    printf("start d\n");
    print_bytes(&d, sizeof(d));
    printf("end d\n");

    return 0;
}
