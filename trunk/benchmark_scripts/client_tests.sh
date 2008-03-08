#!/bin/bash

echo "Starting I/O Tests"
echo "=================="
bash bonnie++_test.sh
bash iozone_test.sh

echo "Starting CPU/System Tests"
echo "========================="
bash kernbench_test.sh
bash unixbench_test.sh

