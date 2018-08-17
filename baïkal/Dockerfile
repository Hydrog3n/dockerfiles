FROM alpine:3.8

LABEL description "Baïkal is a Cal and CardDAV server, based on sabre/dav, that includes an administrative interface for easy management." \
    maintainer="Loïc Vaillé <contact@loicvaille.ovh>"

ARG VERSION=0.4.6

ENV UID=991 GID=991 LOG_TO_STDOUT=true

RUN echo "@community https://nl.alpinelinux.org/alpine/v3.8/community" >> /etc/apk/repositories \
    && apk -U upgrade \
    && apk add -t build-dependencies \
        gnupg \
        openssl \
        wget \
        make \
        rsync \
        zip \
    && apk add \
        ca-certificates \
        nginx \
        s6 \
        su-exec \
        php7@community \
        php7-mbstring@community \
        php7-simplexml@community \
        php7-xmlwriter@community \
        php7-xmlreader@community \
        php7-tokenizer@community \
        php7-fpm@community \
        php7-curl@community \
        php7-ctype@community \
        php7-iconv@community \
        php7-xml@community \
        php7-dom@community \
        php7-openssl@community \
        php7-json@community \
        php7-zlib@community \
        php7-phar@community \
        php7-pdo_pgsql@community \
        php7-pdo_mysql@community \
        php7-pdo_sqlite@community \
        php7-sqlite3@community \
        php7-session@community \
    && cd /tmp \
    && wget -q https://github.com/sabre-io/Baikal/archive/master.zip \
    && unzip -q /tmp/master.zip \
    && mv Baikal-master /baikal \
    && cd /baikal && wget -q https://getcomposer.org/download/1.7.2/composer.phar \ 
    && mv composer.phar /usr/local/bin/composer && chmod +x /usr/local/bin/composer \
    && make \
    && find /baikal -type d -exec chmod 755 {} \; \
    && find /baikal -type f -exec chmod 644 {} \; \
    && apk del build-dependencies \
    && rm -rf /var/cache/apk/* /tmp/* /usr/local/bin/composer

COPY rootfs /
RUN chmod +x /usr/local/bin/run.sh /services/*/run /services/.s6-svscan/*

EXPOSE 8888
CMD ["run.sh"]