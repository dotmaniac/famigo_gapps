#!/sbin/sh

# MOUNT
busybox mount /system
busybox mount /data
busybox mount /sdcard

# REMOVING COMMENTED PORTIONS OF SCRIPT AND CREATING TEMP FILE
sed 's/#.*//' /sdcard/Famigo/remover/junk-stock.txt > /sdcard/Famigo/remover/tmp.txt

# SCANNING TEMP FILE FOR APPS TO REMOVE
for f in $(cat /sdcard/Famigo/remover/tmp.txt) ; do 
rm /system/app/$f.apk
rm /system/priv-app/$f.apk
done 

# MOVING TEMP FILE TO LOGS FOLDER
mv /sdcard/Famigo/remover/tmp.txt /sdcard/Famigo/logs/stock-tmp.log.txt