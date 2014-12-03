#!/bin/sh
# Guide ./deban_dns_tcp.sh ip 

pfctl -t dns_tcp -T delete $1
pfctl -t dns_tcp -T show