#!/bin/bash

loc=~/unixbench_results
mkdir -p $loc 

cd ~/unixbench-4.1.0
make

echo "Starting unixbench Tests"
echo "========================"

for num_tests in 1 2
do
	echo -n "* Starting test($num_tests)..."
	./Run &> $loc/$num_tests.output
	echo "Done"
done

echo "Finished Tests"
cd ~
