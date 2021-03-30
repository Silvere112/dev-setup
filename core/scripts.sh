install_using_script() {
  local script_path=$1
  local display_name=$(script_name_of "$script_path")
  start "$display_name"
  sh -e -x "$script_path"
  end "$display_name" $?
}

script_name_of() {
  local script_path=$1
  local script_name="$(basename "$script_path")"
  local script_display_name="${script_name%.*}"
  echo "$script_display_name"
}

scripts_name_of() {
  local script_paths=$1
  local packages_name=""
  for script_path in "${scripts_path[@]}"; do
    packages_name+="$(script_name_of "$script_path") "
  done
  echo "$packages_name"
}


list_all_scripts() {
  local scripts_path=("$BASE_FOLDER/$package_scripts_folder"/*."$script_extension")
  scripts_name_of "${scripts_path[@]}"
}