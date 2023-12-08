// Header for search algorithm problem

#ifndef SEARCH_H
#define SEARCH_H

typedef struct tree_node {
  int data;
  struct tree_node *left;
  struct tree_node *right;
} tree_node_t;

typedef struct {
  tree_node_t *root;
  int size;
} bst_t;

typedef struct list_node {
    int data;
    struct list_node *next;
} list_node_t;

typedef struct {
    list_node_t *head;
    int size;
} list_t;


int linear_array_search(int *array, int len, int query);

int linkedlist_search(list_t *list, int len, int query);

int binary_array_search(int *array, int len, int query);

int binary_tree_search(bst_t *tree, int ignore, int query);

#endif // SEARCH_H
