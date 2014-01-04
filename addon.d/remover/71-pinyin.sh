#!/sbin/sh

. /tmp/backuptool.functions

case "$1" in
  backup)
    # Stub
  ;;
  restore)
	rm -f /system/app/PinyinIME.apk
	rm -f /system/priv-app/PinyinIME.apk
	rm -f /system/app/GooglePinyinIME.apk
	rm -f /system/priv-app/GooglePinyinIME.apk
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
