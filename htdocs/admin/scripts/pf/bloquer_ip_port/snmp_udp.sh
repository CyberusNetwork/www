#!/bin/sh
# Guide ./snmp_udp.sh ip 

pfctl -t snmp_udp -T add $1
pfctl -t snmp_udp -T show