#!/bin/bash

# 1. Generate an SSH key pair using the RSA algorithm with the default settings.
# Save the private key to the user's home directory.
user_name="devopsuser"

# Generate the SSH key pair for the user
sudo -u "$user_name" ssh-keygen -t rsa -f "/home/$user_name/.ssh/id_rsa"


echo "PasswordAuthentication no" | sudo tee -a /etc/ssh/sshd_config
sudo systemctl restart ssh
