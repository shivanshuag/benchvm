#!/bin/bash
source logging.sh
source options.sh

#
# System info
#
guest_num=$1
total_guest=$2

kernel=$(uname --kernel-name --kernel-release)
hostname=$(hostname)
ip=$(/sbin/ifconfig eth0 | grep "inet addr:" | awk '{ print $2 }' | cut -d ':' -f 2)
total_ram=$(free -m | grep Mem | awk '{ print $2 }')
total_hd=$(df -h | tr -s ' ' | grep -e '/$' | cut -d ' ' -f 2)

function print_system_summary {
        logged_print "System Summary"
        logged_print "=============="
        logged_print "* Machine: $hostname($ip)"
        logged_print "* Kernel: $kernel"

        if [ $# -eq 2 ]
        then
                logged_print "* Guest $1 of $2"
        else
                logged_print "* Real system"
        fi

        logged_print "* Total RAM: $total_ram MB"
        logged_print "* Total HD: $total_hd"
}

#
# Main
#
clear
touch $logfile
logged_print "Benchmarking system started!"
logged_print

print_system_summary
logged_print

logged_print "Starting Tests"
logged_print "=============="
for test in $(ls ./tests/*.sh)
do
        bash $test
        if [ "$?" -ne 0 ]
	then
  		logged_print "Exiting tests"
  		return 1
  	exit 1;
fi
done

logged_print
logged_print "Done!"
