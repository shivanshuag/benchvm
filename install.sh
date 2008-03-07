#!/bin/bash
#For creator script:
apt-get install -y debootstrap multipath-tools
#KVM
apt-get install kvm qemu bridge-utils uml-utilities
#Xen
apt-get install bridge-utils libxen3.1 python-xen-3.1 xen-docs-3.1 xen-hypervisor-3.1 xen-ioemu-3.1 xen-tools xen-utils-3.1 linux-xen
cp ./dom0_config/interfaces /etc/network/interfaces
