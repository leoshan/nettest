#!/bin/bash
type=$1
stream=$2
port=$3
ip=$4
for(( i=0; i <$stream; i++))
do
    if [ "$type" = "udp" ];then
        iperf3 -u -c $ip -p $port -l 64 -b 0 -t 0 -i 0 &
        echo "iperf3 -u -c $ip -p $port -l 64 -b 0 -t 0 -i 0 &"
    elif [ "$type" = "tcp" ];then
        iperf3 -c $ip -p $port -t 0 -i 0 &
        echo "iperf3 -c $ip -p $port -t 0 -i 0"
    fi
    let 'port+=1'
done
