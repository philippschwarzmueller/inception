FROM alpine:3.18
RUN apk add nginx
COPY server_cfg.conf /etc/nginx/sites-available/default
EXPOSE 80/tcp
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]