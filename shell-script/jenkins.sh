#!/bin/sh
sudo apt-get update
sudo apt install -y default-jre
java -version
sudo apt install -y default-jdk
javac -version
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
 sudo apt-get update
 sudo apt install -y jenkins
 sudo systemctl start jenkins
sudo systemctl status jenkins
sudo ufw allow OpenSSH
 sudo ufw allow 8080
 sudo ufw --force enable
 sudo ufw status

