#!/bin/bash
#Configure Apt
cp etch_dom0/70debconf /etc/apt/apt.conf.d/
cp etch_dom0/sources.list /etc/apt/
apt-get update
#For creator script:
apt-get install -y debootstrap multipath-tools
#KVM
apt-get install -y kvm kvm-source qemu bridge-utils uml-utilities
m-a a-i kvm
#Xen
apt-get install -y linux-image-2.6-xen-amd64 xen-utils-common 

