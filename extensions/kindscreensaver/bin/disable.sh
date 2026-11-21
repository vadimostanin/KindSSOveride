#!/bin/sh
set -ex
SYSTEMFOLDER=/usr/share/blanket/screensaver/
UPSTART="/etc/upstart/kindscreensaver.conf"
umount $SYSTEMFOLDER

if [ -e "$UPSTART" ]; then
    mount -o remount,rw /

    rm "$UPSTART"

    mount -o remount,ro /
fi
