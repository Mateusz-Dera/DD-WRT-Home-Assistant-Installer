# DD-WRT Home Assistant Installer
  
# Info
  - Home Assistant 0.92.1
  - Tested on Netgear R6400v2 (DD-WRT v3.0-r37305)
  - This script install DD-WRT Easy Optware-ng Installer (If it's needed)
  - https://github.com/Mateusz-Dera/DD-WRT-Easy-Optware-ng-Installer

# USB Requirements
 - Mounted JFFS partition
 - Optional SWAP partition

# Installation
 - Run: cd /jffs    
 - Run: curl -kLO https://raw.githubusercontent.com/Mateusz-Dera/DD-WRT-Home-Assistant-Installer/0.92.1/install.sh && sh ./install.sh
 - Restart router
 - Home Assistant will generate configuration (it takes a lot of time) files and start up
 
# Configuration
 - Configuration files path: /opt/homeassistant/config
