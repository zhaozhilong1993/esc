# Using a compact OS
FROM daocloud.io/nginx:1.11-alpine
#FROM debian:jessie

MAINTAINER Golfen Guo <golfen.guo@daocloud.io>

# Add 2048 stuff into Nginx server

EXPOSE 80

# Start Nginx and keep it running background and start php
CMD ["nginx", "-g", "daemon off;"]
