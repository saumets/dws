# Official Repository - PHP
# https://hub.docker.com/_/php/
FROM php:5.6-apache

# Activate mod_rewrite
RUN a2enmod rewrite

# install the PHP extensions we need
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* \
	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
	&& docker-php-ext-install gd
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo pdo_mysql

# Add our virtual hosts file
ADD sites-enabled/ /etc/apache2/sites-enabled

#ENV APACHE_SERVERALIAS docker.localhost
#ENV APACHE_DOCUMENTROOT /var/www/html
#ENV APACHE_SERVERNAME localhost
#ENV APACHE_SERVERADMIN admin@localhost
#ENV APACHE_LOG_DIR /var/log/apache
