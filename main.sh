#!/usr/bin/env bash
set -u -e

source core/constants.sh
source core/packages.sh
source core/required.sh
source core/utils.sh

if [ $# -eq 1 ] && [ "$1" = "list" ]; then
  list_packages
  exit 0
fi

if [ $# -eq 2 ] && [ "$1" = "install" ] && [ "$2" = "-a" ]; then
  require_sudo "$@"
  install_required
  install_all_packages
  exit 0
fi

if [ $# -gt 2 ] && [ "$1" = "install" ] && [ "$2" = "-o" ]; then
  require_sudo "$@"
  install_required
  install_packages "${@:3}"
  exit 0
fi

cat README.md
