CFLAGS = -Wall -Werror
CC = gcc $(CFLAGS)

.PHONY: all clean

PROGRAMS = \
    void_ptr \
	ptrs_arrays \
	string_len

all: $(PROGRAMS)

%: %.c
	$(CC) -o $@ $^

clean:
	rm -f $(PROGRAMS)
