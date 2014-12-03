#!/bin/sh
# Guide ./deban_sftp_tcp.sh ip 

pfctl -t sftp_tcp -T delete $1
pfctl -t sftp_tcp -T show