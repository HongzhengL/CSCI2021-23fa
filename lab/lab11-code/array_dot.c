#include <immintrin.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define MM256_ALIGNMENT 32
#define ARRAY_LEN 300000005

typedef struct timespec timespec_t;

double get_elapsed_time_sec(const timespec_t *start, const timespec_t *end) {
    long start_nanos = (long)1e9 * start->tv_sec + start->tv_nsec;
    long end_nanos = (long)1e9 * end->tv_sec + end->tv_nsec;
    return (double)(end_nanos - start_nanos) / 1e9;
}

int *alloc_aligned_int_array(size_t num_elems) {
    int *p;
    if (posix_memalign((void **) &p, MM256_ALIGNMENT, num_elems * sizeof(int)) != 0) {
        return NULL;
    }
    return p;
}

// Computes and returns dot product of two integer sequences, 'a' and 'b'
int array_dot(const int *a, const int *b, int len) {
    // Could just use regular malloc() here, no alignment guarantee needed
    // But this demonstrates how to use alloc_aligned_int_array()
    // Which you will need to use for 'array_dot_vec'
    int *temp = alloc_aligned_int_array(len);
    for (int i = 0; i < len; i++) {
        temp[i] = a[i] * b[i];
    }

    int sum = 0;
    for (int i = 0; i < len; i++) {
        sum += temp[i];
    }
    free(temp);
    return sum;
}

// Computes and returns dot product of two integer sequences, 'a' and 'b'
// Uses vector instructions to perform work in parallel
int array_dot_vec(const int *a, const int *b, int len) {
    // TODO Implement a vectorized dot product function
    return 2;
}

void fill_array(int *v, int len) {
    for (int i = 0; i < len; i++) {
        v[i] = rand();
    }
}

int array_equals(const int *a, const int *b, int len) {
    for (int i = 0; i < len; i++) {
        if (a[i] != b[i]) {
            return 0;
        }
    }
    return 1;
}

int main() {
    printf("Setting up arrays...\n");
    srand(2021);
    timespec_t start;
    timespec_t end;
    int *a = alloc_aligned_int_array(ARRAY_LEN);
    fill_array(a, ARRAY_LEN);
    int *b = alloc_aligned_int_array(ARRAY_LEN);
    fill_array(b, ARRAY_LEN);

    printf("Starting array dot product...\n");
    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &start);
    int x = array_dot(a, b, ARRAY_LEN);
    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &end);
    printf("array_dot: %.3f sec.\n", get_elapsed_time_sec(&start, &end));

    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &start);
    int y = array_dot_vec(a, b, ARRAY_LEN);
    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &end);
    printf("array_dot_vec: %.3f sec.\n", get_elapsed_time_sec(&start, &end));
    if (x != y) {
        printf("Array dot functions produced inconsistent results\n");
    }

    free(a);
    free(b);
    return 0;
}
