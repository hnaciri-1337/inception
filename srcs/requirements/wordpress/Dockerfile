# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hnaciri- <hnaciri-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/03 19:30:28 by hnaciri-          #+#    #+#              #
#    Updated: 2023/02/24 20:55:25 by hnaciri-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt update
RUN apt upgrade -y
RUN apt install php -y
RUN apt install php-fpm -y
RUN apt install php-mysql -y


RUN mkdir /run/php

RUN apt install wget -y
RUN apt install unzip -y


RUN wget https://wordpress.org/latest.zip -O /tmp/wordpress.zip 
RUN mkdir -p /var/www/html/
RUN unzip /tmp/wordpress.zip -d /var/www/html/
RUN rm -rf /tmp/wordpress.zip

ARG MYSQL_HOSTNAME
ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG MYSQL_ROOT_PASSWORD

COPY ./config/www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY ./tools/script.sh /bin/script.sh
WORKDIR /var/www/html/wordpress

RUN bash /bin/script.sh

CMD ["/usr/sbin/php-fpm7.3", "-F"]
