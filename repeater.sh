#!/data/data/com.termux/files/usr/bin/bash

# Emon WiFi Repeater Toolkit
# GitHub: https://github.com/Termux-Emon
# Author: Emon Hawladar

# Colors
GREEN='\033[1;32m'
CYAN='\033[1;36m'
RED='\033[1;31m'
NC='\033[0m'

echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "     📡 Emon WiFi Repeater Tool"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

# Requirements
pkg install termux-api -y > /dev/null 2>&1

# Show Connected WiFi Info
SSID=$(termux-wifi-connectioninfo | grep ssid | cut -d '"' -f 4)
echo -e "${GREEN}[✓] Connected WiFi SSID: ${CYAN}${SSID}${NC}"

# DNS Optimization
echo -e "${GREEN}[+] Optimizing DNS for better latency...${NC}"
echo "nameserver 8.8.8.8" > $PREFIX/etc/resolv.conf
echo "nameserver 1.1.1.1" >> $PREFIX/etc/resolv.conf

# Speed Tweak
echo -e "${GREEN}[+] Increasing TCP buffer size...${NC}"
echo "net.core.rmem_max=26214400" >> $PREFIX/etc/sysctl.conf
echo "net.core.wmem_max=26214400" >> $PREFIX/etc/sysctl.conf

# Instruction
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "${GREEN}[✔] Now go to SETTINGS and TURN ON Hotspot manually"
echo -e "${CYAN}[→] Your other phone can now connect to this Hotspot and share internet"
echo -e "📱 Make sure WiFi+Hotspot is running together"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
