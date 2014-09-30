#!/bin/sh
##
#
# Install Apache2 and configure a basic SSL site
#
##
#create cert directories
echo "Making cert directories"
sudo mkdir /etc/apache2
sudo mkdir /etc/apache2/ssl
sudo mkdir /etc/apache2/ssl/certs
sudo mkdir /etc/apache2/ssl/private

#move certs
echo "Moving cert files"
sudo mv /tmp/ssl.pem /etc/apache2/ssl/certs/
sudo mv /tmp/ssl.key /etc/apache2/ssl/private/

#install apache2
echo "Installing Apache2"
sudo apt-get install apache2 -y
echo "Enabling Apache2"
sudo a2enmod ssl

#move config in place
echo "Installing Apache2 Config"
sudo mv /tmp/default-ssl.conf /etc/apache2/sites-available/default-ssl.conf

#enable ssl
echo "Enable Apache2 default-ssl"
sudo a2ensite default-ssl
echo "Reload Apache2"
sudo service apache2 reload
