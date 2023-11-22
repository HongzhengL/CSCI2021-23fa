// reversal_benchmark.c: Tests two versions of an array reversal
// function. Add timing information to determine which is more efficient.

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

typedef struct timespec timespec_t;

double get_elapsed_time_sec(const timespec_t *start, const timespec_t *end) {
    long start_nanos = (long)1e9 * start->tv_sec + start->tv_nsec;
    long end_nanos = (long)1e9 * end->tv_sec + end->tv_nsec;
    return (double)(end_nanos - start_nanos) / 1e9;
}

void reverse_arr1(int *arr, long size) {
    int *tmp = malloc(sizeof(int) * size);
    for (long i = 0; i < size; i++) {
        tmp[i] = arr[size-i-1];
    }
    for (long i = 0; i < size; i++) {
        arr[i] = tmp[i];
    }
    free(tmp);
}

void reverse_arr2(int *arr, long size) {
    for (long i = 0; i < size/2; i++) {
        int tmp = arr[i];
        arr[i] = arr[size-i-1];
        arr[size-i-1] = tmp;
    }
}


int main(int argc, char *argv[]) {
    if (argc < 4) {
        printf("usage: %s <min_pow2> <max_pow2> <repeats>\n", argv[0]);
        return 1;
    }
    int minsize = atoi(argv[1]);
    int maxsize = atoi(argv[2]);
    int repeats = atoi(argv[3]);

    printf("size \t rev1 \t\t rev2\n");
    for (long s = minsize; s <= maxsize; s++) {
        long size = 1 << s;

        int *arr1 = malloc(sizeof(int) * size);
        int *arr2 = malloc(sizeof(int) * size);
        for (long i = 0; i < size; i++) {
            arr1[i] = i;
            arr2[i] = i;
        }

        double rev1_time;
        double rev2_time;

        for (int i = 0; i < repeats; i++) { // repeatedly run function
            reverse_arr1(arr1,size);
        }


        for (int i = 0; i < repeats; i++) { // repeatedly run function
            reverse_arr2(arr2,size);
        }

        printf("%ld \t %.4e \t %.4e\n", size, rev1_time, rev2_time);

        // check array contents are correct
        if (repeats % 2 == 0) {       // even # repeats: arrays ordered
            for (long i = 0; i < size; i++) {
                assert(arr1[i] == i);
                assert(arr2[i] == i);
            }
        }
        else {                       // odd # repeats: arrays reversed
            for (long i = 0; i < size; i++) {
                assert(arr1[i] == size-i-1);
                assert(arr2[i] == size-i-1);
            }
        }

        free(arr1);
        free(arr2);
    }
    return 0;
}
