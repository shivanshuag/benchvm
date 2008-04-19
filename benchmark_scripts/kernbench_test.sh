#!/bin/bash

loc=~/kernbench_results
mkdir -p $loc 

cd /usr/src/linux

echo "Starting kernbench Tests"
echo "========================="

for num_jobs in 1 2 4  
do
	echo -n "* Starting test($num_jobs)..."
	bash ~/kernbench-0.42/kernbench -n 3 -o $num_jobs &> $loc/$num_jobs.output
	echo "Done"
done

echo "Finished Tests"
