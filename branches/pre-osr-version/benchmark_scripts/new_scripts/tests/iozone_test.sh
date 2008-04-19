#!/bin/bash
source logging.sh
source options.sh

logged_print "iozone tests"
mkdir -p $results_dir/iozone3

#
# Standard tests
#
logged_print "\t* Running default test"

iozone -a -b $results_dir/iozone3/default.wks &> /dev/null
if [ "$?" -ne 0 ]
then
  	logged_print "!!!TEST FAILED!!!"
  	exit 1;
fi

logged_print "\t* Running random async test"
iozone -a -K -b $results_dir/iozone3/random_async.wks &> /dev/null
if [ "$?" -ne 0 ]
then
  	logged_print "!!!TEST FAILED!!!"
  	exit 1;
fi

logged_print "\t* Running random sync test"
iozone -a -K -o -b $results_dir/iozone3/random_sync.wks &> /dev/null
if [ "$?" -ne 0 ]
then
  	logged_print "!!!TEST FAILED!!!"
  	exit 1;
fi

#
# Customized tests
#

exit 0
