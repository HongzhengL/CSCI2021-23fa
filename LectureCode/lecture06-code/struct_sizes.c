#include <stdio.h>

typedef struct {
    int height;
    int age;
} student_a_t;

typedef struct {
    char initial;
    double height;
} student_b_t;

typedef struct {
    double height;
    int age;
} student_c_t;

typedef struct {
    char initial;
    double height;
    short grade;
} student_d_t;

int main() {
    printf("sizeof(student_a_t): %zu\n", sizeof(student_a_t));
    printf("sizeof(student_b_t): %zu\n", sizeof(student_b_t));
    printf("sizeof(student_c_t): %zu\n", sizeof(student_c_t));
    printf("sizeof(student_d_t): %zu\n", sizeof(student_d_t));
    return 0;
}
