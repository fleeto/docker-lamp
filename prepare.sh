#!/bin/sh
echo "exit 0" > /usr/sbin/policy-rc.d
if [ -n ${http_proxy} ]; then 
  APT_PROXY="Acquire::http::Proxy \"$http_proxy\";"
  echo "$APT_PROXY" > /etc/apt/apt.conf.d/99proxy.conf
fi
apt update
apt upgrade -y
apt-get install -y libapache2-mod-php5 php5-cli php5-mysql php5-gd php5-memcached php5-mcrypt apache2-utils curl php5-curl
a2enmod rewrite


mkdir -p /web/codebase
mkdir -p /web/logs

rm -f /etc/apache2/sites-enabled/*
rm -f /etc/apache2/mods-enabled/mpm_prefork.conf
apt-get autoremove
apt-get clean
rm -f /etc/apt/apt.conf.d/99proxy.conf
