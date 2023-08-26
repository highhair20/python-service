#!/bin/bash

# Update the system
sudo apt update
sudo apt upgrade -y
sudo apt autoremove

# Discard any unneeded files that have been downloaded as part of the upgrade.
sudo apt clean

# Set the app to run on reboot
ls -s
sudo systemctl start /opt/verkundenbot/device/healthcheck.py    # Runs the script now
sudo systemctl enable /opt/verkundenbot/device/healthcheck.py   # Sets the script to run every boot

# Finish by restarting:
sudo reboot

# Install dependencies (if required)
# sudo apt install -y <dependency_packages>
