#!/bin/bash

spawn-fcgi -s /var/run/fcgiwrap.socket /usr/bin/fcgiwrap
chmod 777 /run/fcgiwrap.socket
chown www-data.www-data /usr/lib/cgi-bin/teste.cgi
chmod +x /usr/lib/cgi-bin/teste.cgi

export KUBECONFIG=/home/project/kubeconfig/estudo.yaml

nginx -g "daemon off;"
