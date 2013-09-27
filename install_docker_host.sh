#!/bin/sh

# Requires Ubuntu 13.04!

# update os
apt-get update
apt-get upgrade -y
apt-get install -y curl git

# add docker repo
curl https://get.docker.io/gpg | apt-key add -
echo deb http://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list
apt-get update

# install docker
apt-get install -y lxc-docker