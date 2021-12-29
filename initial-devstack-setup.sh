#!/bin/bash

# sudo apt update
# sudo apt upgrade -y
sudo useradd -s /bin/bash -d /opt/stack -m stack
sudo echo "stack ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/stack
sudo git clone https://opendev.org/openstack/devstack /opt/stack/devstack
sudo echo '[[local|localrc]]
ADMIN_PASSWORD=admin
DATABASE_PASSWORD=$ADMIN_PASSWORD
RABBIT_PASSWORD=$ADMIN_PASSWORD
SERVICE_PASSWORD=$ADMIN_PASSWORD' > /opt/stack/devstack/local.conf
sudo chown stack:stack -R /opt/stack

su -c '/opt/stack/devstack/stack.sh' stack
