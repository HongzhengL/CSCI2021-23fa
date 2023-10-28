#include <stdio.h>
#include <stdint.h>
#include <arpa/inet.h>

// Print out the individual bytes of some data value
// exactly as they are ordered in memory
// data: A pointer to the data to print
// len: The size of this data in bytes
void print_bytes(void *data, size_t len) {
    uint8_t *p = (uint8_t *)data;

    for (int i = 0; i < len; i++) {
        printf("%x\t", *p);
        p++;
    }

    printf("\n");
}

// Print bytes of a data type in both "host" and "network" byte ordering
void print_bytes_both(uint32_t data) {
    printf("Host byte ordering:\n");
    printf("Original value: %u\n", data);
    print_bytes(&data, sizeof(data));

    printf("Network byte ordering:\n");
    // Convert data from host to network byte ordering
    uint32_t reversed = htonl(data);
    printf("Reversed value: %u\n", reversed);
    print_bytes(&reversed, sizeof(reversed));
}

int main() {
    int s = 0xABCD;
    printf("%x\n", s);
    print_bytes(&s, sizeof(s));

    uint32_t t = 0x758EC;
    print_bytes_both(t);
    return 0;
}
