#!/bin/bash
#Configure Apt
cp hardy-64_dom0/sources.list /etc/apt/
apt-get update
#noessential
apt-get install -y emacs22-nox vim
#For creator script:
apt-get install -y debootstrap multipath-tools
#KVM
apt-get install -y kvm kvm-source module-assistant qemu bridge-utils uml-utilities
m-a a-i kvm
#Xen

cp ./dom0/interfaces /etc/network/interfaces
/etc/init.d/networking restart
./start_kvm.sh
./fixkvm.sh