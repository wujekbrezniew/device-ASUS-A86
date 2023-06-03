#!/system/bin/sh

LOG_TAG="mount-cache2"
LOG_NAME="${0}:"

logi ()
{
  /system/bin/log -t $LOG_TAG -p i "$LOG_NAME $@"
}

#Selectively start coex module
mount_needed=`getprop persist.sys.enableAPD`

if [ "$mount_needed" == "1" ]; then
    logi "mount-cache2 : persist.sys.enableAPD = 1"
    mount -t ext4 /dev/block/platform/msm_sdcc.1/by-name/demoapp /APD
    chmod 775 /APD
    chown system:system /APD
    restorecon /APD
else
    logi "mount-cache2 : persist.sys.enableAPD = 0"	
    umount /APD
fi

