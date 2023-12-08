#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#include "ds_search.h"

#define ARRAY_LEN 10000000

typedef struct timespec timespec_t;

double get_elapsed_sec(const timespec_t *start, const timespec_t *end) {
    long start_nanos = (long)1e9 * start->tv_sec + start->tv_nsec;
    long end_nanos = (long)1e9 * end->tv_sec + end->tv_nsec;
    return (double)(end_nanos - start_nanos) / 1e9;
}

int main(int argc, char *argv[]){
    srand(2021);
    int *a = malloc(ARRAY_LEN * sizeof(int));
    for (int i = 0; i < ARRAY_LEN; i++) {
        a[i] = rand();
    }
    timespec_t start;
    timespec_t end;

    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &start);
    linear_array_search(a, ARRAY_LEN, 2021);
    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &end);
    double linear_search_time = get_elapsed_sec(&start, &end);

    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &start);
    binary_array_search(a, ARRAY_LEN, 2021);
    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &end);
    double binary_search_time = get_elapsed_sec(&start, &end);

    printf("Linear search required %.3f sec.\n", linear_search_time);
    printf("Binary search required %.3f sec.\n", binary_search_time);

    printf("Program pid is %d\n", getpid());
    printf("Press any key to continue\n");
    getchar();

    free(a);
    return 0;
}
