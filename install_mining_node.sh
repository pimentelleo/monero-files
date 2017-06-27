#!/bin/bash

sudo apt-get update
sudo apt-get install -y git libmicrohttpd-dev libssl-dev cmake build-essential
git clone https://github.com/fireice-uk/xmr-stak-cpu.git
cd xmr-stak-cpu
cmake .
sudo make install
cd bin
rm config.txt
wget "https://raw.githubusercontent.com/pimentelleo/monero-files/patch-1/lib/$1core/config.txt" -O config.txt
