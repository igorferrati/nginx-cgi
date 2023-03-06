#!/bin/bash

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

spawn-fcgi -s /var/run/fcgiwrap.socket /usr/bin/fcgiwrap
chmod 777 /run/fcgiwrap.socket
chown www-data.www-data /usr/lib/cgi-bin/teste.cgi
chmod +x /usr/lib/cgi-bin/teste.cgi

nginx -g "daemon off;"
