# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    script.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hnaciri- <hnaciri-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/23 11:09:20 by hnaciri-          #+#    #+#              #
#    Updated: 2023/02/24 20:54:52 by hnaciri-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

cp /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php

sed -i "s/localhost/$MYSQL_HOSTNAME/g" /var/www/html/wordpress/wp-config.php
sed -i "s/database_name_here/$MYSQL_DATABASE/g" /var/www/html/wordpress/wp-config.php
sed -i "s/username_here/$MYSQL_USER/g" /var/www/html/wordpress/wp-config.php
sed -i "s/password_here/$MYSQL_PASSWORD/g" /var/www/html/wordpress/wp-config.php

# wordpress users

# haitham : hnaciri-2001
# hnaciri- : haitham-1337
