#!/bin/sh
#
# Authors: Fabio Mucciante
# Created: 2021/08/31
# Updated: 2024/02/10
# Version: 1.2.0
# License: GPL-v3
#
# References:
#   - https://freeaptitude.altervista.org/projects/kde-servicemenus.html
#   - https://github.com/fabiomux/kde-servicemenus

log_file='./log'
dest_folder=''
desktop_filename='__project_name__.desktop'
action=$1
src_folder=$(dirname "$0")
kde_version=''

echo '[=] Starting procedure from install.sh' | tee $log_file
if [ $# -eq 0 ]; then
  echo '[>] No --install or --uninstall parameter given, default to --install' | tee -a $log_file
  action='--install'
fi
echo "[*] N. Parameters: $#" | tee -a $log_file

if [ -n "$(command -v plasmashell)" ]; then
  kde_version="Plasma $(plasmashell -v | cut -d ' ' -f 2 | cut -d '.' -f 1)"
elif [ -n "$(command -v kf5-config)" ]; then
  kde_version='Plasma 5'
elif [ -n "$(command -v kde4-config)" ]; then
  kde_version='KDE 4'
elif [ -n "$(command -v qtpaths6)" ]; then
  kde_version='Plasma 6'
else
  echo '[X] Unable to find the Service Menus path!'
  exit 1
fi

case $kde_version in
'KDE 4')
  dest_folder=$(kde4-config --path services | cut -f 1 -d ':')ServiceMenus
;;
'Plasma 5')
  dest_folder=$(kf5-config --path services | cut -f 1 -d ':')ServiceMenus
;;
'Plasma 6')
  dest_folder=$(qtpaths --locate-dirs GenericDataLocation kio/servicemenus | cut -f 1 -d ':')
  writable_path=$(qtpaths --writable-path GenericDataLocation)
  dest_folder=$(echo "$dest_folder" | sed "s@^/usr/share@$writable_path@g")
;;
*)
  echo '[X] Unknown Desktop Environment'
  exit 2
;;
esac

echo "[*] Desktop Environment: $kde_version"

echo "[*] Source path: $src_folder" | tee -a $log_file
if [ -d "$dest_folder" ]; then
  echo "[*] Destination path: $dest_folder" | tee -a $log_file
else
  mkdir -p "$dest_folder"
  echo "[V] Destination path created: $dest_folder" | tee -a $log_file
fi

echo "[*] Parameter: $action" | tee -a $log_file
case "$action" in
'--install'|'--local'|'--local-install')
  echo "[>] Installing: $desktop_filename" | tee -a $log_file
  if [ -f "$dest_folder/$desktop_filename" ]; then
    echo '[*] An old version has been detect, a backup will be performed!' | tee -a $log_file
    cp -b --suffix '.old' "$src_folder/$desktop_filename" "$dest_folder/"
  else
    cp "$src_folder/$desktop_filename" "$dest_folder/"
  fi

  if [ -f "$dest_folder/$desktop_filename" ]; then
    echo '[V] Service Menu installed!' | tee -a $log_file
  else
    echo "[X] Something went wrong installing $desktop_filename" | tee -a $log_file
    exit 1
  fi

  chmod +x "$dest_folder/$desktop_filename"
  verify=$(stat -c %A "$dest_folder/$desktop_filename" | grep -o 'x' | wc -l)
  if [ $verify -eq 3 ]; then
    echo "[V] Permission correctly applied"
  else
    echo "[X] Something went wrong applying the permissions"
  fi
;;
'--uninstall'|'--remove'|'--delete'|'--deinstall')
  echo "[>] Uninstalling $desktop_filename" | tee -a $log_file
  if [ -f "$dest_folder/$desktop_filename" ]; then
    rm "$dest_folder/$desktop_filename"
    echo "[V] Service Menu '$desktop_filename' removed!" | tee -a $log_file
  else
    echo "[V] Service Menu '$desktop_filename' was already removed!" | tee -a $log_file
  fi
;;
*)
  echo "[X] Unrecognized command" | tee -a $log_file
  exit 1
;;
esac
