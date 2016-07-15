FROM quay.io/vektorcloud/php-fpm:latest

ENV PGADMIN_URL=http://downloads.sourceforge.net/phppgadmin/phpPgAdmin-5.1.tar.gz

RUN apk --no-cache add php-cli php-mcrypt php-curl php-pgsql postgresql-contrib
RUN wget $PGADMIN_URL -qO - | tar zxf - && \
    mkdir /srv && mv -v phpPgAdmin* /srv/www
