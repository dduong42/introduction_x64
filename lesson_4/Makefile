AS			=	nasm
ASFLAGS		=	-f macho64
NAME		=	hello
OBJ			=	hello.o main.o

all			:	$(NAME) hello_c

$(NAME)		:	$(OBJ)
			$(LD) $(LDFLAGS) $^ -o $@

hello_c		:	main.c hello.o
			$(CC) $^ -o $@

%.o			:	%.s
			$(AS) $(ASFLAGS) $< -o $@

clean		:
			$(RM) $(OBJ)

fclean		:	clean
			$(RM) $(NAME) hello_c

re			:	fclean all
