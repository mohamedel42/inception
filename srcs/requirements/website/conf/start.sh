mkdir /var/www/website

chown www-data:www-data /var/www
chmod 555 /var/www

if [ ! -f /var/www/website/index.html ]; then
    mv ./index.html /var/www/website
fi

if [ ! -f /var/www/website/style.css ]; then
    mv ./style.css /var/www/website
fi