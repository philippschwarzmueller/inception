FROM alpine:3.18
RUN apk update && apk add mariadb mariadb-client openrc
RUN openrc
RUN touch /run/openrc/softlevel
COPY conf/mdb.cnf /etc/my.cnf.d/my.cnf
RUN /etc/init.d/mariadb setup
# then start it with rc-service mariadb start

# You can start the MariaDB daemon with:
# cd '/usr' ; /usr/bin/mariadb-safe --datadir='/var/lib/mysql'

# to start mariadbd at boot time you have to copy support-files/mariadb.service 
# to the right place for your system

# default wise there are two all-privilege user accounts: root and mysql 
# @ localhost, both without pwd but you need to be in the corresponding usergroup
ENTRYPOINT [ "sleep", "infinity" ]