adb push common/Superuser.apk /system/app/SuperSU/SuperSU.apk  
adb shell chmod 0644 /system/app/SuperSU/SuperSU.apk  
adb shell chcon u:object_r:system_file:s0 /system/app/SuperSU/SuperSU.apk

adb push common/install-recovery.sh /system/etc/install-recovery.sh  
adb shell chmod 0755 /system/etc/install-recovery.sh
adb shell chcon u:object_r:toolbox_exec:s0 /system/etc/install-recovery.sh

adb shell push armv7/su /system/xbin/su
adb shell chmod 0755 /system/xbin/su
adb shell chcon u:object_r:system_file:s0 /system/xbin/su

adb push armv7/su /system/bin/.ext/.su
adb shell chmod 0755 /system/bin/.ext/.su
adb shell chcon u:object_r:system_file:s0 /system/bin/.ext/.su

adb push armv7/su /system/xbin/daemonsu
adb shell chmod 0755 /system/xbin/daemonsu
adb shell chcon u:object_r:system_file:s0 /system/xbin/daemonsu

adb push armv7/su /system/xbin/sugote
adb shell chmod 0755 /system/xbin/sugote
adb shell chcon u:object_r:zygote_exec:s0 /system/xbin/sugote

adb push armv7/supolicy /system/xbin/supolicy
adb shell chmod 0755 /system/xbin/supolicy
adb shell chcon u:object_r:system_file:s0 /system/xbin/supolicy

adb push armv7/libsupol.so /system/lib(64)/libsupol.so
adb shell chmod 0755 /system/lib\(64\)/libsupol.so
adb shell chcon u:object_r:system_file:s0 /system/lib\(64\)/libsupol.so

adb shell touch /system/etc/.installed_su_daemon
adb shell chmod 0644 /system/etc/.installed_su_daemon
adb shell chcon u:object_r:system_file:s0 /system/etc/.installed_su_daemon

adb shell cp /system/bin/sh /system/xbin/sugote-mksh
adb shell chmod 0755 /system/xbin/sugote-mksh
adb shell chcon u:object_r:system_file:s0 /system/xbin/sugote-mksh

adb shell cp /system/bin/app_process32 /system/bin/app_process32_original
adb shell chmod 0755 /system/bin/app_process32_original
adb shell chcon u:object_r:zygote_exec:s0 /system/bin/app_process32_original

adb shell mv /system/bin/app_process /system/bin/app_process_original
adb shell chmod 0755 /system/bin/app_process_original
adb shell chcon u:object_r:zygote_exec:s0 /system/bin/app_process_original

adb shell mv /system/bin/app_process32 /system/bin/app_process_init
adb shell chmod 0755 /system/bin/app_process_init
adb shell chcon u:object_r:system_file:s0 /system/bin/app_process_init

adb shell ln -s /system/xbin/daemonsu /system/bin/app_process
adb shell ln -s /system/xbin/daemonsu /system/bin/app_process32

adb shell ln -s /system/etc/install-recovery.sh /system/bin/install-recovery.sh
