#!/bin/sh

if [ "$(whoami)" != 'root' ]; then
    echo "You have no permission to run $0 as non-root user. Use sudo."
    exit 1
fi

echo "Installing Oracle instant client v12.2.0.1.0..."
# @see https://gist.github.com/mazedlx/8e7764dfe68f08168d3f66a60256a863

DIR_PACKAGES="$( cd "$( dirname -- "$0" )" && pwd )"/../packages

mkdir /opt/oracle
sudo apt install unzip
unzip $DIR_PACKAGES/instantclient_12_2.zip -d /opt/oracle
ln -s /opt/oracle/instantclient_12_2/libclntsh.so.12.1 /opt/oracle/instantclient_12_2/libclntsh.so
ln -s /opt/oracle/instantclient_12_2/libocci.so.12.1 /opt/oracle/instantclient_12_2/libocci.so
echo /opt/oracle/instantclient_12_2 > /etc/ld.so.conf.d/oracle-instantclient.conf
ldconfig
cd $DIR_PACKAGES/..
echo "Done."