#!/bin/bash
USER='ec2-user'
yum update -y
yum install -y docker git vim nodejs java-11-openjdk-devel
sudo usermod -aG docker $USER 
service docker enable
