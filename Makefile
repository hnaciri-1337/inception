# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hnaciri- <hnaciri-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/03 10:40:53 by llescure          #+#    #+#              #
#    Updated: 2023/02/24 22:07:59 by hnaciri-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

COMPOSE_FILE=./srcs/docker-compose.yml

all: run

run:
	mkdir -p /home/hnaciri-/data
	mkdir -p /home/hnaciri-/data//mariadb
	mkdir -p /home/hnaciri-/data//wordpress
	docker-compose -f $(COMPOSE_FILE) up --build -d

stop:
	docker-compose -f $(COMPOSE_FILE) down

fclean: stop
	docker system prune -a
	rm -rf /home/hnaciri-/data
	docker volume rm -f srcs_db_data srcs_wp_data

re: fclean run

