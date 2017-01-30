FROM xataz/nginx-php

ARG VERSION=v0.8.3

RUN apk add -U git \
    && cd /tmp \
    && curl -s http://getcomposer.org/installer | php \
    && mv /tmp/composer.phar /usr/bin/composer \
    && chmod +x /usr/bin/composer


RUN git clone -b v0.8.3 https://github.com/shaarli/Shaarli.git shaarli

RUN cd /shaarli && composer update --no-dev

RUN cd /shaarli && chmod +w cache pagecache data tmp

COPY nginx/sites-enabled/shaarli.conf /nginx/sites-enabled/

COPY nginx/conf.d/*.conf /nginx/conf.d/

COPY startup /usr/local/bin/

RUN chmod +x /usr/local/bin/startup

VOLUME /shaarli/data

ENTRYPOINT ["/usr/local/bin/startup"]
CMD ["/bin/s6-svscan", "/etc/s6.d"]