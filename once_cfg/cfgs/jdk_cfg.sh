#!/bin/bash
BASH_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# JDK8u60
RESOURCES_DIR=$BASH_DIR/../resources
JDK_DIR="jdk1.8.0_60"
FILE="$RESOURCES_DIR/jdk-8u60-linux-x64.tar.gz"
echo $FILE
if [ ! -f "$FILE" ]; then
	wget --user-agent="Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.3) Gecko/2008092416 Firefox/3.0.3" -O $FILE "http://pan.plyz.net/d.asp?u=125972206&p=software/linux/jdk-8u60-linux-x64.tar.gz"
fi 
mkdir ~/apps
cd ~/apps
tar xzvf $FILE
cd $BASH_DIR
## export jdk environment parameters
JDK_ABS_DIR=/home/$(whoami)/apps/$JDK_DIR
echo -n "
# JDK CONFIG
export JAVA_HOME=$JDK_ABS_DIR
export JRE_HOME=$JDK_ABS_DIR/jre  
export CLASSPATH=.:\$JAVA_HOME/lib:\$JRE_HOME/lib:\$CLASSPATH  
export PATH=\$JAVA_HOME/bin:\$JRE_HOME/bin:\$JAVA_HOME:\$PATH   
" >> ~/.bashrc
source ~/.bashrc
