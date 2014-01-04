#!/sbin/sh

. /tmp/backuptool.functions

case "$1" in
  backup)
	# Stub
  ;;
  restore)
	rm -f /system/app/PacPapers.apk
	rm -f /system/priv-app/PacPapers.apk
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
