#!/sbin/sh

. /tmp/backuptool.functions

case "$1" in
  backup)
    # Stub
  ;;
  restore)
	rm -f /system/app/LatinIME.apk
	rm -f /system/priv-app/LatinIME.apk
	rm -f /system/lib/libjni_latinime.so
	rm -f /system/lib/libjni_latinimegoogle.so
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
