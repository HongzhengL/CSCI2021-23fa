#include <stdlib.h> // For malloc() and free()
#include <stdio.h>

int main() {
    int n;
    printf("How many numbers do you want to type in? > ");
    scanf("%d", &n);

    int *numbers = malloc(n * sizeof(int));
    for (int i = 0; i < n; i++) {
        printf("Number > ");
        scanf("%d", &numbers[i]);
    }

    printf("The numbers you typed in are:\n");
    for (int i = 0; i < n; i++) {
        printf("%d\n", numbers[i]);
    }

    free(numbers);
    return 0;
}
