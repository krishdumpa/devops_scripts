#!/bin/bash
apt-get update -y
#install apache on ubuntu
apt-get install apache2 -y
#start apache
systemctl start apache2
#enable the httpd 
systemctl enable apache2