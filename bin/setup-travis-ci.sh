#!/usr/bin/env sh
set -x

echo $PWD
sudo apt-get -qq -y --force-yes update
sudo apt-get -q -y --force-yes install wget build-essential libpam0g-dev libbsd-dev libbsd0 libbsd0-dbg
wget http://sourceforge.net/projects/ss5/files/ss5/3.8.9-6/ss5-3.8.9-6.tar.gz/download -O ss5-3.8.9.tar.gz
tar -zxvf ss5-3.8.9.tar.gz
cd ss5-3.8.9
./configure
make