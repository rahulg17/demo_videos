#!/bin/bash

setenforce 0
systemctl stop firewalld
systemctl disable firewalld
yum install httpd -y
systemctl restart httpd
echo "This is just a test" > /opt/test.txt
