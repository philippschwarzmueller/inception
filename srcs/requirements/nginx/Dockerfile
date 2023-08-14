FROM alpine:3.18
RUN apk update && apk add nginx openssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-keyout /etc/ssl/private/nginx-selfsigned.key \
	-out /etc/ssl/certs/nginx-selfsigned.crt \
	-subj "/C=DE/ST=Wuerttemberg/L=Heilbronn/O=42ggmbh/OU=students/CN=pschwarz"
COPY conf/nginx.conf /etc/nginx/
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]