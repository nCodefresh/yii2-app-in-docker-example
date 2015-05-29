FROM app_base

RUN apt-get install -y curl nginx-full

RUN rm /etc/nginx/sites-enabled/*

COPY frontend.conf /etc/nginx/sites-enabled/frontend.conf
COPY backend.conf /etc/nginx/sites-enabled/backend.conf

CMD [ \
    "/usr/local/bin/ep", "-v", \
       "/etc/nginx/sites-enabled/*", \
        "--", \
    "/usr/sbin/nginx", "-g", "daemon off;" \
]