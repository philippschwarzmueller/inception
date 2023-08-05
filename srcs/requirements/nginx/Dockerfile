FROM alpine:3.18
RUN apk update && apk add nginx
COPY conf/nginx.conf /etc/nginx/
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]