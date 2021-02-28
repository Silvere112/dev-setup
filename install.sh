#!/usr/bin/env bash
set -e
sudo apt-get install git
TEMP_DIR=$(mktemp -d)
git clone https://github.com/Silvere112/install-dev-env.git $TEMP_DIR
$TEMP_DIR/main.sh install -a
rm -rf $TEMP_DIR