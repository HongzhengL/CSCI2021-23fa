AN = lab04
CFLAGS = -Wall -Werror -g
CC = gcc $(CFLAGS)
SHELL = /bin/bash
CWD = $(shell pwd | sed 's/.*\///g')

.PHONY: all clean clean-tests help

all: masking bit_puzzle

masking: masking.c
	$(CC) -o $@ $^

bit_puzzle: bit_puzzle.c
	$(CC) -o $@ $^

# cleaning target to remove compiled programs/objects
clean:
	rm -f masking bit_puzzle

clean-tests:
	rm -rf test_results

help:
	@echo 'Typical usage is:'
	@echo '  > make                          # build all programs'
	@echo '  > make clean                    # remove all compiled items'
	@echo '  > make zip                      # create a zip file for submission'
	@echo '  > make test                     # run all tests'
	@echo '  > make test-quiz                # run tests that verify quiz answers'
	@echo '  > make test-code                # run tests that verify code is correct'

zip: clean clean-tests
	rm -f $(AN)-code.zip
	cd .. && zip "$(CWD)/$(AN)-code.zip" -r "$(CWD)" -x "$(CWD)/testius" "$(CWD)/test_cases/*"
	@echo Zip created in $(AN)-code.zip
	@if (( $$(stat -c '%s' $(AN)-code.zip) > 10*(2**20) )); then echo "WARNING: $(AN)-code.zip seems REALLY big, check there are no abnormally large test files"; du -h $(AN)-code.zip; fi
	@if (( $$(unzip -t $(AN)-code.zip | wc -l) > 256 )); then echo "WARNING: $(AN)-code.zip has 256 or more files in it which may cause submission problems"; fi

ifdef testnum
test: test-setup all
	./testius test_cases/tests.json -v -n "$(testnum)"
else
test: test-setup all
	./testius test_cases/tests.json
endif

test-quiz: test-setup QUESTIONS.txt
	./testius test_cases/tests.json -n 1 -v

test-code: test-setup all
	./testius test_cases/tests.json -n 2-3 -v

test-setup:
	@chmod u+x testius test_cases/resources/socrates
