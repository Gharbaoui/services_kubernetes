service mariadb start
mysql -e "CREATE USER 'mohamed'@'%' IDENTIFIED BY '1234';"
mysql -e "CREATE DATABASE mohamed_db;"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'mohamed'@'%';"
mysql -e "FLUSH PRIVILEGES"
tail -f /dev/null
