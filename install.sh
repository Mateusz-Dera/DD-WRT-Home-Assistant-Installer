#!/bin/sh

# DD-WRT Home Assistant Installer
# Copyright © 2019 Mateusz Dera

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>

# Optware-ng
mkdir /jffs/.tmp || exit 1
cd /jffs/.tmp || exit 2
curl -kLO https://raw.githubusercontent.com/Mateusz-Dera/DD-WRT-Easy-Optware-ng-Installer/master/install.sh || exit 3
sh ./install.sh -s || exit 4
rm -R /jffs/.tmp || exit 5

# Install
/opt/bin/ipkg install gcc || exit 6
/opt/bin/ipkg install python3 || exit 7
/opt/bin/ipkg install openssl-dev || exit 8

# Python
python3 -m venv --without-pip homeassistant || exit 9
source homeassistant/bin/activate || exit 10
curl -k https://bootstrap.pypa.io/get-pip.py -o get-pip.py || exit 11
python3 /opt/get-pip.py && rm /opt/get-pip.py || exit 12
mkdir /opt/homeassistant/config || exit 13
python3 -m pip install homeassistant==0.92.1 || exit 14

# Autostart
cd /jffs/etc/config/ || exit 15
echo -e '#!/bin/sh\nmount -o bind /jffs/opt /opt\nsource /opt/homeassistant/bin/activate\npython3 -c "import sqlite3"\nhass --config /opt/homeassistant/config' >> hass.startup
[ -f /jffs/etc/config/hass.startup ] || exit 16
chmod 700 hass.startup || exit 17

# Reboot
case $1 in
   "-s") exit 0 ;;
   *) while true; do
       read -p $'Do you want to reboot your device? (y/n): ' yn
       case $yn in
           [Yy]* ) reboot;;
           [Nn]* ) exit 0;;
           * ) echo -e "Please answer \e[31myes \e[0mor \e[31mno\e[0m.";;
       esac
   done
esac