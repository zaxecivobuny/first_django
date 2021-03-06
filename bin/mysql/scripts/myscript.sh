cd $1
if ! [ -e tmp ] ;then
  mkdir tmp
fi
chmod 777 tmp

scripts/mysql_install_db --port=3307 --socket=/Users/zaxecivobuny/first_django/bin/mysql/tmp/mysql.sock  --datadir=/Users/zaxecivobuny/first_django/bin/mysql/data --pid-file=/Users/zaxecivobuny/first_django/bin/mysql/data/mysqld.pid > /dev/null

if [ `uname -s` = "SunOS" ]; then
    U=`id|sed -e s/uid=//g -e s/\(.*//g`
else
    U=`id -u`
fi

if [ $U = 0 ]; then
   chown -R root .
   chgrp -R root .
   
   # External data directory - T3532
   cd /Users/zaxecivobuny/first_django/bin/mysql/data
   chown -R mysql .
   chgrp -R root .
   cd $1
fi



/Users/zaxecivobuny/first_django/bin/mysql/scripts/ctl.sh start mysql > /dev/null
sleep 10
bin/mysql -S /Users/zaxecivobuny/first_django/bin/mysql/tmp/mysql.sock -u root -e "UPDATE mysql.user SET Password=PASSWORD('$2') WHERE User='root';"
bin/mysql -S /Users/zaxecivobuny/first_django/bin/mysql/tmp/mysql.sock -u root -e "DELETE FROM mysql.user WHERE User='';"
bin/mysql -S /Users/zaxecivobuny/first_django/bin/mysql/tmp/mysql.sock -u root -e "FLUSH PRIVILEGES;"

