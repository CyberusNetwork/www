#!/bin/sh
# Guide ./bootpc_tcp.sh ip 

pfctl -t bootpc_tcp -T add $1
pfctl -t bootpc_tcp -T show