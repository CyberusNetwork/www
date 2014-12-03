#!/bin/sh
# Guide ./ftp_tcp.sh ip 

pfctl -t ftp_tcp -T add $1
pfctl -t ftp_tcp -T show