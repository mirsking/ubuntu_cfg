#!/bin/bash
BASH_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# JDK8u60
RESOURCES_DIR=$BASH_DIR/../resources
FILE=$RESOURCES_DIR/"pycharm-professional-5.0.2.tar.gz"
FILE_URI="http://pan.plyz.net/d.asp?u=125972206&p=software/linux/pycharm-professional-5.0.2.tar.gz"
AGENT="Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.3) Gecko/2008092416 Firefox/3.0.3"

if [ ! -f "$FILE" ]; then
	wget --user-agent=$AGENT -O $FILE $FILE_URI
fi

PYCHARM_DIR="~/apps/pycharm-5.0.2"
rm $PYCHARM_DIR -rf
cd ~/apps
tar xzf $FILE

cd "$PYCHARM_DIR"
PYCHARM_ABS_DIR="$(pwd)"

sudo rm/usr/bin/pycharm_origin 
sudo ln -s $PYCHARM_ABS_DIR/bin/pycharm.sh /usr/bin/pycharm_origin


