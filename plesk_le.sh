#!/bin/bash
acme.sh --issue -d $1 -d *.$1 --dns dns_plesk
mkdir -p /etc/nginx/acme.sh/$1
acme.sh --install-cert -d $1 --cert-file /etc/nginx/acme.sh/$1/cert.pem --key-file /etc/nginx/acme.sh/$1/key.pem --fullchain-file /etc/nginx/acme.sh/$1/fullchain.pem --reloadcmd "systemctl reload nginx.service && systemctl reload apache2.service"
plesk bin certificate --create "$1 Wildcard LE" -domain $1 -cert-file /etc/nginx/acme.sh/$1/cert.pem -key-file /etc/nginx/acme.sh/$1/key.pem -cacert-file /root/.acme.sh/$1/ca.cer