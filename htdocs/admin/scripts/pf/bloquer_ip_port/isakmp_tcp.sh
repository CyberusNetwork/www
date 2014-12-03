#!/bin/sh
# Guide ./isakmp_tcp.sh ip 

pfctl -t isakmp_tcp -T add $1
pfctl -t isakmp_tcp -T show