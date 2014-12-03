#!/bin/sh
# Guide ./smtp_tcp.sh ip 

pfctl -t smtp_tcp -T add $1
pfctl -t smtp_tcp -T show