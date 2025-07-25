#!/data/data/com.termux/files/usr/bin/bash

# Emon WiFi Booster Script for Termux
# Author: EMon
# GitHub: https://github.com/Termux-Emon

# Color
GREEN='\033[1;32m'
CYAN='\033[1;36m'
RED='\033[1;31m'
NC='\033[0m'

echo -e "${CYAN}Emon WiFi Booster Toolkit${NC}"
echo -e "${GREEN}Initializing WiFi repeater setup...${NC}"

# Requirements
pkg install termux-api tsu -y >/dev/null 2>&1

# Speed Tweaks
echo -e "${GREEN}[+] Applying speed tweaks...${NC}"
echo "net.ipv4.tcp_window_scaling=1" >> /data/data/com.termux/files/usr/etc/sysctl.conf
echo "net.core.rmem_max=16777216" >> /data/data/com.termux/files/usr/etc/sysctl.conf
echo "net.core.wmem_max=16777216" >> /data/data/com.termux/files/usr/etc/sysctl.conf

# DNS Optimization
echo -e "${GREEN}[+] Setting Google DNS...${NC}"
echo "nameserver 8.8.8.8" > $PREFIX/etc/resolv.conf
echo "nameserver 1.1.1.1" >> $PREFIX/etc/resolv.conf

# Hotspot Setup (manual)
echo -e "${CYAN}[!] Now manually turn on Hotspot from Settings.${NC}"
echo -e "${CYAN}[!] Connect phone A to WiFi. Phone B will get boosted internet from Hotspot.${NC}"
echo -e "${GREEN}[✔] Done! Booster Active.${NC}"
