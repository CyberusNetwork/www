#!/bin/sh
# Guide ./deban_hostname_tcp.sh ip 

pfctl -t hostname_tcp -T delete $1
pfctl -t hostname_tcp -T show