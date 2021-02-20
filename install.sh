#!/bin/bash
apt-get upgrade -y && apt-get update -y
apt-get install git curl wget -y --fix-missing
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
curl -s "https://get.sdkman.io" | bash 
curl https://pyenv.run | bash

echo "Chrome installation..."
sh -c 'echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
apt-get update -y
apt-get install google-chrome-stable -y


echo "Docker installation..."
apt-get update -y
apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get update -y
apt-get install docker-ce docker-ce-cli containerd.io -y

if [ -d ~/.local/share/JetBrains/Toolbox ]; then
    echo "JetBrains Toolbox is already installed!"
    exit 0
fi

echo "JetBrains Toolbox installation..."

wget --show-progress -qO ./toolbox.tar.gz https://download-cf.jetbrains.com/toolbox/jetbrains-toolbox-1.14.5179.tar.gz

TOOLBOX_TEMP_DIR=$(mktemp -d)

tar -C "$TOOLBOX_TEMP_DIR" -xf toolbox.tar.gz
rm ./toolbox.tar.gz

"$TOOLBOX_TEMP_DIR"/*/jetbrains-toolbox

rm -r "$TOOLBOX_TEMP_DIR"

echo "JetBrains Toolbox was successfully installed!"
