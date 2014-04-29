AS			=	nasm
ASFLAGS		=	-f macho64
NAME		=	exit
OBJ			=	exit.o
LDFLAGS		=	-lc

all			:	$(NAME)

$(NAME)		:	$(OBJ)
			$(LD) $(LDFLAGS) $< -o $@

%.o			:	%.s
			$(AS) $(ASFLAGS) $< -o $@

clean		:
			$(RM) $(OBJ)

fclean		:	clean
			$(RM) $(NAME)

re			:	fclean all
