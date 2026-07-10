#!/bin/bash
hostnamectl set-hostname ${hostname}

echo "Welcome ${username}" > /home/ec2-user/welcome.txt
