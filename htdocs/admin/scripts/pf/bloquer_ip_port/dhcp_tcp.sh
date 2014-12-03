#!/bin/sh
# Guide ./dhcp_tcp.sh ip 

pfctl -t dhcp_tcp -T add $1
pfctl -t dhcp_tcp -T show