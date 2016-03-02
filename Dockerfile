FROM php:7.0-fpm
MAINTAINER Francois Villain <f.villain@linkbynet.com>

USER root
RUN set -ex \
  && cd /usr/local/etc/php-fpm.d \
  && sed -e -i 's/user = www-data/user = root/g' www.conf
  && sed -e -e 's/group = www-data/group = root/g' www.conf

COPY index.php /var/www/html/

VOLUME ["/var/www/html"]
CMD ["php-fpm","-R"]
