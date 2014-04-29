AS			=	nasm
ASFLAGS		=	-f macho64
NAME		=	hello
OBJ			=	hello.o main.o

all			:	$(NAME)

$(NAME)		:	$(OBJ)
			$(LD) $(LDFLAGS) $^ -o $@

%.o			:	%.s
			$(AS) $(ASFLAGS) $< -o $@

clean		:
			$(RM) $(OBJ)

fclean		:	clean
			$(RM) $(NAME)

re			:	fclean all
