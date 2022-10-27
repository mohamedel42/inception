mkdir /var/www/wordpress
cd /var/www/wordpress
mv /wp-config.php ./

while ! nc -vz mariadb 3306; do sleep 1; done

sleep 5

wp core download --allow-root
wp core install --url="https://$DOMAIN_NAME" --title="ENFIN/ $1" --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASS --admin_email=$ADMIN_EMAIL --allow-root
wp user create $USER_NAME $USER_EMAIL --user_pass=$USER_PASS --role=editor --allow-root

#wp plugin install redis-cache --activate --allow-root

chown www-data:www-data /var/www
chmod 555 /var/www

mkdir -p /run/php/
exec php-fpm7.3 -F
