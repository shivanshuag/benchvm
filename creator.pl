#!/usr/bin/perl
#Dependencies:
#dd
#losetup
#mkdir
#mount
#debootstrap
#umount
#rmdir

use strict;
use warnings;
use Getopt::Long;
Getopt::Long::Configure ('bundling');

#Check to make sure user is root
my $user = `whoami`;
chomp $user;
if($user ne 'root'){
  print 'Superuser privileges are necessary for some parts of this script; use sudo.' . "\n";
  exit(1);
}

#General
my $help;
my $count = 4;
my $location = '/bsvb/creation_script/';
my $img_name = 'bsvb_guest';

#Debootstrap Options
my $arch = 'amd64';
my $distro = 'gutsy';
my $master_mount_dir = 'master';
my $mirror = 'http://archive.ubuntu.com/ubuntu';

#DD Config Options
my $dd_bs = 1024;
my $dd_count = 1;
my $dd_seek = 4095;

#Partitioning
#my $swap_size = 0;
#my $fs_type = 'ext3';

GetOptions ('c|count=i' => \$count, 'a|arch=s' => \$arch, 'd|distro=s' => \$distro, 'l|location=s' => \$location, 'n|name=s' => \$img_name, 'd|dir=s' => \$master_mount_dir, 'm|mirror=s' => \$mirror, 'ddbs=i' => \$dd_bs, 'ddcount=i' => \$dd_count, 's|ddseek=i' => \$dd_seek, 'help' => \$help);
#'swap=i' => \$swap_size, 
#'fstype=s' => \$fs_type, 

if($help){
  print 'Usage:' . "\n";
  print "  -c [count], --count [count]\t\t\tNumber of IMGs to Create\n";
  print "  -a [arch], --arch [arch]\t\t\tArchitecture to Install\n";
  print "  -d [distro], --distro [distro]\t\tDistro to Install\n";
  print "  -l [location], --location [location]\t\tLocation to Create IMGs at\n";
  print "  -m [mirror], --mirror [mirror]\t\tMirror to Intall from\n";
  print "  --ddbs [size]\t\t\t\t\tBS for DD command\n";
  print "  --ddcount [count]\t\t\t\tCount for DD command\n";
  print "  -s [count], --ddseek [count]\t\t\tSeek for DD command\n";
#  print "  --swap_size [size]\t\t\t\tSize of swap\n";
#  print "  --fs_type [type]\t\t\t\tFilesystem type (e.g. ext3)\n";
  print "  --help\t\t\t\t\tThis.\n";
}else{
  my $dd_command;
  my $dev_device;
  my $losetup_command;
  my $partition_command;
  my $format_command;
  my $mkdir_command;
  my $mount_command;
  my $debootstrap_command;
  my $umount_command;
  my $rmdir_command;
  my $ulosetup_command;
  my @copy_command;

  #################
  #    Assemble   #
  #################
  #make initial dd
  $dd_command = 'dd if=/dev/zero of=' . $location . $img_name . '.img ' . 'bs=' . $dd_bs . 'K count=' . $dd_count . ' seek=' . $dd_seek;

  #loopback mount dd
  $dev_device = `losetup -f`;
  chomp($dev_device);
  $losetup_command = 'losetup ' . $dev_device . ' ' . $location . $img_name . '.img';

  #partition
  # Commented out because parted doesn't seem to like loopback devices!
#  if($swap_size > 0){
#    $partition_command = "parted " . $dev_device . " mkpart primary linux-swap 0 " . ($swap_size-1) . " && parted " . $dev_device . " mkpart primary " . $fs_type . " " . $swap_size . " " . $dd_seek;
#  }else{
#    $partition_command = "parted " . $dev_device . " mkpart primary ext3 0 " . $dd_seek;
#  }

  #format
  $format_command = 'mkfs.ext3 ' . $dev_device;

  #mkdir and mount
  $mkdir_command = 'mkdir ' . $location . $master_mount_dir;
  $mount_command = 'mount ' . $dev_device . " " . $location . $master_mount_dir;

  #debootstrap
  $debootstrap_command = 'debootstrap --arch ' . $arch . ' ' . $distro . ' ' . $location . $master_mount_dir . ' ' . $mirror;

  #umount
  $umount_command = 'umount ' . $location . $master_mount_dir;

  #rmdir
  $rmdir_command = 'rmdir ' . $location . $master_mount_dir;

  #ulosetup
  $ulosetup_command = 'losetup -d ' . $dev_device;

  #?!?!?!? To copy as .img or all files ?!?!?!?!?!
  #copy (whole .img for now)
  for (my $i=1; $i<$count; $i++){
    push(@copy_command, 'cp ' . $location . $img_name . '.img ' . $location . $img_name . '_' . $i . '.img');
  }

  ###########
  #   Run   #
  ###########
  print 'dd-ing...' . "\n";
  (system($dd_command) == 0) or die ("dd failed ($?)");

  print 'losetup-ing...' . "\n";
  (system($losetup_command) == 0) or die ("losetup failed ($?)");

  print 'mkfs.ext3-ing...' . "\n";
  (system($format_command) == 0) or die ("format failed ($?)");

  print 'mkdir-ing...' . "\n";
  (system($mkdir_command) == 0) or die ("mkdir failed ($?)");

  print 'mount-ing...' . "\n";
  (system($mount_command) == 0) or die ("mount failed ($?)");

  print 'debootstrap-ing...' . "\n";
  (system($debootstrap_command) == 0) or die ("debootstrap failed ($?)");

  print 'umount-ing...' . "\n";
  (system($umount_command) == 0) or die ("umount failed ($?)");
  
  print 'rmdir-ing...' . "\n";
  (system($rmdir_command) == 0) or die ("rmdir failed ($?)");

  print 'ulosetup-ing...' . "\n";
  (system($ulosetup_command) == 0) or die ("ulosetup failed ($?)");

  foreach (@copy_command) {
    print 'copy-ing...' . "\n";
    (system($_) == 0) or die ("copy failed ($?)");
  }  

}

#?!?!?!? Do we need to edit any files ?!?!?!?!?!

