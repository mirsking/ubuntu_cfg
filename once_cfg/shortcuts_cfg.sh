#!/bin/bash
BASH_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# qtcreator
sudo rm /usr/bin/qqtcreator
sudo ln -s $BASH_DIR/../shortcuts/qtcreator /usr/bin/qqtcreator

# xware: web thunder
$BASH_DIR/cfgs/thunder_cfg.sh

# JDK8u60
$BASH_DIR/cfgs/jdk_cfg.sh

# SmartGit
sudo add-apt-repository ppa:eugenesan/ppa
sudo apt-get update

# pycharm
sudo rm /usr/bin/pycharm
sudo ln -s $BASH_DIR/../shortcuts/pycharm /usr/bin/pycharm
