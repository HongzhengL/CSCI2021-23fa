CFLAGS = -g -Wall -Werror -fpic
CC = gcc $(CFLAGS)

libds_search.so: tree.o array.o list.o
	gcc -shared -o libds_search.so tree.o array.o list.o

tree.o: tree.c ds_search.h
	$(CC) -c $<

array.o: array.c ds_search.h
	$(CC) -c $<

list.o: list.c ds_search.h
	$(CC) -c $<

clean:
	rm -f *.o *.so
