#!bin/bash
port=$1
stream=$2

for(( i=0; i<$stream; i++))
do
 iperf3 -s -p $port -i 0 &
 echo "iperf3 -s -p $port -i 0 &"
 let 'port+=1'
done
