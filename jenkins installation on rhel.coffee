#!/bin/bash
#Download the java
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm
#install the java
rpm -ivh jdk-8u131-linux-x64.rpm
#remove remove jdk 
rm -f jdk-8u131-linux-x64.rpm
#change to opt directory
cd /opt
#Download jenkins
wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
#installing the jenkins with rpm
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
#update
yum update -y
yum install jenkins -y
systemctl enable jenkins