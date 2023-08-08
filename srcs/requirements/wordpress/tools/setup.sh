#create folder for extraction
mkdir -p "/usr/share/webapps/"
#download php from source
#curl -fsSL -o php.tar.xz "http://www.php.net/distribution/php-8.1.22.tar.xz"
#extract php
#tar -Jxf /php.tar.xz -C "/usr/src/php"
cd "/usr/share/webapps/"
wget "http://wordpress.org/latest.tar.gz"
tar -xzvf latest.tar.gz
rm latest.tar.gz
#ln -s /usr/share/webapps/wordpress/ /var/www/
# in /etc/php81/php-fpm.d/www.conf change listen to 9000 only - thanks ole
# php-fpm81 - to start the fpm
sed -i "s/listen = 127.0.0.1:9000/listen = 9000/g" /etc/php81/php-fpm.d/www.conf
sleep 1
#needs to be run in foreground entrypoint later
php-fpm81
