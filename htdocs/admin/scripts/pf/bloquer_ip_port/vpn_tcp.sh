#!/bin/sh
# Guide ./vpn_tcp.sh ip 

pfctl -t vpn_tcp -T add $1
pfctl -t vpn_tcp -T show