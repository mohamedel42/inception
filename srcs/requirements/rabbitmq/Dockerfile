FROM debian:buster

COPY ./conf/receiver.js ./
COPY ./conf/sender.js ./
COPY ./conf/start.sh ./

RUN apt-get update && \
    apt-get install -y wget gnupg gnupg1 gnupg2 curl software-properties-common && \
    apt-get install -y erlang erlang-nox rabbitmq-server

RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && \
    apt-get install -y nodejs

CMD bash start.sh