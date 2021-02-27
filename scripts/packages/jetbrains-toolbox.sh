current_user_directory=$(eval echo ~"${SUDO_USER:-${USER}}")
if [ -d "$current_user_directory"/.local/share/JetBrains/Toolbox ]; then
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
