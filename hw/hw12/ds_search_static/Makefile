CFLAGS = -g -Wall -Werror
CC = gcc $(CFLAGS)

libds_search.a: tree.o array.o list.o
	ar rcs libds_search.a tree.o array.o list.o

clean:
	rm *.o *.a

tree.o: tree.c ds_search.h
	$(CC) -c $<

array.o: array.c ds_search.h
	$(CC) -c $<

list.o: list.c ds_search.h
	$(CC) -c $<
