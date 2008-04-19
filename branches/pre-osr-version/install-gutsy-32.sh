#!/bin/bash
#Configure Apt
cp gutsy-32_dom0/sources.list /etc/apt/
apt-get update
#noessential
apt-get install -y emacs22-nox vim
#For creator script:
apt-get install -y debootstrap multipath-tools
#KVM
apt-get install -y kvm kvm-source module-assistant qemu bridge-utils uml-utilities
m-a a-i kvm
#Xen
apt-get install -y libxen3.1 python-xen-3.1 xen-docs-3.1 xen-hypervisor-3.1 xen-ioemu-3.1 xen-tools xen-utils-3.1 linux-xen
cp ./dom0/interfaces /etc/network/interfaces
/etc/init.d/networking restart
./start_kvm.sh
./fixkvm.sh