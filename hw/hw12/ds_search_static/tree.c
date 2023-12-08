#include <stdlib.h>
#include "ds_search.h"

// Search a binary search tree
int binary_tree_search(bst_t *tree, int ignore, int query) {
    tree_node_t *node = tree->root;
    while (node != NULL) {
        if (query < node->data) {
            node = node->left;
        } else if (query > node->data) {
            node = node->right;
        } else {
            return 1;
        }
    }

    return 0;
}
