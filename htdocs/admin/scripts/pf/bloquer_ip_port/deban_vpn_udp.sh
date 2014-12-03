#!/bin/sh
# Guide ./deban_vpn_udp.sh ip 

pfctl -t vpn_udp -T delete $1
pfctl -t vpn_udp -T show