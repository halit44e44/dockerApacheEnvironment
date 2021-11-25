FROM php:8.0.1-apache

RUN apt-get update -y

RUN apt-get install -y libcurl4-openssl-dev pkg-config libssl-dev


RUN pecl install mongodb

RUN touch /usr/local/etc/php/conf.d/mongodb.ini
RUN echo extension=mongodb > /usr/local/etc/php/conf.d/mongodb.ini
