# DD-WRT Home Assistant Installer
# Info
  - Home Assistant 0.75.3
  - Tested on Netgear R6400v2 (DD-WRT v3.0-r37305)

# USB Requirements
 - Mounted JFFS partition (Script create and mount OPT parttion in /jffs/opt)
 - Optional SWAP partition

# Installation
 - Run: cd /jffs    
 - curl -kLO https://raw.githubusercontent.com/Mateusz-Dera/DD-WRT-Home-Assistant-Installer/master/install.sh && chmod +x ./
install.sh && ./install.sh
 - Remove install.sh
 - Reboot router
 - Home Assistant will start after a few minutes.
