all: scanf scanf_bad if_bad sizeof_demo sizeof_ptr_demo

scanf: scanf.c
	gcc -o $@ -Wall -Werror $^

# Notice we didn't use the -Wall -Werror options here
# Normally, you should not do this!
scanf_bad: scanf_bad.c
	gcc -o $@ $^

# Notice we didn't use the -Wall -Werror options here
# Normally, you should not do this!
if_bad: if_bad.c
	gcc -o $@ $^

sizeof_demo: sizeof_demo.c
	gcc -o $@ -Wall -Werror $^

sizeof_ptr_demo: sizeof_ptr_demo.c
	gcc -o $@ -Wall -Werror $^

clean:
	rm -f scanf scanf_bad if_bad sizeof_demo sizeof_ptr_demo
