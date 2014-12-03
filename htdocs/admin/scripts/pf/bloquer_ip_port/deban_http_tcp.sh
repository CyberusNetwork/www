#!/bin/sh
# Guide ./deban.sh ip 

pfctl -t http_tcp -T delete $1
pfctl -t http_tcp -T show