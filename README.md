# check_zfs_quota
check zfs quota using nagios on my freebsd systems

You can use this as on the commandline like this:

/usr/local/libexec/nagios/check_zfs_quota
rpool/jails/myvserver.opensource-consult.com OVERFLOW used=9.03G|avail=995M

/usr/local/libexec/nagios/check_zfs_quota
OK - all quota usage below warning level

Of course I use this as a nagios plugin - this is why I wrote this script.

Have fun,
Sascha
