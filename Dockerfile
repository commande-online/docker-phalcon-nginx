FROM commandeonline/phalcon-cli

MAINTAINER Commande-Online.fr SAS

RUN ls /etc/php/5.6

RUN sed -i '/^listen/c \
listen = 0.0.0.0:9000' /etc/php/5.6/fpm/pool.d/www.conf
#RUN sed -i '/^listen/c \
#listen = 0.0.0.0:10000' /etc/php/7.0/fpm/pool.d/www.conf

RUN apt-get clean

RUN touch /var/log/php-fpm.log
RUN ln -sf /dev/stdout /var/log/php-fpm.log

RUN mkdir /run/php

RUN mkdir /usr/share/php5-fpm
VOLUME /usr/share/php5-fpm

ENTRYPOINT ["php-fpm5.6","-F"]