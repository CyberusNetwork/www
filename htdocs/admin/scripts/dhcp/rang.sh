#!/bin/bash

sed "/range/d" /etc/dhcpd.conf >> tt
mv tt /etc/dhcpd.conf

/usr/local/bin/gsed -i "/option routers/a range $1 $2" /etc/dhcpd.conf
