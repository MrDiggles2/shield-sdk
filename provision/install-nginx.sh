#!/usr/bin/env bash

yum -y install nginx

# Security Enhanced Linux (SEL) has a bug interacting with nginx, this is a workaround
# https://stackoverflow.com/a/30897591/1830312
setenforce permissive

# Back up the original conf, just in case
mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig

# Load up the confs for our development area
mkdir -p /etc/nginx/sites-enabled/
cp ../conf/nginx.conf /etc/nginx/nginx.conf
cp ../conf/local.development.conf /etc/nginx/sites-available/local.development.conf

service nginx restart
