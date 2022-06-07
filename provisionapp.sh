#!/bin/bash

# update package index
sudo apt-get update -y

# upgrade packages
sudo apt-get upgrade -y

# install nginx
sudo apt-get install nginx -y

# enable nginx
sudo systemctl enable nginx

# nginx status
# sudo systemctl status nginx (debug tool)


# download nodejs
sudo curl -sL http://deb.nodesource.com/setup_6.x | sudo -E bash -

# install nodejs
sudo apt-get install -y nodejs 

# install pm2
sudo apt-get install python-software-properties -y

# install npm dependencies
npm install pm2 -g

# change directory to /vagrant
cd app/app/app

# install npm dependencies
npm install 

# start app
npm start 
