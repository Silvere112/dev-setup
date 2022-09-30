# FROM https://gist.github.com/greeflas/431bc50c23532eee8a7d6c1d603f3921
if [ -d ~/.local/share/JetBrains/Toolbox ]; then
    echo "JetBrains Toolbox is already installed!"
    exit 0
fi
sudo apt-get install fuse libfuse2 -y

wget --show-progress -qO ./toolbox.tar.gz https://download-cf.jetbrains.com/toolbox/jetbrains-toolbox-1.14.5179.tar.gz

TOOLBOX_TEMP_DIR=$(mktemp -d)

tar -C "$TOOLBOX_TEMP_DIR" -xf toolbox.tar.gz
rm ./toolbox.tar.gz

"$TOOLBOX_TEMP_DIR"/*/jetbrains-toolbox

rm -r "$TOOLBOX_TEMP_DIR"
