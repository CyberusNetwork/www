#!/bin/sh
# Guide ./deban_isakmp_tcp.sh ip 

pfctl -t isakmp_tcp -T delete $1
pfctl -t isakmp_tcp -T show