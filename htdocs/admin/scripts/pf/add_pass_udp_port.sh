#!/bin/sh
# ./add_pass_udp_port.sh interface/'$free' port
/usr/local/bin/gsed -i '/UDP_port/a pass in log on '$1' proto udp to port '$2'' /etc/pf.conf
/sbin/pfctl -nf /etc/pf.conf
/sbin/pfctl -f /etc/pf.conf
cat /etc/pf.conf | grep "pass in log on"