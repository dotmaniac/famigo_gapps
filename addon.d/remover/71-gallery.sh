#!/sbin/sh

. /tmp/backuptool.functions

case "$1" in
  backup)
    # Stub
  ;;
  restore)
	rm -f /system/app/Gallery.apk
	rm -f /system/priv-app/Gallery.apk
	rm -f /system/app/GalleryGoogle.apk
	rm -f /system/priv-app/GalleryGoogle.apk
	rm -f /system/app/Gallery2.apk
	rm -f /system/priv-app/Gallery2.apk
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
