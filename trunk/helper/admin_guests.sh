#!/bin/bash

if [ -z $1 ]
then
  echo "usage: $0 num_guests"
  exit 1
fi

for x in $(seq 1 $1)
do
 ssh guest${x} "sed -i.orig 's/2.2.8/2.2.9/g' /usr/share/phoronix-test-suite/pts/test-profiles/build-apache.xml"
 scp /root/interfaces.${x} guest${x}:/etc/network/interfaces
 ssh guest${x} /etc/init.d/networking restart
 scp /etc/resolv.conf guest${x}:/etc/
done
