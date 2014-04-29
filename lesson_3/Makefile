all: test

test: test.c fortytwo.o
	$(CC) $^ -o $@

fortytwo.o: fortytwo.s
	nasm -f macho64 $< -o $@

clean:
	$(RM) fortytwo.o

fclean: clean
	$(RM) test

re: fclean all
