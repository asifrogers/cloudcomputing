#!/bin/bash

# Exit on error
set -e

echo "Starting MySQL installation on Ubuntu 22.x..."

# Step 1: Update the system and install required dependencies
echo "Updating system and installing required dependencies..."
apt-get update -y
apt-get upgrade -y
apt-get install -y wget curl gnupg lsb-release

# Step 2: Download MySQL APT repository package
echo "Downloading MySQL APT repository..."
wget https://dev.mysql.com/get/mysql-apt-config_0.8.17-1_all.deb

# Step 3: Install the MySQL APT repository package
echo "Installing MySQL APT repository..."
dpkg -i mysql-apt-config_0.8.17-1_all.deb

# Step 4: Update package index again to include MySQL packages
echo "Updating package index..."
apt-get update -y

# Step 5: Install the latest MySQL server package
echo "Installing MySQL server..."
apt-get install -y mysql-server

# Step 6: Start and enable MySQL service
echo "Starting MySQL service..."
systemctl start mysql

echo "Enabling MySQL service to start on boot..."
systemctl enable mysql

# Step 7: Secure MySQL installation
echo "Securing MySQL installation..."
mysql_secure_installation

# Step 8: Verify MySQL installation
echo "Verifying MySQL installation..."
mysql --version

echo "MySQL installation completed successfully!"
