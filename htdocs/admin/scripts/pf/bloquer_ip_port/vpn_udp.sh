#!/bin/sh
# Guide ./vpn_udp.sh ip 

pfctl -t vpn_udp -T add $1
pfctl -t vpn_udp -T show