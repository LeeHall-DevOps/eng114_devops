#!/bin/bash

# update package index
sudo apt-get update -y

# upgrade packages
sudo apt-get upgrade -y

# install nginx
sudo apt-get install nginx -y

# enable nginx
sudo systemctl enable nginx

scp -i "vm_test.pem" -r ../Desktop/eng114_devops_repo/app/ ec2-34-243-18-85.eu-west-1.compute.amazonaws.com:~

scp -i -r ../Desktop/eng114_devops_repo/app/ vagrant@192.168.33.10:~
 vagrant scp <some_local_file_or_dir> <vm_name>:<some_path_on_vm>
# nginx status
# sudo systemctl status nginx (debug tool)

# adding export to .bashrc
echo "export DB_HOST=mongodb://192.168.10.150:27017/posts" >> ~/.bashrc 

# source .bashrc
source ~/.bashrc

# print enviroment
printenv DB_HOST mongodb://192.168.10.150:27017/posts


# download nodejs
sudo curl -sL http://deb.nodesource.com/setup_8.x | sudo -E bash -

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
