#!/bin/sh
# Guide ./deban_dns_udp.sh ip 

pfctl -t dns_udp -T delete $1
pfctl -t dns_udp -T show