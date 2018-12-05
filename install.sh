#!/bin/bash
yum install -y gcc automake iperf3 texinfo
git clone https://github.com/linux-rdma/qperf.git
git clone https://github.com/HewlettPackard/netperf.git
git clone https://github.com/esnet/iperf.git
cd ./qperf
./cleanup
./autogen.sh
./configure
make install
cd ../iperf
./configure
make
make install
cp /usr/local/bin/iperf3 /usr/bin
cp /usr/local/bin/qperf /usr/bin
