#!/bin/sh
# Guide ./snmp2_udp.sh ip 

pfctl -t snmp2_udp -T add $1
pfctl -t snmp2_udp -T show