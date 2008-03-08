#!/bin/bash

loc=~/iozone_results
mkdir -p $loc

echo "Running iozone tests"
echo "======================"

echo -n "* Starting default test..."
iozone -Rab $1/iozone_results/default.wks
echo "Done"

echo -n "* Starting random async test..."
iozone -RabK $1/iozone_results/default.wks
echo "Done"

echo -n "* Starting random sync test..."
iozone -RabKo $1/iozone_results/default.wks
echo "Done"

echo "Finished Tests

