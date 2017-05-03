#!/bin/sh

zfs list -H -o name,used,avail,quota | grep jail | grep -v ezjail | grep 'rpool/jails/'
