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
  install_required
  install_packages "${@:2}"
  exit 0
fi

help=$(cat <<EOF
./main.sh list
    List all available package

./main.sh install
    Install all packages available

./main.sh install docker nvm
    Install only docker and nvm package
EOF
)

echo "$help"