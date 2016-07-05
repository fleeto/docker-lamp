#!/bin/sh
rm -f /etc/localtime
ln -s "/usr/share/zoneinfo/$TIMEZONE" /etc/localtime
chown -R www-data:www-data /web
/usr/sbin/apachectl -D FOREGROUND
