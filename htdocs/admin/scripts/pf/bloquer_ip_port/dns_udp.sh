#!/bin/sh
# Guide ./dns_udp.sh ip 

pfctl -t dns_udp -T add $1
pfctl -t dns_udp -T show