source "${BASH_SOURCE%/*}/scripts.sh"
source "${BASH_SOURCE%/*}/constants.sh"

BASE_FOLDER="${BASH_SOURCE%/*}/.."

list_all_packages() {
  local scripts_path=("$BASE_FOLDER/$package_scripts_folder"/*."$script_extension")
  packages_name_of "${scripts_path[@]}"
}

install_all_packages() {
  set +e
  install_packages $(list_all_packages)
}

install_packages() {
  local packages=$*
  set +e
  for package in $packages; do
    install_package "$package"
  done
}

install_package() {
  local package=$1
  install_script "$BASE_FOLDER/$package_scripts_folder/$package.$script_extension"
}


package_name_of() {
  local script_path=$1
  local script_name="$(basename "$script_path")"
  local script_display_name="${script_name%.*}"
  echo "$script_display_name"
}

packages_name_of() {
  local script_paths=$1
  local packages_name=""
  for script_path in "${scripts_path[@]}"; do
    packages_name+="$(package_name_of "$script_path") "
  done
  echo "$packages_name"
}


validate_packages(){
  local packages=$*
  for package in $packages; do
      verify_package "$package"
  done
}

verify_package(){
  local package=$1
  if [ ! -f "$BASE_FOLDER/$package_scripts_folder/$package.$script_extension" ]; then
    echo "Unknown package $package"
    echo "$help"
    exit 1
  fi
}