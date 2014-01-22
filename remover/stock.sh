#!/sbin/sh

# MOUNT
busybox mount /system
busybox mount /data
busybox mount /sdcard

# REMOVING COMMENTED PORTIONS OF SCRIPT AND CREATING TEMP FILE
sed 's/#.*//' /sdcard/Famigo/junk-stock.txt > /sdcard/Famigo/tmp.txt

# SCANNING TEMP FILE FOR APPS TO REMOVE
for f in $(cat /sdcard/Famigo/tmp.txt) ; do 
rm /system/app/$f.apk
rm /system/priv-app/$f.apk
done 

# MOVING TEMP FILE TO LOGS FOLDER
mv /sdcard/Famigo/tmp.txt /sdcard/Famigo/stock-tmp.log.txt