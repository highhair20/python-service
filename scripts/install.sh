#!/bin/bash

# Update the system
apt update
apt upgrade -y
apt autoremove

# Discard any unneeded files that have been downloaded as part of the upgrade.
apt clean

# Create a symlink so that the system sees your app as a service
ln -s /opt/glolabs/python-service/system/helloworld.service /etc/systemd/system/helloworld.service

# Set the app to run on reboot
systemctl enable helloworld.service   # Sets the script to run every boot
systemctl start helloworld.service    # Runs the script now

# Finish by restarting:
reboot
