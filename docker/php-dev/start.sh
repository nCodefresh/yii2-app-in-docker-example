#!/bin/bash
set -e
set -x

# save env for ssh connections
env | grep _ | sed -e 's/^/export /' >> /root/.bashrc

echo "$NGINX_PORT_80_TCP_ADDR shopfront.docker" >> /etc/hosts
echo "$NGINX_PORT_80_TCP_ADDR backend.shopfront.docker" >> /etc/hosts
echo "$NGINX_PORT_80_TCP_ADDR api.shopfront.docker" >> /etc/hosts

ep /etc/php5/fpm/php-fpm.conf
/var/www/init --env=$ENVIRONMENT --overwrite=n
/usr/sbin/sshd -D &

php -d -S 0.0.0.0:8000 -t /var/www &
php5-fpm -y /etc/php5/fpm/php-fpm.conf

exit $?