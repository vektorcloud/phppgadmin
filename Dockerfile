FROM quay.io/vektorcloud/php-fpm:latest

ENV PHPPGADMIN_URL https://github.com/phppgadmin/phppgadmin/releases/download/REL_7-12-1/phpPgAdmin-7.12.1.tar.gz

RUN apk --no-cache add postgresql-contrib php7-mbstring php7-pgsql
RUN wget $PHPPGADMIN_URL -qO - | tar zxf - && \
    mkdir -p /srv && mv -v phpPgAdmin* /srv/www
