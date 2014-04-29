AS			=	nasm
ASFLAGS		=	-f macho64
NAME		=	function_call
OBJ			=	function_call.o
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
