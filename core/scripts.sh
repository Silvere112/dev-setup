install_script() {
  local script_path=$1
  local script_display_name=$(package_name_of "$script_path")

  local delimiter=$(seq -s= 50 | tr -d '[:digit:]')
  echo "$delimiter $script_display_name installation... $delimiter"

  sh -e -x "$script_path"
  local exist_code=$?
  if [ $exist_code -eq 0 ]; then
    echo "$delimiter $script_display_name installation succeed $delimiter"
  else
    echo "$delimiter $script_display_name installation failed $delimiter"
  fi
}

install_all_scripts_in() {
  local scripts_path=$1
  for script_path in "$scripts_path"/*."$script_extension"; do
    install_script "$script_path"
  done
}
