## Most used commands
___
- Update ubuntu: `sudo apt-get update -y` 
- upgrade ubuntu: `sudo apt-get upgrade -y`
- Install nginx: `sudo apt-get install nginx -y`
- Check nginx status: `systemct1 status nginx` or `stop` or `start` or `restart` 
- Who am I `iname` or `uname -a`
- where am I `pwd`
- How to create a folder in linux `mkdir dir_name`
- How to check dir/file `ls` or `ls -a`
- change dir `cd name-dir`
- come out/back of/from the current location `cd ..`
- how to create a file `touch filename` or `nano file-name` 
- move test.txt from current location to devops folder
- Cut paste `mv test.txt devops` copy `cp path_of_data path_of_destination`

## File permissions
- READ `r` WRITE `w`  `x`
- How to check file permission `ll`
- Change permissions `chmod permission file-name`![]()

### Bash Scripting
- create a file called `provision.sh`
- change permission of this file `chmod +x provision.sh`

- first line `MUST BE` starting with `#!/bin/bash`
- update & update
- installed nginx
- start nginx
-`enable nginx
- checked status
- stopped then started 

## adding external script to vagrant
config.vm.provision "file", source: "./provision.sh", destination: "$HOME/" 


## steps for passing app spec test

- curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
- sudo apt-get install nodejs -y
- sudo npm install pm2 -g
- sudo apt-get install python-software-properties

## Creating development environment step by step

### Setting up vagrant environment 
#### (The env we can work on with effecting the localhost)
---
#### open Git Bash (Ensure you are admin when running commands in command line)
1. Type `vagrant init "ubuntu/xenial64"` in command line, press enter. (This will initialize the folders for vagrant)

2. Type `vagrant up` 
press Enter. (This starts the vm)

3. Type `vagrant ssh`
press Enter. (This transfers you into vm)

#### once inside vm
4. Type `sudo apt-get update -y` 
(This gets updates for VM, the (-y) says yes to any questions automatically)

5. Type `sudo apt-get upgrade -y`
(This updates the VM's features)

6. Type `sudo apt-get install nginx -y` 
(This installs software needed)

7. Type `sudo systemctl enable nginx -y` 
(This enables nginxs to work without requesting permission)

8. Type `sudo systemctl status ngnix -y` 
(This checks the vm network is working)

9. Type `curl -sL http://deb.nodesource.com/setup_6.x | sudo -E bash -y` (Download) 


## Reverse Proxy
sudo nano /etc/nginx/sites-available/default

### Change default file
    location / {
        proxy_pass http://localhost:3000;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
    }


`sudo nginx -t` to make sure that there are no syntax errors

`sudo systemctl restart nginx` to restart nginx and set up the reverse proxy

You always have to change the port number after the colon to match your needs

location allows you to provide access to other applications on the same server. For example, if location /some/path/, the url would be http://www.example.com/some/path/index.html

proxy_pass passes the url through to a HTTP server

## What is Cloud computing with AWS?

### AWS Global
information about AWS con be found at: [AWS-Global infrastructure linked here](https://aws.amazon.com/about-aws/global-infrastructure/) 

role of region
make sure to deploy in the right location for client


azs = multi availiblity zones
we need at least two availibility zones, reason being if zone_one goes off line. the data is diverted to zone_two. until zone_one is fixed




