FROM php:7.4-fpm-alpine

COPY --from=composer /usr/bin/composer /usr/bin/composer

# XDEBUG
RUN apk add --no-cache $PHPIZE_DEPS \
    && pecl install xdebug-2.9.2 \
    && docker-php-ext-enable xdebug

# set working directory
WORKDIR /var/www/html

# copy code
COPY ./src /var/www/html

# add group and user
RUN addgroup -g 1000 php-group
RUN adduser -u 1000 -G php-group -h /home/php-user -D php-user
RUN chown -R php-user:php-group /var/www/html
RUN chown -R php-user:php-group /var/log
USER php-user