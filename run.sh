#!/bin/sh

chown -R www-data:www-data /web
/usr/sbin/apachectl -D FOREGROUND
