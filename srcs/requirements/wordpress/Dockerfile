FROM alpine:3.18
RUN apk update && apk add php81-common \
php81-session \
php81-iconv \
php81-json \
php81-gd \
php81-curl \
php81-xml \
php81-mysqli \
php81-imap \
php81-cgi \
fcgi \
php81-pdo \
php81-pdo_mysql \
php81-soap \
php81-posix \
php81-gettext \
php81-ldap \
php81-ctype \
php81-dom \
php81-simplexml \
php81-fpm
COPY tools/setup.sh /setup.sh
RUN chmod +x /setup.sh; /setup.sh
RUN apk update && apk add mariadb-client
ENTRYPOINT [ "sleep", "infinity" ]