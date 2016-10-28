#!/bin/bash

cat > /etc/supervisor/conf.d/supervisord.conf <<EOF
[supervisord]
nodaemon= true

[program:cron]
command=/usr/local/sbin/cron.sh
EOF

exec /usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
