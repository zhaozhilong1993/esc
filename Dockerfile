# Using a compact OS
FROM daocloud.io/nginx:1.11-alpine
FROM daocloud.io/php:5.6-apache
COPY config/php.ini /usr/local/etc/php
COPY src/ /var/www/html/

MAINTAINER Golfen Guo <golfen.guo@daocloud.io>

# Add 2048 stuff into Nginx server
COPY . /usr/share/nginx/html

EXPOSE 80

# Start Nginx and keep it running background and start php
CMD sed -i "s/ContainerID: /ContainerID: "$(hostname)"/g" /usr/share/nginx/html/index.html && nginx -g "daemon off;"