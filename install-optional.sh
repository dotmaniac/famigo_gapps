#!/sbin/sh

# Face Lock Install
if [ $1 = "true" ]; then
  echo "Installing face detection support"
  rm  -f /system/addon.d/71-gapps-faceunlock.sh
  rm  -f /system/app/FaceLock.odex
  cp -af /tmp/face/* /system/
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

# Photosphere Install
if [ ! -f /sdcard/Famigo/photosphere/.forcenophotosphere ]; then
    if (grep -qi "hammerhead" /proc/cpuinfo /sdcard/Famigo/photosphere/.forcephotosphere )||(grep -qi "deb" /proc/cpuinfo /sdcard/Famigo/photosphere/.forcephotosphere )||(grep -qi "flo" /proc/cpuinfo /sdcard/Famigo/photosphere/.forcephotosphere )||(grep -qi "manta" /proc/cpuinfo /sdcard/Famigo/photosphere/.forcephotosphere )||(grep -qi "tuna" /proc/cpuinfo /sdcard/Famigo/photosphere/.forcephotosphere )||(grep -qi "mako" /proc/cpuinfo /sdcard/Famigo/photosphere/.forcephotosphere ); then
      echo "Installing Photosphere Camera"
      rm -f /system/app/Camera2.apk
      rm -f /system/priv-app/Camera2.apk
      rm -f /system/app/Gallery.apk
      rm -f /system/priv-app/Gallery.apk
      rm -f /system/app/Gallery2.apk
      rm -f /system/priv-app/Gallery2.apk
      rm -f /system/app/GalleryGoogle.odex
      rm -f /system/app/GoogleCamera.odex
      rm -f /system/framework/com.google.android.camera2.odex
      cp -af /tmp/photosphere/common/* /system/
      chmod 755 /system/addon.d/74-googlecamera.sh
    fi
fi
rm -rf /tmp/photosphere