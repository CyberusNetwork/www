#!/bin/sh
#./delete_redirect_port.sh proto port_ext ip_lan port_int
/usr/local/bin/gsed -i '/pass in log on $free proto '$1' from any to any port '$2' rdr-to '$3' port '$4'/d' /etc/pf.conf
/sbin/pfctl -nf /etc/pf.conf
/sbin/pfctl -f /etc/pf.conf
cat /etc/pf.conf | grep "rdr-to"