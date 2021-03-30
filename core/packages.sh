source "${BASH_SOURCE%/*}/scripts.sh"
source "${BASH_SOURCE%/*}/common.sh"
source "${BASH_SOURCE%/*}/brew.sh"

BASE_FOLDER="${BASH_SOURCE%/*}/.."


install_packages() {
  local packages=$*
  set +e
  for package in $packages; do
    install_package "$package"
  done
}

install_package() {
  local package=$1
  if  is_brew_package "$1" ;
  then
      install_using_brew "$(echo "$package" | sed "s/$brew_command//")"
  else
      install_using_script "$BASE_FOLDER/$package_scripts_folder/$package.$script_extension"
  fi
}

list_packages_in(){
  local setup_file_name=$1
  local packages=( $( cat "$BASE_FOLDER/$setup_folder/$setup_file_name" ) )
  echo "${packages[@]}"
}