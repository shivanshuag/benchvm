#!/bin/bash

loc=~/netperf_results
mkdir -p $loc

clear
echo "Starting netperf Tests"
echo "======================"

for time in 10 30 60  
do
	for mode in TCP_STREAM UDP_STREAM TCP_RR UDP_RR 
	do
		echo -n "* Starting test($time,$mode)..."
		netperf -c -l $time -t $mode $1 &> remote.$time.$mode.output
		netperf -c -l $time -t STREAM_STREAM &> local.$time.$mode.output
		echo "Done"
	done
done

echo "Finished Tests"
