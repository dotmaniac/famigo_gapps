#!/sbin/sh

# MOUNT
busybox mount /system
busybox mount /data
busybox mount /sdcard

# REMOVING COMMENTED PORTIONS OF SCRIPT AND CREATING TEMP FILE
sed 's/#.*//' /sdcard/Famigo/remover/junk.txt > /sdcard/Famigo/remover/tmp.txt

# DELETING APPS PER CUSTOM JUNK FILE (NOW TEMP FILE)
if [ -f /tmp/aroma/remover-custom.prop ]; then
# SYSTEM/APP SCAN
    if grep item.0.1=1 /tmp/aroma/remover-custom.prop
        then
# DELETE ALL APPS IN TEMP FILE WITHOUT ".APK"
            for f in $(cat /sdcard/Famigo/remover/tmp.txt) ; do 
			rm /system/app/$f.apk
			rm /system/priv-app/$f.apk
			done 

# DELETE ALL APPS IN TEMP FILE WITH ".APK"
			for f in $(cat /sdcard/Famigo/remover/tmp.txt) ; do 
			rm /system/app/$f
			rm /system/priv-app/$f
			done 
    fi
# DATA/APP SCAN
    if grep item.0.2=1 /tmp/aroma/remover-custom.prop
        then
# DELETE ALL APPS IN TEMP FILE WITHOUT ".APK"
            for f in $(cat /sdcard/Famigo/remover/tmp.txt) ; do 
			rm /data/app/$f.apk
			done 
# DELETE ALL APPS IN TEMP FILE WITH ".APK"
			for f in $(cat /sdcard/Famigo/remover/tmp.txt) ; do 
			rm /data/app/$f
			done 
    fi
# EVERYWHERE SCAN	
    if grep item.0.3=1 /tmp/aroma/remover-custom.prop
        then
# DELETES ALL FILES - HOPEFULLY USER USED FULL PATHS
# AND DID NOT DELETE ANYTHING BAD :D
			for f in $(cat /sdcard/Famigo/remover/tmp.txt) ; do 
			rm $f
			done
    fi
fi

# MOVING TEMP FILEs TO LOGS FOLDER
mv /sdcard/Famigo/remover/tmp.txt /sdcard/Famigo/logs/custom-tmp.log.txt
cp /tmp/aroma/remover-custom.prop /sdcard/Famigo/logs/remover-custom.prop
