#!/bin/sh

cd /var/www

php artisan config:cache
php artisan event:cache
php artisan view:cache
php artisan route:cache
php artisan config:clear
php artisan route:clear

cron start
/usr/bin/supervisord -c /etc/supervisord.conf
