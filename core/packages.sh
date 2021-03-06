source "${BASH_SOURCE%/*}/scripts.sh"

list_all_packages() {
  local scripts_path=("${BASH_SOURCE%/*}/../$package_scripts_folder"/*."$script_extension")
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
  local software=$1
  install_script "${BASH_SOURCE%/*}/../$package_scripts_folder/$software.$script_extension"
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
