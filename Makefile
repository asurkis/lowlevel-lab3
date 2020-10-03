CC = gcc
CFLAGS = -std=c89 -pedantic-errors -Wall -Werror

default: build

clean:
	rm -f *.o main

build: main.c
	$(CC) $(CFLAGS) main.c -o main

run: build
	./main <input.txt >output.txt
