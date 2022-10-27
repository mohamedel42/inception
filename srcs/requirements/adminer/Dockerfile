FROM debian:buster

RUN apt-get -y update \
    && apt-get -y install unzip wget curl netcat procps \
    && apt-get -y install php7.3 php7.3-fpm php7.3-mysql php-common php7.3-common php7.3-json php7.3-readline

COPY conf/www.conf /etc/php/7.3/fpm/pool.d
COPY conf/start.sh ./

CMD bash /start.sh