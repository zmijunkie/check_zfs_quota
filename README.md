# check_zfs_quota
check zfs quota using nagios on my freebsd systems

Before you can use check_zfs_quota, you have to adjust list_jail_quota.sh
to your liking and local situation - my output of list_jail_quota.sh look
like this:

/usr/local/bin/list_jail_quota.sh
rpool/jails/somehost1.opensource-consult.com	4.43G	5.57G	10G
rpool/jails/somehost2.opensource-consult.com	2.70G	7.30G	10G
rpool/jails/somehost3.opensource-consult.com	2.98G	7.02G	10G


In my setting I can use check_zfs_quota on the commandline like this:

/usr/local/libexec/nagios/check_zfs_quota
rpool/jails/myvserver.opensource-consult.com OVERFLOW used=9.03G|avail=995M

/usr/local/libexec/nagios/check_zfs_quota
OK - all quota usage below warning level

Of course I use this as a nagios plugin - this is why I wrote this script.

Have fun,
Sascha
