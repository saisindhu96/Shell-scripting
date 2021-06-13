#!/bin/bash

source components/common.sh
rm -f /tmp/roboshop.log
set-hostname mongodb

HEAD "Setup MongoDB yum repo file\t"
echo '[mongodb-org-4.2]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/4.2/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-4.2.asc' >/etc/yum.repos.d/mongodb.repo
STAT &?

HEAD "Install MongoDB\t\t"
yum install -y mongodb.org &>>/tmp/roboshop.log
STAT &?

HEAD "Update Listen Address in config file"
sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/mongod.conf
STAT &?

Head "Start MongoDB Service\t\t"
systemctl enable mongod &>>/tmp/roboshop.log
systemctl start mongod &>>/tmp/roboshop.log
STAT &?










