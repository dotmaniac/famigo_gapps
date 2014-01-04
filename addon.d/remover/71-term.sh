#!/sbin/sh

. /tmp/backuptool.functions

case "$1" in
  backup)
	# Stub
  ;;
  restore)
	rm -f /system/app/Term.apk
	rm -f /system/priv-app/Term.apk
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
