#! /bin/bash


sudo add-apt-repository -y ppa:certbot/certbot
sudo apt install -y python-certbot-apache
sudo apache2ctl configtest
sudo systemctl reload apache2
sudo certbot --apache -d   $1
