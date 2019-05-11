#!/bin/sh

qemu-system-i386 -nographic -hda /app/openwrt-x86-generic-combined-ext4.img > /tmp/log.txt 2>&1 &

/usr/local/bin/gotty --port $PORT -c user:pass --permit-write --reconnect /bin/bash 
