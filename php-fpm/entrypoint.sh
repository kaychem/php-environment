#!/bin/sh
php-fpm && supervisord -n -c /etc/supervisord.conf