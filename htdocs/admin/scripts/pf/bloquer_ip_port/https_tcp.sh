#!/bin/sh
# Guide ./https_tcp.sh ip 

pfctl -t https_tcp -T add $1
pfctl -t https_tcp -T show