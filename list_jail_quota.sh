#!/bin/sh

INPUT_STRING=`uname`

case $INPUT_STRING in
    FreeBSD)
        zfs list -H -o name,used,avail,quota,mountpoint | grep jail | grep -v ezjail | grep 'rpool/jails/'
        ;;
    Linux)
        zfs list -H -o name,used,avail,quota,mountpoint | tail -n +2 |  sed 's/,/./g'
        break
        ;;
    *)
        echo "This script does not support your platform."
        ;;
esac

# 
