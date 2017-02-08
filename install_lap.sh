#!/bin/bash

yum update -y
yum install httpd
echo "This is just a test" > /opt/test.txt
