FROM alpine:3.8

LABEL maintainer="Cristian Angulo Nova <cristianangulonova@gmail.com>"

RUN apk add --update \
    php7-fpm \
    php7-apcu \
    php7-ctype \
    php7-curl \
    php7-dom \
    php7-gd \
    php7-iconv \
    php7-imagick \
    php7-json \
    php7-intl \
    php7-mcrypt \
    php7-fileinfo\
    php7-mbstring \
    php7-opcache \
    php7-openssl \
    php7-pdo \
    php7-pdo_mysql \
    php7-mysqli \
    php7-xml \
    php7-zlib \
    php7-phar \
    php7-tokenizer \
    php7-session \
    php7-simplexml \
    php7-xdebug \
    php7-xmlwriter \
    make \
    curl

RUN rm -rf /var/cache/apk/* && rm -rf /tmp/* && \
    curl --insecure https://getcomposer.org/composer.phar -o /usr/bin/composer && chmod +x /usr/bin/composer && \
    composer global require hirak/prestissimo:0.3.8

COPY --from=wordpress:cli-2.0.1-php7.1 /usr/local/bin/wp /usr/local/bin/wp

ADD app.ini /etc/php7/conf.d/
ADD app.ini /etc/php7/cli/conf.d/
ADD xdebug.ini  /etc/php7/conf.d/

ADD app.pool.conf /etc/php7/php-fpm.d/

CMD ["php-fpm7", "-F"]

WORKDIR /var/www/wordpress
EXPOSE 9000
