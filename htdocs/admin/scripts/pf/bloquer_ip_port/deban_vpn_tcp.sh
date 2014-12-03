#!/bin/sh
# Guide ./deban_vpn_tcp.sh ip 

pfctl -t vpn_tcp -T delete $1
pfctl -t vpn_tcp -T show