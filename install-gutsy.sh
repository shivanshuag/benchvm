#!/bin/bash
#For creator script:
apt-get install -y debootstrap multipath-tools
#KVM
apt-get install -y kvm qemu bridge-utils uml-utilities
#Xen
apt-get install -y libxen3.1 python-xen-3.1 xen-docs-3.1 xen-hypervisor-3.1 xen-ioemu-3.1 xen-tools xen-utils-3.1 linux-xen
cp ./dom0/interfaces /etc/network/interfaces
