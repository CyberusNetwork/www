#!/bin/sh
# ./add_pass_tcp_port.sh interface/'$free' port
/usr/local/bin/gsed -i '/TCP_port/a pass in log on '$1' proto tcp to port '$2'' /etc/pf.conf
/sbin/pfctl -nf /etc/pf.conf
/sbin/pfctl -f /etc/pf.conf
cat /etc/pf.conf | grep "pass in log on"