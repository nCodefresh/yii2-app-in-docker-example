FROM ncodefresh/base:latest

RUN apt-get install -y curl nginx-full

RUN rm /etc/nginx/sites-enabled/*

COPY docker/nginx/frontend.conf /etc/nginx/sites-enabled/frontend.conf
COPY docker/nginx/backend.conf /etc/nginx/sites-enabled/backend.conf

CMD [ \
    "/usr/local/bin/ep", "-v", \
       "/etc/nginx/sites-enabled/*", \
        "--", \
    "/usr/sbin/nginx", "-g", "daemon off;" \
]