#!/bin/bash

# user-data bootstrap for ganymede

# Fail fast on error
set -e

CHEF_PACKAGE="chef-server-core-12.14.0-1.el7.x86_64.rpm"
USER_NAME="chef"
FIRST_NAME="Cheffery"
LAST_NAME="Hopper"
EMAIL="gregory.weaver@gmail.com"
FILENAME="/etc/chef/admin.pem"
#PASSWORD=$PASSWORD
PASSWORD="bacon123"

# Pre-Reqs
## wget
sudo yum -y install wget

# Chef Server
## install
wget https://packages.chef.io/files/stable/chef-server/12.14.0/el/7/${CHEF_PACKAGE}
sudo rpm -Uvh $CHEF_PACKAGE

## username
sudo /sbin/useradd chef

## chef dir
#sudo mkdir /etc/chef

## restart services
sudo chef-server-ctl reconfigure

## admin user
sudo chef-server-ctl user-create ${USER_NAME} ${FIRST_NAME} ${LAST_NAME} ${EMAIL} "${PASSWORD}" --filename ${FILE_NAME}
