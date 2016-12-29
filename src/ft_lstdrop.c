#include "libft.h"

t_list	*ft_lstdrop(t_list *lst, size_t count)
{
  if (count == 0)
    return (ft_lstcpy(lst));
  else
    return (ft_lstdrop(lst->next, count - 1));
}
