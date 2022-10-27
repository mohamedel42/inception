useradd -p $(openssl passwd -crypt $FTP_PASS) $FTP_USER
echo $FTP_USER | tee -a /etc/vsftpd.user_list

usermod -d /var/www $FTP_USER

exec vsftpd /etc/vsftpd.conf