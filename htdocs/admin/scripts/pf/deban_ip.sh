#!/bin/sh
#Guide ./deban_ip ip

pfctl -t blacklist -T delete $1
pfctl -t blacklist -T show