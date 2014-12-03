#!/bin/sh
# Guide ./deban_telnet_tcp.sh ip 

pfctl -t telnet_tcp -T delete $1
pfctl -t telnet_tcp -T show