FROM docker-locale/base

# set noninteractive installation
ARG DEBIAN_FRONTEND=noninteractive

ENV TZ=Europe/Rome

RUN apt-get update && apt-get install -y software-properties-common
RUN LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php

RUN apt-get update -y && apt-get install -y php8.1 \
    php8.1-common \
    php8.1-mysql \
    php8.1-pdo \
    php8.1-gmp \
    php8.1-ldap \
    php8.1-curl \
    php8.1-intl \
    php8.1-mbstring \
    php8.1-xmlrpc \
    php8.1-gd \
    php8.1-bcmath \
    php8.1-xml \
    php8.1-cli \
    php8.1-fpm \
    php8.1-soap \
    php8.1-curl \
    php8.1-xml \
    php8.1-zip