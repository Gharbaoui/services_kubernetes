/etc/init.d/mariadb setup
service mariadb start
mysql -e "CREATE USER 'mohamed'@'%' IDENTIFIED BY '1234';"
mysql -e "CREATE DATABASE mohamed_db;"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'mohamed'@'%';"
mysql -e "FLUSH PRIVILEGES"
service mariadb restart
echo "mariadb started"
tail -f /dev/null
