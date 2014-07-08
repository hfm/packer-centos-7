#!/bin/sh

set -e

yum install -y wget

# chef
curl -kL https://www.opscode.com/chef/install.sh | bash


# puppet
rpm --import http://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs
rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
echo 'timeout=300' >> /etc/yum.conf
yum install -y puppet
sed -i '/timeout=300/d' /etc/yum.conf
rpm -e puppetlabs-release-7-10
