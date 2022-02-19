#!/bin/bash
sudo yum -y update
sudo yum -y install ruby
sudo yum -y install wget
cd /home/ec2-user
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
sudo chmod +x ./install
sudo ./install auto
sudo service codedeploy-agent start

wget https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm
sudo rpm -Uvh mysql80-community-release-el7-3.noarch.rpm
sudo yum -y install mysql-server
service mysqld start

sudo yum -y install java

mysql --connect-expired-password -u root -p$(grep 'A temporary password is generated' /var/log/mysqld.log | rev | cut -d ' ' -f1 | rev) -Bse "ALTER USER 'root'@'localhost' IDENTIFIED BY 'P@ssw0rd'; CREATE DATABASE sharenote;"
