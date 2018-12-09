#!/usr/bin/env bash

yum -y update
# Add the CentOS 7 EPEL repository
yum -y install epel-release
# Install core tools
yum -y install make gcc-g++ git vim curl

/vagrant/provision/install-nginx.sh
/vagrant/provision/install-node.sh