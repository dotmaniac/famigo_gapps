#!/sbin/sh

. /tmp/backuptool.functions

case "$1" in
  backup)
    # Stub
  ;;
  restore)
	rm -f /system/app/Launcher3.apk
	rm -f /system/app/Launcher2.apk
	rm -f /system/priv-app/Launcher3.apk
	rm -f /system/priv-app/Launcher2.apk
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
