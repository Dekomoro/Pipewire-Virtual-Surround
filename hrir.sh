#!/bin/bash

# Create ~/.hrir
mkdir ~/.hrir
# Download Hesuvi oal_dflt from dropbox into ~/.hrir
wget https://raw.githubusercontent.com/Dekomoro/Pipewire-Virtual-Surround/main/hrir.wav -O ~/.hrir/hrir.wav

# Create the filter chain directory
mkdir ~/.config/pipewire
mkdir ~/.config/pipewire/pipewire.conf.d

# Download the filter chain
wget https://raw.githubusercontent.com/Dekomoro/Pipewire-Virtual-Surround/main/hrir.conf -O ~/.config/pipewire/pipewire.conf.d/hrir.conf

# Restart the pipewire service on systemd
systemctl --user restart pipewire.service
