#!/bin/bash

loc=~/netperf_results
mkdir -p $loc

echo "Starting netperf local Tests"
echo "============================"

for time in 10 30 60  
do
	for mode in TCP_STREAM UDP_STREAM TCP_RR UDP_RR 
	do
		echo -n "* Starting test($time,$mode)..."
		netperf -c -l $time &> $loc/local.$time.$mode.output
		echo "Done"
	done
done

echo "Finished Tests"
