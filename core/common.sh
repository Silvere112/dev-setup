export main="main"
#export main="test" # uncomment for testing
export scripts_folder="scripts"
export setup_folder="$main/setups"
export required_scripts_folder="$main/$scripts_folder/required"
export package_scripts_folder="$main/$scripts_folder/packages"
export script_extension="sh"
export brew_command="brew-"
export delimiter=$(seq -s= 50 | tr -d '[:digit:]')

export help=$(cat <<EOF
./main.sh list
    List all available packages

 ./main.sh list my-setup
    List all packages in my-setup

./main.sh install setup my-setup
    Install all packages listed in my-setup file

./main.sh install docker nvm
    Install only docker and nvm package

EOF
)

start(){
    local name=$1
    echo "$delimiter $name installation... $delimiter"
}

end(){
  local name=$1
  local exit_code=$2
  if [ "$exit_code" -eq 0 ]; then
    echo "$delimiter $name installation succeed $delimiter"
  else
    echo "$delimiter $name installation failed $delimiter"
  fi
}