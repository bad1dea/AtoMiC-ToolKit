#!/bin/bash
# Script Name: AtoMiC qBittorrent Uninstaller
# Author: htpcBeginner
# Publisher: http://www.htpcBeginner.com
# License: MIT License (refer to README.md for more details)
#

# DO NOT EDIT ANYTHING UNLESS YOU KNOW WHAT YOU ARE DOING.

if [[ $ISSETUP != "Yes" ]]
then
  echo
  echo -e '\e[91mCannot be run directly. Please run setup.sh from AtoMiC ToolKit root folder: \033[0msudo bash setup.sh'
  echo
  exit 0
fi
source $SCRIPTPATH/inc/commons.sh
source $SCRIPTPATH/inc/header.sh

echo -e $GREEN"AtoMiC $APPTITLE Uninstaller Script"$ENDCOLOR

source $SCRIPTPATH/inc/pause.sh
source $SCRIPTPATH/inc/app-stop.sh
sudo killall qbittorrent-nox >/dev/null 2>&1
source $SCRIPTPATH/inc/app-autostart-remove.sh
source $SCRIPTPATH/inc/app-uninstall.sh
source $SCRIPTPATH/inc/app-file-del.sh
source $SCRIPTPATH/qbittorrent-nox/qbittorrent-nox-repository-configurator.sh
source $SCRIPTPATH/inc/app-repository-remove.sh 
source $SCRIPTPATH/inc/app-uninstall-confirmation.sh
source $SCRIPTPATH/inc/thankyou.sh
source $SCRIPTPATH/inc/exit.sh