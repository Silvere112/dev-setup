#!/usr/bin/env bash
set -u -e

source "${BASH_SOURCE%/*}/core/common.sh"
source "${BASH_SOURCE%/*}/core/packages.sh"

if [ $# -eq 1 ] && [ "$1" = "list" ]; then
  list_all_scripts
  exit 0
fi

if [ $# -eq 2 ] && [ "$1" = "list" ]; then
  list_packages_in "$2"
  exit 0
fi

if [ $# -eq 3 ] && [ "$1" = "install" ] && [ "$2" = "setup" ] ; then
  install_packages "$(list_packages_in "$3")"
  exit 0
fi

if [ $# -gt 1 ] && [ "$1" = "install" ]; then
  install_packages "${@:2}"
  exit 0
fi

echo "$help"