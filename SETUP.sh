#!/bin/bash

# Function to display status messages
function echo_status {
    echo -e "\n\e[1;32m$1\e[0m\n"
}

# Update and upgrade the system
echo_status "Updating and upgrading the system..."
sudo apt update && sudo apt upgrade -y

# Install common utilities
echo_status "Installing common utilities..."
sudo apt install -y curl wget git build-essential

# Install GCC and G++
echo_status "Installing GCC and G++..."
sudo apt install -y gcc g++

# Install Python (latest version)
echo_status "Installing the latest version of Python..."
sudo apt install -y python3 python3-pip

# Install Google Chrome
echo_status "Installing Google Chrome..."
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# Install Visual Studio Code
echo_status "Installing Visual Studio Code..."
sudo snap install code --classic

# Install Wonderwall (Wallpaper app) via Snap
echo_status "Installing Wonderwall..."
sudo snap install wonderwall

# Install Discord via Snap
echo_status "Installing Discord..."
sudo snap install discord

# Install Spotify via Snap
echo_status "Installing Spotify..."
sudo snap install spotify

# Install MPV Player
echo_status "Installing MPV Player..."
sudo apt install -y mpv

# Install GNOME Tweaks
echo_status "Installing GNOME Tweaks..."
sudo apt install -y gnome-tweaks

# Install GNOME Extensions
echo_status "Installing GNOME Shell Extensions..."
sudo apt install -y gnome-shell-extensions

# Disable GNOME Dock (Ubuntu Dock)
echo_status "Disabling GNOME Dock..."
gnome-extensions disable ubuntu-dock@ubuntu.com

# Setting Charging Threshold
sudo cp battery-charge-threshold.service /etc/systemd/system/
sudo systemctl enable battery-charge-threshold.service
sudo systemctl start battery-charge-threshold.service
sudo systemctl daemon-reload
sudo systemctl restart battery-charge-threshold.service

# Cleanup
echo_status "Cleaning up..."
sudo apt autoremove -y
sudo apt clean

echo_status "System setup completed successfully!"

