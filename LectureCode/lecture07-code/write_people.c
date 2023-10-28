#include <stdio.h>

// Define a new struct to represent a person
typedef struct {
    double age;
    double height;
    char initial;
} person_t;

// Write an array of people_t structs to a text file
// file_name: The name of the file to write to
// people: A pointer to the start of a person_t array
// n_people: The number of elements in the array
int write_people_text(char *file_name, person_t *people, int n_people) {
    FILE *f = fopen(file_name, "w");
    if (f == NULL) {
        return -1;
    }

    for (int i = 0; i < n_people; i++) {
        // Write out all 3 struct fields to one line
        fprintf(f, "%f %f %c\n", people[i].age, people[i].height, people[i].initial);
    }

    fclose(f);
    return 0;
}

// Write an array of people_t structs to a binary file
// file_name: The name of the file to write to
// people: A pointer to the start of a person_t array
// n_people: The number of elements in the array
int write_people_bin_1(char *file_name, person_t *people, int n_people) {
    FILE *f = fopen(file_name, "w");
    if (f == NULL) {
        return -1;
    }

    // Arrays are guaranteed to be contiguous in memory
    // This writes the full array in just one operation
    fwrite(people, sizeof(person_t), n_people, f);
    fclose(f);
    return 0;
}

// Write an array of people_t structs to a binary file
// file_name: The name of the file to write to
// people: A pointer to the start of a person_t array
// n_people: The number of elements in the array
int write_people_bin_2(char *file_name, person_t *people, int n_people) {
    FILE *f = fopen(file_name, "w");
    if (f == NULL) {
        return -1;
    }

    // This is equivalent to the previous version
    // But now we're just writing one array element at a time
    for (int i = 0; i < n_people; i++) {
        fwrite(people + i, sizeof(person_t), 1, f);
    }
    fclose(f);
    return 0;
}

// Write an array of people_t structs to a text file
// file_name: The name of the file to write to
// people: A pointer to the start of a person_t array
// n_people: The number of elements in the array
int write_people_bin_3(char *file_name, person_t *people, int n_people) {
    FILE *f = fopen(file_name, "w");
    if (f == NULL) {
        return -1;
    }

    // This is not necessarily equivalent to the previous approaches
    // Why? It would ignore any padding in the structs
    for (int i = 0; i < n_people; i++) {
        fwrite(&people[i].age, sizeof(double), 1, f);
        fwrite(&people[i].height, sizeof(double), 1, f);
        fwrite(&people[i].initial, sizeof(char), 1, f);
    }

    fclose(f);
    return 0;
}

int main() {
    person_t people[3];
    people[0].age = 1.01,
    people[0].height = 0.98,
    people[0].initial = 'N';
    people[1].age = 0.98,
    people[1].height = 1.01,
    people[1].initial = 'C';
    people[2].age = 87,
    people[2].height = 6.14,
    people[2].initial = 'A';

    write_people_text("people.txt", people, 3);
    write_people_bin_1("people_1.bin", people, 3);
    write_people_bin_2("people_2.bin", people, 3);
    write_people_bin_3("people_3.bin", people, 3);
    return 0;
}
