#!/bin/sh
# Guide ./ntp_udp.sh ip 

pfctl -t ntp_udp -T add $1
pfctl -t ntp_udp -T show