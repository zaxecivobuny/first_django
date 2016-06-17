                   Bitnami Django Stack 1.9.5-1
                  ================================

1. OVERVIEW

The Bitnami Project was created to help spread the adoption of freely
available, high quality, open source web applications. Bitnami aims to make
it easier than ever to discover, download and install open source software
such as document and content management systems, wikis and blogging
software.

You can learn more about Bitnami at https://bitnami.com

Python is a dynamic object-oriented programming language that can be used for^M
many kinds of software development. It offers strong support for integration^M
with other languages and tools, comes with extensive standard libraries, and^M
can be learned in a few days. Many Python programmers report substantial^M
productivity gains and feel the language encourages the development of higher^M
quality, more maintainable code.

You can learn more about Python at http://www.python.org

Django is a high-level Python Web framework that encourages rapid development^M
and clean, pragmatic design.

You can learn more about Django at http://www.djangoproject.com

The Bitnami Django Stack is an installer that greatly simplifies the installation
of Django and its runtime dependencies. It includes ready-to-run versions of
Python, Django, MySQL and Apache. DjangoStack is distributed for free under the
Apache 2.0 license. Please see the appendix for the specific licenses of all
open source components included.

You can learn more about Bitnami Stacks at https://bitnami.com/stacks/

2. FEATURES

- Easy to Install

Bitnami Stacks are built with one goal in mind: to make it as easy as
possible to install open source software. Our installers completely automate
the process of installing and configuring all of the software included in
each Stack, so you can have everything up and running in just a few clicks.

- Independent

Bitnami Stacks are completely self-contained, and therefore do not interfere
with any software already installed on your system. For example, you can
upgrade your system's MySQL or Apache without fear of 'breaking' your
Bitnami Stack.

- Integrated

By the time you click the 'finish' button on the installer, the whole stack
will be integrated, configured and ready to go. 

- Relocatable

Bitnami Stacks can be installed in any directory. This allows you to have
multiple instances of the same stack, without them interfering with each other. 

3. COMPONENTS

Bitnami Django Stack ships with the following:

  - Django 1.9.5
  - Python 2.7.11
  - SQLite 3.7.15.1
  - MySQL 5.5.49
  - Apache 2.4.20
  - PostgreSQL 9.5.2
  - Boto AWS API 2.6.0

4. REQUIREMENTS

To install Bitnami Django Stack you will need:

    - Intel x86 or compatible processor
    - Minimum of 512 MB RAM 
    - Minimum of 150 MB hard drive space
    - TCP/IP protocol support
    - Compatible operantig systems:
      - An x86 or x64 Linux operating system.
      - A Windows operating system such as Windows Vista, Windows 7, Windows 8, Windows 10, Windows Server 2008 or Windows Server 2012.
			- An OS X operating system.


5. INSTALLATION

The Bitnami Django Stack is distributed as a binary executable installer.
It can be downloaded from:

https://bitnami.com/stacks/

The downloaded file will be named something similar to:

bitnami-djangostack-1.9.5-1-linux-installer.run on Linux or
bitnami-djangostack-1.9.5-1-linux-x64-installer.run on Linux x64 or
bitnami-djangostack-1.9.5-1-windows-installer.exe on Windows or
bitnami-djangostack-1.9.5-1-osx-x86-installer.dmg on OS X x86

On Linux, you will need to give it executable permissions:

chmod 755 bitnami-djangostack-1.9.5-1-linux.run


Double click the file and follow the on-screen instructions.

If you receive an error message during installation, please refer to
the Troubleshooting section.

5. STARTING AND STOPPING BITNAMI DJANGOSTACK

The Bitnami Application Manager is a simple graphical interface included in
the stacks that can start and stop the Bitnami servers. It is are located
in the same installation directory.

To start the utility, double click the file named ‘manager-linux’,
'manager-windows' or 'manager-osx' from your file browser.

Alternatively, you can also start and stop the services manually, as explained below.

To start/stop/restart application on Linux or OS X you can use the ctlscript.sh
utility:

       ./ctlscript.sh (start|stop|restart)
       ./ctlscript.sh (start|stop|restart) mysql
       ./ctlscript.sh (start|stop|restart) postgresql
       ./ctlscript.sh (start|stop|restart) apache

  start      - start the service(s)
  stop       - stop  the service(s)
  restart    - restart or start the service(s)

You can start and stop Bitnami Django Stack on Windows using the shortcuts created
in the Start Menu, under Programs -> Bitnami -> Bitnami Service.

6. DIRECTORY STRUCTURE

The installation process will create several subfolders under the main
installation directory:

	mysql/: MySQL Database.
        postgresql/: PostgreSQL Database.
	python/: Python.
	license/: License files.
	scripts/: Simple scripts necessary for the stack.
	sqlite/: SQLite files.
	apache2/: Apache2 files.
        apps/django: Django Framework	

8. TROUBLESHOOTING

This version of the Bitnami Django Stack is a preview version, and as
u can find more information about this product at:

https://bitnami.com/support

We also encourage you to sign up for our newsletter, which we'll use to
announce new releases and new stacks. To do so, just register at:
https://bitnami.com/newsletter.  

8.1 Installer

# Installer Payload Error 

If you get the following error while trying to run the installer from the
command line:

"Installer payload initialization failed. This is likely due to an
incomplete or corrupt downloaded file" 

The installer binary is not complete, likely because the file was
not downloaded correctly. You will need to download the file and
repeat the installation process. 

8.2 MySQL

The following are some common problems: 

# Access denied when trying to connect to MySQL. 

If you get an Access Denied message while trying to connect to
MySQL, make sure you are using the correct username and password. 

# "Can't connect to server" message. 

Make sure that the MySQL daemon is up and running. Remember also that if
during installation you selected a different listening port for MySQL, you
may need to pass that as an extra command line option.

For help in troubleshooting MySQL errors, you may want to reference the
"Problems and Common Errors" section of the MySQL manual, which you will
find at http://dev.mysql.com/doc/

8.3 PostgreSQL

If you encounter any problems starting PostgreSQL, the first place to look in is
PostgreSQL documentation, which you will find at http://www.postgresql.org/docs/

# "Can't connect to server" message. 

Make sure that the PostgreSQL daemon is up and running. Remember also that if
during installation you selected a different listening port for PostgreSQL, you
may need to pass that as an extra command line option.


8.4 Apache

If you find any problem starting Apache, the first place you should check is
the Apache error log file:

/home/user/drupal/apache2/logs/error.log on Linux and OS X

Most errors are related to not being able to listen to the default port.
Make sure there are no other server programs listening at the same port
before trying to start Apache. Some programs, such as Skype, may also use
port 80. For issues not covered in this Quick Start guide, please refer to
the Apache documentation, which is located at http://httpd.apache.org/docs/  

8.5 Python

Certain Python-based programs (such as the win32all installer and Windows
installers generated by the distutils package) look for Python information in
the registry. When you install Djangostack, it automatically registers its
Python interpreter in the registry but those entries may get overwritten by
other programs.

If you would like to re-register or remove BiNami Python from the Windows
registry, you can do so with the shortcuts that are in the "Tools" folder
inside "Bitnami Djangostack" on the Windows start menu.

Note that there can be only one registered interpreter for each major Python
release (e.g. 2.0, 2.1, 2,2 etc). If you try to register Bitnami Python and
there is another Python registered, you will have
to remove it manually first to ensure you don't overwrite it accidentally.
You can do so followoing the instructions below.

If you would like to register or unregister your own version of Python,
you can do it by calling the scripts inside the ./python/scripts folder
like this:

/path/to/new/python.exe /path/to/djangostack/python/scripts/registerpython.py
/path/to/new/python.exe /path/to/djangostack/python/scripts/unregisterpython.py

9. LICENSES

MySQL is distributed under the GNU General Public License v2, which is
located at http://www.gnu.org/licenses/old-licenses/gpl-2.0.html

PostgreSQL is distributed under the BSD License, which is located at
http://www.freebsd.org/copyright/license.html

Python is released under the Python License, wich is located at
http://www.python.org/download/releases/2.7.3/license/

Django is released under the BSD license, which is located 
http://code.djangoproject.com/browser/django/trunk/LICENSE

Apache Web Server is distributed under the Apache License v2.0, which
is located at http://www.apache.org/licenses/LICENSE-2.0

SQLite is released under the Public Domain license, which is located at
http://en.wikipedia.org/wiki/Public_Domain

OpenSSL is released under the terms of the Apache License, which is
located at http://www.openssl.org/source/license.html

Zlib is released under the zlib License (a free software license/compatible 
with GPL), which is located at http://www.gzip.org/zlib/zlib_license.html

Libiconv is released under the LGPL license, which is located at
http://www.gnu.org/licenses/lgpl.html

The Python Imaging Library (PIL) is Copyright © 1997-2011 by Secret Labs AB, 
Copyright © 1995-2011 by Fredrik Lundh. More details in 
http://www.pythonware.com/products/pil/license.htm

Freetype is released under The Freetype Project License, that is located at
http://freetype.sourceforge.net/FTL.TXT
