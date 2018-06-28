
#
#--------------------------------------------------------------------------
# Image Setup
#--------------------------------------------------------------------------
#

FROM bluepolaris/php72:v1.0.5

#
#--------------------------------------------------------------------------
# Final Touch
#--------------------------------------------------------------------------
#

COPY ./laravel.ini /usr/local/etc/php/conf.d
COPY ./xlaravel.pool.conf /usr/local/etc/php-fpm.d/

# Copy opcache configration
COPY ./opcache.ini /usr/local/etc/php/conf.d/opcache.ini

# Add the composer.json
COPY ./composer.json /home/laradock/.composer/composer.json

# Add supervisord.conf
COPY supervisord.conf /etc/supervisord.conf

USER root

# Clean up
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    rm /var/log/lastlog /var/log/faillog

RUN usermod -u 1000 www-data

WORKDIR /var/www

CMD ["php-fpm"]

EXPOSE 9000
