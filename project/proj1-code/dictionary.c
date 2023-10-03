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
        if (my_node->left == NULL) { //adds new node to tree
            my_node->left = malloc(sizeof(node_t));
            strcpy(my_node->left->word, word); //initializes data values for new tree node
            my_node->left->left = my_node->left->right = NULL; //initializes data values for new tree node
        } else { //traverses existing tree nodes as needed to find proper location for new node
            my_node->left = node_insert(my_node->left, word);
        }
    } else {
        if (my_node->right == NULL) { //adds new node to tree
            my_node->right = malloc(sizeof(node_t));
            strcpy(my_node->right->word, word); //initializes data values for new tree node
            my_node->right->left = my_node->right->right = NULL; //initializes data values for new tree node
        } else { //traverses existing tree nodes as needed to find proper location for new node
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
        strcpy(dict->root->word, word); //initializes data values for new tree node
        dict->size++;
        dict->root->left = dict->root->right = NULL; //initializes data values for new tree node
    } else {
        dict->root = node_insert(dict->root, word); //modified the tree to the correct one
        dict->size++;
    }
    return 0;
}

/* helper function for dict_find*/
int node_find(const node_t *my_node, const char *query) {//traverses binary tree to find correct node
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
    } else if (strcmp(dict->root->word, query) == 0) { //string handling to compare query with each node's word
        return 1; //return 1 if found
    } else if (strcmp(dict->root->word, query) > 0) {
        return node_find(dict->root->left, query);
    } else if (strcmp(dict->root->word, query) < 0) {
        return node_find(dict->root->right, query);
    }
    return 0; // return 0 if NOT found
}

/* helper funtion for dict_print */
void node_print(const node_t *my_node) {
    if (my_node == NULL) {
        return;
    }
    node_print(my_node->left);      //inorder traverse, Prints out dictionary contents in correct (alphabetical) order
    printf("%s\n", my_node->word);  //Prints out dictionary contents in proper format
    node_print(my_node->right);
}

void dict_print(const dictionary_t *dict) {
    if (dict == NULL || dict->root == NULL) {
        return;
    }
    node_print(dict->root); //traverses all binary search tree nodes
}

/* helper function for dict_free */
void node_free(node_t *my_node) {
    if (my_node == NULL) {
        return;
    }
    node_free(my_node->left);   //traversing all the nodes
    node_free(my_node->right);
    free(my_node);              //free node
}

void dict_free(dictionary_t *dict) {
    if (dict == NULL || dict->root == NULL) {
        return;
    }
    node_free(dict->root); //free all nodes
    free(dict); //free dictionary itself
}

dictionary_t *read_dict_from_text_file(const char *file_name) {
    FILE *fp = fopen(file_name, "r");   //function call and arguments for opening file
    if (fp == NULL) {   //Handles errors when opening file
        return NULL;
    }
    char str[MAX_WORD_LEN];
    dictionary_t *dict = create_dictionary();   //creates new dictionary and initializes its contents
    while (fscanf(fp, "%s", str) != EOF) {  //reading in dictionary contents
        dict_insert(dict, str);
    }
    fclose(fp); //Closes file when done
    return dict;
}

/* helper function for write_dict_to_text_file(.) */
void write_node(FILE *fp, const node_t *my_node) {
    if (my_node == NULL) {
        return;
    }
    fprintf(fp, "%s\n", my_node->word);
    write_node(fp, my_node->left);      //traversing all of dictionary's contents
    write_node(fp, my_node->right);
}

int write_dict_to_text_file(const dictionary_t *dict, const char *file_name) {
    FILE *fp = fopen(file_name, "w");   //function call and arguments for opening file
    if (fp == NULL) {   //Handles errors when opening file
        return -1;
    }
    write_node(fp, dict->root); //writing out each dictionary element
    fclose(fp); //Closes file when done
    return 0;
}
