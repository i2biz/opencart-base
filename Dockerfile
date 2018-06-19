FROM php:7.2.6-apache-stretch

COPY setup-system.sh /opt/setup-system.sh
RUN /opt/setup-system.sh

VOLUME /var/www/html/
VOLUME /usr/local/etc/php
VOLUME /var/www/html/system/storage/
VOLUME /var/www/html/image/
