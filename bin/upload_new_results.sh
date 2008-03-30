#!/bin/bash

if [ -z "$1" ]
  then
  echo "usage $0 <stess test type>"
  exit 1
fi
echo "uploading $1 stress test results"

cp /opt/SPECweb2005/results/* /root/benchvm/isolation-results/
mv /opt/SPECweb2005/results/* /opt/SPECweb2005/results.bak/
cd /root/benchvm/isolation-results
svn add *
svn commit -m " ${1} stress test results"
