#!/bin/bash

yum install httpd -y
systemctl enable httpd.service
systemctl start httpd.service
echo "This is just a test" > /opt/test.txt
