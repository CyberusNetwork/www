#!/bin/sh
# Guide ./ssh_tcp.sh ip 

pfctl -t ssh_tcp -T add $1
pfctl -t ssh_tcp -T show