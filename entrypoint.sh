#!/bin/bash

if [ -n "$1" ]; then
    exec /usr/bin/collectl "$@"
else
    /etc/init.d/apache2 start
    find /input -type f -print0 | xargs -L 1 -0 -I{} /usr/bin/collectl -p {} -P -f /var/log/collectl
    exec tail -F /var/log/apache2/access.log
fi
