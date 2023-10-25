# CSCI 2021 lab Makefile
AN = lab07

CFLAGS = -Wall -Werror -g
CC = gcc $(CFLAGS)
SHELL = /bin/bash
CWD = $(shell pwd | sed 's/.*\///g')

.PHONY: all test-setup test-quiz test-code clean clean-tests

all: order3_c order3_asm

help:
	@echo 'Typical usage is:'
	@echo '  > make                          # build all programs'
	@echo '  > make clean                    # remove all compiled items'
	@echo '  > make zip                      # create a zip file for submission'
	@echo '  > make test-quiz                # run tests that verify quiz answers'
	@echo '  > make test-code                # run tests that verify code is correct'
	@echo '  > make test                     # run all automated tests'
	@echo '  > make clean-tests              # remove all test results'

# 'make zip' to create zip file for submission
zip: clean clean-tests
	rm -f $(AN)-code.zip
	cd .. && zip "$(CWD)/$(AN)-code.zip" -r "$(CWD)" -x "$(CWD)/testius" "$(CWD)/test_cases/*"
	@echo Zip created in $(AN)-code.zip
	@if (( $$(stat -c '%s' $(AN)-code.zip) > 10*(2**20) )); then echo "WARNING: $(AN)-code.zip seems REALLY big, check there are no abnormally large test files"; du -h $(AN)-code.zip; fi
	@if (( $$(unzip -t $(AN)-code.zip | wc -l) > 256 )); then echo "WARNING: $(AN)-code.zip has 256 or more files in it which may cause submission problems"; fi

order3_c: order3.c
	$(CC) -o $@ $^

order3_asm: order3.s
	$(CC) -o $@ $^

test-setup:
	@chmod u+rx testius test_cases/resources/socrates

test: test-setup all
	./testius test_cases/tests.json

test-quiz: test-setup QUESTIONS.txt
	./testius test_cases/tests.json -v -n 1

test-code: test-setup order3_asm
	./testius test_cases/tests.json -v -n 2

clean:
	rm -f *.o order3_asm order3_c

clean-tests:
	rm -rf test_results/
