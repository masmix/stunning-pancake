#!/bin/bash
USER='ec2-user'
yum update -y
yum install -y docker git vim nodejs java-11-openjdk-devel
usermod -aG docker $USER 
service docker enable
service docker start
# Install sonarqube server 
docker run -d --name sonarqube -e SONAR_ES_BOOTSTRAP_CHECKS_DISABLE=true -p 9000:9000 sonarqube:latest
