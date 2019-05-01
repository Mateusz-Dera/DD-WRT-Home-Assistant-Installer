# DD-WRT Home Assistant Installer
# Info
  - Home Assistant 0.75.3
  - Support ARMv7 EABI softfloat (For other platforms, you must change the version of the Entware in the install.sh file)
  - Tested on Netgear R6400v2 (DD-WRT v3.0-r37305)

# USB Requirements
 - Mounted JFFS partition (Script create and mount /opt parttion in /jffs/opt)
 - Optional SWAP partition

# Installation
 - Run: cd /jffs    
 - Run: curl -kLO https://raw.githubusercontent.com/Mateusz-Dera/DD-WRT-Home-Assistant-Installer/0.75.3/install.sh && chmod +x ./install.sh && ./install.sh
 - Remove install.sh
 - Reboot router
 - Home Assistant will generate configuration files (this may take a moment) and start up after a few minutes
 
# Configuration
 - Configuration files path: /opt/homeassistant/config
