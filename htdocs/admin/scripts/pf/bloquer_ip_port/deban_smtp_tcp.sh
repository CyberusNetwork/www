#!/bin/sh
# Guide ./deban_smtp_tcp.sh ip 

pfctl -t smtp_tcp -T delete $1
pfctl -t smtp_tcp -T show