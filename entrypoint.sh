#!/bin/sh

mkdir -p /data/.theme/
mv /config/*.css /data/.theme/

exec 3>&1 
lighttpd -D -f /config/lighttpd.conf