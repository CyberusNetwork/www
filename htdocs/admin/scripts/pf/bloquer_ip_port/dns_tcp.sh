#!/bin/sh
# Guide ./dns_tcp.sh ip 

pfctl -t dns_tcp -T add $1
pfctl -t dns_tcp -T show