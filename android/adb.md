# ADB

The Android Debug Bridge (adb) is a development tool that facilitates communication between an Android device and a personal computer. This communication is most often done over a USB cable, but Wi-Fi connections are also supported.

pacman -S android-tools

https://wiki.lineageos.org/devices/mido/install

https://wiki.lineageos.org/adb_fastboot_guide.html#setting-up-adb

adb devices
adb push file.ext /sdcard/
adb pull /sdcard/file.ext .
adb shell -> cd sdcard
adb logcat
adb install file.apk
adb reboot bootloader


## No permissions (unauthorized)
1. disable/enable USB debugging in phone
2. sudo adb kill-server
   sudo adb start-server


## Debloater
https://gitlab.com/W1nst0n/universal-android-debloater



https://bugatsinho.github.io/repo
