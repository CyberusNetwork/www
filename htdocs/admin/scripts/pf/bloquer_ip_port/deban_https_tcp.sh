#!/bin/sh
# Guide ./deban_https_tcp.sh ip 

pfctl -t https_tcp -T delete $1
pfctl -t https_tcp -T show