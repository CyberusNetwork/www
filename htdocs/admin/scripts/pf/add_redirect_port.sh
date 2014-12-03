#!/bin/sh
# ./add_redirect_port.sh proto port_ext ip_lan port_int
/usr/local/bin/gsed -i '/Forwarding_port/a pass in log on $free proto '$1' from any to any port '$2' rdr-to '$3' port '$4'' /etc/pf.conf
/sbin/pfctl -nf /etc/pf.conf
/sbin/pfctl -f /etc/pf.conf
cat /etc/pf.conf | grep "rdr-to"
# la commande -i qui écrit dans le fichier '/l'endroit ou il va mettre en dessous (mot clef)/a ce que tu veux quil écrit en dessous de l'endroit du mot clef' lendroit de ton fichier a modifier
#/usr/local/bin/gsed -i '/Forwarding_port/a pass in log on $free proto '$1' from any to any port '$2' rdr-to '$3' port '$4'' /etc/pf.conf