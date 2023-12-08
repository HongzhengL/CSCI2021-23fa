#include <stdlib.h>
#include "ds_search.h"

// Search a linked list linearly, does not need to be sorted
int linkedlist_search(list_t *list, int len, int query) {
    int index = 0;
    for (list_node_t *n = list->head; n != NULL; n = n->next) {
        if (n->data == query) {
            return index;
        }
        index++;
    }

    return 0;
}
