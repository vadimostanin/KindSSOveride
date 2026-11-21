#!/bin/sh
set -ex
SYSTEMFOLDER=$1
USERFOLDER=$2
UPSTART=/etc/upstart/kindscreensaver.conf
SCRIPT_ENABLE=/mnt/us/extensions/kindscreensaver/bin/enable.sh

if [ -z "$SYSTEMFOLDER" ] || [ -z "$USERFOLDER" ]; then
    echo "Usage: $0 SYSTEMFOLDER USERFOLDER" >&2
    exit 1
fi

mountpoint -q "$SYSTEMFOLDER" || mount --bind "$USERFOLDER" "$SYSTEMFOLDER"

if [ ! -e $UPSTART ]; then
	mount -o remount,rw / || true

	cat >> $UPSTART <<EOF
start on started framework

script
	if [ -e "$SCRIPT_ENABLE" ] && [ -d "$SYSTEMFOLDER" ] && [ -d "$USERFOLDER" ]; then
		/bin/sh $SCRIPT_ENABLE $SYSTEMFOLDER $USERFOLDER || true
		exit 0
	fi
end script
EOF
	mount -o remount,ro / || true
fi
