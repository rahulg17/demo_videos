#!/bin/bash

setenforce 0
systemctl stop firewalld
systemctl disable firewalld
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jre-7u79-linux-x64.rpm" -O /tmp/jdk-8u60-linux-x64.rpm
rpm -ivh /tmp/jdk-8u60-linux-x64.rpm
yum install tomcat -y  
yum install tomcat-webapps tomcat-admin-webapps -y
wget https://github.com/rahulg17/demo_videos/blob/master/CreditCardApp.war -O /var/lib/tomcat/webapps/
systemctl restart tomcat.service
echo "This is just a test" >> /opt/test.txt
