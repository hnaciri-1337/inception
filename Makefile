# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hnaciri- <hnaciri-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/03 10:40:53 by llescure          #+#    #+#              #
#    Updated: 2023/02/24 16:19:06 by hnaciri-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

COMPOSE_FILE=./srcs/docker-compose.yml

all: run

run:
	mkdir -p /Users/hnaciri-/Desktop/Inception/volumes
	mkdir -p /Users/hnaciri-/Desktop/Inception/volumes/mariadb
	mkdir -p /Users/hnaciri-/Desktop/Inception/volumes/wordpress
	docker-compose -f $(COMPOSE_FILE) up --build
stop:
	docker-compose -f $(COMPOSE_FILE) down
fclean: stop
	docker system prune -a
	rm -rf /Users/hnaciri-/Desktop/Inception/volumes
	rm -rf /Users/hnaciri-/Desktop/Inception/volumes/mariadb
	rm -rf /Users/hnaciri-/Desktop/Inception/volumes/wordpress
	docker volume rm -f srcs_db_data srcs_wp_data
