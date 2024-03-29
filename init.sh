#!/bin/bash

adduser oviron
usermod -a -G sudo oviron
apt install fail2ban -y
mv -f /etc/fail2ban/jail.conf /etc/fail2ban/jail.local
mv -f ./sshd_config /etc/ssh/sshd_config
mv -f ./user.rules /etc/ufw/user.rules
ufw disable
ufw enable
service ssh restart
