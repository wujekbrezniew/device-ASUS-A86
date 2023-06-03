#!/system/bin/sh

echo "wifi_perf.sh kill -3 `getprop persist.sys.powersaving.mpdpid`"
kill -3 `getprop persist.sys.powersaving.mpdpid`

