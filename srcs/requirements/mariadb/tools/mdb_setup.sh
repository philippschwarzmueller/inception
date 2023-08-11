#!/bin/sh
echo > maria "CREATE DATABASE wp_db;
CREATE USER 'wp-user'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON wp_db.* TO 'wp-user'@'%';
FLUSH PRIVILEGES;"
#ALTER USER 'root'@'localhost' IDENTIFIED BY 'root-pwd';

rc-service mariadb start;
mariadb -u root < maria;
mysqladmin -u root shutdown;
mariadbd -u root --bind-address=0.0.0.0;