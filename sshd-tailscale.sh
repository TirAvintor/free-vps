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
curl -fsSL https://tailscale.com/install.sh | sh

# Step 5: Run Tailscale
echo
echo "[*] Run this command: tailscale up"
echo
