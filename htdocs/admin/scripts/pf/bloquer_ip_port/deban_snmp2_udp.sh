#!/bin/sh
# Guide ./deban_snmp2_udp.sh ip 

pfctl -t snmp2_udp -T delete $1
pfctl -t snmp2_udp -T show