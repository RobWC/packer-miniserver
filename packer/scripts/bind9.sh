#!/bin/sh
##
#
# Install Bind9
#
##

#install package
sudo apt-get install bind9 -y

#move config files
sudo mv /tmp/named.conf.local.tmpl /etc/bind
sudo mv /tmp/db.supercerts.ninja.tmpl /etc/bind
