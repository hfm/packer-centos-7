#!/bin/sh
set -e

install -v -o vagrant -g vagrant -m 0700 -d /home/vagrant/.ssh
curl -o /home/vagrant/.ssh/authorized_keys -kL 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub'
chown vagrant:vagrant /home/vagrant/.ssh/authorized_keys
chmod 600 /home/vagrant/.ssh/authorized_keys

cat <<'EOF' > /home/vagrant/.bash_profile
[ -f ~/.bashrc ] && . ~/.bashrc
export PATH=$PATH:/sbin:/usr/sbin:$HOME/bin
EOF
