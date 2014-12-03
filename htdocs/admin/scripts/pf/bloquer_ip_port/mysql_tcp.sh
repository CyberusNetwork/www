#!/bin/sh
# Guide ./mysql_tcp.sh ip 

pfctl -t mysql_tcp -T add $1
pfctl -t mysql_tcp -T show