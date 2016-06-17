#!/bin/sh
echo $DYLD_FALLBACK_LIBRARY_PATH | egrep "/Users/zaxecivobuny/first_django/bin/common" > /dev/null
if [ $? -ne 0 ] ; then
PATH="/Users/zaxecivobuny/first_django/bin/nodejs/bin:/Users/zaxecivobuny/first_django/bin/apps/django/bin:/Users/zaxecivobuny/first_django/bin/git/bin:/Users/zaxecivobuny/first_django/bin/python/bin:/Users/zaxecivobuny/first_django/bin/postgresql/bin:/Users/zaxecivobuny/first_django/bin/mysql/bin:/Users/zaxecivobuny/first_django/bin/sqlite/bin:/Users/zaxecivobuny/first_django/bin/subversion/bin:/Users/zaxecivobuny/first_django/bin/apache2/bin:/Users/zaxecivobuny/first_django/bin/common/bin:$PATH"
export PATH
DYLD_FALLBACK_LIBRARY_PATH="/Users/zaxecivobuny/first_django/bin/apps/django/lib/python2.7/site-packages:/Users/zaxecivobuny/first_django/bin/git/lib:/Users/zaxecivobuny/first_django/bin/python/lib:/Users/zaxecivobuny/first_django/bin/postgresql/lib:/Users/zaxecivobuny/first_django/bin/mysql/lib:/Users/zaxecivobuny/first_django/bin/sqlite/lib:/Users/zaxecivobuny/first_django/bin/subversion/lib:/Users/zaxecivobuny/first_django/bin/apache2/lib:/Users/zaxecivobuny/first_django/bin/common/lib:/usr/local/lib:/lib:/usr/lib:$DYLD_FALLBACK_LIBRARY_PATH"
export DYLD_FALLBACK_LIBRARY_PATH
fi

TERMINFO=/Users/zaxecivobuny/first_django/bin/common/share/terminfo
export TERMINFO
##### NODEJS ENV #####

export NODE_PATH=/Users/zaxecivobuny/first_django/bin/nodejs/lib/node_modules

            export PYTHON_EGG_CACHE=/Users/zaxecivobuny/first_django/bin/.tmp
                ##### GIT ENV #####
GIT_EXEC_PATH=/Users/zaxecivobuny/first_django/bin/git/libexec/git-core/
export GIT_EXEC_PATH
GIT_TEMPLATE_DIR=/Users/zaxecivobuny/first_django/bin/git/share/git-core/templates
export GIT_TEMPLATE_DIR
GIT_SSL_CAINFO=/Users/zaxecivobuny/first_django/bin/common/openssl/certs/curl-ca-bundle.crt
export GIT_SSL_CAINFO

##### POSTGRES ENV #####

        ##### MYSQL ENV #####

##### SQLITE ENV #####
			
##### SUBVERSION ENV #####
			
##### APACHE ENV #####

##### CURL ENV #####
CURL_CA_BUNDLE=/Users/zaxecivobuny/first_django/bin/common/openssl/certs/curl-ca-bundle.crt
export CURL_CA_BUNDLE
##### SSL ENV #####
SSL_CERT_FILE=/Users/zaxecivobuny/first_django/bin/common/openssl/certs/curl-ca-bundle.crt
export SSL_CERT_FILE
OPENSSL_CONF=/Users/zaxecivobuny/first_django/bin/common/openssl/openssl.cnf
export OPENSSL_CONF
OPENSSL_ENGINES=/Users/zaxecivobuny/first_django/bin/common/lib/engines
export OPENSSL_ENGINES


. /Users/zaxecivobuny/first_django/bin/scripts/build-setenv.sh
PYTHONHOME=/Users/zaxecivobuny/first_django/bin/python
export PYTHONHOME

