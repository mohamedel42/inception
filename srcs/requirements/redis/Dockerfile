FROM debian:buster

RUN apt-get -y update \
    && apt-get -y install procps netcat redis-server

CMD redis-server