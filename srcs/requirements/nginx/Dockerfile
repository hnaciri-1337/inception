# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hnaciri- <hnaciri-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/03 19:30:28 by hnaciri-          #+#    #+#              #
#    Updated: 2023/02/24 22:01:47 by hnaciri-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt update

RUN apt upgrade -y

RUN apt install nginx -y

RUN apt install openssl -y && openssl req -x509 -newkey rsa:4096 -keyout /etc/nginx/key.key -out /etc/nginx/cert.crt -days 365 -nodes -subj "/CN=localhost"

COPY conf/default /etc/nginx/sites-available/

CMD ["nginx", "-g", "daemon off;"]
