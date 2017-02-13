#!/bin/bash

setenforce 0
systemctl stop firewalld
systemctl disable firewalld
yum install httpd -y
systemctl restart httpd
echo "This is just a test" > /opt/test.txt
wget ftp://fr2.rpmfind.net/linux/dag/redhat/el7/en/x86_64/dag/RPMS/stress-1.0.2-1.el7.rf.x86_64.rpm -O /tmp/stress-1.0.2-1.el7.rf.x86_64.rpm
rpm -ivh /tmp/stress-1.0.2-1.el7.rf.x86_64.rpm
