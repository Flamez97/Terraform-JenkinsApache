#! /bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt install ansible -y
ansible -m ping localhost
wget https://jenkinsci.s3.amazonaws.com/jenkins.yml
ansible-playbook jenkins.yml
