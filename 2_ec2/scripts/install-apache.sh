#!/bin/bash
yum update -y
yum install httpd -y
systemctl start httpd
systemctl enable httpd
cd /var/www/html || exit 1
echo "This is a test page running on Apache on EC2 in the AWS Cloud" > index.html
