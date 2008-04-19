#!/bin/bash

loc=~/bonnie++_results
mkdir -p $loc

echo "Running Bonnie++ tests"
echo "======================"

let min_size=2*$(free -m | grep Mem | awk '{ print $2 }')
let max_size=$min_size*3

for test_runs in 2 
do
	for num_files in 1 2 
	do
		for size in $min_size 
		do
			echo -n "* Starting test(b,$test_runs,$num_files,$size)..."
			/usr/sbin/bonnie++ -u root -b -x $test_runs -n $num_files -s $size &> $loc/b.$test_runs.$num_files.$size.output
			echo "Done"

			echo -n "* Starting test( ,$test_runs,$num_files,$size)..."
			/usr/sbin/bonnie++ -u root -x $test_runs -n $num_files -s $size &> $loc/$test_runs.$num_files.$size.output
			echo "Done"
		done
	done
done

echo "Finished Tests"

