# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: burun <burun@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/31 20:33:22 by burun             #+#    #+#              #
#    Updated: 2023/01/31 20:40:15 by burun            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
FLAG = -Wall -Wextra -Werror
SRC = $(shell find . -name "ft_*.c")

all: $(NAME)

$(NAME):
	@gcc $(FLAG) -c $(SRC)
	@ar rc $(NAME) *.o
clean:
	@/bin/rm -f  *.o *a.out
fclean: clean
	@/bin/rm -f $(NAME)

re: fclean all

.PHONY: all bonus clean fclean re