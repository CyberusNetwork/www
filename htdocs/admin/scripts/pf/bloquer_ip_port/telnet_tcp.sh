#!/bin/sh
# Guide ./telnet_tcp.sh ip 

pfctl -t telnet_tcp -T add $1
pfctl -t telnet_tcp -T show