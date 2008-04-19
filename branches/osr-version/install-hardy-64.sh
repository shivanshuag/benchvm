#!/bin/bash
#Configure Apt
cp hardy-64_dom0/sources.list /etc/apt/
apt-get update
#noessential
apt-get install -y emacs22-nox vim
#For creator script:
apt-get install -y debootstrap multipath-tools
#KVM
apt-get install -y kvm qemu bridge-utils uml-utilities
#Xen
#install xen from tarball
apt-get install -y bridge-utils
wget http://mirror.clarkson.edu/benchvm/xen-3.2.0.tar.bz2 -O /root/xen-3.2.0.tar.bz2 
echo 'Extracting tarball...'
tar xjpf /root/xen-3.2.0.tar.bz2 -C /root/
echo 'Installing Xen...'
cd /root/dist && ./install.sh
echo 'Building initrd...'
depmod 2.6.18.8-xen
mkinitramfs -o /boot/initrd-2.6.18.8-xen.img 2.6.18.8-xen
echo ''
echo 'Safe to ignore missing find firmware messages.'
echo 'Adding Xen GRUB entry...'
echo '' >> /boot/grub/menu.lst
echo 'title Xen 3.2.0 / Linux 2.6.18.8-xen' >> /boot/grub/menu.lst
echo 'kernel /boot/xen-3.2.0.gz' >> /boot/grub/menu.lst
echo 'module /boot/vmlinuz-2.6.18.8-xen root=/dev/sda4 ro console=tty0' >> /boot/grub/menu.lst
echo 'module /boot/initrd-2.6.18.8-xen.img' >> /boot/grub/menu.lst

echo 'downloading and installing gutsy version of iproute package for broken ip command'

wget http://mirror.clarkson.edu/benchvm/iproute/iproute_20070313-1ubuntu2_amd64.deb -O /root/iproute_20070313-1ubuntu2_amd64.deb

wget http://mirror.clarkson.edu/benchvm/iproute/libdb4.5_4.5.20-5ubuntu3_amd64.deb -O /root/libdb4.5_4.5.20-5ubuntu3_amd64.\
deb

dpkg -i /root/iproute_20070313-1ubuntu2_amd64.deb /root/libdb4.5_4.5.20-5ubuntu3_amd64.deb


cp ./dom0/interfaces /etc/network/interfaces
/etc/init.d/networking restart
./start_kvm.sh
./fixkvm.sh
