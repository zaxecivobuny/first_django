#!/bin/sh
LDFLAGS="-L/Users/zaxecivobuny/first_django/bin/common/lib $LDFLAGS"
export LDFLAGS
CFLAGS="-I/Users/zaxecivobuny/first_django/bin/common/include $CFLAGS"
export CFLAGS
CXXFLAGS="-I/Users/zaxecivobuny/first_django/bin/common/include $CXXFLAGS"
export CXXFLAGS
		    
PKG_CONFIG_PATH="/Users/zaxecivobuny/first_django/bin/common/lib/pkgconfig"
export PKG_CONFIG_PATH
