#!/bin/sh

mount -o loop /home/vagrant/VBoxGuestAdditions.iso /mnt
/mnt/VBoxLinuxAdditions.run
umount /mnt
rm -rf VBoxGuestAdditions.iso
