CFLAGS = -Wall -Werror -g
CC = gcc $(CFLAGS)

PROGRAMS = \
    struct_sizes \
	write_int_text \
	write_int_bin

.PHONY: all clean

all: $(PROGRAMS)

%: %.c
	$(CC) -o $@ $^

clean:
	rm -f $(PROGRAMS)
