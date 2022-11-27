# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: oaboudan <oaboudan@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/26 18:40:46 by oaboudan          #+#    #+#              #
#    Updated: 2022/11/26 18:40:46 by oaboudan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


SRC = ft_printf.c ft_putnbr.c ft_putnbr_base_hex.c ft_putchar.c ft_putstr.c ft_putnbr_base_x.c ft_putnbr_u.c 
OFILES = ${SRC:.c=.o}

CC = cc
FLAGS= -Wall -Wextra -Werror
INC = ft_printf.h
NAME = libftprintf.a

#############################################
all : ${NAME}

${NAME} : ${OFILES}
	ar -crs ${NAME} ${OFILES}

%.o:%.c ${INC}
	${CC} -c ${FLAGS} $<

clean :
	rm -f ${OFILES}

fclean : clean
	rm -f ${NAME}

re : fclean all

.PHONY: clean fclean re all