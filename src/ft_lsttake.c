#include "libft.h"

t_list	*ft_lsttake(t_list *lst, size_t count)
{
  t_list	*list;
  
  if (count == 0)
    return (NULL);
  list = ft_lstnew(lst->content, lst->content_size);
  list->next = ft_lsttake(lst->next, count - 1);
  return (list);
}
