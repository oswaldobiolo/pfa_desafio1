FROM php:7.4-fpm

COPY ./www/index.php /var/www/html

#VOLUME [ "./www/", "/var/www/html"  ]

RUN docker-php-ext-install mysqli