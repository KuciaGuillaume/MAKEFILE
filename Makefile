##
## EPITECH PROJECT, 2021
## MAKEFILE 101pong
## File description:
## MAKEFILE DE Création d'exécutable
##

CC = gcc

AR = ar src

TARGET = Binary_Name

CFLAGS = -W -Werror -Wextra -Wall -I/include

LDFLAGS= -lcsfml-graphics -lcsfml-window -lcsfml-system -lcsfml-network -lcsfml-audio

SRC = #Filepath

OBJ = $(SRC:.c=.o)

.SILENT: $(OBJ)

all : $(TARGET)
	@echo "\033[34m ----------------------------"
	@echo " | \033[40m-> Plus rien à make {❕}\033[00m\033[34m |"
	@echo " ----------------------------\033[0m"

$(TARGET) : $(OBJ)
	@echo "\033[1;92mCréation du binaire.... [$(TARGET)]\033[0m [⏳]"
	@echo "\033[34m"
	@$(CC) -o $(TARGET) $(OBJ) $(CFLAGS)
	@echo " | -> \033[35m[$(TARGET)]\033[34m WAS CREATED './$(TARGET)' [🆗]"
	@echo "\033[0m"
	@echo "\033[1;92mLa création de l'éxécutable est terminé ! [✅]\033[0m"

clean :
	clear
	@echo "\033[1;92m\nCleaning....\033[0m [⏳]"
	@echo "\033[34m"
	@$(RM) $(OBJ)
	@echo " | -> ALL CLEAR [🆗]"
	@echo "\033[0m"

fclean : clean
	@echo "\033[1;92mSupression de $(TARGET)\033[0m [⏳]"
	@echo "\033[34m"
	@$(RM) $(TARGET)
	@echo " | -> DONE [🆗]"
	@echo "\033[0m"

re : fclean all
