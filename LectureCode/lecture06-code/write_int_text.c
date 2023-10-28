#include <stdio.h>

int main() {
    FILE *fh = fopen("my_integer.txt", "w");
    if (fh == NULL) {
        printf("Failed to open file\n");
        return 1;
    }

    int my_integer = 42;
    fprintf(fh, "%d\n", my_integer);
    fclose(fh);
    return 0;
}
