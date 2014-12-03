#!/bin/sh
# Guide ./deban_mysql_tcp.sh ip 

pfctl -t mysql_tcp -T delete $1
pfctl -t mysql_tcp -T show