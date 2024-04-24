NAME= a.out
SRC= main.s
OBJ=$(SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ld -m elf_i386 -s -o $(NAME) $(OBJ) 

%.o:%.s
	nasm -f elf $< -o $@

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all

run: all
	./$(NAME)
.PHONY: re fclean clean all run