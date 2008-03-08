#!/bin/bash

loc=~/httperf_results
mkdir -p $loc

echo "Starting httperf tests"
echo "======================"

# Timeout 
for time_out in 1 2 4 
do
		#
		# Request phase
		#
		for num_cons in 100 1000 10000  
		do
			for num_calls in 10 100 1000
			do
				echo -n "* Starting phase1 test($time_out,$num_cons,$num_calls)..."
				httperf --hog --server $1 --timeout=$time_out --num-conns=$num_cons --num-calls=$num_calls &> $loc/phase1.$time_out.$num_cons.$num_calls.output
				echo "Done"
			done
		done

		#
		# Session phase
		#
		for think_time in 1 2 4 
		do
			for num_sessions in 100 1000 10000 
			do
				for calls_per_session in 1 2 4 8
				do
					echo -n "* Starting phase2 test($time_out,$num_sessions,$calls_per_session,$think_time)..."
					httperf --hog --server $1 --timeout=$time_out --wsess=$num_sessions,$calls_per_session,$think_time &>  $loc/phase2.$time_out.$num_sessions.$calls_per_session.$think_time.output
					echo "Done"
				done
			done
		done
done

echo "Finished Tests"

