FROM commandeonline/phalcon-cli

MAINTAINER Commande-Online.fr SAS

RUN sed -i '/^listen/c \
listen = 0.0.0.0:9000' /etc/php5/fpm/pool.d/www.conf

RUN apt-get clean

RUN touch /var/log/php-fpm.log
RUN ln -sf /dev/stdout /var/log/php-fpm.log

RUN mkdir /usr/share/php5-fpm
VOLUME /usr/share/php5-fpm

ENTRYPOINT ["php5-fpm","-F"]