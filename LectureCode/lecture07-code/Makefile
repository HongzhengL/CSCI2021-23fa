CFLAGS = -Wall -Werror -g
CC = gcc $(CFLAGS)

.PHONY: all clean

all: write_int_text write_int_bin write_people

write_int_text: write_int_text.c
	$(CC) -o $@ $^

write_int_bin: write_int_bin.c
	$(CC) -o $@ $^

write_people: write_people.c
	$(CC) -o $@ $^

clean:
	rm -f write_int_text write_int_bin write_people
