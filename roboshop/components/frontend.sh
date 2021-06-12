#!/bin/bash

source components/common.sh
rm -f /tmp/roboshop.log
set-hostname frontend

HEAD "Installing Nginx\t"
yum install nginx -y &>>/tmp/roboshop.log
STAT $?

HEAD "Download from GitHub\t"
curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip" &>>/tmp/roboshop.log
STAT $?