#include "libft.h"

t_list	*ft_lst_rot(t_list *lst, int i)
{
  t_list *list;
  t_list *l;
  
  if (!lst)
    return (NULL);
  if (i == 0)
    return (lst);
  list = ft_lstnew(lst->content, lst->content_size);
  l = ft_lstrest(lst);
  ft_lstadd(&l, list);
  return (ft_lst_rot(list, i - 1));
}
