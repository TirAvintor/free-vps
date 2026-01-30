#!/bin/bash

# Step 1: Clear Terminal
clear

# Step 2: Update System
echo
echo "[*] Update System"
echo

sleep 2
apt-get update

# Step 3: Update SSH
echo
echo "[*] Update SSH"
echo

sleep 2
bash <(curl -s https://raw.githubusercontent.com/TirAvintor/free-vps/refs/heads/main/change-sshd.sh)

# Step 4: Install Tailscale
echo
echo "[*] Install Tailscale"
echo

sleep 2
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/noble.noarmor.gpg | sudo tee /usr/share/keyrings/tailscale-archive-keyring.gpg >/dev/null
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/noble.tailscale-keyring.list | sudo tee /etc/apt/sources.list.d/tailscale.list

sudo apt-get update
sudo apt-get install tailscale

# Step 5: Run Tailscale
echo
echo "[*] Run this command: tailscale up"
echo
