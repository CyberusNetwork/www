#!/bin/sh
# Guide ./deban_bootpc_tcp.sh ip 

pfctl -t bootpc_tcp -T delete $1
pfctl -t bootpc_tcp -T show