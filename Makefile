# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sg9031 <sg9031@gmail.com>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/20 13:26:20 by sg9031            #+#    #+#              #
#    Updated: 2020/12/21 11:26:51 by sg9031           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS	= ft_tolower.c ft_toupper.c ft_strchr.c ft_strrchr.c ft_strdup.c ft_isalpha.c ft_strlen.c \
		  ft_isalnum.c ft_isascii.c ft_isprint.c ft_isdigit.c ft_strncmp.c ft_strlcat.c ft_atoi.c \
		  ft_memset.c ft_bzero.c ft_memcpy.c
OBJS	= ${SRCS:.c=.o}
CC		= gcc
CFLAGS	= -Wall -Wextra -Werror
NAME	= libft.a
RM		= rm -f
.c.o:
			${CC} ${CFLAGS} -c -I./includes $< -o ${<:.c=.o}

${NAME}:	${OBJS}
			ar -rcs $@ $^

all:		${NAME}

clean:
			${RM} ${OBJS}

fclean:		clean
			${RM} ${NAME}

re:			fclean all

.PHONY:			all clean fclean re
