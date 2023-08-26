# Set the app to run on reboot
sudo systemctl stop helloworld.service      # Stop the script now
sudo systemctl disable helloworld.service   # Disable the script to run every boot
