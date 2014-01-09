#!/sbin/sh

good_ffc_device() {
  if [ -f /sdcard/.forcefaceunlock ]; then
    return 0
  fi
  if cat /proc/cpuinfo |grep -q Victory; then
    return 1
  fi
  if cat /proc/cpuinfo |grep -q herring; then
    return 1
  fi
  if cat /proc/cpuinfo |grep -q sun4i; then
    return 1
  fi
  return 0
}

if good_ffc_device && [ -e /system/etc/permissions/android.hardware.camera.front.xml ]; then
  echo "Installing face detection support"
  rm  -f /system/addon.d/71-gapps-faceunlock.sh
  rm  -f /system/app/FaceLock.odex
  cp -a /tmp/face/* /system/
  chmod 755 /system/addon.d/71-faceunlock.sh
elif  [ -d /system/vendor/pittpatt/ ]; then
  rm -rf /system/vendor/pittpatt/
  rm  -f /system/app/FaceLock.apk
  rm  -f /system/app/FaceLock.odex
  rm  -f /system/lib/libfacelock_jni.so
  rm  -f /system/addon.d/71-gapps-faceunlock.sh
  rm  -f /system/addon.d/71-faceunlock.sh
fi

rm -rf /tmp/face