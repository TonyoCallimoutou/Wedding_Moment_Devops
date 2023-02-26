FROM php:7.2.2-apache

# Install the PHP MySQL extension
RUN docker-php-ext-install mysqli 