#!/bin/bash
# Purpose: Config ubuntu DHCP server
# https://ubuntu.com/server/docs/network-dhcp
# Author: Jose Maria Madronal GPL v2.0+ (Proxmox script)
# ------------------------------------------
#
#
# declare STRING variable
STRING="Scripts examples"
f_dchpd_conf="https://github.com/joan032/Linux_dhcp.git/dhcpd.conf"
#print variable on a screen
echo $STRING

#Install DHCP
apt-get install isc-dhcp-server

# download githup configuration file
wget $f_dchpd_conf

# copy configuration file to etc directory
cp dhcpd.conf /etc/dhcp

systemctl restart isc-dhcp-server
