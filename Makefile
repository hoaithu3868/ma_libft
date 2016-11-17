# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: thninh <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/11 16:50:13 by thninh            #+#    #+#              #
#    Updated: 2016/11/17 14:39:25 by thninh           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

HEADER = ./libft.h

SRC = ./ft_atoi.c ./ft_bzero.c ./ft_isalnum.c ./ft_isalpha.c ./ft_isascii.c \
	  ./ft_isdigit.c ./ft_isprint.c ./ft_itoa.c ./ft_memalloc.c \
	  ./ft_memccpy.c ./ft_memchr.c ./ft_memcmp.c ./ft_memcpy.c ./ft_memdel.c \
	  ./ft_memmove.c ./ft_memset.c ./ft_putchar.c ./ft_putchar_fd.c \
	  ./ft_putendl.c ./ft_putendl_fd.c ./ft_putnbr.c ./ft_putnbr_fd.c \
	  ./ft_putstr.c ./ft_putstr_fd.c ./ft_strlcat.c ./ft_strcat.c \
	  ./ft_strchr.c ./ft_strclr.c ./ft_strcmp.c ./ft_striteri.c \
	  ./ft_strequ.c ./ft_strmapi.c ./ft_strnequ.c ./ft_strnew.c \
	  ./ft_strnstr.c ./ft_strncmp.c ./ft_strncat.c ./ft_strsplit.c \
	  ./ft_strrchr.c ./ft_strsub.c ./ft_strcpy.c ./ft_toupper.c \
	  ./ft_tolower.c ./ft_strtrim.c ./ft_strstr.c ./ft_strmap.c \
	  ./ft_strncpy.c ./ft_strjoin.c ./ft_strlen.c ./ft_striter.c \
	  ./ft_strdup.c ./ft_strdel.c ./ft_lstadd.c ./ft_lstdel.c \
	  ./ft_lstdelone.c ./ft_lstiter.c ./ft_lstmap.c ./ft_lstnew.c

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME):
	@gcc -Wall -Werror -Wextra -c $(SRC) -I $(HEADER)
	@ar rc $(NAME) $(OBJ)

clean:
	@/bin/rm -rf $(OBJ)

fclean: clean
	@/bin/rm -rf $(NAME)

re: fclean all

.PHONY: clean fclean
