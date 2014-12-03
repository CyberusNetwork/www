#!/bin/sh
# Guide ./deban_snmp_udp.sh ip 

pfctl -t snmp_udp -T delete $1
pfctl -t snmp_udp -T show