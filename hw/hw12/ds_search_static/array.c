#include <stdlib.h>
#include "ds_search.h"

// Search an array linearly, does not need to be sorted
int linear_array_search(int *array, int len, int query) {
    for (int i = 0; i < len; i++) {
        if (array[i] == query ) {
            return 1;
        }
    }
    return 0;
}

// Search sorted array using binary search
int binary_array_search(int *array, int len, int query) {
    int left = 0;
    int right = len - 1;
    int mid;
    while (left <= right) {
        mid = (left + right) / 2;
        if (query == array[mid]) {
            return 1;
        } else if (query < array[mid]) {
            right = mid - 1;
        } else {
            left = mid + 1;
        }
    }
    return 0;
}
