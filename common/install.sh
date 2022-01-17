#!/bin/sh

log_file='./log'
dest_folder=''
desktop_filename='__project_name__.desktop'

echo 'Starting procedure from install.sh' | tee $log_file
if [ $# -eq 0 ]; then
  echo 'No parameters, try --install or --uninstall' | tee -a $log_file
  exit 1
fi
echo "Parameters: $#" | tee -a $log_file
kf5-config &> /dev/null
if [ $? -eq 0 ]; then
  dest_folder=`kf5-config --path services | cut -f 1 -d ':'`ServiceMenus
else
  dest_folder=`kde4-config --path services | cut -f 1 -d ':'`ServiceMenus
fi

echo "Parameter: $1" | tee -a $log_file
case "$1" in
'--install'|'--local'|'--local-install')
  echo "Installing: $desktop_filename" | tee -a $log_file
  if [ -f "$dest_folder/$desktop_filename" ]; then
    echo 'An old version has been detect, a backup will be performed!' | tee -a $log_file
    cp -b --suffix '.old' "$desktop_filename" "$dest_folder/"
    echo 'Service Menu installed!' | tee -a $log_file
  else
    cp $desktop_filename "$dest_folder/"
    echo 'Service Menu installed!' | tee -a $log_file
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
