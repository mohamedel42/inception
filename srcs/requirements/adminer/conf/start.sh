mkdir /var/www/adminer
cd /var/www/adminer

wget "http://www.adminer.org/latest.php" -O /var/www/adminer/index.php

chown -R www-data:www-data /var/www/adminer/index.php
chmod 755 /var/www/adminer/index.php

mkdir -p /run/php/
exec php-fpm7.3 -F
