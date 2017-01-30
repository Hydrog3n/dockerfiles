FROM xataz/nginx-php

ARG VERSION=v0.8.3

RUN apk add -U git \
    && cd /tmp \
    && curl -s http://getcomposer.org/installer | php \
    && mv /tmp/composer.phar /usr/bin/composer \
    && chmod +x /usr/bin/composer \
    && git clone -b v0.8.3 https://github.com/shaarli/Shaarli.git /shaarli \
    && git clone https://github.com/kalvn/Shaarli-Material.git \
    && mv Shaarli-Material/material /shaarli/tpl/ \
    && wget https://github.com/ArthurHoaro/shaarli2twitter/archive/v1.3.0.tar.gz \
    && tar xzf v1.3.0.tar.gz \
    && mv shaarli2twitter-1.3.0/shaarli2twitter /shaarli/plugins/ \
    && cd /shaarli && composer update --no-dev \
    && cd /shaarli && chmod +w cache pagecache data tmp \
    && rm -rf /tmp/* /var/cache/apk/* /usr/src/*

COPY nginx/sites-enabled/shaarli.conf /nginx/sites-enabled/

COPY nginx/conf.d/*.conf /nginx/conf.d/

COPY startup /usr/local/bin/

RUN chmod +x /usr/local/bin/startup

VOLUME /shaarli/data /shaarli/tpl

ENTRYPOINT ["/usr/local/bin/startup"]
CMD ["/bin/s6-svscan", "/etc/s6.d"]