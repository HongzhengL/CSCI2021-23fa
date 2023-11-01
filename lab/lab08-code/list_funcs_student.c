#include <stdlib.h>
#include "linked_list.h"

int list_find_student(list_t *list, int value) {
    // TODO Implement a better version of list search here
    node_t *current = list->head;
    int cnt = 0;
    while (current != NULL) {
        if (current->value == value) {
            return cnt;
        }
        cnt++;
        current = current->next;
    }
    return -1;
}
