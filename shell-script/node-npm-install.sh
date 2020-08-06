#!/bin/sh
sudo apt-get update
sudo snap install node --classic --channel=edge
node -v
npm -v
