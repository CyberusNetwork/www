#!/bin/sh
# Guide ./deban_ftp_tcp.sh ip 

pfctl -t ftp_tcp -T delete $1
pfctl -t ftp_tcp -T show