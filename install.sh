#!/bin/bash
yum install -y gcc automake iperf3
git clone https://github.com/linux-rdma/qperf.git
git clone https://github.com/linux-rdma/qperf.git
git clone https://github.com/esnet/iperf.git
cd ./qperf/src
./cleanup
./autogen.sh
./configure
make
cd ../../iperf
./configure
make
make install
