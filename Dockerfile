FROM nginx

# Install packages
RUN apt-get php7 php7-fpm php7-mysqli php7-json php7-openssl php7-curl \
    php7-zlib php7-xml php7-phar php7-intl php7-dom php7-xmlreader php7-ctype php7-session \
    php7-mbstring php7-gd nginx supervisor curl

WORKDIR /var/www/html

COPY . /var/www/html

COPY default.conf /etc/nginx/conf.d/default.conf

# Configure PHP-FPM
COPY fpm-pool.conf /etc/php7/php-fpm.d/www.conf
