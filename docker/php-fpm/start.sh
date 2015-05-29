#!/bin/bash
set -e
set -x

ep /etc/php5/fpm/php-fpm.conf
/var/www/init --env=$ENVIRONMENT --overwrite=n

php5-fpm -y /etc/php5/fpm/php-fpm.conf

exit $?