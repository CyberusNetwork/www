#!/bin/sh
# Guide ./hostname_tcp.sh ip 

pfctl -t hostname_tcp -T add $1
pfctl -t hostname_tcp -T show