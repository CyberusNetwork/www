#!/bin/sh
# Guide ./deban_ftp2_tcp.sh ip 

pfctl -t ftp2_tcp -T delete $1
pfctl -t ftp2_tcp -T show