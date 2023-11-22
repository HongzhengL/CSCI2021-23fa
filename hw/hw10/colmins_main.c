// Comparison of col_minX implementations

#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include "matvec.h"

typedef struct timespec timespec_t;

double get_elapsed_time_sec(const timespec_t *start, const timespec_t *end) {
    long start_nanos = (long)1e9 * start->tv_sec + start->tv_nsec;
    long end_nanos = (long)1e9 * end->tv_sec + end->tv_nsec;
    return (double)(end_nanos - start_nanos) /1e9;
}

void check_answer(vector_t *expect, vector_t *actual, char *id);

typedef struct {
    char *name;
    int (*min_func)(matrix_t *, vector_t *);
} minfunc_t;

int main(int argc, char *argv[]) {
    if (argc < 3) {
        printf("usage: %s <rows> <cols>\n",argv[0]);
        return 1;
    }
    int rows = atoi(argv[1]);
    int cols = atoi(argv[2]);

    minfunc_t funcs[] = {
        {"col_mins1", col_mins1},
        {"col_mins2", col_mins2},
        {"col_mins3", col_mins3},
        {"col_mins4", col_mins4},
        {"col_mins5", col_mins5},
        {NULL, NULL}
    };

    // Allocate the matrix and fill it in with 1,2,3,4...
    matrix_t mat;
    int ret = matrix_init(&mat, rows, cols);
    if (ret != 0) {
        return ret;
    }
    matrix_fill_sequential(&mat);

    // Variables for timing
    timespec_t start;
    timespec_t end;
    double cpu_time;

    // Output vectors
    vector_t mins_a;
    vector_t mins_b;

    for (int i = 0; funcs[i].name != NULL; i++) {
        minfunc_t func = funcs[i];
        vector_init(&mins_b, mat.cols);

        clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &start);
        ret = func.min_func(&mat, &mins_b);
        clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &end);

        cpu_time = get_elapsed_time_sec(&start, &end);
        printf("%14s CPU usage: %.4e sec\n", func.name, cpu_time);
        if (i == 0) {
            mins_a = mins_b;          // save result of first to compare to others
        }
        else {
            check_answer(&mins_a, &mins_b, func.name);
            vector_free_data(&mins_b); // free data
        }
    }

    matrix_free_data(&mat);       // clean up data
    vector_free_data(&mins_a);
    return 0;
}

void check_answer(vector_t *expect, vector_t *actual, char *id) {
    // Check answer
    for (int i = 0; i < expect->len; i++) {
        int e = VGET(expect, i);
        int a = VGET(actual, i);
        if (e != a) {
            printf("ERROR: %s produced incorrect results\n", id);
            printf("Element %d: expect %d  actual %d\n", i, e, a);
            break;
        }
    }
}
