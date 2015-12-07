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
