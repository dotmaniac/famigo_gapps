Famigo AROMA GApps
============
What is it?
-------------
A full featured GApps package that you can select what apps you want to install using AROMA. You can also remove some system apps that come pre-installed with your ROM.

What isn't it?
-------------
A slimmed down GApps. While you can slim down your ROM by not installing all the GApps or removing extra bloat with the Removal Tool, you will have a bigger download up front.

GAPPS
============
Our GApps includes most of the Google Apps that come standard on Google Nexus devices. In this package you will find the Core Apps¹, Face Unlock², and the following Selectable applications:

|  Plus  |Drive|  Play   |Search|  Other |
|--------|-----|---------|------|--------|
|Google+ |Drive|Books    |Chrome|Calendar|
|Hangouts|Keep |Games    |Home  |Camera  |
|        |     |Movies   |Maps  |Gmail   |
|        |     |Music    |Now   |Keyboard|
|        |     |Newsstand|      |Wallet  |
|        |     |         |      |YouTube |

¹ Core Apps includes the core system base apps as well as Google Play services, Google Play Store, and Cloud Print (on 4.4 Only).
² Devices with a front camera will automatically have Face Unlock installed.

BACKUP/RESTORE
-------------
Our GApps allows to back up your selections and restore them for later use.

INSTALL
============
1. Download a 4.3 or 4.4 ROM.
2. Download our GApps.
3. Reboot into your custom recovery.
  * I recommend TWRP if possible.
4. OPTIONAL (but recommended): Wipe system, cache, and dalvik cache before installing ROM.
  * This will not erase your Files.
5. Flash ROM of choice
6. Flash our GApps that you downloaded earlier.
7. Finally, follow the on-screen instructions to install your GApps!

REMOVER
============
QUICK HOW-TO
------------
We will cut everything after a pound sign/hashtag/"#" from the script. That is, all the tutorials, app descriptions, and apps you want to keep; thus, only leaving the script with the files you want to remove
Edit the list below as you see fit, examples:
      AdobeReader.apk  > Removed (because there is no "#")
      #AdobeReader.apk > NOT Removed (because of "#")
      AdobeReader.apk #PDF Reader > Removed (but extra text ignored)

CUSTOMIZING
------------
By making a file named junk.txt in the /sdcard/Famigo/remover folder you can add files from anywhere and use wildcards to cut similar items.

Files and folders deleted ARE case-sensitive, examples:
    /path/to/file/file.txt > Deletes file.txt
    /path/to/folder/       > Deletes folder ... REMEMBER the trailing "/"
    /system/app/Apollo.apk > Deletes the system app Apollo ... REMEMBER to Scan Everywhere during install when including FULL PATH
    /data/app/Facebook.apk > Deletes the user app Facebook (if that's what it's called) ... REMEMBER to Scan Everywhere during install when including FULL PATH
    Apollo.apk             > Deletes the app Apollo ... REMEMBER to Scan System/App and/or Data/App depending on place
    Apollo                 > Deletes apps named Apollo ... REMEMBER to Scan System/App and/or Data/App depending on place
    Apo*                   > Deletes all files starting with "Apo" ... Be CAREFUL with wildcards.

WHAT TO SCAN
------------
During the install, it will ask you which folders to scan. By default, we will only Scan /system/(priv-)app which is where system apps and PARTICULARLY junk apps are. However, you may want to erase user apps that are in /data/app or other system files located elsewhere. Unless you are specifically trying to remove user installed apps - do not check Scan /data/app and unless you are trying to cut a specific file or folder (ringtones, wallpapers, etc) - do not check Scan Everywhere
