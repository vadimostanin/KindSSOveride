#!/bin/sh
set -ex
USERFOLDER=$1
SYSTEMFOLDER=/usr/share/blanket/screensaver/
mount --bind $USERFOLDER $SYSTEMFOLDER
