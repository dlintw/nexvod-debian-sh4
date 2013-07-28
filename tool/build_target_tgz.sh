#!/bin/bash -x
# download http://goo.gl/ntKWi # or http://goo.gl/rKISM in browser
# you will get wheezy-sh4.7z ; un7z wheezy-sh4.7z
# dd if=wheezy-sh4.img of=/dev/sdb (your usb stick)
# copy the target.tgz from the usb stick
if [ $# -ne 2 ] ; then
  echo "Usage: `basename $0` <from_target.tgz> <to_target.tgz>"
  exit 1
fi
from_tgz="$1"
to_tgz="$2"

if [ `id -u` != 0 ] ; then
  echo "Err: This script should run in root permission"
  exit 1
fi

set -o errexit
rm -rf mnt_system
tar xpf $from_tgz

# Fixed #3 apt-get fopen permission denied
chown -R 6:0 mnt_system/var/cache/man

wget -c http://forum.cse.yzu.edu.tw/wheezy-sh4/modules.tgz
cd mnt_system/usr
tar xpf ../../modules.tgz
cd ../..

wget -c http://forum.cse.yzu.edu.tw/wheezy-sh4/stmfb.tgz
cd mnt_system
tar xpf ../stmfb.tgz
ln -sf stmfb/vmlinux.ub vmlinux.ub
cd ..

# developer's settings
cp -a ../settings/* mnt_system

tar czf $to_tgz mnt_system

# vim:set et sw=2 ts=2 ai:
