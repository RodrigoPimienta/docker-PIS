FROM php:8.1-apache

ENV ACCEPT_EULA=Y

RUN a2enmod rewrite

RUN apt-get update && apt-get install -y nano wget gnupg2

# Enable session
RUN echo "session.save_path=\"/tmp\"" >> /usr/local/etc/php/php.ini

# Install xdebug driver
RUN pecl install xdebug
RUN docker-php-ext-enable xdebug
COPY ./config/xdebug/docker-php-ext-xdebug.ini /usr/local/etc/php/conf.d/


# Install SqlServer PHP driver
RUN cat /etc/os-release \
  && apt-get update \
  && curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - \
  && curl https://packages.microsoft.com/config/ubuntu/22.04/prod.list \
      > /etc/apt/sources.list.d/mssql-release.list \
  && apt-get install -y --no-install-recommends apt-transport-https \
  && apt-get update \
  && ACCEPT_EULA=Y apt-get -y --no-install-recommends install unixodbc-dev msodbcsql17

# Install PHP extensions
RUN docker-php-ext-install calendar
RUN docker-php-ext-install pdo_mysql \
  && pecl install sqlsrv pdo_sqlsrv \
  && docker-php-ext-enable sqlsrv pdo_sqlsrv


# RUN curl -sS https://getcomposer.org/installer -o composer-setup.php
# RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer
EXPOSE 9003
WORKDIR /var/www/html/
