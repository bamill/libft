#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bmiller <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/13 23:25:56 by bmiller           #+#    #+#              #
#    Updated: 2016/12/08 21:58:43 by bmiller          ###   ########.fr        #
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
	ft_lstrev.c ft_lstfilter_l.c ft_list_remove_if.c ft_sumofsq_lst.c ft_gt_pt.c ft_lstcpy.c ft_lstlen.c
OBJ = ft_strlen.o ft_strcpy.o ft_strncpy.o ft_strchr.o ft_strrchr.o ft_strdup.o ft_strcmp.o ft_strncmp.o \
	ft_strstr.o ft_strnstr.o ft_strcat.o ft_strncat.o ft_strlcat.o ft_atoi.o ft_isalpha.o ft_isdigit.o \
	ft_isalnum.o ft_isascii.o ft_isprint.o ft_toupper.o ft_tolower.o ft_memset.o ft_bzero.o ft_memcpy.o \
	ft_memccpy.o ft_memmove.o ft_memchr.o ft_memcmp.o ft_memalloc.o ft_memdel.o ft_strnew.o ft_strdel.o \
	ft_strclr.o ft_striter.o ft_striteri.o ft_strmap.o ft_strmapi.o ft_strequ.o ft_strnequ.o ft_strsub.o \
	ft_strjoin.o ft_strtrim.o ft_strsplit.o ft_itoa.o ft_putchar.o ft_putstr.o ft_putendl.o ft_putnbr.o \
	ft_putchar_fd.o ft_putstr_fd.o ft_putendl_fd.o ft_putnbr_fd.o ft_lstnew.o ft_lstdelone.o ft_lstdel.o \
	ft_lstadd.o ft_lstiter.o ft_lstmap.o ft_lstfold.o ft_addi_pt.o ft_lstprint.o ft_putnbr_pt.o \
	ft_minus_pt.o ft_lstfilter.o ft_square_lst.o ft_is_odd.o ft_lst_is_odd.o ft_is_even.o ft_lst_is_even.o \
	ft_lst_is_singleton.o ft_lst_is_compound.o ft_lstfirst.o ft_lstrest.o ft_lst_last.o ft_lst_butlast.o \
	ft_lstrev.o ft_lstfilter_l.o ft_list_remove_if.o ft_sumofsq_lst.o ft_gt_pt.o ft_lstcpy.o ft_lstlen.o
CFLAGS = -c -O2 -Wall -Werror -Wextra -Iinclude

all: $(NAME)

$(NAME): $(SRC) $(OBJ) libft.h
	ar rc $(NAME) $(OBJ) && ranlib $(NAME)

ft_strlen.o: ft_strlen.c
	gcc $(CFLAGS) ft_strlen.c

ft_strcpy.o: ft_strcpy.c
	gcc $(CFLAGS) ft_strcpy.c

ft_strncpy.o: ft_strncpy.c
	gcc $(CFLAGS) ft_strncpy.c

ft_strchr.o: ft_strchr.c
	gcc $(CFLAGS) ft_strchr.c

ft_strrchr.o: ft_strrchr.c
	gcc $(CFLAGS) ft_strrchr.c

ft_strdup.o: ft_strdup.c
	gcc $(CFLAGS) ft_strdup.c

ft_strcmp.o: ft_strcmp.c
	gcc $(CFLAGS) ft_strcmp.c

ft_strncmp.o: ft_strncmp.c
	gcc $(CFLAGS) ft_strncmp.c

ft_strstr.o: ft_strstr.c
	gcc $(CFLAGS) ft_strstr.c

ft_strnstr.o: ft_strnstr.c
	gcc $(CFLAGS) ft_strnstr.c

ft_strcat.o: ft_strcat.c
	gcc $(CFLAGS) ft_strcat.c

ft_strncat.o: ft_strncat.c
	gcc $(CFLAGS) ft_strncat.c

ft_strlcat.o: ft_strlcat.c
	gcc $(CFLAGS) ft_strlcat.c

ft_atoi.o: ft_atoi.c
	gcc $(CFLAGS) ft_atoi.c

ft_isalpha.o: ft_isalpha.c
	gcc $(CFLAGS) ft_isalpha.c

ft_isdigit.o: ft_isdigit.c
	gcc $(CFLAGS) ft_isdigit.c

ft_isalnum.o: ft_isalnum.c
	gcc $(CFLAGS) ft_isalnum.c

ft_isascii.o: ft_isascii.c
	gcc $(CFLAGS) ft_isascii.c

ft_isprint.o: ft_isprint.c
	gcc $(CFLAGS) ft_isprint.c

ft_toupper.o: ft_toupper.c
	gcc $(CFLAGS) ft_toupper.c

ft_tolower.o: ft_tolower.c
	gcc $(CFLAGS) ft_tolower.c

ft_memset.o: ft_memset.c
	gcc $(CFLAGS) ft_memset.c

ft_bzero.o: ft_bzero.c
	gcc $(CFLAGS) ft_bzero.c

ft_memcpy.o: ft_memcpy.c
	gcc $(CFLAGS) ft_memcpy.c

ft_memccpy.o: ft_memccpy.c
	gcc $(CFLAGS) ft_memccpy.c

ft_memmove.o: ft_memmove.c
	gcc $(CFLAGS) ft_memmove.c

ft_memchr.o: ft_memchr.c
	gcc $(CFLAGS) ft_memchr.c

ft_memcmp.o: ft_memcmp.c
	gcc $(CFLAGS) ft_memcmp.c

ft_memalloc.o: ft_memalloc.c
	gcc $(CFLAGS) ft_memalloc.c

ft_memdel.o: ft_memdel.c
	gcc $(CFLAGS) ft_memdel.c

ft_strnew.o: ft_strnew.c
	gcc $(CFLAGS) ft_strnew.c

ft_strdel.o: ft_strdel.c
	gcc $(CFLAGS) ft_strdel.c

ft_strclr.o: ft_strclr.c
	gcc $(CFLAGS) ft_strclr.c

ft_striter.o: ft_striter.c
	gcc $(CFLAGS) ft_striter.c

ft_striteri.o: ft_striteri.c
	gcc $(CFLAGS) ft_striteri.c

ft_strmap.o: ft_strmap.c
	gcc $(CFLAGS) ft_strmap.c

ft_strmapi.o: ft_strmapi.c
	gcc $(CFLAGS) ft_strmapi.c

ft_strequ.o: ft_strequ.c
	gcc $(CFLAGS) ft_strequ.c

ft_strnequ.o: ft_strnequ.c
	gcc $(CFLAGS) ft_strnequ.c

ft_strsub.o: ft_strsub.c
	gcc $(CFLAGS) ft_strsub.c

ft_strjoin.o: ft_strjoin.c
	gcc $(CFLAGS) ft_strjoin.c

ft_strtrim.o: ft_strtrim.c
	gcc $(CFLAGS) ft_strtrim.c

ft_strsplit.o: ft_strsplit.c
	gcc $(CFLAGS) ft_strsplit.c

ft_itoa.o: ft_itoa.c
	gcc $(CFLAGS) ft_itoa.c

ft_putchar.o: ft_putchar.c
	gcc $(CFLAGS) ft_putchar.c

ft_putstr.o: ft_putstr.c
	gcc $(CFLAGS) ft_putstr.c

ft_putendl.o: ft_putendl.c
	gcc $(CFLAGS) ft_putendl.c

ft_putnbr.o: ft_putnbr.c
	gcc $(CFLAGS) ft_putnbr.c

ft_putchar_fd.o: ft_putchar_fd.c
	gcc $(CFLAGS) ft_putchar_fd.c

ft_putstr_fd.o: ft_putstr_fd.c
	gcc $(CFLAGS) ft_putstr_fd.c

ft_putendl_fd.o: ft_putendl_fd.c
	gcc $(CFLAGS) ft_putendl_fd.c

ft_putnbr_fd.o: ft_putnbr_fd.c
	gcc $(CFLAGS) ft_putnbr_fd.c

ft_lstnew.o: ft_lstnew.c
	gcc $(CFLAGS) ft_lstnew.c

ft_lstdelone.o: ft_lstdelone.c
	gcc $(CFLAGS) ft_lstdelone.c

ft_lstdel.o: ft_lstdel.c
	gcc $(CFLAGS) ft_lstdel.c

ft_lstadd.o: ft_lstadd.c
	gcc $(CFLAGS) ft_lstadd.c

ft_lstiter.o: ft_lstiter.c
	gcc $(CFLAGS) ft_lstiter.c

ft_lstmap.o: ft_lstmap.c
	gcc $(CFLAGS) ft_lstmap.c

ft_lstfold.o: ft_lstfold.c
	gcc $(CFLAGS) ft_lstfold.c

ft_addi_pt.o: ft_addi_pt.c
	gcc $(CFLAGS) ft_addi_pt.c

ft_lstprint.o: ft_lstprint.c
	gcc $(CFLAGS) ft_lstprint.c

ft_putnbr_pt.o: ft_putnbr_pt.c
	gcc $(CFLAGS) ft_putnbr_pt.c

ft_minus_pt.o: ft_minus_pt.c
	gcc $(CFLAGS) ft_minus_pt.c

ft_lstfilter.o: ft_lstfilter.c
	gcc $(CFLAGS) ft_lstfilter.c

ft_square_lst.o: ft_square_lst.c
	gcc $(CFLAGS) ft_square_lst.c

ft_is_odd.o: ft_is_odd.c
	gcc $(CFLAGS) ft_is_odd.c

ft_lst_is_odd.o: ft_lst_is_odd.c
	gcc $(CFLAGS) ft_lst_is_odd.c

ft_is_even.o: ft_is_even.c
	gcc $(CFLAGS) ft_is_even.c

ft_lst_is_even.o: ft_lst_is_even.c
	gcc $(CFLAGS) ft_lst_is_even.c

ft_lst_is_singleton.o: ft_lst_is_singleton.c
	gcc $(CFLAGS) ft_lst_is_singleton.c

ft_lst_is_compound.o: ft_lst_is_compound.c
	gcc $(CFLAGS) ft_lst_is_compound.c

ft_lstfirst.o: ft_lstfirst.c
	gcc $(CFLAGS) ft_lstfirst.c

ft_lstrest.o: ft_lstrest.c
	gcc $(CFLAGS) ft_lstrest.c

ft_lst_last.o: ft_lst_last.c
	gcc $(CFLAGS) ft_lst_last.c

ft_lst_butlast.o: ft_lst_butlast.c
	gcc $(CFLAGS) ft_lst_butlast.c

ft_lstrev.o: ft_lstrev.c
	gcc $(CFLAGS) ft_lstrev.c

ft_lstfilter_l.o: ft_lstfilter_l.c
	gcc $(CFLAGS) ft_lstfilter_l.c

ft_list_remove_if.o: ft_list_remove_if.c
	gcc $(CFLAGS) ft_list_remove_if.c

ft_sumofsq_lst.o: ft_sumofsq_lst.c
	gcc $(CFLAGS) ft_sumofsq_lst.c

ft_gt_pt.o: ft_gt_pt.c
	gcc $(CFLAGS) ft_gt_pt.c

ft_lstcpy.o: ft_lstcpy.c
	gcc $(CFLAGS) ft_lstcpy.c

ft_lstlen.o: ft_lstlen.c
	gcc $(CFLAGS) ft_lstlen.c

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: $(SRC) fclean $(NAME) libft.h
