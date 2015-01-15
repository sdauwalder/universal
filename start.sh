#!/bin/sh -e

cat >/etc/supervisord.d/secure_flow_manager.ini<<EOF
[program:secure_flow_manager]
command=node /opt/universal/examples/easit-oauth-integration/driver.js
user=nobody
autorestart=true
redirect_stderr=true
stdout_logfile=/dev/stdout
stdout_logfile_maxbytes=0
EOF

supervisord -c /etc/supervisord.conf
