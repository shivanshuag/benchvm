#!/bin/bash
cp /root/benchvm/hardy-64_dom/sources.list /etc/apt/
apt-get update
#install packages
apt-get install -y openssh-server iozone3 bonnie++ apache2 libapache2-mod-php5 build-essential

#get workloads
/root/benchvm/get-workloads.sh

#copy and chmod benchmark script folders
cp -rf /root/benchvm/benchmark_scripts/ /root/ 
chmod 700 -R /root/benchmark_scripts/

#extract and link linux kernel sources
tar xjpf /root/benchvm/linux-2.6.24.3.tar.bz2 -C /usr/src
ln -s /usr/src/linux-2.6.24.3 /usr/src/linux

#kernbench
tar xvpf /root/benchvm/kernbench-0.42.tar.gz -C /root

#specweb workload 
tar xvzf /root/benchvm/workload.tar.gz -C /var/www/
chmod 777 -R /var/www/*
chown root -R /var/www/*
chgrp root -R /var/www/*
