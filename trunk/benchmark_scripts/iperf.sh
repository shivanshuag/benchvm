#!/bin/bash

loc=~/iperf_results
mkdir -p $loc

clear
echo "Starting iperf Tests"
echo "===================="

echo -n "* Starting TCP test..."
iperf --format M -s -c $1 &> $loc/tcp.$bandwidth.output
echo "Done"

for bandwidth in 8388608 83886080 419430400
	echo -n "Starting UDP -b $bandwidth tests"
	iperf --format M -s -c $1 --udp --bandwidth $bandwidth 	&> $loc/udp.$bandwidth.output
	echo "Done"
done

echo "Finished Tests"
