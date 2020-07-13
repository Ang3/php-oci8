#!/bin/sh

if [ "$(whoami)" != 'root' ]; then
    echo "You have no permission to run $0 as non-root user. Use sudo."
    exit 1
fi

echo "Configuring php-oci8 extension for PHP 7.1..."
apt install php-dev php-pear build-essential libaio1
echo "instantclient,/opt/oracle/instantclient_12_2" | pecl install oci8
bash -c "echo extension=oci8.so >> /etc/php/7.1/mods-available/oci8.ini"
ln -s /etc/php/7.1/mods-available/oci8.ini /etc/php/7.1/cli/conf.d/20-oci8.ini
ln -s /etc/php/7.1/mods-available/oci8.ini /etc/php/7.1/fpm/conf.d/20-oci8.ini
ln -s /etc/php/7.1/mods-available/oci8.ini /etc/php/7.1/apache2/conf.d/20-oci8.ini
echo "Done."
