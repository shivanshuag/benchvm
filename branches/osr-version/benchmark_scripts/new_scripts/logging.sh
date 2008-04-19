#!/bin/bash
source options.sh

function logged_print {
        time=$(date +%D\ %r)

	echo -e "$time: $1"
        echo -e "$time: $1" >> $logfile
}
