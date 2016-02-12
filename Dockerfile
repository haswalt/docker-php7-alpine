FROM alpine:3.3
MAINTAINER Harry Walter

RUN echo "@testing http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk add --update php7@testing php7-xml@testing php7-xsl@testing php7-pdo_mysql@testing \
    php7-mcrypt@testing php7-curl@testing php7-json@testing php7-fpm@testing php7-phar@testing php7-openssl@testing \
    php7-mysqlnd@testing php7-ctype@testing && \
    rm -fr /var/cache/apk/*

RUN ln -s /usr/bin/php7 /usr/bin/php

WORKDIR /srv

