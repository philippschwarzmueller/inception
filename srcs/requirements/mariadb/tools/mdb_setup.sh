$MARIA_DB_SETUP = `
CREATE DATABSE wp_db;
CREATE USER 'wp-user'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON wp_db.* TO 'wp-user'@'%';
FLUSH PRIVILEGES;
`
#ALTER USER 'root'@'localhost' IDENTIFIED BY 'root-pwd';

rc-service mariadb start
mariadb < MARIA_DB_SETUP
rc-service mariadb stop
#mariadbd -u root --bind-address=0.0.0.0