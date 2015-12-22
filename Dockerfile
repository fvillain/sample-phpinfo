FROM php:7.0-fpm
MAINTAINER Francois Villain <f.villain@linkbynet.com>

COPY index.php /var/www/html/

VOLUME ["/var/www/html"]
CMD ["php-fpm"]
