FROM php:7.4-apache

# XDEBUG
RUN pecl install xdebug-2.9.2 \
    && docker-php-ext-enable xdebug

# set working directory
WORKDIR /var/www/html

# copy code
COPY ./src /var/www/html

# port
EXPOSE 80

# start apache in background
# CMD ["apachectl","-D", "FOREGROUND"]] 

RUN useradd -m php-user
RUN groupadd php-group
RUN usermod -a -G php-group php-user
RUN chown -R php-user:php-group /var/www/html
RUN chown -R php-user:php-group /var/log
USER php-user