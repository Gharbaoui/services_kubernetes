From alpine
Run apk update && apk  upgrade
Run apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session
Run apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session
Run wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.zip
Run unzip phpMyAdmin-5.0.4-all-languages.zip
Run rm phpMyAdmin-5.0.4-all-languages.zip
Run mv phpMyAdmin-5.0.4-all-languages/ phpmyadmin
Run rm phpmyadmin/config.sample.inc.php
Copy config.inc.php ./phpmyadmin/
Copy start-phpmyadmin.sh ./
Expose 5000
CMD ["sh", "./start-phpmyadmin.sh"]
