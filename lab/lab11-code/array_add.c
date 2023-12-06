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

// Adds together each element from arrays 'a' and 'b' and stores result in 'c'
void array_add(const int *a, const int *b, int *c, int len) {
    for (int i = 0; i < len; i++) {
        c[i] = a[i] + b[i];
    }
}

// Adds together each element from arrays 'a' and 'b' and stores result in 'c'
// Uses vector intrinsics to perform work in parallel
void array_add_vec(const int *a, const int *b, int *c, int len) {
    int i = 0;
    for (; i <= len - 8; i += 8) {
        __m256i a_vec = _mm256_load_si256((__m256i *) (a + i));
        __m256i b_vec = _mm256_load_si256((__m256i *) (b + i));

        __m256i c_vec = _mm256_add_epi32(a_vec, b_vec);
        _mm256_store_si256((__m256i *) (c + i), c_vec);
    }
    for (; i < len; i++) {
        c[i] = a[i] + b[i];
    }
}

void fill_array(int *a, int len) {
    for (int i = 0; i < len; i++) {
        a[i] = rand();
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

int *alloc_aligned_int_array(size_t num_elems) {
    int *p;
    if (posix_memalign((void **) &p, MM256_ALIGNMENT, num_elems * sizeof(int)) != 0) {
        printf("Error: posix_memalign failed\n");
        return NULL;
    }
    return p;
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

    int *c = alloc_aligned_int_array(ARRAY_LEN);
    int *d = alloc_aligned_int_array(ARRAY_LEN);

    printf("Starting array addition...\n");
    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &start);
    array_add(a, b, c, ARRAY_LEN);
    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &end);
    printf("array_add: %.3f sec.\n", get_elapsed_time_sec(&start, &end));

    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &start);
    array_add_vec(a, b, d, ARRAY_LEN);
    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &end);
    printf("array_add_vec: %.3f sec.\n", get_elapsed_time_sec(&start, &end));

    if (!array_equals(c, d, ARRAY_LEN)) {
        printf("Array add functions produced inconsistent results\n");
    }

    free(a);
    free(b);
    free(c);
    free(d);
    return 0;
}
