#!/bin/sh

set -e

apt-get update -q
apt-get upgrade -qy

apt-get install -qy libcurl4-openssl-dev zlib1g-dev unzip libgd-dev libjpeg-dev libpng-dev libfreetype6-dev netcat-traditional nano vim libmcrypt-dev mcrypt

docker-php-ext-configure gd --with-jpeg-dir=/usr/lib --with-freetype-dir=/usr/lib

docker-php-ext-install curl zip gd pdo pdo_mysql

rm -rf /var/lib/apt/lists/
apt-get clean
