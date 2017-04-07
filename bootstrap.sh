#!/bin/bash

# user-data bootstrap for ganymede

# Fail fast on error
set -e

# NodeJS
curl --silent --location https://rpm.nodesource.com/setup_7.x | sudo bash
sudo yum install -y gcc-c++ make
sudo yum -y install nodejs

# Chef Client
curl -L https://www.chef.io/chef/install.sh | sudo bash
sudo mkdir /etc/chef

# sudo su -
# sudo echo 'ec2-user ALL=(ALL:ALL) ALL' >> /etc/sudoers

# nodejs user/group
sudo /sbin/useradd nodejs

# Extract application from gold image
sudo mkdir /opt/rocinante
sudo tar -xpzf /home/ec2-user/rocinante.tar.gz -C /opt/rocinante

# Start application
#cd /opt/rocinante
#npm install
#sudo npm install -g forever
#forever app.js &
