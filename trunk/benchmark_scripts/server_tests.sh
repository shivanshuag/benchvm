#!/bin/bash

echo "Starting Webserver Tests"
echo "========================"
bash netperf_test.sh $1
bash ab_test.sh $1
bash httperf_test.sh $1
