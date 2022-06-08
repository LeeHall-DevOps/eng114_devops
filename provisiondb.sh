#!/bin/bash

# update package index
sudo apt-get update -y

# upgrade packages
sudo apt-get upgrade -y

# apt key

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927

# MongoDB source list
sudo echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

# more updates
sudo apt-get update -y

# more upgrades
sudo apt-get upgrade -y

#install mongodb
sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20

# start mongodb
sudo systemctl start mongod

# enable mongodb
sudo systemctl enable mongod



#mongodb config



sudo systemctl restart mongod
sudo systemctl enable mongod