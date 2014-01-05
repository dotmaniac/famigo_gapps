#!/sbin/sh

. /tmp/backuptool.functions

case "$1" in
  backup)
    # Stub
  ;;
  restore)
    rm -f /system/app/Browser.apk
	rm -f /system/app/ChromeBookmarksSyncAdapter.apk
	rm -f /system/priv-app/Browser.apk
	rm -f /system/priv-app/ChromeBookmarksSyncAdapter.apk
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
