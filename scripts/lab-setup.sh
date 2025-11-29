#!/bin/bash
# 🖥️ University Lab Setup Script
# Automates installation of VirtualBox, Ubuntu VM, and student accounts

set -e

echo "🔧 Updating system..."
sudo apt-get update -y && sudo apt-get upgrade -y

echo "📦 Installing VirtualBox..."
sudo apt-get install -y virtualbox

echo "🐧 Creating Ubuntu VM directory..."
mkdir -p ~/university_vm

echo "👩‍🎓 Adding sample student accounts..."
for user in alice bob charlie; do
  sudo adduser --disabled-password --gecos "" $user
  sudo passwd -d $user
  echo "Created account: $user"
done

echo "📂 Setting up shared lab directory..."
sudo mkdir -p /srv/university_lab
sudo groupadd students || true
sudo chown :students /srv/university_lab
sudo chmod 770 /srv/university_lab

echo "✅ Lab setup complete. Students can now log in and access /srv/university_lab."
