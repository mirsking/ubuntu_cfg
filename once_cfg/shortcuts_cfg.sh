#!/bin/bash
BASH_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# qtcreator
sudo rm /usr/bin/qqtcreator
sudo ln -s $BASH_DIR/../shortcuts/qtcreator /usr/bin/qqtcreator

# xware: web thunder
mkdir -p ~/apps/xware
unzip $BASH_DIR/resources/Xware*.zip -d ~/apps/xware
cd ~/apps/xware/
./portal
cd -
## mk downloads dirs
mkdir ~/Downloads/TDDOWNLOADS
sudo mkdir /media/$(whoami)/TDDOWNLOADS
sudo rm /usr/bin/thunder
sudo ln -s $BASH_DIR/../shortcuts/thunder /usr/bin/thunder
