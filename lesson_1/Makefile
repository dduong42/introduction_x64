AS			=	nasm
ASFLAGS		=	-f macho64

all			:	exit

exit		:	exit.o
			$(LD) $< -o $@

%.o			:	%.s
			$(AS) $(ASFLAGS) $< -o $@

clean		:
			$(RM) exit.o

fclean		:	clean
			$(RM) exit

re			:	fclean all
