#include <stdio.h>
#include <string.h> // For strlen() function

void string_copy_array(char *dst, char *src) {
    int i = 0;
    while (src[i] != '\0') {
        dst[i] = src[i];
        i++;
    }
    dst[i] = '\0';
}


void string_copy_ptr(char *dst, char *src) {
    while (*src != '\0') {
        *dst = *src;
        src++;
        dst++;
    }
    *dst = '\0';
}

int main() {
    // Declare using a string literal
    char *original = "CSCI 2021";
    // Declare using an array - make sure we have enough space!
    // The +1 accounts for the null terminator
    char copy[strlen(original) + 1];

    string_copy_array(copy, original);
    printf("Original: %s\n", original);
    printf("Copy: %s\n", copy);

    char *original_2 = "Machine Architecture";
    char copy_2[strlen(original_2) + 1];
    string_copy_ptr(copy_2, original_2);
    printf("Original: %s\n", original_2);
    printf("Copy: %s\n", copy_2);

    return 0;
}
