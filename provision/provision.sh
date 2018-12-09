#!/usr/bin/env bash

# Add the CentOS 7 EPEL repository
yum -y install epel-release

./install-nginx.sh

yum -y install vim