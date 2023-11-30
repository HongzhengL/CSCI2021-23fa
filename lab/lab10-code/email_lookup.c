// Read the binary Department Directory file 'cse_dpts.dat' to locate
// a given email address and print the Department / Name of the person
// associated with it. See 'print_department.c' for the structure of
// the binary file.

#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <unistd.h>

// type for individual contact
typedef struct {
    char name[128];      // name of contact person
    char email[128];     // email address
} contact_t;

// type indicating position and size of array of contacts in the file
typedef struct {
    char dept_code[16];  // short identifier code for department
    size_t offset;       // byte offset in file where contact_t array starts
    int num_contacts;    // number of contact_t's for this department
} dept_offset_t;

// type indicating initial identifying and size information
typedef struct {
    unsigned char ident[4]; // identifying bytes should be {0xDE,'D','I','R'}
    int num_depts;          // number of departments in dept_offset_t array
} file_header_t;

int main(int argc, char *argv[]) {
    if (argc < 3) {
        printf("usage: %s <file.dat> <email>\n", argv[0]);
        printf("  <email> is an email address to look up and print out\n");
        return 1;
    }
    char *filename = argv[1];
    char *email = argv[2];

    // memory map the binary data file
    // TODO call open to get file descriptor and save it in 'fd'
    int fd = 0;
    fd = open(filename, O_RDONLY);

    struct stat stat_buf;
    fstat(fd, &stat_buf);
    int size = stat_buf.st_size;
    // TODO call fstat() to get stats on the open file such as its size, to save to variable above
    // TODO call mmap() to create a pointer to file contents
    // Then set pointer to header struct to beginning of file
    char *file_bytes = NULL;
    file_header_t *header = NULL;
    file_bytes = mmap(NULL, size, PROT_READ, MAP_SHARED, fd, 0);
    header = (file_header_t *) file_bytes;
    
    // CHECK the file_header_t struct for integrity, size of department array
    int ident_matches =                        // check the first bytes to ensure correct file format
        header->ident[0] == 0xDE &&
        header->ident[1] == 'D'  &&
        header->ident[2] == 'I'  &&
        header->ident[3] == 'R';

    if (!ident_matches) {
        printf("'%s' does not appear to be a binary department directory file\n", filename);
        exit(1);
    }

    // SEARCH each department for specified email; print if found and break from nested loops.
    // TODO Assign this pointer to array of departments immediately after header
    dept_offset_t *depts_arr = NULL;
    depts_arr = (dept_offset_t *) (file_bytes + sizeof(file_header_t));
    int num_depts = header->num_depts;         // header was ok, retrieve the number of departments
    int found = 0;                             // indicates if email has been located in the loop
    
    for (int i = 0; i < num_depts; i++) {      // iterate over the array checking for desired department_code
        // TODO Point at array of contacts for department i in file
        contact_t *contacts = NULL;
        contacts = (contact_t *) (file_bytes + depts_arr[i].offset);
        for (int j = 0; j < depts_arr[i].num_contacts; j++) { // iterate over the array of contacts in the department
            // TODO use an if () w/ string comparison to check if the jth contact email matches the search email from the command line
            if (strcmp(contacts[j].email, email) == 0) {
                printf("Found %s: %s Department --> %s\n", email, depts_arr[i].dept_code, contacts[j].name);
                found = 1;                           // found - break out of inner loop
                break;
            }
        }

        if (found != 0) {                            // found - break from outer loop
            break;
        }
    }

    if (found == 0) {
        printf("Email '%s' not found\n",email);
    }

    munmap(file_bytes, size);                  // unmap and close file
    close(fd);
    return 0;
}
