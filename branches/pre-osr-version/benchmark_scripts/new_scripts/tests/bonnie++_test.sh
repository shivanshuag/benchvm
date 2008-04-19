#!/bin/bash
source logging.sh

logged_print "* Bonnie++ tests"
mkdir -p $results_dir/bonnie++

logged_print "\t* Running default bonnie++ test"
bonnie++ -u root -x 2 &> $results_dir/bonnie++/default
if [ "$?" -ne 0 ]
then
  	logged_print "!!!TEST FAILED!!!"
  	exit 1;
fi

logged_print "\t* Running default bonnie++ test woth sync"
bonnie++ -u root -x 2 -b &> $results_dir/bonnie++/sync
if [ "$?" -ne 0 ]
then
  	logged_print "!!!TEST FAILED!!!"
  	exit 1;
fi

exit 0
