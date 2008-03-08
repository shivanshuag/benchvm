#!/bin/bash

loc=~/ab_results
mkdir -p $loc

clear
echo "Starting ab Tests"
echo "================="

for requests in 1000 10000 100000  
do
	for con in 10 100 1000 
	do
		echo -n "* Starting test($con,$requests)..."
		ab -q -c $con -n $requests -e $loc/$con.$requests.csv  http://128.153.144.167/
		echo "Done"
	done
done

echo "Finished Tests"
