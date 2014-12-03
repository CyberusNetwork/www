#!/bin/sh
# Guide ./deban_dhcp_tcp.sh ip 

pfctl -t dhcp_tcp -T delete $1
pfctl -t dhcp_tcp -T show