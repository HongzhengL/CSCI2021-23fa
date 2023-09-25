#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "dictionary.h"

dictionary_t *create_dictionary() {
    dictionary_t *dict = malloc(sizeof(dictionary_t));
    if (dict == NULL) {
        return NULL;
    }
    dict->root = NULL;
    dict->size = 0;
    return dict;
}

node_t *node_insert(node_t *my_node, const char *word) {
    if (strcmp(my_node->word, word) > 0) {
        if (my_node->left == NULL) {
            my_node->left = malloc(sizeof(node_t));
            strcpy(my_node->left->word, word);
            my_node->left->left = my_node->left->right = NULL;
        } else {
            my_node->left = node_insert(my_node->left, word);
        }
    } else {
        if (my_node->right == NULL) {
            my_node->right = malloc(sizeof(node_t));
            strcpy(my_node->right->word, word);
            my_node->right->left = my_node->right->right = NULL;
        } else {
            my_node->right = node_insert(my_node->right, word);
        }
    }
    return my_node;
}

int dict_insert(dictionary_t *dict, const char *word) {
    if (dict == NULL || dict_find(dict, word)) {
        return -1;
    }
    if (dict->root == NULL) {
        dict->root = malloc(sizeof(node_t));
        strcpy(dict->root->word, word);
        dict->size++;
        dict->root->left = dict->root->right = NULL;
    } else {
        dict->root = node_insert(dict->root, word);
        dict->size++;
    }
    return 0;
}

int node_find(const node_t *my_node, const char *query) {
    if (my_node == NULL) {
        return 0;
    } else if (strcmp(my_node->word, query) == 0) {
        return 1;
    } else if (strcmp(my_node->word, query) > 0) {
        return node_find(my_node->left, query);
    } else if (strcmp(my_node->word, query) < 0) {
        return node_find(my_node->right, query);
    }
    return 0;
}

int dict_find(const dictionary_t *dict, const char *query) {
    if (dict == NULL || dict->root == NULL) {
        return 0;
    } else if (strcmp(dict->root->word, query) == 0) {
        return 1;
    } else if (strcmp(dict->root->word, query) > 0) {
        return node_find(dict->root->left, query);
    } else if (strcmp(dict->root->word, query) < 0) {
        return node_find(dict->root->right, query);
    }
    return 0;
}

void node_print(const node_t *my_node) {
    if (my_node == NULL) {
        return;
    }
    node_print(my_node->left);
    printf("%s\n", my_node->word);
    node_print(my_node->right);
}

void dict_print(const dictionary_t *dict) {
    if (dict == NULL || dict->root == NULL) {
        printf("\n");
        return;
    }
    node_print(dict->root);
}

void node_free(node_t *my_node) {
    if (my_node == NULL) {
        return;
    }
    node_free(my_node->left);
    node_free(my_node->right);
    free(my_node);
}

void dict_free(dictionary_t *dict) {
    if (dict == NULL || dict->root == NULL) {
        return;
    }
    node_free(dict->root);
    free(dict);
}

dictionary_t *read_dict_from_text_file(const char *file_name) {
    FILE *fp = fopen(file_name, "r");
    if (fp == NULL) {
        return NULL;
    }
    char str[MAX_WORD_LEN];
    dictionary_t *dict = create_dictionary();
    while (fscanf(fp, "%s", str) != EOF) {
        dict_insert(dict, str);
    }
    fclose(fp);
    return dict;
}

void write_node(FILE *fp, const node_t *my_node) {
    if (my_node == NULL) {
        return;
    }
    fprintf(fp, "%s\n", my_node->word);
    // fwrite(&my_node->word, sizeof(my_node->word), 1, fp);
    write_node(fp, my_node->left);
    write_node(fp, my_node->right);
}

int write_dict_to_text_file(const dictionary_t *dict, const char *file_name) {
    FILE *fp = fopen(file_name, "w");
    if (fp == NULL) {
        return -1;
    }
    write_node(fp, dict->root);
    fclose(fp);
    return 0;
}
