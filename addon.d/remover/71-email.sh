#!/sbin/sh

. /tmp/backuptool.functions

case "$1" in
  backup)
    # Stub
  ;;
  restore)
	rm -f /system/app/Email.apk
	rm -f /system/priv-app/Email.apk
	rm -f /system/app/EmailGoogle.apk
	rm -f /system/priv-app/EmailGoogle.apk
	rm -f /system/app/Exchange2.apk
	rm -f /system/priv-app/Exchange2.apk
	rm -f /system/app/Exchange2Google.apk
	rm -f /system/priv-app/Exchange2Google.apk
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
    # Stub
  ;;
  post-restore)
	# Stub
;;
esac
