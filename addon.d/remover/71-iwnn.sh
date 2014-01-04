#!/sbin/sh

. /tmp/backuptool.functions

case "$1" in
  backup)
    # Stub
  ;;
  restore)
	rm -f /system/app/iWnnIME.apk
	rm -f /system/priv-app/iWnnIME.apk
	rm -f /system/app/iWnnIME_Kbd_White.apk
	rm -f /system/priv-app/iWnnIME_Kbd_White.apk
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
