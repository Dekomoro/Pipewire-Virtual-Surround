#!/bin/bash

# Create ~/.hrir
mkdir ~/.hrir
# Download Hesuvi oal_dflt from dropbox into ~/.hrir
wget https://cdn.discordapp.com/attachments/757082238327193722/1102120604271923240/oal_dflt.wav -O ~/.hrir/hrir.wav

# Create the filter chain directory
mkdir ~/.config/pipewire
mkdir ~/.config/pipewire/pipewire.conf.d

# Download the filter chain
wget https://cdn.discordapp.com/attachments/757082238327193722/1099450829817270373/hrir.conf -O ~/.config/pipewire/pipewire.conf.d/hrir.conf

# Restart the pipewire service on systemd
systemctl --user restart pipewire.service
