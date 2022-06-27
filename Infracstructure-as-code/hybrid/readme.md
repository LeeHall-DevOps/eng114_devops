# Hybrid cloud computing

## Requirements
- Controller Working
- Create a server on AWS using Ansible controller with PLAYBOOK/S
- AWS access & secret keys - AWSCLI - s3
- Ansible VAULT
- copy the key/file to ~/.ssh folder of your controller - file.pem - eng114.pem 
- Create an ssh connection from controller to AWS ec2
- generate a new ssh key pair - eng114 - eng114.pub
- test connection - ssh into you ec2 from ansible controller - or ping
`sudo ansible aws -m ping --ask-vault-pass`

# Opening the vault
- vi
-ii insert
type info
- press esc :wq! enter :q!

- go to 

- `cd /etc/ansible/group_vars/all`

- `sudo nano pass.yml`

- `sudo ansible-vault create pass.yml`

aws_access_key: _
aws_secret_key: _

- `cat pass.yml`

access_ec2_instanst `sudo ansible-playbook app_ec2_instance.yml --ask-vault-pass --tags ec2-instance`

Run playbook instance using
ansible-vault [playbook-name] --ask-vault-pass --tags [tag-name]