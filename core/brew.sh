install_using_brew(){
  local package=$1
  local display_name="$package with brew"
  start "$display_name"
  /home/linuxbrew/.linuxbrew/bin/brew install "$package"
  end "$display_name" $?
}

is_brew_package(){
  local package=$1
  if  [[ $package == $brew_command* ]] ;
  then
    return 0
  else
    return 1
  fi
}