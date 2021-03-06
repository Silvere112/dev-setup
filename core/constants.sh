export main="main"
#export main="test" # uncomment for testing
export scripts_folder="scripts"
export setup_folder="$main/setups"
export required_scripts_folder="$main/$scripts_folder/required"
export package_scripts_folder="$main/$scripts_folder/packages"
export script_extension="sh"

export help=$(cat <<EOF
./main.sh list
    List all available package

./main.sh install
    Install all packages available

./main.sh install setup my-setup
    Install all packages listed in my-setup file

./main.sh install docker nvm
    Install only docker and nvm package

EOF
)