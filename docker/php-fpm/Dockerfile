FROM app_php

# Initialization and Startup Script
ADD start.sh /start.sh
RUN chmod 755 /start.sh

WORKDIR /var/www/

COPY php-fpm.conf /etc/php5/fpm/
COPY php.ini /etc/php5/fpm/

EXPOSE 9000

CMD ["/bin/bash", "/start.sh"]