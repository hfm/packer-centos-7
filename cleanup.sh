#!/bin/sh

# Remove Linux headers
yum -y remove kernel-devel kernel-headers
yum -y clean all

# Remove Virtualbox specific files
rm -rf /usr/src/vboxguest* /usr/src/virtualbox-ose-guest*
# rm -rf *.iso *.iso.? /tmp/vbox /home/vagrant/.vbox_version

# Cleanup log files
find /var/log -type f | while read f; do echo -ne '' > $f; done;

# remove under tmp directory
rm -rf /tmp/*

rm -f /etc/udev/rules.d/70-persistent-net.rules

dd if=/dev/zero of=/EMPTY bs=1M
rm -rf /EMPTY
