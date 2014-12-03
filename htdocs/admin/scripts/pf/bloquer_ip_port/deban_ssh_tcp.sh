#!/bin/sh
# Guide ./deban_ssh_tcp.sh ip 

pfctl -t ssh_tcp -T delete $1
pfctl -t ssh_tcp -T show