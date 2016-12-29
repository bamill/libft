#include "libft.h"
#include <stdlib.h>

t_list	*ft_strtolst(char *str)
{
  t_list *lst;
  
  if (!str || !(*str))
    return (NULL);
  lst = ft_lstnew(str, sizeof(*str));
  lst->next = ft_strtolst(str + 1);
  return (lst);
}
