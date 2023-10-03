#include <ctype.h>
#include <stdio.h>
#include <string.h>

#include "dictionary.h"

#define MAX_CMD_LEN 128

// A helper function to spell check a specific file
// 'file_name': Name of the file to spell check
// 'dict': A dictionary containing correct words
int spell_check_file(const char *file_name, const dictionary_t *dict) {
    char line[1024];        //read in line
    char new_line[1024];    //for output
    char word[MAX_WORD_LEN];    //Allows words up to 127 characters
    FILE* fp = fopen(file_name, "r");   //opening target file
    if (fp == NULL) {   //Checks for errors when opening file
        return -1;
    }
    int in_cnt = 0, out_cnt = 0, word_len = 0;
    while (fgets(line, sizeof(line), fp) != NULL) {
        in_cnt = 0, out_cnt = 0, word_len = 0;
        memset(new_line, '\0', sizeof(new_line));
        memset(word, '\0', MAX_WORD_LEN);
        while(line[in_cnt] != '\0') {   //reading in each word from the target file
            if (isspace(line[in_cnt])) {    //Allows arbitrary whitespace between words
                if (!dict_find(dict, word)) {   //checking if each word is correctly spelled
                    new_line[out_cnt] = '[';    //Adds markers where needed in output to identify misspelled words
                    new_line[out_cnt+1] = 'X';
                    new_line[out_cnt+2] = ']';
                    out_cnt+=3;
                }
                memset(word, 0, MAX_WORD_LEN);
                word_len = 0;
                new_line[out_cnt] = line[in_cnt];   //Allows arbitrary whitespace between words
            } else if (isalpha(line[in_cnt])) { //read in word
                word[word_len] = line[in_cnt];
                new_line[out_cnt] = line[in_cnt];
                ++word_len;
            }
            ++in_cnt;
            ++out_cnt;
        }
        printf("%s\n", new_line);
    }
    fclose(fp); //Closes file when done
    return 0;
}

/*
 * This is in general *very* similar to the list_main file seen in lab
 */
int main(int argc, char **argv) {
    dictionary_t *dict = NULL;
    char cmd[MAX_CMD_LEN];

    if (argc == 2) {    //Command-line arguments: Supports reading in dictionary from specified file
        dict_free(dict);
        dict = read_dict_from_text_file(argv[1]);
        if (dict == NULL) {
            printf("Failed to read dictionary from text file\n");   //Command-line arguments: Prints out errors where necessary
            return -1;
        } else {
            printf("Dictionary successfully read from text file\n");
        }
    } 
    else if (argc == 3) {   //Command-line arguments: Supports reading in dictionary and spell check target from specified files
        dict_free(dict);
        dict = read_dict_from_text_file(argv[1]);
        if (dict == NULL) {
            printf("Failed to read dictionary from text file\n");   //Command-line arguments: Prints out errors where necessary
            return -1;
        } else {
            printf("Dictionary successfully read from text file\n");
        }
        int flag = spell_check_file(argv[2], dict);
        if (flag == -1) {
            printf("Spell check failed\n");     //Command-line arguments: Prints out errors where necessary
            dict_free(dict);
            return -1;
        }
        dict_free(dict);
        return 0;
    } 

    printf("CSCI 2021 Spell Check System\n");
    printf("Commands:\n");
    printf("  add <word>:              adds a new word to dictionary\n");
    printf("  lookup <word>:           searches for a word\n");
    printf("  print:                   shows all words currently in the dictionary\n");
    printf("  load <file_name>:        reads in dictionary from a file\n");
    printf("  save <file_name>:        writes dictionary to a file\n");
    printf("  check <file_name>: spell checks the specified file\n");
    printf("  exit:                    exits the program\n");

    while (1) {
        printf("spell_check> ");
        if (scanf("%s", cmd) == EOF) {
            printf("\n");
            break;
        }

        if (strcmp("exit", cmd) == 0) {
            break;
        }

        // TODO Add cases for the other commands
        // Read in the command and any additional arguments (where needed)
        if (strcmp("add", cmd) == 0) {
            if (dict == NULL) {
                dict = create_dictionary();
            }
            char word[MAX_WORD_LEN];
            scanf("%s", word);
            dict_insert(dict, word);
        } else if (strcmp("lookup", cmd) == 0) {
            char word[MAX_WORD_LEN];
            scanf("%s", word);
            if (dict_find(dict, word)) {
                printf("\'%s\' present in dictionary\n", word);
            } else {
                printf("\'%s\' not found\n", word);
            }
        } else if (strcmp("print", cmd) == 0) {
            dict_print(dict);
        } else if (strcmp("load", cmd) == 0) {
            dict_free(dict);        //free old dictionary when a new dictionary is created
            char file_name[128];
            scanf("%s", file_name);
            dict = read_dict_from_text_file(file_name);
            if (dict == NULL) {
                printf("Failed to read dictionary from text file\n");
            } else {
                printf("Dictionary successfully read from text file\n");
            }
        } else if (strcmp("save", cmd) == 0) {
            char file_name[128];
            scanf("%s", file_name);
            int status = write_dict_to_text_file(dict, file_name);
            if (status == 0) {
                printf("Dictionary successfully written to text file\n");
            }
        } else if (strcmp("check", cmd) == 0) {
            char file_name[128];
            scanf("%s", file_name);
            int flag = spell_check_file(file_name, dict);
            if (flag == -1) {
                printf("Spell check failed\n");
            }
        } else {
            printf("Unknown command %s\n", cmd);
        }
    }
    dict_free(dict);
    return 0;
}

