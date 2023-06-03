#!/system/bin/sh

LOG_TAG="create-smmilink"
LOG_NAME="${0}:"

logi ()
{
  /system/bin/log -t $LOG_TAG -p i "$LOG_NAME $@"
}

#Selectively start coex module
mount_needed=`getprop persist.sys.enableSMMI`

if [ "$mount_needed" == "1" ]; then
    logi "create-smmilink : persist.sys.enableSMMI = 1"


    chmod 0771 /data
    chmod 0771 /data/data

# When persist.sys.enableSMMI is set to 1 , 
# start copy link to /data/data/ and chmod 

fi
