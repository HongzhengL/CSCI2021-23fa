.PHONY: all clean

all: counter_gcc counter_clang endianness

counter_gcc: counter.c
	gcc -O0 -o $@ $^

counter_clang: counter.c
	clang -O0 -o $@ $^

endianness: endianness.c
	gcc -o $@ $^

clean:
	rm -f counter_gcc counter_clang endianness
