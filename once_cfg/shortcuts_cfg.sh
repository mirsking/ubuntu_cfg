#!/bin/bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# qtcreator
sudo rm /usr/bin/qqtcreator
sudo ln -s $CURRENT_DIR/../shortcuts/qtcreator.sh /usr/bin/qqtcreator
