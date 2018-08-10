#!/bin/sh

INPUT_STRING=`uname`

case $INPUT_STRING in
    FreeBSD)
        zfs list -H -o name,used,avail,quota | grep jail | grep -v ezjail | grep 'rpool/jails/'
        ;;
    Linux)
        zfs list -H -o name,used,avail,quota | tail -n +2 
        break
        ;;
    *)
        echo "This script does not support your platform."
        ;;
esac

# 
