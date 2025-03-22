##
## EPITECH PROJECT, 2025
## B-DOP-400-MPL-4-1-mymarvin-swan.sarli [WSL: Ubuntu-24.04]
## File description:
## Makefile
##

TARGET = test.out

SRC = 	./src/main.c

OBJ = $(SRC:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) -o $(TARGET) $(OBJ) -lcriterion

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(TARGET)

re: fclean all

tests_run: all
	./$(TARGET)
