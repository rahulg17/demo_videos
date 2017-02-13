#!/bin/bash

setenforce 0
systemctl stop firewalld
systemctl disable firewalld
yum install httpd -y
systemctl restart httpd
echo "This is just a test" > /opt/test.txt
wget ftp://fr2.rpmfind.net/linux/dag/redhat/el7/en/x86_64/dag/RPMS/stress-1.0.2-1.el7.rf.x86_64.rpm -O /tmp/stress-1.0.2-1.el7.rf.x86_64.rpm
rpm -ivh /tmp/stress-1.0.2-1.el7.rf.x86_64.rpm
yum install tomcat -y  
yum install tomcat-webapps tomcat-admin-webapps -y
wget http://vm-confluence.eastus.cloudapp.azure.com:8081/repository/maven-snapshots/com/devOps/Credit_Card_App/1.0.0-SNAPSHOT/Credit_Card_App-1.0.0-20170213.095438-1.war -O /var/lib/tomcat/webapps/CreditCardApp.war
chown tomcat:tomcat /var/lib/tomcat/webapps/CreditCardApp.war
systemctl restart tomcat.service
mv /etc/httpd/conf/httpd.conf /opt/
wget https://raw.githubusercontent.com/rahulg17/demo_videos/master/httpd.conf -O /etc/httpd/conf/httpd.conf
systemctl restart httpd
