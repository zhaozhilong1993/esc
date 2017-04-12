# Using a compact OS
#FROM daocloud.io/nginx:1.11-alpine
#FROM debian:jessie
FROM local/centos-lamp-2

MAINTAINER Golfen Guo <golfen.guo@daocloud.io>

# Add 2048 stuff into Nginx server
COPY . /var/www/html/
RUN mkdir /var/www/html/temp/
RUN chown apache.apache -R /var/www/html/

EXPOSE 80

# Start Nginx and keep it running background and start php
#CMD ["nginx", "-g", "daemon off;"]
RUN httpd
