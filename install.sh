#!/usr/bin/env bash
set -e
sudo apt-get install git
git clone https://github.com/Silvere112/install-dev-env.git ~/install-dev-env
~/install-dev-env/main.sh install -a