#!/bin/bash

echo "Starting Webserver Tests"
echo "========================"
bash ab_test.sh $1
bash httperf_test.sh $1

echo "Starting Networking tests"
echo "========================="
bash netperf_remote_test.sh $1
