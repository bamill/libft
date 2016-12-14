/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_gt_pt.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bmiller <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/12/07 21:12:52 by bmiller           #+#    #+#             */
/*   Updated: 2016/12/07 22:27:23 by bmiller          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int		ft_gt_pt(void *e1, void *e2)
{
	if (!e1 || !e2)
		return (0);
	if ((*(int*)e1) > (*(int*)e2))
		return (1);
	return (0);
}