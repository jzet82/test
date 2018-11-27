FROM php:7.1-fpm
MAINTAINER Radek Ziemiacki <r.ziemiacki@gmail.com>

RUN apt-get update && apt-get install -y \
  cron \
  git \
  nodejs \
  libfreetype6-dev \
  libicu-dev \
  libjpeg62-turbo-dev \
  libmcrypt-dev \
  libxslt1-dev \
  mysql-client \
  vim \
  zip

RUN docker-php-ext-configure \
  gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/

RUN docker-php-ext-install \
  bcmath \
  gd \
  intl \
  mbstring \
  mcrypt \
  opcache \
  mysqli \
  pdo_mysql \
  soap \
  xsl \
  zip

RUN pecl install xdebug \
  && docker-php-ext-enable xdebug

RUN curl -sS https://getcomposer.org/installer | \
  php -- --install-dir=/usr/local/bin --filename=composer

RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN chown -R www-data:www-data /var/www
RUN cd /var/www/html \
    && find /var/www -type f -exec chmod u+w {} \; \
    && find /var/www -type d -exec chmod u+w {} \;

ADD etc/php-fpm.ini /usr/local/etc/php/conf.d/magento.ini
ADD composer/auth.json /root/.composer/auth.json

WORKDIR /var/www/html