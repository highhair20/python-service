#!/bin/bash

# Update the system
sudo apt update
sudo apt upgrade -y
sudo apt autoremove

# Discard any unneeded files that have been downloaded as part of the upgrade.
sudo apt clean

# Create a symlink so that the system sees your app as a service
ls -s /opt/glolabs/python-service/system/helloworld.service /etc/systemd/system/helloworld.service

# Set the app to run on reboot
sudo systemctl enable helloworld.service   # Sets the script to run every boot
sudo systemctl start helloworld.service    # Runs the script now

# Finish by restarting:
sudo reboot

# Install dependencies (if required)
# sudo apt install -y <dependency_packages>