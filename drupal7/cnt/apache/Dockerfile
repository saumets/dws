# Official Repository - Apache
# https://hub.docker.com/_/httpd/
FROM php:5.6-apache

# Activate mod_rewrite
RUN a2enmod rewrite

RUN apt-get update

# we need mysql client so that drush can connect
RUN apt-get install -y vim \
	git
	mysql-client

# install the PHP extensions we need
RUN apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* \
	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
	&& docker-php-ext-install gd
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo pdo_mysql
RUN docker-php-ext-install zip

#Drush - Drupal specific
RUN \
curl -sS https://getcomposer.org/installer | php && \
mv composer.phar /usr/local/bin/composer && \
composer global require drush/drush:7.* && \
export PATH="$HOME/.composer/vendor/bin:$PATH"

RUN apt-get clean

# Add our virtual hosts file
ADD sites-enabled/ /etc/apache2/sites-enabled

#ENV APACHE_SERVERALIAS docker.localhost
#ENV APACHE_DOCUMENTROOT /var/www/html
#ENV APACHE_SERVERNAME localhost
#ENV APACHE_SERVERADMIN admin@localhost
#ENV APACHE_LOG_DIR /var/log/apache
