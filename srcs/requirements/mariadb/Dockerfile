FROM alpine:3.18
RUN apk update && apk add mariadb mariadb-client openrc
RUN openrc
RUN touch /run/openrc/softlevel
COPY conf/mdb.cnf /etc/my.cnf.d/my.cnf
RUN /etc/init.d/mariadb setup
COPY tools/mdb_setup.sh /
RUN chmod +x mdb_setup.sh
EXPOSE 3306
ENTRYPOINT ["/mdb_setup.sh"]