#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bmiller <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/13 23:25:56 by bmiller           #+#    #+#              #
#    Updated: 2017/05/26 01:26:59 by bmiller          ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = libft.a
SRC = ft_strlen.c ft_strcpy.c ft_strncpy.c ft_strchr.c ft_strrchr.c ft_strdup.c ft_strcmp.c ft_strncmp.c \
	ft_strstr.c ft_strnstr.c ft_strcat.c ft_strncat.c ft_strlcat.c ft_atoi.c ft_isalpha.c ft_isdigit.c \
	ft_isalnum.c ft_isascii.c ft_isprint.c ft_toupper.c ft_tolower.c ft_memset.c ft_bzero.c ft_memcpy.c \
	ft_memccpy.c ft_memmove.c ft_memchr.c ft_memcmp.c ft_memalloc.c ft_memdel.c ft_strnew.c ft_strdel.c \
	ft_strclr.c ft_striter.c ft_striteri.c ft_strmap.c ft_strmapi.c ft_strequ.c ft_strnequ.c ft_strsub.c \
	ft_strjoin.c ft_strtrim.c ft_strsplit.c ft_itoa.c ft_putchar.c ft_putstr.c ft_putendl.c ft_putnbr.c \
	ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_lstnew.c ft_lstdelone.c ft_lstdel.c \
	ft_lstadd.c ft_lstiter.c ft_lstmap.c ft_lstfold.c ft_addi_pt.c ft_lstprint.c ft_putnbr_pt.c \
	ft_minus_pt.c ft_lstfilter.c ft_square_lst.c ft_is_odd.c ft_lst_is_odd.c ft_is_even.c ft_lst_is_even.c \
	ft_lst_is_singleton.c ft_lst_is_compound.c ft_lstfirst.c ft_lstrest.c ft_lst_last.c ft_lst_butlast.c \
	ft_lstrev.c ft_lstfilter_l.c ft_list_remove_if.c ft_sumofsq_lst.c ft_gt_pt.c ft_lstcpy.c ft_lstlen.c \
	ft_lstdrop.c ft_lsttake.c ft_strtolst.c ft_strsplitlst.c ft_lst_rot.c ft_getopt.c get_next_line.c
SRCS = $(basename $(SRC))
OBJ = $(addprefix $(OBJDIR),$(SRC:.c=.o))
CFLAGS = -O2 -Wall -Werror -Wextra
OBJDIR	= ./obj/
SRCDIR	= ./src/
INCDIR	= ./include/

all: $(NAME)

$(NAME): obj $(OBJ) $(INCDIR)libft.h
	ar rc $(NAME) $(OBJ) && ranlib $(NAME)

obj:
	mkdir -p $(OBJDIR)

$(OBJDIR)%.o:$(SRCDIR)%.c obj
	gcc $(CFLAGS) -I $(INCDIR) -o $@ -c $<

$(SRCS):%:$(OBJDIR)%.o obj

clean:
	rm -rf $(OBJDIR)

fclean: clean
	rm -f $(NAME)

re: fclean $(NAME)
