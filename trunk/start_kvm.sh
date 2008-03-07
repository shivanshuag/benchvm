#!/bin/bash

modprobe kvm
modprobe kvm_intel
modprobe kvm_amd
KVMRET=`lsmod | grep kvm_`
if [ "" = "$KVMRET" ]; then
  echo "ERROR: Modules not loaded"
else
  echo "SUCCESS: KVM Modules loaded succesfully"
fi
