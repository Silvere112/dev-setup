#!/usr/bin/env bash
set -e -u -x
sudo apt-get install -y git
TEMP_DIR=$(mktemp -d)
git clone https://github.com/Silvere112/dev-setup.git "$TEMP_DIR"
bash -c "$TEMP_DIR/main.sh install setup $1"
rm -rf "$TEMP_DIR"