#!/bin/bash

# This script automatic setup Ansible repository and install last version.

sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install ansible -y
