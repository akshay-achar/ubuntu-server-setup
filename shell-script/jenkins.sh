#!/bin/sh
sudo apt-get update
sudo apt install -y default-jre
java -version
sudo apt install -y default-jdk
javac -version
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
 sudo apt-get update
 sudo apt install -y jenkins
 sudo systemctl start jenkins
sudo systemctl status jenkins
sudo ufw allow OpenSSH
 sudo ufw allow 8080
 sudo ufw --force enable
 sudo ufw status

