/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_getopt.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bmiller <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/05/25 19:10:26 by bmiller           #+#    #+#             */
/*   Updated: 2017/05/27 08:57:04 by bmiller          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_getopt.h"

int						g_opterr = 1;
int						g_optind = 1;
int						g_optopt;
int						g_optreset;
char					*g_optarg;

static char const		*ft_getprogname(void)
{
	return (PROGNAME);
}

static int				s_up(int ac, char *const av[], const char *os,
							const char *pl)
{
	if (g_optreset || *pl == 0)
	{
		g_optreset = 0;
		pl = av[g_optind];
		if (g_optind >= ac || *pl++ != '-')
			return (!(pl = EMSG) - 1);
		g_optopt = *pl++;
		if (g_optopt == '-' && *pl == 0)
		{
			++g_optind;
			pl = EMSG;
			return (-1);
		}
		if (g_optopt == 0)
		{
			pl = EMSG;
			if (ft_strchr(os, '-') == NULL)
				return (-1);
			g_optopt = '-';
		}
	}
	else
		g_optopt = *pl++;
	return (0);
}

static int				val_char(const char *os, const char *pl, char **oli)
{
	if (g_optopt == ':' || (*oli = ft_strchr(os, g_optopt)) == NULL)
	{
		if (*pl == 0)
			++g_optind;
		if (g_opterr && *os != ':')
			(void)fprintf(stderr,
						"%s: unknown option -- %c\n", ft_getprogname(),
						g_optopt);
		return (BADCH);
	}
	return (0);
}

static int				no_arg_handle(const char *os, const char *pl)
{
	pl = EMSG;
	if (*os == ':')
		return (BADARG);
	if (g_opterr)
		(void)fprintf(stderr,
						"%s: option requires an argument -- %c\n",
						ft_getprogname(), g_optopt);
	return (BADCH);
}

int						ft_getopt(int argc, char *const argv[], const char *os)
{
	static const char	*pl = EMSG;
	char				*oli;

	assert(argv != NULL && os != NULL);
	__STATUS_CHECK(s_up(argc, argv, os, pl));
	__STATUS_CHECK(val_char(os, pl, &oli));
	if (oli[1] != ':')
	{
		g_optarg = NULL;
		if (*pl == 0)
			++g_optind;
	}
	else
	{
		if (*pl)
			g_optarg = __UNCONST(pl);
		else if (oli[2] == ':')
			g_optarg = NULL;
		else if (argc > ++g_optind)
			g_optarg = argv[g_optind];
		else
			return (no_arg_handle(os, pl));
		pl = ++g_optind ? EMSG : EMSG;
	}
	return (g_optopt);
}
