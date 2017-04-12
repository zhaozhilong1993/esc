# Using a compact OS
#FROM daocloud.io/nginx:1.11-alpine
#FROM debian:jessie
FROM local/centos-lamp-3

MAINTAINER Golfen Guo <golfen.guo@daocloud.io>

# Add 2048 stuff into Nginx server
COPY . /var/www/html/

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY start_process.sh /usr/bin/

RUN mkdir -p /var/www/html/temp/caches
RUN chown apache.apache -R /var/www/html/

ENTRYPOINT start_process.sh && /bin/bash
EXPOSE 22 80
# CMD ["/usr/bin/supervisord"]
