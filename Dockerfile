FROM alpine:latest
RUN apk update
RUN apk add bash
RUN apk add apache2
RUN rm /var/www/localhost/htdocs/index.html
RUN rm -rf /var/cache/apk/*
COPY ./Static_Portfolio/ /var/www/localhost/htdocs/index.html
COPY ./Me_from_Ledo_squad.jpg/ /var/www/localhost/htdocs/
CMD ["httpd, "-D", "FOREGROUND"]
