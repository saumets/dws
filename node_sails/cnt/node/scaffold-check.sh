#!/bin/sh
#
# Quick scaffold check. If there's no files in /var/www/html we 
# generate a new sails project from scratch!
#

WORK_DIR="/var/www/html"
if [ -d "$WORK_DIR" ]; then
  if [ ! "$(ls -A $WORK_DIR)" ]; then
    cd $WORK_DIR && sails new .
  fi 
fi

# required for file watching in container
# http://stackoverflow.com/questions/16748737/grunt-watch-error-waiting-fatal-error-watch-enospc
if [ ! grep -Fxq "/etc/sysctl.conf" "fs.inotify.max_user_watches=524288" ]; then
  echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
fi 
