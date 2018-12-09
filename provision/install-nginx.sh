#!/usr/bin/env bash

yum -y install nginx

# Security Enhanced Linux (SEL) has a bug interacting with nginx, this is a workaround
# https://stackoverflow.com/a/30897591/1830312
setenforce permissive

# Back up the original conf, just in case
mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig

# Load up the confs for our development area
mkdir -p /etc/nginx/sites-enabled/
mkdir -p /etc/nginx/sites-available/

cp /vagrant/provision/conf/nginx.conf /etc/nginx/nginx.conf
cp /vagrant/provision/conf/local.development.conf /etc/nginx/sites-available/local.development.conf

ln -s /etc/nginx/sites-available/local.development.conf /etc/nginx/sites-enabled/local.development.conf

# Start the nginx service
service nginx restart
