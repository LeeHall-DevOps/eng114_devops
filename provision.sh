#!/bin/bash

#update
sudo apt-get update -y

#upgrade
sudo apt-get upgrade -y

#install nginx
sudo apt-get install nginx -y

#start nginx
sudo systemctl start nginx

#enable nginx
sudo systemctl enable nginx

# change the dir to 'cd app/app/app/app'
cd ./app/app/app/app/

# install npm
sudo npm install pm 2 -g

# install js
npm install

# start node program
npm start