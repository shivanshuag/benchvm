#!/bin/bash
#For creator script:
apt-get install -y debootstrap multipath-tools
#KVM
apt-get install -y kvm qemu bridge-utils uml-utilities
#Xen
apt-get install -y ubuntu-xen-server 
cp ./dom0/interfaces /etc/network/interfaces
