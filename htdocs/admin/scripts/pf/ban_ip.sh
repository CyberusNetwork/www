#!/bin/sh
#Guide ./ban_ip ip

pfctl -t blacklist -T add $1
pfctl -t blacklist -T show