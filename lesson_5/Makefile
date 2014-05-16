all: hello

hello: main.o my_global.o
	ld $^ -o $@ -lc

%.o: %.s
	nasm -f macho64 $< -o $@

clean:
	rm -fr *.o

fclean: clean
	rm -fr hello
