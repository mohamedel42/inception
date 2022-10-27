FROM debian:buster

RUN apt-get update && \
	apt-get install -y vsftpd openssl procps

RUN openssl req -new -newkey rsa:2048 -nodes -days 365 -x509 \
	-subj "/C=FR/ST=IDF/L=Lyon/O=42/OU=Federation/CN=localhost" \
	-keyout /etc/ssl/private/vsftpd.key -out /etc/ssl/certs/vsftpd.crt

COPY ./conf/vsftpd.conf /etc/
COPY ./conf/start.sh /

CMD bash /start.sh