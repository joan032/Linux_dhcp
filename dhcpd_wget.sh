#!/bin/bash
# Purpose: Configure Ubuntu DHCP server
# https://ubuntu.com/server/docs/network-dhcp
# Author: Jose Maria Madronal GPL v2.0+ (Proxmox script)
# ------------------------------------------

# declare STRING variable
STRING="Script example"
f_dchpd_conf="https://raw.githubusercontent.com/joan032/Linux_dhcp/master/dhcpd.conf"

# Print variable on the screen
echo $STRING

# Install DHCP
sudo apt-get install isc-dhcp-server

# Download GitHub configuration file
wget $f_dchpd_conf

# Copy the configuration file to /etc/dhcp directory
sudo cp dhcpd.conf /etc/dhcp/

# Restart the DHCP server
sudo systemctl restart isc-dhcp-server
