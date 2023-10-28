#include <stdio.h>

int main() {
    FILE *fh = fopen("my_integer.bin", "w");
    if (fh == NULL) {
        printf("Failed to open file\n");
        return 1;
    }

    int my_integer = 42;
    fwrite(&my_integer, sizeof(int), 1, fh);
    fclose(fh);
    return 0;
}
