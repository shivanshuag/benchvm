#!/bin/bash

loc=~/iozone_results
mkdir -p $loc

echo "Running iozone tests"
echo "======================"

echo -n "* Starting default test..."
iozone -Rab $loc/iozone_results/default.wks
echo "Done"

echo -n "* Starting random async test..."
iozone -RaKb $loc/iozone_results/random.async.wks
echo "Done"

echo -n "* Starting random sync test..."
iozone -RaKob $loc/iozone_results/random.sync.wks
echo "Done"

echo "Finished Tests"



