#!/usr/bin/env bash
set -u -e

source "${BASH_SOURCE%/*}/core/constants.sh"
source "${BASH_SOURCE%/*}/core/packages.sh"
source "${BASH_SOURCE%/*}/core/required.sh"

if [ $# -eq 1 ] && [ "$1" = "list" ]; then
  list_all_packages
  exit 0
fi

if [ $# -eq 1 ] && [ "$1" = "install" ] ; then
  read -r -p "Do you want to install $(list_all_packages)? [y/N] " response
  if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
  then
    install_required
    install_all_packages
  fi
  exit 0
fi


if [ $# -gt 1 ] && [ "$1" = "install" ]; then
  validate_packages "${@:2}"
  install_required
  install_packages "${@:2}"
  exit 0
fi

echo "$help"