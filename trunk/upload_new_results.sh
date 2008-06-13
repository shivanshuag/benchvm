#!/bin/bash

if [ -z "$3" ]
  then
  echo "usage $0 <vmm> <test type> <stess test type>"
  exit 1
fi
echo "uploading $1 $2 $3 test results"

#my_ip=`ifconfig  | grep 192 | awk -F: '{print $2}' | awk  '{print $1}'`

host=`hostname`
echo "cp /opt/SPECweb2005/results/* /root/benchvm/results/$2/$1/$3/${host}/"
echo "mv /opt/SPECweb2005/results/* /opt/SPECweb2005/results.xen-summit/"
echo "cd /root/benchvm/results/$2/$1/$3/${host}/"
echo 'svn add *'
echo "svn commit -m \"add ${1} ${2} ${3} test results\""
