#!/bin/sh
# Guide ./ftp2_tcp.sh ip 

pfctl -t ftp2_tcp -T add $1
pfctl -t ftp2_tcp -T show