source "${BASH_SOURCE%/*}/scripts.sh"

install_required() {
  install_script "${BASH_SOURCE%/*}/../$required_scripts_folder/update.sh"
  install_script "${BASH_SOURCE%/*}/../$required_scripts_folder/dependencies.sh"
}
