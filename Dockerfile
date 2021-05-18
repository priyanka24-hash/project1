FROM alpine:latest

RUN apk update && apk add apache2 && apk add apache2-proxy && apk add apache2-ssl && m -rf /var/cache/apk/*

copy . /var/www/html/

EXPOSE 80

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

