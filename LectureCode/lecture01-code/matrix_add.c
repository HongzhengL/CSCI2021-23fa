// Include libraries, defined in header (".h") files
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// Define constant values for use in the code below
#define MATRIX_SIZE 10000

typedef struct timespec timespec_t;

// Compute the difference between two timestamp values
double get_elapsed_time_sec(const timespec_t *start, const timespec_t *end) {
    long start_nanos = (long)1e9 * start->tv_sec + start->tv_nsec;
    long end_nanos = (long)1e9 * end->tv_sec + end->tv_nsec;
    return (double)(end_nanos - start_nanos) / 1e9;
}

// Matrix operation A = A + B
// You can think of int **A as similar to int[][] A in Java
void addMatrices1(int** A, int** B, int n) {
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            A[i][j] = A[i][j] + B[i][j];
        }
    }
}

// Matrix operation A = A + B
// You can think of int **A as similar to int[][] A in Java
void addMatrices2(int **A, int **B, int n) {
    for (int j = 0; j < n; j++) {
        for (int i = 0; i < n; i++) {
            A[i][j] = A[i][j] + B[i][j];
        }
    }
}

// Fill an n by n matrix with random integers
int** generateMatrix(int n) {
    // 'malloc' is how we create space for new data structures in C
    // It is related to the "new" keyword in Java
    // You don't need to understand it for now, we'll discuss it soon!
    int **M = malloc(n * sizeof(int*));
    if (M == NULL) {
        fprintf(stderr, "Failed to allocate space for matrix\n");
        exit(EXIT_FAILURE);
    }

    for (int i = 0; i < n; i++) {
        M[i] = malloc(n * sizeof(int));
        if (M[i] == NULL) {
            fprintf(stderr, "Failed to allocate space for matrix row %d\n", i);
            exit(EXIT_FAILURE);
        }

        for (int j = 0; j < n; j++) {
            M[i][j] = rand();
        }
    }
    return M;
}

// In C, whenever you use malloc to allocate memory, you need to use 'free'
// to clean up once you are done using that memory
void freeMatrix(int **M, int n) {
    for (int i = 0; i < n; i++) {
        free(M[i]);
    }
    free(M);
}

// C programs always start execution at 'main'
int main() {
    timespec_t start;
    timespec_t end;

    printf("Generating Matrices...\n");
    int **A = generateMatrix(MATRIX_SIZE);
    int **B = generateMatrix(MATRIX_SIZE);

    printf("Adding matrices, version 1\n");
    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &start);
    addMatrices1(A, B, MATRIX_SIZE);
    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &end);
    printf("addMatrices1 Time: %f  Seconds\n", get_elapsed_time_sec(&start, &end));

    printf("Adding matrices, version 2\n");
    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &start);
    addMatrices2(A, B, MATRIX_SIZE);
    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &end);
    printf("addMatrices2 Time: %f Seconds\n", get_elapsed_time_sec(&start, &end));

    freeMatrix(A, MATRIX_SIZE);
    freeMatrix(B, MATRIX_SIZE);
    return EXIT_SUCCESS;
}
