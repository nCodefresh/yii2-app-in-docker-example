FROM app_php

# Initialization and Startup Script
ADD docker/php-fpm/start.sh /start.sh
RUN chmod 755 /start.sh

WORKDIR /var/www/

COPY docker/php-fpm/php-fpm.conf /etc/php5/fpm/
COPY docker/php-fpm/php.ini /etc/php5/fpm/

EXPOSE 9000

CMD ["/bin/bash", "/start.sh"]