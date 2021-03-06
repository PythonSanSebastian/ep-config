#!/bin/bash

sudo apt-get update
sudo apt-get -y upgrade

HOME=/home/vagrant

sudo apt-get -y install ssh libssl-dev libffi-dev python-dev curl rsync sshpass python

cp -f /vagrant/ansible/roles/ssh/files/id_rsa.pub ${HOME}/.ssh/
cp -f /vagrant/ansible/roles/ssh/files/id_rsa.pub ${HOME}/.ssh/authorized_keys
cp -f /vagrant/ansible/roles/ssh/files/known_hosts ${HOME}/.ssh/known_hosts

chmod 600 ${HOME}/.ssh/*
chmod 700 ${HOME}/.ssh
chmod 644 ${HOME}/.ssh/id_rsa.pub

echo "alias 'll=ls -la'" >> ~/.bashrc

true
