#!/bin/bash
curl https://get.acme.sh | sh
curl -o ~/.acme.sh/dnsapi/dns_plesk.sh https://raw.githubusercontent.com/Aisasemi/Acme.sh-dns_plesk/master/dns_plesk.sh
chmod 755 ~/.acme.sh/dnsapi/dns_plesk.sh
curl -o ~/plesk_le.sh https://raw.githubusercontent.com/Aisasemi/Plesk-Lets-Encrypt-Wildcard/master/plesk_le.sh
chmod 755 ~/plesk_le.sh
alias plesk_le=~/plesk_le.sh