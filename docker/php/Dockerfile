FROM ncodefresh/base:latest

RUN apt-get -y install supervisor php5-fpm php5-cli php5-mcrypt php5-msgpack php5-intl php5-curl php5-mysql --no-install-recommends

RUN mkdir -p /var/log/supervisor

COPY docker/php/php.ini /etc/php5/cli/
COPY docker/php/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord"]