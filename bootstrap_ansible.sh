#!/bin/bash

# Get the latest version of ansible
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible git -y
