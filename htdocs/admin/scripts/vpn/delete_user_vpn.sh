#!/bin/sh
# Guide : ./delete_user_vpn.sh User

cd /etc/openvpn/easyrsa3/
./easyrsa revoke $1_client <<FIN
yes
FIN

./easyrsa revoke $1_server <<FIN
yes
FIN

rm -r /etc/openvpn/client_conf/$1