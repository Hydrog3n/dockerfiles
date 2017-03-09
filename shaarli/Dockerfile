FROM xataz/nginx-php

MAINTAINER hydrog3n <contact@loicvaille.ovh>

ARG VERSION_SHAARLI=v0.8.4
ARG VERSION_MATERIAL=v0.8.3
ARG VERSION_SHAARLI2TWITTER=v1.3.0

RUN apk add -U git \
    && cd /tmp \
    && curl -s http://getcomposer.org/installer | php \
    && mv /tmp/composer.phar /usr/bin/composer \
    && chmod +x /usr/bin/composer \
    && git clone -b ${VERSION_SHAARLI} https://github.com/shaarli/Shaarli.git /shaarli \
    && wget https://github.com/kalvn/Shaarli-Material/archive/${VERSION_MATERIAL}.tar.gz \
    && tar xzf ${VERSION_MATERIAL}.tar.gz \
    && mv Shaarli-Material-${VERSION_MATERIAL}/material /shaarli/tpl/ \
    && rm -rf ${VERSION_MATERIAL}.tar.gz Shaarli-Material-${VERSION_MATERIAL} \
    && wget https://github.com/ArthurHoaro/shaarli2twitter/archive/${VERSION_SHAARLI2TWITTER}.tar.gz \
    && tar xzf ${VERSION_SHAARLI2TWITTER}.tar.gz \
    && mv shaarli2twitter-${VERSION_SHAARLI2TWITTER}/shaarli2twitter /shaarli/plugins/ \
    && rm -rf ${VERSION_SHAARLI2TWITTER}.tar.gz shaarli2twitter-${VERSION_SHAARLI2TWITTER} \
    && cd /shaarli && composer update --no-dev \
    && cd /shaarli && chmod +w cache pagecache data tmp \
    && apk del git \
    && rm -rf /tmp/* /var/cache/apk/* /usr/src/* /usr/bin/composer

COPY nginx/sites-enabled/shaarli.conf /nginx/sites-enabled/

COPY nginx/conf.d/*.conf /nginx/conf.d/

COPY startup /usr/local/bin/

RUN chmod +x /usr/local/bin/startup

VOLUME /shaarli/data /shaarli/tpl /shaarli/plugins

ENTRYPOINT ["/usr/local/bin/startup"]
CMD ["/bin/s6-svscan", "/etc/s6.d"]
