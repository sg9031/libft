/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_fd.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sg9031 <sg9031@gmail.com>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/12/24 10:02:59 by sg9031            #+#    #+#             */
/*   Updated: 2020/12/24 19:33:12 by sg9031           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_putnbr_fd(int n, int fd)
{
	unsigned int	x;

	if (n < 0)
	{
		ft_putchar_fd('-', fd);
		x = -n;
	}
	else
		x = n;
	if (x < 10)
		ft_putchar_fd(x + 48, fd);
	else
	{
		ft_putnbr_fd(x / 10, fd);
		ft_putchar_fd((x % 10) + 48, fd);
	}
}
