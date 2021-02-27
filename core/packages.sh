source "${BASH_SOURCE%/*}/scripts.sh"

list_packages() {
  for script_path in "${BASH_SOURCE%/*}/../$package_scripts_folder"/*."$script_extension"; do
    package_name_of "$script_path"
  done
}

install_all_packages() {
  set +e
  install_all_scripts_in "${BASH_SOURCE%/*}/../$package_scripts_folder"
}

install_packages() {
  local packages=$*
  set +e
  for package in $packages; do
    install_package "$package"
  done
}

install_package() {
  local software=$1
  install_script "${BASH_SOURCE%/*}/../$package_scripts_folder/$software.$script_extension"
}


package_name_of() {
  local script_path=$1
  local script_name="$(basename "$script_path")"
  local script_display_name="${script_name%.*}"
  echo "$script_display_name"
}
