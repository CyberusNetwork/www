#!/bin/sh
# Guide ./http_tcp.sh ip 

pfctl -t http_tcp -T add $1
pfctl -t http_tcp -T show