FROM php:8.2-cli

RUN apt-get update && apt-get install -y \
    git unzip zip libzip-dev libpq-dev libonig-dev \
    && docker-php-ext-install zip pdo pdo_mysql pdo_pgsql

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer
