FROM alpine:3.18
RUN apk add nginx
COPY ./conf/server_cfg.conf /etc/nginx/sites-available/default
EXPOSE 443/tcp
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]