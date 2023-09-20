#include <stdio.h>

int add_array_p(int *a, int len) {
    int sum = 0;
    for (int i = 0; i < len; ++i) {
        sum += *a;
        a++;
    }
    return sum;
}

int add_array(int a[], int len) {
    int sum = 0;
    for (int i = 0; i < len; ++i) {
        sum += a[i];
    }
    return sum;
}

int main() {
    int a[] = {4, 8, 15, 16, 23, 42};
    int *b = a;
    printf("%zu\n", sizeof(b));
    /* Will get error and warning */
    //int *c = {4, 8, 15, 16, 23, 42};
    //a++;
    b++;
    int d = add_array_p(a, (int)(sizeof(a)/sizeof(int)));
    int f = add_array(a, (int)(sizeof(a)/sizeof(int)));
    printf("%d\n", d);
    return 0;
}
