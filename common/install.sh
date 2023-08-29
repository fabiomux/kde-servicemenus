#!/bin/sh

log_file='./log'
dest_folder=''
desktop_filename='__project_name__.desktop'
action=$1
src_folder=$(dirname "$0")

echo 'Starting procedure from install.sh' | tee $log_file
if [ $# -eq 0 ]; then
  echo 'No --install or --uninstall parameter given, default to --install' | tee -a $log_file
  action='--install'
fi
echo "Parameters: $#" | tee -a $log_file
kf5-config &> /dev/null
if [ $? -eq 0 ]; then
  dest_folder=`kf5-config --path services | cut -f 1 -d ':'`ServiceMenus
else
  dest_folder=`kde4-config --path services | cut -f 1 -d ':'`ServiceMenus
fi

echo "Source path: $src_folder" | tee -a $log_file
if [ -d "$dest_folder" ]; then
  echo "Destination path: $dest_folder" | tee -a $log_file
else
  mkdir -p "$dest_folder"
  echo "Destination path created: $dest_folder" | tee -a $log_file
fi

echo "Parameter: $action" | tee -a $log_file
case "$action" in
'--install'|'--local'|'--local-install')
  echo "Installing: $desktop_filename" | tee -a $log_file
  if [ -f "$dest_folder/$desktop_filename" ]; then
    echo 'An old version has been detect, a backup will be performed!' | tee -a $log_file
    cp -b --suffix '.old' "$src_folder/$desktop_filename" "$dest_folder/"
  else
    cp "$src_folder/$desktop_filename" "$dest_folder/"
  fi

  if [ -f "$dest_folder/$desktop_filename" ]; then
    echo 'Service Menu installed!' | tee -a $log_file
  else
    echo "Something went wrong installing $desktop_filename" | tee -a $log_file
    exit 1
  fi
;;
'--uninstall'|'--remove'|'--delete'|'--deinstall')
  echo "Uninstalling $desktop_filename" | tee -a $log_file
  if [ -f "$dest_folder/$desktop_filename" ]; then
    rm "$dest_folder/$desktop_filename"
    echo "Service Menu '$desktop_filename' removed!" | tee -a $log_file
  else
    echo "Service Menu '$desktop_filename' removed!" | tee -a $log_file
  fi
;;
*)
  echo "Unrecognized command" | tee -a $log_file
  exit 1
;;
esac
