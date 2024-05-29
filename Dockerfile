FROM php:8.0-apache

COPY ./latest.tar.gz /
RUN tar -xzvf /latest.tar.gz -C /var/www/html/ --strip-components=1 && \
    rm -f /latest.tar.gz && \
    docker-php-ext-install mysqli

COPY ./wp-config.php /var/www/html/

CMD ["apache2-foreground"]

