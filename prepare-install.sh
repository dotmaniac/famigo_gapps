#!/sbin/sh

echo -n -e "# begin Famigo AROMA GApps properties\n# This file contains information needed to flash Famigo AROMA GApps\n"  > /tmp/info.prop

# Does device qualify for FaceUnlock?
good_ffc_device() {
  if [ -f /sdcard/Famigo/.forcefaceunlock ]; then
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

# Final determination to decide if FaceUnlock should be installed
if good_ffc_device && [ -e /system/etc/permissions/android.hardware.camera.front.xml ]; then
    echo -e "\ninstall.faceunlock=true" >> /tmp/info.prop
else
    echo -e "\ninstall.faceunlock=false" >> /tmp/info.prop
fi

# .forcenophotosphere will take precedence over .forcephotosphere
if [ -e /sdcard/Famigo/.forcenophotosphere ]; then
    echo "install.photosphere=false" >> /tmp/info.prop
elif [ -e /sdcard/Famigo/.forcephotosphere ]||(grep -qi "hammerhead" /proc/cpuinfo )||(grep -qi "deb" /proc/cpuinfo )||(grep -qi "flo" /proc/cpuinfo )||(grep -qi "manta" /proc/cpuinfo )||(grep -qi "tuna" /proc/cpuinfo )||(grep -qi "mako" /proc/cpuinfo ); then
    echo "install.photosphere=true" >> /tmp/info.prop
else
    echo "install.photosphere=false" >> /tmp/info.prop
fi

echo "required.mem=$memreqd" >> /tmp/info.prop

# Determine if a GApps package is currently installed and whether it's a PA GApps package
if [ -e /system/priv-app/GoogleServicesFramework.apk ] && [ -e /system/priv-app/GoogleBackupTransport.apk ] && [ -e /system/priv-app/GoogleLoginService.apk ]; then
    echo "gapps.installed=true" >> /tmp/info.prop
else
    echo -e "gapps.installed=false" >> /tmp/info.prop
fi

echo -e "\n# end Famigo AROMA GApps properties" >> /tmp/info.prop

# Copy info.prop to Famigo folder on SD Card
cp -af /tmp/info.prop /sdcard/Famigo/info.prop
