#!/bin/bash
yum update -y
#install apache
yum install httpd -y
#start apache
systemctl start httpd
#enable the httpd 
systemctl enable httpd 

