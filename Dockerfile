FROM nginx

WORKDIR /var/www/html

COPY . /var/www/html

COPY default.conf /etc/nginx/conf.d/default.conf

# Configure PHP-FPM
COPY fpm-pool.conf /etc/php7/php-fpm.d/www.conf
