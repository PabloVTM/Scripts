#!/bin/bash
cd /opt/
git clone https://github.com/skeeto/endlessh.git
cd endlessh/
make
make install
cd /opt/
git clone https://github.com/itskenny0/fail2ban-endlessh.git
cd fail2ban-endlessh/
cp action.d/endlessh.conf /etc/fail2ban/action.d/endlessh.conf
cp jail.d/endlessh.conf /etc/fail2ban/jail.d/endlessh.conf
systemctl restart fail2ban