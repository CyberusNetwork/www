#!/bin/sh
# Guide : ./create_server_conf.sh User Ip Mask

mkdir /etc/openvpn/client_conf/$1

cd /etc/openvpn/client_conf/$1
cat >> server.conf <<EOF
port 10006
proto tcp 
dev tun
ca /etc/openvpn/keys/ca.crt
cert /etc/openvpn/client_conf/$1/$1_server.crt
key /etc/openvpn/client_conf/$1/$1_server.key
tls-auth /etc/openvpn/client_conf/$1/ta.key 0
dh /etc/openvpn/client_conf/$1/dh.pem
server $2 $3
ifconfig-pool-persist /etc/openvpn/client_conf/$1/ipp.txt
push "route 10.8.96.0 255.255.240.0"
push "dhcp-option DOMAIN itinet.fr"
push "dhcp-option DNS 8.8.8.8"
keepalive 10 120
comp-lzo
max-clients 10
user cyberus_openvpn
group cyberus_openvpn
persist-key
persist-tun
status /etc/openvpn/client_conf/$1/log/openvpn-status.log
log /etc/openvpn/client_conf/$1/log/openvpn.log
daemon openvpn
client-to-client
verb 6
EOF