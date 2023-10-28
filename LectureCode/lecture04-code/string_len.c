#include <stdio.h>

// Computes the length of a C string, not counting the null terminator
// This version uses array syntax
int string_length(char *s) {
    int len = 0;
    while (s[len] != '\0') {
        len++;
    }

    return len;
}

// Computes the length of a C string, not counting the null terminator
// This is the overly fancy version
int fancy_string_length(char *s) {
    int len = 0;
    while (*s++ != 0)
        len++;

    return len;
}

int main() {
    char *str = "CSCI 2021";
    printf("Length of \"CSCI 2021\": %d\n", string_length(str));
    printf("Length of \"CSCI 2021\": %d\n", fancy_string_length(str));
    return 0;
}
