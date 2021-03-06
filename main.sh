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
  confirm_and_install "$(list_all_packages)"
  exit 0
fi

if [ $# -eq 3 ] && [ "$1" = "install" ] && [ "$2" = "setup" ] ; then
  install "$(list_packages_in "$3")"
  exit 0
fi

if [ $# -gt 1 ] && [ "$1" = "install" ]; then
  install "${@:2}"
  exit 0
fi

echo "$help"