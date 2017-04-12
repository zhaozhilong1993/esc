#!/bin/bash


httpd

mysql_install_db --datadir=/var/lib/mysql/
chown mysql.mysql -R /var/lib/mysql/

su - mysql -s /bin/bash -c "/usr/libexec/mysqld --basedir=/usr --datadir=/var/lib/mysql --plugin-dir=/usr/lib64/mysql/plugin --log-error=/var/log/mariadb/mariadb.log --pid-file=/var/run/mariadb/mariadb.pid --socket=/var/lib/mysql/mysql.sock" &
