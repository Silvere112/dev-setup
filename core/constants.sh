export scripts_folder="scripts"
#export scripts_folder="test_scripts" # uncomment for testing
export required_scripts_folder="$scripts_folder/required"
export package_scripts_folder="$scripts_folder/packages"
export script_extension="sh"

export help=$(cat <<EOF
./main.sh list
    List all available package

./main.sh install
    Install all packages available

./main.sh install docker nvm
    Install only docker and nvm package
EOF
)