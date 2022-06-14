#!/bin/bash

ssh -i "eng114.pem" ubuntu@ec2-db-private-ip.eu-west-1.compute.amazonaws.com

 scp -i "vm_test.pem" -r ../Desktop/eng114_devops_repo/app/ ec2-34-243-18-85.eu-west-1.compute.amazonaws.com:~
