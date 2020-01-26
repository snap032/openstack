#!/bin/bash
################
##  openstack ##
################

yum update -y
yum install -y git nano ntp ntpdate ntp-doc python python-pip parted net-tools git

sudo yum install -y centos-release-openstack-stein

sudo yum install -y openstack-packstack
sudo packstack --allinone

echo "SUCCESS, THAN YOU"
