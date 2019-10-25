#!/bin/bash
echo "======================================================"
echo "Add Ansible PPA for latest version"
echo "======================================================"
sudo apt update && sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible

sudo apt install ansible

echo "======================================================"
echo "Play Ansible playbook"
echo "======================================================"
ansible-playbook -K main.yml