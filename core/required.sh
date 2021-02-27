source core/scripts.sh

install_required() {
  install_script "$required_scripts_folder/update.sh"
  install_script "$required_scripts_folder/dependencies.sh"
}
