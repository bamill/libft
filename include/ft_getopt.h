/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_getopt.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bmiller <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/05/27 05:57:24 by bmiller           #+#    #+#             */
/*   Updated: 2017/05/27 09:14:20 by bmiller          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_GETOPT_H
# define FT_GETOPT_H
# include <unistd.h>
# include <getopt.h>
# include <assert.h>
# include <errno.h>
# include <stdio.h>
# include "libft.h"
# define BADCH (int)'?'
# define BADARG (int)':'
# define EMSG ""
# define __UNCONST(a)	((void *)(unsigned long)(const void *)(a))
# define __STATUS_CHECK(i) if (i != 0) return (i);
# ifndef PROGNAME
#  ifdef HAVE_DECL_PROGRAM_INVOCATION_SHORT_NAME
#   define PROGNAME program_invocation_short_name
#  else
#   define PROGNAME NULL
#  endif
# endif

extern int						g_opterr;
extern int						g_optind;
extern int						g_optopt;
extern int						g_optreset;
extern char						*g_optarg;
int								ft_getopt(int argc, char *const argv[],
											const char *os);

#endif
