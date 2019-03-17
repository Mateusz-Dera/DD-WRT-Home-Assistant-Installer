# DD-WRT Home Assistant Installer

# Stable Version
  - This is the beta version, you can find the stable version here: https://github.com/Mateusz-Dera/DD-WRT-Home-Assistant-Installer/tree/0.75.3
  
# Info
  - Home Assistant 0.89.2
  - Tested on Netgear R6400v2 (DD-WRT v3.0-r37305)
  - In this version Entware has been replaced by Optware-ng

# USB Requirements
 - Mounted JFFS partition (Script create and mount OPT parttion in /jffs/opt)
 - Optional SWAP partition

# Installation
 - Run: cd /jffs    
 - Run: curl -kLO https://raw.githubusercontent.com/Mateusz-Dera/DD-WRT-Home-Assistant-Installer/master/install.sh && chmod +x ./install.sh && ./install.sh
 - Remove install.sh
 - Reboot router
 - Home Assistant will generate configuration files (this may take a moment) and start up after a few minutes
 
# Configuration
 - Configuration files path: /opt/homeassistant/config
