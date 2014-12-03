#!/bin/sh
# Guide : ./new_user_vpn.sh User

cd /etc/openvpn/easyrsa3/
./easyrsa gen-req $1_client nopass <<FIN

FIN
cd /etc/openvpn/easyrsa3/
./easyrsa sign client $1_client <<FIN1
yes
FIN1

./easyrsa gen-req $1_server nopass <<FIN

FIN
./easyrsa sign server $1_server <<FIN1
yes
FIN1

mkdir /etc/openvpn/client_conf/$1
mkdir /etc/openvpn/client_conf/$1/log
mkdir /etc/openvpn/client_conf/$1/ovpn

cp /etc/openvpn/keys/ca.crt /etc/openvpn/keys/ta.key /etc/openvpn/easyrsa3/pki/issued/$1_client.crt /etc/openvpn/easyrsa3/pki/private/$1_client.key /etc/openvpn/easyrsa3/pki/issued/$1_server.crt /etc/openvpn/easyrsa3/pki/private/$1_server.key /etc/openvpn/client_conf/$1/
cp /etc/openvpn/client_conf/$1/ca.crt /etc/openvpn/client_conf/$1/ta.key /etc/openvpn/client_conf/$1/$1_client.key /etc/openvpn/client_conf/$1/$1_client.crt /etc/openvpn/client_conf/$1/ovpn

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
server 10.8.0.0 255.255.255.0
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

cd /etc/openvpn/client_conf/$1
cat >> client.conf <<EOF
client
proto tcp 
dev tun
remote 10.8.100.2 10006
resolv-retry infinite
persist-key
persist-tun
ca /etc/openvpn/client_conf/$1/ca.crt
cert /etc/openvpn/client_conf/$1/$1_client.crt
key /etc/openvpn/client_conf/$1/$1_client.key
tls-auth /etc/openvpn/client_conf/$1/ta.key 1
#route-method exe 
#route-delay 2
keepalive 10 120
comp-lzo
verb 4
EOF

cd /etc/openvpn/client_conf/$1/ovpn
cat >> client.ovpn <<EOF
client
proto tcp 
dev tun
remote 88.177.168.133 10006
resolv-retry infinite
persist-key
persist-tun
ca ca.crt
cert $1_client.crt
key $1_client.key
tls-auth ta.key 1
route-method exe 
route-delay 2
keepalive 10 120
comp-lzo
verb 4
EOF
cd /etc/openvpn/client_conf/$1
tar cvzf $1.tar.gz ovpn