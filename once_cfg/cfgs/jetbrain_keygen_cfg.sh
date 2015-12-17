#!/bin/bash
BASH_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# JetBrain keyGen
RESOURCES_DIR=$BASH_DIR/../resources
KEY_GEN_DIR=$RESOURCES_DIR/jetbrains_key
GIT_URI="https://github.com/mirsking/jetbrains-key.git"
sudo apt-get -y install git
git clone $GIT_URI $KEY_GEN_DIR
cd $KEY_GEN_DIR
./gradlew fatjar

echo -e "
Use:
java -jar build/libs/JetbrainsPatchKeygen-1.2.1.jari
to get key
""

