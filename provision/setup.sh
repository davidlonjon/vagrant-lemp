#!/bin/bash

##
# setup.sh
#

# Variables
DBPASSWD=root

echo "Provisioning virtual machine..."
sudo apt-get update
sudo apt-get install -y build-essential python-software-properties git curl zip unzip python-dev autojump autoconf automake bison gettext bzip2 pkg-config
echo "Installing PHP7.x and modules:"
echo "php7.0 - server-side, HTML-embedded scripting language (metapackage)"
echo "php7.0-common - Common files for packages built from the PHP source"
echo "php7.0-cgi - server-side, HTML-embedded scripting language (CGI binary)"
echo "php7.0-cli - command-line interpreter for the PHP scripting language"
echo "php7.0-fpm - server-side, HTML-embedded scripting language (FPM-CGI binary)"
echo "php7.0-dev - Files for PHP7.0 module development"
echo "php7.0-phpdbg - Debug symbols for PHP7.0"
echo "php7.0-curl - CURL module for PHP"
echo "php7.0-enchant - Enchant module for PHP"
echo "php7.0-gd - GD module for PHP"
echo "php7.0-gmp - GMP module for PHP"
echo "php7.0-imap - IMAP module for PHP"
echo "php7.0-interbase - Interbase module for PHP"
echo "php7.0-intl - Internationalisation module for PHP"
echo "php7.0-ldap - LDAP module for PHP"
echo "php7.0-mcrypt - libmcrypt module for PHP"
echo "php7.0-readline - readline module for PHP"
echo "php7.0-odbc - ODBC module for PHP"
echo "php7.0-pgsql - PostgreSQL module for PHP"
echo "php7.0-pspell - pspell module for PHP"
echo "php7.0-recode - recode module for PHP"
echo "php7.0-snmp - SNMP module for PHP"
echo "php7.0-tidy - tidy module for PHP"
echo "php7.0-xmlrpc - XMLRPC-EPI module for PHP"
echo "php7.0-xsl - XSL module for PHP"
echo "php7.0-json - JSON module for PHP"
echo "php-all-dev - package depending on all supported PHP development packages"
echo "php7.0-sqlite3 - SQLite3 module for PHP"
echo "php7.0-mysql - MySQL module for PHP"
echo "php7.0-opcache - Zend OpCache module for PHP"
echo "php7.0-bz2 - bzip2 module for PHP"
echo "php7.0-zip - Zip module for PHP"
echo "php7.0-xml - Zip module for PHP"
echo "php7.0-mbstring - Multibyte module for PHP"
echo "php-xdebug - Xdebug module for PHP"
sudo apt-get install -y language-pack-en-base
sudo LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php7.0 php7.0-common php7.0-cgi php7.0-cli php7.0-fpm php7.0-dev \
php7.0-phpdbg php7.0-curl php7.0-enchant php7.0-gd php7.0-gmp php7.0-imap php7.0-interbase
php7.0-intl php7.0-ldap php7.0-mcrypt php7.0-readline php7.0-odbc php7.0-pgsql php7.0-pspell php7.0-recode \
php7.0-snmp php7.0-tidy php7.0-xmlrpc php7.0-xsl php7.0-json \
php-all-dev - php7.0-sqlite3 php7.0-mysql php7.0-opcache php7.0-bz2 php7.0-zip \
php7.0-xml php7.0-mbstring php-xdebug

echo "Installing Composer"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === 'e115a8dc7871f15d853148a7fbac7da27d6c0030b848d9b3dc09e2a0388afed865e6a3d6b3c0fad45c48e2b5fc1196ae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer
sudo chmod a+x /usr/local/bin/composer

echo "Installing PHPCS"
sudo curl -LsS https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar -o /usr/local/bin/phpcs
sudo chmod a+x /usr/local/bin/phpcs

echo "Installing PHPUnit"
wget https://phar.phpunit.de/phpunit.phar
chmod +x phpunit.phar
sudo mv phpunit.phar /usr/local/bin/phpunit

echo "Installing Nginx"
sudo apt-get install -y nginx

echo "Installing Mysql Server"
debconf-set-selections <<< "mysql-server mysql-server/root_password password $DBPASSWD"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $DBPASSWD"
sudo apt-get install -y mysql-server

echo "Installing NodeJs"
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

echo "Installing Nvm"
curl https://raw.githubusercontent.com/creationix/nvm/v0.11.1/install.sh | bash
. ~/.profile

echo "Updating npm"
sudo npm install npm@latest -g
