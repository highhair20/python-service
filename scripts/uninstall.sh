# Set the app to run on reboot
sudo systemctl stop helloworld.service      # Stop the script now
sudo systemctl disable helloworld.service   # Disable the script to run every boot

# Remove the symlink so that the system does not see your app as a service
rm /etc/systemd/system/helloworld.service
