# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hnaciri- <hnaciri-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/03 19:30:28 by hnaciri-          #+#    #+#              #
#    Updated: 2023/02/23 20:44:23 by hnaciri-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt update

RUN apt upgrade -y

RUN apt install nginx -y

COPY conf/default /etc/nginx/sites-available/
COPY tools/* /var/www/html/

CMD ["nginx", "-g", "daemon off;"]
