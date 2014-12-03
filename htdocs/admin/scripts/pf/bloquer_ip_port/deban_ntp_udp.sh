#!/bin/sh
# Guide ./deban_ntp_udp.sh ip 

pfctl -t ntp_udp -T delete $1
pfctl -t ntp_udp -T show