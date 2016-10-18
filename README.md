# Vagrant  LEMP

## Description
Create a Vagrant VM with a LEMP stack.

The VM gets provisioned with:
- PHP 7 (v7.0.12-1+deb.sury.org~trusty+1) and various modukes:
	- php7.0-common - Common files for packages built from the PHP source
	- php7.0-cgi - server-side, HTML-embedded scripting language (CGI binary)
	- php7.0-cli - command-line interpreter for the PHP scripting language
	- php7.0-fpm - server-side, HTML-embedded scripting language (FPM-CGI binary)
	- php7.0-dev - Files for PHP7.0 module development
	- php7.0-phpdbg - Debug symbols for PHP7.0
	- php7.0-curl - CURL module for PHP
	- php7.0-enchant - Enchant module for PHP
	- php7.0-gd - GD module for PHP
	- php7.0-gmp - GMP module for PHP
	- php7.0-imap - IMAP module for PHP
	- php7.0-interbase - Interbase module for PHP
	- php7.0-intl - Internationalisation module for PHP
	- php7.0-ldap - LDAP module for PHP
	- php7.0-mcrypt - libmcrypt module for PHP
	- php7.0-readline - readline module for PHP
	- php7.0-odbc - ODBC module for PHP
	- php7.0-pgsql - PostgreSQL module for PHP
	- php7.0-pspell - pspell module for PHP
	- php7.0-recode - recode module for PHP
	- php7.0-snmp - SNMP module for PHP
	- php7.0-tidy - tidy module for PHP
	- php7.0-xmlrpc - XMLRPC-EPI module for PHP
	- php7.0-xsl - XSL module for PHP
	- php7.0-json - JSON module for PHP
	- php-all-dev - package depending on all supported PHP development packages
	- php7.0-sqlite3 - SQLite3 module for PHP
	- php7.0-mysql - MySQL module for PHP
	- php7.0-opcache - Zend OpCache module for PHP
	- php7.0-bz2 - bzip2 module for PHP
	- php7.0-zip - Zip module for PHP
	- php7.0-xml - Zip module for PHP
	- php7.0-mbstring - Multibyte module for PHP
	- php-xdebug - Xdebug module for PHP
- Composer (>= v1.2.1)
- PHP_CodeSniffer version (>= v2.7.0)
- PHPUnit (>= v5.6.1)
- Nginx (>= v1.4.6)
- Mysql (>= v5.5.52-0ubuntu0.14.04.1)
- Node (>= v6.8.1)
- Npm (>= v3.10.8)

## Installation

Clone the repo somewhere on your computer

` git clone git@github.com:davidlonjon/vagrant-lemp.git name-of-your-project`

## Usage

`cd name-of-your-project`

`vagrant up`

Once provisioned you can get into the VM using:

`vagrant ssh`

## Note
- This does not setup any Nginx virtual hosts
- This does not setup any mySQL DB
