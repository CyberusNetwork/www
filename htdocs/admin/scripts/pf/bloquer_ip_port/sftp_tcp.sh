#!/bin/sh
# Guide ./sftp_tcp.sh ip 

pfctl -t sftp_tcp -T add $1
pfctl -t sftp_tcp -T show