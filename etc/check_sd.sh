#!/system/bin/sh
filepath="/sys/block/mmcblk1/size"
if [ -e $filepath ];then
    echo 1 > /data/data/sd_status
else
    echo 0 > /data/data/sd_status
fi

touch /mnt/media_rw/microsd
touch /Removable
chmod 777 /data/data/sd_status
