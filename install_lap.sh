#!/bin/bash

setenforce 0
systemctl stop firewalld
systemctl disable firewalld
yum install httpd -y
systemctl start httpd
