#!/usr/bin/env bash

# Enables Node.js v10 repo
curl -sL https://rpm.nodesource.com/setup_10.x | bash -
# Installs Node and NPM
yum -y install nodejs